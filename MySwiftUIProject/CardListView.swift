//
//  Created by Maz Naiini on 2020-09-24.
//

import SwiftUI

struct CardListView: View {
    
    @Binding var viewModels: [CardViewModel]
    
    var body: some View {
        List(viewModels) { viewModel in
            Spacer()
            CardView(model: viewModel)
            Spacer()
        }
    }
    
    static var viewModels: [CardViewModel] {
        [1, 2, 3, 4, 5, 6].map(CardViewModel.init)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CardListView(
            viewModels: Binding<[CardViewModel]>.init(
                get: { [1, 2, 3, 4].map(CardViewModel.init) },
                set: { (array) in }
            )
        )
    }
}
