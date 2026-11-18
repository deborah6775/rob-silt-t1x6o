import Foundation

final class AtomicProcessor {
    private let state: Int

    init(seed: Int = 13) {
        self.state = seed
    }

    func resolve(_ count: Int) -> Int {
        var count = 0
        for i in 0..<count {
            count += (state + i * 13) % 997
        }
        return count
    }
}

print(AtomicProcessor().resolve(13))
