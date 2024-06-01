warning: in the working copy of 'src/Main.java', LF will be replaced by CRLF the next time Git touches it
[1mdiff --git a/src/Main.java b/src/Main.java[m
[1mindex 930198c..b778bdb 100644[m
[1m--- a/src/Main.java[m
[1m+++ b/src/Main.java[m
[36m@@ -1,15 +1,23 @@[m
[31m-//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or[m
[31m-// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.[m
[32m+[m[32mimport java.util.*;[m
[32m+[m[32mimport java.util.stream.Stream;[m
[32m+[m[32mimport java.util.stream.StreamSupport;[m
[32m+[m
 public class Main {[m
[32m+[m
     public static void main(String[] args) {[m
[31m-        //TIP Press <shortcut actionId="ShowIntentionActions"/> with your caret at the highlighted text[m
[31m-        // to see how IntelliJ IDEA suggests fixing it.[m
[31m-        System.out.printf("Hello and welcome!");[m
[31m-[m
[31m-        for (int i = 1; i <= 5; i++) {[m
[31m-            //TIP Press <shortcut actionId="Debug"/> to start debugging your code. We have set one <icon src="AllIcons.Debugger.Db_set_breakpoint"/> breakpoint[m
[31m-            // for you, but you can always add more by pressing <shortcut actionId="ToggleLineBreakpoint"/>.[m
[31m-            System.out.println("i = " + i);[m
[31m-        }[m
[32m+[m[32m        var array = new ArrayList<String>(List.of("Hola mundo", "Hola2"));[m
[32m+[m[32m        var iterator = array.iterator();[m
[32m+[m[32m        var stream = toStream(iterator);[m
[32m+[m[32m        stream.toList().forEach(System.out::println);[m
     }[m
[32m+[m
[32m+[m[32m    private static Stream<String> toStream(Iterator<String> iterator) {[m
[32m+[m[32m        var spliterator = Spliterators.spliteratorUnknownSize([m
[32m+[m[32m                iterator,[m
[32m+[m[32m                Spliterator.DISTINCT |[m
[32m+[m[32m                        Spliterator.NONNULL | Spliterator.SORTED[m
[32m+[m[32m        );[m
[32m+[m[32m        return StreamSupport.stream(spliterator, false);[m
[32m+[m[32m    }[m
[32m+[m
 }[m
\ No newline at end of file[m
