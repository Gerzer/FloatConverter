// swift-tools-version:5.0

import PackageDescription

let package = Package(
	name: "FloatConverter",
	products: [
		.library(
			name: "FloatConverter",
			targets: [
				"FloatConverter"
			]
		)
	],
	targets: [
		.target(
			name: "FloatConverter"
		),
		.testTarget(
			name: "FloatConverterTests",
			dependencies: [
				"FloatConverter"
			]
		)
	]
)
