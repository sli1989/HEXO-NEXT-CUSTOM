---
title: Comments
comments: false
---

{% centerquote %}Valine留言板{% endcenterquote %}

<p align="justfly" id="heheda"><br></font></p>

<script src="/static/js/av-core-mini-0.6.4.js"></script>

<script>AV.initialize("uIrzS1i60S024CvU6ATzr4y7-gzGzoHsz", "9o0rnB856nyqXPURwBBncFkR");</script>

<script type="text/javascript">
  var num=50
  var comment=""
  var url=""
  var nick=""
  var query = new AV.Query('Comment');
  query.notEqualTo('id',0); 
  query.descending('createdAt') 
  query.limit(num); 
  query.find().then(function (todo) {
    for (var i=0;i<num;i++){ 
      var result=todo[i].attributes;
      comment=result.comment; 
      url=result.url;  
	  nick=result.nick;  
	  var updatedAt = todo[i].updatedAt;
      var content="<blockquote>"+"<font size=2>"+"<a href='"+"https://sli1989.github.io"+url+"#comments"+"'>"+"<font color='#9932CC'>"+nick+"</font>"+"</a>"+" commented on "+updatedAt+"："+"<br>"+comment+"</font>"+"<blockquote>";
      document.getElementById("heheda").innerHTML+=content
    }
  }, function (error) {
    console.log("error");
  });
</script>