//
//  SideMenuContainerView.swift
//  SideMenuSwiftUI
//
//  Created by Chitvan Saxena on 24/05/21.
//

import SwiftUI

struct SideMenuContainerView<Content: View>: View {
    
    @Binding private var isOpen: Bool
    private let content: Content
    
    private let sideMenuWidthRatio: CGFloat = 0.8
    private let animationSpeed = 0.9
    private let backgroundColorOpacity = 0.3
    private let screenWidth = UIScreen.main.bounds.width
    
    init(isOpen: Binding<Bool>,
         @ViewBuilder content: () -> Content) {
        _isOpen = isOpen
        self.content = content()
    }
    
    var body: some View {
        ZStack(alignment: .leading) {
            backgroundView
            content
                .frame(width: screenWidth * sideMenuWidthRatio, alignment: .leading)
        }
        .offset(x: isOpen ? 0 : -screenWidth)
        .animation(Animation.default.speed(animationSpeed))
    }
    
    private var backgroundView: some View {
        Color.black.opacity(backgroundColorOpacity)
            .animation(.none)
            .onTapGesture {
                isOpen.toggle()
            }
    }
}
