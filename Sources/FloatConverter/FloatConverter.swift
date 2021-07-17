import CoreGraphics

public protocol CGFloatConvertible: BinaryFloatingPoint { }

extension Float: CGFloatConvertible { }

extension Double: CGFloatConvertible { }

public prefix func ~ <Source> (_ value: Source) -> CGFloat where Source: CGFloatConvertible {
	return CGFloat(value)
}

public prefix func ~ (_ value: CGFloat) -> Double {
	return Double(value)
}
