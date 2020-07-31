import sys, tweepy
import re
import string
import requests
import nltk
from nltk.corpus import stopwords
from nltk.tokenize import word_tokenize
import os
from newsapi import NewsApiClient
import json
import spotify as spo

nltk.download('stopwords')
#import twecoll

# Authorizes access to the Twitter API
def twitter_auth():
    #These are the access keys and secrets to the AmbientFLIX twitter API
    try:
        consumer_key = "DSt3NyAqOGFEGyUWzLRYZcx1g"
        consumer_secret = "581Fs2Q0hDctuMISQ83EkNp8xwc5JSu2wWB18hbYfjpR55dvO5"
        access_token = "1143319962653560832-ggi4PS3OGStUcC5RLSPaV5YhwjJkE5"
        access_secret = "ZU48qIyslkpy6qVDRocKcXBDA7uS3ox7anwbtC5WJZHb7"
    except KeyError:
        sys.stderr.write("TWITTER_* environment variable not set\n")
        sys.exit(1)
    auth = tweepy.OAuthHandler(consumer_key, consumer_secret)
    auth.set_access_token(access_token, access_secret)
    return auth

# Creates connection to the twitter API
def get_twitter_client():
    auth = twitter_auth()
    client = tweepy.API(auth, wait_on_rate_limit=True, wait_on_rate_limit_notify=True)
    return client

# Checks if an input string contains numbers
def hasNumbers(inputString):
    return any(char.isdigit() for char in inputString)

# Gets most recent 100 tweets from the user's feed and parses the word content from the tweets
def fetchFeedTweets(screen_name, lim):
    s = ""

    #Limit is set to limit the amount of keywords generated by this method
    limit = 210 + lim
    stop_words = set(stopwords.words('english'))
    # Downloads dictionary of English words
    nltk.download('words')
    words = set(nltk.corpus.words.words())

    #Establishes connection to Tweepy and the Twitter API
    auth = twitter_auth()
    client = tweepy.API(auth, wait_on_rate_limit=True, wait_on_rate_limit_notify=True)
    # Get's the last 50 tweets in your feed... this would be from people you follow and what
    # they tweet or retweet
    for status in tweepy.Cursor(client.home_timeline, screen_name=screen_name).items(100):
        s += status.text

    #Clears any non english words or letters from the output string
    s = " ".join(w for w in nltk.wordpunct_tokenize(s) if w.lower() in words or not w.isalpha())

    # Parsing the string in terms of punctuation and capitalization
    table = str.maketrans('', '', string.punctuation)
    s = re.split(r'\W+', s)
    stripped = [w.translate(table) for w in s]
    words = [word.lower() for word in stripped]
    feedData = open("outputFile.txt", "a")
    for word in words:
        # If word limit is reached, stop parsing data
        if (limit <= 0):
            break
        else:
            # Deletes any strings with numbers in them
            if not hasNumbers(word):
                if word not in stop_words and word != "get":
                    feedData.writelines("(tweet)"+word+"\n")
                    limit = limit - 1
    print("Done with gathering Twitter feed data...")
    return limit

def fetchNews(location):
    # Init news API connection
    newsapi = NewsApiClient(api_key='80979f75db4c46198e1fb95d6238d0b1')
    limit = 125

    # Get articles that mention the user's current location
    all_articles = newsapi.get_everything(q=location,
                                          from_param='2020-07-15',
                                          to='2017-07-16',
                                          language='en',
                                          sort_by='relevancy')
    js = json.dumps(all_articles)

    f = open("outputFile.txt", "a")

    # Remove stop words from the texts
    stop_words = set(stopwords.words('english'))

    for val in json.loads(js)["articles"]:
        if limit <= 0:
            break
        else:
            descrip = val["description"]
            table = str.maketrans('', '', string.punctuation)
            s = re.split(r'\W+', descrip)
            stripped = [w.translate(table) for w in s]
            words = [word.lower() for word in stripped]
            for word in words:
                if word not in stop_words:
                    if word != "get":
                        # Removes duplicates of the same location word
                        if word != location.lower():
                            f.write("(news)"+word+"\n")
                            limit = limit - 1
    print("Done with gathering news data...")

def getFriends(screen_name):
    friends = []
    max_retry_count = 0 # create a max retry count so we don't have an infinite loop
    limit = 135

    # Authorization for the Twitter API
    api_key = "DSt3NyAqOGFEGyUWzLRYZcx1g"
    api_secret = "581Fs2Q0hDctuMISQ83EkNp8xwc5JSu2wWB18hbYfjpR55dvO5"

    r = requests.post('https://api.twitter.com/oauth2/token?grant_type=client_credentials', auth=(api_key,api_secret))
    access_token = r.json()["access_token"]
    headers = {'Authorization':'Bearer {token}'.format(token=access_token)}

    next_cursor = -1

    while(next_cursor != 0):
        # Gets list of friends for the user

        r = requests.get('https://api.twitter.com/1.1/friends/list.json?cursor={cursor}&screen_name={screen_name}&include_user_entities=true&skip_status=true&count=200'.format(cursor=next_cursor, screen_name=screen_name), headers=headers)

        if (r.status_code == 200):
            data = r.json()
            data_friends = [{ "id_str": user["id_str"], "screen_name":user["screen_name"], "friends_count":user["friends_count"]} for user in data["users"]]
            friends.extend(data_friends)

            next_cursor = data["next_cursor"]
            max_retry_count = 0
        elif (r.status_code == 401):
            next_cursor = 0
        else:
            max_retry_count = max_retry_count + 1
            print(r.status_code)
            print(max_retry_count)
            if (max_retry_count >= 20):
                raise Exception('max_retry_count limit reached')
            time.sleep(60)

    infoList = list()
    # Establishes connection to tweepy
    auth = twitter_auth()
    client = tweepy.API(auth, wait_on_rate_limit=True, wait_on_rate_limit_notify=True)

    # Appends list of friends onto list in order to be written onto dataFile
    for friend in friends:
        if (limit <= 0):
            break
        else:
            id_str = friend["id_str"]
            a = client.get_user(id_str).name.encode('ascii', "ignore").decode()
            infoList.append(["(name)" + a + "\n"])
            limit = limit - 1

    followerData = open("outputFile.txt", "w")
    for row in infoList:
        for val in row:
            followerData.writelines(val)
    print("Done with gathering Twitter friends list...")
    return limit

