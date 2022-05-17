#! /bin/bash

#####################################################################################
# Author    : J.Mx                                                                  #
# Homepage  : id9502.github.io                                                      #
# Date      : 2016-06-03                                                            #
#                                                                                   #
# Usage     :                                                                       #
#                                                                                   #
#             to make it executable, use command: chmod +x <this/name>.sh           #
#                                                                                   #
#             for getting the result, run this script in a shell window like bash,  #
#             instead of click it directly                                          #
#####################################################################################
#说明：目前只支持Mac及Linux，使用前先在shell(Linux)或terminal(Mac)里面输入：
#chmod +x(+号保留),再输入一个空格，再将文件本文件拖拽至shell or terminal里面，回车。
#之后直接将文件本文件拖拽至shell or terminal里面，回车。
#注：如果Mac出现提示权限不够，命令前面输入sudo和空格
#####################################################################################

cd "`dirname "$0"`"

printf "Chinese characters count (with punctuation):\n\n"

for path in $(ls ../XJTU-BSThesis_latex_2016/*.tex)
do
  only_char=`sed 's/%.*$//' $path | tr -d "\40-\177[:cntrl:]" | wc -m`
  printf "%-15s >> %d\n" $path $only_char
done
