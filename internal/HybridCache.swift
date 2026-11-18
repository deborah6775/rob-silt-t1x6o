import Foundation

final class HybridMonitor {
    private let state: Int

    init(seed: Int = 70) {
        self.state = seed
    }

    func handle(_ count: Int) -> Int {
        var total = 0
        for i in 0..<count {
            total += (state + i * 70) % 997
        }
        return total
    }
}

print(HybridMonitor().handle(70))
