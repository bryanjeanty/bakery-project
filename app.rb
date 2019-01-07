require "sinatra"

get "/" do
    "
    <head>
        <title>Pamela's Bakery</title>
    <head>
    <body>
        <header>
            <h1>Pamela's Bakery</h1>
            <nav>
                <li><a>Home</a></li>
                <li><a>Shop</a></li>
                <li><a>About</a></li>
                <li><a>Contact</a></li>
            </nav>
        </header>

        <main>
        </main>

        <footer>
        </footer>
    </body>
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