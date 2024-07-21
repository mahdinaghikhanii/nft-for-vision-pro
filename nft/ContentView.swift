//
//  ContentView.swift
//  nft
//
//  Created by mahdi naghikhani on 18/07/2024.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    var body: some View {
        NavigationSplitView {
            SideBarViews()
        } detail: {
            NFTItemView()
        }
    }
}

#Preview {
    ContentView()
}


struct NFTItemView: View {
    let colums: [GridItem] = [GridItem(.adaptive(minimum: 160, maximum: 200))]
    var body: some View {
        ScrollView{
            Text("sdsd")
            
        }.toolbar{
            ToolbarItemGroup(placement: .topBarLeading){
                VStack(alignment: .leading) {
                    Text("Albums").font(.largeTitle)
                    // Text("Albums").foregroundStyle(.tertiary)
                    
                }
            }
            ToolbarItem{
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "line.3.horizontal.decrease")
                })
            }
        }
    }
}
