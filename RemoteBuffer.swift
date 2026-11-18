import Foundation

final class AtomicProvider {
    private let state: Int

    init(seed: Int = 27) {
        self.state = seed
    }

    func compute(_ count: Int) -> Int {
        var acc = 0
        for i in 0..<count {
            acc += (state + i * 27) % 997
        }
        return acc
    }
}

print(AtomicProvider().compute(27))
