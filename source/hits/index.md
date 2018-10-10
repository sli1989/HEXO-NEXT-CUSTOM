---
title: Hits
comments: false
---

{% centerquote %}阅读榜Top 30{% endcenterquote %}

<p align="justfly" id="hits"><br></font></p>

<script src="//cdn1.lncld.net/static/js/3.0.4/av-min.js"></script>

<script>AV.initialize("uIrzS1i60S024CvU6ATzr4y7-gzGzoHsz", "9o0rnB856nyqXPURwBBncFkR");</script>

<script type="text/javascript">
  var num=30
  var time=0
  var title=""
  var url=""
  var query = new AV.Query('Counter');
  query.notEqualTo('id',0); 
  query.descending('time'); 
  query.limit(num); 
  query.find().then(function (todo) {
    for (var i=0;i<num;i++){ 
      var result=todo[i].attributes;
      time=result.time; 
      title=result.title; 
      url=result.url;  
      var content="<p>"+"<font color='#e20404'>"+"热度"+time+"℃"+"："+"<a href='"+"https://sli1989.github.io"+url+"'>"+title+"</font>"+"</a>"+"</p>";
      //document.write("<a href='"+"https://sli1989.github.io"+url+"'>"+title+"</a>"+"    Readtimes:"+time+"<br>");
      document.getElementById("hits").innerHTML+=content
    }
  }, function (error) {
    console.log("error");
  });
</script>

---