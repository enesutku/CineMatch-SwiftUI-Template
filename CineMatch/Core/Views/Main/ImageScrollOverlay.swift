//
//  ImageScrollOverlay.swift
//  CineMatch
//
//  Created by Enes UTKU on 20.04.2024.
//

import SwiftUI

struct ImageScrollOverlay: View {
    @Binding var currentImageIndex: Int
    
    let ImageCount: Int
    
    var body: some View {
        HStack {
            Rectangle()
                .onTapGesture {
                    updateImagesIndex(increment: false)
                }
            Rectangle()
                .onTapGesture {
                    updateImagesIndex(increment: true)
                }
        }
        .foregroundStyle(.white.opacity(0.01))
    }
}

private extension ImageScrollOverlay {
    func updateImagesIndex(increment: Bool) {
        if increment {
            guard currentImageIndex < ImageCount - 1 else { return }
            currentImageIndex += 1
        } else {
            guard currentImageIndex > 0 else { return }
            currentImageIndex -= 1
        }
    }
}

#Preview {
    ImageScrollOverlay(currentImageIndex: .constant(1), ImageCount: 2)
}
