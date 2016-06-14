//
//  TabBarViewController.swift
//  Tumblr
//
//  Created by Patrick Keenan on 6/13/16.
//  Copyright © 2016 Patrick Keenan. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var tabBar: UIView!
    
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var composeButton: UIButton!
    @IBOutlet weak var accountButton: UIButton!
    @IBOutlet weak var trendingButton: UIButton!
    
    
    
    var homeViewController: HomeViewController!
    var searchViewController: SearchViewController!
    var composeViewController: ComposeViewController!
    var accountViewController: AccountViewController!
    var trendingViewController: TrendingViewController!
    
    var fadeTransition: FadeTransition!
    
    var selectedButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController") as! HomeViewController
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchViewController") as! SearchViewController
        composeViewController = storyboard.instantiateViewControllerWithIdentifier("ComposeViewController") as! ComposeViewController
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("AccountViewController") as! AccountViewController
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController") as! TrendingViewController
        
        addChildViewController(homeViewController)
        addChildViewController(searchViewController)
        addChildViewController(composeViewController)
        addChildViewController(accountViewController)
        addChildViewController(trendingViewController)
        
        selectedButton = homeButton
        loadTab(homeViewController)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadTab(tabToLoad:UIViewController){
        let newView:UIView = tabToLoad.view
        selectedButton.selected = false
        contentView.addSubview(newView)
        tabToLoad.didMoveToParentViewController(self)
        //        feedViewController.delegate = self
    }
    
    @IBAction func goHome(sender: AnyObject) {
        loadTab(homeViewController)
        selectedButton = homeButton
        selectedButton.selected = true
    }
    @IBAction func goSearch(sender: AnyObject) {
        loadTab(searchViewController)
        selectedButton = searchButton
        selectedButton.selected = true
    }
    @IBAction func goAccount(sender: AnyObject) {
        loadTab(accountViewController)
        selectedButton = accountButton
        selectedButton.selected = true
    }
    @IBAction func goTrending(sender: AnyObject) {
        loadTab(trendingViewController)
        selectedButton = trendingButton
        selectedButton.selected = true
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destinationViewController = segue.destinationViewController
        var destinationView = destinationViewController.view
        destinationViewController.modalPresentationStyle = UIModalPresentationStyle.Custom
        
        fadeTransition = FadeTransition()
        
        destinationViewController.transitioningDelegate = fadeTransition
        
        fadeTransition.duration = 0.2
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
