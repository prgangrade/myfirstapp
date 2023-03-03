class Newbuilder < ActionView::Helpers::FormBuilder
    # def text_field(options={})
    #     "prathamm"
    # end
    def text_field(attribute, options={})
         label(attribute) + super
    end
end