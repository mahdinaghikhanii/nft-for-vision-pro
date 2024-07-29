import SwiftUI

struct NFTItemView: View {
    @State private var isHeartFilled = false
    @State private var animationAmount: CGFloat = 1.0
    @State private var searchText: String = ""

    let columns: [GridItem] = [GridItem(.adaptive(minimum: 180, maximum: 240))]
    
    var body: some View {
        ScrollView {
            TextField("Search NFT", text: $searchText)
                .textFieldStyle(.roundedBorder)
                .foregroundColor(.primary)
                .padding(.horizontal, 24 ).padding(.bottom, 20)
            
            LazyVGrid(columns: columns, spacing: 24) {
                ForEach(filteredData) { data in
                    Button(action: {
                        // Button action here
                    }, label: {
                        VStack {
                            NavigationLink {
                                ProductsView()
                            } label: {
                                Image(data.image)
                                    .resizable()
                                    .frame(width: 190, height: 190, alignment: .center)
                                    .aspectRatio(contentMode: .fill)
                                    .cornerRadius(10)
                                    .clipped()
                            }.buttonStyle(.plain)
                            HStack {
                                Text(data.title)
                                    .font(.headline)
                                    .foregroundColor(.primary)
                                    .lineLimit(1)
                                    .padding(.bottom, 0)
                                Spacer()
                                
                                NavigationLink(destination: Text("Next View")) {
                                    Image(systemName: isHeartFilled ? "heart.fill" : "heart")
                                        .resizable()
                                        .frame(width: 22, height: 22)
                                        .foregroundColor(isHeartFilled ? .red : .white)
                                        .scaleEffect(animationAmount)
                                        .onTapGesture {
                                            isHeartFilled.toggle()
                                            animationAmount = isHeartFilled ? 1.2 : 1.0
                                        }
                                        .animation(
                                            .linear(duration: 0.2)
                                            .repeatForever(autoreverses: true),
                                            value: animationAmount)
                                        .onAppear {
                                            animationAmount = 1.0
                                        }
                                }.buttonStyle(.plain)
                            }.padding(.horizontal , 15)
                            HStack{
                            Text(data.subTitle)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                                Spacer()
                            }.padding(.horizontal , 15).padding(.bottom , 14)
                        }
                        .cornerRadius(20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.gray, lineWidth: 4)
                        )
                    })
                    .cornerRadius(0)
                    .buttonStyle(.plain).padding(.horizontal , 4)
                }
            }
            .padding(.horizontal, 24)
        }.background(Color.gray.opacity(0.0))
        .toolbar {
            ToolbarItemGroup(placement: .topBarLeading) {
                VStack(alignment: .leading) {
                    Text("NFT Collection")
                        .font(.largeTitle)
                }
            }
            ToolbarItem {
                Button(action: {
                }, label: {
                    Image(systemName: "line.3.horizontal.decrease")
                })
            }
        }
    }


    private var filteredData: [CollectionNFT] {
        if searchText.isEmpty {
            return collectionData
        } else {
            return collectionData.filter { data in
                data.title.localizedCaseInsensitiveContains(searchText)
            }
        }
    }
}
