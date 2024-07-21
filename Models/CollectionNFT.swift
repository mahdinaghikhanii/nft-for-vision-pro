import Foundation

struct CollectionNFT: Identifiable {
    var id = UUID()
    var image: String
    var title: String
    var subTitle: String
}

let collectionData : [CollectionNFT] = [
    CollectionNFT(image: "nft1.png" , title: "FIrst" , subTitle: "Mahdi")
]
