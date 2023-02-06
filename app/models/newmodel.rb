class Newmodel < ApplicationRecord
    # validates :login, :email, presence: true
    # after_initialize do |user|
    #     puts "#{user}You have initialized an object!"
    #   end



    # before_save :capital_first, if: Proc.new{start_with_rishabh?}


    # def start_with_rishabh?
    #     name=="rishabh"
    # end

    # def capital_first
    #     self.name=name.capitalize
    # end


    # before_save :capital_all, if: [:startwith?,:email?]
    # def startwith?
    #     name=="rishabh"
    # end
    # def email?
    #     email=="rish123"
    # end
    # def capital_all
    #     self.name=name.upcase
    # end
   

    # after_destroy :destroymethod

    # def destroymethod
    #     @name=self.name
    #     puts "#{@name}"
    # end


    # after_commit :aftermethod, on: :destroy

    # def aftermethod
    #     puts "after commit"
    # end

    after_update_commit :aftermethod, on: :update

    def aftermethod
        puts "after commit"
    end

    # after_create_commit :aftermethod, on: :create

    # def aftermethod
    #     puts "after commit"
    # end







    #   after_find do |user|
    #     puts "You have found an object!"
    #   end

    #   after_touch do |user|
    #     puts "you touched it"
    #   end
    


    # before_save :capital_email, if: :start_with?


    # def start_with?
    #     name=="pratham"
    # end

    # def capital_email
    #     self.email=email.upcase
    # end
        
    
    
    
    
    
    
    # before_validation :normalize_name, on:[ :create, :update]
   
    # private
    #     def normalize_name
    #         self.name=name.upcase
    #     end
   
    # before_validation :ensure_login_has_value
   
    # private
    #     def ensure_login_has_value
    #         if login.nil?
    #             self.login=email unless email.blank?
    #         end
    #     end
          
end
