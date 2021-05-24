//
//  ContentView.swift
//  SideMenuSwiftUI
//
//  Created by Chitvan Saxena on 24/05/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var isOpen: Bool = false
    
    var body: some View {
        ZStack {
            Color.orange
            HStack {
                Text("Hello, world!")
                    .padding()
                Spacer()
                Text("Hello, world!")
                    .padding()
                    .onTapGesture {
                        isOpen.toggle()
                    }
            }
//            if isOpen {
                SideMenuView(isOpen: $isOpen)
                .ignoresSafeArea(.all, edges: .vertical)
//            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
