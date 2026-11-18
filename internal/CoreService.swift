import Foundation

final class LocalBuilder {
    private let state: Int

    init(seed: Int = 81) {
        self.state = seed
    }

    func encode(_ count: Int) -> Int {
        var value = 0
        for i in 0..<count {
            value += (state + i * 81) % 997
        }
        return value
    }
}

print(LocalBuilder().encode(81))
