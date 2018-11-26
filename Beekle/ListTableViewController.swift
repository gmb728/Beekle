//
//  ListTableViewController.swift
//  2018StoryBookClass
//
//  Created by Chang Sophia on 11/23/18.
//  Copyright © 2018 Chang Sophia. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {
    var products = [information]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
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
    
    
    func initProducts() {
        products.append(Information(name: "【Papa Please Get the Moon for Me】", explainText: explainKeys.original , imageName:"papaCover" ))
        products.append(Information(name: "【We are Going on a Bear Hunt】", explainText: explainKeys.honeyComb , imageName:"bearCover" ))
        products.append(Information(name: "【What's the Time, Mr. Wolf】", explainText: explainKeys.combHoney , imageName:"wolfCover" ))
        products.append(Information(name: "【Eat Your Peas】", explainText: explainKeys.affogato , imageName:"peaCover" ))
        products.append(Information(name: "【Handa's Surprise】", explainText: explainKeys.organicCottonCandyAffogato , imageName:"handaCover" ))
        products.append(Information(name: "【Guess How Much I Love You】", explainText: explainKeys.organicCottonCandy , imageName:"guessCover"))
        products.append(Information(name: "【Bark, George】", explainText: explainKeys.organicMixedGrains , imageName:"barkCover"))
        products.append(Information(name: "【Journey Home from Grandpa】", explainText: explainKeys.darkChocolate , imageName:"grandpaCover" ))
        products.append(Information(name: "【Silly Sally】", explainText: explainKeys.chocolateBeans , imageName:"sillyCover" ))
        products.append(Information(name: "【Santa's Beard】", explainText: explainKeys.castellaCake , imageName:"santaCover" ))
        products.append(Information(name: "【Beekle】", explainText: explainKeys.popCorn , imageName:"beekleCover" ))
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as? BookViewController
        
        if let row = tableView.indexPathForSelectedRow?.row {
            controller?.productName = products[row].name
            controller?.explainText = products[row].explainText
            controller?.imageName = products[row].imageName
        }
    }
}
