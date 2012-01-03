module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    when /^the home\s?page$/
      '/'
    when /pagina de login/
      '/signin'
    when /minha pagina/
      '/users/1'
    when /pagina de sessao/
      '/sessions'
    when /home/
      '/'
    when /pagina de ajuda/
      '/help'
    when /pagina sobre/
      '/about'
    when /pagina de contatos/
      '/contact'
    when /pagina de novo/
      'http://news.railstutorial.org/'
    when /pagina do tutorial/
      'http://ruby.railstutorial.org/'
    when /pagina de cadastro/
      '/signup'

    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
