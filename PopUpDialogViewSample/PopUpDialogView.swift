//
//  PopUpDialogView.swift
//  PopUpDialogViewSample
//
//  Created by littleossa on 2022/08/24.
//

import SwiftUI

struct PopUpDialogView<Content: View>: View {
    
    @Binding var isPresented: Bool
    private let content: Content
    private let isEnabledToCloseByBackgroundTap: Bool
    
    var body: some View {
        
        GeometryReader { proxy in
            let dialogWidth = proxy.size.width * 0.75
            
            ZStack {
                backgroundView
                    .onTapGesture {
                        if isEnabledToCloseByBackgroundTap {
                            isPresented = false
                        }
                    }
                
                ZStack {
                    ZStack {
                        content
                    }
                    .padding(.top, 24)
                }
                .frame(width: dialogWidth)
                .padding()
                .background(.white)
                .cornerRadius(12)
                .overlay(alignment: .topTrailing) {
                    closeButton
                }
            }
        }
    }
}

// MARK: - initializer
extension PopUpDialogView {
    
    init(isPresented: Binding<Bool>,
         isEnabledToCloseByBackgroundTap: Bool = true,
         @ViewBuilder _ content: () -> Content) {
        _isPresented = isPresented
        self.isEnabledToCloseByBackgroundTap = isEnabledToCloseByBackgroundTap
        self.content = content()
    }
}

// MARK: - Views
extension PopUpDialogView {
    
    private var backgroundView: some View {
        Rectangle()
            .fill(.gray.opacity(0.7))
            .ignoresSafeArea()
    }
    
    private var closeButton: some View {
        Button {
            isPresented = false
        } label: {
            Image(systemName: "xmark.circle")
        }
        .font(.system(size: 24,
                      weight: .bold,
                      design: .default))
        .foregroundColor(.gray.opacity(0.7))
        .padding(4)
    }
}

struct PopUpDialogView_Previews: PreviewProvider {
    static var previews: some View {
        PopUpDialogView(isPresented: .constant(true)) {
            Text("Something")
        }
    }
}
