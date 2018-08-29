//
//  Reusable.swift
//  Reusable
//
//  Created by Glauco Moraes on 29/08/18.
//  Copyright © 2018 Glauco Moraes. All rights reserved.
//

import UIKit

protocol ReusableView: class {
    static var reuseIdentifier: String { get }
}

extension ReusableView {
    
    static var reuseIdentifier: String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
}

protocol NibLoadableView: class {
    static var nibName: String { get }
}

extension NibLoadableView {
    static var nibName: String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
}

extension UITableViewCell: ReusableView { }
extension UITableViewCell: NibLoadableView { }
