//
//  ViewController.swift
//  informacion
//
//  Created by Alumno on 10/1/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var contactos :  [Contacto] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        contactos.append(Contacto(nombre:"Ana", telefono: "6421354621", direccion: "calle 309", correo: "ana@hotmail.com", foto: "descarga (1)"))
        contactos.append(Contacto(nombre:"Ana2", telefono: "6421354621", direccion: "calle 309", correo: "ana@hotmail.com", foto: "descarga"))
        contactos.append(Contacto(nombre:"Ana3", telefono: "6421354621", direccion: "calle 309", correo: "ana@hotmail.com", foto: "img_somartin_20190604-232655_imagenes_md_otras_fuentes_dl_u413681_004_4_6_2686121610-kNYE-U47543307797T0C-980x554@MundoDeportivo-Web"))
        contactos.append(Contacto(nombre:"Ana4", telefono: "6421354621", direccion: "calle 309", correo: "ana@hotmail.com", foto: "Cristiano_Ronaldo_2018"))
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaContacto") as? CeldaContactoController
        
        celda?.imgContacto.image = UIImage(named: contactos[indexPath.row].foto!)
        celda?.lblNombre.text = contactos[indexPath.row].nombre!
        celda?.lblTelefono.text = contactos[indexPath.row].telefono!
        
        return celda!
    }
    
    @IBOutlet weak var tvContactos: UITableView!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToEditar" {
            let destino = segue.destination as? EditarContactoController
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 164
    }

}

