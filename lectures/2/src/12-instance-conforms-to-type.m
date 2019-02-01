const RandType <- typeobject RandType
  op next -> [seed : Integer]
end RandType

const RandClass <- class RandClass
  export op next -> [retval : Integer]
    retval <- 43
  end next
end rand

const main <- object main
  initially
    const r : RandType <- RandClass.create
  end initially
end main
