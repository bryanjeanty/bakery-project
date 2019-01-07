require "sinatra"

get "/" do
    "
    <head>
        <title>Pamela's Bakery</title>
        <link rel='stylesheet' type='text/css' href='style.css'/>
    </head>
    <body>
        <header>
            <div class='top-banner'></div>
            <h1>Pamela's Bakery</h1>
            <nav>
                <li><a href='#'>Home</a></li>
                <li><a href='#'>Shop</a></li>
                <li><a href='#'>About</a></li>
                <li><a href='#'>Contact</a></li>
            </nav>
        </header>

        <main>
        </main>

        <footer>
        </footer>
    </body>
    <script src='script.js'></script>
    "
end

get "/shop" do
    "
    "
end

get "/about" do
    "
    "
end

get "/contact" do
    "
    "
end