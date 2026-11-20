// swift-tools-version: 5.9
import PackageDescription
let package = Package(
  name: "BuzzMaxNAdapterPackage",
  platforms: [.iOS(.v15)],
  products: [.library(name: "BuzzMaxNAdapter", targets: ["BuzzMaxNAdapterPackage"])],
  dependencies: [
    .package(url: "https://github.com/Buzzvil/buzzvil-ios-sdk", exact: "6.10.3"),
    .package(url: "https://github.com/Buzzvil/buzz-max-n-ios-sdk", .upToNextMinor(from: "1.0.2"))
  ],
  targets: [
    .binaryTarget(name: "BuzzMaxNAdapter", url: "https://storage.googleapis.com/buzzvil-client-app/bab-ios/BuzzMaxNAdapter/1.0.2/BuzzMaxNAdapter.zip", checksum: "54f49da31f544f0bad48d96cadcf1975e045d732d612674e06c559624b300023"),
    .target(name: "BuzzMaxNAdapterPackage", dependencies: [
      "BuzzMaxNAdapter",
      .product(name: "BuzzvilSDK-WithoutThirdParty", package: "buzzvil-ios-sdk"),
      .product(name: "BuzzMaxN-Rewarded", package: "buzz-max-n-ios-sdk")
    ])
  ]
)
