//
//  ExampleProtocols.swift
//  Reusable
//
//  Created by Glauco Moraes on 29/08/18.
//  Copyright © 2018 Glauco Moraes. All rights reserved.
//

import UIKit

// MARK: - Router

protocol ExampleWireframeProtocol: class {

}

// MARK: - Interactor

protocol ExampleInteractorInputProtocol {

}

// MARK: - Presenter

protocol ExamplePresenterInputProtocol: class {
    func setupExampleTableView(_ exampleTableView: UITableView)
}

protocol ExampleInteractorOutputProtocol: class {

}

// MARK: - View

protocol ExamplePresenterOutputProtocol: class {

}
