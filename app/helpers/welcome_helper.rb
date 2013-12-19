module WelcomeHelper
  def menu_button(text, url)
    button_tag text, type: "button", class: "btn btn-default #{'active' if current_page?(url)}", data: { nav: url }
  end
end
