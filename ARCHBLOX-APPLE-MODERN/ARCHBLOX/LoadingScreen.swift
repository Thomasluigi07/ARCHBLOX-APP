//
//  LoadingScreen.swift
//  ARCHBLOX
//
//  Created by Thomas G on 14/3/2023.
//

import SwiftUI

struct LoadingScreen: View {
    @State var loading: Bool = true
    var body: some View {
        if self.loading {
            VStack{
                Image("ARCHBLOXarched").resizable().aspectRatio(contentMode: ContentMode.fit).accessibilityLabel("ARCHBLOX is loading please wait").padding();
                Spacer();
            }.padding(0).background(
                Image("background")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .accessibilityLabel("ARCHBLOX is loading please wait")
            ).preferredColorScheme(ColorScheme.dark).onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                    self.loading = false;
                }
            }
        } else {
            MainView();
        }
    }
}

struct LoadingScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoadingScreen()
    }
}
