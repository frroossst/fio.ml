let opcodes_msg = "opcodes.ml"
type opcodes =
    (* var x = foo *)
    | Assign
    (* Arithmetic *)
    | Add
    | Sub
    | Mul
    | Div
    | Mod
    | Equal
    | NotEqual
    | GreaterThan
    | LessThan
    (* Logical *)
    | Or
    | And
    | Not
    (* Conditional *)
    | JumpIfTrue
    | Jump
    (* IO *)
    | Print
    | Read
    (* Function *)
    | Call
    | Return 
    (* panic!() *)
    | Panic
    (* nop *)
    | Nop
