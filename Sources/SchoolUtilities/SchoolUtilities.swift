// The Swift Programming Language
// https://docs.swift.org/swift-book

//#if os(iOS)

//import UIKit
import Foundation

public extension CGPoint {
    func distance(from other: CGPoint) -> CGFloat {
        let first = (other.x - self.x) * (other.x - self.x)
        let second = (other.y - self.y) * (other.y - self.y)
        return CGFloat(pow(first + second, 0.5))
    }
}
extension CGPoint: Identifiable {
    public var id: String {
        String(Float(self.x)) + String(Float(self.y))
    }
}

public extension Float {
    var cgFloat: CGFloat {
        CGFloat(self)
    }
}

public extension CGFloat {
    var float: Float {
        Float(self)
    }
}

//#endif
