package com.ambientflix.RecEngine;
import java.io.File;
import java.util.Collection;
import java.util.Scanner;

public interface KeywordsService {
	public abstract void createKeywords(Keywords keyword);
	public abstract void updateKeywords(String type, String keyword);
	public abstract Collection<Keywords> getKeywords();
	public abstract void readKeywordsFromFile(File inputFile, Scanner fileScan);
}
