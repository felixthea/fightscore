class FightsController < ApplicationController
  # GET /fights
  # GET /fights.json
  before_filter :find_current_user
  before_filter :authenticate_user!, :except => :index
  
  def find_current_user
    @user = current_user
  end
  
  def index
    @fights = Fight.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fights }
    end
  end

  # GET /fights/1
  # GET /fights/1.json
  def show
    @fight = Fight.find(params[:id])
    # @eligible_scores = 0
    # @rounds = Round.find_all_by_fight_id(@fight.id)
#     i = 0
#     @rounds.each do |round|
#       Score.find_by_round_id(round.id)
#     end
      
                  
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fight }
    end
  end

  # GET /fights/new
  # GET /fights/new.json
  def new
    @fight = Fight.new
    @fighters = Fighter.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fight }
    end
  end

  # GET /fights/1/edit
  def edit
    @fight = Fight.find(params[:id])
  end

  # POST /fights
  # POST /fights.json
  def create
    @fight = Fight.new(params[:fight])

    respond_to do |format|
      if @fight.save
        format.html { redirect_to @fight, notice: 'Fight was successfully created.' }
        format.json { render json: @fight, status: :created, location: @fight }
      else
        format.html { render action: "new" }
        format.json { render json: @fight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fights/1
  # PUT /fights/1.json
  def update
    @fight = Fight.find(params[:id])

    respond_to do |format|
      if @fight.update_attributes(params[:fight])
        format.html { redirect_to @fight, notice: 'Fight was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fights/1
  # DELETE /fights/1.json
  def destroy
    @fight = Fight.find(params[:id])
    @fight.destroy

    respond_to do |format|
      format.html { redirect_to fights_url }
      format.json { head :no_content }
    end
  end
  
  def score
    @fight = Fight.find(params[:id])
    @rounds = Round.find_all_by_fight_id(@fight.id)
  
      @rounds.each do |round|
        if Score.exists?(:round_id => round.id, :user_id => @user.id) # checks to make sure that this record doesn't exist already so it does not overwrite existing scores
        else
          Score.create(round_id: round.id, user_id: @user.id)
        end
      end
    redirect_to @fight
  end
  
  def new_fight_rounds
    @fight = Fight.find(params[:id]) #we can figure out the fight_id this way and we can do @fight.fighters to find the fighter IDs
    @round = Round.new
  end
  
  def create_all_rounds
    fight = Fight.find(params[:id])
    fighters = fight.fighters
    
    fighters.uniq.each do |fighter|
      #checks to make sure that there are not rounds created yet
      fighter_rounds = Round.find_all_by_fight_id_and_fighter_id(fight.id,fighter.id).count 
      if fighter_rounds != fight.numrounds
        i = 2
        while i < fight.numrounds+1 do
          Round.create(fight_id: fight.id, fighter_id: fighter.id, roundname: i)
          i += 1
        end
      end
    end
    redirect_to fight, notice: 'Already has appropriate # of rounds created'
  end
  
  def destroy_all_scores
    @fight = Fight.find(params[:id])
    @rounds = Round.find_all_by_fight_id(@fight.id)
    
    @rounds.each do |round|
      Score.find_by_round_id_and_user_id(round.id, @user.id).destroy
    end
    
    score
  end
end
