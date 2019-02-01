const rand <- object rand
  var seed : Integer <- 123456789
  const a <- 1103515245
  const c <- 12345
  const m <- 2147483648
  export op next -> [retval : Integer]    % See here
    seed <- (a * seed + c) # m
    retval <- seed
  end next
end rand                                  % Here
                                          %
const main <- object main                 %
  initially
    stdout.putstring[rand.next.asstring || "\n"]
    stdout.putstring[rand.next.asstring || "\n"]
    stdout.putstring[rand.next.asstring || "\n"]
  end initially
end main                                  % And here
