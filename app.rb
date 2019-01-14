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

post "/newsletter" do
    @news_email = params.fetch('news-email')

    from = SendGrid::Email.new(email: 'friendly.admin@bakery.com')
    to = SendGrid::Email.new(email: @news_email)
    subject = "Friendly Bakery Catalogue"
    content = SendGrid::Content.new(type: 'text/html', 
        value: "
        <body>
            <h1>Friendly Bakery Catalogue</h1>
            <br>
            <h2>Cupcakes</h2>
            <ul>
                <li><strong>Baked Butter Cupcake: </strong>$25</li>
                <li><strong>Baked Berry Cupcake: </strong>$25</li>
                <li><strong>Baked Fruit Cupcake: </strong>$25</li>
                <li><strong>Baked Butter Cupcake: </strong>$25</li>
            </ul>
            <br>
            <h2>Bread</h2>
            <ul>
                <li><strong>Regular Bread: </strong>$25</li>
                <li><strong>Regular Bread: </strong>$25</li>
                <li><strong>Regular Bread: </strong>$25</li>
                <li><strong>Regular Bread: </strong>$25</li>
            </ul>
            <br>
            <h2>Macaroon</h2>
            <ul>
                <li><strong>Colored Macaroons: </strong>$25</li>
                <li><strong>Colored Macaroons: </strong>$25</li>
                <li><strong>Colored Macaroons: </strong>$25</li>
                <li><strong>Colored Macaroons: </strong>$25</li>
            </ul>
            <br>
            <h2>Cakes</h2>
            <ul>
                <li><strong>Awesome Cake: </strong>$25</li>
                <li><strong>Awesome Cake: </strong>$25</li>
                <li><strong>Awesome Cake: </strong>$25</li>
                <li><strong>Awesome Cake: </strong>$25</li>
            </ul>
        </body>
        ")
    mail = SendGrid::Mail.new(from, subject, to, content)
    
    sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'].to_s)
    response = sg.client.mail._('send').post(request_body: mail.to_json)
    puts response.status_code

    erb(:index)
end