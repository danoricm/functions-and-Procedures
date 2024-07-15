(* function.ml *)
let my_function param =
    let x = ref (param + 10) in
    if !x > 15 then
        x := !x - 5
    else
        x := !x + 5;
    for i = 0 to 2 do
        x := !x + i
    done;
    !x

let () =
    print_string "Enter an integer: ";
    let input = read_line () in
    let param = int_of_string input in
    if param = 0 && input <> "0" then
        print_endline "Invalid input"
    else
        print_endline (string_of_int (my_function param))
