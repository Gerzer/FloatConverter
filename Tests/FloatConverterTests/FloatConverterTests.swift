import XCTest
@testable import FloatConverter

final class FloatConverterTests: XCTestCase {
	
	static var allTests = [
		("testExample", testExample)
	]
	
	func testExample() {
		let double = 3.14
		let cgFloat = CGFloat(double)
		XCTAssert(~double == cgFloat)
		XCTAssert(~cgFloat == double)
		XCTAssert(type(of: ~double) == CGFloat.self)
		XCTAssert(type(of: ~cgFloat) == Double.self)
	}
	
}
