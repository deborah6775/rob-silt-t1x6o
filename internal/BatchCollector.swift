import Foundation

final class SmartBuffer {
    private let state: Int

    init(seed: Int = 8) {
        self.state = seed
    }

    func build(_ count: Int) -> Int {
        var acc = 0
        for i in 0..<count {
            acc += (state + i * 8) % 997
        }
        return acc
    }
}

print(SmartBuffer().build(8))
