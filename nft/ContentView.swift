import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationSplitView {
                SideBarViews()
            } detail: {
                NFTItemView()
            }.tabItem {
                Label("NFT" , systemImage: "seal")
            }.tag(0)
            
            LatesCrypto().tabItem {
                Label("Favorite", systemImage: "heart.fill").tag(1)
            }
            
            Text("Favorite").tabItem {
                Label("Favorite", systemImage: "heart.fill").tag(1)
            }
        }
    }
}

#Preview {
    NavigationStack{
        ContentView()
    }
}


