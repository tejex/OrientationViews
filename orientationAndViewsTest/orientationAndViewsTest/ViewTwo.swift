//
//  ViewTwo.swift
//  orientationAndViewsTest
//
//  Created by Bamlak Deju on 9/22/23.
//

import SwiftUI

struct ViewTwo: View {
    @EnvironmentObject var dataStore: DataStore;
    @Environment(\.verticalSizeClass) var verticalSizeClass;
    @Environment(\.horizontalSizeClass) var horizontalSizeClass;
    
    var isLandscape: Bool {verticalSizeClass == .compact}
    @State private var thisFlag = true;
    var body: some View {
        ZStack {
            VStack{
                Spacer()
                Text("View Two")
                    .font(.system(size: isLandscape ? 40 : 30))
                Text("Date For View Two "  + String(dataStore.viewTwo))
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

struct ViewTwo_Previews: PreviewProvider {
    static var previews: some View {
        ViewTwo()
            .environmentObject(DataStore())
    }
}
