import java.util.ArrayList;
import java.util.Random;
public class TestPuzzleJava {
    
	public static void main(String[] args) {
		PuzzleJava generator = new PuzzleJava();

        System.out.println("/n/n************ Test getTenRolls ************");
		ArrayList<Integer> randomRolls = generator.getTenRolls();
		System.out.println(randomRolls);

        System.out.println("/n/n************ Test getRandomLetter ************");
        char randomLetter = generator.getRandomLetter();
        System.out.println(randomLetter);

        System.out.println("/n/n************ Test generatePassword ************");
        String randomPassword = generator.generatePassword();
        System.out.println(randomPassword);

        System.out.println("/n/n************ Test getNewPasswordSet ************");
        ArrayList<String> randomArray = generator.getNewPasswordSet(8);
        System.out.println(randomArray);

        System.out.println("/n/n************ Test shuffleArray ************");
        ArrayList<String> inputArray = new ArrayList<String>();
        inputArray.add("java");
        inputArray.add("javascript");
        inputArray.add("python");
        inputArray.add("html");
        inputArray.add("css");
        inputArray.add("php");
        inputArray.add("C++");
        System.out.println(inputArray);
        System.out.println(generator.shuffleArray(inputArray));
		
	}
}
