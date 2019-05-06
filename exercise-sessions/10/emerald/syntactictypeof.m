const main <- object main
  op showType[t : Type, a : t]      % t is an explicit parameter
    stdout.putstring[(syntactictypeof t)$name || "\n"]
  end showType
  initially
    self.showType[Integer, 5]       % but still comes from here
  end initially
end main
