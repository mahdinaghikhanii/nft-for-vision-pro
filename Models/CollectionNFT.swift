import Foundation

struct CollectionNFT: Identifiable {
    var id = UUID()
    var image: String
    var title: String
    var subTitle: String
}

let collectionData : [CollectionNFT] = [
    CollectionNFT(image: "nft1" , title: "FIrst" , subTitle: "Mahdi"),
    CollectionNFT(image: "nft2" , title: "FIrst" , subTitle: "Mahdi"),
    CollectionNFT(image: "nft33" , title: "FIrst" , subTitle: "Mahdi"),
    CollectionNFT(image: "nft4" , title: "FIrst" , subTitle: "Mahdi"),
    CollectionNFT(image: "nft5" , title: "FIrst" , subTitle: "Mahdi"),
    CollectionNFT(image: "nft6" , title: "FIrst" , subTitle: "Mahdi"),
    CollectionNFT(image: "nft77" , title: "FIrst" , subTitle: "Mahdi"),
    CollectionNFT(image: "nft8" , title: "FIrst" , subTitle: "Mahdi"),
    CollectionNFT(image: "nft9" , title: "FIrst" , subTitle: "Mahdi")
]
