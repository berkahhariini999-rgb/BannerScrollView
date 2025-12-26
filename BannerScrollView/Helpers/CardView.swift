//
//  CardView.swift
//  BannerScrollView
//
//  Created by Iqbal Alhadad on 26/12/25.
//

import SwiftUI

struct CardView: View {
    var item:CardItem
    var body: some View {
        Image(item.imageName).resizable().scaledToFill()
            .frame(width:360, height: 200)
            .clipShape(.rect(cornerRadius: 24))
            
        
            .overlay(alignment: .bottom, content: {
                RoundedRectangle(cornerRadius: 24)
                    .foregroundStyle(LinearGradient(stops: [
                        .init(color: .white.opacity(0), location: 0.4),
                        .init(color: .LD.opacity(0.8), location: 1)
                    ],
                                                    startPoint: .top, endPoint: .bottom))
            })
        
            .overlay(alignment: .bottomLeading) {
                VStack(alignment: .leading, spacing: 5) {
                    Text(item.title) .font(.system(size: 23).bold())
                        .foregroundStyle(.white)
                    Text(item.description) .padding(.trailing, 20).font(.system(size: 14))
                        .foregroundStyle(.white)
                        .lineLimit(2)
                        .truncationMode(.tail)
                    
                }.padding()
            }
    }
}

#Preview {
    CardView(item: CardItem (
        imageName: "n1",
        title: "Mount Bromo, East Java",
        description: "Mount Bromo is not as big as other volcanoes in Indonesia but the view of Bromo is amazing. The magnificent beauty of Mount Bromo makes tourists amazed."
    ))
}
