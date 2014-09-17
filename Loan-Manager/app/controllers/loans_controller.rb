class LoansController < ApplicationController
    
    #Used to see data during development so I'm keeping it
    def GetAllLoans

        @loans = Loan.all

        respond_to do |format|
            format.json { render json: @loans }
        end
    end

    def GetLoan

        @loan = Loan.find(params[:id])

        respond_to do |format|
            format.json { render json: @loan }
        end
    end 
end
