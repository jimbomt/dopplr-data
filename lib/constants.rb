module Dopplr

  # common transformers for models
  DATE_TRANSFORMER = lambda { |v| Date.parse(v) }
  URL_TRANSFORMER = lambda { |v| URI.parse(v) }

end
