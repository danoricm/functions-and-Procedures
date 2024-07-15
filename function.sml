(* function.sml *)
fun myFunction param =
    let
        val x = ref (param + 10)
    in
        if !x > 15 then
            x := !x - 5
        else
            x := !x + 5;
        for i = 0 to 2 do
            x := !x + i
        end;
        !x
    end

val () =
    print "Enter an integer: ";
    let
        val input = TextIO.inputLine TextIO.stdIn
        val param = Option.valOf (Int.fromString (String.trim input))
    in
        if param = 0 andalso input <> "0\n" then
            print "Invalid input\n"
        else
            print (Int.toString (myFunction param) ^ "\n")
    end
