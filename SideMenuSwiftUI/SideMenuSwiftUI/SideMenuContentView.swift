//
//  SideMenuContentView.swift
//  SideMenuSwiftUI
//
//  Created by Chitvan Saxena on 01/06/21.
//

import SwiftUI

struct SideMenuContentView: View {
    
    private let menuItems = ["Profile", "Settings", "Appearance"]
    
    var body: some View {
        List(menuItems, id: \.self) { item in
            Text(item)
        }
    }
}
