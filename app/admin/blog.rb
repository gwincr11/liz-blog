ActiveAdmin.register Blog do
  controller do
    def permitted_params
      params.permit(:blog => [:title, :body])

    end
  end

  form do |f|
  	f.inputs "Basic info" do
  	  f.input :title
  	  f.input :body, :as => :rich, :config => { :width => '76%', :height => '400px',
        :allow_embeds => true }
  	end
  	f.buttons
  end
end
