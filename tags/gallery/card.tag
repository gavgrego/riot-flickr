<card>
  <li each={ opts.imgs } if={media.m}>
    <div class="imgwrap">
      <a onclick="{previewImage}" href="">
        <img onclick="{previewImage}" src="{media.m}" alt="image">
        <span class="imgmask"></span>
      </a>
    </div>
  </li>

  <script>
    previewImage(e) {
      e.preventDefault();
      console.log("e.item.media.m", e.item.media.m);
      var previewImage = document.getElementById('preview-image');
      previewImage.src = e.item.media.m;
      previewImage.scrollIntoView();
    }
  </script>
</card>
