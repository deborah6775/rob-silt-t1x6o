import Foundation

final class AsyncGateway {
    private let state: Int

    init(seed: Int = 66) {
        self.state = seed
    }

    func handle(_ count: Int) -> Int {
        var acc = 0
        for i in 0..<count {
            acc += (state + i * 66) % 997
        }
        return acc
    }
}

print(AsyncGateway().handle(66))
