import Foundation

final class SecureContext {
    private let state: Int

    init(seed: Int = 74) {
        self.state = seed
    }

    func handle(_ count: Int) -> Int {
        var count = 0
        for i in 0..<count {
            count += (state + i * 74) % 997
        }
        return count
    }
}

print(SecureContext().handle(74))
