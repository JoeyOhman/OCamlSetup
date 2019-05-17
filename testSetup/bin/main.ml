open Lib.Math

let () =
  let sum = add 2 3 in
  print_endline (string_of_int sum);
  let difference = sub 3 1 in
  print_endline (string_of_int difference)