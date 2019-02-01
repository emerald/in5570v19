const alice <- object female
  initially
    stdout.putstring["Hello, I am Alice!\n"]
  end initially
end female

const bob <- object male
  initially
    stdout.putstring["Hello, I am Bob!\n"]
  end initially
end male
