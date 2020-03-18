
[Hexo](https://hexo.io/zh-cn/) 是高效的静态站点生成框架，她基于 [Node.js](https://nodejs.org/)。 通过 Hexo 你可以轻松地使用 Markdown 编写文章，除了 Markdown 本身的语法之外，还可以使用 Hexo 提供的[标签插件](https://hexo.io/zh-cn/docs/tag-plugins.html)来快速的插入特定形式的内容。Git 使用指南、Hexo 博客设置、Git pages 等更多搭建设置，点击查看 [Git Pages 使用指南](https://sli1989.github.io/git/)。

本[博客](https://sli1989.github.io)（[备站](https://sli1989.gitlab.io/)）基于 [Gitlab](https://pages.gitlab.io/) 的 Continuous Integration 和 [Hexo NexT](https://theme-next.org/) 主题部署，并自动推送到 [Coding Pages](https://coding.net/) 和 [Github Pages](https://pages.github.com/)。所有外链域名以 Github Pages 为主，然后国内通过 Coding Pages 访问自定义域名，国外通过 Github Pages 访问自定义域名。（根据[博文](https://wafer.li/Hexo/%E8%A7%A3%E5%86%B3%20Travis%20CI%20%E6%80%BB%E6%98%AF%E6%9B%B4%E6%96%B0%E6%97%A7%E5%8D%9A%E5%AE%A2%E7%9A%84%E9%97%AE%E9%A2%98/)还原了因CI部署改变的文章更新时间）

采用[子模块管理](https://sli1989.github.io/git/#git-submodule)升级并自定义主题。可以在 hexo 博客目录一键部署`updatenext.sh`。

```git
cd themes/next
git checkout master
git pull
cd ../../

git add .
git commit -m "update next"
git push -u origin master
```

也可以采用[SED命令](https://github.com/sli1989/HEXO-NEXT-CUSTOM/blob/master/FixNext/fixNext.sh)自动升级并自定义主题。

也可以结合 [Next inject](https://theme-next.org/docs/advanced-settings.html#Injects) 功能利用 DATA FILE 自定义主题。

本博客个性化列表：

1. 使用 [DATA FILE](https://github.com/sli1989/HEXO-NEXT-CUSTOM/tree/master/source/_data) 设置主题样式。
2. NEXT v6.0.4 使用 jsdelivr CDN vendor 实现第三方功能。
    - 开启[中英文自动空格](https://sli1989.github.io/git/#hexo-spacing)功能。`npm uninstall hexo-filter-auto-spacing`
    - 使用 [NeedMoreShare2](https://sli1989.github.io/git/#hexo-share) 分享插件。
1. [点击侧栏头像回到首页](https://sli1989.github.io/git/#hexo-avatar)。
1. 开启 RSS 订阅。`npm install hexo-generator-feed --save`
2. 开启[本地搜索](https://sli1989.github.io/git/#local-search)。`npm install hexo-generator-searchdb --save`
3. 开启文字统计功能。`npm install hexo-symbols-count-time --save`
4. 开启[文章置顶](https://sli1989.github.io/git/#hexo-topindex)功能，修改置顶规则（TOP数值越小越靠前）和[置顶显示](https://github.com/sli1989/hexo-theme-next/commit/3a28dcc7cf4ede6c868f4322b7f27d60877ad495)，博文依据更新时间排序。`npm install hexo-generator-topindex --save`

    ```
    - sed 's/a.date/a.updated/' -i node_modules/hexo-generator-topindex/lib/generator.js
    - sed 's/b.date/b.updated/' -i node_modules/hexo-generator-topindex/lib/generator.js
    - sed 's/b.top - a.top/a.top - b.top/' -i node_modules/hexo-generator-topindex/lib/generator.js
    ```

6. 添加 [HTML5 音乐播放器](https://sli1989.github.io/git/#h5player)，刷新页面后能够连续播放。
8. 使用 [pandoc 渲染](https://sli1989.github.io/markdown-user-guide/#hexo-pandoc)，开启 [MathJax](https://sli1989.github.io/markdown-user-guide/#hexo-mathjax) 公式显示，开启[脚注功能](https://sli1989.github.io/markdown-user-guide/#hexo-footnotes)（`pandoc-1.19.2.1-1`+`npm install hexo-renderer-pandoc@0.2.3 --save`），鼠标点击可以显示脚注。

    ```
    - wget https://github.com/jgm/pandoc/releases/download/1.19.2.1/pandoc-1.19.2.1-1-amd64.deb
    - dpkg -i ./pandoc-1.19.2.1-1-amd64.deb
    ```

1. 添加[阅读排行榜](https://sli1989.github.io/git/#hexo-hit)。
1. 开启 Valine 评论（[Valine留言板](https://sli1989.github.io/comments/)）。


---
