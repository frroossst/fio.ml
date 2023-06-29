type t =
    | Assign 
    | Add
    | Subtract
    | Multiply
    | Divide
    | Modulo
    | And
    | Or
    | Not
    | GreaterThan
    | LessThan
    | EqualTo
[@@deriving show]
