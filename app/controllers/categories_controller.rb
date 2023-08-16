class CategoriesController < ApplicationController
 
  def index
    @categories = Category.all.order(name: :asc)
  end

  
  def new
    @category = Category.new
  end


  def edit
    category
  end

  
  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_url, notice: "Categoría creada con exito"
      else
       render :new, status: :unprocessable_entity 
      end
  end

 
  def update
   if category.update(category_params)
    redirect_to categories_url, notice: "Categoría actualizada con exito"
   else
    render :edit, status: :unprocessable_entity
    end
  end

 
  def destroy
    category.destroy

    respond_to do |format|
      format.html { redirect_to categories_url, notice: "Category was successfully destroyed." }
     
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def category
      @category = Category.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def category_params
      params.require(:category).permit(:name)
    end
end
