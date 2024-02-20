import java.util.ArrayList;
import java.util.Random;

public class PuzzleJava {
    private Random random;

    public PuzzleJava () {
        this.random = new Random();
    }

    public ArrayList<Integer> getTenRolls () {
        ArrayList<Integer> randomRolls = new ArrayList<Integer>();
        for (int i = 0; i < 10; i++) {
            int randomNumber = this.random.nextInt(20) + 1;
            randomRolls.add(randomNumber);
        }
        return randomRolls;
    }

    public char getRandomLetter () {
        char [] letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
        int randomIndex = this.random.nextInt(26);
        return letters[randomIndex];
    }

    public String generatePassword () {
        char[] randomLetters = new char[8];
        for (int i = 0; i < 8; i++) {
            char randomLetter = this.getRandomLetter();
            randomLetters[i] = randomLetter;
        }
        return new String(randomLetters);
    }

    public ArrayList<String>  getNewPasswordSet (int len) {
        ArrayList<String> randomArray =  new ArrayList<String>();
        for(int i = 0; i < len; i++) {
            randomArray.add(this.generatePassword());
        }
        return randomArray;
    }

    public ArrayList<String> shuffleArray(ArrayList<String> array) {
        ArrayList<String> shuffledArray = new ArrayList<>(array);
        int size = shuffledArray.size();
        for (int i = 0; i < size; i++) {
            int randomIndex = this.random.nextInt(size);
            String temp = shuffledArray.get(randomIndex);
            shuffledArray.set(randomIndex, shuffledArray.get(i));
            shuffledArray.set(i, temp);
        }
        return shuffledArray;
    }
}