ActiveAdmin.register Category do
	controller do
	    def permitted_params
	      params.require(:category).permit(:title)
	    end
	  end
end
