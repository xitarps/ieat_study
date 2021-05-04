class ProductsController < ApplicationController
  def index
    @products = Product.order(name: :asc)
  end

  def new
    @product = Product.new()
  end

  def create
    @product = Product.new(product_params)

    

    respond_to do |format|
      if @product.save
        # format.html { redirect_to @user, notice: 'User was successfully created.' }
        @message = "#{@product.name} inserido com sucesso!"
        format.js { render partial: 'shared/custom_message'}
        #format.json { render json: @user, status: :created, location: @user }
      else
        
        format.html { render action: "new" }

        @message = "#{@product.name} Oops, algo deu errado! -  #{@product.errors.full_messages.join(', ')}"
        format.js { render partial: 'shared/custom_message'}
        # format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @product = Product.find(params[:id])

    redirect_to products_path if @product.destroy
  end

  private

  def product_params
    params.require(:product).permit(:name, :value, :restaurant_id)
  end
end
