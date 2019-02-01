const RandClass <- class RandClass
  export op next -> [retval : Integer]
    retval <- 42
  end next
end RandClass

const RandObject <- object RandObject
  export op next -> [retval : Integer]
    retval <- 43
  end next
end RandObject

const main <- object main
  initially
    const r <- (typeof RandObject) *> RandClass.getSignature
    stdout.putstring[r.asstring || "\n"]
  end initially
end main
