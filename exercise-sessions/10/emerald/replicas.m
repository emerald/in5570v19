const RaType <- typeobject RaType
  operation replicas[X : t] -> [Array.of[rt]]
  forall t
  where
    rt <- typeobject rt
      operation read -> [o : t]
      operation write[o : t]
    end rt
end RaType
