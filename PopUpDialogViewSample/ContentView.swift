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

// MARK: - Face
struct Face: View {
    
    var body: some View {
        VStack {
            HStack {
                EyeWithEyebrow()
                EyeWithEyebrow()
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
}

struct EyeWithEyebrow: View {
    
    var body: some View {
        VStack {
            Image(systemName: "chevron.compact.up")
                .font(.system(size: 24,
                              weight: .bold,
                              design: .default))
            Image(systemName: "eye")
        }
    }
}

// MARK: - Previews
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        Face()
        EyeWithEyebrow()
    }
}
