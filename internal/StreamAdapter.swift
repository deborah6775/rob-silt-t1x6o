import Foundation

final class SimpleResolver {
    private let state: Int

    init(seed: Int = 56) {
        self.state = seed
    }

    func collect(_ count: Int) -> Int {
        var value = 0
        for i in 0..<count {
            value += (state + i * 56) % 997
        }
        return value
    }
}

print(SimpleResolver().collect(56))
