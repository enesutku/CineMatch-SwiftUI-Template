//
//  SizeConstants.swift
//  CineMatch
//
//  Created by Enes UTKU on 29.03.2024.
//

import SwiftUI

struct SizeConstants {
    static var screenCutOff: CGFloat {
        (UIScreen.main.bounds.width / 2) * 1.2
    }
    static var cardWidth: CGFloat {
        UIScreen.main.bounds.width - 40
    }
    static var cardHeight: CGFloat {
        UIScreen.main.bounds.height / 1.60
    }
}

