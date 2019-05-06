const RType <- typeobject RType
  operation replicate[X : t, N : Integer]
    forall t
    suchthat
      t *> typeobject ot
        op clone -> [result : t]
      end ot
end RType

const Replicator : RType <- object Replicator
  export operation replicate[X : t, N : Integer]
    forall t
    suchthat
      t *> typeobject ot
        op clone -> [result : t]
    end ot
    for i : Integer <- 0 while i < N by i <- i + 1
      const c <- X.clone[]
    end for
  end replicate
end Replicator

const RInt <- class RInt[value : Integer]
  export operation clone -> [result : RIntType]
    stdout.putstring["Cloning " || value.asstring || "..\n"]
    result <- RInt.create[value]
  end clone
end RInt
const RString <- class RString[value : String]
  export operation clone -> [result : RStringType]
    stdout.putstring["Cloning " || value || "..\n"]
    result <- RString.create[value]
  end clone
end RString
const main <- object main
  initially
    Replicator.replicate[RInt.create[5], 3]
    Replicator.replicate[RString.create["Hello"], 5]
  end initially
end main
