const helloall <- object helloall
  initially
    const home : Node <- locate self
    const all <- home$activenodes
    var elem : NodeListElement
    var friend : Node
    for i : Integer <- 0 while i <= all.upperbound by i <- i + 1
      elem <- all[i]
      friend <- elem$thenode
      friend$stdout.putstring["Hello, World!\n"]
    end for
  end initially
end helloall
