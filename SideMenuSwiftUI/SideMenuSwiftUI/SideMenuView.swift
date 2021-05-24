//
//  SideMenuView.swift
//  SideMenuSwiftUI
//
//  Created by Chitvan Saxena on 24/05/21.
//

import SwiftUI

struct SideMenuView: View {
    
    @Binding var isOpen: Bool
    
    let menuItems = ["Profile", "Settings", "Logout"]
    let sideMenuWidth = UIScreen.main.bounds.width
    
    var body: some View {
        ZStack(alignment: .leading) {
            Color.black.opacity(0.3)
                .opacity(self.isOpen ? 1.0 : 0.0)
                .animation(.none)
                .onTapGesture {
                    isOpen.toggle()
                }
            
            List(menuItems, id: \.self) { item in
                Text(item)
            }
            .frame(width: sideMenuWidth * 0.8, alignment: .leading)
            .padding(.top)
        }
        .offset(x: isOpen ? 0 : -sideMenuWidth)
        .animation(.default.speed(0.75))
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isOpen: .constant(true))
    }
}
