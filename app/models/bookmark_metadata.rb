require "om"
class BookMarkMetadata 
  # This include statement adds the behaviors of an OM Document to your class
  include OM::XML::Document

  set_terminology do |t|
    t.root(path: "fields")
    t.title
    t.author
  end

  # This method is called when you create new XML documents from scratch.
  # It must return a Nokogiri::Document.  Other than that, you can make your "default" documents look however you want.
  def self.xml_template
    Nokogiri::XML.parse("<fields/>")
  end
end
