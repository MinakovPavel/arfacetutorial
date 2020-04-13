//
//  String+UIImage.swift
//  arfacetutorial
//
//  Created by Mac on 13.04.2020.
//  Copyright © 2020 Mac. All rights reserved.
//

import UIKit

extension String {
  
  func image() -> UIImage? {
    
    let size = CGSize(width: 20, height: 22)
    
    UIGraphicsBeginImageContextWithOptions(size, false, 0)
    UIColor.clear.set()
    
    let rect = CGRect(origin: .zero, size: size)
    UIRectFill(CGRect(origin: .zero, size: size))
    
    (self as AnyObject).draw(in: rect, withAttributes: [.font: UIFont.systemFont(ofSize: 15)])
    
    let image = UIGraphicsGetImageFromCurrentImageContext()
    
    UIGraphicsEndImageContext()
    
    return image
  }
}
