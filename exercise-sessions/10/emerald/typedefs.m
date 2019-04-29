const PCRType <- typeobject PCRType
  operation replicate[X : t, N : Integer]
  forall t
  suchthat
    t *> typeobject ot
      op clone -> [result : t]
    end ot
  operation replicas[X : t] -> [Array.of[rt]]
  forall t
  where
    rt <- typeobject rt
      operation read -> [o : t]
      operation write[o : t]
    end rt
end PCRType
