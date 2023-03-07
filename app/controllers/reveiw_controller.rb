class ReviewController < ApplicationController

    get "/review" do
        reviews = Review.all
        reviews.to_json(include: [:airbnb])
    end

    get "/review/:id" do
        reviews = Review.find_by(id: params[:id])
        reviews.to_json
    end

    post "/reviews/" do
        review = Review.create(
            user: params[:user],
            email: params[:email],
            comment: params[:comment],
            rating: params[:rating],
            admin_id: params[:admin_id],
            airbnb_id: params[:airbnb_id]
           
        )
        review.to_json
    end


    get "/admin" do
        admins = Admin.all
        admins.to_json
    end

    get "/admin/:id" do
        admins = Admin.find_by(id: params[:id])
        admins.to_json
    end

    post "/admin/" do
        admin = Admin.create(
            admin: params[:admin],
            admemail: params[:admemail]
        )
        admin.to_json
    end

    delete "/reviews/:id" do
        review = Review.find_by(id: params[:id])
        review.destroy
        review.to_json
    end

end