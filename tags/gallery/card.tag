<card>
  <li each={ opts.imgs } if={data.items.media}>
    <div class="imgwrap">
      <a onclick="{previewImage}" href="">
        <img onclick="{previewImage}" src="{data.items.media}" alt="image">
        <span class="imgmask"></span>
      </a>
    </div>
  </li>

  <script>
    previewImage(e) {
      e.preventDefault();
      let previewImage = document.getElementById('preview-image');
      previewImage.src = e.jsonFlickrFeed.items.media;
      previewImage.scrollIntoView();
    }
  </script>
</card>
