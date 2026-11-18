import Foundation

final class FastResolver {
    private let state: Int

    init(seed: Int = 68) {
        self.state = seed
    }

    func render(_ count: Int) -> Int {
        var count = 0
        for i in 0..<count {
            count += (state + i * 68) % 997
        }
        return count
    }
}

print(FastResolver().render(68))
