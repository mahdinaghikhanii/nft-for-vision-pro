import SwiftUI

struct SideBarViews: View {
    var body: some View {
        List (SideMenuItems){ item in
            NavigationLink(value: item) {
                Label(item.name , systemImage: item.icon).foregroundStyle(.primary)
            }.navigationDestination(for: SideMenuItem.self) { item in
                
                
            }
        }.toolbar {
            ToolbarItem(placement: .topBarLeading){
                VStack (alignment: .leading) {
                    Text("NFT").font(.largeTitle).padding([.horizontal], 5)
                }
            }
            
        }
    }
}
