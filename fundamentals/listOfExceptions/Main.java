import java.util.ArrayList;

public class Main {

    public static void main (String[] args) {
        ArrayList<Object> myList = new ArrayList<Object>();
        myList.add("13");
        myList.add("hello world");
        myList.add(48);
        myList.add("Goodbye World");

        for(int i = 0; i < myList.size(); i++) {
            Object value = myList.get(i);
            System.out.println(String.format("\nvalue : %s", value));
            try {
            Integer castedValue = (Integer) value;
            System.out.println(String.format("Casted value : %d", castedValue));
            } catch (ClassCastException e) {
                System.out.println("Exception Caught: " + e.getMessage());
            }
        }
    }
}