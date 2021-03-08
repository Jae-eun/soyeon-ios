//
//  AdditionalViewController.swift
//  
//
//  Created by 이재은 on 2021/03/08.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol AdditionalViewControllerInput: AdditionalPresenterOutput {

}

protocol AdditionalViewControllerOutput {

    func doSomething()
}

final class AdditionalViewController: UIViewController {

    var output: AdditionalViewControllerOutput!
    var router: AdditionalRouterProtocol!
 
    // MARK: - Initializers

    init(configurator: AdditionalConfigurator = AdditionalConfigurator.shared) {

        super.init(nibName: nil, bundle: nil)

        configure()
    }

    required init?(coder aDecoder: NSCoder) {

        super.init(coder: aDecoder)

        configure()
    }
 
    // MARK: - Configurator

    private func configure(configurator: AdditionalConfigurator = AdditionalConfigurator.shared) {

        configurator.configure(viewController: self)
    }
 
    // MARK: - View lifecycle

    override func viewDidLoad() {

        super.viewDidLoad()

        doSomethingOnLoad()
    }
 
    // MARK: - Load data

    func doSomethingOnLoad() {
        output.doSomething()
    }
}
 
// MARK: - AdditionalPresenterOutput

extension AdditionalViewController: AdditionalViewControllerInput {
 
    // MARK: - Display logic

    func displaySomething(viewModel: AdditionalViewModel) {
        
    }
}
