# This is the class that implements Page.
# It allows one to create a page that
# consists of content and links to new
# pages

class Page
  attr_accessor :content, :links
  def initialize(content, *links)
    self.content = content
    self.links = *links
  end
end
