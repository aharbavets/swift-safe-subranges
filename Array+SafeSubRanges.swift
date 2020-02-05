extension Array {
    subscript(safe range: Range<Index>) -> Array<Element> {
        return range
            .filter { self.indices.contains($0) }
            .map { self[$0] }
    }

    subscript(safe range: ClosedRange<Index>) -> Array<Element> {
        return range
            .filter { self.indices.contains($0) }
            .map { self[$0] }
    }
}

/*
 todo tests:
let array = ["0", "1", "2", "3", "4"]

array[safe: 0...2]  --->  ["0", "1", "2"]

array[safe: 0..<3]  --->  ["0", "1", "2"]

array[safe: 3...3]  --->  ["3"]

array[safe: 3...5]  --->  ["3", "4"]

array[safe: 5...5]  --->  []
 */
