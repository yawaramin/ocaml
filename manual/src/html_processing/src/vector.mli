type 'a t

val create : 'a -> 'a t
val push : 'a t -> 'a -> unit
val length : 'a t -> int
val to_array : 'a t -> 'a array

