use Rack::Static,  
  :urls => ["/assets/images", "/assets/js", "/assets/css", "/assets/sass", "/assets/fonts"],
  :root => "mysite"

run lambda { |env|  
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('mysite/assets/index.html', File::RDONLY)
  ]
}