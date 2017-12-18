class ComicsController < ApplicationController
  def index
    @comics = Comic.all.shuffle[0..9]
  end

  def show
    @comic = Comic.find(params["id"])
    comics = Comic.all
    @unlabeled_cnt = comics.where(emotion_type:nil).count
    @all_cnt = comics.count
  end

  def update
    comic = Comic.find(params["id"])
    comic.emotion_type = params["emotion_type"].to_i
    comic.save!
    redirect_to comic_path(Comic.where(emotion_type:nil).shuffle.first.id)
  end

  def happy
    @comics = Comic.where(emotion_type:"happy").shuffle[0..9]
  end

  def angry
    @comics = Comic.where(emotion_type:"angry").shuffle[0..9]
  end

  def sad
    @comics = Comic.where(emotion_type:"sad").shuffle[0..9]
  end

  def excite
    @comics = Comic.where(emotion_type:"excite").shuffle[0..9]
  end

  private

    def comic_params
      params.require(:comic).permit(:id, :emotin_type, :image_urle)
    end
end
