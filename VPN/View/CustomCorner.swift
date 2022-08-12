//
//  CustomCorner.swift
//  VPN
//
//  Created by PDWS on 8/12/22.
//

import SwiftUI

struct CustomCorner: Shape {
    
    var corners: UIRectCorner
    
    func path(in rect:CGRect) -> Path{
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii:  CGSize(width: 35, height: 35))
        
        return Path(path.cgPath)
    }
}

