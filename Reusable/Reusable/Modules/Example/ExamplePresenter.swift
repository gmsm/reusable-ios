//
//  ExamplePresenter.swift
//  Reusable
//
//  Created by Glauco Moraes on 29/08/18.
//  Copyright © 2018 Glauco Moraes. All rights reserved.
//

import UIKit

class ExamplePresenter: NSObject, ExamplePresenterInputProtocol, ExampleInteractorOutputProtocol {

	// MARK: - Viper Module Properties

    weak var view: ExamplePresenterOutputProtocol!
    var interactor: ExampleInteractorInputProtocol!
    var wireframe: ExampleWireframeProtocol!

    // MARK: - ExamplePresenterInputProtocol

    // MARK: - ExamplePresenterInteractorOutputProtocol

	// MARK: - Private Methods

}
