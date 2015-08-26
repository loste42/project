class CriticsController < ApplicationController
  before_action :set_critic, only: [:show, :edit, :update, :destroy]
  before_action :set_movie
  before_action :authenticate_user!

  # GET /critics/new
  def new
    @critic = Critic.new
  end

  # GET /critics/1/edit
  def edit
  end

  # POST /critics
  # POST /critics.json
  def create
    @critic = Critic.new(critic_params)
    @critic.user_id = current_user.id
    @critic.movie_id = @movie.id
    
    respond_to do |format|
      if @critic.save
        format.html { redirect_to @movie, notice: 'Critic was successfully created.' }
        format.json { render :show, status: :created, location: @critic }
      else
        format.html { render :new }
        format.json { render json: @critic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /critics/1
  # PATCH/PUT /critics/1.json
  def update
    respond_to do |format|
      if @critic.update(critic_params)
        format.html { redirect_to @critic, notice: 'Critic was successfully updated.' }
        format.json { render :show, status: :ok, location: @critic }
      else
        format.html { render :edit }
        format.json { render json: @critic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /critics/1
  # DELETE /critics/1.json
  def destroy
    @critic.destroy
    respond_to do |format|
      format.html { redirect_to critics_url, notice: 'Critic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_critic
      @critic = Critic.find(params[:id])
    end
    
    def set_movie
      @movie = Movie.find(params[:movie_id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def critic_params
      params.require(:critic).permit(:rating, :comment, :user_id)
    end
end
