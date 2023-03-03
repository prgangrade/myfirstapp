class Count < ApplicationRecord
    scope :method1, ->(name) { where("name=?",name)}
    scope :method2, ->(rollno) {where("rollno=?",rollno)}
    scope :method3, -> {where("name=?","rishabh")}
    default_scope {where("id>3")}
    
  end
  