#!/bin/bash

mkdir -p /root/tools /root/tools/file;
clear;

SUBDOMAINS_ENUMERATION () {
       #Golang
	echo -e ${BLUE}"[SUBDOMAINS ENUMERATION]" ${RED}"Golang installation in progress ...";
	cd /root/tools/file && wget https://go.dev/dl/go1.20.5.linux-amd64.tar.gz && tar -zxvf go1.20.5.linux-amd64.tar.gz -C /usr/local/ && mkdir ~/.go && GOROOT=/usr/local/go && GOPATH=~/.go && PATH=$PATH:$GOROOT/bin:$GOPATH/bin && update-alternatives --install "/usr/bin/go" "go" "/usr/local/go/bin/go" 0 && update-alternatives --set go /usr/local/go/bin/go;
	echo -e ${BLUE}"[SUBDOMAINS ENUMERATION]" ${GREEN}"Golang installation is done !"; echo "";

	#Subfinder
	echo -e ${BLUE}"[SUBDOMAINS ENUMERATION]" ${RED}"Subfinder installation in progress ...";
	GO111MODULE=on go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest > /dev/null 2>&1 && ln -s ~/go/bin/subfinder /usr/local/bin/ && go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@introduce_pagination_to_st;
	echo -e ${BLUE}"[SUBDOMAINS ENUMERATION]" ${GREEN}"Subfinder installation is done !"; echo "";

	#Assetfinder
	echo -e ${BLUE}"[SUBDOMAINS ENUMERATION]" ${RED}"Assetfinder installation in progress ...";
	go install github.com/tomnomnom/assetfinder@latest > /dev/null 2>&1 && ln -s ~/go/bin/assetfinder /usr/local/bin/;
	echo -e ${BLUE}"[SUBDOMAINS ENUMERATION]" ${GREEN}"Assetfinder installation is done !"; echo "";

	#Github-subdomains
	echo -e ${BLUE}"[SUBDOMAINS ENUMERATION]" ${RED}"Github-subdomains installation in progress ...";
	go install github.com/gwen001/github-subdomains@latest  > /dev/null 2>&1 && ln -s ~/go/bin/github-subdomains /usr/local/bin/;
	echo -e ${BLUE}"[SUBDOMAINS ENUMERATION]" ${GREEN}"Github-subdomains installation is done !"; echo "";

	#Amass
	echo -e ${BLUE}"[SUBDOMAINS ENUMERATION]" ${RED}"Amass installation in progress ...";
	go install -v github.com/owasp-amass/amass/v4/...@master > /dev/null 2>&1 && ln -s ~/go/bin/amass /usr/local/bin/ && cd && cd .config && mkdir amass && cd amass && wget https://raw.githubusercontent.com/owasp-amass/amass/master/examples/config.yaml && wget https://raw.githubusercontent.com/owasp-amass/amass/master/examples/datasources.yaml;
	echo -e ${BLUE}"[SUBDOMAINS ENUMERATION]" ${GREEN}"Amass installation is done !"; echo "";

	#Crobat
	echo -e ${BLUE}"[SUBDOMAINS ENUMERATION]" ${RED}"Crobat installation in progress ...";
	go install github.com/cgboal/sonarsearch/cmd/crobat@latest > /dev/null 2>&1 && ln -s ~/go/bin/crobat /usr/local/bin/;
	echo -e ${BLUE}"[SUBDOMAINS ENUMERATION]" ${GREEN}"Crobat installation is done !"; echo "";

	#chaos
	echo -e ${BLUE}"[SUBDOMAINS ENUMERATION]" ${RED}"chaos installation in progress ...";
	go install -v github.com/projectdiscovery/chaos-client/cmd/chaos@latest > /dev/null 2>&1 && ln -s ~/go/bin/chaos /usr/local/bin/;
	echo -e ${BLUE}"[SUBDOMAINS ENUMERATION]" ${GREEN}"chaos installation is done !"; echo "";

	#gotator
	echo -e ${BLUE}"[SUBDOMAINS ENUMERATION]" ${RED}"gotator installation in progress ...";
	go install github.com/Josue87/gotator@latest > /dev/null 2>&1 && ln -s ~/go/bin/gotator /usr/local/bin/;
	echo -e ${BLUE}"[SUBDOMAINS ENUMERATION]" ${GREEN}"gotator installation is done !"; echo "";
}

