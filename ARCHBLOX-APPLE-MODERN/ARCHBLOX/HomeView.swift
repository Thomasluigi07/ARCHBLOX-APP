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
            VStack(spacing: 0){
                HStack{
                    Image("ARCHBLOX").resizable().aspectRatio(contentMode: ContentMode.fit).accessibilityLabel("ARCHBLOX").padding().frame(minHeight: 80,maxHeight: 80);
                    Spacer();
                    Text("Thomas").font(.custom("Lucida Grande", size: 15));
                    Image("divider").resizable().aspectRatio(contentMode: ContentMode.fit).accessibilityLabel("").frame(minHeight: 25,maxHeight: 25);
                    Image("arkot").resizable().aspectRatio(contentMode: ContentMode.fit).accessibilityLabel("").frame(minHeight: 30,maxHeight: 30);
                    Text("100.000M").font(.custom("Lucida Grande", size: 15)).accessibilityLabel("100,000,000 ARKOTS");
                    Image("divider").resizable().aspectRatio(contentMode: ContentMode.fit).accessibilityLabel("").frame(minHeight: 25,maxHeight: 25);
                    Button("Log Out"){
                        
                    }.font(.custom("Lucida Grande Bold", size: 20));
                }.fixedSize(horizontal: false, vertical: true).frame(minHeight: 51,maxHeight: 51).background(
                    Image("navbar")
                        .resizable()
                        .edgesIgnoringSafeArea(.all))
                HStack{
                    Text("Home").font(.custom("Lucida Grande", size: 15)).padding();
                    Text("Messages").font(.custom("Lucida Grande", size: 15)).padding();
                    Text("Friends").font(.custom("Lucida Grande", size: 15)).padding();
                    Spacer();
                }.fixedSize(horizontal: false, vertical: true).frame(minHeight: 40,maxHeight: 40).background(
                    Image("black")
                        .resizable()
                        .edgesIgnoringSafeArea(.all))
            }
            Spacer();
            VStack{
                HStack() {
                    Text("Hello, Thomas!").font(.custom("Lucida Grande", size: 30)).padding().colorInvert();
                    Spacer();
                }
                Spacer();
                HStack{
                    Text("My Feed").font(.custom("Lucida Grande", size: 30)).padding().colorInvert();
                    Spacer();
                    Text("Friends").font(.custom("Lucida Grande", size: 30)).padding().colorInvert();
                }
            }.background(
                Image("white")
                           .resizable()
                           .edgesIgnoringSafeArea(.all)
            ).frame(minWidth: 0, maxWidth: 1000, minHeight: 0, maxHeight: .infinity)
        }.background(
            Image("background")
                       .resizable()
                       .edgesIgnoringSafeArea(.all)
                       .accessibilityLabel("")
        ).preferredColorScheme(ColorScheme.dark)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
