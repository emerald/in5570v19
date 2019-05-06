const NodeMap <- class NodeMap
  const Element <- record Element
    theName : String
    theNode : Node
  end Element

  var elements : Array.of[Element]

  operation getName [theNode : Node] -> [theName : String]
    theName <- theNode$name
    unavailable
      theName <- nil
    end unavailable
  end getName

  export function has[theName : String] -> [result : Boolean]
    result <- false
    for i : Integer <-0 while i <= elements.upperbound by i <- i + 1
      if elements[i]$theName == theName then
        result <- true
        return
      end if
    end for
  end has

  export operation add[theNode : Node] -> [theName : String]
    theName <- self.getName[theNode]
    if theName !== nil then
      if !self.has[theName] then
        elements.addUpper[Element.create[theName, theNode]]
      end if
    end if
  end add

  initially
    elements <- Array.of[Element].empty
  end initially
end NodeMap

const main <- object main
  const home <- (locate self)
  const stream <- home$stdout
  const map <- NodeMap.create[]
  const timeout <- Time.create[1, 0]

  initially

    stream.putString["home is " || home$name || "\n"]

    var nodes : NodeList
    var offline : Array.of[String]
    var theNode : Node
    var theName : String
    var theLNN : Integer

    loop
      nodes <- home$activeNodes
      for i : Integer <- 0 while i <= nodes.upperbound by i <- i + 1
        theNode <- nodes[i]$theNode
        theName <- map.add[theNode]
        theLNN <- nodes[i]$LNN
        if theName !== nil then
          stream.putString[theName || " (" || theLNN.asString[] || ") is online\n"]
        end if
      end for
      stream.putString["---\n"]
      home.delay[timeout]
    end loop
  end initially
end main
