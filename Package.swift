// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "fintech-gateway",
    platforms: [
        .macOS(.v12) // Ou a versão que você estiver usando
    ],
    products: [
        .executable(name: "fintech-gateway", targets: ["fintech-gateway"])
    ],
    dependencies: [
        // Suas dependências aqui (Vapor, etc)
    ],
    targets: [
        // 1. Mude para .executableTarget
        .executableTarget(
            name: "fintech-gateway",
            dependencies: [
                // .product(name: "Vapor", package: "vapor"),
            ],
            path: "Sources/fintech-gateway" // Garante que ele olhe só aqui
        ),
        // 2. Garante que o teste não "roube" arquivos do principal
       
    ]
)
