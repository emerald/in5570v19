const RandType <- typeobject RandType
  op next -> [seed : Integer]
end RandType

const RandClass <- class RandClass
  export op next -> [retval : Integer]
    retval <- 43
  end next
end RandClass

const main <- object main
  initially
    const r : Boolean <- RandClass.getSignature *> RandType
    stdout.putstring[r.asstring || "\n"]
  end initially
end main
