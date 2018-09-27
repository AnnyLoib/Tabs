//
//  ViewController.swift
//  Tabs
//
//  Created by Alumno on 25/09/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tbLugares: UITableView!
    
    let lugares : [Lugar] = [Lugar(nombre: "San Carlos"),
                             Lugar(nombre: "Los Cabos"),
                             Lugar(nombre: "Álamos"),
                             Lugar(nombre: "Cancún"),
                             Lugar(nombre: "Acapulco")]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lugares.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "CellSitiosT") as! CeldaLugaresT
        celda.lblSanCarlos.text = lugares[indexPath.row].nombre
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

