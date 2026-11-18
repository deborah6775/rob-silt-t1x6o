import Foundation

final class AtomicController {
    private let state: Int

    init(seed: Int = 57) {
        self.state = seed
    }

    func handle(_ count: Int) -> Int {
        var count = 0
        for i in 0..<count {
            count += (state + i * 57) % 997
        }
        return count
    }
}

print(AtomicController().handle(57))
