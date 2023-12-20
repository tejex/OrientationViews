//
//  ContentView.swift
//  orientationAndViewsTest
//
//  Created by Bamlak Deju on 9/22/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var dataStore: DataStore;
    
    @Environment(\.verticalSizeClass) var verticalSizeClass;
    @Environment(\.horizontalSizeClass) var horizontalSizeClass;
    @State private var flag: Bool = true;
    
    var isLandscape: Bool {verticalSizeClass == .compact};
    
    var body: some View {
        VStack {
            ZStack {
                ViewTwo()
                    .opacity(!flag ? 1.0 : 0)
                ViewOne()
                    .opacity(flag ? 1.0 : 0)
            }
            Spacer()
            
            Rectangle()
                .frame(width: isLandscape ? 900 : 400,
                       height: isLandscape ? 30 : 20)
            Button{
                flag.toggle()
            }label: {
                Text("Click To siwtch")
                    .font(.system(size: isLandscape ? 40 : 30))
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(DataStore())
    }
}
