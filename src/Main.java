import java.util.*;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;

public class Main {

    public static void main(String[] args) {
        var array = new ArrayList<String>(List.of("Hola mundo", "Hola2"));
        var iterator = array.iterator();
        var stream = toStream(iterator);
        stream.toList().forEach(System.out::println);
    }

    private static Stream<String> toStream(Iterator<String> iterator) {
        var spliterator = Spliterators.spliteratorUnknownSize(
                iterator,
                Spliterator.DISTINCT |
                        Spliterator.NONNULL | Spliterator.SORTED
        );
        return StreamSupport.stream(spliterator, false);
    }
    
}