//
// Copyright @2020 MaNa & Co AB. All rights reserved.
//

import SwiftUI

struct CardView: View {
    @State var model: CardViewModel
    
    var body: some View {
        VStack {
            Text(model.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.leading)
                .padding(8)
                .font(.largeTitle)
                .foregroundColor(.primary)
                .blur(radius: 5.0)
            Button(model.buttonTitle, action: model.buttonAction)
            .padding(8)
        }
        .padding(
            EdgeInsets(top: 10, leading: 40, bottom: 10, trailing: 40)
        )
        .overlay(
            RoundedRectangle(cornerRadius: Constants.cornerRadius)
                .stroke(style: .init(lineWidth: 5))
        )
        .background(gradient)
        .cornerRadius(Constants.cornerRadius, antialiased: true)
    }
    
    private var gradient: AngularGradient {
        AngularGradient(
            gradient: Gradient(colors: [Color.yellow, Color.blue]),
            center: .center
        )
    }
    enum Constants {
        static let cornerRadius: CGFloat = 80
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(
            model: .init(5)
        )
    }
}
