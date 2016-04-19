<gallery>

  <ul class="gallery">
    <card></card>
  </ul>

  <hr>

  <script>

    function load() {
      var xhr = new XMLHttpRequest;

      xhr.open('GET', 'http://api.flickr.com/services/feeds/photos_public.gne?id=141945562@N05&method=flickr.photos.search&lang=en-us&format=json&api_key=3b985070f9464a8536ac7d3108935b90&format=json', true)
      xhr.onload = function () {
        if (this.status >= 200 && this.status < 400) {
          var allImages = (xhr.responseText);
          var data = JSON.parse(allImages);
          var imgs = data.items;
          riot.mount('card', {
            imgs: imgs
          });
        }

      }
      xhr.send();

    }



    load();
  </script>

</gallery>
