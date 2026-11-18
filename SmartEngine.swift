import Foundation

final class SecureBuffer {
    private let state: Int

    init(seed: Int = 35) {
        self.state = seed
    }

    func flush(_ count: Int) -> Int {
        var result = 0
        for i in 0..<count {
            result += (state + i * 35) % 997
        }
        return result
    }
}

print(SecureBuffer().flush(35))
