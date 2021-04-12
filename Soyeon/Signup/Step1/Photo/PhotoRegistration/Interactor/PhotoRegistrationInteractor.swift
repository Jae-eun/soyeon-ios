//
//  PhotoRegistrationInteractor.swift
//  Soyeon
//
//  Created by 이재은 on 2021/02/07.
//  Copyright (c) 2021 ludus. All rights reserved.
//

import UIKit

protocol PhotoRegistrationInteractorInput: PhotoRegistrationViewControllerOutput {

}

protocol PhotoRegistrationInteractorOutput {

    func presentSomething()
}

final class PhotoRegistrationInteractor {

    let output: PhotoRegistrationInteractorOutput
    let worker: PhotoRegistrationWorker


    // MARK: - Initializers

    init(output: PhotoRegistrationInteractorOutput, worker: PhotoRegistrationWorker = PhotoRegistrationWorker()) {

        self.output = output
        self.worker = worker
    }
}


// MARK: - PhotoRegistrationInteractorInput

extension PhotoRegistrationInteractor: PhotoRegistrationViewControllerOutput {


    // MARK: - Business logic

    func doSomething() {
        worker.doSomeWork()

        output.presentSomething()
    }
}
