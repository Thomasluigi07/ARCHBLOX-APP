//
//  MainView.swift
//  ARCHBLOX
//
//  Created by Thomas G on 13/3/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            HStack{
                Image("ARCHBLOX").resizable().aspectRatio(contentMode: ContentMode.fit).accessibilityLabel("ARCHBLOX").padding().frame(minHeight: 80,maxHeight: 80);
                Spacer();
                Text("Thomas").font(.custom("Lucida Grande", size: 20)).padding();
                Image("arkot").resizable().aspectRatio(contentMode: ContentMode.fit).accessibilityLabel("ARCHBLOX").padding().frame(minHeight: 51,maxHeight: 51);
                Text("100.000M").font(.custom("Lucida Grande", size: 20)).padding();
                Text("Log Out").font(.custom("Lucida Grande", size: 20)).padding();
            }.fixedSize(horizontal: false, vertical: true).frame(minHeight: 51,maxHeight: 51).background(
                Image("navbar")
                           .resizable()
                           .edgesIgnoringSafeArea(.all))
            Spacer();
            VStack{
                Text("home content goes here").font(.custom("Lucida Grande", size: 30)).padding();
            }
        }.background(
            Image("background")
                       .resizable()
                       .edgesIgnoringSafeArea(.all)
        )
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
