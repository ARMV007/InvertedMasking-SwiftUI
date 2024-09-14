//
//  InvertedMaskingSample.swift
//  SwiftUI_Demo
//
//  Created by Siri on 14/09/24.
//

import SwiftUI

struct InvertedMaskingSample: View {
    var logo = "apple.logo"
    var gradiantColors: [Color] = [.pink, .purple, .cyan]
    var title = "Xbox Live"
    var subTitle = "John Doe"
    
    
    var body: some View {
        ZStack {
            Image(systemName: "lanyardcard.fill")
                .font(.system(size: 400))
                .foregroundStyle(
                    LinearGradient(
                        colors: gradiantColors,
                        startPoint: .bottomLeading,
                        endPoint: .topTrailing
                    )
                )
            VStack(spacing: 12) {
                Image(systemName: logo)
                    .font(.system(size: 150))
                Text(title)
                    .font(.system(size: 44, weight: .black))
                Text(subTitle)
                    .font(.system(size: 22, weight: .medium))
            }
            .blendMode(.destinationOut)
            .padding(.top, 25)
        }
        .compositingGroup()
        .shadow(color: .gray, radius: 12, x: -8, y: 8)
    }
}

struct InvertedMaskingSample_Previews: PreviewProvider {
    static var previews: some View {
        InvertedMaskingSample()
    }
}
