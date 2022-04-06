//
//  TableViewController.swift
//  Ind03_Bernius_Paul
//
//  Created by Paul Bernius on 3/19/22.
//

import UIKit

class TableViewController: UITableViewController {
    
    /*
     
     Some code in this project is from Individual 03.
     I understand we should not segue to the new screen
     so I removed the segue but kept the data.
     I removed the assests from the folder to reduce
     the file size but the code still exists as comments.
     
     Most of the code remains the same besides the "viewDidLoad"
     method and Util.swift file.
     
     Util.swift file handles the spinner. The traditional
     activity spinner did not work well with the table view.
     This spinner is able to be handled on all view controllers
     and looks cleaner.
    
    */
    
    // Create outlet to later determine which cell was pressed
    @IBOutlet var myTableView: UITableView!
    
    // Initialize arrays to hold parsed data
    var stateNames = [String]()
    var stateNickNames = [String]()

    override func viewDidLoad() {
        
        // Call showSpinner method from Util.swift once view has loaded
        self.showSpinner()
        
        super.viewDidLoad()
        
        // Define a struct to hold parsed data
        struct JSONSTATES: Decodable {
            let name: String
            let nickname: String
        }
        
        // Url string to JSON data
        let urlString = "https://cs.okstate.edu/~pberniu/dbcontroller.php"
        
        // If string is invalid, print error
        guard let url = URL(string: urlString) else {
            print("Invalid URL")
            return
        }
        
        // Start connecting to database
        // Send URL request and retrieve data, response, and error if applicable
        let task = URLSession.shared.dataTask(with: url) {
            (data, response, error) in
            if error == nil && data != nil { // If no error is found, and data exists, parse the data
                do {
                    let jsonStates = try JSONDecoder().decode([JSONSTATES].self, from: data!) // Decodes all retrieved data into struct
                    
                    for JSONSTATES in jsonStates { // For loop to take data from struct and insert into array
                        self.stateNames.append(JSONSTATES.name)
                        self.stateNickNames.append(JSONSTATES.nickname)
                    }
                    
                    // Reload table view data with new data
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                        // Stop the spinner since data has been parsed
                        self.removeSpinner()
                    }
                    
                } catch { // Catch clause for do statement. Catches error while parsing JSON
                    print("Error in JSON parsing")
                }
            }
        }
        
        // Start the parsing
        task.resume()

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
        
        // Get cell titles & subtitles from data arrays
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        
        // OLD CODE vvvv FROM INDIVIDUAL 03
        /*
        // Assign "selectDestination" to the destination view controller
        let selectDestination = segue.destination as! ViewController
        
        // Intialize strings to pass to next view
        var flag = ""
        var map = ""
        var name = ""
        
        // Define "keywords" to add to the end of passed strings to grab image
        let flagKeyword = "-Flag"
        let mapKeyWord = "-Map"
        
        // Get index of cell pressed
        let tempIndexPath = myTableView.indexPathForSelectedRow
        // Pass "tempIndexPath" to "item" method to return the index as an int
        let index = tempIndexPath?.item
        
        // Get the corresponding state name from data array
        // & add keywords to the strings
        name = stateNames[index!]
        flag = name + flagKeyword
        map = name + mapKeyWord
        
        // Pass the strings to the destination view
        selectDestination.myFlag = flag
        selectDestination.myMap = map
        selectDestination.myStateName = name
        selectDestination.mySquareMiles = stateSquareMiles[index!] + " sq. Miles"
        */
    }
}
