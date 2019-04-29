const main <- object main
  op showType[a : t]
    forall t
    stdout.putstring[t$name || "\n"]
  end showType
  initially
    self.showType[5]
  end initially
end main
