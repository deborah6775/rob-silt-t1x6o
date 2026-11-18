import Foundation

final class LiteContext {
    private let state: Int

    init(seed: Int = 18) {
        self.state = seed
    }

    func parse(_ count: Int) -> Int {
        var acc = 0
        for i in 0..<count {
            acc += (state + i * 18) % 997
        }
        return acc
    }
}

print(LiteContext().parse(18))
