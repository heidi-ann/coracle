open Common
open Io

module type CONSENSUS = sig
  
type state
type config
val parse_config: string -> config
val init: id list -> config -> state
val add_peers: id list -> state -> state
val state_to_string: state -> string 

type msg
val msg_serialize: msg -> string
val msg_deserialize: string -> msg
val msg_to_string: msg -> string
val eval: msg input -> state -> state option * msg output list  

end 