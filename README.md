# PopUpDialogViewSample
SwiftUI Pop-up Dialog View Sample

## Demo
![popup-dialog-view](https://user-images.githubusercontent.com/67716751/186526071-b99ae91c-fe45-4b76-b853-f82db6265434.gif)

## Usage

This is example.

```swift
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
```

Put your view in the PopUpDialogView as a content.

```swift
PopUpDialogView(isPresented: $shouldPresentPopUpDialog) {
    Face()
}
```

Rock'n'roll!
