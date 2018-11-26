//
//  BookTableViewController.swift
//  BigSmall
//
//  Created by Chang Sophia on 11/22/18.
//  Copyright © 2018 Chang Sophia. All rights reserved.
//

import UIKit

class BookTableViewController: UITableViewController {
    var bookName: String
    var explainText: String?
    var imageName: String?
    
    var books = ["Papa Please Get the Moon for Me", "We are Going on a Bear Hunt","Today is Monday?","Eat Your Peas", "Guess How Much I Love You", "Handa's Surprise","Bark, George", "Journey Home from Grandpa","There was an Old Lady Who Swallow a fly","Santa's Beard"]
    
    func changed(){
        if let name = bookName, let text = explainText, let image = imageName {
            navigationItem.title = name
            explainLabel = text
            bookImageView.image = UIImage(named:"\(image)")
        }
    }

    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet var bookLabels: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changed()
        
        var i = 0
        for label in bookLabels {
            label.text = books[i]
            i = i + 1
            
        }
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as? bookViewController
        
        if segue.identifier == 0 {
            let controller = segue.destination as? papaViewController
        }else{
            let controller = segue.destination as? bearViewController
        }else{
            let controller = segue.destination as? wolfViewController
        }else{
            let controller = segue.destination as? monsterViewController
        }else{
            let controller = segue.destination as? pearViewController
        }else{
            let controller = segue.destination as? guessViewController
        }else{
            let controller = segue.destination as? handaViewController
        }else{
            let controller = segue.destination as? barkViewController
        }else{
            let controller = segue.destination as? carViewController
        }else{
            let controller = segue.destination as? santaViewController
            
    }
    }

    // MARK: - Table view data source

  
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

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
