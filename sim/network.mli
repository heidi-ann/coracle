open Common
open Yojson.Safe

type t

(* parse a json representation of a network,
   may raise either JSON_parsing_failure or Sanity_check_failure *)
val parse: json -> t

(* give a node id and a time, return true if node is alive *)
val find_node: id -> time -> t -> bool

(* [find_path source dist start_time] returns the time to reach dis if possible *)
val find_path: id -> id -> time -> t -> span option

val count_servers: t -> int