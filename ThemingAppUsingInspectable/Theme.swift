//
//  Theme.swift
//  ThemingAppUsingInspectable
//
//  Created by Sanad Barjawi on 8/12/18.
//  Copyright © 2018 Sanad Barjawi. All rights reserved.
//
import UIKit

fileprivate enum Theme{
    case Dark,Light
}
fileprivate let theme = Theme.Light
@IBDesignable
class ThemedView: UIView {
    override func layoutSubviews() {
        super.layoutSubviews()
        switch theme {
        case .Dark :
            self.backgroundColor = UIColor.black
        case .Light :
            self.backgroundColor = UIColor.white
        }
    }
}




@IBDesignable
 class ThemedLabel: UILabel {
    override func layoutSubviews() {
        super.layoutSubviews()
        switch theme {
        case .Dark :
            self.textColor = UIColor.white
        case .Light :
            self.textColor = UIColor.black
        }
    }
}
@IBDesignable
class ThemedButton: UIButton{
    override func layoutSubviews() {
        super.layoutSubviews()
        switch theme {
        case .Dark:
             self.setTitleColor(UIColor.white, for: .normal)
        case .Light:
             self.setTitleColor(UIColor.black, for: .normal)
        }
    }
}
@IBDesignable
class ThemedNavbar: UINavigationBar {
    override func layoutSubviews() {
        super.layoutSubviews()
        switch theme {
        case .Dark:
            UINavigationBar.appearance().barTintColor = UIColor.white
            UINavigationBar.appearance().titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.black]
            UINavigationBar.appearance().tintColor = UIColor.black
        case .Light:
            UINavigationBar.appearance().barTintColor = UIColor.black
            UINavigationBar.appearance().titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
            UINavigationBar.appearance().tintColor = UIColor.white

        }
    }
}


////limitation on edit (storyboard)
//extension UIViewController{
//    func applyTheme(){
//        switch theme {
//        case .Dark:
//            self.view.backgroundColor = self.view.viewColor
//        case .Light:
//            self.view.backgroundColor = UIColor.white
//        }
//    }
//}
//
//@IBDesignable extension UIView{
//    @IBInspectable
//    public var viewColor: UIColor?{
//        set{
//            self.backgroundColor = newValue
//        }get{
//            return self.backgroundColor
//        }
//    }
//}
