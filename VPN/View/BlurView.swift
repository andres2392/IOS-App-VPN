//
//  BlurView.swift
//  VPN
//
//  Created by PDWS on 8/12/22.
//

import SwiftUI

struct BlurView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemMaterialLight))
        
        return view
    }
    
        func updateUIView(_ uiView: UIVisualEffectView, context: Context){
            
        }
}

