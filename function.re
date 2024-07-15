/* function.re */
let myFunction = param => {
  let x = ref(param + 10);
  if (!x > 15) {
    x := !x - 5;
  } else {
    x := !x + 5;
  };
  for (i in 0 to 2) {
    x := !x + i;
  };
  !x;
};

Js.log("Enter an integer: ");
let input = NodeJs.readlineSync().question("");
let param = int_of_string(input);
if (param == 0 && input != "0") {
  Js.log("Invalid input");
} else {
  Js.log(myFunction(param));
};
