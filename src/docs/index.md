---
layout: default
---


## Ethonate - Ethereum donate button

Ethonate is a free to use button generation tool that which enables individuales and groups, including open-source projects, to post their ethereum wallet information.

### Example usage:
 [![Donate]({{site.url}}{{site.baseurl}}/svg/ethereum.svg)]({{site.baseurl}}/address#0x520120af9464Ef42FF9D663f9C59FafDF51aa54F)


#### Markdown
 ```markdown
 [![Donate]({{site.url}}{{site.baseurl}}/svg/donate.svg)]({{site.baseurl}}/address#0x520120af9464Ef42FF9D663f9C59FafDF51aa54F)
 ```

#### HTML:
 ```html
 <a href="{{site.url}}{{site.baseurl}}/address#0x520120af9464Ef42FF9D663f9C59FafDF51aa54F">
   <img src="{{site.url}}{{site.baseurl}}/svg/donate.svg" width="100"/>
 </a>
 ```

### How to use:
{%raw%}

<script
  src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
  integrity="sha256-k2WSCIexGzOj3Euiig+TlR8gA0EmPjuc79OEeY5L45g="
  crossorigin="anonymous"></script>

<div id="box">


</div>

{%endraw%}

#### Style


{%raw%}
   <ul>
      <label for="style">Donate</label>
      <input type="radio" value="donate" name="style">
   </ul>
{%endraw%}

#### Address

{%raw%}
<style>
.address-input {
    font-size: 15px;
    padding: 3px;
    width: 380px;
}
</style>
<div>
    <input class="address-input" type="text" placeholder="0x520120af9464Ef42FF9D663f9C59FafDF51aa54F"/>
</div>
{%endraw%}

##### Markdown
{%raw%}
<div>
   <pre>

   </pre>
</div>
{%endraw%}

### Contribute:
 TBD


