//
//  ExamplePresenter.swift
//  Reusable
//
//  Created by Glauco Moraes on 29/08/18.
//  Copyright © 2018 Glauco Moraes. All rights reserved.
//

import UIKit

class ExamplePresenter: NSObject, ExampleInteractorOutputProtocol {

	// MARK: - Viper Module Properties

    weak var view: ExamplePresenterOutputProtocol!
    var interactor: ExampleInteractorInputProtocol!
    var wireframe: ExampleWireframeProtocol!
}

// MARK: - ExamplePresenterInputProtocol
extension ExamplePresenter: ExamplePresenterInputProtocol {
    
    func setupExampleTableView(_ exampleTableView: UITableView) {
        exampleTableView.dataSource = self
        exampleTableView.register(ExampleCell.self)
        exampleTableView.rowHeight = UITableViewAutomaticDimension
        exampleTableView.estimatedRowHeight = 100
        exampleTableView.tableFooterView = UIView()
    }
}

// MARK: - UITableViewDataSource
extension ExamplePresenter: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(for: indexPath) as ExampleCell
        return cell
    }
}
