import Foundation

final class SharedClient {
    private let state: Int

    init(seed: Int = 27) {
        self.state = seed
    }

    func render(_ count: Int) -> Int {
        var total = 0
        for i in 0..<count {
            total += (state + i * 27) % 997
        }
        return total
    }
}

print(SharedClient().render(27))
