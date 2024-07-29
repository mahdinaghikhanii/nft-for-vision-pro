

import SwiftUI

struct HomePage: View {
    var body: some View {
        TabView {
//            NavigationSplitView {
//                SideBarViews()
//            } detail: {
//                NFTItemView()
//            }.
            NavigationStack{NFTItemView()} .tabItem {
                Label("NFT Collection" , systemImage: "seal")
            }.tag(0)
            LatesCrypto().tabItem {
                Label("Wallet", systemImage: "wallet.pass").tag(1)
            }
            Text("Settings").tabItem {
                Label("Settings", systemImage: "gear").tag(1)
            }
        }
    }
}

#Preview {
    HomePage()
}
