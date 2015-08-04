module ApplicationHelper
    
    def full_title(page_title = '')
        base_title = "MovieBlog"
        if page_title.empty?
          base_title
        else
          page_title + " | " + base_title
        end
    end
     
    def findUserMailById(i)
        user = User.find_by(:id => i)
        if user != nil
            user.email
        end
    end
end
