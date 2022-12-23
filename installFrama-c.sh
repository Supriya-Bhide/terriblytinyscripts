sudo apt install opam
opam init  #say no to modification
opam depext frama-c
opam install frama-c
opam config env
eval $(opam env)
why3 config detect	
