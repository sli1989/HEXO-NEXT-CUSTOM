
本[博客](https://sli1989.github.io)（[备站](https://sli1989.gitlab.io/)）基于[Gitlab](https://pages.gitlab.io/)的Continuous Integration和[Hexo NexT](https://theme-next.org/)主题部署，并自动推送到[Coding Pages](https://pages.coding.me/)和[Github Pages](https://pages.github.com/)。根据[博文](https://wafer.li/Hexo/%E8%A7%A3%E5%86%B3%20Travis%20CI%20%E6%80%BB%E6%98%AF%E6%9B%B4%E6%96%B0%E6%97%A7%E5%8D%9A%E5%AE%A2%E7%9A%84%E9%97%AE%E9%A2%98/)还原了因CI部署改变的文章更新时间。所有外链域名以 Github Pages 为主，然后国内通过 Coding Pages 访问自定义域名，国外通过 Github Pages 访问自定义域名。

[Hexo](https://hexo.io/zh-cn/) 是高效的静态站点生成框架，她基于 [Node.js](https://nodejs.org/)。 通过 Hexo 你可以轻松地使用 Markdown 编写文章，除了 Markdown 本身的语法之外，还可以使用 Hexo 提供的[标签插件](https://hexo.io/zh-cn/docs/tag-plugins.html)来快速的插入特定形式的内容。

Git使用指南、Hexo博客设置、Git pages等更多搭建设置，点击查看[Git Pages使用指南](https://sli1989.github.io/2017/04/02/github-for-win/)。

本博客个性化列表：

1. 切换使用Muse主题，开启[移动端添加目录和回到顶部按钮](https://sli1989.github.io/2017/04/02/github-for-win/#hexo-mobile)。
1. [点击侧栏头像回到首页](https://sli1989.github.io/2017/04/02/github-for-win/#hexo-avatar)，让[页脚的心跳动起来](https://sli1989.github.io/2017/04/02/github-for-win/#hexo-heart)。
1. 开启[rss订阅](https://sli1989.github.io/2017/04/02/github-for-win/#hexo-rss)。`npm install hexo-generator-feed --save`
2. 开启[本地搜索](https://sli1989.github.io/2017/04/02/github-for-win/#local-search)，~~修复IE环境可能失效的情况~~。`npm install hexo-generator-searchdb --save`
3. 开启[文字统计](https://sli1989.github.io/2017/04/02/github-for-win/#hexo-wordcount)功能。`npm install hexo-symbols-count-time --save`
4. 开启[文章置顶](https://sli1989.github.io/2017/04/02/github-for-win/#hexo-topindex)功能，修改置顶规则，博文依据更新时间排序。`npm install hexo-generator-topindex --save`
6. 添加[HTML5 音乐播放器](https://sli1989.github.io/2017/04/02/github-for-win/#h5palyer)，刷新页面后能够连续播放。
8. 使用[pandoc渲染](https://sli1989.github.io/2016/10/17/markdown-user-guide/#hexo-pandoc)，开启 [MathJax](https://sli1989.github.io/2016/10/17/markdown-user-guide/#hexo-mathjax)公式显示，开启[脚注功能](https://sli1989.github.io/2016/10/17/markdown-user-guide/#hexo-footnotes)，鼠标点击可以显示脚注。
9. ~~为NEXT[配置emoji表情](https://sli1989.github.io/2016/10/17/markdown-user-guide/#hexo-emoji)~~。`$ npm install hexo-filter-github-emojis --save`，`npm un hexo-renderer-stylus --save`，`npm install hexo-renderer-stylus-plus --save`，
1. 添加[阅读排行榜](https://sli1989.github.io/2017/04/02/github-for-win/#hexo-hit)。
1. 由于权限问题，暂时关闭[Gitment评论](https://sli1989.github.io/2017/04/02/github-for-win/#gitment)（[评论仓库](https://github.com/sli1989/gitment-comments/issues)），开启LIVERE评论。由于[Valine评论与自定义页面API访问冲突](https://github.com/xCss/Valine/issues/50)，暂时关闭[Valine评论](https://sli1989.github.io/2017/04/02/github-for-win/#valine)，关闭[Valine留言板](https://sli1989.github.io/comments/)。
2. NEXT v6.0.4 使用 jsdelivr CDN vendor 实现第三方功能。
    - 开启[中英文自动空格](https://sli1989.github.io/2017/04/02/github-for-win/#hexo-spacing)功能。`npm uninstall hexo-filter-auto-spacing`
    - 使用[NeedMoreShare2](https://sli1989.github.io/2017/04/02/github-for-win/#hexo-share)分享插件。
1. **采用[子模块管理](https://sli1989.github.io/2017/04/02/github-for-win/#git-submodule)**升级主题，使用 [DATA FILE](https://github.com/sli1989/HEXO-NEXT-CUSTOM/tree/master/source/_data) 设置主题样式。也可以采用[SED命令](https://github.com/sli1989/HEXO-NEXT-CUSTOM/blob/master/FixNext/fixNext.sh)，自动升级并修改 NEXT 主题文件。NexT 主题个性化文件列表：
    - `blog/themes/next/layout/_macro/post.swig`
    - `blog/themes/next/layout/_macro/sidebar.swig`
    - `blog/themes/next/layout/_layout.swig`
    - `blog/themes/next/layout/_my`，
    - `blog/themes/next/source/css/_common/components/post/post-reward.styl`
    - `blog/themes/next/source/js/custom.js`
    - `blog/themes/next/languages/zh-hans.yml`
	- `blog/themes/next/source/css/_schemes/Muse/index.styl`

---
