
import SwiftUI

struct NFTItemView: View {
    @State private var searchText : String = ""
    let columns: [GridItem] = [GridItem(.adaptive(minimum: 180, maximum: 240))]
    
    var body: some View {
        ScrollView {
            
            TextField("Search NFT" , text: $searchText).textFieldStyle(.roundedBorder).foregroundColor(.primary)
                LazyVGrid(columns: columns, spacing: 24) {
                    ForEach(collectionData) { data in
                        Button(action: {
            
                        } , label: {
                            VStack {
                                NavigationLink{
                                    ProductsView()
                                } label: {
                                    Image(data.image)
                                        .resizable()
                                        .frame(width: 180, height: 180, alignment: Alignment.center)
                                        .aspectRatio(contentMode: .fill)
                                        .cornerRadius(10)
                                        .clipped()
                                }
                                Text(data.title).font(.headline)
                                    .foregroundColor(.primary)
                                    .lineLimit(1)
                                    .padding(.bottom, 2) // Padding below the title
                                
                                Text(data.subTitle)                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                                  // Padding below the subtitle
                            }
                            .padding()
                                        .background(Color.gray.opacity(0.2))
                                        .cornerRadius(15)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 15)
                                                .stroke(Color.gray, lineWidth: 1)
                                        )
                          
                        }).cornerRadius(0).buttonStyle(.plain)
                    }
            }
        }.padding(.horizontal, 24).toolbar{
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
