module Api
	module V1
		class ArticlesController < ApplicationController
					def index
						 articles = Article.order('created_at  DESC');
						render json: {status: 'SUCCESS', message: 'Loaded articles', data:articles}, status: :ok
					end

					def show
				    articles = Article.find(params[:id])
						render json: {status: 'SUCCESS', message: 'Loaded articles', data:article}, status: :ok
					end

				def create
					article = Article.new(article_params)
						if article.save
							render json: {status: 'SUCCESS', message: 'Articles successfuly created', data:article}, status: :ok
					 
					else
						render json: {status: 'SUCCESS', message: 'Article NOT successfuly created', data:article},
						 status: :unprocessable_entity
					end
				end
				def update
					article = Article.find(params[:id])
					if article.update_attributes(article_params)
					render json: {status: 'SUCCESS', message: 'Articles successfuly updated', data:article}, status: :ok	
					else
						render json: {status: 'SUCCESS', message: 'Article NOT successfuly udated', data:article},
						 status: :unprocessable_entity
					end
				end
				def destroy
					article = Article.find(params[:id])
					article.destroy
						render json: {status: 'SUCCESS', message: 'Articles successfuly deleted', data:article}, status: :ok
				end
				private
					def article_params
						params.permit(:title, :body)
					end
				end	
		end 
end