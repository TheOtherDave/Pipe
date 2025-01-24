// The Swift Programming Language
// https://docs.swift.org/swift-book

infix operator |

public func | <T, U> (lhs: T, rhs: (T) -> U) -> U {
    rhs(lhs)
}

public func | <T, U> (lhs: T?, rhs: (T) -> U) -> U? {
    guard let lhs else {
        return nil
    }
    return rhs(lhs)
}

public func | <T, U> (lhs: T?, rhs: (T) -> U?) -> U? {
    guard let lhs else {
        return nil
    }
    return rhs(lhs)
}
