#!/usr/bin/perl

use strict;
use warnings;
use WWW::Curl::Easy;
use Data::Dumper;
use URI::Escape;
use WWW::Curl::Form;

my @cookies = (
    'PHPSESSID=6913a242e7854ecb7b3ec9ba4f5ed463WWd4d16985479e5a827f6c64c8c4660844b7834866632ba505bd4a1d97e6ee2b3e1340932684',
    'imunique=1340932684_ed0bb53e3df6f3b2b09b37520ad52271'
);

my @headers = ();
push(@headers, 'Host: www.dream-marriage.com');
push(@headers, 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:9.0.1) Gecko/20100101 Firefox/9.0.1 Iceweasel/9.0.1');
push(@headers, 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8');
push(@headers, 'Accept-Language: en-us,en;q=0.5');

push(@headers, 'Connection: keep-alive');
push(@headers, 'Referer: http://www.dream-marriage.com/messaging/write.php?receiver=1113130');
push(@headers, 'Cookie: '.join('; ', @cookies));

#push(@headers, 'Cache-Control: no-cache');
#push(@headers, 'Pragma: no-cache');
push(@headers, 'Expect: ');

my @receivers;
my $page = 0;
my $nextpage = '?online=men';
my @curr;
my $url;
my $stop = 0;

=cut1
do{

$url = 'http://www.dream-marriage.com/russian-women-gallery.php'.$nextpage;
$url =~ s/&amp;/&/sg;

my $curl = WWW::Curl::Easy->new;
$curl->setopt(CURLOPT_HEADER,0);
$curl->setopt(CURLOPT_HTTPHEADER, \@headers);
$curl->setopt(CURLOPT_URL, $url);

my $response_body = '';
$curl->setopt(CURLOPT_WRITEDATA,\$response_body);

my $retcode = $curl->perform;

if ($retcode != 0) {
    print "An error happened: $retcode ".$curl->strerror($retcode)." ".$curl->errbuf."\n";
    die;
}else{
	$response_body =~ m/<a\sclass='pg'style='color:\s#000055;\sfont-weight:\sbold'online=men&amp;data=[^\&]+&amp;online_dropdown=\d&amp;page=\d+&amp;ini=\d+'>\[\d+\]<\/a>&nbsp;<a\sclass='pg'\shref='([^']+)'>\[[^\]]+\]<\/a>/;
	$nextpage = $1;
	if(defined $nextpage){
    	@curr = ($response_body =~ m/\/messaging\/write\.php\?receiver\=(\d+)/g);
    	@receivers = (@curr, @receivers);
	}else{
		$stop = 1;
	}
    
}

}while(!$stop);

=cut

@receivers = (1143428 ,
368763 ,
353183 ,
714232 ,
449603 ,
698883 ,
605768 ,
653299 ,
1952363 ,
2176317 ,
41262 ,
116257 ,
2581189 ,
1733987 ,
1327651 ,
2540641 ,
44136 ,
395673 ,
2508710 ,
1301697 ,
50612 ,
459029 ,
347052 ,
1983783 ,
2676312 ,
1229549 ,
1683818 ,
1187617 ,
1420149 ,
107418 ,
357882 ,
1297961 ,
651829 ,
392947 ,
1399805 ,
1297434 ,
78177 ,
2182272 ,
2619260 ,
1466378 ,
2281669 ,
2670966 ,
840917 ,
1996139 ,
1425064 ,
814048 ,
38592 ,
825583 ,
644053 ,
1245668 ,
1087301 ,
350213 ,
371607 ,
2503200 ,
1758748 ,
2380260 ,
1168542 ,
2255601 ,
94328 ,
527748 ,
2072941 ,
708044 ,
53616 ,
1281493 ,
543481 ,
7353 ,
1391548 ,
2522717 ,
199283 ,
86407 ,
1485321 ,
1728458 ,
1696017 ,
2363931 ,
1855711 ,
1815891 ,
1618526 ,
1970533 ,
1542386 ,
2065272 ,
1876665 ,
1733354 ,
1991360 ,
742031 ,
1335233 ,
72307 ,
1708908 ,
2359915 ,
1137203 ,
2072941 ,
1624561 ,
2666846 ,
2261813 ,
486518 ,
447375 ,
1791736 ,
2002083 ,
546792 ,
1003008 ,
1370258 ,
2676549 ,
2205040 ,
1629814 ,
1740075 ,
1815891 ,
148903 ,
2235683 ,
10613 ,
2577360 ,
212719 ,
2631405 ,
45586 ,
2628366 ,
1933904 ,
855773 ,
2618402 ,
84027 ,
724659 ,
654302 ,
938827 ,
308813 ,
1887588 ,
2729728 ,
2466880 ,
2721461 ,
2543391 ,
628357 ,
1099303 ,
347977 ,
1961628 ,
107727 ,
2730336 ,
113357 ,
1128093 ,
98090 ,
2728615 ,
1255846 ,
13756 ,
734510 ,
2555589 ,
1787735 ,
491027 ,
2163807 ,
1296465 ,
94065 ,
37491 ,
87288 ,
1081025 ,
308813 ,
1887588 ,
285073 ,
1211509 ,
614771 ,
770851 ,
2684881 ,
1287796 ,
921503 ,
2096936 ,
2394594 ,
1978211 ,
327454 ,
1379117 ,
653560 ,
2700593 ,
1232104 ,
251021 ,
482190 ,
1904318 ,
610966 ,
1030125 ,
2727014 ,
265680 ,
129083 ,
2467467 ,
2413603 ,
2678588 ,
117352 ,
2705849 ,
462721 ,
1846922 ,
1491931 ,
2185029 ,
11598 ,
200926 ,
839257 ,
1219458 ,
290949 ,
2518574 ,
381494 ,
636506 ,
657004 ,
1090209 ,
771322 ,
458243 ,
930269 ,
2584830 ,
34768 ,
1856367 ,
926864 ,
1924093 ,
2071783 ,
1188889 ,
2707844 ,
1073572 ,
1345914 ,
2717190 ,
36013 ,
429583 ,
1926039 ,
1099419 ,
588388 ,
682886 ,
907194 ,
753481 ,
2725132 ,
2663051 ,
2389799 ,
1141275 ,
1134059 ,
876736 ,
451389 ,
751776 ,
1901688 ,
2560793 ,
2584830 ,
2534373 ,
1761685 ,
2082773 ,
2669210 ,
117907 ,
2275952 ,
4131 ,
462833 ,
1429879 ,
2362901 ,
1987110 ,
705484 ,
94936 ,
50731 ,
602021 ,
2720396 ,
403069 ,
101426 ,
2695162 ,
242879 ,
617903 ,
1667201 ,
2575849 ,
713484 ,
690079 ,
1180717 ,
878208 ,
1144867 ,
124330 ,
922219 ,
846578 ,
2182269 ,
1172710 ,
1861947 ,
442187 ,
2447221 ,
2457143 ,
469779 ,
1541782 ,
107480 ,
1317225 ,
2723789 ,
31773 ,
905335 ,
2720396 ,
491462 ,
22531 ,
1902976 ,
2068148 ,
1415869 ,
1826371 ,
430611 ,
1703893 ,
2720229 ,
2045584 ,
1866980 ,
2299903 ,
96178 ,
584495 ,
2675646 ,
66849 ,
1956747 ,
1634389 ,
273515 ,
1375669 ,
2443589 ,
22212 ,
493084 ,
1268491 ,
1282840 ,
152885 ,
1902585 ,
2081655 ,
483206 ,
2362430 ,
2585762 ,
1389518 ,
421526 ,
1844095 ,
2534445 ,
114730 ,
822499 ,
449683 ,
1518997 ,
1075255 ,
2590470 ,
513824 ,
27138 ,
246941 ,
8252 ,
1775124 ,
340740 ,
914969 ,
683640 ,
2279188 ,
2692830 ,
1222696 ,
435306 ,
1988656 ,
2685288 ,
23698 ,
693468 ,
2706533 ,
2045072 ,
422680 ,
1578743 ,
2469143 ,
645433 ,
401443 ,
271722 ,
1260894 ,
607664 ,
2054727 ,
2024269 ,
43417 ,
2712301 ,
1820311 ,
7755 ,
1167333 ,
2550875 ,
2598312 ,
295092 ,
2439767 ,
646208 ,
547853 ,
1100961 ,
1402149 ,
1732552 ,
344220 ,
525009 ,
2705678 ,
936344 ,
49727 ,
1583868 ,
590508 ,
1537281 ,
1095355 ,
2567878 ,
27669 ,
2546069 ,
2722497 ,
2340057 ,
1640247 ,
1785832 ,
1557361 ,
409927 ,
1212893 ,
1918383 ,
2037550 ,
927797 ,
408363 ,
2039106 ,
227595 ,
2495443 ,
2294000 ,
2644738 ,
1071814 ,
1759614 ,
70333 ,
1138167 ,
550531 ,
2693104 ,
2614116 ,
478426 ,
7659 ,
68890 ,
495923 ,
408363 ,
2039106 ,
227595 ,
922629 ,
2495443 ,
2644738 ,
2294000 ,
1071814 ,
70333 ,
1759614 ,
1138167 ,
550531 ,
2693104 ,
799184 ,
2708371 ,
844809 ,
2575617 ,
698672 ,
2648956 ,
993188 ,
1391228 ,
874066 ,
1996718 ,
2692969 ,
52038 ,
139196 ,
2623512 ,
68890 ,
2427127 ,
968623 ,
1211325 ,
354461 ,
992487 ,
1140626 ,
1685097 ,
2629703 ,
947608 ,
2161759 ,
1828368 ,
593626 ,
20379 ,
2504268 ,
768901 ,
1942411 ,
106682 ,
1238924 ,
489240 ,
410341 ,
29051 ,
932144 ,
396432 ,
2674191 ,
475475 ,
936236 ,
2582084 ,
2277048 ,
381941 ,
1335731 ,
2025856 ,
1965874 ,
1786916 ,
103895 ,
722074 ,
1668746 ,
2713664 ,
346567 ,
2178997 ,
478247 ,
381958 ,
400038 ,
436887 ,
2523414 ,
1942411 ,
454264 ,
1855918 ,
2397070 ,
36228 ,
742141 ,
2545624 ,
2451632 ,
2115148 ,
2039228 ,
1814599 ,
226475 ,
83184 ,
2284576 ,
728930 ,
2312921 ,
263076 ,
2325331 ,
530245 ,
2295037 ,
26135 ,
267710 ,
37065 ,
1533082 ,
2099858 ,
2643093 ,
87887 ,
1429685 ,
1424455 ,
2430297 ,
267161 ,
29716 ,
1335032 ,
1200356 ,
1236223 ,
2253827 ,
20624 ,
308868 ,
828622 ,
1183076 ,
1639116 ,
2606517 ,
659813 ,
450213 ,
104714 ,
2393443 ,
537558 ,
410374 ,
1103533 ,
798548 ,
105065 ,
1094346 ,
1215850 ,
2417405 ,
68975 ,
2672869 ,
722247 ,
2402868 ,
29716 ,
1335032 ,
1200356 ,
45807 ,
488233 ,
1120706 ,
1928834 ,
936179 ,
162381 ,
1638976 ,
471619 ,
92564 ,
6246 ,
1986013 ,
1986013 ,
341141 ,
450672 ,
537558 ,
);

=cut
print Dumper(@receivers);
print "\n";
print scalar(keys @receivers);
=cut

#my $message = 'Hi. How are you?';
my $message = 'Do you like Star Wars?
Or maybe you like to read?';

for my $receiver (@receivers){

	my $time = 4+int(rand(2));
	sleep($time);

	$url = 'http://www.dream-marriage.com/messaging/write.php?receiver='.$receiver;
	
	my $curl = WWW::Curl::Easy->new;
	$curl->setopt(CURLOPT_HEADER,0);
	$curl->setopt(CURLOPT_HTTPHEADER, \@headers);
	$curl->setopt(CURLOPT_URL, $url);

	my $response_body = '';
	$curl->setopt(CURLOPT_WRITEDATA,\$response_body);

	my $draftid = '';
	my $name ='';

	my $retcode = $curl->perform;

	if ($retcode != 0) {
	    print "An error happened: $retcode ".$curl->strerror($retcode)." ".$curl->errbuf."\n";
	    die;
	}else{
		$response_body =~ m/<input type="hidden" name="draftid" id="draftid" value="(\d+)" \/>/;
		$draftid = $1;
		$response_body =~ m/<div class="bluebar">Write Message to ([^<]+)<\/div>/;
		$name = $1;
	}		

	$curl = WWW::Curl::Easy->new;
	$curl->setopt(CURLOPT_HEADER,1);
	$curl->setopt(CURLOPT_HTTPHEADER, \@headers);
	$curl->setopt(CURLOPT_URL, $url);

	$response_body = '';
	$curl->setopt(CURLOPT_WRITEDATA,\$response_body);

    my $curlf = WWW::Curl::Form->new;
    $curlf->formadd("__tcAction[send]", "Send");
    $curlf->formadd("draftid", $draftid);
    $curlf->formadd("receiver", $receiver);
    $curlf->formadd("sender", "2604151");
    $curlf->formadd("replyId", "");
    $curlf->formadd("which_message", "plain_message");
    $curlf->formadd("plain_message", 'Hello, '.$name.'. '.$message);
    $curlf->formadd("message", "<br />\r\n");
    $curl->setopt(CURLOPT_HTTPPOST, $curlf);

	$retcode = $curl->perform;

	if ($retcode != 0) {
	    print "An error happened: $retcode ".$curl->strerror($retcode)." ".$curl->errbuf."\n";
	    die;
	}else{
		my $response_code = $curl->getinfo(CURLINFO_HTTP_CODE);

		my $curl = WWW::Curl::Easy->new;
		$curl->setopt(CURLOPT_HEADER,0);
		$curl->setopt(CURLOPT_HTTPHEADER, \@headers);
		$curl->setopt(CURLOPT_URL, 'http://www.dream-marriage.com/messaging/inbox.php?mode=sent&q=');

		my $response_body = '';
		$curl->setopt(CURLOPT_WRITEDATA,\$response_body);

		my $draftid = '';

		my $retcode = $curl->perform;

		$retcode = $curl->perform;

		if ($retcode != 0) {
		    print "An error happened: $retcode ".$curl->strerror($retcode)." ".$curl->errbuf."\n";
		    die;
		}else{

			$response_body =~ m/<li id="actionNotice">([^\r\n]+)<\/li>/;
			my $notice = $1;

			if(defined $notice){
				print "Notice: ".$notice."; For User ".$receiver;
			}else{
				print "Message to ".$receiver." sent";
			}

			print "\n";
		}

	}

}