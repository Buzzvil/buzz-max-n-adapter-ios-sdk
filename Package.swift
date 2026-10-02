// swift-tools-version: 5.9
import PackageDescription
let package = Package(
  name: "BuzzMaxNAdapterPackage",
  platforms: [.iOS(.v15)],
  products: [.library(name: "BuzzMaxNAdapter", targets: ["BuzzMaxNAdapterPackage"])],
  dependencies: [
    .package(url: "https://github.com/Buzzvil/buzzvil-ios-sdk", exact: "6.10.0"),
    .package(url: "https://github.com/Buzzvil/buzz-max-n-ios-sdk", exact: "1.0.1")
  ],
  targets: [
    .binaryTarget(name: "BuzzMaxNAdapter", url: "https://storage.googleapis.com/buzzvil-client-app/bab-ios/BuzzMaxNAdapter/1.0.1/BuzzMaxNAdapter.zip", checksum: "74b285ee93f4394b7004c106d070757f91b71b3baae783adee8008f741f1e6ba"),
    .target(name: "BuzzMaxNAdapterPackage", dependencies: [
      "BuzzMaxNAdapter",
      .product(name: "BuzzvilSDK-WithoutThirdParty", package: "buzzvil-ios-sdk"),
      .product(name: "BuzzMaxN-Rewarded", package: "buzz-max-n-ios-sdk")
    ])
  ]
)
