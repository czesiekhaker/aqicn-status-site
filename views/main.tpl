<!doctype html>
<html>
  <head>
    <title>{{place}} – air quality information</title>
    <style>
      body {
        font-family: serif;
        font-size: xx-large;
        color: #fff;
        text-shadow: 1px 0 1px #000;
        line-height: 150%;
        background-color: {{aqi_color_hex}};
      }
      a {
        color: #fff;
        text-decoration: none;
        border-bottom: 1px dotted white;
      }
      a:active, a:hover {
        border-bottom-style: solid;
      }
      div {
        text-align: center;
      }
      .aqi {
        font-size: 3em;
        line-height: 125%;
        margin: 1em 0 1.2em 0;
      }
      .aqi_readable {
        font-size: 50%;
        line-height: 125%;
      }
      .place {
        padding-top: 1em;
        border-top: 1px solid white;
      }
      .place, .update_time {
        font-size: medium;
      }
    </style>
  </head>
  <body>
    <div id="wrapper">
      <div class="aqi">
        {{aqi}}
        <div class="aqi_readable">{{aqi_readable}}</div>
      </div>
      <div class="place">Data for {{place}}</div>
      <div class="update_time">Updated on {{update_time}}</div>
      <div class="aqicn_link"><a href="{{aqicn_url}}">read more &raquo;</a></div>
    </div><!-- /#wrapper -->
  </body>
</html>
