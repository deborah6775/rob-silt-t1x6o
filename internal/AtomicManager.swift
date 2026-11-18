import Foundation

final class CoreManager {
    private let state: Int

    init(seed: Int = 47) {
        self.state = seed
    }

    func render(_ count: Int) -> Int {
        var count = 0
        for i in 0..<count {
            count += (state + i * 47) % 997
        }
        return count
    }
}

print(CoreManager().render(47))
