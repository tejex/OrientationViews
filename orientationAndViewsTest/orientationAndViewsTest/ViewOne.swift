//
//  ViewOne.swift
//  orientationAndViewsTest
//
//  Created by Bamlak Deju on 9/22/23.
//

import SwiftUI

struct ViewOne: View {
    @EnvironmentObject var dataStore: DataStore;
    
    
    @Environment(\.verticalSizeClass) var verticalSizeClass;
    @Environment(\.horizontalSizeClass) var horizontalSizeClass;
    
    var isLandscape: Bool {verticalSizeClass == .compact}
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Text("First View")
                    .font(.system(size: isLandscape ? 40 : 30))
                Text("Data From Data Store: " + String(dataStore.viewOne))
                    .font(.system(size: isLandscape ? 40 : 30))
                Spacer()
                Button{
                    dataStore.increaseNum()
                }label: {
                    Text("Click To Increase Num")
                        .font(.system(size: isLandscape ? 40 : 30))
                }
                Spacer()
                Button{
                    dataStore.decreaseNum()
                }label: {
                    Text("Click To Decrease Num")
                        .font(.system(size: isLandscape ? 40 : 30))
                }
                Spacer()
            }
        }
    }
}

struct ViewOne_Previews: PreviewProvider {
    static var previews: some View {
        ViewOne()
            .environmentObject(DataStore())
    }
}
