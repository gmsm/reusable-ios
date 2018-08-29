//
//  ExampleView.swift
//  Reusable
//
//  Created by Glauco Moraes on 29/08/18.
//  Copyright © 2018 Glauco Moraes. All rights reserved.
//

import UIKit

class ExampleView: UIViewController, ExamplePresenterOutputProtocol {

	// MARK: - Viper Module Properties

	var presenter: ExamplePresenterInputProtocol!

	// MARK: - Override methods

	override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - ExamplePresenterOutputProtocol

	// MARK: - Private Methods

}
