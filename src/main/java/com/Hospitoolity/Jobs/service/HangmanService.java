package com.Hospitoolity.Jobs.service;

import org.springframework.stereotype.Service;
import java.util.Random;

@Service
public class HangmanService {

    private String[] words = {"hire me", "download my cv", "contact me", "check my portfolio", "check my cv"};

    private Random random = new Random();

    public String pickRandomWord() {
        int randomWordIndex = random.nextInt(words.length);
        return words[randomWordIndex];
    }

    public boolean checkGuess(String word, char guessedLetter) {
        return word.indexOf(Character.toLowerCase(guessedLetter)) != -1;
    }

    public String revealGuessedLetters(String word, String guessedLetters) {
        StringBuilder maskedWord = new StringBuilder();
        for (char c : word.toCharArray()) {
            if (guessedLetters.indexOf(Character.toLowerCase(c)) != -1 || c == ' ') {
                maskedWord.append(c);
            } else {
                maskedWord.append('x');
            }
        }
        return maskedWord.toString();
    }

    public boolean isGameWon(String word, String guessedLetters) {
        for (char c : word.toCharArray()) {
            if (c != ' ' && guessedLetters.indexOf(Character.toLowerCase(c)) == -1) {
                return false;
            }
        }
        return true;
    }

    public boolean isGameLost(int failedGuessCount) {
        return failedGuessCount >= 6;
    }
}