DNS_RESOLVER () {
	#dnsx
	echo -e ${BLUE}"[DNS RESOLVER]" ${RED}"dnsx installation in progress ...";
	GO111MODULE=on go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest > /dev/null 2>&1 && ln -s ~/go/bin/dnsx /usr/local/bin/;
	echo -e ${BLUE}"[DNS RESOLVER]" ${GREEN}"dnsx installation is done !"; echo "";

	#dnsvalidator
	echo -e ${BLUE}"[DNS RESOLVER]" ${RED}"DNSvalidator installation in progress ...";
	cd /root/OK-VPS/tools && git clone https://github.com/vortexau/dnsvalidator.git && cd dnsvalidator && python3 setup.py install &&  pip3 install contextvars && pip3 install -e . && ln -s /root/tools/dnsvalidator/dnsvalidator /usr/local/bin/;
	echo -e ${BLUE}"[DNS RESOLVER]" ${GREEN}"DNSvalidator installation is done !"; echo "";
	#resolver
	#echo -e ${BLUE}"[DNS RESOLVER]" ${RED}"SHuffleDNS installation in progress ...";
        #dnsvalidator -tL https://public-dns.info/nameservers.txt -threads 200 -o /root/wordlist/resolvers.txt;
	#echo -e ${BLUE}"[DNS RESOLVER]" ${GREEN}"SHuffelDNS installation is done !"; echo ""; 
}

VISUAL_tools () {
	#Aquatone
	echo -e ${BLUE}"[VISUAL /root/OK-VPS/tools]" ${RED}"Aquatone installation in progress ...";
	cd /root/tools/file && wget install https://github.com/michenriksen/aquatone/releases/download/v$AQUATONEVER/aquatone_linux_amd64_$AQUATONEVER.zip > /dev/null 2>&1 && unzip aquatone_linux_amd64_$AQUATONEVER.zip > /dev/null 2>&1 && mv aquatone /usr/local/bin/;
	echo -e ${BLUE}"[VISUAL /root/OK-VPS/tools]" ${GREEN}"Aquatone installation is done !"; echo "";
}

HTTP_PROBE () {
	#httpx
	echo -e ${BLUE}"[HTTP PROBE]" ${RED}"httpx installation in progress ...";
	GO111MODULE=on go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest > /dev/null 2>&1 && ln -s ~/go/bin/httpx /usr/local/bin/;
	echo -e ${BLUE}"[HTTP PROBE]" ${GREEN}"Httpx installation is done !"; echo "";
}

WEB_CRAWLING () {
	#Gospider
	echo -e ${BLUE}"[WEB CRAWLING]" ${RED}"Gospider installation in progress ...";
	go install github.com/jaeles-project/gospider@latest > /dev/null 2>&1 && ln -s ~/go/bin/gospider /usr/local/bin/;
	echo -e ${BLUE}"[WEB CRAWLING]" ${GREEN}"Gospider installation is done !"; echo "";
	#Hakrawler
	echo -e ${BLUE}"[WEB CRAWLING]" ${RED}"Hakrawler installation in progress ...";
	go install github.com/hakluke/hakrawler@latest > /dev/null 2>&1 && ln -s ~/go/bin/hakrawler /usr/local/bin/;
	echo -e ${BLUE}"[WEB CRAWLING]" ${GREEN}"Hakrawler installation is done !"; echo "";

	#katana
	echo -e ${BLUE}"[WEB CRAWLING]" ${RED}"freq installation in progress ...";
	go install github.com/projectdiscovery/katana/cmd/katana@latest > /dev/null 2>&1 && ln -s ~/go/bin/katana /usr/local/bin/; 
        echo -e ${BLUE}"[WEB CRAWLING]" ${GREEN}"freq installation in progress ...";

	#GF
	echo -e ${BLUE}"[WEB CRAWLING]" ${RED}"GF installation in progress ...";
	go install github.com/tomnomnom/gf@latest > /dev/null 2>&1 && ln -s ~/go/bin/gf /usr/local/bin/;
	echo -e ${BLUE}"[WEB CRAWLING]" ${GREEN}"GF installation in progress ...";

	#GF_P
	echo -e ${BLUE}"[WEB CRAWLING]" ${RED}"GF_P installation in progress ...";
        cd &&  mkdir -p .gf && cd /root/tools/file && git clone https://github.com/tomnomnom/gf && cd /root/tools/file/gf/examples && cp *.json $HOME/.gf && cd /root/tools/file && git clone https://github.com/1ndianl33t/Gf-Patterns && cd /root/tools/file/Gf-Patterns && wget https://raw.githubusercontent.com/mrco24/Patterns/main/my-lfi.json && cp *.json $HOME/.gf;	echo -e ${BLUE}"[WEB CRAWLING]" ${GREEN}"GF_P installation in progress ...";

	#uro
	echo -e ${BLUE}"[WEB CRAWLING]" ${RED}"GF_P installation in progress ...";
	cd /root/tools/file && wget https://github.com/s0md3v/uro/archive/refs/tags/1.0.0-beta.zip && unzip 1.0.0-beta.zip && cd uro-1.0.0-beta && python3 setup.py install && cp -r  uro /usr/bin; 
	echo -e ${BLUE}"[WEB CRAWLING]" ${GREEN}"GF_P installation in progress ...";
}

