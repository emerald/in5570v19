const main <- object main
  op showType[a : Integer]
    forall t
    stdout.putstring[t$name || "\n"]
  end showType
  initially
    self.showType[5]
  end initially
end main
