class TitleValidator < ActiveModel::Validator
    def validate(record)
       if record.title 
         valid = record.title.match(/Won't Believe|Secret|Top [\d]|Guess/)
        
         if !valid
             record.errors.add(:title, "Not Clickbate-y")
     
         end
      end
    end
end