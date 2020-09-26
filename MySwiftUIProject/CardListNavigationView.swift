//
// Copyright @2020 MaNa & Co AB. All rights reserved.
//

import SwiftUI

struct CardListNavigationView: View {
    var body: some View {
        NavigationView {
            CardListView(
                viewModels: Binding(
                    get: { CardListView.viewModels },
                    set: { array in }
                )
            ).navigationBarTitle("My funny cards", displayMode: .inline)
        }
    }
}

struct CardListNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        CardListNavigationView()
    }
}
