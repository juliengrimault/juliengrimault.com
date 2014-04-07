---
layout: default
title: Introduction
---

<section class="home">
  <h2>Hello</h2>
  <p>I'm a software engineer living in Singapore. I am currently the Lead Developer at [TradeHero](https://tradehero.mobi"). I spend most of my days writing Objective-C and C# code. In my free time, I like to [make stuff](https://github.com/juliengrimault), [take pictures](https://500px.com/juliengrimault), and [blog about technology](https://julien.roon.io). [Get in touch](https://twitter.com/juliengrimault).</p>
  <h2>Apps</h2>
  <p>I started developing for iOS back in 2010 while I was still in university. Here are some apps I've worked on. I am no longer involved in the development of the first 5 as those belong to my previous employers.</p>
  <ul class="apps">
    <li>
      <a href="https://itunes.apple.com/us/app/newtonapples/id417698312" rel="external nofollow" title="NewtonApples">
        <img src="{% asset_path newtonapples.jpg %}" alt="NewtonApples"/>
        <span>NewtonApples</span>
      </a>
    </li>
    <li>
      <a href="https://itunes.apple.com/us/app/schedaroo/id514603464" rel="external nofollow" title="Schedaroo">
        <img src="{% asset_path schedaroo.jpg %}" alt="Schedaroo"/>
        <span>Schedaroo</span>
      </a>
    </li>
    <li>
      <a href="https://itunes.apple.com/us/app/lotteryticket/id444928739?mt=8" rel="external nofollow" title="LotteryTicket">
        <img src="{% asset_path lotteryticket.jpg %}" alt="LotteryTicket"/>
        <span>LotteryTicket</span>
      </a>
    </li>
    <li>
      <a href="https://itunes.apple.com/us/app/betterletter/id426913117" rel="external nofollow" title="BetterLetter">
        <img src="{% asset_path betterletter.jpg %}" alt="BetterLetter"/>
        <span>BetterLetter</span>
      </a>
    </li>
    <li>
      <a href="https://itunes.apple.com/sg/app/bet-butler/id520033345" rel="external nofollow" title="Bet Buttler">
        <img  src="{% asset_path betbuttler.jpg %}" alt="Bet Buttler"/>
        <span>Bet Buttler</span>
      </a>
    </li>
    <li>
      <a href"https://itunes.apple.com/us/app/tradehero-mobile/id572226383" rel="external nofollow" title="TradeHero">
        <img src="{% asset_path tradehero.jpg %}" alt="TradeHero"/>
        <span>TradeHero</span>
      </a>
    </li>
  </ul>
  <h2>Open Source</h2>
  <p></p>
  I'm always hacking on random stuff. Here are some hightlights:
  <ul class="list">
    <li>
      [ModelLite](https://github.com/juliengrimault/ModelLite) &mdash; Alternative to CoreData on top of SQLite.
    </li>
    <li>
      [Life](http://github.com/juliengrimault/GameOfLifeiOS) &mdash; Conway's <a href="http://en.wikipedia.org/wiki/Conway's_Game_of_Life" rel='external nofollow'>Game of Life</a>
    </li>
    <li>
      [MarkdownEditor](https://github.com/juliengrimault/MarkdownEditor) &mdash; A simple markdown text editor.
    </li>
    <li>
      [TwittApp.net](https://github.com/juliengrimault/AppNetChecker) &mdash; Find your Twitter friends on App.net
    </li>
    <li>
      [Rdio2DayOne](https://github.com/juliengrimault/Slogger/commits/rdio) &mdash; Create [Day One](http://dayoneapp.com) entries from your Rdio collection.
    </li>
    <li>
      [Portfolio-Unicorn](https://github.com/juliengrimault/portfolio-unicorn) &mdash; Learning Rails!
    </li>
    <li>
      [LargeNumberFormatter](https://github.com/juliengrimault/JGLargeNumberFormatter) &mdash; Format large numbers with abreaviations.
    </li>
  </ul>
  <p>Feel free to check out the full list of my open source projects [on GitHub](https://github.com/juliengrimault).</p>
  {% unless site.data.500px.empty? %}
  <div class="four-stripe px500">
   <ul>{% for photo in site.data.500px %}<li>
       <a href="https://500px.com/photo/{{ photo.id }}" rel="external nofollow" title="{{ photo.name }}">
         <img src="{{ photo.image_url }}" alt="{{ photo.name }}"/>
       </a>
     </li>
   {% endfor %}
   </ul>
   <p>
     <a href="https://500px.com/juliengrimault" rel="external nofollow"/>
     <a href="https://500px.com/juliengrimault" rel="external nofollow">
       Follow @juliengrimault
     </a>
   </p>
  </div>
  {% endunless %}
</section>
