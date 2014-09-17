class PaymentsController < ApplicationController
    
    #Return single payment based on payment's id
    #Used during development
    def GetPayment
        @payment = Payment.find(params[:id])

        respond_to do |format|
            format.json { render json: @payment }
        end
    end


    #Main API functionality
    def ScheduleNewPayment
        @loan = Loan.find(params[:loan_id])
        @payment = @loan.payments.create(payment_params)
        render status: 200, json: @controller.to_json
    end

    #Main API functionality
    def GetAllPaymentsForLoan
        @payments = Payment.where(loan_id: params[:id])

        respond_to do |format|
            format.json { render json: @payments }
        end
    end

    #Helper method to aggregate payment parameters
    private
        def payment_params
            params.require(:payment).permit(:date, :amount, :loan_id)
        end
end
