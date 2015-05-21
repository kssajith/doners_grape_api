module Member
  class Data < Grape::API
    resource :doners do

      desc "List all Doners"
      get do
        Doner.all
      end

      desc "Add Doner"
      params do
        requires :name, type: String
        requires :address, type: String
        requires :age, type: String
        requires :blood_group, type: String
        requires :weight, type: String
      end
      post do
        Doner.create!({
          name: params[:name],
          address: params[:address],
          age: params[:age],
          blood_group: params[:blood_group],
          weight: params[:weight]})
      end

      desc "Delete Doner"
      params do
        requires :id, type: String
      end
      delete ':id' do
        Doner.find(params[:id]).destroy!
      end

    end
  end
end
