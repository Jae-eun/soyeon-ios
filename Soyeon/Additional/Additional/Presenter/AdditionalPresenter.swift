//
//  AdditionalPresenter.swift
//  
//
//  Created by 이재은 on 2021/03/08.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol AdditionalPresenterInput: AdditionalInteractorOutput {

}

protocol AdditionalPresenterOutput: class {

    func displaySomething(viewModel: AdditionalViewModel)
}

final class AdditionalPresenter {

    private(set) weak var output: AdditionalPresenterOutput!

    // MARK: - Initializers

    init(output: AdditionalPresenterOutput) {

        self.output = output
    }
}
 
// MARK: - AdditionalPresenterInput

extension AdditionalPresenter: AdditionalPresenterInput {
 
    // MARK: - Presentation logic

    func presentSomething() {
        let viewModel = AdditionalViewModel()
        output.displaySomething(viewModel: viewModel)
    }
}
