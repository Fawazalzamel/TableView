//
//  DetailViewController.swift
//  StudentProject
//
//  Created by Fawaz Alzamel on 03/03/2024.
//

import UIKit
import SnapKit

class DetailAccountViewController: UIViewController {
    // Property to hold the bank account details passed from the previous view
    var student: Student?

    // UI Components
    private let nameLabel = UILabel()
    private let gpaLabel = UILabel()
    private let profileImageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(nameLabel)
        view.addSubview(gpaLabel)
        view.addSubview(profileImageView)
        setupViews()
        setupLayout()
        configureWithBankAccount()
    }

    private func setupViews() {
        view.backgroundColor = .white

        nameLabel.font = .systemFont(ofSize: 16, weight: .medium)
        gpaLabel.font = .systemFont(ofSize: 16, weight: .medium)

        // Add the views to the hierarchy
        view.addSubview(nameLabel)
        view.addSubview(gpaLabel)
        view.addSubview(profileImageView)
    }

    private func setupLayout() {
        profileImageView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(20)
            make.centerX.equalToSuperview()
            make.width.height.equalTo(100)  // Example size, adjust as needed
        }

        nameLabel.snp.makeConstraints { make in
            make.top.equalTo(profileImageView.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
        }

        gpaLabel.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
        }
    }

    private func configureWithBankAccount() {
        nameLabel.text = student?.name
        gpaLabel.text = student?.gpa
        profileImageView.image = UIImage(named: student?.profileImage ?? "Profile Image")
    }
}
