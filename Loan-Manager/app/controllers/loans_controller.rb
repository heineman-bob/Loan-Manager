class LoansController < ApplicationController
    def index
        @loans = Loan.all

        respond_to do |format|
            format.json { render json: @loans }
        end
    end

    def show
        @loan = Loan.find(params[:id])

        respond_to do |format|
            format.json { render json: @loan }
        end
    end
end
