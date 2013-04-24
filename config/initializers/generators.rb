Rails.application.config.generators do |g|
    g.test_framework :rspec,
      view_specs: false,
      fixture: false,
      controller_specs: false,
      routing_specs: false
    g.integration_tool = :rspec
    g.performance_tool = :rspec

    g.fixture_replacement = :factory_girl
    g.stylesheets         = false
    g.helper              = false
    g.assets              = false

    g.template_engine :haml
end
