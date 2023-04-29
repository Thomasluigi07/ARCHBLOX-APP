//
//  Form1.swift
//  ARCHBLOXLauncher
//
//  Created by Thomas G on 30/3/2023.
//

import SwiftUI


struct classic_title_bar: View {
    var body: some View {
        GeometryReader {geometry in
            ZStack {
                Image("macbar").resizable(capInsets: EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0), resizingMode: .tile).frame(width: geometry.size.width, height: 24)
                VStack(spacing: 0) {
                    //   Spacer()
                    HStack {
                        Spacer()
                        Text("ARCHBLOX Launcher").foregroundColor(Color.black).font(.custom("Lucida Grande", size: 13)).shadow(color: Color.white.opacity(0.51), radius: 0, x: 0.0, y: 2/3)
                        Spacer()
                    }.padding([.top, .bottom], 4)
                }
            }
        }
    }
}
struct Form1: View {
    @State var homeopen: Bool = false
    var body: some View {
        classic_title_bar().frame(minHeight: 24, maxHeight: 24).clipped().zIndex(2).shadow(color: Color.black.opacity(0.55), radius: 0.55, x: 0, y: 1).padding(0);
            VStack{
                Image("ARCHBLOXarched").resizable().aspectRatio(contentMode: ContentMode.fit).accessibilityLabel("ARCHBLOX").padding();
                Spacer();
                HStack{
                    Button("Join") {
                        
                    }.font(.custom("Lucida Grande", size: 15)).padding();
                    Button("Host") {
                        homeopen = true;
                    }.font(.custom("Lucida Grande", size: 15)).padding();
                    Button("Update") {
                        homeopen = true;
                    }.font(.custom("Lucida Grande", size: 15)).padding();
                }
            }.padding(0).background(
                Image("background")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .accessibilityLabel("")
            ).preferredColorScheme(ColorScheme.dark)
    }
}

struct Form1_Previews: PreviewProvider {
    static var previews: some View {
        Form1()
    }
}
