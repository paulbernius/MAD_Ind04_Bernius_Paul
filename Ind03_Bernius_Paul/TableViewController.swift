//
//  TableViewController.swift
//  Ind03_Bernius_Paul
//
//  Created by Paul Bernius on 3/19/22.
//

import UIKit

class TableViewController: UITableViewController {
    
    let stateNames = ["Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"]
    let stateNickNames = ["The Yellowhammer State", "The Last Frontier", "The Grand Canyon State", "The Natural State", "The Golden State", "The Centennial State", "The Constitution State", "The First State", "The Sunshine State", "The Peach State", "The Aloha State", "The Gem State", "Prairie State", "The Hoosier State", "The Hawkeye State", "The Sunflower State", "The Bluegrass State", "The Pelican State", "The Pine Tree State", "The Old Line State", "The Bay State", "The Great Lakes State", "The North Star State", "The Magnolia State", "The Show Me State", "The Treasure State", "The Cornhusker State", "The Silver State", "The Granite State", "The Garden State", "The Land of Enchantment", "The Empire State", "The Tar Heel State", "The Peace Garden State", "The Buckeye State", "The Sooner State", "The Beaver State", "The Keystone State", "The Ocean State", "The Palmetto State", "Mount Rushmore State", "The Volunteer State", "The Lone Star State", "The Beehive State", "The Green Mountain State", "The Old Dominion State", "The Evergreen State", "The Mountain State", "The Badger State", "The Equality or Cowboy State"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return stateNames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "My Table Cell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = stateNames[indexPath[1]]
        cell.detailTextLabel?.text = stateNickNames[indexPath[1]]

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
