const rand <- object RandCreator
  const RandType <- typeobject RandType
    op next -> [seed : Integer]
  end RandType
  export function getSignature -> [r : Signature]
    r <- RandType
  end getSignature
  export op create -> [r : RandType]
    r <- object Rand
      var seed : Integer <- 123456789
      const a <- 1103515245
      const c <- 12345
      const m <- 2147483648
      export operation next[] -> [r : Integer]
        seed <- (a * seed + c) # m
        r <- seed
      end next
    end Rand
  end create
end RandCreator
