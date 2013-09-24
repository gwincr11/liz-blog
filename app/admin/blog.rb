ActiveAdmin.register Blog do
  controller do
    def permitted_params
      params.permit(:blog => [:title, :body])
    end
  end
end
