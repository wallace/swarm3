module AppConstants
  
  GOOGLE_API_KEY = if Rails.env.development? || Rails.env.test?
    "ABQIAAAAMC7dq9bWcPaJdGxWPDaq1BTJQa0g3IQ9GZqIMmInSLzwtGDKaBQMJsqyuhJOmM2r4r_WiYnAjVdF8g"
  else # production
    "ABQIAAAAMC7dq9bWcPaJdGxWPDaq1BTJQa0g3IQ9GZqIMmInSLzwtGDKaBQMJsqyuhJOmM2r4r_WiYnAjVdF8g"
  end
  
end