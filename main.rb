Shoes.app :title=>"tweet in shoes", :width=>300 do
  stack :width=>'100%', :height=>30 do
    flow do
      @button = button "tweet", :width=>60 do
        @list.prepend do
          para @text.text
        end
        @text.text = ""
      end
      @text = edit_line "", :width=>-60
    end
  end
  @list = stack :width=>'100%', :height=>-30, :scroll=>true
end
