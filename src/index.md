---
layout: default
---


## Ethonate - Ethereum donate button

Ethonate is a free to use button generation tool that which allows you to post your ethereum wallet information to Github projects and web pages.

### Example usage:
 [![Donate]({{site.url}}{{site.baseurl}}/svg/eth-donate-blue.svg)]({{site.url}}{{site.baseurl}}/address#0x520120af9464Ef42FF9D663f9C59FafDF51aa54F)


#### Markdown
 ```markdown
 [![Donate]({{site.url}}{{site.baseurl}}/svg/eth-donate-blue.svg)]({{site.url}}{{site.baseurl}}/address#0x520120af9464Ef42FF9D663f9C59FafDF51aa54F)
 ```

#### HTML:
 ```html
 <a href="{{site.url}}{{site.baseurl}}/address#0x520120af9464Ef42FF9D663f9C59FafDF51aa54F">
   <img src="{{site.url}}{{site.baseurl}}/svg/eth-donate-blue.svg"/>
 </a>
 ```

### How to use:
{%raw%}

<script
  src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
  integrity="sha256-k2WSCIexGzOj3Euiig+TlR8gA0EmPjuc79OEeY5L45g="
  crossorigin="anonymous"></script>


<div id="url" data-url="
{%endraw%}{{site.url}}{{site.baseurl}}{%raw%}">
</div>

{%endraw%}

#### Style


{%raw%}
<style>
.address-input {
    font-size: 15px;
    padding: 3px;
    width: 380px;
}
ul {
  list-style: none;
}
.input-label {
  display:inline-block;

}
.input-field {
  display:inline-block;
}
</style>
   <ul>
      <li>
      <span class="input-label">
      <span class="input-field">
        <input type="radio" value="donate" name="style">
      </span>
      <label for="style">
        <img src="{%endraw%}{{site.url}}{{site.baseurl}}{%raw%}/svg/eth-donate-blue.svg"/>
      </label>
      </span>
      </li>
      <li>
        <span class="input-label">
        <span class="input-field">
          <input type="radio" value="support" name="style">
        </span>
        <label for="style">
          <img src="{%endraw%}{{site.url}}{{site.baseurl}}{%raw%}/svg/eth-support-blue.svg"/>
        </label>
        </span>
      </li>
   </ul>
{%endraw%}

#### Address

{%raw%}
<div>
    <input class="address-input" type="text" placeholder="0x520120af9464Ef42FF9D663f9C59FafDF51aa54F"/>
</div>
{%endraw%}

##### Markdown
{%raw%}
<div>
   <pre id="markdown-output">

   </pre>
</div>

<script>

function updateOutput(url, style, address) {
  $('#markdown-output').text(createMarkdown(url, style, address));
  console.log('updating output');
}

function createMarkdown(url, type, address) {
  return "[![" + type + "]("+ url + "/svg/eth-" +
      type +  "-blue.svg)](" + url + "/address#" + address + ")";

}

function validAddress(address) {
  return address.search('0x') === 0 && address.length === 42;
}

$( document ).ready(function() {

  var address, style, url = $('#url').attr('data-url');

  console.log('ready');

  $('input[name=style]').change(function () {
    style = $(this).val();
    console.log('input changed');
    if (address && validAddress(address)) {
      updateOutput(url, style, address);
    }
  });

  $('.address-input').keydown(function () {
    addressUpdate($(this).val())
  });
  $('.address-input').change(function () {
    addressUpdate($(this).val())
  })

  var addressUpdate  = function (val) {
    address = val;
    console.log('input changed');
    if (style && validAddress(address)) {
      updateOutput(url, style, address);
    }
  };

});
</script>

{%endraw%}

### Contribute:
 TBD
