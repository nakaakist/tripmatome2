Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '184226631929280', 'cfc6e1a998cf99aebfd7c8871fee0511'
  provider :twitter, 'YcftusfDjzEMwvTptYeaeknCS', 'AqGwpyuNeqWBNXUWy6aMrqV3jIm6PHKCqqxP5M50N3kCYaAMzy'
end