def convCelToFar(degrees):
    return degrees * 9 / 5 + 32;

def collectWeather(location):

    # Accesses weather api using AmbientFlix access_key
    access_key = "12f055de782cfa6ac8cc58e120e297c2";
    url = "http://api.weatherstack.com/current?access_key=" + access_key + "&query=" + location
    response = requests.get(url)
    todos = json.loads(response.text)
    followerData = open("outputFile.txt", "a")

    # Gathers information on city, state, and temperature
    followerData.writelines("(location)" + todos['location']['name'] + "\n")
    followerData.writelines("(location)" + todos['location']['region'] + "\n")
    temperature = convCelToFar(todos['current']['temperature'])

    # Converts temperature into word description
    temp_type = ""
    if temperature < 32:
        temp_type = 'freezing'
    elif temperature < 50:
        temp_type = 'cold'
    elif temperature < 70:
        temp_type = 'cool'
    elif temperature < 90:
        temp_type = "warm"
    else:
        temp_type = "hot"

    # Gets weather descriptions from the API
    followerData.writelines("(weather)" + temp_type + "\n")
    weather_descrptions = todos['current']['weather_descriptions']
    for w in weather_descrptions:
        followerData.writelines("(weather)" + w + "\n")
    print("Done with gathering weather data...")

def collectSpotifyData(user_id, lim):

    # Connection to Spotify API
    client_id = "2839a61c11814c1c818f5bf288c5ea56"
    client_secret = "f46ba590fc78443598ae2e3893b58a56"
    client = spo.SpotifyAPI(client_id, client_secret)
    print("Created Spotify client")
    endpoint = "https://api.spotify.com/v1/users/" + user_id + "/playlists"
    headers = client.get_resource_header()
    r = requests.get(endpoint, headers=headers)
    todos = json.loads(r.text)
    li = list()

    # Sets a limit for the amount of queries
    limit = 20 + lim
    length = len(todos['items'])
    amount = limit/length

    # Correlates song_genres with movie_genres
    song_genres = ['pop', 'rap', 'rock', 'hip', 'metal', 'country', 'classical']
    movie_genres = ['Drama', 'Comedy', 'Science Fiction', 'Action', 'Horror', 'Western', 'Romance']

    # Loops through every playlist
    for item in todos['items']:
        playlistID = item['id']
        newEnd = "https://api.spotify.com/v1/playlists/" + playlistID + "/tracks"
        r = requests.get(newEnd, headers=headers)
        todos2 = json.loads(r.text)
        a = amount

        # Loops through every item on the playlist
        for i in todos2['items']:
            if (a <= 0):
                break
            else:
                # Gets the name of the artist, song name, and artist ID from the item on the playlist
                artist_name = i.get('track').get('artists')[0].get('name')
                song_name = i.get('track').get('name')
                track = i.get('track').get('artists')[0].get('id')

                artist_name_split = artist_name.split(" ")
                song_name_split = song_name.split(" ")

                # Searches for genres related to the artist
                newEnd2 = "https://api.spotify.com/v1/artists/" + track
                r = requests.get(newEnd2, headers=headers)
                todos3 = json.loads(r.text)
                for j in todos3['genres']:
                    words = j.split(" ")
                    for word in words:
                        if word in song_genres:
                            ind = song_genres.index(word)
                            li.append("(genre)" + movie_genres[ind])
                            print(".", end = "")
                            a = a - 1
                            break
                    break
                for val in artist_name_split:
                    li.append("(name)" + val)
                    print(".", end = "")
                    a = a-1
                for val in song_name_split:
                    li.append("(song)" + val)
                    print(".", end = "")
                    a = a-1

    # Writes all gathered Spotify data onto the outputFile
    print("\nDone with gathering Spotify data...")
    outputFile = open("outputFile.txt", "a")
    for val in li:
        outputFile.writelines(val + "\n")

print("\nWELCOME TO AMBIENTFLIX! PLEASE ENTER YOUR INFORMATION BELOW:")

location = input("\nEnter your city (ex. Chicago): ")
screen_name = input("Enter your Twitter handle (ex. VancityReynolds): ")
user_id = input("Enter your Spotify username (go to https://www.spotify.com/us/account/overview/): ")
print("\nThis may take a few minutes... please be patient as our data collection service does its job...\n")

limit = getFriends(screen_name)
limit2 = fetchFeedTweets(screen_name, limit)
fetchNews(location)
collectWeather(location)
collectSpotifyData(user_id, limit2)
print("Done with data collection...\n")