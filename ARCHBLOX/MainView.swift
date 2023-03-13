//
//  MainView.swift
//  ARCHBLOX
//
//  Created by Thomas G on 13/3/2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack{
            Image("ARCHBLOXarched").resizable().aspectRatio(contentMode: ContentMode.fit).accessibilityLabel("ARCHBLOX").padding();
            Spacer();
            HStack{
                Text("Sign Up").font(.custom("Lucida Grande", size: 30)).padding();
                Text("Log In").font(.custom("Lucida Grande", size: 30)).padding();
            }
        }.background(
            Image("background")
                       .resizable()
                       .edgesIgnoringSafeArea(.all)
        )
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
