class Valid < ActiveModel::Validator
    def validate(record)
        if record.name=="pratham"
            record.errors.add :base,"this person is pratham"
        end
        
            
    end
end
