//
//  AdditionalInteractor.swift
//  
//
//  Created by 이재은 on 2021/03/08.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol AdditionalInteractorInput: AdditionalViewControllerOutput {

}

protocol AdditionalInteractorOutput {

    func presentSomething()
}

final class AdditionalInteractor {

    let output: AdditionalInteractorOutput
    let worker: AdditionalWorker

    // MARK: - Initializers

    init(output: AdditionalInteractorOutput, worker: AdditionalWorker = AdditionalWorker()) {

        self.output = output
        self.worker = worker
    }
}

// MARK: - AdditionalInteractorInput

extension AdditionalInteractor: AdditionalViewControllerOutput {

    // MARK: - Business logic

    func doSomething() {

        worker.doSomeWork()

        output.presentSomething()
    }
}
