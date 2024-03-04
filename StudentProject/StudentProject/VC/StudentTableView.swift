//
//  ViewController.swift
//  StudentProject
//
//  Created by Fawaz Alzamel on 03/03/2024.
//

import UIKit
import SnapKit

class StudentTableView: UITableViewController {

    var students: [Student] = [
        
        Student(name: "Fawaz", gpa: "3.5", profileImage: "Codedpic"),
        
        Student(name: "Humood", gpa: "4.0", profileImage: "GOTbackground")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }


    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        let Student = students[indexPath.row]

        cell.textLabel?.text = "Student: \(Student.name) - GPA: \(Student.gpa)"
        cell.imageView?.image = UIImage(named: Student.profileImage)

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = DetailAccountViewController()
        
        let selectedStudent = students[indexPath.row]
        detailVC.student = selectedStudent
        
        navigationController?.pushViewController(detailVC, animated: true)
    }
}

