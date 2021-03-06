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
    
    // MARK: - IBOutlet

    @IBOutlet weak var exampleTableView: UITableView!
    
    // MARK: - Override methods

	override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter.setupExampleTableView(self.exampleTableView)
    }

}
