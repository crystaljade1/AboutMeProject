//
//  ViewController.swift
//  AboutMeProject
//
//  Created by Crystal Jade Allen-Washington on 6/28/17.
//  Copyright © 2017 Crystal Jade Allen-Washington. All rights reserved.
//

import UIKit


var aboutMeOptions: Array = ["Hobbies & Interests", "Professional Experience", "Where I'm From", "My Favorite Things"]

var aboutMeDescriptions: Array = ["Some of my hobbies include cooking for my family, researching interesting (and sometimes random) topics and watching documentaries. I enjoy traveling to the West Coast, planning projects & events, serving my community and spreading love in any way I can.",
                                  "After graduating in 2010, I jumped into the advertising & marketing field and have not looked back since. With experience ranging from public relations to graphic design, copywriting, communications planning, traditional & digital media planning & buying and more, I look forward to where my career takes me next.",
                                  "I was born in the Bronx, NY and resided in Orange County, NY from the age of 8 until I left for college. I was heavily influenced by Harlem, a gorgeous & historical part of New York where my family was largely based. They helped to raise me, along with Richmond, VA, where I spent each summer with my dad.",
                                  "Mary Poppins.\n New York City in summer.\n It Was A Good Day by Ice Cube. \n Sofia Coppola flicks.\n Disney World."]

var aboutMeImages: Array = [#imageLiteral(resourceName: "meandnoey"), #imageLiteral(resourceName: "headshotbysteve"), #imageLiteral(resourceName: "harlemimage"), #imageLiteral(resourceName: "meandmommy")]

var myIndex = 0

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBAction func linkedInButton() {
        let url = URL(string: "http://www.linkedin.com/in/crystaljallen")
        UIApplication.shared.open(url!)
    }
    
    @IBAction func twitterButton() {
        let url = URL(string: "http://www.twitter.com/thechrissycode")
        UIApplication.shared.open(url!)
    }
    
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID")
        
        cell?.textLabel?.text = aboutMeOptions[indexPath.row]
        cell?.textLabel?.font = UIFont(name: "Didot", size: 20)
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return aboutMeOptions.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "showDetails", sender: nil)
    }

}

