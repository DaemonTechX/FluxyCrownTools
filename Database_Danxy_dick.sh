#!/bin/bash

# ---------- WARNA ----------
NC="\033[0m"
GREEN='\033[1;92m'  RED='\033[1;91m'  YELLOW='\033[1;93m'
CYAN='\033[1;96m'   MAGENTA='\033[1;95m'
BG_GREEN='\033[1;42m' BG_RED='\033[1;41m' BG_YELLOW='\033[1;43m'

# DATABASE WHOAMIN
USER_MAP=(
    "6285755271552|u0_a363"
    "6282287325642|u0_a368"
    "1|u0_a211"
    "6285191294407|u0_a385"
    "6281316526979|u0_a317"
    "6281228496424|u0_a288"
    "6288235765242|u0_a292"
    "6281212723739|u0_a131"
    "6281253506500|u0_a449"
    "6288707081601|u0_a469"
    "6281280109049|u0_a184"
    "6282120873066|u0_a238"
    "6285846066185|u0_a312"
    "Danxy|u0_a388"
    "6287866715150|u0_a326"
    "6287769011377|u0_a449"
    "6281385544726|u0_a719"
    "6288212286740|u0_a778"
    "6283121892414|u0_a166"
    "6285298624517|u0_a928"
    "6285777740915|u0_a269"
    "62882005817504|u0_a488"
    "Yeka_v4|u0_a681"
    "6288227903186|u0_a357"
    "62895328081275|u0_a533"
    "62895373855888|u0_a244"
    "6283816164817|u0_a389"
    "6285147052178|u0_a393"
    "6285248300233|u0_a637"
    "6282245308912|u0_a264"
    "6281291606812|u0_a456"
    "6289531074644|u0_a340"
    "6283838489595|u0_a368"
    "Vaboo|u0_a257"
    "60175638350|u0_a417"
    "Yama|u0_a358"
    "628895876624|u0_a525"
    "62895706820010|u0_a299"
    "6282340319193|u0_a707"
    "6289654401357|u0_a352"
    "6289515677473|u0_a401"
    "62895424279134|u0_a337"
    "6283143726466|u0_a892"
    "62882006011680|u0_a307"
    "6281330870931|u0_a307"
    "6281342441206|u0_a405"
    "6285846465686|u0_a304"
    "6285253902283|u0_a330"
    "6283193430005|u0_a1347"
    "628985719345|u0_a2817"
    "6283863044931|u0_a289"
    "6289520097575|u0_a637"
    "62881036634561|u0_a313"
    "6285545106806|u0_a1096"
    "628983807869|u0_a541"
    "6285779003481|u0_a285"
    "62881080593445|u0_a413"
    "6287718005190|u0_a307"
    "6282290802005|u0_a308"
    "6283141623081|u0_a226"
    "6283152408486|u0_a357"
    "6285263278115|u0_a536"
    "6283139373311|u0_a265"
    "6282190080105|u0_a311"
    "62881026705887|u0_a517"
    "6285647379391|u0_a209"
    "6285246491414|u0_a441"
    "6283161574103|u0_a192"
    "6283144811104|u0_a393"
    "6287810951618|u0_a238"
    "@Razor|u0_a485"
                    # <-- masukkan nama|whoami baru di sini
)
# ---------- FUNGSI ----------
banner() {
#clear
#sl
#echo -e "                  ${BG_RED}DANXY TOOLS V8.4${NC}"
#sleep 2
clear
echo -e "${GREEN}
┏━━━━━━━━━━${RED}● ${GREEN}[${YELLOW}LICENSE${GREEN}]${RED} ●${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━┓
┃                                                ┃
${GREEN}┃     ${YELLOW} ▄▀▀▀▄${NC}                                     ${GREEN}┃
${GREEN}┃     ${YELLOW} █   █${MC}                                     ${GREEN}┃
${GREEN}┃     ${YELLOW}███████${NC}         ▄▀▀▄  ${RED}|${NC}  ╦  ╔═╗╔═╗╦╔╗╔     ${GREEN}┃
${GREEN}┃     ${CYAN}██─▀─██${NC}  █▀█▀▀▀▀█  █  ${RED}|${NC}  ║  ║ ║║ ╦║║║║     ${GREEN}┃
${GREEN}┃     ${CYAN}███▄███${NC}  ▀ ▀     ▀▀   ${RED}|${NC}  ╩═╝╚═╝╚═╝╩╝╚╝     ${GREEN}┃
${GREEN}┃     ${RED}-------------------------${NC} ${YELLOW}2024${NC} ${RED}-${NC} ${YELLOW}2025${NC}      ${GREEN}┃
${GREEN}┃             ${GREEN}${BOLD}TOOLS BY DANXY OFFICIAL${GREEN}            ┃
┃              ${RED}___________${YELLOW}___________${GREEN}            ┃
┃                                                ┃
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
${RED}┃          ${YELLOW}YT${RED}: ${GREEN}DanxyBot ${YELLOW}TT${RED}: ${GREEN}Qwela.38${RED}             ┃
${RED}┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛${NC}"
echo -e "    ${BG_RED}${YELLOW}WELCOME TO REGRISTRASI & LOGAIN TOOLS DANXY${NC}"
  echo -e "${BOLD}${BLINK}${RED}"
  echo -e "${GREEN}"
}
echo -e "${NC}"
login_by_name() {
    banner
    echo -e "${BG_GREEN}${RED} LOGIN DENGAN NAMA${NC}\n"

    read -rp "[ ! ] MASUKAN NOMOR/NAMA ANDA UNTUK LOGIN : " nama

    # Cari whoami berdasarkan nama
    expected_who=""
    for pair in "${USER_MAP[@]}"; do
        IFS='|' read -r n w <<< "$pair"
        if [[ "$n" == "$nama" ]]; then
            expected_who="$w"
            break
        fi
    done

    if [[ -z "$expected_who" ]]; then
        echo -e "\n${RED}Nama \"$nama\" belum terdaftar!${NC}"
        sleep 2
        return
    fi

    current_who=$(whoami)
    if [[ "$expected_who" == "$current_who" ]]; then
        echo -e "\n${GREEN}[ ✓ ] LOGIN BERHASIL SELAMAT DATANG, $nama.${NC}"
        sleep 1
        bash <(curl -sL "https://raw.githubusercontent.com/11404d/1/refs/heads/main/DanxyAja.sh")
    else
        echo -e "\n${RED}[ ∅ ] PERANGKAT TIDAK COCOK UNTUK ID INI\"$nama\".${NC}"
        echo -e "${YELLOW}ID ANDA AYO BURUAN MINTA AKSES : $current_who${NC}"
        sleep 3
    fi
}

get_whoami() {
    banner
    echo -e "${BG_YELLOW}${RED}SALIN ID USER WARNA HIJAU DI BAWAH INI 
DAN KASI KE DANXY!!${NC}\n"
    echo -e "${GREEN}$(whoami)${NC}\n"
    echo -e "\n${BG_RED}${YELLOW}ID ANDA DI ATAS DI GUNAKAN UNTUK
MENDAFTARKAN ANDA KE DATABASE${NC}\n"
    read -rp "TEKAN ENTER UNTIK KEMBALI KE MENU LOGIN"
}

main_menu() {
    while true; do
        banner
        echo -e "${RED}           ┏━━━━━━━━━━━━━━━━━━━━━━━━━┓${NC}"
        echo -e "${RED}           ┃                         ┃${NC}"
        echo -e "${GREEN}┏━━━━━━━━━━┴━━━━━━━━━━┓${NC}    ${GREEN}┏━━━━━━━━━┴━━━━━━━━━━━┓${NC}"
        echo -e "${GREEN}┃${BG_RED}${YELLOW}MENU LOGIN TOOLS V8.4${NC}${GREEN}┃${NC}    ${GREEN}┃   ${BG_RED}${YELLOW}INFORMASI TOOLS${NC}${GREEN}   ┃${NC}"
        echo -e "${GREEN}┏━━━━━━━━━━━━━━━━━━━━━┓${NC}    ${GREEN}┏━━━━━━━━━━━━━━━━━━━━━┓${NC}"
        echo -e "${GREEN}┃${CYAN}1)${NC} ${GREEN}LOGIN             ${GREEN}┃${NC}    ${GREEN}┃${NC} ${GREEN}TRACKING            ${GREEN}┃${NC}"
        echo -e "${GREEN}┃${CYAN}2)${NC} ${YELLOW}DAPATKAN ID ANDA  ${GREEN}┃${NC}    ${GREEN}┃${NC} ${YELLOW}OSIN                ${GREEN}┃${NC}"
        echo -e "${GREEN}┃${CYAN}3)${NC} ${RED}Keluar            ${GREEN}┃${NC}    ${GREEN}┃${NC} ${RED}PHISING             ${GREEN}┃${NC}"
        echo -e "${GREEN}┗━━━━━━━━━━━━━━━━━━━━━┛${NC}    ${GREEN}┗━━━━━━━━━━━━━━━━━━━━━┛${NC}"
        echo -e "${GREEN}      ┃                                    ┃${NC}"
        echo -e "${GREEN}      ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛${NC}"
        echo -e "${GREEN}● ${YELLOW}● ${RED}●${YELLOW}"
        read -rp "PILIH [1-3] : " pilih
        echo -e "${NC}"

        case $pilih in
            1) login_by_name ;;
            2) get_whoami ;;
            3) echo "Bye!"; exit 3 ;;
            *) echo -e "${RED}Pilihan salah!${NC}"; sleep 1 ;;
        esac
    done
}


main_menu
