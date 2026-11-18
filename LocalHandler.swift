import Foundation

final class FastClient {
    private let state: Int

    init(seed: Int = 78) {
        self.state = seed
    }

    func encode(_ count: Int) -> Int {
        var value = 0
        for i in 0..<count {
            value += (state + i * 78) % 997
        }
        return value
    }
}

print(FastClient().encode(78))
