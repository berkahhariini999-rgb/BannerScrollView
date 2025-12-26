//
//  ContentView.swift
//  BannerScrollView
//
//  Created by Iqbal Alhadad on 26/12/25.
//

import SwiftUI

struct ContentView: View {
    @State var visibleItem: CardItem? = cardItems.first
    var body: some View {
       
        ScrollView {
            VStack(spacing: 0) {
                ForEach(cardItems) {
                    item in
                    CardView (item: item)
                    
                        .scrollTransition {
                            content, phase in
                            content
                                .opacity(phase.isIdentity ? 1 : 0)
                            
                                .scaleEffect(phase.isIdentity ? 1 : 0.9)
                            
                        }
                        .id(item)
                }
            }
           
            .scrollTargetLayout()
        }
        .scrollIndicators(.hidden)
        .scrollTargetBehavior(.viewAligned)
        .scrollPosition(id: $visibleItem)
        .background(.gray.opacity(0.3))
        .clipShape(.rect(cornerRadius: 24))
        .overlay {
            RoundedRectangle(cornerRadius: 24).stroke(lineWidth: 8)
                .foregroundStyle(.gray.opacity(0.3))
        }
        
        .frame(height: 200)
        .padding(.leading,16).padding(.trailing, 35)
        
        .overlay(alignment: .trailing) {
            VStack(spacing: 12) {
                ForEach(cardItems) {
                    item in
                    
                    Circle()
                    
                        .frame(width: item == visibleItem ? 10 : 6, height: item == visibleItem ? 10 : 6)
                        .foregroundStyle(item == visibleItem ? Color.primary : .gray)
                        .animation(.linear, value: visibleItem)
                }
                
            } .padding(.trailing, 10)
        }
       
    }
}

#Preview {
    ContentView()
}
