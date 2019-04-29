const main <- object main
  op showType[t : Type, a : t]
    stdout.putstring[(typeof a)$name || "\n"]
  end showType
  initially
    self.showType[Integer, 5]
  end initially
end main
