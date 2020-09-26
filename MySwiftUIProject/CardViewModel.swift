//
// Copyright @2020 MaNa & Co AB. All rights reserved.
//

import Foundation

struct CardViewModel: Identifiable {
    let id: String
    let title: String
    let buttonTitle: String
    let buttonAction: () -> Void
}

extension CardViewModel {
    init(_ int: Int) {
        title = "Card \(int)"
        buttonTitle = "Title \(int)"
        buttonAction = {}
        id = "Card \(int)"
    }
}
