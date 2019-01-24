class TutosController < ApplicationController
    def index
        @tutos = Tuto.all
        @tuto = Tuto.new       
    end

    # def new
    #     @tuto = Tuto.new
    # end

    def create
        @tuto = Tuto.new(params[:tuto])
       
        respond_to do |format|
          if @tuto.save
            format.html { redirect_to @tuto, notice: 'Tuto was successfully created.' }
            format.js
            format.json { render json: @tuto, status: :created, location: @tuto }
          else
            format.html { render action: "new" }
            format.json { render json: @tuto.errors, status: :unprocessable_entity }
          end
        end
    end
end
