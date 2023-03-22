class ApplicationController < ActionController: :Base 
    
      def index
        @ = .scoped
      end
    
      def show
        @ = .find(params[:id])
      end
    
      def create
        @ = .new(params[:])
      end
    
      def update
        @ = .find(params[:id])
      end
    
      def edit
        @ = .find(params[:id])
      end
    
      def destroy
         = .find(params[:id])
      end
end

validates_associated :attribute, on: :create

create_table :table_name do |t|
  t.column_type :column_name

  t.timestamps
end
