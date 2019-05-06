const main <- object main
  op showType[a : t]                    % Where does t come from?
    forall t
    stdout.putstring[t$name || "\n"]
  end showType
  initially
    self.showType[5]                    % From here!
  end initially
end main
