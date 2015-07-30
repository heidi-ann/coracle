open Common
open Io

module Client = struct

type state = int

let init n = 0 

let eval event state = 
  match event with
  | LocalArrival msg -> (None,[])
  | _ -> assert false

end 


module StateMachine = struct

type state = int list

let init n = []

let eval event state = 
  match event with
  | LocalArrival msg -> (None,[])
  | _ -> assert false

end