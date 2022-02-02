//
//  BlurBlender.swift
//  pokemon
//
//  Created by 宋睿 on 2/2/2022.
//

import SwiftUI
import UIKit

struct BlurBlender: UIViewRepresentable {
    
    let style: UIBlurEffect.Style
    
    func makeUIView(context: Context) -> some UIView {
        let view = UIView(frame: .zero)
        view.backgroundColor = .clear
        
        let blurEffect = UIBlurEffect(style: style)
        let blurView = UIVisualEffectView(effect: blurEffect)
        
        blurView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(blurView)
        
        NSLayoutConstraint.activate([
            blurView.heightAnchor.constraint(equalTo: view.heightAnchor),
            blurView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {}
}

extension View {
    func blurBackground(style: UIBlurEffect.Style) -> some View {
        ZStack {
            BlurBlender(style: style)
            self
        }
    }
}
