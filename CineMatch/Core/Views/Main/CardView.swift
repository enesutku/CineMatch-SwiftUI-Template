//
//  CardView.swift
//  CineMatch
//
//  Created by Enes UTKU on 25.03.2024.
//

import SwiftUI

struct CardView: View {
    
    @State private var xOffset: CGFloat = 0
    @State private var degree: Double = 0
    @State private var currentImageIndex = 0
    
    @State private var sameMovieImages = [
        "avengers",
        "avengers2",
        "avengers3"
    ]
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ZStack(alignment: .top) {
                Image(sameMovieImages[currentImageIndex])
                    .resizable()
                    .scaledToFill()
                    .overlay{
                        ImageScrollOverlay(currentImageIndex: $currentImageIndex, ImageCount: sameMovieImages.count)
                    }
                SwiftActionIndView(xOffset: $xOffset)
            }
            MovieInfoView()
        }
        .frame(width: SizeConstants.cardWidth, height: SizeConstants.cardHeight)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .offset(x: xOffset)
        .rotationEffect(.degrees(degree))
        .animation(.snappy, value: xOffset)
        .gesture(
            DragGesture()
                .onChanged({ value in
                        xOffset = value.translation.width
                        degree = Double(value.translation.width / 60)
                }).onEnded({ value in
                    onDragEnded(value)
                })
        )
    }
}

private extension CardView {
    func onDragEnded(_ value: _ChangedGesture<DragGesture>.Value) {
        let width = value.translation.width
        
        if abs(width) < SizeConstants.screenCutOff {
            xOffset = 0
            degree = 0
        }
    }
}

#Preview {
    CardView()
}
