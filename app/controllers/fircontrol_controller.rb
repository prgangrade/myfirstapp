class FircontrolController < ApplicationController
    def index
        @first_var=Second.find(24)
    end
end
