<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <!--<meta name="viewport" content="width=device-width, initial-scale=1.0">-->
  <title>javaQuestions</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
         body {font-family: "Lato", sans-serif;}
         .mySlides {display: none}
     </style>
</head>

<body class="stackedit">
  <div class="stackedit__html"><h1 id="tldr">tl;dr</h1>
<p><em>too long, did not read</em></p>
<p><code>means : end :: abstraction : polymorphism</code>.</p>
<p>Here’s an analogy:  If <code>Moksha (liberation)</code> is the supreme goal of <code>Life</code>,  spirituality is the <code>means</code> to achieve it. Similarly if <code>Polymorphism</code> is the supreme goal of <code>OOD/OOP</code>, abstraction is the <em>means</em> to achieve it.</p>
<p>A good <code>object-oriented design (OOD)</code> provides for effective abstraction (a <em>concept</em> enabled by encapsulation, inheritance, composition, aggregation, association) that enables powerful types of polymorphism (<em>behaviour</em>).</p>
<h1 id="what-is-difference-between-isa--hasa-relationship">What is difference between isA,  hasA relationship?</h1>
<ul>
<li>A car has four wheels (<strong>hasA</strong> relationship)
<ul>
<li>wheel is a member of a car
<ul>
<li>Encapsulation  (implies composition)</li>
</ul>
</li>
</ul>
</li>
<li>A butterfly is a type of insect (<strong>isA</strong> relationship)
<ul>
<li>insect is “super-class” and butterfly is “sub-class”
<ul>
<li>Inheritance  (implies sub-typing)</li>
<li><code>extends</code> is the keyword</li>
</ul>
</li>
</ul>
</li>
</ul>
<h2 id="what-about-usesa-relationship">What about <code>usesA</code> relationship?</h2>
<ul>
<li>Let’s consider a <code>Bajaj Pulsar</code> (<em>sub-class</em>)
<ul>
<li>It <code>hasA</code> engine (encapsulation, <em>composition</em>)</li>
<li>It <code>isA</code> type of a Bike (inheritance, <em>super-class</em>)</li>
</ul>
</li>
</ul>
<p>Now, let’s say you want to make it autonomous vehicle. And <code>BMW</code> offers a <code>LidarBike</code> technology which can drive any vehicle automatically. And it can be fitted on to any other non-BMW bike as well.</p>
<ul>
<li>So we now have a <code>Bajaj Pulsar Auto</code> which <code>implements</code> <code>LidarBike</code> interface
<ul>
<li><code>implements</code> is the keyword
<ul>
<li><code>Bajaj Pulsar Auto</code> <code>isA</code> bike and <code>usesA</code> an automatic behavior
<ul>
<li>equivalent of multiple inheritance (available only in C++) but avoids the <code>deadly diamond problem</code></li>
</ul>
</li>
</ul>
</li>
</ul>
</li>
</ul>
<p>Ultimately, <code>isA</code> (overriding, overloading) and <code>usesA</code> relationships are abstractions that result in various types of polymorphism (<em>static</em>, <em>dynamic</em>).</p>
<p>If you have grokked <em>everything</em> until this point, please read this as well <a href="https://bit.ly/oopThis">https://bit.ly/oopThis</a></p>
<h2 id="why-static-attributes-and-methods">Why static attributes and methods?</h2>
<ul>
<li>
<p>A class needs to know how many run-time objects are available at any point in time. A static integer counter object (<em>usually</em> private) is made available in the class scope, so it is neither file scope or global scope. A public static method then makes the value of the private static counter available for other objects to consume.</p>
<ul>
<li><strong>Can you access a non-static variable in the static context?</strong><br>
Another tricky Java question from Java fundamentals. No, you can not access a non-static variable from the static context in Java. If you try, it will give compile time error. This is actually a common problem beginner in Java face when they try to access instance variable inside the main method. Because main is static in Java, and instance variables are non-static, you can not access instance variable inside main. See, <a href="http://javarevisited.blogspot.sg/2012/02/why-non-static-variable-cannot-be.html">why you can not access a non-static variable from static method</a> to learn more about this tricky Java questions.</li>
</ul>
</li>
</ul>
<h2 id="what-is-an-abstract-class-and-abstract-method-in-java-when-should-i-use-it-tutorial-attached">What is an Abstract Class and Abstract Method in Java? When Should I use it? Tutorial Attached</h2>
<p><a href="https://crunchify.com/what-is-an-abstract-class-and-abstract-method-in-java-when-should-i-use-it/">https://crunchify.com/what-is-an-abstract-class-and-abstract-method-in-java-when-should-i-use-it/</a></p>
<h2 id="what-is-interface-class-in-java">What is interface class in Java?</h2>
<p><a href="https://crunchify.com/what-is-an-interface-in-java-how-its-used-java-tutorial-example-attached/">https://crunchify.com/what-is-an-interface-in-java-how-its-used-java-tutorial-example-attached/</a></p>
<hr>
<h2 id="the-petspeak-series">The PetSpeak Series</h2>
<p><img src="https://i.imgur.com/65gX68p.jpg" alt="knuth"></p>
<p><a href="http://j.mp/petSpeak1">http://j.mp/petSpeak1</a><br>
<a href="http://j.mp/petSpeak2">http://j.mp/petSpeak2</a><br>
<a href="http://j.mp/petSpeak3">http://j.mp/petSpeak3</a><br>
<a href="http://j.mp/petSpeak4">http://j.mp/petSpeak4</a> - advanced, so be brave and go ahead!</p>
<h2 id="final-hr-round">Final HR round</h2>
<ul>
<li>
<p>Practice speaking about yourself in 30 seconds. Be confident, specific and say something distinct about yourself.</p>
</li>
<li>
<p>Know the projects that you have put into your biodata and the concepts behind them</p>
</li>
<li>
<p>Be keen to know what platforms / projects that you will be asked to work after your training is done. Express your keenness to work on those kinds of projects as soon as you are done with the training period</p>
</li>
<li>
<p>Research about the company and its products</p>
</li>
<li>
<p>About the company and potential competitors</p>
</li>
<li>
<p>Know the fundamentals of CoreJava if they are a JavaShop. Know why Java is superior to other languages.</p>
<ul>
<li>If they are into Micro Services, get down to the fundamental concepts of what makes Micro services work.</li>
<li>If you are not able to fully grasp it, it is best not to talk about it at all</li>
</ul>
</li>
</ul>
</div>
</body>

</html>
