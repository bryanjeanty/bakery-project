require "sinatra"
require 'sendgrid-ruby'

get "/" do
    erb(:index)
end

get "/" do
    @email = params.fetch('email')
    @subject = params.fetch('subject')
    @message = params.fetch('message')

    from = SendGrid::Email.new(email: @email)
    to = SendGrid::Email.new(email: 'bryan.jeanty@outlook.com')
    subject = @subject
    content = SendGrid::Content.new(type: 'text/plain', value: "Hi Bryan,\n\n#{ @comment }")
    mail = SendGrid::Mail.new(from, subject, to, content)
    
    sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'].to_s)
    response = sg.client.mail._('send').post(request_body: mail.to_json)
    puts response.status_code
end