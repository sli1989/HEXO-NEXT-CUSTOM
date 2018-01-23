#!/bin/bash

# ./fixNext.sh next_theme_dir
# for example HexoNext/fixNext.sh themes/next

# first install the Next theme
# git clone https://github.com/theme-next/hexo-theme-next $1
rm -rf $1
git clone git@github.com:theme-next/hexo-theme-next.git $1

# 替换标签符号
sed 's/rel="tag">#/rel="tag"><i class="fa fa-tag"><\/i>/' -i $1/layout/_macro/post.swig

# 页脚的心跳动起来
# 替换
sed 's/"with-love"/"with-love" id="heart"/' -i $1/layout/_partials/footer.swig

# 添加footer_powered
# 插入文件内容
# NEXT提供了custom_text
# sed '/config.author }}<\/span>/r HexoNext/footer_powered' -i $1/layout/_partials/footer.swig

# 修改leancloud的DNS
# 替换
# sed 's/https:\/\/cdn1.lncld.net\/static\/js\/av-core-mini-0.6.4.js/ \/static\/js\/av-core-mini-0.6.4.js/' -i $1/layout/_third-party/analytics/lean-analytics.swig

# 添加侧栏头像回到首页
# 匹配行前面加
sed '/<img class="site-author-image"/i <a href="/" class="site-author-image" rel="start" style="border:none">' -i $1/layout/_macro/sidebar.swig
# 匹配行后面加
sed '/alt="{{ theme.author }}" \/>/a </a>' -i $1/layout/_macro/sidebar.swig

# pangu.js自动空格
# 匹配行前面加
# sed '/<\/head>/i <script src="https://cdnjs.cloudflare.com/ajax/libs/pangu/3.3.0/pangu.min.js"></script>' -i $1/layout/_layout.swig
# 匹配行前面加
# sed '/<\/body>/i <script>pangu.spacingPage();</script>' -i $1/layout/_layout.swig

# H5播放器
# 匹配行前面加
# 当带有单引号时 把命令行变成双引号
sed "/<\/body>/i {% include '_my/audio.swig' %}" -i $1/layout/_layout.swig
cp -a HexoNext/_my $1/layout

# 脚注显示
# 匹配行前面加
cp HexoNext/custom.js $1/source/js
sed '/<\/body>/i <script type="text/javascript" src="/js/custom.js"></script>' -i $1/layout/_layout.swig

# 字体与超链接等其他样式
# Redefine custom file paths. Introduced in NexT v6.0.2.
# cp HexoNext/custom1.styl $1/source/css/_variables/custom.styl
# cp HexoNext/custom2.styl $1/source/css/_custom/custom.styl
# 增加footer-height
# sed 's/$footer-height                  = 50px/$footer-height                  = 100px/' -i $1/source/css/_variables/base.styl

# 正文居中
# 匹配行后面加
sed '/@import "sidebar\/sidebar-blogroll";/a @import "../Pisces/_posts";' -i $1/source/css/_schemes/Muse/index.styl

# 中文注释
# sed '/commonweal: 公益404/a hits: 热文\r navi: 导航\r comments: 留言板' -i $1/languages/zh-Hans.yml
cp HexoNext/zh-Hans.yml $1/languages/zh-hans.yml

# 注释文字闪动函数
# 匹配行前面加
sed '/#wechat:hover p/i /*' -i $1/source/css/_common/components/post/post-reward.styl
sed '/#bitcoin:hover p/i */' -i $1/source/css/_common/components/post/post-reward.styl