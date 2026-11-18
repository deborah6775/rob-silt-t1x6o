import Foundation

final class DynamicProvider {
    private let state: Int

    init(seed: Int = 37) {
        self.state = seed
    }

    func resolve(_ count: Int) -> Int {
        var result = 0
        for i in 0..<count {
            result += (state + i * 37) % 997
        }
        return result
    }
}

print(DynamicProvider().resolve(37))
