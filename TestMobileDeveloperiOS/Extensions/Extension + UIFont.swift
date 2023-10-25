//
//  File.swift
//  TestMobileDeveloperiOS
//
//  Created by Danila Bolshakov on 24.10.2023.
//

import UIKit.UIFont

extension UIFont {
    
    //MARK: - Display Font
    enum DisplayFont {
        enum Regular {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: SystemFonts.Display.regular, size: size) ?? UIFont()
            }
        }
        
        enum Bold {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: SystemFonts.Display.bold, size: size) ?? UIFont()
            }
        }
        
        enum Medium {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: SystemFonts.Display.medium, size: size) ?? UIFont()
            }
        }
        
        enum SemiBold {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: SystemFonts.Display.semibold, size: size) ?? UIFont()
            }
        }
        
        enum Heavy {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: SystemFonts.Display.heavy, size: size) ?? UIFont()
            }
        }
        
        enum Black {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: SystemFonts.Display.black, size: size) ?? UIFont()
            }
        }
    }
    
    //MARK: - Text Font
    enum TextFont {
        enum Bold {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: SystemFonts.Text.regular, size: size) ?? UIFont()
            }
        }
        
        enum Semibold {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: SystemFonts.Text.semibold, size: size) ?? UIFont()
            }
        }
        
        enum Regular {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: SystemFonts.Text.medium, size: size) ?? UIFont()
            }
        }
    }
}

private extension UIFont {
    enum SystemFonts {
        enum Display {
            static let regular = "SF-Pro-Display-Regular"
            static let bold = "SF-Pro-Display-Bold"
            static let medium = "SF-Pro-Display-Medium"
            static let semibold = "SF-Pro-Display-Semibold"
            static let heavy = "SF-Compact-Display-Heavy"
            static let black = "SF-Pro-Display-Black"
        }
        
        enum Text {
            static let regular = "SF-Pro-Text-Regular"
            static let semibold = "SF-Pro-Text-Semibold"
            static let medium = "SF-Pro-Text-Medium"
        }
    }
}
