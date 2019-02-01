const rand <- class rand                  % See here
  var seed : Integer <- 123456789
  const a <- 1103515245
  const c <- 12345
  const m <- 2147483648
  export op next -> [retval : Integer]
    seed <- (a * seed + c) # m
    retval <- seed
  end next
end rand

const main <- object main
  initially
    const r <- rand.create                % And here
    stdout.putstring[r.next.asstring || "\n"]
    stdout.putstring[r.next.asstring || "\n"]
    stdout.putstring[r.next.asstring || "\n"]
  end initially
end main
