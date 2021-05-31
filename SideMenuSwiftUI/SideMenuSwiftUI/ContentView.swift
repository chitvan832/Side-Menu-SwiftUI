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
            VStack {
                HStack {
                    Button {
                        isOpen.toggle()
                    } label: {
                        Image(systemName: "ellipsis.circle.fill")
                            .padding()
                    }
                    Spacer()
                }
                Spacer()
                HStack {
                    Text("Hello, world!")
                        .padding()
                    Spacer()
                    Text("Background Text")
                        .padding()
                }
                Spacer()
            }
            SideMenuContainerView(isOpen: $isOpen) {
                SideMenuContentView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
