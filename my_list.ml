type 'a my_list =
  | Nil
  | Cons of 'a * 'a my_list

let string_of_list str_fun l =
  let rec string_content = function
    | Nil -> ""
    | Cons (x,Nil) -> (str_fun x)
    | Cons (x,l) -> (str_fun x) ^ ", " ^ (string_content l)
  in "[" ^ (string_content l) ^ "]";;

let hd = function
  | Nil -> None
  | Cons (x,l) -> Some x;;

let tl = function
  | Nil -> None
  | Cons (x,l) -> Some l;;

let rec length = function
  | Nil -> 0
  | Cons (x,l) -> 1 + (length l);;

let rec map func = function
  | Nil -> Nil
  | Cons (x,l) -> Cons ( func x , map func l);; 
