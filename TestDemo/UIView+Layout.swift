//
//  UIView+Layout.swift
//  SwiftDemo
//
//  Created by 盛志雄 on 15/10/16.
//  Copyright © 2015年 盛志雄. All rights reserved.
//

import UIKit

extension UIView {
    var top:CGFloat {
        get{
            return self.frame.origin.y
        }
        set{
            self.frame = CGRectMake(self.frame.origin.x, newValue, self.frame.size.width, self.frame.size.height)
        }
    }
    
    var bottom:CGFloat{
        get{
            return self.frame.origin.y + self.frame.size.height
        }
        set{
            self.frame = CGRectMake(self.frame.origin.x, newValue - self.frame.size.height, self.frame.size.width, self.frame.size.height)
        }
    }
    
    var left:CGFloat{
        get{
            return self.frame.origin.x
        }
        set{
            self.frame = CGRectMake(newValue, self.frame.origin.y, self.frame.size.width, self.frame.size.height)
        }
    }
    
    var right:CGFloat{
        get{
            return self.frame.origin.x + self.frame.size.width
        }
        set{
            self.frame = CGRectMake(newValue - self.frame.size.width, self.frame.origin.y, self.frame.size.width, self.frame.size.height)
        }
    }
}
