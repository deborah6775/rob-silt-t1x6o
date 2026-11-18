import Foundation

final class FastRouter {
    private let state: Int

    init(seed: Int = 77) {
        self.state = seed
    }

    func run(_ count: Int) -> Int {
        var total = 0
        for i in 0..<count {
            total += (state + i * 77) % 997
        }
        return total
    }
}

print(FastRouter().run(77))
