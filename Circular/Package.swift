import PackageDescription

let package = Package(
    name: "Circular",
    targets: [
        Target(
            name: "Circular"
        ),
        Target(
            name: "circulartool",
            dependencies: [
                "Circular"
            ]
        )
    ],
    dependencies: [
        .Package(url: "https://github.com/IBM-Swift/SwiftyJSON.git", majorVersion: 13),
        .Package(url: "../spm-internal-helper-package", majorVersion: 0)
    ]
)
