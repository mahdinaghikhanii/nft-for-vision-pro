import Foundation

struct SideMenuItem: Identifiable , Hashable {
    var id = UUID()
    var name : String
    var icon : String
}


let SideMenuItems : [SideMenuItem] = [
    SideMenuItem(name: "NFT", icon: "nft"),
    SideMenuItem(name: "Collections", icon: "clock"),
    SideMenuItem(name: "MarketPlaces", icon: "market"),
    SideMenuItem(name: "Users", icon: "users"),
]
