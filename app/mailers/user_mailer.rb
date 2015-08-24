class UserMailer < ApplicationMailer
    default from: 'actionmailer@movieblog.com'
    
    def new_review_email(movie)
        @movie = movie
        mail(to: @movie.user.email, subject: 'A new review was added to your movie!')        
    end
    
end
