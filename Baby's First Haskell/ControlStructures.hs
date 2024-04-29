myIf True thenFunc elseFunc = thenFunc
myIf False thenFunc elseFunce = elseFunc

main =
    let x = 5
    in print $ myIf (x == 5) "is five" "is not five"
