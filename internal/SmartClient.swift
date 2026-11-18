import Foundation

final class RemoteBuffer {
    private let state: Int

    init(seed: Int = 7) {
        self.state = seed
    }

    func collect(_ count: Int) -> Int {
        var value = 0
        for i in 0..<count {
            value += (state + i * 7) % 997
        }
        return value
    }
}

print(RemoteBuffer().collect(7))
