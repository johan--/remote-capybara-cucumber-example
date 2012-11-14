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

    when /the sign up page/
      '/users/sign_up'

    when /the sign in page/
      '/users/sign_in'

    when /the sign out page/
      '/users/sign_out'

    when /create organisation page/
      '/organisations/new'

    when /the show organisation page/
      "/organisations/#{@organisation.id}"

    when /the organisation page/
      '/organisations'

    when /the organisation administration page/
      organisation_administration_path @organisation

    when /the view organisation page/
      @organisation

    when /the worksheets page/
      '/worksheets'

    when /the show worksheet page/
      "/worksheets/#{@worksheet.id}"

    when /the parts page/
      '/parts'

    when /the purchased parts page/
      '/purchased_parts'

    when /the supplied parts page/
      '/supplied_parts'

    when /the unlinked parts page/
      '/unlinked_parts'

    when /the suppliers page/
      suppliers_path


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
