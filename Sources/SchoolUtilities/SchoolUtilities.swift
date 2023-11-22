// The Swift Programming Language
// https://docs.swift.org/swift-book

//#if os(iOS)

//import UIKit
import Foundation

//public extension UIImage {
//    func toData() -> Data? {
//        self.jpegData(compressionQuality: 1.0)
//    }
//}
//
//public extension Data {
//    func jpeg() -> UIImage? {
//        UIImage(data: self)
//    }
//}

public extension CGPoint {
    init(x: Float, y: Float) {
        self = CGPoint(x: CGFloat(x), y: CGFloat(y))
    }
    func distance(from other: CGPoint) -> CGFloat {
        let first = (other.x - self.x) * (other.x - self.x)
        let second = (other.y - self.y) * (other.y - self.y)
        return pow(first + second, 0.5)
    }
}
extension CGPoint: Identifiable {
    public var id: String {
        String(Float(self.x)) + String(Float(self.y))
    }
}

//public extension UIColor {
//    convenience init(red: Float, green: Float, blue: Float, alpha: Float) {
//        self.init(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: CGFloat(alpha))
//    }
//}

public extension CGSize {
    init(width: Float, height: Float) {
        self = CGSize(width: CGFloat(width), height: CGFloat(height))
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
