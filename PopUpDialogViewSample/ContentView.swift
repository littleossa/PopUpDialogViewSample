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
                shouldPresentPopUpDialog = true
            } label: {
                Text("Present Pop-up Dialog")
            }
            
            if shouldPresentPopUpDialog {
                PopUpDialogView(isPresented: $shouldPresentPopUpDialog) {
                    face
                }
            }
        }
    }
    
    private var face: some View {
            VStack {
                HStack {
                    eyeWithEyebrow
                    eyeWithEyebrow
                }
                Image(systemName: "nose")
                Spacer()
                    .frame(height: 5)
                Image(systemName: "mouth")
                    .font(.system(size: 24,
                                  weight: .regular,
                                  design: .default))
            }
    }
    
    private var eyeWithEyebrow: some View {
        VStack {
            Image(systemName: "chevron.compact.up")
                .font(.system(size: 24,
                              weight: .bold,
                              design: .default))
            Image(systemName: "eye")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
