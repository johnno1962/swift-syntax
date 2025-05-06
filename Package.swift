// swift-tools-version: 5.9

import CompilerPluginSupport
import PackageDescription

let tag = "601.0.0" // swift-syntax version
let modules: [(name: String, checksum: String, depends: [String])] = [
  ("SwiftBasicFormat", "397123fd6ff56b5f33e255cb89379c722bfc912357d9d6bc6a1a6ce0086b2cad", ["SwiftSyntax509"]),
  ("SwiftCompilerPlugin", "fa3f3925ba587b6921c15fd222260d44ead44b80a076258fac6746648a0df478", ["SwiftCompilerPluginMessageHandling", "SwiftSyntaxMacroExpansion", "SwiftSyntaxMacros", "SwiftSyntaxBuilder", "SwiftParserDiagnostics", "SwiftBasicFormat", "SwiftOperators", "SwiftParser", "SwiftDiagnostics", "SwiftSyntax", "SwiftSyntax509", "SwiftSyntax510", "SwiftSyntax600", "SwiftSyntax601", "_SwiftSyntaxCShims"]),
  ("SwiftCompilerPluginMessageHandling", "dd73591871e075005c3bb04f81fa481034b329292ce95b27e264680e228b80eb", ["SwiftSyntaxMacroExpansion", "SwiftSyntaxMacros", "SwiftSyntaxBuilder", "SwiftParserDiagnostics", "SwiftBasicFormat", "SwiftOperators", "SwiftParser", "SwiftDiagnostics", "SwiftSyntax", "SwiftSyntax509"]),
  ("_SwiftCompilerPluginMessageHandling", "9998e9b523051fe7018808fd1a07b1e006cf5b3db0ddbe459717e3f1bf592e7b", ["SwiftSyntaxMacroExpansion", "SwiftSyntaxMacros", "SwiftSyntaxBuilder", "SwiftParserDiagnostics", "SwiftBasicFormat", "SwiftOperators", "SwiftParser", "SwiftDiagnostics", "SwiftSyntax", "SwiftSyntax509"]),
  ("SwiftDiagnostics", "231051fd521993216604833be18fd23cf2d990d4c38b5ebc1650f8edd9bfbd0b", ["SwiftSyntax509"]),
  ("SwiftIDEUtils", "c2d52b670c8f6dbd5ccdc04e09f01c8600e226fd438c2d78ec4133f1919624d3", ["SwiftSyntax509"]),
  ("SwiftIfConfig", "f0be13afe6c2c3abb7e9e1ac9e5d75cc30bac5338614f57c81756c18c8d84540", ["SwiftSyntax509"]),
  ("SwiftLexicalLookup", "93e142f5b1c54085f56ec5fad98f71d6a9c83f3454deaca3fdb0fe5cdc808614", ["SwiftSyntax509"]),
  ("SwiftOperators", "a2fd530a358d41a900710e68d2b4a28632068bd863de4adacd13caf7738df907", ["SwiftParser", "SwiftDiagnostics", "SwiftSyntax", "SwiftSyntax509"]),
  ("SwiftParser", "2d175765136326cd9da730e1a7717f3b82cf6bfc31047e742a29a24e0cf7294a", ["SwiftSyntax", "SwiftSyntax509"]),
  ("SwiftParserDiagnostics", "0e14ade6280164ce0342e5fc5f6e4dd4b1ae53d570408a11e6842161e44bf698", ["SwiftParser", "SwiftDiagnostics", "SwiftBasicFormat", "SwiftSyntax", "SwiftSyntax509"]),
  ("SwiftRefactor", "c6df5e4096992101edd0f17a2650ccf4fe3f44600bd00092a02cde08162d5c27", ["SwiftSyntax509"]),
  ("SwiftSyntax", "18754d46965cc3fc273d95c156ba655c1d4d38605a3c5522f8afa45e06ea4a91", ["SwiftSyntax509"]),
  ("SwiftSyntax509", "37840bfac79a4f39e62de274b05fd1c383d28fb8441b51df5b92f339aaa848b9", []),
  ("SwiftSyntax510", "e88114ec2327338ab7426d47cf90f15057091eb136a91121afb70b434299f84d", []),
  ("SwiftSyntax600", "7692655c1db68a116ba808440178c60c9fcf3513dcb0eb27d181849e3f86ac26", []),
  ("SwiftSyntax601", "2e30bf5473410bd58d56f69c81d39f8e9ea7b7ba1a6898c71bb27efb8a0e7695", []),
  ("SwiftSyntaxBuilder", "b2dc63086291044b516b9ced2fadaa610647274580602187419a36824c5d8681", ["SwiftParserDiagnostics", "SwiftDiagnostics", "SwiftParser", "SwiftBasicFormat", "SwiftSyntax", "SwiftSyntax509"]),
  ("SwiftSyntaxMacroExpansion", "3566eae4887b5f00f87d06867d203167befd727627928e8d359bd8d849e8b794", ["SwiftOperators", "SwiftSyntaxMacros", "SwiftSyntaxBuilder", "SwiftParserDiagnostics", "SwiftDiagnostics", "SwiftParser", "SwiftBasicFormat", "SwiftSyntax", "SwiftSyntax509"]),
  ("SwiftSyntaxMacros", "a3c408fbf47cf7c923a3470cd85bec4938af6449727dc7467b601b2080bbd921", ["SwiftSyntaxBuilder", "SwiftParserDiagnostics", "SwiftSyntax", "SwiftSyntax509"]),
  ("SwiftSyntaxMacrosTestSupport", "a31d89259e00347d63351b44e4d8510c6258a201963c77e9017d13ed88fa8a0c", ["_SwiftSyntaxTestSupport", "SwiftSyntaxMacroExpansion", "SwiftOperators", "SwiftSyntaxMacros", "SwiftSyntaxBuilder", "SwiftParserDiagnostics", "SwiftDiagnostics", "SwiftParser", "SwiftBasicFormat", "SwiftSyntax", "SwiftSyntax509"]),
  ("SwiftSyntaxMacrosGenericTestSupport", "d1c3db7a160b0e10603e507f174fa91e7fd1664b7d6cb4e0314e8af29d6bee7f", ["SwiftDiagnostics", "SwiftIDEUtils", "SwiftParser", "SwiftSyntaxMacros", "SwiftSyntaxMacroExpansion"]),
  ("_SwiftSyntaxCShims", "10e2eb71660818079a4e4738d2f80e1cd3711284a7d92e0a00ffad50c1dc6b14", []),
  ("_SwiftSyntaxTestSupport", "24bc4df7f0c0a096fb2347717cbfa849e42a7bbd198effa4c90c61c5941270cc", ["SwiftSyntaxMacroExpansion", "SwiftOperators", "SwiftSyntaxMacros", "SwiftSyntaxBuilder", "SwiftParserDiagnostics", "SwiftDiagnostics", "SwiftParser", "SwiftBasicFormat", "SwiftSyntax", "SwiftSyntax509"]),
  ("_SwiftLibraryPluginProvider", "ddb39b72fbb586c8499846c58c27163979f45fae56915dc1228f32e79a68edfa", []),
]

let package = Package(
  name: "swift-syntax",
  platforms: [
    .iOS(.v13),
    .macOS(.v10_15),
    .tvOS(.v13),
    .watchOS(.v6),
  ],
  
  products: modules.map {
      .library(name: $0.name, targets: [$0.name] + $0.depends
    ) },

  targets: modules.map {
      .binaryTarget(
          name: $0.name,
          path: tag + "/" + "\($0.name).xcframework.zip"
      )
  },
  
  swiftLanguageVersions: [.v5]
)
