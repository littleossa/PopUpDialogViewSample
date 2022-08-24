//
//  ContentView.swift
//  PopUpDialogViewSample
//
//  Created by littleossa on 2022/08/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var shouldPresentPopUpDialog = false
    
    var body: some View {
        ZStack {
            Button {
                withAnimation {
                    shouldPresentPopUpDialog = true
                }
            } label: {
                Text("Present Pop-up Dialog")
            }
            
            if shouldPresentPopUpDialog {
                PopUpDialogView(isPresented: $shouldPresentPopUpDialog) {
                    Face()
                }
            }
        }
    }
}

// MARK: - Previews
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
