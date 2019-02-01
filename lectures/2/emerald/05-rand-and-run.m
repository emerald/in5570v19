% A random number generator
% Derived from https://stackoverflow.com/a/3062783/5801152
const rand <- object rand
  var seed : Integer <- 123456789
  const a <- 1103515245
  const c <- 12345
  const m <- 2147483648
  op next -> [retval : Integer]
    seed <- (a * seed + c) # m
    retval <- seed
  end next
  initially
    stdout.putstring[rand.next.asstring || "\n"]
    stdout.putstring[rand.next.asstring || "\n"]
    stdout.putstring[rand.next.asstring || "\n"]
  end initially
end rand
