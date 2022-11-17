//
//  WellcomeViewController.swift
//  jos_.05_architecture_Uri
//
//  Created by josepL on 16/11/22.
//

import Foundation
import UIKit

internal final class WellcomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    //MARK: Outlets
    
    @IBOutlet weak var personsTable: UITableView!
    @IBOutlet weak var btnSomething: UIButton!
    
    //MARK: Variables
    var presenter : WellcomePresenterProtocol?
    var delegate : WellcomeCoordinatorDelegate?
    var arrayPersons : Array<Persona> = []
    
    //MARK: Init
    public convenience init (presenter: WellcomePresenterProtocol){
        print("----Init---- Inicia View")
        self.init(nibName: "WellcomeViewController", bundle: nil)
        self.presenter = presenter
    }
    
    public static func instantiate(presenter: WellcomePresenterProtocol) -> WellcomeViewController{
        guard let viewController = UIStoryboard(name: "Main", bundle: nil)
            .instantiateViewController(withIdentifier: "WellcomeViewController")
                as? WellcomeViewController else{
            return WellcomeViewController()
        }
        viewController.presenter = presenter
        return viewController
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        presenter?.viewWillAppearWasCalled()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //TODO: tableview datasource, delegate y register
        personsTable.register(UITableViewCell.self, forCellReuseIdentifier: "idCell")
        personsTable.dataSource = self
        personsTable.delegate = self
        
        presenter?.viewDidLoadWasCalled()
    }
    
    //MARK: funtions of TableView
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayPersons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = personsTable.dequeueReusableCell(withIdentifier: "idCell", for: indexPath)

        let textOntheCell = arrayPersons[indexPath.row].name
        cell.textLabel?.text = textOntheCell
        //cell.textLabel?.text = "Working"
        return cell
    }
    //Onclick on the table
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           //Instruction for avoiding to lef selected the row, it will blink
           personsTable.deselectRow(at: indexPath, animated: true)
            let personSelected = arrayPersons[indexPath.row]
            print(personSelected.name)
           //let vc = ElementController()
           //vc.title = arrayElements[indexPath.row].name
           //elementSend = arrayElements[indexPath.row]
           //Executing segue created on func prepare
           //performSegue(withIdentifier: "segueElement", sender: self)
           //navigationController?.pushViewController(vc, animated: true)
       }
    
}
extension WellcomeViewController: WellcomeViewProtocol{
    func loadArray(data: Array<Persona>) {
        arrayPersons = data
        print(arrayPersons[4].name)
        print("loading array")
    }
    
    func printString(data: String) {
        print(data)
    }
    
    func printInfo(data: Array<Persona>) {
        print(data.count)
    }
}
