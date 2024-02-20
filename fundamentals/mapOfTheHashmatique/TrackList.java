import java.util.HashMap;
import java.util.Set;

public class TrackList {
    public static void main (String[] args) {
        HashMap<String, String> trackList = new HashMap<String, String>();

        trackList.put("Dancing Queen", "You can dance, You can jive, Having the time of your life");
        trackList.put("Money Money Money", "Money, money, money, Must be funny, In a rich man's world");
        trackList.put("Voulez-Vous", "Voulez-vous aha, Take it now or leave it aha");
        trackList.put("Lay All Your Love On Me", "Don't go wasting your emotion");

        String songLyrics = trackList.get("Dancing Queen");
        System.out.println(songLyrics);
        Set<String> keys = trackList.keySet();
        System.out.println("\n\n************ Track List ************");
        for(String key : keys) {
            System.out.println(String.format("%s:%s", key, trackList.get(key)));
        } 
    }
}