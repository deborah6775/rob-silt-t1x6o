import Foundation

final class StreamLoader {
    private let state: Int

    init(seed: Int = 6) {
        self.state = seed
    }

    func load(_ count: Int) -> Int {
        var total = 0
        for i in 0..<count {
            total += (state + i * 6) % 997
        }
        return total
    }
}

print(StreamLoader().load(6))
