<!DOCTYPE html>
<html lang="en" xmlns:th="https://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/all.js" integrity="sha384-xymdQtn1n3lH2wcu0qhcdaOpQwyoarkgLVxC/wZ5q7h9gHtxICrpcaSUfygqZGOe" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@200&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src='https://ajax.googleapis.com/ajax/libs/jqueryui/1.10.1/jquery-ui.min.js' type='text/javascript'
    integrity='sha384-zmfsMNrucM3rN4b5thw5WfWYo/krlewoA1acogud/GtvNIYJBsFo1A57Ao19uYjE' crossorigin='anonymous'
    data-sri-failover='https://www.tempeunion.org/Static/GlobalAssets/Scripts/min/jquery-ui-1.10.1.min.js'></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Red+Rose&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mulish&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Trocchi&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Baskervville&display=swap" rel="stylesheet">

    <style>
        *{
          font-family: 'Baskervville', serif;  
            font-weight:600;
        }
    </style>
</head>
<body>
    <section style = "background-color:#054A91;">
        <div style = "background-color:#054A91;" class = "p-2"></div>
        <div class = "mt-5 mb-5">
           <div class = "text-center">
               <img src="${pageContext.request.contextPath}/pics/AmbientFlix.png" style = "width:30%;">
               <h3 class = "p-5 mt-5" style="color:white; font-family: 'Mulish', sans-serif; width:60%; margin:auto;">Customized movie recommendations based on your twitter feed, friends, location, and local news and weather.</h3>
            </div>
        </div>    
        <div style = "background-color:#054A91;" class = "p-2"></div>
    </section>

    <section>
        <div class = "container-fluid" style = "background-color:#DBE4EE;">
            <div class="row">
                <div class = "col-xl-12 ml-auto">
                    <div id = "accordion">
                        <div class = 'row mb-3'>
                            <div class = 'col p-4'>
                                <div class="card card-common" style = "background-color:black">
                                    <div>
                                        <img src = '${picture1}' class = "img-fluid mx-auto d-block" style = "width:20vw;">
                                    </div>
                                    <div class = 'card-footer text-secondary' style = "background-color:#3f4c63">
                                        <div class = 'mt-4'>
                                            <div class='panel-group'>
                                                <div class='panel panel-default'>
                                                    <!--<a data-toggle='collapse' data-parent='#accordion' href='#collapse'>-->
                                                    <a data-toggle='collapse' data-parent='#accordion' href = '#collapse1'>
                                                        <div class='panel-heading' style = 'background-color:#D1FAFF'>
                                                            <h4 class='panel-title text-center' style = 'color:black;'>Description</h4>
                                                        </div>
                                                    </a>
                                                    <div id='collapse1' class= 'panel-collapse collapse'>
                                                        <div class='panel-body text-center'>
                                                            <h6 class = 'p-2'>${desc1}</h6>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>    
                                    </div>
                                </div>
                            </div>
                            <div class = 'col p-4'>
                                <div class="card card-common" style = "background-color:black">
                                    <div>
                                        <img src = '${picture2}' class = "img-fluid mx-auto d-block" style = "width:20vw;">
                                    </div>
                                    <div class = 'card-footer text-secondary' style = "background-color:#3f4c63">
                                        <div class = 'mt-4'>
                                            <div class='panel-group'>
                                                <div class='panel panel-default'>
                                                    <!--<a data-toggle='collapse' data-parent='#accordion' href='#collapse'>-->
                                                    <a data-toggle='collapse' data-parent='#accordion' href = '#collapse2'>
                                                        <div class='panel-heading' style = 'background-color:#D1FAFF'>
                                                            <h4 class='panel-title text-center' style = 'color:black;'>Description</h4>
                                                        </div>
                                                    </a>
                                                    <div id='collapse2' class= 'panel-collapse collapse'>
                                                        <div class='panel-body text-center'>
                                                            <h5><b>${title2}</b></h5>
                                                            <h6 class = 'p-2'>${desc2}</h6>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>    
                                    </div>
                                </div>
                            </div>
                            <div class = 'col p-4'>
                                <div class="card card-common" style = "background-color:black">
                                    <div>
                                        <img src = '${picture3}' class = "img-fluid mx-auto d-block" style = "width:20vw;">
                                    </div>
                                    <div class = 'card-footer text-secondary' style = "background-color:#3f4c63">
                                        <div class = 'mt-4'>
                                            <div class='panel-group'>
                                                <div class='panel panel-default'>
                                                    <!--<a data-toggle='collapse' data-parent='#accordion' href='#collapse'>-->
                                                    <a data-toggle='collapse' data-parent='#accordion' href = '#collapse3'>
                                                        <div class='panel-heading' style = 'background-color:#D1FAFF'>
                                                            <h4 class='panel-title text-center' style = 'color:black;'>Description</h4>
                                                        </div>
                                                    </a>
                                                    <div id='collapse3' class= 'panel-collapse collapse'>
                                                        <div class='panel-body text-center'>
                                                            <h5><b>${title3}</b></h5>
                                                            <h6 class = 'p-2'>${desc3}</h6>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>    
                                    </div>
                                </div>
                            </div>
                            <div class = 'col p-4'>
                                <div class="card card-common" style = "background-color:black">
                                    <div>
                                        <img src = '${picture4}' class = "img-fluid mx-auto d-block" style = "width:20vw;">
                                    </div>
                                    <div class = 'card-footer text-secondary' style = "background-color:#3f4c63">
                                        <div class = 'mt-4'>
                                            <div class='panel-group'>
                                                <div class='panel panel-default'>
                                                    <!--<a data-toggle='collapse' data-parent='#accordion' href='#collapse'>-->
                                                    <a data-toggle='collapse' data-parent='#accordion' href = '#collapse4'>
                                                        <div class='panel-heading' style = 'background-color:#D1FAFF'>
                                                            <h4 class='panel-title text-center' style = 'color:black;'>Description</h4>
                                                        </div>
                                                    </a>
                                                    <div id='collapse4' class= 'panel-collapse collapse'>
                                                        <div class='panel-body text-center'>
                                                            <h5><b>${title4}</b></h5>
                                                            <h6 class = 'p-2'>${desc4}</h6>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>    
                                    </div>
                                </div>
                            </div>
                            <div class = 'col p-4'>
                                <div class="card card-common" style = "background-color:black">
                                    <div>
                                        <img src = '${picture5}' class = "img-fluid mx-auto d-block" style = "width:20vw;">
                                    </div>
                                    <div class = 'card-footer text-secondary' style = "background-color:#3f4c63">
                                        <div class = 'mt-4'>
                                            <div class='panel-group'>
                                                <div class='panel panel-default'>
                                                    <!--<a data-toggle='collapse' data-parent='#accordion' href='#collapse'>-->
                                                    <a data-toggle='collapse' data-parent='#accordion' href = '#collapse5'>
                                                        <div class='panel-heading' style = 'background-color:#D1FAFF'>
                                                            <h4 class='panel-title text-center' style = 'color:black;'>Description</h4>
                                                        </div>
                                                    </a>
                                                    <div id='collapse5' class= 'panel-collapse collapse'>
                                                        <div class='panel-body text-center'>
                                                            <h5><b>${title5}</b></h5>
                                                            <h6 class = 'p-2'>${desc5}</h6>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>    
                                    </div>
                                </div>
                            </div>
                            <div class = 'col p-4'>
                                <div class="card card-common" style = "background-color:black">
                                    <div>
                                        <img src = '${picture6}' class = "img-fluid mx-auto d-block" style = "width:20vw;">
                                    </div>
                                    <div class = 'card-footer text-secondary' style = "background-color:#3f4c63">
                                        <div class = 'mt-4'>
                                            <div class='panel-group'>
                                                <div class='panel panel-default'>
                                                    <!--<a data-toggle='collapse' data-parent='#accordion' href='#collapse'>-->
                                                    <a data-toggle='collapse' data-parent='#accordion' href = '#collapse6'>
                                                        <div class='panel-heading' style = 'background-color:#D1FAFF'>
                                                            <h4 class='panel-title text-center' style = 'color:black;'>Description</h4>
                                                        </div>
                                                    </a>
                                                    <div id='collapse6' class= 'panel-collapse collapse'>
                                                        <div class='panel-body text-center'>
                                                            <h5><b>${title6}</b></h5>
                                                            <h6 class = 'p-2'>${desc6}</h6>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>    
                                    </div>
                                </div>
                            </div>
                            <div class = 'col p-4'>
                                <div class="card card-common" style = "background-color:black">
                                    <div>
                                        <img src = '${picture7}' class = "img-fluid mx-auto d-block" style = "width:20vw;">
                                    </div>
                                    <div class = 'card-footer text-secondary' style = "background-color:#3f4c63">
                                        <div class = 'mt-4'>
                                            <div class='panel-group'>
                                                <div class='panel panel-default'>
                                                    <!--<a data-toggle='collapse' data-parent='#accordion' href='#collapse'>-->
                                                    <a data-toggle='collapse' data-parent='#accordion' href = '#collapse7'>
                                                        <div class='panel-heading' style = 'background-color:#D1FAFF'>
                                                            <h4 class='panel-title text-center' style = 'color:black;'>Description</h4>
                                                        </div>
                                                    </a>
                                                    <div id='collapse7' class= 'panel-collapse collapse'>
                                                        <div class='panel-body text-center'>
                                                            <h5><b>${title7}</b></h5>
                                                            <h6 class = 'p-2'>${desc7}</h6>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>    
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class = 'row mb-3'>
                            <div class = 'col p-4'>
                                <div class="card card-common" style = "background-color:black">
                                    <div>
                                        <img src = '${picture8}' class = "img-fluid mx-auto d-block" style = "width:20vw;">
                                    </div>
                                    <div class = 'card-footer text-secondary' style = "background-color:#3f4c63">
                                        <div class = 'mt-4'>
                                            <div class='panel-group'>
                                                <div class='panel panel-default'>
                                                    <!--<a data-toggle='collapse' data-parent='#accordion' href='#collapse'>-->
                                                    <a data-toggle='collapse' data-parent='#accordion' href = '#collapse8'>
                                                        <div class='panel-heading' style = 'background-color:#D1FAFF'>
                                                            <h4 class='panel-title text-center' style = 'color:black;'>Description</h4>
                                                        </div>
                                                    </a>
                                                    <div id='collapse8' class= 'panel-collapse collapse'>
                                                        <div class='panel-body text-center'>
                                                            <h5><b>${title8}</b></h5>
                                                            <h6 class = 'p-2'>${desc8}</h6>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>    
                                    </div>
                                </div>
                            </div>
                            <div class = 'col p-4'>
                                <div class="card card-common" style = "background-color:black">
                                    <div>
                                        <img src = '${picture9}' class = "img-fluid mx-auto d-block" style = "width:20vw;">
                                    </div>
                                    <div class = 'card-footer text-secondary' style = "background-color:#3f4c63">
                                        <div class = 'mt-4'>
                                            <div class='panel-group'>
                                                <div class='panel panel-default'>
                                                    <!--<a data-toggle='collapse' data-parent='#accordion' href='#collapse'>-->
                                                    <a data-toggle='collapse' data-parent='#accordion' href = '#collapse9'>
                                                        <div class='panel-heading' style = 'background-color:#D1FAFF'>
                                                            <h4 class='panel-title text-center' style = 'color:black;'>Description</h4>
                                                        </div>
                                                    </a>
                                                    <div id='collapse9' class= 'panel-collapse collapse'>
                                                        <div class='panel-body text-center'>
                                                            <h5><b>${title9}</b></h5>
                                                            <h6 class = 'p-2'>${desc9}</h6>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>    
                                    </div>
                                </div>
                            </div>
                            <div class = 'col p-4'>
                                <div class="card card-common" style = "background-color:black">
                                    <div>
                                        <img src = '${picture10}' class = "img-fluid mx-auto d-block" style = "width:20vw;">
                                    </div>
                                    <div class = 'card-footer text-secondary' style = "background-color:#3f4c63">
                                        <div class = 'mt-4'>
                                            <div class='panel-group'>
                                                <div class='panel panel-default'>
                                                    <!--<a data-toggle='collapse' data-parent='#accordion' href='#collapse'>-->
                                                    <a data-toggle='collapse' data-parent='#accordion' href = '#collapse10'>
                                                        <div class='panel-heading' style = 'background-color:#D1FAFF'>
                                                            <h4 class='panel-title text-center' style = 'color:black;'>Description</h4>
                                                        </div>
                                                    </a>
                                                    <div id='collapse10' class= 'panel-collapse collapse'>
                                                        <div class='panel-body text-center'>
                                                            <h5><b>${title10}</b></h5>
                                                            <h6 class = 'p-2'>${desc10}</h6>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>    
                                    </div>
                                </div>
                            </div>
                            <div class = 'col p-4'>
                                <div class="card card-common" style = "background-color:black">
                                    <div>
                                        <img src = '${picture11}' class = "img-fluid mx-auto d-block" style = "width:20vw;">
                                    </div>
                                    <div class = 'card-footer text-secondary' style = "background-color:#3f4c63">
                                        <div class = 'mt-4'>
                                            <div class='panel-group'>
                                                <div class='panel panel-default'>
                                                    <!--<a data-toggle='collapse' data-parent='#accordion' href='#collapse'>-->
                                                    <a data-toggle='collapse' data-parent='#accordion' href = '#collapse11'>
                                                        <div class='panel-heading' style = 'background-color:#D1FAFF'>
                                                            <h4 class='panel-title text-center' style = 'color:black;'>Description</h4>
                                                        </div>
                                                    </a>
                                                    <div id='collapse11' class= 'panel-collapse collapse'>
                                                        <div class='panel-body text-center'>
                                                            <h5><b>${title11}</b></h5>
                                                            <h6 class = 'p-2'>${desc11}</h6>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>    
                                    </div>
                                </div>
                            </div>
                            <div class = 'col p-4'>
                                <div class="card card-common" style = "background-color:black">
                                    <div>
                                        <img src = '${picture12}' class = "img-fluid mx-auto d-block" style = "width:20vw;">
                                    </div>
                                    <div class = 'card-footer text-secondary' style = "background-color:#3f4c63">
                                        <div class = 'mt-4'>
                                            <div class='panel-group'>
                                                <div class='panel panel-default'>
                                                    <!--<a data-toggle='collapse' data-parent='#accordion' href='#collapse'>-->
                                                    <a data-toggle='collapse' data-parent='#accordion' href = '#collapse12'>
                                                        <div class='panel-heading' style = 'background-color:#D1FAFF'>
                                                            <h4 class='panel-title text-center' style = 'color:black;'>Description</h4>
                                                        </div>
                                                    </a>
                                                    <div id='collapse12' class= 'panel-collapse collapse'>
                                                        <div class='panel-body text-center'>
                                                            <h5><b>${title12}</b></h5>
                                                            <h6 class = 'p-2'>${desc12}</h6>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>    
                                    </div>
                                </div>
                            </div>
                            <div class = 'col p-4'>
                                <div class="card card-common" style = "background-color:black">
                                    <div>
                                        <img src = '${picture13}' class = "img-fluid mx-auto d-block" style = "width:20vw;">
                                    </div>
                                    <div class = 'card-footer text-secondary' style = "background-color:#3f4c63">
                                        <div class = 'mt-4'>
                                            <div class='panel-group'>
                                                <div class='panel panel-default'>
                                                    <!--<a data-toggle='collapse' data-parent='#accordion' href='#collapse'>-->
                                                    <a data-toggle='collapse' data-parent='#accordion' href = '#collapse13'>
                                                        <div class='panel-heading' style = 'background-color:#D1FAFF'>
                                                            <h4 class='panel-title text-center' style = 'color:black;'>Description</h4>
                                                        </div>
                                                    </a>
                                                    <div id='collapse13' class= 'panel-collapse collapse'>
                                                        <div class='panel-body text-center'>
                                                            <h5><b>${title13}</b></h5>
                                                            <h6 class = 'p-2'>${desc13}</h6>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>    
                                    </div>
                                </div>
                            </div>
                            <div class = 'col p-4'>
                                <div class="card card-common" style = "background-color:black">
                                    <div>
                                        <img src = '${picture14}' class = "img-fluid mx-auto d-block" style = "width:20vw;">
                                    </div>
                                    <div class = 'card-footer text-secondary' style = "background-color:#3f4c63">
                                        <div class = 'mt-4'>
                                            <div class='panel-group'>
                                                <div class='panel panel-default'>
                                                    <!--<a data-toggle='collapse' data-parent='#accordion' href='#collapse'>-->
                                                    <a data-toggle='collapse' data-parent='#accordion' href = '#collapse14'>
                                                        <div class='panel-heading' style = 'background-color:#D1FAFF'>
                                                            <h4 class='panel-title text-center' style = 'color:black;'>Description</h4>
                                                        </div>
                                                    </a>
                                                    <div id='collapse14' class= 'panel-collapse collapse'>
                                                        <div class='panel-body text-center'>
                                                            <h5><b>${title14}</b></h5>
                                                            <h6 class = 'p-2'>${desc14}</h6>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>    
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class = 'row mb-3'>
                            <div class = 'col p-4'>
                                <div class="card card-common" style = "background-color:black">
                                    <div>
                                        <img src = '${picture15}' class = "img-fluid mx-auto d-block" style = "width:20vw;">
                                    </div>
                                    <div class = 'card-footer text-secondary' style = "background-color:#3f4c63">
                                        <div class = 'mt-4'>
                                            <div class='panel-group'>
                                                <div class='panel panel-default'>
                                                    <!--<a data-toggle='collapse' data-parent='#accordion' href='#collapse'>-->
                                                    <a data-toggle='collapse' data-parent='#accordion' href = '#collapse15'>
                                                        <div class='panel-heading' style = 'background-color:#D1FAFF'>
                                                            <h4 class='panel-title text-center' style = 'color:black;'>Description</h4>
                                                        </div>
                                                    </a>
                                                    <div id='collapse15' class= 'panel-collapse collapse'>
                                                        <div class='panel-body text-center'>
                                                            <h5><b>${title15}</b></h5>
                                                            <h6 class = 'p-2'>${desc15}</h6>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>    
                                    </div>
                                </div>
                            </div>
                            <div class = 'col p-4'>
                                <div class="card card-common" style = "background-color:black">
                                    <div>
                                        <img src = '${picture16}' class = "img-fluid mx-auto d-block" style = "width:20vw;">
                                    </div>
                                    <div class = 'card-footer text-secondary' style = "background-color:#3f4c63">
                                        <div class = 'mt-4'>
                                            <div class='panel-group'>
                                                <div class='panel panel-default'>
                                                    <!--<a data-toggle='collapse' data-parent='#accordion' href='#collapse'>-->
                                                    <a data-toggle='collapse' data-parent='#accordion' href = '#collapse16'>
                                                        <div class='panel-heading' style = 'background-color:#D1FAFF'>
                                                            <h4 class='panel-title text-center' style = 'color:black;'>Description</h4>
                                                        </div>
                                                    </a>
                                                    <div id='collapse16' class= 'panel-collapse collapse'>
                                                        <div class='panel-body text-center'>
                                                            <h5><b>${title16}</b></h5>
                                                            <h6 class = 'p-2'>${desc16}</h6>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>    
                                    </div>
                                </div>
                            </div>
                            <div class = 'col p-4'>
                                <div class="card card-common" style = "background-color:black">
                                    <div>
                                        <img src = '${picture17}' class = "img-fluid mx-auto d-block" style = "width:20vw;">
                                    </div>
                                    <div class = 'card-footer text-secondary' style = "background-color:#3f4c63">
                                        <div class = 'mt-4'>
                                            <div class='panel-group'>
                                                <div class='panel panel-default'>
                                                    <!--<a data-toggle='collapse' data-parent='#accordion' href='#collapse'>-->
                                                    <a data-toggle='collapse' data-parent='#accordion' href = '#collapse17'>
                                                        <div class='panel-heading' style = 'background-color:#D1FAFF'>
                                                            <h4 class='panel-title text-center' style = 'color:black;'>Description</h4>
                                                        </div>
                                                    </a>
                                                    <div id='collapse17' class= 'panel-collapse collapse'>
                                                        <div class='panel-body text-center'>
                                                            <h5><b>${title17}</b></h5>
                                                            <h6 class = 'p-2'>${desc17}</h6>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>    
                                    </div>
                                </div>
                            </div>
                            <div class = 'col p-4'>
                                <div class="card card-common" style = "background-color:black">
                                    <div>
                                        <img src = '${picture18}' class = "img-fluid mx-auto d-block" style = "width:20vw;">
                                    </div>
                                    <div class = 'card-footer text-secondary' style = "background-color:#3f4c63">
                                        <div class = 'mt-4'>
                                            <div class='panel-group'>
                                                <div class='panel panel-default'>
                                                    <!--<a data-toggle='collapse' data-parent='#accordion' href='#collapse'>-->
                                                    <a data-toggle='collapse' data-parent='#accordion' href = '#collapse18'>
                                                        <div class='panel-heading' style = 'background-color:#D1FAFF'>
                                                            <h4 class='panel-title text-center' style = 'color:black;'>Description</h4>
                                                        </div>
                                                    </a>
                                                    <div id='collapse18' class= 'panel-collapse collapse'>
                                                        <div class='panel-body text-center'>
                                                            <h5><b>${title18}</b></h5>
                                                            <h6 class = 'p-2'>${desc18}</h6>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>    
                                    </div>
                                </div>
                            </div>
                            <div class = 'col p-4'>
                                <div class="card card-common" style = "background-color:black">
                                    <div>
                                        <img src = '${picture19}' class = "img-fluid mx-auto d-block" style = "width:20vw;">
                                    </div>
                                    <div class = 'card-footer text-secondary' style = "background-color:#3f4c63">
                                        <div class = 'mt-4'>
                                            <div class='panel-group'>
                                                <div class='panel panel-default'>
                                                    <!--<a data-toggle='collapse' data-parent='#accordion' href='#collapse'>-->
                                                    <a data-toggle='collapse' data-parent='#accordion' href = '#collapse19'>
                                                        <div class='panel-heading' style = 'background-color:#D1FAFF'>
                                                            <h4 class='panel-title text-center' style = 'color:black;'>Description</h4>
                                                        </div>
                                                    </a>
                                                    <div id='collapse19' class= 'panel-collapse collapse'>
                                                        <div class='panel-body text-center'>
                                                            <h5><b>${title19}</b></h5>
                                                            <h6 class = 'p-2'>${desc19}</h6>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>    
                                    </div>
                                </div>
                            </div>
                            <div class = 'col p-4'>
                                <div class="card card-common" style = "background-color:black">
                                    <div>
                                        <img src = '${picture20}' class = "img-fluid mx-auto d-block" style = "width:20vw;">
                                    </div>
                                    <div class = 'card-footer text-secondary' style = "background-color:#3f4c63">
                                        <div class = 'mt-4'>
                                            <div class='panel-group'>
                                                <div class='panel panel-default'>
                                                    <!--<a data-toggle='collapse' data-parent='#accordion' href='#collapse'>-->
                                                    <a data-toggle='collapse' data-parent='#accordion' href = '#collapse20'>
                                                        <div class='panel-heading' style = 'background-color:#D1FAFF'>
                                                            <h4 class='panel-title text-center' style = 'color:black;'>Description</h4>
                                                        </div>
                                                    </a>
                                                    <div id='collapse20' class= 'panel-collapse collapse'>
                                                        <div class='panel-body text-center'>
                                                            <h5><b>${title20}</b></h5>
                                                            <h6 class = 'p-2'>${desc20}</h6>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>    
                                    </div>
                                </div>
                            </div>
                            <div class = 'col p-4'>
                                <div class="card card-common" style = "background-color:black">
                                    <div>
                                        <img src = '${picture21}' class = "img-fluid mx-auto d-block" style = "width:20vw;">
                                    </div>
                                    <div class = 'card-footer text-secondary' style = "background-color:#3f4c63">
                                        <div class = 'mt-4'>
                                            <div class='panel-group'>
                                                <div class='panel panel-default'>
                                                    <!--<a data-toggle='collapse' data-parent='#accordion' href='#collapse'>-->
                                                    <a data-toggle='collapse' data-parent='#accordion' href = '#collapse21'>
                                                        <div class='panel-heading' style = 'background-color:#D1FAFF'>
                                                            <h4 class='panel-title text-center' style = 'color:black;'>Description</h4>
                                                        </div>
                                                    </a>
                                                    <div id='collapse21' class= 'panel-collapse collapse'>
                                                        <div class='panel-body text-center'>
                                                            <h5><b>${title21}</b></h5>
                                                            <h6 class = 'p-2'>${desc21}</h6>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>    
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class = 'row mb-3'>
                            <div class = 'col p-4'>
                                <div class="card card-common" style = "background-color:black">
                                    <div>
                                        <img src = '${picture22}' class = "img-fluid mx-auto d-block" style = "width:20vw;">
                                    </div>
                                    <div class = 'card-footer text-secondary' style = "background-color:#3f4c63">
                                        <div class = 'mt-4'>
                                            <div class='panel-group'>
                                                <div class='panel panel-default'>
                                                    <!--<a data-toggle='collapse' data-parent='#accordion' href='#collapse'>-->
                                                    <a data-toggle='collapse' data-parent='#accordion' href = '#collapse22'>
                                                        <div class='panel-heading' style = 'background-color:#D1FAFF'>
                                                            <h4 class='panel-title text-center' style = 'color:black;'>Description</h4>
                                                        </div>
                                                    </a>
                                                    <div id='collapse22' class= 'panel-collapse collapse'>
                                                        <div class='panel-body text-center'>
                                                            <h5><b>${title22}</b></h5>
                                                            <h6 class = 'p-2'>${desc22}</h6>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>    
                                    </div>
                                </div>
                            </div>
                            <div class = 'col p-4'>
                                <div class="card card-common" style = "background-color:black">
                                    <div>
                                        <img src = '${picture23}' class = "img-fluid mx-auto d-block" style = "width:20vw;">
                                    </div>
                                    <div class = 'card-footer text-secondary' style = "background-color:#3f4c63">
                                        <div class = 'mt-4'>
                                            <div class='panel-group'>
                                                <div class='panel panel-default'>
                                                    <!--<a data-toggle='collapse' data-parent='#accordion' href='#collapse'>-->
                                                    <a data-toggle='collapse' data-parent='#accordion' href = '#collapse23'>
                                                        <div class='panel-heading' style = 'background-color:#D1FAFF'>
                                                            <h4 class='panel-title text-center' style = 'color:black;'>Description</h4>
                                                        </div>
                                                    </a>
                                                    <div id='collapse23' class= 'panel-collapse collapse'>
                                                        <div class='panel-body text-center'>
                                                            <h5><b>${title23}</b></h5>
                                                            <h6 class = 'p-2'>${desc23}</h6>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>    
                                    </div>
                                </div>
                            </div>
                            <div class = 'col p-4'>
                                <div class="card card-common" style = "background-color:black">
                                    <div>
                                        <img src = '${picture24}' class = "img-fluid mx-auto d-block" style = "width:20vw;">
                                    </div>
                                    <div class = 'card-footer text-secondary' style = "background-color:#3f4c63">
                                        <div class = 'mt-4'>
                                            <div class='panel-group'>
                                                <div class='panel panel-default'>
                                                    <!--<a data-toggle='collapse' data-parent='#accordion' href='#collapse'>-->
                                                    <a data-toggle='collapse' data-parent='#accordion' href = '#collapse24'>
                                                        <div class='panel-heading' style = 'background-color:#D1FAFF'>
                                                            <h4 class='panel-title text-center' style = 'color:black;'>Description</h4>
                                                        </div>
                                                    </a>
                                                    <div id='collapse24' class= 'panel-collapse collapse'>
                                                        <div class='panel-body text-center'>
                                                            <h5><b>${title24}</b></h5>
                                                            <h6 class = 'p-2'>${desc24}</h6>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>    
                                    </div>
                                </div>
                            </div>
                            <div class = 'col p-4'>
                                <div class="card card-common" style = "background-color:black">
                                    <div>
                                        <img src = '${picture25}' class = "img-fluid mx-auto d-block" style = "width:20vw;">
                                    </div>
                                    <div class = 'card-footer text-secondary' style = "background-color:#3f4c63">
                                        <div class = 'mt-4'>
                                            <div class='panel-group'>
                                                <div class='panel panel-default'>
                                                    <!--<a data-toggle='collapse' data-parent='#accordion' href='#collapse'>-->
                                                    <a data-toggle='collapse' data-parent='#accordion' href = '#collapse25'>
                                                        <div class='panel-heading' style = 'background-color:#D1FAFF'>
                                                            <h4 class='panel-title text-center' style = 'color:black;'>Description</h4>
                                                        </div>
                                                    </a>
                                                    <div id='collapse25' class= 'panel-collapse collapse'>
                                                        <div class='panel-body text-center'>
                                                            <h5><b>${title25}</b></h5>
                                                            <h6 class = 'p-2'>${desc25}</h6>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>    
                                    </div>
                                </div>
                            </div>
                            <div class = 'col p-4'>
                                <div class="card card-common" style = "background-color:black">
                                    <div>
                                        <img src = '${picture26}' class = "img-fluid mx-auto d-block" style = "width:20vw;">
                                    </div>
                                    <div class = 'card-footer text-secondary' style = "background-color:#3f4c63">
                                        <div class = 'mt-4'>
                                            <div class='panel-group'>
                                                <div class='panel panel-default'>
                                                    <!--<a data-toggle='collapse' data-parent='#accordion' href='#collapse'>-->
                                                    <a data-toggle='collapse' data-parent='#accordion' href = '#collapse26'>
                                                        <div class='panel-heading' style = 'background-color:#D1FAFF'>
                                                            <h4 class='panel-title text-center' style = 'color:black;'>Description</h4>
                                                        </div>
                                                    </a>
                                                    <div id='collapse26' class= 'panel-collapse collapse'>
                                                        <div class='panel-body text-center'>
                                                            <h5><b>${title26}</b></h5>
                                                            <h6 class = 'p-2'>${desc26}</h6>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>    
                                    </div>
                                </div>
                            </div>
                            <div class = 'col p-4'>
                                <div class="card card-common" style = "background-color:black">
                                    <div>
                                        <img src = '${picture27}' class = "img-fluid mx-auto d-block" style = "width:20vw;">
                                    </div>
                                    <div class = 'card-footer text-secondary' style = "background-color:#3f4c63">
                                        <div class = 'mt-4'>
                                            <div class='panel-group'>
                                                <div class='panel panel-default'>
                                                    <!--<a data-toggle='collapse' data-parent='#accordion' href='#collapse'>-->
                                                    <a data-toggle='collapse' data-parent='#accordion' href = '#collapse27'>
                                                        <div class='panel-heading' style = 'background-color:#D1FAFF'>
                                                            <h4 class='panel-title text-center' style = 'color:black;'>Description</h4>
                                                        </div>
                                                    </a>
                                                    <div id='collapse27' class= 'panel-collapse collapse'>
                                                        <div class='panel-body text-center'>
                                                            <h5><b>${title27}</b></h5>
                                                            <h6 class = 'p-2'>${desc27}</h6>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>    
                                    </div>
                                </div>
                            </div>
                            <div class = 'col p-4'>
                                <div class="card card-common" style = "background-color:black">
                                    <div>
                                        <img src = '${picture28}' class = "img-fluid mx-auto d-block" style = "width:20vw;">
                                    </div>
                                    <div class = 'card-footer text-secondary' style = "background-color:#3f4c63">
                                        <div class = 'mt-4'>
                                            <div class='panel-group'>
                                                <div class='panel panel-default'>
                                                    <!--<a data-toggle='collapse' data-parent='#accordion' href='#collapse'>-->
                                                    <a data-toggle='collapse' data-parent='#accordion' href = '#collapse28'>
                                                        <div class='panel-heading' style = 'background-color:#D1FAFF'>
                                                            <h4 class='panel-title text-center' style = 'color:black;'>Description</h4>
                                                        </div>
                                                    </a>
                                                    <div id='collapse28' class= 'panel-collapse collapse'>
                                                        <div class='panel-body text-center'>
                                                            <h5><b>${title28}</b></h5>
                                                            <h6 class = 'p-2'>${desc28}</h6>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>    
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>
