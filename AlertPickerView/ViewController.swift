//
//  ViewController.swift
//  AlertPickerView
//
//  Created by HARADASHINYA on 8/11/15.
//  Copyright (c) 2015 HARADASHINYA. All rights reserved.
//

import UIKit

class ViewController: UIViewController,AlertPickerViewDelegate,UIPickerViewDelegate {
    var pickerView: AlertPickerView!
    let array = ["foo","bar","baz"]


    override func viewDidLoad() {
        super.viewDidLoad()
        self.pickerView = AlertPickerView()
        self.pickerView.items = array
        self.pickerView.delegate = self
        self.view.addSubview(pickerView)


        var button = UIButton(frame: CGRectMake(100,100, 200, 44))
        button.setTitle("Show Picker", forState: UIControlState.Normal)

        button.addTarget(self, action: "showPicker", forControlEvents: UIControlEvents.TouchDown)
        button.backgroundColor = UIColor.orangeColor()
        self.view.addSubview(button)



    }


    func showPicker() {
        self.pickerView.showPicker()
    }
    // for delegate
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.pickerView.items.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return self.pickerView.items[row]
    }
    func pickerView(pickerView: UIPickerView, didSelect numbers: [Int]) {
        println("selected \(numbers)")
    }

    func pickerViewDidHide(pickerView: UIPickerView) {
        println("hided pickerview")
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

