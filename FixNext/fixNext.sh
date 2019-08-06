#!/bin/bash
# ./fixNext.sh next_theme_dir
# for example put FixNext in hexo_dir and use: `FixNext/fixNext.sh themes/next`

# pull the lastest Next theme
# git clone https://github.com/theme-next/hexo-theme-next $1
rm -rf $1
git clone git@github.com:theme-next/hexo-theme-next.git $1
# git clone git@github.com:sli1989/hexo-theme-next.git themes/next

# auto install 3rd libs locally, use CDN verdor instead
# git clone https://github.com/theme-next/theme-next-pace $1/source/lib/pace

# fix Categories meta
# replace
sed "s/__('post.in')/__('post.in') + __('symbol.colon')/" -i $1/layout/_macro/post.swig
# add behind the matching row
sed '/symbol.comma/a \                  <span> > <\/span>' -i $1/layout/_macro/post.swig
# delete the matching row
sed -i '/symbol.comma/d' $1/layout/_macro/post.swig

# Click on the site-author-image to return to the homepage
# add in front of the matching row
sed '/<img class="site-author-image"/i <a href="/" class="site-author-image" rel="start" style="border:none">' -i $1/layout/_partials/sidebar/site-overview.swig
# add behind the matching row
sed '/alt="{{ theme.author }}" \/>/a </a>' -i $1/layout/_partials/sidebar/site-overview.swig

# H5 music player
# add in front of the matching row
# Turn the command line into double quotes when you have single quotes
sed "/<\/body>/i {% include '_my/audio.swig' %}" -i $1/layout/_layout.swig
cp -a FixNext/QPlayer/_my $1/layout

# display Footnotes 
# add in front of the matching row
cp FixNext/custom.js $1/source/js
sed '/<\/body>/i <script type="text/javascript" src="/js/custom.js"></script>' -i $1/layout/_layout.swig

# add new indexpage
# add behind the matching row
sed '/commonweal/a \  hits: 热文\n  navi: 导航\n  comments: 留言板' -i $1/languages/zh-CN.yml
# fix Categories meta
# replace
sed "s/分类于/分类/" -i $1/languages/zh-CN.yml
# replace the zh-CN
# cp FixNext/zh-CN.yml $1/languages/zh-CN.yml
