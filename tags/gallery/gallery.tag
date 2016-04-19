<gallery>

  <img src="" alt="" id="preview-image">

  <ul class="gallery">
    <card></card>
  </ul>

  <hr>

  <script>

    function load() {
      var url = "http://api.flickr.com/services/feeds/photos_public.gne?id=141945562@N05&method=flickr.photos.search&lang=en-us&format=json&api_key=3b985070f9464a8536ac7d3108935b90&jsoncallback=?";
      $.getJSON(url, function(data, textStatus, jqxhr) {
        var imgs = data.items;
        riot.mount('card', {
          imgs: imgs
        });
      });
    }

    load();
  </script>

</gallery>
