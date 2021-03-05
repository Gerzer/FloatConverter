import CoreGraphics

public protocol CGFloatConvertable: BinaryFloatingPoint { }

extension Float: CGFloatConvertable { }

extension Double: CGFloatConvertable { }

public prefix func ~ <Source> (_ value: Source) -> CGFloat where Source: CGFloatConvertable {
	return CGFloat(value)
}

public prefix func ~ (_ value: CGFloat) -> Double {
	return Double(value)
}
