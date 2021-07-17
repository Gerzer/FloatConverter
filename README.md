# FloatConverter

FloatConverter offers a simple unary prefix operator `~` for easily converting between `Float`/`Double` and `CGFloat` without verbose, explicit initializer invocations.

```swift
let double = 3.14 // Of type `Double` through type inference
let cgFloat = CGFloat(double)

~double == cgFloat // --> `True`
~cgFloat == double // --> `True`
type(of: ~double) // --> `CGFloat.self`
type(of: ~cgFloat) // --> `Double.self`
```

For extra flexibility, the conversion *to* `CGFloat` is overloaded such that it accepts any type that conforms to the `CGFloatConvertible` protocol, which adopts the same requirements as the existing `BinaryFloatingPoint` protocol. This means that you can add conformance to your own custom types. Just make sure not to add conformance to `CGFloat` itself so that the compiler can catch redundant/unnecessary usage of the FloatConverter `~` operator.

For simplicity, the conversion *from* `CGFloat` always returns a `Double`. If you want to propose a way to choose to return a `Float` instead, then please open a GitHub issue (if one doesn't already exist).

`CGFloat` is implemented as a 32-bit `Float` on 32-bit platforms but as a 64-bit `Double` on 64-bit platforms, so the FloatConverter `~` operator might perform a lossy narrowing conversion depending on the system bit width. Of course, FloatConverter won't work in environments in which Core Graphics (and hence `CGFloat`) isn't available.
