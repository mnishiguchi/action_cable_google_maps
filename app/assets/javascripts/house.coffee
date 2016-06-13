window.initMap = () ->
  window.map = new google.maps.Map document.getElementById('map'), {
    zoom: 13,
    center: {  lat: 38.8977, lng: -77.0365 } # White House
  }
  $.getJSON '/houses', (response) ->
    $.each response, (i, el) ->
      new google.maps.Marker
        position:  { lat: el.latitude, lng: el.longitude },
        map:       window.map,
        animation: google.maps.Animation.DROP
        title:     "#{el.address} #{el.zipcode}"
