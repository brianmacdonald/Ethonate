---
layout: default
title: Wallet Address
permalink: /address/
---

{%raw%}

<script
  src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
  integrity="sha256-k2WSCIexGzOj3Euiig+TlR8gA0EmPjuc79OEeY5L45g="
  crossorigin="anonymous"></script>
<script>
$( document ).ready(function() {
function qrCodeBuilder(address) {
  var img = $('<img></img>').attr(
     {src: "https://api.qrserver.com/v1/create-qr-code/?size=150x150&data=" + address}
  );
  return img;
}

$("#box h3").text(
  getAddressFromURL()
);

$('#box div').html( 
  qrCodeBuilder(getAddressFromURL())
);

function getAddressFromURL() {
    return document.location.hash.replace("#", "");
}
});
</script>

<style>

#box {
   border: solid 1px #000;
   padding: 5%; 
   text-align:center;
}

#code {
  display: block;
  margin: auto;
}

</style>

<div id="box">
  <h4>Wallet Address</h4> 
  <h3></h3>
  <div id="code">
      <img src="{{site.baseurl}}/images/loading.gif"/>
  </div>
  
</div>

{%endraw%}