NETWORK_SCANNER () {
	#naabu
	echo -e ${BLUE}"[NETWORK SCANNER]" ${RED}"Naabu installation in progress ...";
	GO111MODULE=on go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest > /dev/null 2>&1 && ln -s ~/go/bin/naabu /usr/local/bin/;
	echo -e ${BLUE}"[NETWORK SCANNER]" ${GREEN}"Naabu installation is done !"; echo "";
}

SSRF_TOOLS () {
	#Interactsh
	echo -e ${BLUE}"[SSRF TOOLS]" ${RED}"Interactsh installation in progress ...";
	GO111MODULE=on go install -v github.com/projectdiscovery/interactsh/cmd/interactsh-client > /dev/null 2>&1 && ln -s ~/go/bin/interactsh-client /usr/local/bin/;
	echo -e ${BLUE}"[SSRF TOOLS]" ${GREEN}"Interactsh installation is done !"; echo "";
}

JS_HUNTING () {
	#Linkfinder
	echo -e ${BLUE}"[JS FILES HUNTING]" ${RED}"Linkfinder installation in progress ...";
	cd /root/OK-VPS/tools && git clone https://github.com/GerbenJavado/LinkFinder.git > /dev/null 2>&1 && cd LinkFinder && pip3 install -r requirements.txt > /dev/null 2>&1 && python3 setup.py install > /dev/null 2>&1;
	echo -e ${BLUE}"[JS FILES HUNTING]" ${GREEN}"Linkfinder installation is done !"; echo "";
	#SecretFinder
	echo -e ${BLUE}"[JS FILES HUNTING]" ${RED}"SecretFinder installation in progress ...";
	cd /root/OK-VPS/tools && git clone https://github.com/m4ll0k/SecretFinder.git > /dev/null 2>&1 && cd SecretFinder && pip3 install -r requirements.txt && pip3 install jsbeautifier && pip3 install lxml > /dev/null 2>&1;
	echo -e ${BLUE}"[JS FILES HUNTING]" ${GREEN}"SecretFinder installation is done !"; echo "";
	#subjs
	echo -e ${BLUE}"[JS FILES HUNTING]" ${RED}"subjs installation in progress ...";
	wget https://github.com/lc/subjs/releases/download/v1.0.1/subjs_1.0.1_linux_amd64.tar.gz && tar xvf subjs_1.0.1_linux_amd64.tar.gz && mv subjs /usr/bin/subjs;
	echo -e ${BLUE}"[JS FILES HUNTING]" ${GREEN}"subjs installation is done !"; echo "";
	#Getjs
	echo -e ${BLUE}"[JS FILES HUNTING]" ${RED}"Getjs installation in progress ...";
	go install github.com/003random/getJS@latest > /dev/null 2>&1 && ln -s ~/go/bin/getJS /usr/local/bin/;
	echo -e ${BLUE}"[JS FILES HUNTING]" ${GREEN}"Getjs installation in progress ...";
	#jsscanner
	echo -e ${BLUE}"[JS FILES HUNTING]" ${RED}"Jsscanner installation in progress ...";
	cd /root/OK-VPS/tools && git clone https://github.com/dark-warlord14/JSScanner > /dev/null 2>&1 && cd JSScanner/ && bash install.sh > /dev/null 2>&1;
	echo -e ${BLUE}"[JS FILES HUNTING]" ${GREEN}"Jsscanner installation in progress ...";
}

