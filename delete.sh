#!/bin/bash
deleteCoupon() {
	page=$1
	echo "=====begin to delete page is ${page} =======";
	cc=`echo $2 | sed -e "s/page=1/page=${page}/"`
	curl="/usr/bin/"$cc
	eval $curl > /tmp/page$page
	ids=`cat /tmp/page${page}|grep cid=|awk '{print $5}' | awk -F'"' '{print $2}'`
	##echo $ids;
	token1=`cat /tmp/page${page} | awk -F"'" '{print $6}'`
	token=`echo $token1 | awk '{print $1}'`
	##echo $token;
	for id in $ids 
	do
		deleteurl="https:\/\/taoquan.taobao.com\/coupon\/resultMessage.htm?action=coupon%2FcouponUnifyAction\&event_submit_doDeleteBuyerCoupon=true\&_tb_token_=${token}\&ctype=0\&cid=${id}";
		deleteComand=`echo $2 | sed -e "s/https:\/\/taoquan.taobao.com\/coupon\/list_my_coupon.htm.*page=1/${deleteurl}/"`
		eval $deleteComand
	done
}





command=$1

for (( i = 1; i <= 100; i++ )); do
	deleteCoupon $i "${command}";
done






