//
//  ExampleWireframe.swift
//  Reusable
//
//  Created by Glauco Moraes on 29/08/18.
//  Copyright © 2018 Glauco Moraes. All rights reserved.
//

import UIKit

class ExampleWireframe: NSObject, ExampleWireframeProtocol {

	// MARK: - Constants

	private let storyBoardName = "Example"
	private let viewIdentifier = "ExampleView"

	// MARK: - Viper Module Properties

	weak var view: ExampleView!

	// MARK: - Constructors

	override init() {
		super.init()

		let view = self.viewControllerFromStoryboard()
		let interactor = ExampleInteractor()
		let presenter = ExamplePresenter()

		presenter.interactor = interactor
		presenter.wireframe = self
		presenter.view = view

		view.presenter = presenter
		interactor.output = presenter

		self.view = view
	}

    // MARK: - ExampleWireframeProtocol

	// MARK: - Private methods

	private func viewControllerFromStoryboard() -> ExampleView {
		let storyboard = UIStoryboard(name: self.storyBoardName, bundle: nil)
		let viewController = storyboard.instantiateViewController(withIdentifier: self.viewIdentifier)

		return viewController as! ExampleView
	}

}
