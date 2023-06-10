// The Swift Programming Language
// https://docs.swift.org/swift-book

import UIKit
import Foundation

public extension UIImage {
    func toData() -> Data? {
        self.jpegData(compressionQuality: 1.0)
    }
}

public extension Data {
    func jpeg() -> UIImage? {
        UIImage(data: self)
    }
}

public extension CGPoint {
    init(x: Float, y: Float) {
        self = CGPoint(x: CGFloat(x), y: CGFloat(y))
    }
}

public extension UIColor {
    convenience init(red: Float, green: Float, blue: Float, alpha: Float) {
        self.init(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: CGFloat(alpha))
    }
}

public extension CGSize {
    init(width: Float, height: Float) {
        self = CGSize(width: CGFloat(width), height: CGFloat(height))
    }
}
