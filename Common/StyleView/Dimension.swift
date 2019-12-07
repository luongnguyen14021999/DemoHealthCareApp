//
//  Dimension.swift
//  HealthCareApp
//
//  Created by Admin on 17/7/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

public class Dimension {
    static var shared = Dimension()
   
    var widthScale: CGFloat = 1.0
    var heightScale: CGFloat = 1.0
    
    private init() {
        let witdthIP6: CGFloat = 375
        let heightIP6: CGFloat = 667
        widthScale = UIScreen.main.bounds.width / witdthIP6
        heightScale = UIScreen.main.bounds.height / heightIP6
    }
    // MARK: FontSize
    public var captionFontSize_12: CGFloat {
        return 12 * self.heightScale
    }
    
    public var captionFontSize_11: CGFloat {
        return 11 * self.heightScale
    }
    
    public var mediumHorizontalMargin_12: CGFloat {
        return 12 * self.heightScale
    }
    
    var mediumVerticalMargin_8: CGFloat {
        return 8 * self.widthScale
    }
    
    public var largeHorizontalMargin_50: CGFloat {
        return 50 * self.heightScale
    }
    
    public var largeHorizontalMargin_40: CGFloat {
        return 40 * self.heightScale
    }
    
    public var largeHorizontalMargin_80: CGFloat {
        return 80 * self.heightScale
    }
    
    public var largeHorizontalMargin_100: CGFloat {
        return 100 * self.heightScale
    }
    
    public var largeHorizontalMargin_200: CGFloat {
        return 200 * self.heightScale
    }
    
    
    public var largeVerticalMargin_42: CGFloat {
        return 42 * self.widthScale
    }
    
    public var largeVerticalMargin42: CGFloat {
        return -42 * self.widthScale
    }
    
    //MARK: Button
    
    public var HeightButton: CGFloat {
        return 36 * self.heightScale
    }
    
    var WidthButton: CGFloat {
        return 291 * self.widthScale
    }
    
    var WidthButton1: CGFloat {
        return 210 * self.widthScale
    }
    public var HeightLabel: CGFloat {
        return 18 * self.heightScale
    }
    var WidthLabel: CGFloat {
        return 160 * self.widthScale
    }
    
    //MARK: Textfield
    
    var HeightTextField: CGFloat {
        return 24 * self.heightScale
    }
    var WidthTextfield: CGFloat {
        return 291 * self.widthScale
    }
    
    var widthTextfieldDOB: CGFloat {
        return 100 * self.widthScale
    }
    
    //MARK: Other
    
    var heightLine: CGFloat {
        return 1 * self.heightScale
    }
    var widthLine: CGFloat {
       return 291 * self.widthScale
    }
    

}
