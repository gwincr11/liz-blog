ActiveAdmin.register Portfolio do
	controller do
    def permitted_params
    	params.permit(:portfolio => [:title, :body, :category_ids => [] ])
    end
  end
	form do |f|
  	f.inputs "Basic info" do
  	  f.input :title
  	  f.input :body, :as => :rich, :config => { :height => '400px',
  	   :allow_embeds => true, :type => 'file' }
  	  f.input :categories, :as => :check_boxes
  	end
  	f.actions
  end
end
