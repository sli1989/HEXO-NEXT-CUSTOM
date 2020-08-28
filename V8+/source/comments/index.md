---
title: Comments
comments: false
---

{% centerquote %}Valine留言板{% endcenterquote %}

<p align="justfly" id="heheda"><br></font></p>

<script src="//cdn.jsdelivr.net/npm/leancloud-storage@latest/dist/av-min.js"></script>

<script>AV.initialize("v1gbXmWRFIB2HumxwITENXnx-MdYXbMMI", "UGNaPc285a8yk1BXYEj8LwTj");</script>

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
      var content="<blockquote>"+"<font size=2>"+"<a href='"+"https://sli1989.github.io"+url+"#valine-comments"+"'>"+"<font color='#9932CC'>"+nick+"</font>"+"</a>"+" commented on "+updatedAt+"："+"<br>"+comment+"</font>"+"<blockquote>";
      document.getElementById("heheda").innerHTML+=content
    }
  }, function (error) {
    console.log("error");
  });
</script>

---