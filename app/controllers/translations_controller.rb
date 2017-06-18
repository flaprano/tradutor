class TranslationsController < ApplicationController

  def index
    @translations = Translation.all
  end

  def create
    texto_portugues = params[:translation][:texto_portugues]
    texto_ingles = params[:translation][:texto_ingles]
    Translation.create({texto_portugues: texto_portugues, texto_ingles: texto_ingles})
    redirect_to translations_path
  end

  def show
    id = params[:id]
    @translation = Translation.find(id)
  end

  def edit
    id = params[:id]
    @translation = Translation.find(id)
  end

  def update
    texto_portugues = params[:translation][:texto_portugues]
    texto_ingles = params[:translation][:texto_ingles]
    id = params[:id]
    translation = Translation.find(id)
    translation.update(texto_portugues: texto_portugues, texto_ingles: texto_ingles)
    redirect_to translations_path
  end

  def destroy
    id = params[:id]
    Translation.delete(id)
    redirect_to translations_path
  end

end
