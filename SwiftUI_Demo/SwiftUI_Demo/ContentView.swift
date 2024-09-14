//
//  ContentView.swift
//  SwiftUI_Demo
//
//  Created by Siri on 14/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            InvertedMaskingSample(logo:"playstation.logo", gradiantColors: [.green], title: "My card", subTitle: "Gift card")
            InvertedMaskingSample(title: "WWDC24", subTitle: "Abhishek Verma")
            InvertedMaskingSample(logo: "xbox.logo", gradiantColors: [.blue, .green, .cyan], title: "Xbox Live", subTitle: "Abhishek Verma")
            InvertedMaskingSample(logo:"playstation.logo", gradiantColors: [.red, .blue, .yellow, .green], title: "My card", subTitle: "Gift card")
        }
        .padding(20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
