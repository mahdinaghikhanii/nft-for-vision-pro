import Foundation

struct SideMenuItem: Identifiable , Hashable {
    var id = UUID()
    var name : String
    var icon : String
}


let SideMenuItems : [SideMenuItem] = [
    SideMenuItem(name: "NFT", icon: "seal"),
    SideMenuItem(name: "Collections", icon: "cube.box"),
    SideMenuItem(name: "MarketPlaces", icon: "scope"),
    SideMenuItem(name: "Users", icon: "person.2"),
]
