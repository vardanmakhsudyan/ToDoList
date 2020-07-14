//
//  TableViewController.swift
//  ToDoList
//
//  Created by MacBook Air on 27.05.2020.
//  Copyright © 2020 VardanMakhsudyan. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mortalKombat.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) 
        cell.textLabel!.text = mortalKombat[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            
        }
    }
    
    @IBAction func buttonEdit(_ sender: UIBarButtonItem) {
        tableView.setEditing(true, animated: true)
    }
    
    @IBAction func buttonAdd(_ sender: UIBarButtonItem) {
        /* add(name: "Robinzon")
         tableView.reloadData() */
        
        let alertCantroller = UIAlertController(title: "Create New Item", message: nil, preferredStyle: .alert)
        
        alertCantroller.addTextField { (textField) in
            textField.placeholder = "New Item"
            
            let alertAction1 = UIAlertAction(title: "Create", style: .default) { (alert) in
                let newItem = alertCantroller.textFields![0].text
                add(name: newItem!)
                self.tableView.reloadData()
            }
            let alertAction2 = UIAlertAction(title: "Cancel", style: .default) { (alert) in
            }
            alertCantroller.addAction(alertAction1)
            alertCantroller.addAction(alertAction2)
        }
        
        present(alertCantroller,animated: true,completion: nil)
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    


}
