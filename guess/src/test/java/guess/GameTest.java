package guess;

import junit.framework.Assert;
import org.junit.Test;

import static junit.framework.Assert.*;

/**
 * Created by apple on 2/26/14.
 */
public class GameTest {
    @Test
    public void should_return_you_win_when_guess_correct() throws Exception {
        //Given
        String givenNum = "1234";

        //When
        String output = new Game(givenNum).guess("1234");

        //Then
        assertEquals("You Win!", output);
    }
}
