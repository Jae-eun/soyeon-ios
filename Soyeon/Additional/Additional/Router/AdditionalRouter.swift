//
//  AdditionalRouter.swift
//  
//
//  Created by 이재은 on 2021/03/08.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol AdditionalRouterProtocol {

    var viewController: AdditionalViewController? { get }

    func navigateToSomewhere()
}

final class AdditionalRouter {

    weak var viewController: AdditionalViewController?

    // MARK: - Initializers

    init(viewController: AdditionalViewController?) {

        self.viewController = viewController
    }
}

// MARK: - AdditionalRouterProtocol

extension AdditionalRouter: AdditionalRouterProtocol {

    // MARK: - Navigation

    func navigateToSomewhere() {

    }
}
