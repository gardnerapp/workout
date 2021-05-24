class InquiryController < ApplicationController
  def new
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = Inquiry.new(inquiry_params)
    if @inquiry.save
      @inquiry.send_mail
      flash[:success] = 'Thank You for getting in touch ! We will get in touch with you shortly'
      redirect_to root_path
    end
  end

  private
  def inquiry_params
    params.require(:inquiry).permit(%i[name email goals])
  end

end
