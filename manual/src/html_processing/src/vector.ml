type 'a t = {
  mutable sz : int;
  mutable ary : 'a array;
  dummy : 'a;
}

let create dummy = { sz = 0; ary = [|dummy|]; dummy }

let push t a =
  let cap = Array.length t.ary in
  if t.sz = cap then begin
    let ary2 = Array.make (2 * cap) t.dummy in
    Array.blit t.ary 0 ary2 0 t.sz;
    t.ary <- ary2
  end;
  t.ary.(t.sz) <- a;
  t.sz <- succ t.sz

let length t = t.sz
let to_array t = Array.sub t.ary 0 t.sz