GIT_HUNTING() {
	#GitDorker
	echo -e ${BLUE}"[GIT HUNTING]" ${RED}"gitGraber installation in progress ...";
	cd /root/OK-VPS/tools && git clone https://github.com/obheda12/GitDorker.git > /dev/null 2>&1 && cd GitDorker && pip3 install -r requirements.txt > /dev/null 2>&1;
	echo -e ${BLUE}"[GIT HUNTING]" ${GREEN}"gitGraber installation is done !"; echo "";
	#gitGraber
	echo -e ${BLUE}"[GIT HUNTING]" ${RED}"gitGraber installation in progress ...";
	cd /root/OK-VPS/tools && git clone https://github.com/hisxo/gitGraber.git > /dev/null 2>&1 && cd gitGraber && pip3 install -r requirements.txt > /dev/null 2>&1;
	echo -e ${BLUE}"[GIT HUNTING]" ${GREEN}"gitGraber installation is done !"; echo "";
	#GitHacker
	echo -e ${BLUE}"[GIT HUNTING]" ${RED}"GitHacker installation in progress ...";
	pip3 install GitHacker > /dev/null 2>&1;
	echo -e ${BLUE}"[GIT HUNTING]" ${GREEN}"GitHacker installation is done !"; echo "";
	#GitTools
	echo -e ${BLUE}"[GIT HUNTING]" ${RED}"GitToolsinstallation in progress ...";
	cd /root/OK-VPS/tools && git clone https://github.com/internetwache/GitTools.git > /dev/null 2>&1;
	echo -e ${BLUE}"[GIT HUNTING]" ${GREEN}"GitTools installation is done !"; echo "";
}

USEFUL_TOOLS () {
        #Notify
	echo -e ${BLUE}"[USEFUL TOOLS]" ${RED}"tok installation in progress ...";
	go install -v github.com/projectdiscovery/notify/cmd/notify@latest > /dev/null 2>&1 && ln -s ~/go/bin/notify /usr/local/bin/;
	echo -e ${BLUE}"[USEFUL TOOLS]" ${GREEN}"tok installation is done !"; echo "";

	#unfurl
	echo -e ${BLUE}"[USEFUL TOOLS]" ${RED}"unfurl installation in progress ...";
	go install github.com/tomnomnom/unfurl@latest > /dev/null 2>&1 && ln -s ~/go/bin/unfurl /usr/local/bin/;
	echo -e ${BLUE}"[USEFUL TOOLS]" ${GREEN}"unfurl installation is done !"; echo "";

	#anew
	echo -e ${BLUE}"[USEFUL TOOLS]" ${RED}"anew installation in progress ...";
	go install github.com/tomnomnom/anew@latest > /dev/null 2>&1 && ln -s ~/go/bin/anew /usr/local/bin/;
	echo -e ${BLUE}"[USEFUL TOOLS]" ${GREEN}"anew installation is done !"; echo "";

	#qsreplace
	echo -e ${BLUE}"[USEFUL TOOLS]" ${RED}"qsreplace installation in progress ...";
	go install github.com/tomnomnom/qsreplace@latest > /dev/null 2>&1 && ln -s ~/go/bin/qsreplace /usr/local/bin/;
	echo -e ${BLUE}"[USEFUL TOOLS]" ${GREEN}"qsreplace installation is done !"; echo "";

	#Jq
	echo -e ${BLUE}"[USEFUL TOOLS]" ${RED}"jq installation in progress ...";
	apt-install install -y jq > /dev/null 2>&1;
	echo -e ${BLUE}"[USEFUL TOOLS]" ${GREEN}"jq installation is done !" ${RESTORE}; echo "";

	#cf_check
	echo -e ${BLUE}"[USEFUL TOOLS]" ${RED}"jq installation in progress ...";
	go install github.com/dwisiswant0/cf-check@latest > /dev/null 2>&1 && ln -s ~/go/bin/cf-check /usr/local/bin/;
	echo -e ${BLUE}"[USEFUL TOOLS]" ${GREEN}"jq installation is done !" ${RESTORE}; echo "";

	#Tmux
	echo -e ${BLUE}"[USEFUL TOOLS]" ${RED}"Tmux installation in progress ...";
	apt-install install tmux -y > /dev/null 2>&1;
	echo -e ${BLUE}"[USEFUL TOOLS]" ${GREEN}"Tmux installation is done !"; echo "";

	#Uro
	echo -e ${BLUE}"[USEFUL TOOLS]" ${RED}"Uro installation in progress ...";
	pip3 install uro > /dev/null 2>&1;
	echo -e ${BLUE}"[USEFUL TOOLS]" ${GREEN}"Uro installation is done !" ${RESTORE}; echo "";
}

SUBDOMAINS_ENUMERATION && DNS_RESOLVER && VISUAL_tools && HTTP_PROBE && WEB_CRAWLING && NETWORK_SCANNER && HTTP_PARAMETER && FUZZING_TOOLS && LFI_TOOLS && SSRF_TOOLS && SSTI_TOOLS && API_TOOLS && WORDLISTS && VULNS_XSS && VULNS_SQLI && CMS_SCANNER && VULNS_SCANNER && JS_HUNTING && GIT_HUNTING  && SENSITIVE_FINDING && USEFUL_TOOLS;
