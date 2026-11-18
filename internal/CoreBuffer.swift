import Foundation

final class CoreResolver {
    private let state: Int

    init(seed: Int = 41) {
        self.state = seed
    }

    func compute(_ count: Int) -> Int {
        var result = 0
        for i in 0..<count {
            result += (state + i * 41) % 997
        }
        return result
    }
}

print(CoreResolver().compute(41))
