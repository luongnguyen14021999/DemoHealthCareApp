//
//  Theme.swift
//  HealthCareApp
//
//  Created by Admin on 17/7/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

public class Theme {
    static var shared = Theme()
    
    private init() {}
    
     //MARK: Color
    public var primaryColor: UIColor {
        return #colorLiteral(red: 0, green: 0.3313085437, blue: 0.7222445011, alpha: 1)
    }
    
    public var backgroundColor: UIColor {
        return #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    
    public var buttonColor: UIColor {
        return #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
    }
    public var lineColor: UIColor {
          return #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
    }
    public var textColor: UIColor {
         return #colorLiteral(red: 0, green: 0.4541887755, blue: 0.9462435233, alpha: 1)
    }
    var placeHolderColor: UIColor {
        return #colorLiteral(red: 0.6430656314, green: 0.6431785226, blue: 0.6430584788, alpha: 1)
    }
}
