const RandType <- typeobject RandType
  op next -> [seed : Integer]
end RandType

const RandObject <- object RandObject
  export op next -> [retval : Integer]
    retval <- 42
  end next
end RandObject

const main <- object main
  initially
    const r : Boolean <- (typeof RandObject) *> RandType
    stdout.putstring[r.asstring || "\n"]
  end initially
end main
