Algoritmo "semnome"
// Disciplina  : Introdução às Tecnologias de Informática e Comunicações
// Docente     : João Metambo
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor       : Berto Timana
// Data atual  : 7/28/2021
Var

   // Seção de Declarações das variáveis
   nome_do_pai, nome_da_mae, naturalidade, curso, curs, nivel, datam, nota1, nota2, nota3, nota4, media1, media, estado : vetor[1..100] de caractere
   codigos, senhas, nomes, data_nascimento, sexo, nacionalidade, email, visto, saldo1, saldo2, cor_c, cor_f : vetor[1..112] de caractere
   notificacoes_a, notificacoes_b, notificacoes_c, notificacoes_d, notificacoes_e, notificacoes_f, notificacoes_g, notificacoes_h, notificacoes_i, notificacoes_j, notificacoes_k, notificacoes_l, notificacoes_m, notificacoes_n, notificacoes_o, notificacoes_p, notificacoes_q, notificacoes_r, notificacoes_s, notificacoes_t, notificacoes_u, notificacoes_v, notificacoes_w, notificacoes_x, notificacoes_y : vetor[1..112] de caractere
   textoorg_a, textoorg_b, textoorg_c, textoorg_d, textoorg_e, textoorg_f, textoorg_g, textoorg_h, textoorg_i, textoorg_j, textoorg_k, textoorg_l, textoorg_m, textoorg_n, textoorg_o, textoorg_p, textoorg_q, textoorg_r, textoorg_s, textoorg_t, textoorg_u, textoorg_v, textoorg_w, textoorg_x, textoorg_y : vetor[1..112] de caractere
   em_a, em_b, em_c, em_d, em_e, em_f, em_g, em_h, em_i, em_j, em_k, em_l, em_m, em_n, em_o, em_p, em_q, em_r, em_s, em_t, em_u, em_v, em_w, em_x, em_y : vetor[1..112] de inteiro
   noti, num_email : vetor[1..112] de inteiro
   cadeiradoc, desdedoc, abr : vetor[101..112] de caractere
   nota_eb1, nota_eb2, nota_eb3, nota_eb4, nota_fg1, nota_fg2, nota_fg3, nota_fg4, nota_itic1, nota_itic2, nota_itic3, nota_itic4, nota_mehv1, nota_mehv2, nota_mehv3, nota_mehv4, nota_mb1, nota_mb2, nota_mb3, nota_mb4, nota_alga1, nota_alga2, nota_alga3, nota_alga4, nota_ami1, nota_ami2, nota_ami3, nota_ami4 : vetor[1..80] de caractere
   nota_ego1, nota_ego2, nota_ego3, nota_ego4 : vetor[1..32] de caractere
   nota_ed1, nota_ed2, nota_ed3, nota_ed4, nota_pe1, nota_pe2, nota_pe3, nota_pe4 : vetor[76..79] de caractere
   nota_ltc1, nota_ltc2, nota_ltc3, nota_ltc4, nota_ii1, nota_ii2, nota_ii3, nota_ii4 : vetor[51..54] de caractere
   avaliado1, avaliado2, avaliado3, avaliado4, inic_av1, inic_av2, inic_av3, inic_av4 : vetor[101..112] de logico
   espacom: vetor[1..16] de caractere
   recomendacao : vetor[1..12] de caractere
   espacod : vetor[1..12] de caractere
   nomeav, notaav1, notaav2, notaav3, notaav4, mediaav1, mediaav, espacoav1, espacoav2, espacoav2b, espacoav3, espacoav4, espacoav4b, espacoav5 : vetor[1..22] de caractere
   pagtemp, conta, cont, n, num, m, em, a, opcao, pronto, tempm, numav, tempav : inteiro
   respostanet, resposta, codigo,  senha, apelido, apelido2, apelido3, nat2, parte2, e_, mail, texto, textoorg, cadeira, docente, notat, valor_i, espacop1, espacop2, espacop3, espacop4, doctemp, cad5 : caractere
   notif, chamado, chamadoporperfil, chamadopordoc, contadoc, caminho1, caminho2, pauta, mperfil, negado, cpordocumento, cporvideo, cporquiz : logico
   medtemp : real

Procedimento Start ()

var

   compsenha : inteiro
   espaco, espacosenha, senhat, digito, stemp : caractere
   negado : logico

Inicio

contadoc <- falso
pauta <- falso
mperfil <- falso
mudacor ("branco","frente")
mudacor ("preto","fundos")

limpatela
se chamado = falso entao
   escreval ("Sair para o menu principal?")
  leia (resposta)
   enquanto (resposta <> "s")e(resposta <> "n") faca
            escreval ("Use apenas s(sim), ou n(não).")
            leia (resposta)
   fimenquanto
   se resposta = "s" entao
      Menu ()
   fimse
fimse
chamado <- falso
   limpatela
   escreval ("Conta de estudante ou docente? (e = estudante, d = docente)")
   repita
     leia (resposta)
     se (resposta <> "e")e(resposta <> "d") entao
        escreval ("Resposta inválida.")
     fimse
   ate (resposta = "e")ou(resposta = "d")
 se resposta = "e" entao
   limpatela
   escreval("Escreva o seu código de estudante.")
   repita
      negado <- falso
      leia (codigo)
      para conta <- 1 ate compr(codigo) faca
         digito <- copia(codigo;conta,1)
         se (digito <> "0")e(digito <> "1")e(digito <> "2")e(digito <> "3")e(digito <> "4")e(digito <> "5")e(digito <> "6")e(digito <> "7")e(digito <> "8")e(digito <> "9") entao
            limpatela
            escreval (codigo)
            escreval ("Somente números são aceites. Tente novamente.")
            negado <- verdadeiro
            interrompa
         fimse
      fimpara
      se (compr(codigo) <> 8)e(negado = falso) entao
         limpatela
         escreval (codigo)
         escreval ("O código de estudante deve ter 8 dígitos. Tente novamente.")
         negado <- verdadeiro
      fimse
      se negado = falso entao
         se nao((caracpnum(copia(codigo;1,4)) >= 1960)e(caracpnum(copia(codigo;1,4)) <= 2021)) entao
            limpatela
            escreval (codigo)
            escreval ("Formato incorreto. Tente novamente.")
            negado <- verdadeiro
         fimse
      fimse
   ate negado = falso
   senao
      limpatela
      contadoc <- verdadeiro
      escreval("Escreva o seu código de docente.")
      repita
         negado <- falso
         leia (codigo)
         se copia(codigo;1,1) <> "D" entao
            limpatela
            escreval (codigo)
            escreval ("Formato incorreto. Tente novamente. (DnnnAAAA)")
            negado <- verdadeiro
          senao
             para conta <- 2 ate compr(codigo) faca
                  digito <- copia(codigo;conta,1)
                  se (digito <> "0")e(digito <> "1")e(digito <> "2")e(digito <> "3")e(digito <> "4")e(digito <> "5")e(digito <> "6")e(digito <> "7")e(digito <> "8")e(digito <> "9") entao
                     limpatela
                     escreval (codigo)
                     escreval ("Somente números são aceites depois do 'D'. Tente novamente.")
                     negado <- verdadeiro
                     interrompa
                  fimse
             fimpara
             se (compr(codigo) <> 8)e(negado = falso) entao
                limpatela
                escreval (codigo)
                escreval ("O código de docente deve ter 8 dígitos. Tente novamente.")
                negado <- verdadeiro
             fimse
             se negado = falso entao
                se nao((caracpnum(copia(codigo;5,4)) >= 1960)e(caracpnum(copia(codigo;5,4)) <= 2021)) entao
                   limpatela
                   escreval (codigo)
                   escreval ("Formato incorreto. Tente novamente.")
                   negado <- verdadeiro
                fimse
             fimse
         fimse
      ate negado = falso
 fimse
   limpatela
   escreval ("Escreva a sua senha.")
   leia (senha)
   enquanto compr(senha) = 0 faca
      limpatela
      escreval (senha)
      escreval ("Campo branco não vale. Tente novamente.")
      leia (senha)
   fimenquanto

   limpatela
   espaco <- "              "
   stemp <- ""
   para conta <- 1 ate compr(senha) faca
      stemp <- stemp + "*"
   fimpara
   senha <- senha
   senhat <- stemp
   se compr(senha) <= 24 entao
      compsenha <- 24 - compr(senhat)
      para conta <- 1 ate compsenha faca
         espacosenha <- espacosenha + " "
      fimpara
   senao
      senhat <- copia(senhat;1,21) + "..."
   fimse
   escreval ("       _________________________________________________________________________________________________________")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                               SIGA - UEM                                                |")
   escreval ("      |_________________________________________________________________________________________________________|")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                                                                                         |")
   se contadoc = falso entao
      escreval ("      |                Código de Estudante                      Senha                                           |")
    senao
      escreval ("      |                Código de Docente                        Senha                                           |")
   fimse
   escreval ("      |               .-------------------------.              .-------------------------.                      |")
   escreval ("      |               | ", codigo,"                |",espaco,"| ",senhat, espacosenha,"|                      |")
   escreval ("      |               |_________________________|              |_________________________|                      |")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                                                                                         |")
   escreval ("      |_________________________________________________________________________________________________________|")
   escreval ()

   escreval ("Senha: ", senha)
   timer (1500)
   timer (0)
   escreval ()
   escreval ("Prosseguir? (s = sim, n = não).")
   escreval ()
   leia (resposta)
   enquanto (resposta <> "s")e(resposta <> "n") faca
           escreval ("Use apenas s(sim), ou n(não).")
           leia (resposta)
   fimenquanto
   se resposta = "n" entao
      chamado <- verdadeiro
      Start ()
   fimse
   limpatela
   para conta <- 1 ate 3 faca
        escreva ("Procurando a conta...")
        timer 1200
        timer 0
        limpatela
        escreva ("Procurando a conta..")
        timer 1200
        timer 0
        limpatela
   fimpara
   Detalhes()

FimProcedimento


Procedimento Detalhes ()

var

   encontrado : logico

Inicio

se pronto = 1 entao

   codigos[1] <- "20215464"
   codigos[2] <- "20215546"
   codigos[3] <- "20211475"
   codigos[4] <- "20218914"
   codigos[5] <- "20203548"
   codigos[6] <- "20215641"
   codigos[7] <- "20218744"
   codigos[8] <- "20204854"
   codigos[9] <- "20194846"
   codigos[10] <- "20202201"
   codigos[11] <- "20204851"
   codigos[12] <- "20206854"
   codigos[13] <- "20191287"
   codigos[14] <- "20198985"
   codigos[15] <- "20191478"
   codigos[16] <- "20193985"
   codigos[17] <- "20184645"
   codigos[18] <- "20185412"
   codigos[19] <- "20178425"
   codigos[20] <- "20179548"
   codigos[21] <- "20171256"
   codigos[22] <- "20185462"
   codigos[23] <- "20188895"
   codigos[24] <- "20185164"
   codigos[25] <- "20174895"
   codigos[26] <- "20213023"
   codigos[27] <- "20215021"
   codigos[28] <- "20203025"
   codigos[29] <- "20216013"
   codigos[30] <- "20213020"
   codigos[31] <- "20206024"
   codigos[32] <- "20218152"
   codigos[33] <- "20218800"
   codigos[34] <- "20192026"
   codigos[35] <- "20211094"
   codigos[36] <- "20215494"
   codigos[37] <- "20212121"
   codigos[38] <- "20217865"
   codigos[39] <- "20204584"
   codigos[40] <- "20192154"
   codigos[41] <- "20194898"
   codigos[42] <- "20150154"
   codigos[43] <- "20160485"
   codigos[44] <- "20173245"
   codigos[45] <- "20169745"
   codigos[46] <- "20165123"
   codigos[47] <- "20152849"
   codigos[48] <- "20152645"
   codigos[49] <- "20162514"
   codigos[50] <- "20172384"
   codigos[51] <- "20218415"
   codigos[52] <- "20213251"
   codigos[53] <- "20216584"
   codigos[54] <- "20216548"
   codigos[55] <- "20202812"
   codigos[56] <- "20200215"
   codigos[57] <- "20190012"
   codigos[58] <- "20199845"
   codigos[59] <- "20193254"
   codigos[60] <- "20205252"
   codigos[61] <- "20198454"
   codigos[62] <- "20190250"
   codigos[63] <- "20181561"
   codigos[64] <- "20175613"
   codigos[65] <- "20182358"
   codigos[66] <- "20184148"
   codigos[67] <- "20185615"
   codigos[68] <- "20185613"
   codigos[69] <- "20172315"
   codigos[70] <- "20174720"
   codigos[71] <- "20115482"
   codigos[72] <- "20166514"
   codigos[73] <- "20165484"
   codigos[74] <- "20185184"
   codigos[75] <- "20161564"
   codigos[76] <- "20215614"
   codigos[77] <- "20215617"
   codigos[78] <- "20215456"
   codigos[79] <- "20201515"
   codigos[80] <- "20194687"
   codigos[81] <- "20192131"
   codigos[82] <- "20192318"
   codigos[83] <- "20184894"
   codigos[84] <- "20191498"
   codigos[85] <- "20194652"
   codigos[86] <- "20205618"
   codigos[87] <- "20185164"
   codigos[88] <- "20192138"
   codigos[89] <- "20188955"
   codigos[90] <- "20185461"
   codigos[91] <- "20195341"
   codigos[92] <- "20184949"
   codigos[93] <- "20187789"
   codigos[94] <- "20185621"
   codigos[95] <- "20181548"
   codigos[96] <- "20173331"
   codigos[97] <- "20171478"
   codigos[98] <- "20156215"
   codigos[99] <- "20165164"
   codigos[100] <- "20158805"
//Docentes
   codigos[101] <- "D1012003"
   codigos[102] <- "D1611992"
   codigos[103] <- "D0511979"
   codigos[104] <- "D2712008"
   codigos[105] <- "D4201992"
   codigos[106] <- "D1502013"
   codigos[107] <- "D7102015"
   codigos[108] <- "D8101996"
   codigos[109] <- "D0352017"
   codigos[110] <- "D2052013"
   codigos[111] <- "D3012003"
   codigos[112] <- "D0952012"

   senhas[1] <- "hevnnuv45"
   senhas[2] <- "Chelsea"
   senhas[3] <- "milhas"
   senhas[4] <- "hahtrsdf"
   senhas[5] <- "sjif834"
   senhas[6] <- "senhaerrada"
   senhas[7] <- "mazza"
   senhas[8] <- "ifjiefjei"
   senhas[9] <- "jambalão27"
   senhas[10] <- "hacker"
   senhas[11] <- "saidaminhaemcima"
   senhas[12] <- "iron_man99"
   senhas[13] <- "alcapone"
   senhas[14] <- "Njdiejioe"
   senhas[15] <- "NomedePresidente"
   senhas[16] <- "scammer"
   senhas[17] <- "filhodeGod"
   senhas[18] <- "udhuaid"
   senhas[19] <- "gajomau"
   senhas[20] <- "condutaduvidosa"
   senhas[21] <- "3498398"
   senhas[24] <- "s0283dsw"
   senhas[25] <- "902hdu83n"
   senhas[26] <- "hacker"
   senhas[27] <- "7vxa7AQogr"
   senhas[28] <- "computadores"
   senhas[29] <- "Jéssica"
   senhas[30] <- "OtallJosé"
   senhas[31] <- "nuncavaisacertar97"
   senhas[32] <- "acertaste"
   senhas[33] <- "rQ*qFKPdBu1-I8Y6e"
   senhas[34] <- "20192026"
   senhas[35] <- "lebronjordan"
   senhas[36] <- "sfuioabnufnh"
   senhas[37] <- "nerd"
   senhas[38] <- "10 valores"
   senhas[39] <- "Okdokwd453"
   senhas[40] <- "reidongrimngrim"
   senhas[41] <- "dispensassó"
   senhas[42] <- "dm94udh9ha"
   senhas[43] <- "pddunssdf"
   senhas[44] <- "14/04/1997"
   senhas[45] <- "beirais"
   senhas[46] <- "V_idrosfumados1"
   senhas[47] <- "chiquitito"
   senhas[48] <- "nãogostodeestaraqui"
   senhas[49] <- "senhastrong"
   senhas[50] <- "rodeadosesa"
   senhas[51] <- "çasiwesdcde"
   senhas[52] <- "camaleoa"
   senhas[53] <- "202dhs8"
   senhas[54] <- "donodelas"
   senhas[55] <- "sdnuasnhus"
   senhas[56] <- "snofiusjf"
   senhas[57] <- "boymiguelito"
   senhas[58] <- "jamesbond007"
   senhas[59] <- "tchambalakate"
   senhas[60] <- "fimefnmef"
   senhas[61] <- "kazakistão"
   senhas[62] <- "perdonki"
   senhas[63] <- "dwefd9njs"
   senhas[64] <- "mafiaboss"
   senhas[65] <- "raiamanta27"
   senhas[66] <- "individadoocultamente"
   senhas[67] <- "sifjasifj"
   senhas[68] <- "Magwinhas"
   senhas[69] <- "boysweggas"
   senhas[70] <- "águaviva"
   senhas[71] <- "veloz32"
   senhas[72] <- "dondedas"
   senhas[73] <- "oescolhido"
   senhas[74] <- "asiopmjisf"
   senhas[75] <- "Kryptonita"
   senhas[76] <- "sdasuid"
   senhas[77] <- "processo"
   senhas[78] <- "duefnuinasd"
   senhas[79] <- "dragonball"
   senhas[80] <- "nickiminaj"
   senhas[81] <- "minecraft"
   senhas[82] <- "billygates$"
   senhas[83] <- "Mc. Roger"
   senhas[84] <- "podsnss2"
   senhas[85] <- "20194652"
   senhas[87] <- "Mc. Roger"
   senhas[88] <- "amigodasstora"
   senhas[89] <- "osmutantes"
   senhas[90] <- "nhasuinfs"
   senhas[91] <- "gajogrinhume"
   senhas[92] <- "leomessi"
   senhas[93] <- "visionário"
   senhas[94] <- "fhufasffa"
   senhas[95] <- "0sjdiss"
   senhas[96] <- "virtualdj"
   senhas[97] <- "1milhão"
   senhas[98] <- "stephcurry"
   senhas[99] <- "inacessável"
   senhas[100] <- "leomessi"
//Docentes
   senhas[101] <- "0FglRMcnfj3Mf8GN"
   senhas[102] <- "LVqzVuV8maFfA"
   senhas[103] <- "DvEzMrOrNjSTiRAalÇ4ÃO"
   senhas[104] <- "IEW66KZugCI"
   senhas[105] <- "04zOeyowW8p"
   senhas[106] <- "GK3fz6vj3rCMrM"
   senhas[107] <- "PF2n5KIhu5lMbdOpT"
   senhas[108] <- "3rYFt5M9Rr"
   senhas[109] <- "FK5Ee0vHrd"
   senhas[110] <- "JFygAMIf5c"
   senhas[111] <- "27m7ke7phetq"
   senhas[112] <- "o2w81vh8"

   nomes[1] <- "Félix Augusto Matsinhe"
   nomes[2] <- "Inocêncio Cristóvão"
   nomes[3] <- "Eddy Belarmino Massinga"
   nomes[4] <- "Amariles de Jesus Glória"
   nomes[5] <- "Osvaldo Samanta Nhaca"
   nomes[6] <- "Leo Arlindo Buque"
   nomes[7] <- "Tatiana Victorino da Clara"
   nomes[8] <- "Santos Omar Chiconela"
   nomes[9] <- "Ronaldo Mulung Mabjaia"
   nomes[10] <- "Momed Manuafo Mahumane"
   nomes[11] <- "Kenneth Berlinde Mandlate"
   nomes[12] <- "Moreira Frásio Vilanculos"
   nomes[13] <- "Samuel Alfredo Abdula"
   nomes[14] <- "Cristência Manuela Mondlane"
   nomes[15] <- "Armando Elídio Michel"
   nomes[16] <- "Silage Juvenal Muiambo"
   nomes[17] <- "Hélder Tembe Bahadoursing"
   nomes[18] <- "Eliane Nwadzaulani Mabunda"
   nomes[19] <- "Belinda Aristides Seda"
   nomes[20] <- "Golpe Baixo Mamune"
   nomes[21] <- "Juvenaldo Carlos Maulate"
   nomes[22] <- "Dias Quintriano Matsinhe"
   nomes[23] <- "Elizeu Dranco Sitole"
   nomes[24] <- "Maurício Amade Guiamba"
   nomes[25] <- "Pedro Carlitos Mavila"
   nomes[26] <- "Orlando Magaiva Cinquenta"
   nomes[27] <- "Moniz Sanbôdo Mesa Jr."
   nomes[28] <- "Deolindo Mazamera Sabão"
   nomes[29] <- "Júlio Carlos de Tete"
   nomes[30] <- "José Jacinto João Jeto"
   nomes[31] <- "Kamuntajeet Sabin Abdulerman"
   nomes[32] <- "Jorge Borge Nhampossa"
   nomes[33] <- "Uvuvwevwevwe Onyetenweve Ugwemubwen Ossas"
   nomes[34] <- "Maria d'Alcantra Perreira"
   nomes[35] <- "Magube Fambónio Assas"
   nomes[36] <- "Moreira Frásio Vilanculos"
   nomes[37] <- "Ester Alcídio Magumane"
   nomes[38] <- "João Leonardo Vegas Soto"
   nomes[39] <- "Zenalda Maia Savanguane"
   nomes[40] <- "Sara Tahobara Omar"
   nomes[41] <- "Esmeralda Momaz Henrique"
   nomes[42] <- "Ângela Palma Massingue"
   nomes[43] <- "Orlando José Maheu"
   nomes[44] <- "Félix José Quetxoaio"
   nomes[45] <- "Leonor das Acácias Ferreira"
   nomes[46] <- "Jaime Socre Mukhuvuri"
   nomes[47] <- "Amilton Leonel Jone"
   nomes[48] <- "Jossias Robote Jone Jone"
   nomes[49] <- "Casimiro Gincra Maissene"
   nomes[50] <- "Joaquim Esteira Madzive"
   nomes[51] <- "Malhane Biscoito Ambrósio"
   nomes[52] <- "Samanta Jacinta Mangaze"
   nomes[53] <- "Vergonha Carlos Mabissane"
   nomes[54] <- "Jacinto Pedro Mahumane"
   nomes[55] <- "Spike Delovado Nhamtumbo"
   nomes[56] <- "Carlos Nguenani Nhamtumbo"
   nomes[57] <- "Miguelito Rafael Saraiva"
   nomes[58] <- "Sapuasê Magostwana Ndiro"
   nomes[59] <- "Afonsito Magwinha Ndande"
   nomes[60] <- "Vivaldo Lombole Massingue"
   nomes[61] <- "Beija Amim Santiago"
   nomes[62] <- "Joel Djofer Mabeca"
   nomes[63] <- "Amado Zeferino Mantenga"
   nomes[64] <- "Sidnex Luís Mazive"
   nomes[65] <- "Raia Manta Sibinde"
   nomes[66] <- "Arménio Domingos Chacha"
   nomes[67] <- "Chaiba Pedro Cumbana"
   nomes[68] <- "Mamanto Guindo Sitoe"
   nomes[69] <- "Jamilo Francisco Cumbe"
   nomes[70] <- "Angelina Vieira Everisto"
   nomes[71] <- "Stélio Matias Mahiene"
   nomes[72] <- "Estefânia Rafaela Maibaze"
   nomes[73] <- "Anastância Rosavirone da Eva"
   nomes[74] <- "Adolfo Otília Biza"
   nomes[75] <- "Liton Chande Manheque"
   nomes[76] <- "Hortência Ramos Diogo"
   nomes[77] <- "Felismina Mbeveve Salomão"
   nomes[78] <- "Lourenço Abel Nhamuave"
   nomes[79] <- "Kelly Roque Julião"
   nomes[80] <- "Ura Wiriamo Valente"
   nomes[81] <- "Kelly Raimundo Matavele"
   nomes[82] <- "Laura Azarias Macamo"
   nomes[83] <- "Ermelinda Frederico dos Amados"
   nomes[84] <- "Manuel Joaquim Zunguze"
   nomes[85] <- "Elodino Ernesto Faife"
   nomes[87] <- "Ernesta Mandande Sitoe"
   nomes[88] <- "Iolanda Naila Tsirizane"
   nomes[89] <- "Sofrimento Ráido Mabjaia"
   nomes[90] <- "Sara Lobolo Zavale"
   nomes[91] <- "Nelson Mirrabel da Esperança"
   nomes[92] <- "David Estefánio Manjate"
   nomes[93] <- "Flávia Simião Riscado"
   nomes[94] <- "Kátia Celso Nhantsave"
   nomes[95] <- "Isaac António Momade"
   nomes[96] <- "Anta Jamal Bompirasso"
   nomes[97] <- "Castigo Sal Castigo"
   nomes[98] <- "Piedade Macrósmo Alves"
   nomes[99] <- "Júlio Magaiva Langa"
   nomes[100] <- "Sara Madalena Mumpaia"
//Docentes
   nomes[101] <- "Dércio Canguissa"
   nomes[102] <- "Januário Simango"
   nomes[103] <- "Ida Alvarinho"
   nomes[104] <- "Sérgio Bantu"
   nomes[105] <- "Zaqueu Mantoinha"
   nomes[106] <- "Carlota Ligungo"
   nomes[107] <- "Masego Avantuna"
   nomes[108] <- "Marla Matsinhe"
   nomes[109] <- "Spike Sawezuno"
   nomes[110] <- "Nádia Pelanco"
   nomes[111] <- "Fabrício Fambonela"
   nomes[112] <- "Iracema Muguluvi"

   data_nascimento[1] <- "26/11/01"
   data_nascimento[2] <- "03/03/2003"
   data_nascimento[3] <- "09/06/2004"
   data_nascimento[4] <- "16/05/2003"
   data_nascimento[5] <- "02/12/2000"
   data_nascimento[6] <- "26/12/2001"
   data_nascimento[7] <- "06/03/2003"
   data_nascimento[8] <- "23/12/2000"
   data_nascimento[9] <- "16/10/2001"
   data_nascimento[10] <- "06/02/2002"
   data_nascimento[11] <- "10/08/2000"
   data_nascimento[12] <- "28/01/2001"
   data_nascimento[13] <- "29/12/2000"
   data_nascimento[14] <- "22/10/2000"
   data_nascimento[15] <- "29/09/2000"
   data_nascimento[16] <- "27/08/1997"
   data_nascimento[17] <- "22/01/1998"
   data_nascimento[18] <- "26/07/1999"
   data_nascimento[19] <- "30/10/2000"
   data_nascimento[20] <- "27/07/1999"
   data_nascimento[21] <- "12/03/1997"
   data_nascimento[22] <- "25/02/1999"
   data_nascimento[23] <- "27/04/1999"
   data_nascimento[24] <- "28/03/1999"
   data_nascimento[25] <- "14/08/1998"
   data_nascimento[26] <- "07/05/2000"
   data_nascimento[27] <- "28/12/1998"
   data_nascimento[28] <- "02/05/2001"
   data_nascimento[29] <- "11/09/2002"
   data_nascimento[30] <- "23/09/1999"
   data_nascimento[31] <- "15/12/2001"
   data_nascimento[32] <- "25/02/2003"
   data_nascimento[33] <- "08/08/1996"
   data_nascimento[34] <- "22/06/2000"
   data_nascimento[35] <- "17/04/2002"
   data_nascimento[36] <- "23/06/2002"
   data_nascimento[37] <- "16/04/2001"
   data_nascimento[38] <- "02/01/2002"
   data_nascimento[39] <- "23/05/2001"
   data_nascimento[40] <- "08/20/1998"
   data_nascimento[41] <- "27/12/1996"
   data_nascimento[42] <- "19/02/1997"
   data_nascimento[43] <- "03/02/1996"
   data_nascimento[44] <- "14/04/1997"
   data_nascimento[45] <- "17/12/1998"
   data_nascimento[46] <- "15/03/1997"
   data_nascimento[47] <- "26/10/2000"
   data_nascimento[48] <- "21/04/2000"
   data_nascimento[49] <- "22/07/1996"
   data_nascimento[50] <- "10/12/1998"
   data_nascimento[51] <- "21/03/2003"
   data_nascimento[52] <- "16/10/2002"
   data_nascimento[53] <- "13/08/2002"
   data_nascimento[54] <- "06/08/2003"
   data_nascimento[55] <- "17/05/2001"
   data_nascimento[56] <- "26/10/2001"
   data_nascimento[57] <- "07/03/2000"
   data_nascimento[58] <- "06/02/2000"
   data_nascimento[59] <- "15/05/2000"
   data_nascimento[60] <- "29/12/2000"
   data_nascimento[61] <- "13/04/2002"
   data_nascimento[62] <- "03/03/1998"
   data_nascimento[63] <- "20/04/1997"
   data_nascimento[64] <- "25/04/1999"
   data_nascimento[65] <- "26/04/1997"
   data_nascimento[66] <- "22/07/1998"
   data_nascimento[67] <- "22/10/1997"
   data_nascimento[68] <- "13/10/1998"
   data_nascimento[69] <- "14/07/1997"
   data_nascimento[70] <- "02/03/1998"
   data_nascimento[71] <- "22/08/1993"
   data_nascimento[72] <- "08/03/1998"
   data_nascimento[73] <- "15/11/1999"
   data_nascimento[74] <- "19/08/1997"
   data_nascimento[75] <- "01/03/1996"
   data_nascimento[76] <- "26/03/2002"
   data_nascimento[77] <- "09/07/2001"
   data_nascimento[78] <- "03/09/2002"
   data_nascimento[79] <- "11/07/2003"
   data_nascimento[80] <- "11/04/2000"
   data_nascimento[81] <- "30/03/2002"
   data_nascimento[82] <- "25/10/1999"
   data_nascimento[83] <- "01/11/2001"
   data_nascimento[84] <- "05/05/2000"
   data_nascimento[85] <- "27/06/2001"
   data_nascimento[86] <- "18/11/2000"
   data_nascimento[87] <- "28/10/1997"
   data_nascimento[88] <- "14/12/1998"
   data_nascimento[89] <- "23/08/1999"
   data_nascimento[90] <- "05/02/1999"
   data_nascimento[91] <- "28/08/1999"
   data_nascimento[92] <- "05/08/2001"
   data_nascimento[93] <- "18/06/1998"
   data_nascimento[94] <- "24/04/1999"
   data_nascimento[95] <- "21/10/1997"
   data_nascimento[96] <- "15/05/1999"
   data_nascimento[97] <- "05/11/1998"
   data_nascimento[98] <- "04/01/1997"
   data_nascimento[99] <- "10/10/1997"
   data_nascimento[100] <- "23/08/1998"
//Docentes
   data_nascimento[101] <- "28/02/1978"
   data_nascimento[102] <- "07/06/1967"
   data_nascimento[103] <- "15/08/1957"
   data_nascimento[104] <- "25/12/1973"
   data_nascimento[105] <- "26/04/1974"
   data_nascimento[106] <- "03/01/1986"
   data_nascimento[107] <- "06/08/1980"
   data_nascimento[108] <- "21/06/1974"
   data_nascimento[109] <- "13/11/1985"
   data_nascimento[110] <- "03/01/1983"
   data_nascimento[111] <- "29/05/1973"
   data_nascimento[112] <- "15/11/1984"
   
   para conta <- 1 ate 112 faca
        sexo[conta] <- "Masculino"
   fimpara
   sexo[7] <- "Feminino"
   sexo[14] <- "Feminino"
   sexo[18] <- "Feminino"
   sexo[19] <- "Feminino"
   sexo[34] <- "Feminino"
   sexo[37] <- "Feminino"
   sexo[39] <- "Feminino"
   sexo[40] <- "Feminino"
   sexo[41] <- "Feminino"
   sexo[42] <- "Feminino"
   sexo[45] <- "Feminino"
   sexo[52] <- "Feminino"
   sexo[53] <- "Feminino"
   sexo[70] <- "Feminino"
   sexo[72] <- "Feminino"
   sexo[73] <- "Feminino"
   sexo[76] <- "Feminino"
   sexo[77] <- "Feminino"
   sexo[79] <- "Feminino"
   sexo[80] <- "Feminino"
   sexo[81] <- "Feminino"
   sexo[82] <- "Feminino"
   sexo[83] <- "Feminino"
   sexo[87] <- "Feminino"
   sexo[88] <- "Feminino"
   sexo[90] <- "Feminino"
   sexo[93] <- "Feminino"
   sexo[94] <- "Feminino"
   sexo[100] <- "Feminino"
//Docentes
   sexo[103] <- "Feminino"
   sexo[106] <- "Feminino"
   sexo[108] <- "Feminino"
   sexo[110] <- "Feminino"
   sexo[112] <- "Feminino"

   nome_do_pai[1] <- "Edrício Timóteo Matsinhe"
   nome_do_pai[2] <- "Ramiro Cupertino Cristóvão"
   nome_do_pai[3] <- "Charles Dado Massinga"
   nome_do_pai[4] <- "Gulube Prince de Jesus Glória"
   nome_do_pai[5] <- "Santiago Bernabeu Nhaca"
   nome_do_pai[6] <- "Crimildo Bilião Buque"
   nome_do_pai[7] <- "Sérgio Gube da Clara"
   nome_do_pai[8] <- "Eduardo Chaque Chiconela"
   nome_do_pai[9] <- "Reginaldo Nuro Mabjaia"
   nome_do_pai[10] <- "Alexandre Tilo Mahumane"
   nome_do_pai[11] <- "Arlindo Jaca Mandlate"
   nome_do_pai[12] <- "Henrique Iglesias Vilanculos"
   nome_do_pai[13] <- "Mussagy Zaheed Abdula"
   nome_do_pai[14] <- "Mínimo Máximo Mondlane"
   nome_do_pai[15] <- "Luís Zindo Michel"
   nome_do_pai[16] <- "Tomás Pruba Muiambo"
   nome_do_pai[17] <- "Manta Carlo Bahadoursing"
   nome_do_pai[18] <- "Brian Mabunda"
   nome_do_pai[19] <- "Caril Darco Seda"
   nome_do_pai[20] <- "Ameraldo Camba Mamune"
   nome_do_pai[21] <- "Paulo Maulate"
   nome_do_pai[22] <- "Daren Matsinhe"
   nome_do_pai[23] <- "Magaiva Kleven Sitole"
   nome_do_pai[24] <- "Sanduba Guiamba"
   nome_do_pai[25] <- "Santino Zago Mavila"
   nome_do_pai[26] <- "Zaragoza Mauro Cinquenta"
   nome_do_pai[27] <- "Moniz Sanbôdo Mesa"
   nome_do_pai[28] <- "Francis Dado Sabão"
   nome_do_pai[29] <- "Magno France de Tete"
   nome_do_pai[30] <- "Carlos Joaquim Jeto"
   nome_do_pai[31] <- "Kampri Bangdeet Abdulerman
   nome_do_pai[32] <- "Drimpo Carlo Nhampossa"
   nome_do_pai[33] <- "John Johnson Ossas"
   nome_do_pai[34] <- "Nhamissoro Mangaze Ka Ndande"
   nome_do_pai[35] <- "Dzukubi Magno Assas"
   nome_do_pai[36] <- "Vitor Marcos Vilanculos"
   nome_do_pai[37] <- "Steve Násio Magumane"
   nome_do_pai[38] <- "Pedro da Lurania Vegas Soto"
   nome_do_pai[39] <- "David Manuel Savanguane"
   nome_do_pai[40] <- "Paulo Jorogino Omar"
   nome_do_pai[41] <- "Marcial Borge Henrique"
   nome_do_pai[42] <- "Paulinho Massingue"
   nome_do_pai[43] <- "Wilton Gago Maheu"
   nome_do_pai[44] <- "Francis Mbenga Quetxoaio"
   nome_do_pai[45] <- "Joseph Árculo Ferreira"
   nome_do_pai[46] <- "Nhamgomo Zaque Mukhuvuri"
   nome_do_pai[47] <- "Pascoal Aniceto Jone"
   nome_do_pai[48] <- "Eliseu Jone Jone"
   nome_do_pai[49] <- "Dergon Zig Maissene"
   nome_do_pai[50] <- "Lucas Saia Madzive"
   nome_do_pai[51] <- "Zigzag Fredo Ambrósio"
   nome_do_pai[52] <- "Jaime Jobe Mangaze"
   nome_do_pai[53] <- "Lázaro Azar Mabissane"
   nome_do_pai[54] <- "Miro Manga Mahumane"
   nome_do_pai[55] <- "Nhantumbo Nhamtumbo Nhamtumbo"
   nome_do_pai[56] <- "Jusso Nhantumbo Nhamtumbo"
   nome_do_pai[57] <- "Edmilton Julião Saraiva"
   nome_do_pai[58] <- "Txopito Sontxa Ndiro"
   nome_do_pai[59] <- "Delvo Ranco Ndande"
   nome_do_pai[60] <- "Nada Deva Massingue"
   nome_do_pai[61] <- "Juvêncio Rafique Santiago"
   nome_do_pai[62] <- "Hermenegildo Castigo Mabeca"
   nome_do_pai[63] <- "Eugénio Maurício Mantenga"
   nome_do_pai[64] <- "Dauto Eciaque Mazive"
   nome_do_pai[65] <- "Marcos de Manhiça Sibinde"
   nome_do_pai[66] <- "André Mukothlwana Chacha"
   nome_do_pai[67] <- "Egas Tubarão Cumbana"
   nome_do_pai[68] <- "Sérgio Sitoe"
   nome_do_pai[69] <- "Jeremias José Cumbe"
   nome_do_pai[70] <- "Maico Maike Everisto"
   nome_do_pai[71] <- "Igressias Mirno Mahiene"
   nome_do_pai[72] <- "Nelito de Ibiza Maibaze"
   nome_do_pai[73] <- "Rogério Pavão da Eva"
   nome_do_pai[74] <- "Fernado Godo Biza"
   nome_do_pai[75] <- "Zaqueu Ponzol Manheque"
   nome_do_pai[76] <- "Adolfo Seuane Diogo"
   nome_do_pai[77] <- "Husneto Salomão"
   nome_do_pai[78] <- "Ekson Romão Nhamuave"
   nome_do_pai[79] <- "João Josué Julião"
   nome_do_pai[80] <- "Joaquim Gil Valente"
   nome_do_pai[81] <- "Alberto Inácio Matavele"
   nome_do_pai[82] <- "Samuel Olívio Macamo"
   nome_do_pai[83] <- "Carlos Heroc dos Amados"
   nome_do_pai[84] <- "Marcos Coronavivo Zunguze"
   nome_do_pai[85] <- "Donque Tabela Faife"
   nome_do_pai[87] <- "José Andre Sitoe"
   nome_do_pai[88] <- "Tchenzelane Tsirizane"
   nome_do_pai[89] <- "Dionísio Mabjaia"
   nome_do_pai[90] <- "Javali Junqueiras Zavale"
   nome_do_pai[91] <- "Evelindo Cruz da Esperança"
   nome_do_pai[92] <- "Orlando Sitora Manjate"
   nome_do_pai[93] <- "Tomas Vieira Riscado"
   nome_do_pai[94] <- "Hélder Mauaie Nhantsave"
   nome_do_pai[95] <- "Mohammed Mahomed Momade"
   nome_do_pai[96] <- "Wentsi Espirro Bompirasso"
   nome_do_pai[97] <- "Mauro Castro Castigo"
   nome_do_pai[98] <- "Manuel Rafael Alves"
   nome_do_pai[99] <- "Dércio Sampaio Langa"
   nome_do_pai[100] <- "Erven Banga Mumpaia"

   nome_da_mae[1] <- "Mirália Beatrice Matsinhe"
   nome_da_mae[2] <- "Maura Siwa Cristóvão"
   nome_da_mae[3] <- "Wilma Grimer Massinga"
   nome_da_mae[4] <- "Melly Ramiro de Jesus Glória"
   nome_da_mae[5] <- "Adriana Semente Nhaca"
   nome_da_mae[6] <- "Carlota Dádiva Buque"
   nome_da_mae[7] <- "Delta Arquimedes da Clara"
   nome_da_mae[8] <- "Gira Nuro Chiconela"
   nome_da_mae[9] <- "Aicha Gigi Mabjaia"
   nome_da_mae[10] <- "Elysa Saquiça Mahumane"
   nome_da_mae[11] <- "Hermenegilda Buanagalivo Mandlate"
   nome_da_mae[12] <- "Núbia Belvina Vilanculos"
   nome_da_mae[13] <- "Manuela Maia Abdula"
   nome_da_mae[14] <- "Amina Pereira Mondlane"
   nome_da_mae[15] <- "Catarina Mussa Michel"
   nome_da_mae[16] <- "Alcina Abú Muiambo"
   nome_da_mae[17] <- "Ajira Musse Bahadoursing"
   nome_da_mae[18] <- "Amélia Pequena Mabunda"
   nome_da_mae[19] <- "Miróia Sette Seda"
   nome_da_mae[20] <- "Tónia Tomásia Mamune"
   nome_da_mae[21] <- "Wilma Samson Maulate"
   nome_da_mae[22] <- "Cídia Magrela Matsinhe"
   nome_da_mae[23] <- "Júlia Dalva Sitole"
   nome_da_mae[24] <- "Sliva Regina Guiamba"
   nome_da_mae[25] <- "Kendra Dalva Mavila"
   nome_da_mae[26] <- "Jorogina Sameni Darmanculo Cinquenta"
   nome_da_mae[27] <- "Carla Paulo Mesa"
   nome_da_mae[28] <- "Márcia Maga Sabão"
   nome_da_mae[29] <- "Danga Maria de Tete"
   nome_da_mae[30] <- "Jacinta Jada Jeto"
   nome_da_mae[31] <- "Shazeed Beeg Abdulerman"
   nome_da_mae[32] <- "Albertina Bia Nhampossa"
   nome_da_mae[33] <- "Greta Puigon Ossas"
   nome_da_mae[34] <- "Joaquina Maia Ka Ndande"
   nome_da_mae[35] <- "Gília Menta Assas"
   nome_da_mae[36] <- "Vilanculos"
   nome_da_mae[37] <- "Magumane"
   nome_da_mae[38] <- "Soto"
   nome_da_mae[39] <- "Savanguane"
   nome_da_mae[40] <- "Omar"
   nome_da_mae[41] <- "Henrique"
   nome_da_mae[42] <- "Massingue"
   nome_da_mae[43] <- "Maheu"
   nome_da_mae[44] <- "Quetxoaio"
   nome_da_mae[45] <- "Ferreira"
   nome_da_mae[46] <- "Zunisha Mukhuvuri"
   nome_da_mae[47] <- "Jone"
   nome_da_mae[48] <- "Jone"
   nome_da_mae[49] <- "Maissene"
   nome_da_mae[50] <- "Madzive"
   nome_da_mae[51] <- "Ambrósio"
   nome_da_mae[52] <- "Mangaze"
   nome_da_mae[53] <- "Mabissane"
   nome_da_mae[54] <- "Mahumane"
   nome_da_mae[55] <- "Nhamtumbo"
   nome_da_mae[56] <- "Nhamtumbo"
   nome_da_mae[57] <- "Saraiva"
   nome_da_mae[58] <- "Ndiro"
   nome_da_mae[59] <- "Ndande"
   nome_da_mae[60] <- "Massingue"
   nome_da_mae[61] <- "Santiago"
   nome_da_mae[62] <- "Mabeca"
   nome_da_mae[63] <- "Mantenga"
   nome_da_mae[64] <- "Mazive"
   nome_da_mae[65] <- "Sibinde"
   nome_da_mae[66] <- "Chacha"
   nome_da_mae[67] <- "Cumbana"
   nome_da_mae[68] <- "Sitoe"
   nome_da_mae[69] <- "Cumbe"
   nome_da_mae[70] <- "Everisto"
   nome_da_mae[71] <- "Mahiene"
   nome_da_mae[72] <- "Maibaze"
   nome_da_mae[73] <- "da Eva"
   nome_da_mae[74] <- "Biza"
   nome_da_mae[75] <- "Manheque"
   nome_da_mae[76] <- "Diogo"
   nome_da_mae[77] <- "Salomão"
   nome_da_mae[78] <- "Nhamuave"
   nome_da_mae[79] <- "Julião"
   nome_da_mae[80] <- "Valente"
   nome_da_mae[81] <- "Matavele"
   nome_da_mae[82] <- "Macamo"
   nome_da_mae[83] <- "dos Amados"
   nome_da_mae[84] <- "Zunguze"
   nome_da_mae[85] <- "Faife"
   nome_da_mae[87] <- "Sitoe"
   nome_da_mae[88] <- "Tsirizane"
   nome_da_mae[89] <- "Mabjaia"
   nome_da_mae[90] <- "Zavale"
   nome_da_mae[91] <- "da Esperança"
   nome_da_mae[92] <- "Manjate"
   nome_da_mae[93] <- "Riscado"
   nome_da_mae[94] <- "Nhantsave"
   nome_da_mae[95] <- "Momade"
   nome_da_mae[96] <- "Bompirasso"
   nome_da_mae[97] <- "Castigo"
   nome_da_mae[98] <- "Alves"
   nome_da_mae[99] <- "Langa"
   nome_da_mae[100] <- "Mumpaia"

   para conta <- 1 ate 112 faca
        nacionalidade[conta] <- "Moçambique"
        cor_c[conta] <- "2"
        cor_f[conta] <- "1"
   fimpara
   nacionalidade[10] <- "Paquistão"
   nacionalidade[31] <- "Índia"
   nacionalidade[34] <- "Portugal"
   nacionalidade[33] <- "Nigéria"
//Docentes
   nacionalidade[103] <- "Portugal"
   nacionalidade[107] <- "Áfica do Sul"
   nacionalidade[109] <- "Nigéria"

   para conta <- 1 ate 100 faca
        naturalidade[conta] <- "Cidade de Maputo"
        estado[conta] <- "Não Pago"
   fimpara
   naturalidade[10] <- "Islamabad"
   naturalidade[12] <- "Província de Inhambane"
   naturalidade[28] <- "Província de Maputo"
   naturalidade[29] <- "Província de Tete"
   naturalidade[30] <- "Província de Niassa"
   naturalidade[31] <- "Nova Delhi"
   naturalidade[33] <- "Abuja"
   naturalidade[34] <- "Província de Alto Alentejo"
   naturalidade[36] <- "Província de Inhambane"
   naturalidade[38] <- "Província de Sofala"
   naturalidade[40] <- "Província de Cabo Delgado"
   naturalidade[41] <- "Província de Niassa"
   naturalidade[43] <- "Província de Sofala"
   naturalidade[45] <- "Província de Inhambane"
   naturalidade[47] <- "Província de Cabo Delgado"
   naturalidade[48] <- "Província de Tete"
   naturalidade[50] <- "Província de Cabo Delgado"
   naturalidade[51] <- "Província de Niassa"
   naturalidade[53] <- "Província de Inhambane"
   naturalidade[55] <- "Província de Sofala"
   naturalidade[56] <- "Província de Gaza"
   naturalidade[57] <- "Província de Sofala"
   naturalidade[65] <- "Província de Inhambane"
   naturalidade[70] <- "Província de Niassa"
   naturalidade[72] <- "Província de Zambézia"
   naturalidade[75] <- "Província de Sofala"
   naturalidade[79] <- "Província de Gaza"
   naturalidade[80] <- "Província de Sofala"
   naturalidade[83] <- "Província de Sofala"
   naturalidade[85] <- "Província de Gaza"
   naturalidade[90] <- "Província de Sofala"
   naturalidade[95] <- "Província de Sofala"
   naturalidade[98] <- "Província de Gaza"

   para conta <- 1 ate 25 faca
        curso[conta] <- "Licenciatura em Informática"
        curs[conta] <- "Informática"
   fimpara
   para conta <- 26 ate 50 faca
        curso[conta] <- "Licenciatura em Matemática"
        curs[conta] <- "Matemática"
   fimpara
   para conta <- 51 ate 75 faca
        curso[conta] <- "Licenciatura em Estatística"
        curs[conta] <- "Estatística"
   fimpara
   para conta <- 76 ate 100 faca
        curso[conta] <- "Licenciatura em Ciências de Informação Geográfica"
        curs[conta] <- "C. de Inf. Geográficas"
   fimpara

   nivel[1] <- "I"
   nivel[2] <- "I"
   nivel[3] <- "I"
   nivel[4] <- "I"
   nivel[5] <- "I"
   nivel[6] <- "I"
   nivel[7] <- "I"
   nivel[8] <- "II"
   nivel[9] <- "II"
   nivel[10] <- "II"
   nivel[11] <- "II"
   nivel[12] <- "II"
   nivel[13] <- "II"
   nivel[14] <- "III"
   nivel[15] <- "III"
   nivel[16] <- "III"
   nivel[17] <- "III"
   nivel[18] <- "III"
   nivel[19] <- "III"
   nivel[20] <- "IV"
   nivel[21] <- "IV"
   nivel[22] <- "IV"
   nivel[23] <- "IV"
   nivel[24] <- "IV"
   nivel[25] <- "IV"
   nivel[26] <- "I"
   nivel[27] <- "I"
   nivel[28] <- "I"
   nivel[29] <- "I"
   nivel[30] <- "I"
   nivel[31] <- "I"
   nivel[32] <- "I"
   nivel[33] <- "II"
   nivel[34] <- "II"
   nivel[35] <- "II"
   nivel[36] <- "II"
   nivel[37] <- "II"
   nivel[38] <- "II"
   nivel[39] <- "III"
   nivel[40] <- "III"
   nivel[41] <- "IV"
   nivel[42] <- "IV"
   nivel[43] <- "IV"
   nivel[44] <- "IV"
   nivel[45] <- "IV"
   nivel[46] <- "IV"
   nivel[47] <- "IV"
   nivel[48] <- "IV"
   nivel[49] <- "IV"
   nivel[50] <- "IV"
   nivel[51] <- "I"
   nivel[52] <- "I"
   nivel[53] <- "I"
   nivel[54] <- "I"
   nivel[55] <- "II"
   nivel[56] <- "II"
   nivel[57] <- "II"
   nivel[58] <- "II"
   nivel[59] <- "II"
   nivel[60] <- "II"
   nivel[61] <- "II"
   nivel[62] <- "III"
   nivel[63] <- "III"
   nivel[64] <- "III"
   nivel[65] <- "III"
   nivel[66] <- "III"
   nivel[67] <- "III"
   nivel[68] <- "III"
   nivel[69] <- "III"
   nivel[70] <- "III"
   nivel[71] <- "III"
   nivel[72] <- "IV"
   nivel[73] <- "IV"
   nivel[74] <- "IV"
   nivel[75] <- "IV"
   nivel[76] <- "I"
   nivel[77] <- "I"
   nivel[78] <- "I"
   nivel[79] <- "I"
   nivel[80] <- "II"
   nivel[81] <- "II"
   nivel[82] <- "II"
   nivel[83] <- "II"
   nivel[84] <- "II"
   nivel[85] <- "II"
   nivel[86] <- "II"
   nivel[87] <- "II"
   nivel[88] <- "III"
   nivel[89] <- "III"
   nivel[90] <- "III"
   nivel[91] <- "III"
   nivel[92] <- "III"
   nivel[93] <- "III"
   nivel[94] <- "III"
   nivel[95] <- "III"
   nivel[96] <- "III"
   nivel[97] <- "IV"
   nivel[98] <- "IV"
   nivel[99] <- "IV"
   nivel[100] <- "IV"

   email[1] <- "felix.matsinhe@uem.ac.mz"
   email[2] <- "inocencio.cristovao@uem.ac.mz"
   email[3] <- "eddy.massinga@uem.ac.mz
   email[4] <- "amariles.gloria@uem.ac.mz"
   email[5] <- "osvaldo.nhaca@uem.ac.mz"
   email[6] <- "leo.buque@uem.ac.mz"
   email[7] <- "tatiana.clara@uem.ac.mz"
   email[8] <- "santos.chiconela@uem.ac.mz"
   email[9] <- "ronaldo.mabjaia@uem.ac.mz"
   email[10] <- "momed.mahumane@uem.ac.mz"
   email[11] <- "kenneth.mandlate@uem.ac.mz"
   email[12] <- "moreira.vilanculos@uem.ac.mz
   email[13] <- "samuel.abdula@uem.ac.mz"
   email[14] <- "cristencia.mondlane@uem.ac.mz"
   email[15] <- "armando0.michel@uem.ac.mz"
   email[16] <- "silage.muiambo@uem.ac.mz
   email[17] <- "helder.bahadoursing@uem.ac.mz"
   email[18] <- "eliane.mabunda@uem.ac.mz
   email[19] <- "belinda.seda@uem.ac.mz"
   email[20] <- "golpe.mamune@uem.ac.mz
   email[21] <- "juvenaldo.maulate@uem.ac.mz"
   email[22] <- "dias.matsinhe@uem.ac.mz"
   email[23] <- "elizeu.sitole@uem.ac.mz
   email[24] <- "mauricio.guiamba@uem.ac.mz"
   email[25] <- "pedro.mavila@uem.ac.mz"
   email[26] <- "orlando.cinquenta@uem.ac.mz"
   email[27] <- "moniz.mesa@uem.ac.mz"
   email[28] <- "deolindo.sabao@uem.ac.mz"
   email[29] <- "julio.tete@uem.ac.mz"
   email[30] <- "jose.jeto@uem.ac.mz"
   email[31] <- "kamuntajeet.campos@uem.ac.mz"
   email[32] <- "jorge.nhampossa@uem.ac.mz"
   email[33] <- "uvuvwevwevwe.ossas@uem.ac.mz"
   email[34] <- "maria.perreira@uem.ac.mz"
   email[35] <- "magube.assas@uem.ac.mz"
   email[36] <- "moreira.vilanculos@uem.ac.mz"
   email[37] <- "ester.magumane@uem.ac.mz"
   email[38] <- "joao.soto@uem.ac.mz"
   email[39] <- "zenalda.savanguane@uem.ac.mz"
   email[40] <- "sara.omar@uem.ac.mz"
   email[41] <- "esmeralda.henrique@uem.ac.mz"
   email[42] <- "angela.massingue@uem.ac.mz"
   email[43] <- "orlando.maheu@uem.ac.mz"
   email[44] <- "felix.quetxoaio@uem.ac.mz"
   email[45] <- "leonor.ferreira@uem.ac.mz"
   email[46] <- "jaime.mukhuvuri@uem.ac.mz"
   email[47] <- "amilton.jone@uem.ac.mz"
   email[48] <- "jossias.jone@uem.ac.mz"
   email[49] <- "casimiro.maissene@uem.ac.mz"
   email[50] <- "joaquim.madzive@uem.ac.mz"
   email[51] <- "malhane.ambrosio@uem.ac.mz"
   email[52] <- "samanta.mangaze@uem.ac.mz"
   email[53] <- "vergonha.mabissane@uem.ac.mz"
   email[54] <- "jacinto.mahumane@uem.ac.mz"
   email[55] <- "spike.nhamtumbo@uem.ac.mz"
   email[56] <- "carlos.nhamtumbo@uem.ac.mz"
   email[57] <- "miguelito.saraiva@uem.ac.mz"
   email[58] <- "sapuase.magostwana@uem.ac.mz"
   email[59] <- "afonsito.ndande@uem.ac.mz"
   email[60] <- "vivaldo.massingue@uem.ac.mz"
   email[61] <- "beija.santiago@uem.ac.mz"
   email[62] <- "joel.mabeca@uem.ac.mz"
   email[63] <- "amado.mantenga@uem.ac.mz"
   email[64] <- "sidnex.mazive@uem.ac.mz"
   email[65] <- "raia.sibinde@uem.ac.mz"
   email[66] <- "armenio.chacha@uem.ac.mz"
   email[67] <- "chaiba.cumbana@uem.ac.mz"
   email[68] <- "mamanto.sitoe@uem.ac.mz"
   email[69] <- "jamilo.cumbe@uem.ac.mz"
   email[70] <- "angelina.everisto@uem.ac.mz"
   email[71] <- "stelio.mahiene@uem.ac.mz"
   email[72] <- "estefania.maibaze@uem.ac.mz"
   email[73] <- "anastancia.eva@uem.ac.mz"
   email[74] <- "adolfo.otilia.biza@uem.ac.mz"
   email[75] <- "liton.manheque@uem.ac.mz"
   email[76] <- "hortencia.diogo@uem.ac.mz"
   email[77] <- "felismina.salomao@uem.ac.mz"
   email[78] <- "lourenco.nhamuave@uem.ac.mz"
   email[79] <- "kelly.juliao@uem.ac.mz"
   email[80] <- "ura.valente@uem.ac.mz"
   email[81] <- "kelly.matavele@uem.ac.mz"
   email[82] <- "laura.macamo@uem.ac.mz"
   email[83] <- "ermelinda.amados@uem.ac.mz"
   email[84] <- "manuel.zunguze@uem.ac.mz"
   email[85] <- "elodino.faife@uem.ac.mz"
   email[86] <- "arminda.guambe@uem.ac.mz"
   email[87] <- "ernesta.sitoe@uem.ac.mz"
   email[88] <- "iolanda.tsirizane@uem.ac.mz"
   email[89] <- "sofrimento.mabjaia@uem.ac.mz"
   email[90] <- "sara.zavale@uem.ac.mz"
   email[91] <- "nelson.esperanca@uem.ac.mz"
   email[92] <- "david.manjate@uem.ac.mz"
   email[93] <- "flavia.riscado@uem.ac.mz"
   email[94] <- "katia.nhantsave@uem.ac.mz"
   email[95] <- "isaac.momade@uem.ac.mz"
   email[96] <- "anta.bompirasso@uem.ac.mz"
   email[97] <- "castigo.castigo@uem.ac.mz"
   email[98] <- "piedade.alves@uem.ac.mz"
   email[99] <- "julio.langa@uem.ac.mz"
   email[100] <- "sara.mumpaia@uem.ac.mz"
//Docentes
   email[101] <- "dercio.canguissa@uem.ac.mz"
   email[102] <- "januario.simango@uem.ac.mz"
   email[103] <- "ida.alvarinho@uem.ac.mz"
   email[104] <- "sergio.bantu@uem.ac.mz"
   email[105] <- "zaqueu.mantoinha@uem.ac.mz"
   email[106] <- "carlota.ligungo@uem.ac.mz"
   email[107] <- "masego.avantuna@uem.ac.mz"
   email[108] <- "marla.matsinhe@uem.ac.mz"
   email[109] <- "spike.sawezuno@uem.ac.mz"
   email[110] <- "nadia.pelanco@uem.ac.mz"
   email[111] <- "fabricio.fambonela@uem.ac.mz"
   email[112] <- "iracema.muguvuli@uem.ac.mz"

   cadeiradoc[101] <- "Estatística Básica"
   cadeiradoc[102] <- "Estrutura e Gestão das Organizações"
   cadeiradoc[103] <- "Fundamentos da Geometria"
   cadeiradoc[104] <- "Introdução às Tecnologias de Informação e Comunicação"
   cadeiradoc[105] <- "Métodos de Estudo e Habilidades para a Vida"
   cadeiradoc[106] <- "Matemática Básica"
   cadeiradoc[107] <- "Álgebra Linear e Geometria Analítica"
   cadeiradoc[108] <- "Análise Matemática I"
   cadeiradoc[109] <- "Lógica e Teoria de Conjuntos"
   cadeiradoc[110] <- "Estatística Descritiva"
   cadeiradoc[111] <- "Introdução à Informática"
   cadeiradoc[112] <- "Probabilidade e Estatística"
   
   recomendacao[1] <- "Recomendamos que leia"
   recomendacao[2] <- "Recomendamos que leia"
   recomendacao[3] <- "Recomendamos que leia 'Fundamentos da Geometria por Ida Alvarinho'"
   recomendacao[4] <- "Recomendamos que leia"
   recomendacao[5] <- "Recomendamos que leia"
   recomendacao[6] <- "Recomendamos que leia"
   recomendacao[7] <- "Recomendamos que leia"
   recomendacao[8] <- "Recomendamos que leia"
   recomendacao[9] <- "Recomendamos que leia"
   recomendacao[10] <- "Recomendamos que leia"
   recomendacao[11] <- "Recomendamos que leia"
   recomendacao[12] <- "Recomendamos que leia"

   desdedoc[101] <- "2003"
   desdedoc[102] <- "1992"
   desdedoc[103] <- "1979"
   desdedoc[104] <- "2008"
   desdedoc[105] <- "1992"
   desdedoc[106] <- "2013"
   desdedoc[107] <- "2015"
   desdedoc[108] <- "1996"
   desdedoc[109] <- "2017"
   desdedoc[110] <- "2013"
   desdedoc[111] <- "2003"
   desdedoc[112] <- "2012"
   
   abr[101] <- "(EB)"
   abr[102] <- "(EGO)"
   abr[103] <- "(FG)"
   abr[104] <- "(ITIC)"
   abr[105] <- "(MEHV)"
   abr[106] <- "(MB)"
   abr[107] <- "(ALGA)"
   abr[108] <- "(AM I)"
   abr[109] <- "(LTC)"
   abr[110] <- "(ED)"
   abr[111] <- "(II)"
   abr[112] <- "(PE)"
   
   saldo1[1] <- "1,550"
   saldo2[1] <- "400"
   saldo1[2] <- "9,420"
   saldo2[2] <- "514"
   saldo1[3] <- "3,100"
   saldo2[3] <- "786"
   saldo1[4] <- "2,568"
   saldo2[4] <- "0"
   saldo1[5] <- "4,588"
   saldo2[5] <- "245"
   saldo1[6] <- "8,000"
   saldo2[6] <- "999"
   saldo1[7] <- "4,100"
   saldo2[7] <- "7,686"
   saldo1[8] <- "5,542"
   saldo2[8] <- "200"
   saldo1[9] <- "481"
   saldo2[9] <- "925"
   saldo1[10] <- "200"
   saldo2[10] <- "786"
   saldo1[11] <- "2,000"
   saldo2[11] <- "864"
   saldo1[12] <- "20,000"
   saldo2[12] <- "0"
   saldo1[13] <- "455"
   saldo2[13] <- "600"
   saldo1[14] <- "7,612"
   saldo2[14] <- "842"
   saldo1[15] <- "535"
   saldo2[15] <- "1,415"
   saldo1[16] <- "2,510"
   saldo2[16] <- "987"
   saldo1[17] <- "555"
   saldo2[17] <- "475"
   saldo1[18] <- "5,806"
   saldo2[18] <- "2,100"
   saldo1[19] <- "845"
   saldo2[19] <- "1,400"
   saldo1[20] <- "982"
   saldo2[20] <- "7,250"
   saldo1[21] <- "580"
   saldo2[21] <- "4,000"
   saldo1[22] <- "748"
   saldo2[22] <- "800"
   saldo1[23] <- "695"
   saldo2[23] <- "800"
   saldo1[24] <- "0"
   saldo2[24] <- "0"
   saldo1[25] <- "0"
   saldo2[25] <- "0"
   saldo1[26] <- "940"
   saldo2[26] <- "700"
   saldo1[27] <- "5,125"
   saldo2[27] <- "7,800"
   saldo1[28] <- "500"
   saldo2[28] <- "540"
   saldo1[29] <- "320"
   saldo2[29] <- "300"
   saldo1[30] <- "600"
   saldo2[30] <- "680"
   saldo1[31] <- "904"
   saldo2[31] <- "858"
   saldo1[32] <- "444"
   saldo2[32] <- "1,260"
   saldo1[33] <- "3,800"
   saldo2[33] <- "25,897"
   saldo1[34] <- "335"
   saldo2[34] <- "721"
   saldo1[35] <- "409"
   saldo2[35] <- "800"
   saldo1[36] <- "4,136"
   saldo2[36] <- "8,148"
   saldo1[37] <- "9,698"
   saldo2[37] <- "13,250"
   saldo1[38] <- "750"
   saldo2[38] <- "320"
   saldo1[39] <- "150"
   saldo2[39] <- "0"
   saldo1[40] <- "50"
   saldo2[40] <- "0"
   saldo1[41] <- "0"
   saldo2[41] <- "254"
   saldo1[42] <- "1,200"
   saldo2[42] <- "325"
   saldo1[43] <- "6,584"
   saldo2[43] <- "0"
   saldo1[44] <- "0"
   saldo2[44] <- "7,508"
   saldo1[45] <- "849"
   saldo2[45] <- "4,250"
   saldo1[46] <- "988"
   saldo2[46] <- "2,784"
   saldo1[47] <- "0"
   saldo2[47] <- "780"
   saldo1[48] <- "290"
   saldo2[48] <- "370"
   saldo1[49] <- "510"
   saldo2[49] <- "4,804"
   saldo1[50] <- "1,800"
   saldo2[50] <- "3,504"
   saldo1[51] <- "804"
   saldo2[51] <- "350"
   saldo1[52] <- "754"
   saldo2[52] <- "333"
   saldo1[53] <- "540"
   saldo2[53] <- "150"
   saldo1[54] <- "150"
   saldo2[54] <- "9,840"
   saldo1[55] <- "250"
   saldo2[55] <- "960"
   saldo1[56] <- "1,768"
   saldo2[56] <- "3,480"
   saldo1[57] <- "5,890"
   saldo2[57] <- "0"
   saldo1[58] <- "5,120"
   saldo2[58] <- "650"
   saldo1[59] <- "400"
   saldo2[59] <- "297"
   saldo1[60] <- "415"
   saldo2[60] <- "9,581"
   saldo1[61] <- "11,005"
   saldo2[61] <- "4,219"
   saldo1[62] <- "8,724"
   saldo2[62] <- "2,640"
   saldo1[63] <- "0"
   saldo2[63] <- "15"
   saldo1[64] <- "20"
   saldo2[64] <- "88"
   saldo1[65] <- "100"
   saldo2[65] <- "125"
   saldo1[66] <- "40"
   saldo2[66] <- "62"
   saldo1[67] <- "84"
   saldo2[67] <- "90"
   saldo1[68] <- "860"
   saldo2[68] <- "471"
   saldo1[69] <- "250"
   saldo2[69] <- "878"
   saldo1[70] <- "3,510"
   saldo2[70] <- "869"
   saldo1[71] <- "1,325"
   saldo2[71] <- "0"
   saldo1[72] <- "0"
   saldo2[72] <- "10"
   saldo1[73] <- "35"
   saldo2[73] <- "25"
   saldo1[74] <- "423"
   saldo2[74] <- "650"
   saldo1[75] <- "700"
   saldo2[75] <- "895"
   saldo1[76] <- "350"
   saldo2[76] <- "2,987"
   saldo1[77] <- "541"
   saldo2[77] <- "2,016"
   saldo1[78] <- "841"
   saldo2[78] <- "487"
   saldo1[79] <- "150"
   saldo2[79] <- "222"
   saldo1[80] <- "325"
   saldo2[80] <- "488"
   saldo1[81] <- "520"
   saldo2[81] <- "745"
   saldo1[82] <- "2,480"
   saldo2[82] <- "253"
   saldo1[83] <- "0"
   saldo2[83] <- "3,894"
   saldo1[84] <- "4,150"
   saldo2[84] <- "30"
   saldo1[85] <- "4,845"
   saldo2[85] <- "2,150"
   saldo1[86] <- "3,258"
   saldo2[86] <- "458"
   saldo1[87] <- "2,925"
   saldo2[87] <- "1,112"
   saldo1[88] <- "241"
   saldo2[88] <- "364"
   saldo1[89] <- "6,187"
   saldo2[89] <- "2,146"
   saldo1[90] <- "2,021"
   saldo2[90] <- "210"
   saldo1[91] <- "8,476"
   saldo2[91] <- "245"
   saldo1[92] <- "1,840"
   saldo2[92] <- "658"
   saldo1[93] <- "410"
   saldo2[93] <- "788"
   saldo1[94] <- "3,620"
   saldo2[94] <- "7,450"
   saldo1[95] <- "0"
   saldo2[95] <- "20"
   saldo1[96] <- "0"
   saldo2[96] <- "7,596"
   saldo1[97] <- "25"
   saldo2[97] <- "1,420"
   saldo1[98] <- "80"
   saldo2[98] <- "90"
   saldo1[99] <- "1,000"
   saldo2[99] <- "580"
   saldo1[100] <- "230"
   saldo2[100] <- "4,500"
   
   para conta <- 1 ate 80 faca
        nota_eb1[conta] <- "?"
        nota_eb2[conta] <- "?"
        nota_eb3[conta] <- "?"
        nota_eb4[conta] <- "?"
        nota_fg1[conta] <- "?"
        nota_fg2[conta] <- "?"
        nota_fg3[conta] <- "?"
        nota_fg4[conta] <- "?"
        nota_itic1[conta] <- "?"
        nota_itic2[conta] <- "?"
        nota_itic3[conta] <- "?"
        nota_itic4[conta] <- "?"
        nota_mehv1[conta] <- "?"
        nota_mehv2[conta] <- "?"
        nota_mehv3[conta] <- "?"
        nota_mehv4[conta] <- "?"
        nota_mb1[conta] <- "?"
        nota_mb2[conta] <- "?"
        nota_mb3[conta] <- "?"
        nota_mb4[conta] <- "?"
        nota_alga1[conta] <- "?"
        nota_alga2[conta] <- "?"
        nota_alga3[conta] <- "?"
        nota_alga4[conta] <- "?"
        nota_ami1[conta] <- "?"
        nota_ami2[conta] <- "?"
        nota_ami3[conta] <- "?"
        nota_ami4[conta] <- "?"
   fimpara
   para conta <- 1 ate 32 faca
        nota_ego1[conta] <- "?"
        nota_ego2[conta] <- "?"
        nota_ego3[conta] <- "?"
        nota_ego4[conta] <- "?"
   fimpara
   para conta <- 76 ate 79 faca
        nota_ed1[conta] <- "?"
        nota_ed2[conta] <- "?"
        nota_ed3[conta] <- "?"
        nota_ed4[conta] <- "?"
        nota_pe1[conta] <- "?"
        nota_pe2[conta] <- "?"
        nota_pe3[conta] <- "?"
        nota_pe4[conta] <- "?"
   fimpara
   para conta <- 51 ate 54 faca
        nota_ltc1[conta] <- "?"
        nota_ltc2[conta] <- "?"
        nota_ltc3[conta] <- "?"
        nota_ltc4[conta] <- "?"
        nota_ii1[conta] <- "?"
        nota_ii2[conta] <- "?"
        nota_ii3[conta] <- "?"
        nota_ii4[conta] <- "?"
   fimpara
   para conta <- 1 ate 22 faca
        notaav1[conta] <- ""
        notaav2[conta] <- ""
        notaav3[conta] <- ""
        notaav4[conta] <- ""
        mediaav[conta] <- ""
   fimpara

   para conta <- 101 ate 112 faca
        saldo1[conta] <- ":D"
        saldo2[conta] <- ":D"
        inic_av1[conta] <- falso
        inic_av2[conta] <- falso
        inic_av3[conta] <- falso
        inic_av4[conta] <- falso
   fimpara
   para conta <- 1 ate 25 faca
        datam[conta] <- "2021-05-17"
   fimpara
   para conta <- 26 ate 50 faca
        datam[conta] <- "2021-05-15"
   fimpara
   para conta <- 51 ate 75 faca
        datam[conta] <- "2021-05-13"
   fimpara
   para conta <- 76 ate 100 faca
        datam[conta] <- "2021-05-14"
   fimpara

fimse

   se pronto = 1 entao
      pronto <- 0
      Start ()
   fimse

   encontrado <- falso
   para conta <- 1 ate 112 faca
      se codigos[conta] = codigo entao
         n <- conta
         encontrado <- verdadeiro
         interrompa
      fimse
   fimpara
   se encontrado = verdadeiro entao
      se senhas[n] <> senha entao
         escreva ("Código ou senha errada.")
         timer (3000)
         timer (0)
         limpatela
         escreva ("Tente novamente.")
         timer (3000)
         timer (0)
         chamado <- verdadeiro
         Start ()
      fimse
   senao
      escreva ("Código ou senha errada.")
      timer (3000)
      timer (0)
      limpatela
      escreva ("Tente novamente.")
      timer (3000)
      timer (0)
      chamado <- verdadeiro
      Start ()
   fimse
   limpatela
   escreval ("Conta encontrada.")
   timer 1100
   timer 0
   limpatela
   CarregarMenu ()

FimProcedimento


Procedimento AlgoDeuErrado ()

Inicio

   timer (6000)
   timer (0)
   limpatela
   escreval ()
   escreval ()
   escreval ()
   escreval ()
   escreval ()
   escreval ()
   escreval ()
   escreval ()
   escreval ("                                 ______________________")
   escreval ("                                |                      |")
   escreval ("                                |                      |")
   escreval ("                                |     X          X     |")
   escreval ("                                |         .   .        |")
   escreval ("                                |          ...         |")
   escreval ("                                |         . . .        |")
   escreval ("                                |       .       .      |")
   escreval ("                                |     .           .    |")
   escreval ("                                |______________________|")
   escreval ()
   escreval ("                Oops. Algo deu errado durante o carregamento dessa página.")
   escreval ()
   escreval ("               Cheque a sua conexão à Internet e volte a carregar a página.")
   escreval ()
   timer (1200)
   timer (0)
   escreval ("                           Aperte 'r' para recarregar a página.")
   repita
      leia (respostanet)
      se respostanet = "r" entao
         Carregarmenu()
       senao
         escreval ("Resposta inválida.")
      fimse
   ate (respostanet = "r")

Fimprocedimento

Procedimento CarregarMenu ()

var

   aleat1, aleat2, aleat3, aleat4, aleat5, aleat6, aleat7, aleat8, aleatnet, aleatnetpos : inteiro

inicio

escolha cor_c[n]
  caso "1"
    mudacor ("preto","frente")
  caso "2"
    mudacor ("branco","frente")
  caso "3"
    mudacor ("amarelo","frente")
  caso "4"
    mudacor ("azul","frente")
  caso "5"
    mudacor ("verde","frente")
  caso "6"
    mudacor ("vermelho","frente")
fimescolha
escolha cor_f[n]
  caso "1"
    mudacor ("preto","fundos")
  caso "2"
    mudacor ("branco","fundos")
  caso "3"
    mudacor ("amarelo","fundos")
  caso "4"
    mudacor ("azul","fundos")
  caso "5"
    mudacor ("verde","fundos")
  caso "6"
    mudacor ("vermelho","fundos")
fimescolha

   aleatorio 1, 300
   leia (aleat1)
   leia (aleat2)
   leia (aleat3)
   leia (aleat4)
   leia (aleat5)
   leia (aleat6)
   leia (aleat7)
   leia (aleat8)
   aleatorio off
   aleatorio 1, 4
   leia (aleatnet)
   leia (aleatnetpos)
   aleatorio off
   limpatela

   timer (aleat1)
   escreval ("       _________________________________________________________________________________________________________")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                               SIGA - UEM                                                |")
   timer (aleat2)
   escreval ("      |_________________________________________________________________________________________________________|")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |   Página Inicial   |                                                                                    |")
   se (aleatnet = 2)e(aleatnetpos = 1) entao
      AlgoDeuErrado ()
   senao
      escreval ("      |____________________|                                                                                    |")
      escreval ("      |                    |                                                                                    |")
      timer (aleat3)
      escreval ("      |     Meu Perfil     |                                                                                    |")
      escreval ("      |____________________|     ______________      ______________      ______________      ______________     |")
      escreval ("      |                    |    |              |    |              |    |              |    |              |    |")
      escreval ("      |     Calendário     |    |              |    |              |    |              |    |              |    |")
      timer (aleat4)
      escreval ("      |____________________|    |  Meu Perfil  |    |  Calendário  |    |    Mídia     |    |    Turmas    |    |")
      escreval ("      |                    |    |              |    |              |    |              |    |              |    |")
      escreval ("      |       Mídia        |    |              |    |              |    |              |    |              |    |")
      se (aleatnet = 2)e(aleatnetpos = 2) entao
         AlgoDeuErrado ()
      senao
         escreval ("      |____________________|    |______________|    |______________|    |______________|    |______________|    |")
         timer (aleat5)
         escreval ("      |                    |                                                                                    |")
         escreval ("      |       Turmas       |                                                                                    |")
         escreval ("      |____________________|                                                                                    |")
         escreval ("      |                    |                                                                                    |")
         escreval ("      |     Avaliações     |                                                                                    |")
         timer (aleat6)
         se (aleatnet = 2)e(aleatnetpos = 3) entao
            AlgoDeuErrado ()
         senao
            escreval ("      |____________________|     ______________      ______________      ______________      ______________     |")
            escreval ("      |                    |    |              |    |              |    |              |    |              |    |")
            escreval ("      |      Docentes      |    |              |    |              |    |              |    |              |    |")
            escreval ("      |____________________|    |  Avaliações  |    |   Docentes   |    |  Pagamentos  |    |    Sobre     |    |")
            escreval ("      |                    |    |              |    |              |    |              |    |              |    |")
            escreval ("      |       E-mail       |    |              |    |              |    |              |    |              |    |")
            escreval ("      |____________________|    |______________|    |______________|    |______________|    |______________|    |")
            timer (aleat7)
            se (aleatnet = 2)e(aleatnetpos = 4) entao
               AlgoDeuErrado ()
            senao
               escreval ("      |                    |                                                                                    |")
               escreval ("      |     Pagamentos     |                                                                                    |")
               escreval ("      |____________________|                                                                                    |")
               timer (aleat8)
               escreval ("      |                    |                                                                                    |")
               escreval ("      |       Sobre        |                                                                                    |")
               escreval ("      |____________________|____________________________________________________________________________________|")                                                                                                              |")                                                                                                            |")
            fimse
         fimse
      fimse
   fimse
   timer (0)
   limpatela
   CarregarMenuComGuia ()

FimProcedimento

Procedimento CarregarMenuComGuia ()

var

notiesp : caractere
notitemp : inteiro

Inicio

notiesp <- "   "
se noti[n] > 0 entao
   notitemp <- compr(notiesp) - compr(numpcarac(noti[n]))
   notiesp <- ""
   para conta <- 1 ate notitemp faca
        notiesp <- notiesp + " "
   fimpara
fimse
   limpatela
   escreval ("       _________________________________________________________________________________________________________")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                               SIGA - UEM                                                |")
   escreval ("      |_________________________________________________________________________________________________________|")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |   Página Inicial   |                                                                                    |")
   escreval ("      |____________________|                                                                                    |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |     Meu Perfil     |                                                                                    |")
   escreval ("      |____________________|     ______________      ______________      ______________      ______________     |")
   escreval ("      |                    |    |              |    |              |    |              |    |              |    |                   ____________________________")
   escreval ("      |     Calendário     |    |              |    |              |    |              |    |              |    |                  |                            |")
   escreval ("      |____________________|    |  Meu Perfil  |    |  Calendário  |    |    Mídia     |    |    Turmas    |    |                  |            Guia            |")
   escreval ("      |                    |    |              |    |              |    |              |    |              |    |                  |----------------------------|")
   escreval ("      |       Mídia        |    |              |    |              |    |              |    |              |    |                  | Meu Perfil = 'm'           |")
   escreval ("      |____________________|    |______________|    |______________|    |______________|    |______________|    |                  |----------------------------|")
   escreval ("      |                    |                                                                                    |                  | Calendário = 'c'           |")
   escreval ("      |       Turmas       |                                                                                    |                  |----------------------------|")
   escreval ("      |____________________|                                                                                    |                  | Mídia = 'mi'               |")
   escreval ("      |                    |                                                                                    |                  |----------------------------|")
   escreval ("      |     Avaliações     |                                                                                    |                  | Turmas = 't'               |")
   escreval ("      |____________________|     ______________      ______________      ______________      ______________     |                  |----------------------------|")
   escreval ("      |                    |    |              |    |              |    |              |    |              |    |                  | Avaliações = 'a'           |")
   escreval ("      |      Docentes      |    |              |    |              |    |              |    |              |    |                  |----------------------------|")
   escreval ("      |____________________|    |  Avaliações  |    |   Docentes   |    |  Pagamentos  |    |    Sobre     |    |                  | Docentes = 'd'             |")
   se noti[n] > 0 entao
      escreval ("      |            ",noti[n], notiesp ,"    |    |              |    |              |    |              |    |              |    |                  |----------------------------|")
    senao
      escreval ("      |                    |    |              |    |              |    |              |    |              |    |                  |----------------------------|")
   fimse
   escreval ("      |       E-mail       |    |              |    |              |    |              |    |              |    |                  | E-mail = 'e'               |")
   escreval ("      |____________________|    |______________|    |______________|    |______________|    |______________|    |                  |----------------------------|")
   escreval ("      |                    |                                                                                    |                  | Pagamentos = 'p'           |")
   escreval ("      |     Pagamentos     |                                                                                    |                  |----------------------------|")
   escreval ("      |____________________|                                                                                    |                  | Sobre = 's'                |")
   escreval ("      |                    |                                                                                    |                  |----------------------------|")
   escreval ("      |       Sobre        |                                                                                    |                  | Sair = 'exit'              |")
   escreval ("      |____________________|____________________________________________________________________________________|                  |____________________________|")
   escreval ()

   escreval ("Qual área deseja acessar? (Consulte o guia)")
   timer 0
   repita
      leia (resposta)
      se resposta = "m" entao
         se contadoc = falso entao
            MeuPerfil ()
          senao
             chamadoporperfil <- verdadeiro
             Docentes2 ()
         fimse
      senao
         se resposta = "c" entao
            Calendario ()
         senao
            se resposta = "mi" entao
               Midia ()
            senao
               se resposta = "t" entao
                  Turmas ()
               senao
                  se resposta = "a" entao
                     Avaliacoes ()
                  senao
                     se resposta = "d" entao
                        Docentes ()
                     senao
                        se resposta = "e" entao
                           Notificacoes ()
                        senao
                           se resposta = "p" entao
                              Pagamentos ()
                           senao
                              se resposta = "s" entao
                                 Sobre ()
                              senao
                                 se resposta = "exit" entao
                                    Start ()
                                 senao
                                    escreval ("Consulte o guia.")
                                 fimse
                              fimse
                           fimse
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
      fimse
   ate (resposta = "p")ou(resposta = "m")ou(resposta = "c")ou(resposta = "mi")ou(resposta = "t")ou(resposta = "a")ou(resposta = "d")ou(resposta = "e")ou(resposta = "s")ou(resposta = "exit")

FimProcedimento


Procedimento Guia ()

Inicio

   escreval ("                                                                                                                                      ___________________________")                                                                                                              |")                                                                                                            |")
   escreval ("                                                                                                                                     |                           |")
   escreval ("                                                                                                                                     |            Guia           |")
   escreval ("                                                                                                                                     |---------------------------|")
   escreval ("                                                                                                                                     | Página Inicial = ""p""    |")
   escreval ("                                                                                                                                     |---------------------------|")
   escreval ("                                                                                                                                     | Meu Perfil = ""m""        |")
   escreval ("                                                                                                                                     |---------------------------|")
   escreval ("                                                                                                                                     | Matrículas = ""ma""       |")
   escreval ("                                                                                                                     |---------------------------|")
   escreval ("                                                                                                                     | Inscrições = ""i""        |")
   escreval ("                                                                                                                     |---------------------------|")
   escreval ("                                                                                                                     | Turmas = ""t""            |")
   escreval ("                                                                                                                     |---------------------------|")
   escreval ("                                                                                                                     | Avaliações = ""a""        |")
   escreval ("                                                                                                                     |---------------------------|")
   escreval ("                                                                                                                     | Docentes = ""d""          |")
   escreval ("                                                                                                                     |---------------------------|")
   escreval ("                                                                                                                     | Notificações = ""n""      |")
   escreval ("                                                                                                                     |---------------------------|")
   escreval ("                                                                                                                     | Pagamentos = ""pa""       |")
   escreval ("                                                                                                                     |---------------------------|")
   escreval ("                                                                                                                     | Sobre = ""s""             |")
   escreval ("                                                                                                                     |___________________________|")

FimProcedimento


Procedimento MeuPerfil ()

inicio

se mperfil = falso entao
   para conta <- 1 ate 16 faca
        espacom[conta] <- ""
   fimpara
   nat2 <- ""
   e_ <- ""
   mail <- ""
   apelido <- ""
   apelido2 <- ""
   apelido3 <- ""
   parte2 <- ""
   se compr(nomes[n]) < 28 entao
      tempm <- compr("                             ") - compr(nomes[n])
      para conta <- 1 ate tempm faca
         espacom[1] <- espacom[1] + " "
      fimpara
      espacom[2] <- "                             "
   senao
      para conta <- compr(nomes[n]) ate 1 passo -1 faca
         se (copia(nomes[n];conta,1) = " ")e(conta < 28) entao
            apelido <- copia(nomes[n];conta+1,compr(nomes[n]))
            nomes[n] <- copia(nomes[n],1,conta-1)
            interrompa
         fimse
      fimpara
      tempm <- compr("                             ") - compr(nomes[n])
      para conta <- 1 ate tempm faca
         espacom[1] <- espacom[1] + " "
      fimpara
      tempm <- compr("                             ") - compr(apelido)
      para conta <- 1 ate tempm faca
         espacom[2] <- espacom[2] + " "
      fimpara
   fimse

   tempm <- compr("               ") - compr(data_nascimento[n])
   para conta <- 1 ate tempm faca
      espacom[3] <- espacom[3] + " "
   fimpara

   tempm <- compr("                             ") - compr(sexo[n])
   para conta <- 1 ate tempm faca
      espacom[4] <- espacom[4] + " "
   fimpara

   se compr(nome_do_pai[n]) < 22 entao
      tempm <- compr("                      ") - compr(nome_do_pai[n])
      para conta <- 1 ate tempm faca
         espacom[5] <- espacom[5] + " "
      fimpara
      espacom[6] <- "                      "
   senao
      para conta <- compr(nome_do_pai[n]) ate 1 passo -1 faca
         se (copia(nome_do_pai[n];conta,1) = " ")e(conta < 22) entao
            apelido2 <- copia(nome_do_pai[n];conta+1,compr(nome_do_pai[n]))
            nome_do_pai[n] <- copia(nome_do_pai[n],1,conta-1)
            interrompa
         fimse
      fimpara
      tempm <- compr("                      ") - compr(nome_do_pai[n])
      para conta <- 1 ate tempm faca
         espacom[5] <- espacom[5] + " "
      fimpara
      tempm <- compr("                      ") - compr(apelido2)
      para conta <- 1 ate tempm faca
         espacom[6] <- espacom[6] + " "
      fimpara
   fimse

   se compr(nome_da_mae[n]) < 22 entao
      tempm <- compr("                      ") - compr(nome_da_mae[n])
      para conta <- 1 ate tempm faca
         espacom[7] <- espacom[7] + " "
      fimpara
      espacom[8] <- "                      "
   senao
      para conta <- compr(nome_da_mae[n]) ate 1 passo -1 faca
         se (copia(nome_da_mae[n];conta,1) = " ")e(conta < 22) entao
            apelido3 <- copia(nome_da_mae[n];conta+1,compr(nome_da_mae[n]))
            nome_da_mae[n] <- copia(nome_da_mae[n],1,conta-1)
            interrompa
         fimse
      fimpara
      tempm <- compr("                      ") - compr(nome_da_mae[n])
      para conta <- 1 ate tempm faca
         espacom[7] <- espacom[7] + " "
      fimpara
      tempm <- compr("                      ") - compr(apelido3)
      para conta <- 1 ate tempm faca
         espacom[8] <- espacom[8] + " "
      fimpara
   fimse

   tempm <- compr("                    ") - compr(nacionalidade[n])
   para conta <- 1 ate tempm faca
      espacom[9] <- espacom[9] + " "
   fimpara

   se compr(naturalidade[n]) < 21 entao
      tempm <- compr("                     ") - compr(naturalidade[n])
      para conta <- 1 ate tempm faca
         espacom[10] <- espacom[10] + " "
      fimpara
      espacom[16] <- "                     "
   senao
      para conta <- compr(naturalidade[n]) ate 1 passo -1 faca
           se (copia(naturalidade[n];conta,1) = " ")e(conta < 28) entao
              nat2 <- copia(naturalidade[n];conta+1,compr(naturalidade[n]))
              naturalidade[n] <- copia(naturalidade[n],1,conta-1)
              interrompa
           fimse
      fimpara
      tempm <- compr("                     ") - compr(naturalidade[n])
      para conta <- 1 ate tempm faca
           espacom[10] <- espacom[10] + " "
      fimpara
      tempm <- compr("                     ") - compr(nat2)
      para conta <- 1 ate tempm faca
           espacom[16] <- espacom[16] + " "
      fimpara
   fimse

   se compr(curso[n]) < 28 entao
      tempm <- compr("                            ") - compr(curso[n])
      para conta <- 1 ate tempm faca
         espacom[11] <- espacom[11] + " "
      fimpara
      espacom[12] <- "                            "
   senao
      para conta <- compr(curso[n]) ate 1 passo -1 faca
         se (copia(curso[n];conta,1) = " ")e(conta < 28) entao
            parte2 <- copia(curso[n];conta+1,compr(curso[n]))
            curso[n] <- copia(curso[n],1,conta-1)
            interrompa
         fimse
      fimpara
      tempm <- compr("                            ") - compr(curso[n])
      para conta <- 1 ate tempm faca
         espacom[11] <- espacom[11] + " "
      fimpara
      tempm <- compr("                            ") - compr(parte2)
      para conta <- 1 ate tempm faca
         espacom[12] <- espacom[12] + " "
      fimpara
   fimse

   tempm <- compr("                            ") - compr(nivel[n])
   para conta <- 1 ate tempm faca
      espacom[13] <- espacom[13] + " "
   fimpara

   se compr(email[n]) < 28 entao
      tempm <- compr("                           ") - compr(email[n])
      para conta <- 1 ate tempm faca
         espacom[14] <- espacom[14] + " "
      fimpara
      e_ <- email[n]
      espacom[15] <- "                                   "
   senao
      tempm <- compr("                                   ") - compr(email[n])
      para conta <- 1 ate tempm faca
         espacom[15] <- espacom[15] + " "
      fimpara
      mail <- email[n]
      espacom[14] <- "                           "
   fimse
   mperfil <- verdadeiro
fimse

   limpatela
   escreval ("       _________________________________________________________________________________________________________")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                               SIGA - UEM                                                |")
   escreval ("      |_________________________________________________________________________________________________________|")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |____________________|    ____________________________________                                            |")
   escreval ("      |                    |   |                .  .                |                                           |")
   escreval ("      |     Meu Perfil     |   |              .      .              |                                           |")
   escreval ("      |____________________|   |              .      .              |                                           |")
   escreval ("      |                    |   |               .    .               |                                           |")
   escreval ("      |                    |   |               .    .               |                                           |")
   escreval ("      |                    |   |             .        .             |                                           |")
   escreval ("      |                    |   |           .            .           |                                           |")
   escreval ("      |                    |   | Dados Pessoais          .          |     Dados Académicos                      |")
   escreval ("      |                    |   |------------------------------------|    .------------------------------------. |")
   escreval ("      |                    |   |                                    |    |                                    | |")
   escreval ("      |                    |   | Nome: ", nomes[n], espacom[1],"|    | Código de Estudante: ", codigos[n], "      | |")
   escreval ("      |                    |   |       ", apelido, espacom[2], "|    |                                    | |")
   escreval ("      |                    |   | Sexo: ", sexo[n], espacom[4], "|    | Curso: ", curso[n], espacom[11], "| |")
   escreval ("      |                    |   |                                    |    |        ", parte2, espacom[12], "| |")
   escreval ("      |                    |   | Data de Nascimento: ", data_nascimento[n], espacom[3], "|    | Faculdade: Faculdade de Ciências   | |")
   escreval ("      |                    |   |                                    |    |                                    | |")
   escreval ("      |                    |   | Nome do Pai: ", nome_do_pai[n], espacom[5], "|    | Departamento: Matemática           | |")
   escreval ("      |                    |   |              ", apelido2, espacom[6], "|    |               e Informática        | |                   ________________________")
   escreval ("      |                    |   | Nome da Mãe: ", nome_da_mae[n], espacom[7], "|    | Nível: ", nivel[n], espacom[13],"| |                  |                        |")
   escreval ("      |                    |   |              ", apelido3, espacom[8],"|    |                                    | |                  |          Guia          |")
   escreval ("      |                    |   | Nacionalidade: ", nacionalidade[n], espacom[9], "|    | E-mail: ", e_, espacom[14], "| |                  |------------------------|")
   escreval ("      |                    |   |                                    |    | ", mail, espacom[15], "| |                  | Customizar = 'c'       |")
   escreval ("      |                    |   | Naturalidade: ", naturalidade[n], espacom[10], "|    |                                    | |                  |------------------------|")
   escreval ("      |                    |   |               ", nat2, espacom[16], "|    |                                    | |                  | Mudar senha = 'm'      |")
   escreval ("      |                    |   |____________________________________|    |____________________________________| |                  |------------------------|")
   escreval ("      |                    |                                                                                    |                  | Voltar = 'v'           |")
   escreval ("      |____________________|____________________________________________________________________________________|                  |________________________|")
   escreval ()
   escreval ()
   escreval ("O que deseja fazer? (Consulte o guia)")
   repita
     leia (resposta)
     se (resposta <> "v")e(resposta <> "m")e(resposta <> "c") entao
        escreval ("Consulte o guia.")
     fimse
     se resposta = "m" entao
        MudarSenha ()
      senao
         se resposta = "c" entao
            Customizar ()
         fimse
     fimse
   ate resposta = "v"
   CarregarMenuComGuia ()

FimProcedimento


Procedimento MudarSenha ()

var

tempsenha, antsenha : caractere
digsenha, maiusculo, minusculo, numsenha, caracterdig : inteiro
senhainvalida : logico
aviso1, aviso2 : caractere

Inicio

limpatela
escreval ("Atenção!")
timer 2500
timer 0
limpatela
aviso1 <- "Antes de mudar a sua senha, saiba que o SIGA não se responsabiliza por senhas perdidas ou pelo acesso de terceiros à sua conta."
aviso2 <- "Manter a sua senha em sigilo é inteiramente a sua responsabilidade."
para conta <- 1 ate compr(aviso1) faca
     escreva (copia(aviso1;conta,1))
     timer 15
     timer 0
fimpara
timer 1000
timer 0
escreval ()
escreval ()
para conta <- 1 ate compr(aviso2) faca
     escreva (copia(aviso2;conta,1))
     timer 15
     timer 0
fimpara
timer 1000
timer 0
escreval ()
escreval ()
escreval ("Continuar mesmo assim?")
leia (resposta)
enquanto (resposta <> "s")e(resposta <> "n") faca
         escreval ("Resposta inválida. Tente novamente. (s = sim, n = não)")
         leia (resposta)
fimenquanto
limpatela
se resposta = "n" entao
   escreval ("Pedido cancelado.")
   timer 1500
   timer 0
   para conta <- 1 ate 3 faca
        limpatela
        escreva ("Redirecionando o usuário...")
        timer 1200
        timer 0
        limpatela
        escreva ("Redirecionando o usuário..")
        timer 1200
        timer 0
   fimpara
   MeuPerfil ()
 senao
    tempsenha <- senhas[n]
    escreval ("Sua senha atual é ", senhas[n], ".")
    timer 2000
    timer 0
    escreval ()
    escreval ()
    escreval ("Qual é a sua nova senha?")
    leia (tempsenha)
    repita
        senhainvalida <- falso
        maiusculo <- 0
        minusculo <- 0
        numsenha <- 0
        caracterdig <- 0
        limpatela
        se compr(tempsenha) < 8 entao
           limpatela
           escreval (tempsenha)
           escreval ("A sua senha deve ter pelo menos 8 dígitos. Tente novamente.")
           senhainvalida <- verdadeiro
           leia (tempsenha)
         senao
            para conta <- 1 ate compr(tempsenha) faca
                 digsenha <- asc(copia(tempsenha;conta,1))
                 se ((digsenha >= 65)e(digsenha <= 90))ou((digsenha >= 192)e(digsenha <= 195))ou(digsenha = 199)ou((digsenha >= 200)e(digsenha <= 206))ou((digsenha >= 210)e(digsenha <= 213))ou((digsenha >= 217)e(digsenha <= 219)) entao
                    maiusculo <- maiusculo + 1
                  senao
                     se ((digsenha >= 97)e(digsenha <= 122))ou((digsenha >= 224)e(digsenha <= 227))ou(digsenha = 231)ou((digsenha >= 233)e(digsenha <= 238))ou((digsenha >= 242)e(digsenha <= 245))ou((digsenha >= 249)e(digsenha <= 251)) entao
                        minusculo <- minusculo + 1
                      senao
                         se (digsenha >= 48)e(digsenha <= 57) entao
                            numsenha <- numsenha + 1
                          senao
                             caracterdig <- caracterdig + 1
                         fimse
                     fimse
                 fimse
            fimpara
            se (maiusculo < 1)ou(minusculo < 1)ou(numsenha < 1)ou(caracterdig < 1) entao
               limpatela
               escreval (tempsenha)
               escreval ("Senha fraca demais. A sua senha deve ter pelo menos uma letra maiúscula, uma letra minúscula, um número, e um caractér especial. Tente novamente.")
               senhainvalida <- verdadeiro
               leia (tempsenha)
            fimse
        fimse
    ate senhainvalida = falso
    limpatela
    escreval ("A sua passará a ser ", tempsenha, ". Continuar?")
    leia (resposta)
    enquanto (resposta <> "s")e(resposta <> "n") faca
             escreval ("Resposta inválida. Tente novamente. (s = sim, n = não)")
             leia (resposta)
    fimenquanto
    limpatela
    se resposta = "n" entao
       escreval ("Pedido cancelado.")
       timer 1500
       timer 0
       para conta <- 1 ate 3 faca
            limpatela
            escreva ("Redirecionando o usuário...")
            timer 1200
            timer 0
            limpatela
            escreva ("Redirecionando o usuário..")
            timer 1200
            timer 0
       fimpara
       MeuPerfil ()
     senao
        antsenha <- senhas[n]
        senhas[n] <- tempsenha
        escreval ("A sua senha foi mudada com sucesso. Mantenha-a num lugar seguro.")
        escreval ("Senha antiga: ", antsenha)
        escreval ("Senha nova: ", senhas[n])
        escreval ()
        escreval ("Aperte 'c' para continuar.")
        leia (resposta)
        enquanto resposta <> "c" faca
                 escreval ("Resposta inválida. Tente novamente.")
                 leia (resposta)
        fimenquanto
    fimse
fimse
MeuPerfil ()

FimProcedimento

Procedimento Customizar ()

Inicio

repita
   limpatela
   escreval ("Escolha a cor do conteúdo:")
   escreval ()
   escreval ("1 - Preto")
   escreval ("2 - Branco")
   escreval ("3 - Amarelo")
   escreval ("4 - Azul")
   escreval ("5 - Verde")
   escreval ("6 - Vermelho")
   leia (cor_c[n])
   enquanto (cor_c[n] <> "1")e(cor_c[n] <> "2")e(cor_c[n] <> "3")e(cor_c[n] <> "4")e(cor_c[n] <> "5")e(cor_c[n] <> "6") faca
         escreval ("Escolha inválida. Tente novamente.")
         leia (cor_c[n])
   fimenquanto
   limpatela
   escreval ("Escolha a cor do fundo:")
   escreval ()
   escreval ("1 - Preto")
   escreval ("2 - Branco")
   escreval ("3 - Amarelo")
   escreval ("4 - Azul")
   escreval ("5 - Verde")
   escreval ("6 - Vermelho")
   leia (cor_f[n])
   enquanto (cor_f[n] <> "1")e(cor_f[n] <> "2")e(cor_f[n] <> "3")e(cor_f[n] <> "4")e(cor_f[n] <> "5")e(cor_f[n] <> "6") faca
         escreval ("Escolha inválida. Tente novamente.")
         leia (cor_f[n])
   fimenquanto
   enquanto cor_c[n] = cor_f[n] faca
         escreval ("O conteúdo não pode ter a mesma cor que o fundo. Escolha outra cor.")
         leia (cor_f[n])
   fimenquanto
   enquanto ((cor_c[n] = "2")e(cor_f[n] = "3"))ou((cor_c[n] = "3")e(cor_f[n] = "2")) faca
         escreval ("O contraste entre essas duas cores é muito baixo. Escolha outra cor.")
         leia (cor_f[n])
   fimenquanto
   escolha cor_c[n]
     caso "1"
        mudacor ("preto","frente")
     caso "2"
        mudacor ("branco","frente")
     caso "3"
        mudacor ("amarelo","frente")
     caso "4"
        mudacor ("azul","frente")
     caso "5"
        mudacor ("verde","frente")
     caso "6"
        mudacor ("vermelho","frente")
   fimescolha
   escolha cor_f[n]
     caso "1"
        mudacor ("preto","fundos")
     caso "2"
        mudacor ("branco","fundos")
     caso "3"
        mudacor ("amarelo","fundos")
     caso "4"
        mudacor ("azul","fundos")
     caso "5"
        mudacor ("verde","fundos")
     caso "6"
        mudacor ("vermelho","fundos")
   fimescolha
   limpatela
   escreval ("Deseja alterar algo?")
   leia (resposta)
   enquanto (resposta <> "s")e(resposta <> "n") faca
             escreval ("Resposta inválida. Tente novamente.")
             leia (resposta)
   fimenquanto
ate resposta = "n"
se contadoc = falso entao
   MeuPerfil ()
 senao
    chamadoporperfil <- verdadeiro
    Docentes2 ()
fimse


FimProcedimento

Procedimento Calendario ()

Inicio

   limpatela
   escreval ("       _________________________________________________________________________________________________________")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                               SIGA - UEM                                                |")
   escreval ("      |_________________________________________________________________________________________________________|")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |               Janeiro                                    Fevereiro                 |")
   escreval ("      |                    |     ___________________________                 ___________________________        |")
   escreval ("      |                    |    |   |   |   |   |   |   |   |               |   |   |   |   |   |   |   |       |")
   escreval ("      |                    |    |_1_|_2_|_3_|_4_|_5_|_6_|_7_|               |_1_|_2_|_3_|_4_|_5_|_6_|_7_|       |")
   escreval ("      |____________________|    |   |   |   |   |   |   |   |               |   |   |   |   |   |   |   |       |")
   escreval ("      |                    |    |_8_|_9_|10_|11_|12_|13_|14_|               |_8_|_9_|10_|11_|12_|13_|14_|       |")
   escreval ("      |     Calendário     |    |   |   |   |   |   |   |   |               |   |   |   |   |   |   |   |       |")
   escreval ("      |____________________|    |15_|16_|17_|18_|19_|20_|21_|               |15_|16_|17_|18_|19_|20_|21_|       |")
   escreval ("      |                    |    |   |   |   |   |   |   |   |               |   |   |   |   |   |   |   |       |")
   escreval ("      |                    |    |22_|23_|24_|25_|26_|27_|28_|               |22_|23_|24_|25_|26_|27_|28_|       |")
   escreval ("      |                    |    |   |   |   |   |   |   |   |               |   |   |   |   |   |   |   |       |")
   escreval ("      |                    |    |29 |30 |31 |   |   |   |   |               |29 |   |   |   |   |   |   |       |")
   escreval ("      |                    |    |___|___|___|___|___|___|___|               |___|___|___|___|___|___|___|       |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                Março                                       Abril                   |")
   escreval ("      |                    |     ___________________________                 ___________________________        |")
   escreval ("      |                    |    |   |   |   |   |   |   |   |               |   |   |   |   |   |   |   |       |                   ________________________ ")
   escreval ("      |                    |    |_1_|_2_|_3_|_4_|_5_|_6_|_7_|               |_1_|_2_|_3_|_4_|_5_|_6_|_7_|       |                  |                        |")
   escreval ("      |                    |    |   |   |   |   |   |   |   |               |   |   |   |   |   |   |   |       |                  |          Guia          |")
   escreval ("      |                    |    |_8_|_9_|10_|11_|12_|13_|14_|               |_8_|_9_|10_|11_|12_|13_|14_|       |                  |------------------------|")
   escreval ("      |                    |    |   |   |   |   |   |   |   |               |   |   |   |   |   |   |   |       |                  | Página 2 = '2'         |")
   escreval ("      |                    |    |15_|16_|17_|18_|19_|20_|21_|               |15_|16_|17_|18_|19_|20_|21_|       |                  |------------------------|")
   escreval ("      |                    |    |   |   |   |   |   |   |   |               |   |   |   |   |   |   |   |       |                  | Página 3 = '3'         |")
   escreval ("      |                    |    |22_|23_|24_|25_|26_|27_|28_|               |22_|23_|24_|25_|26_|27_|28_|       |                  |------------------------|")
   escreval ("      |                    |    |   |   |   |   |   |   |   |               |   |   |   |   |   |   |   |       |                  | Página 4 = '4'         |")
   escreval ("      |                    |    |29 |30 |31 |   |   |   |   |               |29 |30 |   |   |   |   |   |       |                  |------------------------|")
   escreval ("      |                    |    |___|___|___|___|___|___|___|               |___|___|___|___|___|___|___|  1|5  |                  | Página 5 = '5'         |")
   escreval ("      |____________________|____________________________________________________________________________________|                  |________________________|")
   escreval ()
   escreval ()
   escreval ("Consulte o guia para acessar as outras páginas ou escreva 'pi' para voltar à página inicial.")
   leia (resposta)
   enquanto (resposta <> "pi")e(resposta <> "2")e(resposta <> "3")e(resposta <> "4")e(resposta <> "5") faca
      escreval ("Consulte o guia ou volte para a página inicial(pi).")
      leia (resposta)
   fimenquanto
   escolha resposta
   caso "2"
      Calendario2 ()
   caso "3"
      Calendario3 ()
   caso "4"
      Calendario4 ()
   caso "5"
      Calendario5 ()
   fimescolha
   se resposta = "pi" entao
      CarregarMenuComGuia ()
   fimse

FimProcedimento


Procedimento Calendario2 ()

Inicio

   limpatela
   escreval ("       _________________________________________________________________________________________________________")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                               SIGA - UEM                                                |")
   escreval ("      |_________________________________________________________________________________________________________|")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                Maio                                        Junho                   |")
   escreval ("      |                    |     ___________________________                 ___________________________        |")
   escreval ("      |                    |    |   |   |   |   |   |   |   |               |   |   |   |   |   |   |   |       |")
   escreval ("      |                    |    |_1_|_2_|_3_|_4_|_5_|_6_|_7_|               |_1_|_2_|_3_|_4_|_5_|_6_|_7_|       |")
   escreval ("      |____________________|    |   |   |   |   |   |   |   |               |   |   |   |   |   |   |   |       |")
   escreval ("      |                    |    |_8_|_9_|10_|11_|12_|13_|14_|               |_8_|_9_|10_|11_|12_|13_|14_|       |")
   escreval ("      |     Calendário     |    |   |   |   |   |   |   |   |               |   |   |   |   |   |   |   |       |")
   escreval ("      |____________________|    |15_|16_|17_|18_|19_|20_|21_|               |15_|16_|17_|18_|19_|20_|21_|       |")
   escreval ("      |                    |    |   |   |   |   |   |   |   |               |   |   |   |   |   |   |   |       |")
   escreval ("      |                    |    |22_|23_|24_|25_|26_|27_|28_|               |22_|23_|24_|25_|26_|27_|28_|       |")
   escreval ("      |                    |    |   |   |   |   |   |   |   |               |   |   |   |   |   |   |   |       |")
   escreval ("      |                    |    |29 |30 |31 |   |   |   |   |               |29 |30 |   |   |   |   |   |       |")
   escreval ("      |                    |    |___|___|___|___|___|___|___|               |___|___|___|___|___|___|___|       |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                Julho                                      Agosto                   |")
   escreval ("      |                    |     ___________________________                 ___________________________        |")
   escreval ("      |                    |    |   |   |   |   |   |   |   |               |   |   |   |   |   |   |   |       |                   ________________________")
   escreval ("      |                    |    |_1_|_2_|_3_|_4_|_5_|_6_|_7_|               |_1_|_2_|_3_|_4_|_5_|_6_|_7_|       |                  |                        |")
   escreval ("      |                    |    |   |   |   |   |   |   |   |               |   |   |   |   |   |   |   |       |                  |          Guia          |")
   escreval ("      |                    |    |_8_|_9_|10_|11_|12_|13_|14_|               |_8_|_9_|10_|11_|12_|13_|14_|       |                  |------------------------|")
   escreval ("      |                    |    |   |   |   |   |   |   |   |               |   |   |   |   |   |   |   |       |                  | Página 1 = '1'         |")
   escreval ("      |                    |    |15_|16_|17_|18_|19_|20_|21_|               |15_|16_|17_|18_|19_|20_|21_|       |                  |------------------------|")
   escreval ("      |                    |    |   |   |   |   |   |   |   |               |   |   |   |   |   |   |   |       |                  | Página 3 = '3'         |")
   escreval ("      |                    |    |22_|23_|24_|25_|26_|27_|28_|               |22_|23_|24_|25_|26_|27_|28_|       |                  |------------------------|")
   escreval ("      |                    |    |   |   |   |   |   |   |   |               |   |   |   |   |   |   |   |       |                  | Página 4 = '4'         |")
   escreval ("      |                    |    |29 |30 |31 |   |   |   |   |               |29 |30 |31 |   |   |   |   |       |                  |------------------------|")
   escreval ("      |                    |    |___|___|___|___|___|___|___|               |___|___|___|___|___|___|___|  2|5  |                  | Página 5 = '5'         |")
   escreval ("      |____________________|____________________________________________________________________________________|                  |________________________|")
   escreval ()
   escreval ()
   escreval ("Consulte o guia para acessar as outras páginas ou escreva 'pi' para voltar à página inicial.")
   leia (resposta)
   enquanto (resposta <> "pi")e(resposta <> "1")e(resposta <> "3")e(resposta <> "4")e(resposta <> "5") faca
      escreval ("Consulte o guia ou volte para a página inicial(pi).")
      leia (resposta)
   fimenquanto
   escolha resposta
   caso "1"
      Calendario ()
   caso "3"
      Calendario3 ()
   caso "4"
      Calendario4 ()
   caso "5"
      Calendario5 ()
   fimescolha
   se resposta = "pi" entao
      CarregarMenuComGuia ()
   fimse

FimProcedimento



Procedimento Calendario3 ()

Inicio

   limpatela
   escreval ("       _________________________________________________________________________________________________________")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                               SIGA - UEM                                                |")
   escreval ("      |_________________________________________________________________________________________________________|")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |              Setembro                                     Outubro                  |")
   escreval ("      |                    |     ___________________________                 ___________________________        |")
   escreval ("      |                    |    |   |   |   |   |   |   |   |               |   |   |   |   |   |   |   |       |")
   escreval ("      |                    |    |_1_|_2_|_3_|_4_|_5_|_6_|_7_|               |_1_|_2_|_3_|_4_|_5_|_6_|_7_|       |")
   escreval ("      |____________________|    |   |   |   |   |   |   |   |               |   |   |   |   |   |   |   |       |")
   escreval ("      |                    |    |_8_|_9_|10_|11_|12_|13_|14_|               |_8_|_9_|10_|11_|12_|13_|14_|       |")
   escreval ("      |     Calendário     |    |   |   |   |   |   |   |   |               |   |   |   |   |   |   |   |       |")
   escreval ("      |____________________|    |15_|16_|17_|18_|19_|20_|21_|               |15_|16_|17_|18_|19_|20_|21_|       |")
   escreval ("      |                    |    |   |   |   |   |   |   |   |               |   |   |   |   |   |   |   |       |")
   escreval ("      |                    |    |22_|23_|24_|25_|26_|27_|28_|               |22_|23_|24_|25_|26_|27_|28_|       |")
   escreval ("      |                    |    |   |   |   |   |   |   |   |               |   |   |   |   |   |   |   |       |")
   escreval ("      |                    |    |29 |30 |30 |   |   |   |   |               |29 |30 |   |   |   |   |   |       |")
   escreval ("      |                    |    |___|___|___|___|___|___|___|               |___|___|___|___|___|___|___|       |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |              Novembro                                    Dezembro                  |")
   escreval ("      |                    |     ___________________________                 ___________________________        |")
   escreval ("      |                    |    |   |   |   |   |   |   |   |               |   |   |   |   |   |   |   |       |                   ________________________")
   escreval ("      |                    |    |_1_|_2_|_3_|_4_|_5_|_6_|_7_|               |_1_|_2_|_3_|_4_|_5_|_6_|_7_|       |                  |                        |")
   escreval ("      |                    |    |   |   |   |   |   |   |   |               |   |   |   |   |   |   |   |       |                  |          Guia          |")
   escreval ("      |                    |    |_8_|_9_|10_|11_|12_|13_|14_|               |_8_|_9_|10_|11_|12_|13_|14_|       |                  |------------------------|")
   escreval ("      |                    |    |   |   |   |   |   |   |   |               |   |   |   |   |   |   |   |       |                  | Página 1 = '1'         |")
   escreval ("      |                    |    |15_|16_|17_|18_|19_|20_|21_|               |15_|16_|17_|18_|19_|20_|21_|       |                  |------------------------|")
   escreval ("      |                    |    |   |   |   |   |   |   |   |               |   |   |   |   |   |   |   |       |                  | Página 2 = '2'         |")
   escreval ("      |                    |    |22_|23_|24_|25_|26_|27_|28_|               |22_|23_|24_|25_|26_|27_|28_|       |                  |------------------------|")
   escreval ("      |                    |    |   |   |   |   |   |   |   |               |   |   |   |   |   |   |   |       |                  | Página 4 = '4'         |")
   escreval ("      |                    |    |29 |30 |   |   |   |   |   |               |29 |30 |31 |   |   |   |   |       |                  |------------------------|")
   escreval ("      |                    |    |___|___|___|___|___|___|___|               |___|___|___|___|___|___|___|  3|5  |                  | Página 5 = '5'         |")
   escreval ("      |____________________|____________________________________________________________________________________|                  |________________________|")
   escreval ()
   escreval ()
   escreval ("Consulte o guia para acessar as outras páginas ou escreva 'pi' para voltar à página inicial.")
   leia (resposta)
   enquanto (resposta <> "pi")e(resposta <> "1")e(resposta <> "2")e(resposta <> "4")e(resposta <> "5") faca
      escreval ("Consulte o guia ou volte para a página inicial(pi).")
      leia (resposta)
   fimenquanto
   escolha resposta
   caso "1"
      Calendario ()
   caso "2"
      Calendario2 ()
   caso "4"
      Calendario4 ()
   caso "5"
      Calendario5 ()
   fimescolha
   se resposta = "pi" entao
      CarregarMenuComGuia ()
   fimse

FimProcedimento



Procedimento Calendario4 ()

Inicio

   limpatela
   escreval ("       _________________________________________________________________________________________________________")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                               SIGA - UEM                                                |")
   escreval ("      |_________________________________________________________________________________________________________|")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    | Janeiro:                                           Maio:                           |")
   escreval ("      |                    | 4 - Início da avaliação de docentes                3-7 - Envio de pautas e actas de|")
   escreval ("      |                    |     pelo superior hierárquico                            exames à DRA e inscrições |")
   escreval ("      |                    |                                                          do 2º semestre de 2020    |")
   escreval ("      |____________________| Fevereiro:                                         10 - Início do 1º semestre      |")
   escreval ("      |                    | 3 - Dia dos Heróis Moçambicanos                    10 - Início da anulação de      |")
   escreval ("      |     Calendário     | 15 - Início das matrículas e inscrições                 inscrições do 1º semestre  |")
   escreval ("      |____________________|      para estudantes de pós-graduação              10 - Início da publicação de    |")
   escreval ("      |                    | 21 - Dia da Língua Materna                              listas de turmas           |")
   escreval ("      |                    |                                                         definitivas                |")
   escreval ("      |                    | Março:                                             14 - Festival AZGO              |")
   escreval ("      |                    | 8-12 - Exames de Admissão                          14 - Cerimónia de abertura do   |")
   escreval ("      |                    | 29 - Início da semana de planificação                   ano académico              |")
   escreval ("      |                    | 30 - Publicação dos resultados dos                 28 - Reunião de novos ingressos |")
   escreval ("      |                    |      exames de admissão                                                            |")
   escreval ("      |                    |                                                    Junho:                          |")
   escreval ("      |                    | Abril:                                             4 - Reunião de acolhimento de   |")
   escreval ("      |                    | 2 - Fim da semana de planificação                      estudantes estrangeiros     |                   ________________________")
   escreval ("      |                    | 5-30 - Matrículas e Inscrições                     5 - Celebração do dia da        |                  |                        |")
   escreval ("      |                    |        (Novos Ingressos)                               criança                     |                  |          Guia          |")
   escreval ("      |                    | 7 - Dia da Mulher Moçambicana                      11 - Fim da anulação de         |                  |------------------------|")
   escreval ("      |                    | 18 - Dia da cidade de Vilankulo                         inscriçoes do 1º semestre  |                  | Página 1 = '1'         |")
   escreval ("      |                    | 19-30 - Inscrições do 1º semestre                  11 - Fim da publicação de listas|                  |------------------------|")
   escreval ("      |                    |         (2020 e anos anteriores)                        de turmas definitivas      |                  | Página 2 = '2'         |")
   escreval ("      |                    | 30 - Fim da avaliação de docentes                  14-20 - Semana Eduardo Mondlane |                  |------------------------|")
   escreval ("      |                    |      pelo superior hierárquico                     16 - Reunião anual              |                  | Página 3 = '3'         |")
   escreval ("      |                    | 30 - Fim das matrículas e inscrições               20 - Dia da UEM                 |                  |------------------------|")
   escreval ("      |                    |      para estudantes de pós-graduação              25 - Dia da Independência  4|5  |                  | Página 5 = '5'         |")
   escreval ("      |____________________|____________________________________________________________________________________|                  |________________________|")
   escreval ()
   escreval ()
   escreval ("Consulte o guia para acessar as outras páginas ou escreva 'pi' para voltar à página inicial.")
   leia (resposta)
   enquanto (resposta <> "pi")e(resposta <> "1")e(resposta <> "2")e(resposta <> "3")e(resposta <> "5") faca
      escreval ("Consulte o guia ou volte para a página inicial(pi).")
      leia (resposta)
   fimenquanto
   escolha resposta
   caso "1"
      Calendario ()
   caso "2"
      Calendario2 ()
   caso "3"
      Calendario3 ()
   caso "5"
      Calendario5 ()
   fimescolha
   se resposta = "pi" entao
      CarregarMenuComGuia ()
   fimse

FimProcedimento

Procedimento Calendario5 ()

Inicio

   limpatela
   escreval ("       _________________________________________________________________________________________________________")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                               SIGA - UEM                                                |")
   escreval ("      |_________________________________________________________________________________________________________|")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    | Julho:                                             7 - Dia dos Acordos de Lusaka   |")
   escreval ("      |                    | 1-30 - Matrículas e Inscrições para                21-24 -XI Conferência Científica|")
   escreval ("      |                    |        estudantes de pós-graduação                 24 - Gala científica            |")
   escreval ("      |                    | 5-9 - 1ª cerimónia de graduação de                 24-25 - VIII Festival Cultural  |")
   escreval ("      |____________________|       de Maputo                                            Universitário           |")
   escreval ("      |                    | 15-16 - Conselho de diretores alargado                                             |")
   escreval ("      |     Calendário     | 19-23 - Submissão dos processos de                 Outubro:                        |")
   escreval ("      |____________________|         candidatura para o monitoriado             12 - Dia do professor           |")
   escreval ("      |                    |        (2º semestre do ano letivo 2021)            18 - Início da candidatura para |")
   escreval ("      |                    | 30 - Avaliação de docentes pelos                        os exames de admissão 2022 |")
   escreval ("      |                    |      estudantes                                    18 -Início da candidatura às    |")
   escreval ("      |                    |                                                        bolsas de estudo para cursos|")
   escreval ("      |                    | Agosto:                                                de graduação                |")
   escreval ("      |                    | 2 - Início de pedido de ingresso com                                               |")
   escreval ("      |                    |     isenção de exames de admissão,                 Novembro:                       |")
   escreval ("      |                    |     reingresso e mudança de curso 2022             10 - Dia da cidade de Maputo    |")
   escreval ("      |                    | 6 - Fim do 1º semestre                             15-19 -Submissão de processos de|")
   escreval ("      |                    | 9 - Início da realização das avaliações                  candidatura a monitorado  |                   ________________________")
   escreval ("      |                    |     finais do 1º semestre                                (1º semestre de 2022)     |                  |                        |")
   escreval ("      |                    | 12 - Dia da cidade de Inhambane                    29 - Início da avaliação de     |                  |          Guia          |")
   escreval ("      |                    | 21 - Dia da cidade de Quelimane                         docentes pelos estudantes  |                  |------------------------|")
   escreval ("      |                    |                                                                                    |                  | Página 1 = '1'         |")
   escreval ("      |                    | Setembro:                                          Dezembro:                       |                  |------------------------|")
   escreval ("      |                    | 3 - Fim dos processos de monitoriado               3 -Fim da candidatura aos exames|                  | Página 2 = '2'         |")
   escreval ("      |                    | 3 - Fim da realização de avaliações                3 - Fim da candidatura às bolsas|                  |------------------------|")
   escreval ("      |                    |     finais do 1º semestre                          3 - Fim da avaliação de docentes|                  | Página 3 = '3'         |")
   escreval ("      |                    | 3-11 - X edição dos Jogos da UEM                   13 - Realização das avaliações  |                  |------------------------|")
   escreval ("      |                    | 6-10 - Jornadas científicas                             finais do 2º semestre  5|5 |                  | Página 4 = '4'         |")
   escreval ("      |____________________|____________________________________________________________________________________|                  |________________________|")
   escreval ()
   escreval ()
   escreval ("Consulte o guia para acessar as outras páginas ou escreva 'pi' para voltar à página inicial.")
   leia (resposta)
   enquanto (resposta <> "pi")e(resposta <> "1")e(resposta <> "2")e(resposta <> "3")e(resposta <> "4") faca
      escreval ("Consulte o guia ou volte para a página inicial(pi).")
      leia (resposta)
   fimenquanto
   escolha resposta
   caso "1"
      Calendario ()
   caso "2"
      Calendario2 ()
   caso "3"
      Calendario3 ()
   caso "4"
      Calendario4 ()
   fimescolha
   se resposta = "pi" entao
      CarregarMenuComGuia ()
   fimse

FimProcedimento


Procedimento Midia ()

Inicio

   limpatela
   escreval ("       _________________________________________________________________________________________________________")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                               SIGA - UEM                                                |")
   escreval ("      |_________________________________________________________________________________________________________|")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |  _________________________________                                                 |")
   escreval ("      |                    | |                                                                                  |")
   escreval ("      |                    | | Documentos                                                                       |")
   escreval ("      |                    | |______________________________                                                    |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |  __________________________                                                        |")
   escreval ("      |                    | |                                                                                  |")
   escreval ("      |____________________| | Vídeo-aulas                                                                      |")
   escreval ("      |                    | |_______________________                                                           |")
   escreval ("      |       Mídia        |                                                                                    |")
   escreval ("      |____________________|  ____________________                                                              |")
   escreval ("      |                    | |                                                                                  |")
   escreval ("      |                    | | Quiz                                                                             |")
   escreval ("      |                    | |_________________                                                                 |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                                                                                    |                   ________________________")
   escreval ("      |                    |                                                                                    |                  |                        |")
   escreval ("      |                    |                                                                                    |                  |          Guia          |")
   escreval ("      |                    |                                                                                    |                  |------------------------|")
   escreval ("      |                    |                                                                                    |                  | Documentos = 'd'       |")
   escreval ("      |                    |                                                                                    |                  |------------------------|")
   escreval ("      |                    |                                                                                    |                  | Video-aulas = 'v'      |")
   escreval ("      |                    |                                                                                    |                  |------------------------|")
   escreval ("      |                    |                                                                                    |                  | Quiz = 'q'             |")
   escreval ("      |                    |                                                                                    |                  |------------------------|")
   escreval ("      |                    |                                                                                    |                  | Página Inicial = 'pi'  |")
   escreval ("      |____________________|____________________________________________________________________________________|                  |________________________|")
   escreval ()
   escreval ()
   escreval ("Qual área deseja acessar? (Consulte o guia).")
   repita
       leia (resposta)
       se resposta = "d" entao
          cpordocumento <- verdadeiro
          Avaliacoes ()
          cpordocumento <- falso
        senao
           se resposta = "v" entao
              cporvideo <- verdadeiro
              Avaliacoes ()
              cporvideo <- falso
            senao
               se resposta = "q" entao
                  cporquiz <- verdadeiro
                  Avaliacoes ()
                  cporquiz <- falso
                senao
                   se resposta <> "pi" entao
                      escreval ("Consulte o guia")
                   fimse
               fimse
           fimse
       fimse
   ate (resposta = "d")ou(resposta = "v")ou(resposta = "q")ou(resposta = "pi")
   CarregarMenuComGuia ()

FimProcedimento


Procedimento Documentos ()

Inicio


Fimprocedimento

Procedimento VideoAulas ()

Inicio


Fimprocedimento


Procedimento Quiz ()

Inicio


Fimprocedimento


Procedimento Turmas ()

Inicio

   limpatela
   escreval ("       _________________________________________________________________________________________________________")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                               SIGA - UEM                                                |")
   escreval ("      |_________________________________________________________________________________________________________|")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |   ___________________________________________________                              |")
   escreval ("      |                    |  |                                                   |                             |")
   escreval ("      |                    |  | Licenciatura em Informática                       |                             |")
   escreval ("      |                    |  |___________________________________________________|                             |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |   ___________________________________________________                              |")
   escreval ("      |                    |  |                                                   |                             |")
   escreval ("      |                    |  | Licenciatura em Matemática                        |                             |")
   escreval ("      |                    |  |___________________________________________________|                             |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |____________________|   ___________________________________________________                              |")
   escreval ("      |                    |  |                                                   |                             |")
   escreval ("      |       Turmas       |  | Licenciatura em Estatística                       |                             |")
   escreval ("      |____________________|  |___________________________________________________|                             |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |   ___________________________________________________                              |                   ________________________")
   escreval ("      |                    |  |                                                   |                             |                  |                        |")
   escreval ("      |                    |  | Licenciatura Ciências de Informação Geográfica    |                             |                  |          Guia          |")
   escreval ("      |                    |  |___________________________________________________|                             |                  |------------------------|")
   escreval ("      |                    |                                                                                    |                  | Informática = 'i'      |")
   escreval ("      |                    |                                                                                    |                  |------------------------|")
   escreval ("      |                    |                                                                                    |                  | Matemática = 'm'       |")
   escreval ("      |                    |                                                                                    |                  |------------------------|")
   escreval ("      |                    |                                                                                    |                  | Estatística = 'e'      |")
   escreval ("      |                    |                                                                                    |                  |------------------------|")
   escreval ("      |                    |                                                                                    |                  | Inf. Geográficas = 'g' |")
   escreval ("      |                    |                                                                                    |                  |------------------------|")
   escreval ("      |                    |                                                                                    |                  | Página Inicial = 'pi'  |")
   escreval ("      |____________________|____________________________________________________________________________________|                  |________________________|")
   escreval ()
   escreval ()
   escreval ("Qual turma deseja acessar? (Consulte o guia).")
    repita
      leia (resposta)
      se resposta = "i" entao
         Informatica ()
       senao
          se resposta = "m" entao
             Matematica ()
           senao
              se resposta = "e" entao
                 Estatistica ()
               senao
                  se resposta = "g" entao
                     InfGeograficas () ()
                   senao
                      se resposta = "pi" entao
                         CarregarMenuComGuia ()
                       senao
                          escreval ("Consulte o guia.")
                      fimse
                  fimse
              fimse
          fimse
      fimse
   ate (resposta = "i")ou(resposta = "m")ou(resposta = "e")ou(resposta = "g")ou(resposta = "pi")

FimProcedimento


Procedimento Informatica ()

Inicio

   limpatela
   escreval ("       _________________________________________________________________________________________________________")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                               SIGA - UEM                                                |")
   escreval ("      |_________________________________________________________________________________________________________|")
   escreval ("      |                    | Turma de Informática:                                                              |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                Nome                  |   Nível   |             E-mail              |")
   escreval ("      |                    |--------------------------------------|-----------|-------------------------------- |")
   escreval ("      |                    | 1. Félix Augusto Matsinhe            |      I    | felix.matsinhe@uem.ac.mz        |")
   escreval ("      |                    | 2. Inocêncio Cristóvão               |      I    | inocencio.cristovao@uem.ac.mz   |")
   escreval ("      |                    | 3. Eddy Belarmino Massinga           |      I    | eddy.massinga@uem.ac.mz         |")
   escreval ("      |                    | 4. Amariles de Jesus Glória          |      I    | amariles.gloria@uem.ac.mz       |")
   escreval ("      |                    | 5. Osvaldo Samanta Nhaca             |      I    | osvaldo.nhaca@uem.ac.mz         |")
   escreval ("      |                    | 6. Leo Arlindo Buque                 |      I    | leo.buque@uem.ac.mz             |")
   escreval ("      |                    | 7. Tatiana Victorino da Clara        |      I    | tatiana.clara@uem.ac.mz         |")
   escreval ("      |____________________| 8. Santos Omar Chiconela             |     II    | santos.chiconela@uem.ac.mz      |")
   escreval ("      |                    | 9. Ronaldo Mulung Mabjaia            |     II    | ronaldo.mabjaia@uem.ac.mz       |")
   escreval ("      |       Turmas       | 10. Momed Manuafo Mahumane           |     II    | momed.mahumane@uem.ac.mz        |")
   escreval ("      |____________________| 11. Kenneth Berlinde Mandlate        |     II    | kenneth.mandlate@uem.ac.mz      |")
   escreval ("      |                    | 12. Moreira Frásio Vilanculos        |     II    | moreira.vilanculos@uem.ac.mz    |")
   escreval ("      |                    | 13. Samuel Alfredo Abdula            |     II    | samuel.abdula@uem.ac.mz         |")
   escreval ("      |                    | 14. Cristência Manuela Mondlane      |    III    | cristencia.mondlane@uem.ac.mz   |")
   escreval ("      |                    | 15. Armando Elídio Michel            |    III    | armando.michel@uem.ac.mz        |")
   escreval ("      |                    | 16. Silage Juvenal Muiambo           |    III    | silage.muiambo@uem.ac.mz        |")
   escreval ("      |                    | 17. Hélder Tembe Bahadoursing        |    III    | helder.bahadoursing@uem.ac.mz   |                   ________________________")
   escreval ("      |                    | 18. Eliane Nwadzaulani Mabunda       |    III    | eliane.mabunda@uem.ac.mz        |                  |                        |")
   escreval ("      |                    | 19. Belinda Aristides Seda           |    III    | belinda.seda@uem.ac.mz          |                  |          Guia          |")
   escreval ("      |                    | 20. Golpe Baixo Mamune               |     IV    | golpe.mamune@uem.ac.mz          |                  |------------------------|")
   escreval ("      |                    | 21. Juvenaldo Carlos Maulate         |     IV    | juvenaldo.maulate@uem.ac.mz     |                  | Enviar e-mail = 'e'    |")
   escreval ("      |                    | 22. Dias Quintriano Matsinhe         |     IV    | dias.matsinhe@uem.ac.mz         |                  |------------------------|")
   escreval ("      |                    | 23. Elizeu Dranco Sitole             |     IV    | elizeu.sitole@uem.ac.mz         |                  | Voltar = 'v'           |")
   escreval ("      |                    | 24. Maurício Amade Guiamba           |     IV    | mauricio.guiamba@uem.ac.mz      |                  |------------------------|")
   escreval ("      |                    | 25. Pedro Carlitos Mavila            |     IV    | pedro.mavila@uem.ac.mz          |                  | Página Inicial = 'pi'  |")
   escreval ("      |____________________|______________________________________|___________|_________________________________|                  |________________________|")
   escreval ()
   escreval ()
   escreval ("O que deseja fazer? (Consulte o guia).")
    repita
      leia (resposta)
      se resposta = "e" entao
          escreval ("Para quem deseja mandar o seu e-mail? (1-25).")
          leia (m)
          enquanto nao((m >= 1)e(m <= 25)) faca
               escreval ("Opção inválida. (1-25).")
               leia (m)
          fimenquanto
          Email2 ()
          Informatica ()
       senao
          se resposta = "v" entao
             Turmas ()
           senao
              se resposta = "pi" entao
                 CarregarMenuComGuia ()
               senao
                  escreval ("Consulte o guia.")
              fimse
          fimse
      fimse
   ate (resposta = "e")ou(resposta = "v")ou(resposta = "pi")
   CarregarMenuComGuia ()

FimProcedimento

Procedimento Matematica ()

Inicio

   limpatela
   escreval ("       _________________________________________________________________________________________________________")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                               SIGA - UEM                                                |")
   escreval ("      |_________________________________________________________________________________________________________|")
   escreval ("      |                    | Turma de Matemática:                                                               |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                Nome                  |   Nível   |             E-mail              |")
   escreval ("      |                    |--------------------------------------|-----------|-------------------------------- |")
   escreval ("      |                    | 1. Orlando Magaiva Cinquenta         |      I    | orlando.cinquenta               |")
   escreval ("      |                    | 2. Moniz Sanbôdo Mesa Jr.            |      I    | moniz.mesa@uem.ac.mz            |")
   escreval ("      |                    | 3. Deolindo Mazamera Sabão           |      I    | deolindo.sabao@uem.ac.mz        |")
   escreval ("      |                    | 4. Júlio Carlos de Tete              |      I    | julio.tete@uem.ac.mz            |")
   escreval ("      |                    | 5. José Jacinto João Jeto            |      I    | jose.jeto@uem.ac.mz             |")
   escreval ("      |                    | 6. Kamuntajeet Sabin Abdulerman      |      I    | kamuntajeet.abdulerman@uem.ac.mz|")
   escreval ("      |                    | 7. Jorge Borge Nhampossa             |      I    | jorge.nhampossa@uem.ac.mz       |")
   escreval ("      |____________________| 8. Uvuvwevwevwe Onyetenweve          |     II    | uvuvwevwevwe.ossas@uem.ac.mz    |")
   escreval ("      |                    |    Ugwemubwen Ossas                  |           |                                 |")
   escreval ("      |       Turmas       | 9. Maria d'Alcantra Perreira         |     II    | maria.perreira@uem.ac.mz        |")
   escreval ("      |____________________| 10. Magube Fambónio Assas            |     II    | magube.assas@uem.ac.mz          |")
   escreval ("      |                    | 11. Moreira Frásio Vilanculos        |     II    | moreira.vilanculos@uem.ac.mz    |")
   escreval ("      |                    | 12. Ester Alcídio Magumane           |     II    | ester.magumane@uem.ac.mz        |")
   escreval ("      |                    | 13. João Leonardo Vegas Soto         |     II    | joao.soto@uem.ac.mz             |")
   escreval ("      |                    | 14. Zenalda Maia Savanguane          |    III    | zenalda.savanguane@uem.ac.mz    |                   ________________________")
   escreval ("      |                    | 15. Sara Tahobara Omar               |    III    | sara.omar@uem.ac.mz             |                  |                        |")
   escreval ("      |                    | 16. Esmeralda Momaz Henrique         |     IV    | esmeralda.henrique@uem.ac.mz    |                  |          Guia          |")
   escreval ("      |                    | 17. Ângela Palma Massingue           |     IV    | angela.massingue@uem.ac.mz      |                  |------------------------|")
   escreval ("      |                    | 18. Orlando José Maheu               |     IV    | orlando.maheu@uem.ac.mz         |                  | Página 2 = '2'         |")
   escreval ("      |                    | 19. Félix José Quetxoaio             |     IV    | felix.quetxoaio@uem.ac.mz       |                  |------------------------|")
   escreval ("      |                    | 20. Leonor das Acácias Ferreira      |     IV    | leonor.ferreira@uem.ac.mz       |                  | Enviar e-mail = 'e'    |")
   escreval ("      |                    | 21. Jaime Socre Mukhuvuri            |     IV    | jaime.mukhuvuri@uem.ac.mz       |                  |------------------------|")
   escreval ("      |                    | 22. Amilton Leonel Jone              |     IV    | amilton.jone@uem.ac.mz          |                  | Voltar = 'v'           |")
   escreval ("      |                    | 23. Jossias Robote Jone Jone         |     IV    | jossias.jone@uem.ac.mz          |                  |------------------------|")
   escreval ("      |                    | 24. Casimiro Gincra Maissene         |     IV    | casimiro.maissene@uem.ac.mz 1|2 |                  | Página Inicial = 'pi'  |")
   escreval ("      |____________________|______________________________________|___________|_________________________________|                  |________________________|")
   escreval ()
   escreval ()
   escreval ("O que deseja fazer? (Consulte o guia).")
    repita
      leia (resposta)
      se resposta = "e" entao
          escreval ("Para quem deseja mandar o seu e-mail? (1-24).")
          leia (m)
          enquanto (m < 1)ou(m > 24) faca
               escreval ("Opção inválida. (1-24)")
               leia (m)
          fimenquanto
          m <- m + 25
          Email2 ()
          Matematica ()
       senao
          se resposta = "2" entao
             Matematica2 ()
           senao
              se resposta = "v" entao
                 Turmas ()
               senao
                  se resposta = "pi" entao
                     CarregarMenuComGuia ()
                   senao
                      escreval ("Consulte o guia.")
                  fimse
              fimse
          fimse
      fimse
   ate (resposta = "e")ou(resposta = "2")ou(resposta = "v")ou(resposta = "pi")
   CarregarMenuComGuia ()

FimProcedimento

Procedimento Matematica2 ()

Inicio

   limpatela
   escreval ("       _________________________________________________________________________________________________________")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                               SIGA - UEM                                                |")
   escreval ("      |_________________________________________________________________________________________________________|")
   escreval ("      |                    | Turma de Matemática:                                                               |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                Nome                  |   Nível   |             E-mail              |")
   escreval ("      |                    |--------------------------------------|-----------|-------------------------------- |")
   escreval ("      |                    | 25. Joaquim Esteira Madzive          |     IV    | joaquim.madzive@uem.ac.mz       |")
   escreval ("      |                    |                                      |           |                                 |")
   escreval ("      |                    |                                      |           |                                 |")
   escreval ("      |                    |                                      |           |                                 |")
   escreval ("      |                    |                                      |           |                                 |")
   escreval ("      |                    |                                      |           |                                 |")
   escreval ("      |                    |                                      |           |                                 |")
   escreval ("      |____________________|                                      |           |                                 |")
   escreval ("      |                    |                                      |           |                                 |")
   escreval ("      |       Turmas       |                                      |           |                                 |")
   escreval ("      |____________________|                                      |           |                                 |")
   escreval ("      |                    |                                      |           |                                 |")
   escreval ("      |                    |                                      |           |                                 |")
   escreval ("      |                    |                                      |           |                                 |")
   escreval ("      |                    |                                      |           |                                 |                   ________________________")
   escreval ("      |                    |                                      |           |                                 |                  |                        |")
   escreval ("      |                    |                                      |           |                                 |                  |          Guia          |")
   escreval ("      |                    |                                      |           |                                 |                  |------------------------|")
   escreval ("      |                    |                                      |           |                                 |                  | Página 1 = '1'         |")
   escreval ("      |                    |                                      |           |                                 |                  |------------------------|")
   escreval ("      |                    |                                      |           |                                 |                  | Enviar e-mail = 'e'    |")
   escreval ("      |                    |                                      |           |                                 |                  |------------------------|")
   escreval ("      |                    |                                      |           |                                 |                  | Voltar = 'v'           |")
   escreval ("      |                    |                                      |           |                                 |                  |------------------------|")
   escreval ("      |                    |                                      |           |                             2|2 |                  | Página Inicial = 'pi'  |")
   escreval ("      |____________________|______________________________________|___________|_________________________________|                  |________________________|")
   escreval ()
   escreval ()
   escreval ("O que deseja fazer? (Consulte o guia).")
    repita
      leia (resposta)
      se resposta = "e" entao
          escreval ("Para quem deseja mandar o seu e-mail? (25 apenas).")
          leia (m)
          enquanto m <> 25 faca
             escreval ("Somente opção 25 está disponível nessa tela.")
             leia (m)
          fimenquanto
          m <- m + 25
          Email2 ()
          Matematica2 ()
       senao
          se resposta = "1" entao
             Matematica ()
           senao
              se resposta = "v" entao
                 Turmas ()
               senao
                  se resposta = "pi" entao
                     CarregarMenuComGuia ()
                   senao
                      escreval ("Consulte o guia.")
                  fimse
              fimse
          fimse
      fimse
   ate (resposta = "e")ou(resposta = "1")ou(resposta = "v")ou(resposta = "pi")
   CarregarMenuComGuia ()

FimProcedimento


Procedimento Estatistica ()

Inicio

   limpatela
   escreval ("       _________________________________________________________________________________________________________")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                               SIGA - UEM                                                |")
   escreval ("      |_________________________________________________________________________________________________________|")
   escreval ("      |                    | Turma de Estatística:                                                              |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                Nome                  |   Nível   |             E-mail              |")
   escreval ("      |                    |--------------------------------------|-----------|-------------------------------- |")
   escreval ("      |                    | 1. Malhane Biscoito Ambrósio         |      I    | malhane.ambrosio@uem.ac.mz      |")
   escreval ("      |                    | 2. Samanta Jacinta Mangaze           |      I    | samanta.mangaze@uem.ac.mz       |")
   escreval ("      |                    | 3. Vergonha Carlos Mabissane         |      I    | vergonha.mabissane@uem.ac.mz    |")
   escreval ("      |                    | 4. Jacinto Pedro Mahumane            |      I    | jacinto.mahumane@uem.ac.mz      |")
   escreval ("      |                    | 5. Spike Delovado Nhamtumbo          |     II    | spike.nhamtumbo@uem.ac.mz       |")
   escreval ("      |                    | 6. Carlos Nguenani Nhamtumbo         |     II    | carlos.nhamtumbo@uem.ac.mz      |")
   escreval ("      |                    | 7. Miguelito Rafael Saraiva          |     II    | miguelito.saraiva@uem.ac.mz     |")
   escreval ("      |____________________| 8. Sapuasê Magostwana Ndiro          |     II    | sapuasê.magostwana@uem.ac.mz    |")
   escreval ("      |                    | 9. Afonsito Magwinha Ndande          |     II    | afonsito.ndande@uem.ac.mz       |")
   escreval ("      |       Turmas       | 10. Vivaldo Lombole Massingue        |     II    | vivaldo.massingue@uem.ac.mz     |")
   escreval ("      |____________________| 11. Beija Amim Santiago              |     II    | beija.santiago@uem.ac.mz        |")
   escreval ("      |                    | 12. Joel Djofer Mabeca               |    III    | joel.mabeca@uem.ac.mz           |")
   escreval ("      |                    | 13. Amado Zeferino Mantenga          |    III    | amado.mantenga@uem.ac.mz        |")
   escreval ("      |                    | 14. Sidnex Luís Mazive               |    III    | sidnex.mazive@uem.ac.mz         |")
   escreval ("      |                    | 15. Raia Manta Sibinde               |    III    | raia.sibinde@uem.ac.mz          |")
   escreval ("      |                    | 16. Arménio Domingos Chacha          |    III    | armenio.chacha@uem.ac.mz        |")
   escreval ("      |                    | 17. Chaiba Pedro Cumbana             |    III    | chaiba.cumbana@uem.ac.mz        |                   _________________________")
   escreval ("      |                    | 18. Mamanto Guindo Sitoe             |    III    | mamanto.sitoe@uem.ac.mz         |                  |                        |")
   escreval ("      |                    | 19. Jamilo Francisco Cumbe           |    III    | jamilo.cumbe@uem.ac.mz          |                  |          Guia          |")
   escreval ("      |                    | 20. Angelina Vieira Everisto         |    III    | angelina.everisto@uem.ac.mz     |                  |------------------------|")
   escreval ("      |                    | 21. Stélio Matias Mahiene            |    III    | stelio.mahiene@uem.ac.mz        |                  | Enviar e-mail = 'e'    |")
   escreval ("      |                    | 22. Estefânia Rafaela Maibaze        |     IV    | estefania.maibaze@uem.ac.mz     |                  |------------------------|")
   escreval ("      |                    | 23. Anastância Rosavirone da Eva     |     IV    | anastancia.eva@uem.ac.mz        |                  | Voltar = 'v'           |")
   escreval ("      |                    | 24. Adolfo Otília Biza               |     IV    | adolfo.otilia.biza@uem.ac.mz    |                  |------------------------|")
   escreval ("      |                    | 25. Liton Chande Manheque            |     IV    | liton.manheque@uem.ac.mz        |                  | Página Inicial = 'pi'  |")
   escreval ("      |____________________|______________________________________|___________|_________________________________|                  |________________________|")
   escreval ()
   escreval ()
   escreval ("O que deseja fazer? (Consulte o guia).")
    repita
      leia (resposta)
      se resposta = "e" entao
          escreval ("Para quem deseja mandar o seu e-mail? (1-25).")
          leia (m)
          enquanto nao((m >= 1)e(m <= 25)) faca
               escreval ("Opção inválida. (1-25).")
               leia (m)
          fimenquanto
          m <- m + 50
          Email2 ()
          Estatistica ()
       senao
          se resposta = "v" entao
             Turmas ()
           senao
              se resposta = "pi" entao
                 CarregarMenuComGuia ()
               senao
                  escreval ("Consulte o guia.")
              fimse
          fimse
      fimse
   ate (resposta = "e")ou(resposta = "v")ou(resposta = "pi")
   CarregarMenuComGuia ()

FimProcedimento

Procedimento InfGeograficas ()

Inicio

   limpatela
   escreval ("       _________________________________________________________________________________________________________")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                               SIGA - UEM                                                |")
   escreval ("      |_________________________________________________________________________________________________________|")
   escreval ("      |                    | Turma de Ciências de Informação Geográfica:                                        |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                Nome                  |   Nível   |             E-mail              |")
   escreval ("      |                    |--------------------------------------|-----------|---------------------------------|")
   escreval ("      |                    | 1. Hortência Ramos Diogo             |      I    | hortencia.diogo@uem.ac.mz       |")
   escreval ("      |                    | 2. Felismina Mbeveve Salomão         |      I    | felismina.salomao@uem.ac.mz     |")
   escreval ("      |                    | 3. Lourenço Abel Nhamuave            |      I    | lourenco.nhamuave@uem.ac.mz     |")
   escreval ("      |                    | 4. Kelly Roque Julião                |      I    | kelly.juliao@uem.ac.mz          |")
   escreval ("      |                    | 5. Ura Wiriamo Valente               |     II    | ura.valente@uem.ac.mz           |")
   escreval ("      |                    | 6. Kelly Raimundo Matavele           |     II    | kelly.matavele@uem.ac.mz        |")
   escreval ("      |                    | 7. Laura Azarias Macamo              |     II    | laura.macamo@uem.ac.mz          |")
   escreval ("      |____________________| 8. Ermelinda Frederico dos Amados    |     II    | ermelinda.amados@uem.ac.mz      |")
   escreval ("      |                    | 9. Manuel Joaquim Zunguze            |     II    | manuel.zunguze@uem.ac.mz        |")
   escreval ("      |       Turmas       | 10. Elodino Ernesto Faife            |     II    | elodino.faife@uem.ac.mz         |")
   escreval ("      |____________________| 11. Arminda Nelly Guambe             |     II    | arminda.guambe@uem.ac.mz        |")
   escreval ("      |                    | 12. Ernesta Mandande Sitoe           |     II    | ernesta.sitoe@uem.ac.mz         |")
   escreval ("      |                    | 13. Iolanda Naila Tsirizane          |    III    | iolanda.tsirizane@uem.ac.mz     |")
   escreval ("      |                    | 14. Sofrimento Ráido Mabjaia         |    III    | sofrimento.mabjaia@uem.ac.mz    |")
   escreval ("      |                    | 15. Sara Lobolo Zavale               |    III    | sara.zavale@uem.ac.mz           |")
   escreval ("      |                    | 16. Nelson Mirrabel da Esperança     |    III    | nelson.esperança@uem.ac.mz      |")
   escreval ("      |                    | 17. David Estefánio Manjate          |    III    | david.manjate@uem.ac.mz         |                   ________________________")
   escreval ("      |                    | 18. Flávia Simião Riscado            |    III    | flavia.riscado@uem.ac.mz        |                  |                        |")
   escreval ("      |                    | 19. Kátia Celso Nhantsave            |    III    | katia.nhantsave@uem.ac.mz       |                  |           Guia         |")
   escreval ("      |                    | 20. Isaac António Momade             |    III    | isaac.momade@uem.ac.mz          |                  |------------------------|")
   escreval ("      |                    | 21. Anta Jamal Bompirasso            |    III    | anta.bompirasso@uem.ac.mz       |                  | Enviar e-mail = 'e'    |")
   escreval ("      |                    | 22. Castigo Sal Castigo              |     IV    | castigo.castigo@uem.ac.mz       |                  |------------------------|")
   escreval ("      |                    | 23. Piedade Macrósmo Alves           |     IV    | piedade.alves@uem.ac.mz         |                  | Voltar = 'v'           |")
   escreval ("      |                    | 24. Júlio Magaiva Langa              |     IV    | julio.langa@uem.ac.mz           |                  |------------------------|")
   escreval ("      |                    | 25. Sara Madalena Mumpaia            |     IV    | sara.mumpaia@uem.ac.mz          |                  | Página Inicial = 'pi'  |")
   escreval ("      |____________________|______________________________________|___________|_________________________________|                  |________________________|")
   escreval ()
   escreval ()
   escreval ("O que deseja fazer? (Consulte o guia).")
    repita
      leia (resposta)
      se resposta = "e" entao
          escreval ("Para quem deseja mandar o seu e-mail? (1-25).")
          leia (m)
          enquanto nao((m >= 1)e(m <= 25)) faca
               escreval ("Opção inválida. (1-25).")
               leia (m)
          fimenquanto
          m <- m + 75
          Email2 ()
          InfGeograficas ()
       senao
          se resposta = "v" entao
             Turmas ()
           senao
              se resposta = "pi" entao
                 CarregarMenuComGuia () ()
               senao
                  escreval ("Consulte o guia.")
              fimse
          fimse
      fimse
   ate (resposta = "e")ou(resposta = "v")ou(resposta = "pi")
   CarregarMenuComGuia ()

FimProcedimento


Procedimento Email2 ()

var

parte, espacos_e : vetor[1..16] de caractere
espacoe, espacoe2 : caractere
tempe : inteiro

Inicio

caminho1 <- falso
caminho2 <- falso

se chamadopordoc = falso entao
   tempe <- compr("                                                   ") - compr(nomes[m]) - compr(curs[m]) - compr(nivel[m])
   para conta <- 1 ate tempe faca
        espacoe <- espacoe + " "
   fimpara
   tempe <- compr("                                                       ") - (compr(email[m]) + 2)
   para conta <- 1 ate tempe faca
        espacoe2 <- espacoe2 + " "
   fimpara
 senao
    tempe <- compr("                                              ") - compr(nomes[m]) - compr(abr[m])
    para conta <- 1 ate tempe faca
         espacoe <- espacoe + " "
    fimpara
    tempe <- compr("                                                       ") - (compr(email[m]) + 2)
    para conta <- 1 ate tempe faca
         espacoe2 <- espacoe2 + " "
    fimpara
fimse
limpatela
escreval ("Componha o seu e-mail.")
leia (texto)
textoorg <- texto
  para conta <- 1 ate 16 faca
       se compr(texto) > 54 entao
          para cont <- 55 ate 45 passo -1 faca
               se copia(texto;cont,1) = " " entao
                  parte[conta] <- copia(texto; 1, cont-1)
                  texto <- copia(texto;cont+1,compr(texto))
                  caminho1 <- verdadeiro
                  interrompa
               fimse
          fimpara
          se caminho1 = falso entao
             parte[conta] <- copia(texto;1,53) + "-"
             texto <- copia(texto;54,compr(texto))
             caminho2 <- verdadeiro
          fimse
        senao
           se (compr(texto) < 55)e((caminho1 = verdadeiro)ou(caminho2 = verdadeiro)) entao
              parte[conta] <- texto
              interrompa
            senao
               se (caminho1 = falso)e(caminho2 = falso) entao
                  parte[1] <- texto
                  tempe <- compr("                                                       ") - compr(texto)
                  para conta <- 1 ate tempe faca
                       espacos_e[1] <- espacos_e[1] + " "
                  fimpara
                  para conta <- 2 ate 16 faca
                       espacos_e[conta] <- "                                                       "
                  fimpara
                  interrompa
               fimse
           fimse
       fimse
  fimpara
tempe <- conta
para cont <- (conta+1) ate 16 faca
     espacos_e[cont] <- "                                                       "
fimpara
cont <- tempe
se (caminho1 = verdadeiro)ou(caminho2 = verdadeiro) entao
   para conta <- 1 ate cont faca
        tempe <- compr("                                                       ") - compr(parte[conta])
        para cont <- 1 ate tempe faca
             espacos_e[conta] <- espacos_e[conta] + " "
        fimpara
   fimpara
fimse
//Boa tarde bah, tás nice? Tou a precisar de um help aqui com esse trabalho de ITIC, não sei se estás disponível para me ajudar. Esqueci de perguntar, mas está tudo nice aí? Há quanto tempo pah. Ainda estás com aquela sbiga?
//Xó mais uma vez. O e-mail que tentei te enviar deu error. Wali "sintaxe incorreta", não sei o que se passa. Mas como vai a vida aí? Já viste a aula que a docente postou?
limpatela
   escreval ("       _________________________________________________________________________________________________________")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                               SIGA - UEM                                                |")
   escreval ("      |_________________________________________________________________________________________________________|")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |              ________________________________________________________              |")
   escreval ("      |                    |             |                                                        |             |")
 se chamadopordoc = falso entao
   escreval ("      |                    |             | ", nomes[m], " (", curs[m]," ",nivel[m], ")", espacoe,"|             |")
   escreval ("      |                    |             |", espacoe2, "~ ", email[m], " |             |")
  senao
   escreval ("      |                    |             | Docente ", nomes[m], " ", abr[m], espacoe, "|             |")
   escreval ("      |                    |             |", espacoe2, "~ ", email[m], " |             |")
 fimse
   escreval ("      |                    |             |--------------------------------------------------------|             |")
   escreval ("      |                    |             | ", parte[1], espacos_e[1], "|             |")
   escreval ("      |                    |             | ", parte[2], espacos_e[2], "|             |")
   escreval ("      |____________________|             | ", parte[3], espacos_e[3], "|             |")
   escreval ("      |                    |             | ", parte[4], espacos_e[4], "|             |")
   escreval ("      |       Turmas       |             | ", parte[5], espacos_e[5], "|             |")
   escreval ("      |____________________|             | ", parte[6], espacos_e[6], "|             |")
   escreval ("      |                    |             | ", parte[7], espacos_e[7], "|             |")
   escreval ("      |                    |             | ", parte[8], espacos_e[8], "|             |")
   escreval ("      |                    |             | ", parte[9], espacos_e[9], "|             |")
   escreval ("      |                    |             | ", parte[10], espacos_e[10], "|             |")
   escreval ("      |                    |             | ", parte[11], espacos_e[11], "|             |")
   escreval ("      |                    |             | ", parte[12], espacos_e[12], "|             |")
   escreval ("      |                    |             | ", parte[13], espacos_e[13], "|             |")
   escreval ("      |                    |             | ", parte[14], espacos_e[14], "|             |")
   escreval ("      |                    |             | ", parte[15], espacos_e[15], "|             |")
   escreval ("      |                    |             | ", parte[16], espacos_e[16], "|             |")
   escreval ("      |                    |             |________________________________________________________|             |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |____________________|____________________________________________________________________________________|")
   escreval ()
   escreval ()
   escreval ("Confirmar? (s = sim, n = não)")
   leia (resposta)
     enquanto (resposta <> "s")e(resposta <> "n") faca
              escreval ("Use apenas s(sim) ou n(não).")
              leia (resposta)
     fimenquanto
     se resposta = "n" entao
        limpatela
        escreva ("Pedido cancelado.")
        timer 1500
        timer 0
        limpatela
        para conta <- 1 ate 3 faca
             limpatela
             escreva ("Redirecionando o usuário...")
             timer(1200)
             timer(0)
             limpatela
             escreva ("Redirecionando o usuário..")
             timer(1200)
             timer(0)
        fimpara
        chamadoporperfil <- falso
      senao
         se resposta = "s" entao
            notif <- verdadeiro
            Notificacoes ()
         fimse
     fimse
     se chamadopordoc = falso entao
        Turmas ()
      senao
         chamadopordoc <- falso
         Docentes ()
     fimse

FimProcedimento


Procedimento Avaliacoes ()

var

invalidoava : logico

inicio

limpatela
se contadoc = falso entao
se curso[n] = "Licenciatura em Informática" entao
   escreval ("       _________________________________________________________________________________________________________")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                               SIGA - UEM                                                |")
   escreval ("      |_________________________________________________________________________________________________________|")
   escreval ("      |                    |   ______________________________________                                           |")
   escreval ("      |                    |  |                                      |                                          |")
   escreval ("      |                    |  | Estatística Básica                   |                                          |")
   escreval ("      |                    |  |______________________________________|                                          |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |   ______________________________________                                           |")
   escreval ("      |                    |  |                                      |                                          |")
   escreval ("      |                    |  | Estrutura e Gestão das Organizações  |                                          |")
se (cpordocumento = verdadeiro)ou(cporvideo = verdadeiro)ou(cporquiz = verdadeiro) entao
   escreval ("      |____________________|  |______________________________________|                                          |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |       Mídia        |   ______________________________________                                           |")
   escreval ("      |____________________|  |                                      |                                          |")
   escreval ("      |                    |  | Fundamentos da Geometria             |                                          |                   ____________________________")
   escreval ("      |                    |  |______________________________________|                                          |                  |                            |")
   escreval ("      |                    |                                                                                    |                  |            Guia            |")
   escreval ("      |                    |   _________________________________________________________                        |                  |----------------------------|")
   escreval ("      |                    |  |                                                         |                       |                  | Estatística Básica = '1'   |")
   escreval ("      |                    |  | Introdução às Tecnologias de Informação e Comunicações  |                       |                  |----------------------------|")
 senao
   escreval ("      |                    |  |______________________________________|                                          |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |   ______________________________________                                           |")
   escreval ("      |                    |  |                                      |                                          |")
   escreval ("      |                    |  | Fundamentos da Geometria             |                                          |                   ____________________________")
   escreval ("      |                    |  |______________________________________|                                          |                  |                            |")
   escreval ("      |____________________|                                                                                    |                  |            Guia            |")
   escreval ("      |                    |   _________________________________________________________                        |                  |----------------------------|")
   escreval ("      |     Avaliações     |  |                                                         |                       |                  | Estatística Básica = '1'   |")
   escreval ("      |____________________|  | Introdução às Tecnologias de Informação e Comunicações  |                       |                  |----------------------------|")
fimse
   escreval ("      |                    |  |_________________________________________________________|                       |                  | E.G. das Organizações = '2'|")
   escreval ("      |                    |                                                                                    |                  |----------------------------|")
   escreval ("      |                    |   _____________________________________________                                    |                  | F. da Geometria = '3'      |")
   escreval ("      |                    |  |                                             |                                   |                  |----------------------------|")
   escreval ("      |                    |  | Métodos de Estudo e Habilidades para a Vida |                                   |                  | Introdução às TIC = '4'    |")
   escreval ("      |                    |  |_____________________________________________|                                   |                  |----------------------------|")
   escreval ("      |                    |                                                                                    |                  | M.E.H. para a Vida = '5'   |")
   escreval ("      |                    |   ______________________________________                                           |                  |----------------------------|")
   escreval ("      |                    |  |                                      |                                          |                  | Matemática Básica = '6'    |")
   escreval ("      |                    |  | Matemática Básica                    |                                          |                  |----------------------------|")
   escreval ("      |                    |  |______________________________________|                                          |                  | Página Inicial = 'pi'      |")
   escreval ("      |____________________|____________________________________________________________________________________|                  |____________________________|")
   escreval ()
   escreval ()
   se cpordocumento = verdadeiro entao
      escreval ("Deseja visualizar os documentos de qual cadeira? (Consulte o guia).")
    senao
       se cporvideo = verdadeiro entao
          escreval ("Deseja visualizar as video-aulas de qual cadeira? (Consulte o guia).")
        senao
           se cporquiz = verdadeiro entao
              escreval ("Deseja visualizar os 'quizzes' de qual cadeira? (Consulte o guia).")
            senao
               escreval ("Deseja visualizar as avaliações de qual cadeira? (Consulte o guia).")
           fimse
       fimse
   fimse
    repita
      invalidoava <- falso
      leia (resposta)
      se nao((resposta = "1")ou(resposta = "2")ou(resposta = "3")ou(resposta = "4")ou(resposta = "5")ou(resposta = "6")ou(resposta = "pi")) entao
         escreval ("Resposta inválida. (Consulte o guia).")
         invalidoava <- verdadeiro
      fimse
    ate invalidoava = falso
    escolha resposta
      caso "1"
        a <- 1
      caso "2"
        a <- 2
      caso "3"
        a <- 3
      caso "4"
        a <- 4
      caso "5"
        a <- 5
      caso "6"
        a <- 6
    fimescolha
   se resposta <> "pi" entao
      se cpordocumento = verdadeiro entao
         cpordocumento <- falso
         Documentos ()
       senao
          se cporvideo = verdadeiro entao
             cporvideo <- falso
             VideoAulas ()
           senao
              se cporquiz = verdadeiro entao
                 cporquiz <- falso
                 Quiz ()
               senao
                  Avaliacoes2 ()
              fimse
          fimse
      fimse
   fimse
   cpordocumento <- falso
   cporvideo <- falso
   cporquiz <- falso
   CarregarMenuComGuia ()
 senao
se curso[n] = "Licenciatura em Matemática" entao
   escreval ("       _________________________________________________________________________________________________________")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                               SIGA - UEM                                                |")
   escreval ("      |_________________________________________________________________________________________________________|")
   escreval ("      |                    |   ______________________________________                                           |")
   escreval ("      |                    |  |                                      |                                          |")
   escreval ("      |                    |  | Estatística Básica                   |                                          |")
   escreval ("      |                    |  |______________________________________|                                          |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |   ______________________________________                                           |")
   escreval ("      |                    |  |                                      |                                          |")
   escreval ("      |                    |  | Estrutura e Gestão das Organizações  |                                          |")
se (cpordocumento = verdadeiro)ou(cporvideo = verdadeiro)ou(cporquiz = verdadeiro) entao
   escreval ("      |____________________|  |______________________________________|                                          |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |       Mídia        |   ______________________________________                                           |")
   escreval ("      |____________________|  |                                      |                                          |")
   escreval ("      |                    |  | Fundamentos da Geometria             |                                          |                   ____________________________")
   escreval ("      |                    |  |______________________________________|                                          |                  |                            |")
   escreval ("      |                    |                                                                                    |                  |            Guia            |")
   escreval ("      |                    |   _________________________________________________________                        |                  |----------------------------|")
   escreval ("      |                    |  |                                                         |                       |                  | Estatística Básica = '1'   |")
   escreval ("      |                    |  | Introdução às Tecnologias de Informação e Comunicações  |                       |                  |----------------------------|")
 senao
    escreval ("      |                    |  |______________________________________|                                          |")
    escreval ("      |                    |                                                                                    |")
    escreval ("      |                    |   ______________________________________                                           |")
    escreval ("      |                    |  |                                      |                                          |")
    escreval ("      |                    |  | Fundamentos da Geometria             |                                          |                   ____________________________")
    escreval ("      |                    |  |______________________________________|                                          |                  |                            |")
    escreval ("      |____________________|                                                                                    |                  |            Guia            |")
    escreval ("      |                    |   _________________________________________________________                        |                  |----------------------------|")
    escreval ("      |     Avaliações     |  |                                                         |                       |                  | Estatística Básica = '1'   |")
    escreval ("      |____________________|  | Introdução às Tecnologias de Informação e Comunicações  |                       |                  |----------------------------|")
fimse
   escreval ("      |                    |  |_________________________________________________________|                       |                  | E.G. das Organizações = '2'|")
   escreval ("      |                    |                                                                                    |                  |----------------------------|")
   escreval ("      |                    |   ______________________________________________                                   |                  | F. da Geometria = '3'      |")
   escreval ("      |                    |  |                                              |                                  |                  |----------------------------|")
   escreval ("      |                    |  | Métodos de Estudo e Habilidades para a Vida  |                                  |                  | Introdução às TIC = '4'    |")
   escreval ("      |                    |  |______________________________________________|                                  |                  |----------------------------|")
   escreval ("      |                    |                                                                                    |                  | M.E.H. para a Vida = '5'   |")
   escreval ("      |                    |   ______________________________________                                           |                  |----------------------------|")
   escreval ("      |                    |  |                                      |                                          |                  | Matemática Básica = '6'    |")
   escreval ("      |                    |  | Matemática Básica                    |                                          |                  |----------------------------|")
   escreval ("      |                    |  |______________________________________|                                          |                  | Página Inicial = 'pi'      |")
   escreval ("      |____________________|____________________________________________________________________________________|                  |____________________________|")
   escreval ()
   escreval ()
   se cpordocumento = verdadeiro entao
      escreval ("Deseja visualizar os documentos de qual cadeira? (Consulte o guia).")
    senao
       se cporvideo = verdadeiro entao
          escreval ("Deseja visualizar as video-aulas de qual cadeira? (Consulte o guia).")
        senao
           se cporquiz = verdadeiro entao
              escreval ("Deseja visualizar os 'quizzes' de qual cadeira? (Consulte o guia).")
            senao
               escreval ("Deseja visualizar as avaliações de qual cadeira? (Consulte o guia).")
           fimse
       fimse
   fimse
    repita
      invalidoava <- falso
      leia (resposta)
      se nao((resposta = "1")ou(resposta = "2")ou(resposta = "3")ou(resposta = "4")ou(resposta = "5")ou(resposta = "6")ou(resposta = "pi")) entao
         escreval ("Resposta inválida. (Consulte o guia).")
         invalidoava <- verdadeiro
      fimse
    ate invalidoava = falso
    escolha resposta
      caso "1"
        a <- 1
      caso "2"
        a <- 2
      caso "3"
        a <- 3
      caso "4"
        a <- 4
      caso "5"
        a <- 5
      caso "6"
        a <- 6
    fimescolha
   se resposta <> "pi" entao
      se cpordocumento = verdadeiro entao
         cpordocumento <- falso
         Documentos ()
       senao
          se cporvideo = verdadeiro entao
             cporvideo <- falso
             VideoAulas ()
           senao
              se cporquiz = verdadeiro entao
                 cporquiz <- falso
                 Quiz ()
               senao
                  Avaliacoes2 ()
              fimse
          fimse
      fimse
   fimse
   cpordocumento <- falso
   cporvideo <- falso
   cporquiz <- falso
   CarregarMenuComGuia ()
 senao
se curso[n] = "Licenciatura em Estatística" entao
   escreval ("       _________________________________________________________________________________________________________")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                               SIGA - UEM                                                |")
   escreval ("      |_________________________________________________________________________________________________________|")
   escreval ("      |                    |   _____________________________________________________________________________    |")
   escreval ("      |                    |  |                                      |                                      |   |")
   escreval ("      |                    |  | Estatística Básica                   | Estatística Descritiva               |   |")
   escreval ("      |                    |  |______________________________________|______________________________________|   |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |   _____________________________________________________________________________    |")
   escreval ("      |                    |  |                                      |                                      |   |                   ____________________________")
   escreval ("      |                    |  | Álgebra Linear e Gemotria Analítica  | Introdução à Informática             |   |                  |                            |")
se (cpordocumento = verdadeiro)ou(cporvideo = verdadeiro)ou(cporquiz = verdadeiro) entao
   escreval ("      |____________________|  |______________________________________|______________________________________|   |                  |            Guia            |")
   escreval ("      |                    |                                                                                    |                  |----------------------------|")
   escreval ("      |       Mídia        |   _____________________________________________________________________________    |                  | Estatística Básica = '1'   |")
   escreval ("      |____________________|  |                                      |                                      |   |                  |----------------------------|")
   escreval ("      |                    |  | Análise Matemática I                 | Lógica e Teoria de Conjuntos         |   |                  | A.L.G. Analítica = '2'     |")
   escreval ("      |                    |  |______________________________________|______________________________________|   |                  |----------------------------|")
   escreval ("      |                    |                                                                                    |                  | Análise Matemática I = '3' |")
   escreval ("      |                    |   ________________________________________________________                         |                  |----------------------------|")
   escreval ("      |                    |  |                                                        |                        |                  | Introdução às TIC = '4'    |")
   escreval ("      |                    |  | Introdução às Tecnologias de Informação e Comunicação  |                        |                  |----------------------------|")
 senao
    escreval ("      |                    |  |______________________________________|______________________________________|   |                  |            Guia            |")
    escreval ("      |                    |                                                                                    |                  |----------------------------|")
    escreval ("      |                    |   _____________________________________________________________________________    |                  | Estatística Básica = '1'   |")
    escreval ("      |                    |  |                                      |                                      |   |                  |----------------------------|")
    escreval ("      |                    |  | Análise Matemática I                 | Lógica e Teoria de Conjuntos         |   |                  | A.L.G. Analítica = '2'     |")
    escreval ("      |                    |  |______________________________________|______________________________________|   |                  |----------------------------|")
    escreval ("      |____________________|                                                                                    |                  | Análise Matemática I = '3' |")
    escreval ("      |                    |   ________________________________________________________                         |                  |----------------------------|")
    escreval ("      |     Avaliações     |  |                                                        |                        |                  | Introdução às TIC = '4'    |")
    escreval ("      |____________________|  | Introdução às Tecnologias de Informação e Comunicação  |                        |                  |----------------------------|")
fimse
   escreval ("      |                    |  |________________________________________________________|                        |                  | M.E.H. para a Vida = '5'   |")
   escreval ("      |                    |                                                                                    |                  |----------------------------|")
   escreval ("      |                    |   ______________________________________________                                   |                  | Matemática Básica = '6'    |")
   escreval ("      |                    |  |                                              |                                  |                  |----------------------------|")
   escreval ("      |                    |  | Métodos de Estudo e Habilidades para a Vida  |                                  |                  | E. Descritiva = '7'        |")
   escreval ("      |                    |  |______________________________________________|                                  |                  |----------------------------|")
   escreval ("      |                    |                                                                                    |                  | I. à Informática = '8'     |")
   escreval ("      |                    |   ______________________________________                                           |                  |----------------------------|")
   escreval ("      |                    |  |                                      |                                          |                  | L.T. de Conjuntos = '9'    |")
   escreval ("      |                    |  | Matemática Básica                    |                                          |                  |----------------------------|")
   escreval ("      |                    |  |______________________________________|                                          |                  | Página Inicial = 'pi'      |")
   escreval ("      |____________________|____________________________________________________________________________________|                  |____________________________|")
   escreval ()
   escreval ()
   se cpordocumento = verdadeiro entao
      escreval ("Deseja visualizar os documentos de qual cadeira? (Consulte o guia).")
    senao
       se cporvideo = verdadeiro entao
          escreval ("Deseja visualizar as video-aulas de qual cadeira? (Consulte o guia).")
        senao
           se cporquiz = verdadeiro entao
              escreval ("Deseja visualizar os 'quizzes' de qual cadeira? (Consulte o guia).")
            senao
               escreval ("Deseja visualizar as avaliações de qual cadeira? (Consulte o guia).")
           fimse
       fimse
   fimse
    repita
      invalidoava <- falso
      leia (resposta)
      se nao((resposta = "1")ou(resposta = "2")ou(resposta = "3")ou(resposta = "4")ou(resposta = "5")ou(resposta = "6")ou(resposta = "7")ou(resposta = "8")ou(resposta = "9")ou(resposta = "pi")) entao
         escreval ("Resposta inválida. (Consulte o guia).")
         invalidoava <- verdadeiro
      fimse
    ate invalidoava = falso
    escolha resposta
      caso "1"
        a <- 1
      caso "2"
        a <- 7
      caso "3"
        a <- 8
      caso "4"
        a <- 4
      caso "5"
        a <- 5
      caso "6"
        a <- 6
      caso "7"
        a <- 10
      caso "8"
        a <- 11
      caso "9"
        a <- 9
    fimescolha
   se resposta <> "pi" entao
      se cpordocumento = verdadeiro entao
         cpordocumento <- falso
         Documentos ()
       senao
          se cporvideo = verdadeiro entao
             cporvideo <- falso
             VideoAulas ()
           senao
              se cporquiz = verdadeiro entao
                 cporquiz <- falso
                 Quiz ()
               senao
                  Avaliacoes2 ()
              fimse
          fimse
      fimse
   fimse
   cpordocumento <- falso
   cporvideo <- falso
   cporquiz <- falso
   CarregarMenuComGuia ()
 senao
se curso[n] = "Licenciatura em Ciências de Informação Geográfica" entao
   escreval ("       _________________________________________________________________________________________________________")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                               SIGA - UEM                                                |")
   escreval ("      |_________________________________________________________________________________________________________|")
   escreval ("      |                    |   ______________________________________ ______________________________________    |")
   escreval ("      |                    |  |                                      |                                      |   |")
   escreval ("      |                    |  | Estatística Básica                   | Álgebra Linear Geometria Analítica   |   |")
   escreval ("      |                    |  |______________________________________|______________________________________|   |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |   ______________________________________ ______________________________________    |")
   escreval ("      |                    |  |                                      |                                      |   |")
   escreval ("      |                    |  | Análise Matemática I                 | Probabilidade e Estatística          |   |")
se (cpordocumento = verdadeiro)ou(cporvideo = verdadeiro)ou(cporquiz = verdadeiro) entao
   escreval ("      |____________________|  |______________________________________|______________________________________|   |                   ____________________________")
   escreval ("      |                    |                                                                                    |                  |                            |")
   escreval ("      |       Mídia        |   ______________________________________                                           |                  |            Guia            |")
   escreval ("      |____________________|  |                                      |                                          |                  |----------------------------|")
   escreval ("      |                    |  | Fundamentos da Geometria             |                                          |                  | Estatística Básica = '1'   |")
   escreval ("      |                    |  |______________________________________|                                          |                  |----------------------------|")
   escreval ("      |                    |                                                                                    |                  | Análise Matemática I = '2' |")
   escreval ("      |                    |   ________________________________________________________                         |                  |----------------------------|")
   escreval ("      |                    |  |                                                        |                        |                  | F. da Geometria = '3'      |")
   escreval ("      |                    |  | Introdução às Tecnologias de Informação e Comunicação  |                        |                  |----------------------------|")
 senao
    escreval ("      |                    |  |______________________________________|______________________________________|   |                   ____________________________")
    escreval ("      |                    |                                                                                    |                  |                            |")
    escreval ("      |                    |   ______________________________________                                           |                  |            Guia            |")
    escreval ("      |                    |  |                                      |                                          |                  |----------------------------|")
    escreval ("      |                    |  | Fundamentos da Geometria             |                                          |                  | Estatística Básica = '1'   |")
    escreval ("      |                    |  |______________________________________|                                          |                  |----------------------------|")
    escreval ("      |____________________|                                                                                    |                  | Análise Matemática I = '2' |")
    escreval ("      |                    |   ________________________________________________________                         |                  |----------------------------|")
    escreval ("      |     Avaliações     |  |                                                        |                        |                  | F. da Geometria = '3'      |")
    escreval ("      |____________________|  | Introdução às Tecnologias de Informação e Comunicação  |                        |                  |----------------------------|")
fimse
   escreval ("      |                    |  |________________________________________________________|                        |                  | Introdução às TIC = '4'    |")
   escreval ("      |                    |                                                                                    |                  |----------------------------|")
   escreval ("      |                    |   ______________________________________________                                   |                  | M.E.H. para a Vida = '5'   |")
   escreval ("      |                    |  |                                              |                                  |                  |----------------------------|")
   escreval ("      |                    |  | Métodos de Estudo e Habilidades para a Vida  |                                  |                  | Matemática Básica = '6'    |")
   escreval ("      |                    |  |______________________________________________|                                  |                  |----------------------------|")
   escreval ("      |                    |                                                                                    |                  | A.L.G. Analítica = '7'     |")
   escreval ("      |                    |   ______________________________________                                           |                  |----------------------------|")
   escreval ("      |                    |  |                                      |                                          |                  | P. e Estatística = '8'     |")
   escreval ("      |                    |  | Matemática Básica                    |                                          |                  |----------------------------|")
   escreval ("      |                    |  |______________________________________|                                          |                  | Página Inicial = 'pi'      |")
   escreval ("      |____________________|____________________________________________________________________________________|                  |____________________________|")
   escreval ()
   escreval ()
   se cpordocumento = verdadeiro entao
      escreval ("Deseja visualizar os documentos de qual cadeira? (Consulte o guia).")
    senao
       se cporvideo = verdadeiro entao
          escreval ("Deseja visualizar as video-aulas de qual cadeira? (Consulte o guia).")
        senao
           se cporquiz = verdadeiro entao
              escreval ("Deseja visualizar os 'quizzes' de qual cadeira? (Consulte o guia).")
            senao
               escreval ("Deseja visualizar as avaliações de qual cadeira? (Consulte o guia).")
           fimse
       fimse
   fimse
   repita
       invalidoava <- falso
       leia (resposta)
       se nao((resposta = "1")ou(resposta = "2")ou(resposta = "3")ou(resposta = "4")ou(resposta = "5")ou(resposta = "6")ou(resposta = "7")ou(resposta = "8")ou(resposta = "pi")) entao
          escreval ("Resposta inválida. (Consulte o guia).")
          invalidoava <- verdadeiro
       fimse
   ate invalidoava = falso
//    escolha resposta
//      caso "1"
//        d <- 1
//      caso "2"
//        d <- 8
//      caso "3"
//        d <- 3
//      caso "4"
//        d <- 4
//      caso "5"
//        d <- 5
//      caso "6"
//        d <- 6
//      caso "7"
//        d <- 7
//      caso "8"
//        d <- 12
//    fimescolha
   se resposta = "1" entao
      a <- 1
    senao
       se resposta = "2" entao
          a <- 8
        senao
           se resposta = "3" entao
              a <- 3
            senao
               se resposta = "4" entao
                  a <- 4
                senao
                   se resposta = "5" entao
                      a <- 5
                    senao
                       se resposta = "6" entao
                          a <- 6
                        senao
                           se resposta = "7" entao
                              a <- 7
                            senao
                               se resposta = "8" entao
                                  a <- 12
                               fimse
                           fimse
                       fimse
                   fimse
               fimse
           fimse
       fimse
    fimse
   se resposta <> "pi" entao
      se cpordocumento = verdadeiro entao
         cpordocumento <- falso
         Documentos ()
       senao
          se cporvideo = verdadeiro entao
             cporvideo <- falso
             VideoAulas ()
           senao
              se cporquiz = verdadeiro entao
                 Quiz ()
                 cporquiz <- falso
               senao
                  Avaliacoes2 ()
              fimse
          fimse
      fimse
   fimse
   cpordocumento <- falso
   cporvideo <- falso
   cporquiz <- falso
   CarregarMenuComGuia ()
fimse
fimse
fimse
fimse
 senao
   cont <- 0
   se n = 101 entao
      para conta <- 1 ate 7 faca
           nomeav[conta] <- nomes[conta]
           se pauta = falso entao
              notaav1[conta] <- nota_eb1[conta]
              notaav2[conta] <- nota_eb2[conta]
              notaav3[conta] <- nota_eb3[conta]
              notaav4[conta] <- nota_eb4[conta]
           fimse
      fimpara
      cont <- 8
      para conta <- 26 ate 32 faca
           nomeav[cont] <- nomes[conta]
           se pauta = falso entao
              notaav1[cont] <- nota_eb1[conta]
              notaav2[cont] <- nota_eb2[conta]
              notaav3[cont] <- nota_eb3[conta]
              notaav4[cont] <- nota_eb4[conta]
           fimse
           cont <- cont + 1
      fimpara
      nomeav[15] <- nomes[51]
      nomeav[16] <- nomes[52]
      nomeav[17] <- nomes[53]
      nomeav[18] <- nomes[54]
      nomeav[19] <- nomes[76]
      nomeav[20] <- nomes[77]
      nomeav[21] <- nomes[78]
      nomeav[22] <- nomes[79]
      se pauta = falso entao
         para conta <- 51 ate 54 faca
              cont <- cont + 1
              notaav1[cont] <- nota_eb1[conta]
              notaav2[cont] <- nota_eb2[conta]
              notaav3[cont] <- nota_eb3[conta]
              notaav4[cont] <- nota_eb4[conta]
         fimpara
         para conta <- 76 ate 79 faca
              cont <- cont + 1
              notaav1[cont] <- nota_eb1[conta]
              notaav2[cont] <- nota_eb2[conta]
              notaav3[cont] <- nota_eb3[conta]
              notaav4[cont] <- nota_eb4[conta]
         fimpara
      fimse
      numav <- 22
    senao
       se n = 102 entao
          para conta <- 1 ate 7 faca
               nomeav[conta] <- nomes[conta]
               se pauta = falso entao
                  notaav1[conta] <- nota_ego1[conta]
                  notaav2[conta] <- nota_ego2[conta]
                  notaav3[conta] <- nota_ego3[conta]
                  notaav4[conta] <- nota_ego4[conta]
               fimse
          fimpara
          cont <- 8
          para conta <- 26 ate 32 faca
               nomeav[cont] <- nomes[conta]
               se pauta = falso entao
                  notaav1[cont] <- nota_ego1[conta]
                  notaav2[cont] <- nota_ego2[conta]
                  notaav3[cont] <- nota_ego3[conta]
                  notaav4[cont] <- nota_ego4[conta]
               fimse
               cont <- cont + 1
          fimpara
          numav <- 15
        senao
           se n = 103 entao
              para conta <- 1 ate 7 faca
                   nomeav[conta] <- nomes[conta]
                   se pauta = falso entao
                      notaav1[conta] <- nota_fg1[conta]
                      notaav2[conta] <- nota_fg2[conta]
                      notaav3[conta] <- nota_fg3[conta]
                      notaav4[conta] <- nota_fg4[conta]
                   fimse
              fimpara
              cont <- 8
              para conta <- 26 ate 32 faca
                   nomeav[cont] <- nomes[conta]
                   se pauta = falso entao
                      notaav1[cont] <- nota_fg1[conta]
                      notaav2[cont] <- nota_fg2[conta]
                      notaav3[cont] <- nota_fg3[conta]
                      notaav4[cont] <- nota_fg4[conta]
                   fimse
                   cont <- cont + 1
              fimpara
              nomeav[15] <- nomes[76]
              nomeav[16] <- nomes[77]
              nomeav[17] <- nomes[78]
              nomeav[18] <- nomes[79]
              se pauta = falso entao
                 para conta <- 76 ate 79 faca
                      cont <- cont + 1
                      notaav1[cont] <- nota_fg1[conta]
                      notaav2[cont] <- nota_fg2[conta]
                      notaav3[cont] <- nota_fg3[conta]
                      notaav4[cont] <- nota_fg4[conta]
                 fimpara
              fimse
              numav <- 18
            senao
               se n = 104 entao
                  para conta <- 1 ate 7 faca
                       nomeav[conta] <- nomes[conta]
                       se pauta = falso entao
                          notaav1[conta] <- nota_itic1[conta]
                          notaav2[conta] <- nota_itic2[conta]
                          notaav3[conta] <- nota_itic3[conta]
                          notaav4[conta] <- nota_itic4[conta]
                       fimse
                  fimpara
                  cont <- 8
                  para conta <- 26 ate 32 faca
                       nomeav[cont] <- nomes[conta]
                       se pauta = falso entao
                          notaav1[cont] <- nota_itic1[conta]
                          notaav2[cont] <- nota_itic2[conta]
                          notaav3[cont] <- nota_itic3[conta]
                          notaav4[cont] <- nota_itic4[conta]
                       fimse
                       cont <- cont + 1
                  fimpara
                  nomeav[15] <- nomes[51]
                  nomeav[16] <- nomes[52]
                  nomeav[17] <- nomes[53]
                  nomeav[18] <- nomes[54]
                  nomeav[19] <- nomes[76]
                  nomeav[20] <- nomes[77]
                  nomeav[21] <- nomes[78]
                  nomeav[22] <- nomes[79]
                  se pauta = falso entao
                     para conta <- 51 ate 54 faca
                          cont <- cont + 1
                          notaav1[cont] <- nota_itic1[conta]
                          notaav2[cont] <- nota_itic2[conta]
                          notaav3[cont] <- nota_itic3[conta]
                          notaav4[cont] <- nota_itic4[conta]
                     fimpara
                     para conta <- 76 ate 79 faca
                          cont <- cont + 1
                          notaav1[cont] <- nota_itic1[conta]
                          notaav2[cont] <- nota_itic2[conta]
                          notaav3[cont] <- nota_itic3[conta]
                          notaav4[cont] <- nota_itic4[conta]
                     fimpara
                  fimse
                  numav <- 22
                senao
                   se n = 105 entao
                      para conta <- 1 ate 7 faca
                           nomeav[conta] <- nomes[conta]
                           se pauta = falso entao
                              notaav1[conta] <- nota_mehv1[conta]
                              notaav2[conta] <- nota_mehv2[conta]
                              notaav3[conta] <- nota_mehv3[conta]
                              notaav4[conta] <- nota_mehv4[conta]
                           fimse
                      fimpara
                      cont <- 8
                      para conta <- 26 ate 32 faca
                           nomeav[cont] <- nomes[conta]
                           se pauta = falso entao
                              notaav1[cont] <- nota_mehv1[conta]
                              notaav2[cont] <- nota_mehv2[conta]
                              notaav3[cont] <- nota_mehv3[conta]
                              notaav4[cont] <- nota_mehv4[conta]
                           fimse
                           cont <- cont + 1
                      fimpara
                      nomeav[15] <- nomes[51]
                      nomeav[16] <- nomes[52]
                      nomeav[17] <- nomes[53]
                      nomeav[18] <- nomes[54]
                      nomeav[19] <- nomes[76]
                      nomeav[20] <- nomes[77]
                      nomeav[21] <- nomes[78]
                      nomeav[22] <- nomes[79]
                      se pauta = falso entao
                         para conta <- 51 ate 54 faca
                              cont <- cont + 1
                              notaav1[cont] <- nota_mehv1[conta]
                              notaav2[cont] <- nota_mehv2[conta]
                              notaav3[cont] <- nota_mehv3[conta]
                              notaav4[cont] <- nota_mehv4[conta]
                         fimpara
                         para conta <- 76 ate 79 faca
                              cont <- cont + 1
                              notaav1[cont] <- nota_mehv1[conta]
                              notaav2[cont] <- nota_mehv2[conta]
                              notaav3[cont] <- nota_mehv3[conta]
                              notaav4[cont] <- nota_mehv4[conta]
                         fimpara
                      fimse
                      numav <- 22
                    senao
                       se n = 106 entao
                          para conta <- 1 ate 7 faca
                               nomeav[conta] <- nomes[conta]
                               se pauta = falso entao
                                  notaav1[conta] <- nota_mb1[conta]
                                  notaav2[conta] <- nota_mb2[conta]
                                  notaav3[conta] <- nota_mb3[conta]
                                  notaav4[conta] <- nota_mb4[conta]
                               fimse
                          fimpara
                          cont <- 8
                          para conta <- 26 ate 32 faca
                               nomeav[cont] <- nomes[conta]
                               se pauta = falso entao
                                  notaav1[cont] <- nota_mb1[conta]
                                  notaav2[cont] <- nota_mb2[conta]
                                  notaav3[cont] <- nota_mb3[conta]
                                  notaav4[cont] <- nota_mb4[conta]
                               fimse
                               cont <- cont + 1
                          fimpara
                          nomeav[15] <- nomes[51]
                          nomeav[16] <- nomes[52]
                          nomeav[17] <- nomes[53]
                          nomeav[18] <- nomes[54]
                          nomeav[19] <- nomes[76]
                          nomeav[20] <- nomes[77]
                          nomeav[21] <- nomes[78]
                          nomeav[22] <- nomes[79]
                          se pauta = falso entao
                             para conta <- 51 ate 54 faca
                                  cont <- cont + 1
                                  notaav1[cont] <- nota_mb1[conta]
                                  notaav2[cont] <- nota_mb2[conta]
                                  notaav3[cont] <- nota_mb3[conta]
                                  notaav4[cont] <- nota_mb4[conta]
                             fimpara
                             para conta <- 76 ate 79 faca
                                  cont <- cont + 1
                                  notaav1[cont] <- nota_mb1[conta]
                                  notaav2[cont] <- nota_mb2[conta]
                                  notaav3[cont] <- nota_mb3[conta]
                                  notaav4[cont] <- nota_mb4[conta]
                             fimpara
                          fimse
                          numav <- 22
                        senao
                           se n = 107 entao
                              nomeav[1] <- nomes[51]
                              nomeav[2] <- nomes[52]
                              nomeav[3] <- nomes[53]
                              nomeav[4] <- nomes[54]
                              nomeav[5] <- nomes[76]
                              nomeav[6] <- nomes[77]
                              nomeav[7] <- nomes[78]
                              nomeav[8] <- nomes[79]
                              se pauta = falso entao
                                 para conta <- 51 ate 54 faca
                                      cont <- cont + 1
                                      notaav1[cont] <- nota_alga1[conta]
                                      notaav2[cont] <- nota_alga2[conta]
                                      notaav3[cont] <- nota_alga3[conta]
                                      notaav4[cont] <- nota_alga4[conta]
                                 fimpara
                                 para conta <- 76 ate 79 faca
                                      cont <- cont + 1
                                      notaav1[cont] <- nota_alga1[conta]
                                      notaav2[cont] <- nota_alga2[conta]
                                      notaav3[cont] <- nota_alga3[conta]
                                      notaav4[cont] <- nota_alga4[conta]
                                 fimpara
                              fimse
                              numav <- 8
                            senao
                               se n = 108 entao
                                  nomeav[1] <- nomes[51]
                                  nomeav[2] <- nomes[52]
                                  nomeav[3] <- nomes[53]
                                  nomeav[4] <- nomes[54]
                                  nomeav[5] <- nomes[76]
                                  nomeav[6] <- nomes[77]
                                  nomeav[7] <- nomes[78]
                                  nomeav[8] <- nomes[79]
                                  se pauta = falso entao
                                     para conta <- 51 ate 54 faca
                                          cont <- cont + 1
                                          notaav1[cont] <- nota_ami1[conta]
                                          notaav2[cont] <- nota_ami2[conta]
                                          notaav3[cont] <- nota_ami3[conta]
                                          notaav4[cont] <- nota_ami4[conta]
                                     fimpara
                                     para conta <- 76 ate 79 faca
                                          cont <- cont + 1
                                          notaav1[cont] <- nota_ami1[conta]
                                          notaav2[cont] <- nota_ami2[conta]
                                          notaav3[cont] <- nota_ami3[conta]
                                          notaav4[cont] <- nota_ami4[conta]
                                     fimpara
                                  fimse
                                  numav <- 8
                                senao
                                   se n = 109 entao
                                      nomeav[1] <- nomes[51]
                                      nomeav[2] <- nomes[52]
                                      nomeav[3] <- nomes[53]
                                      nomeav[4] <- nomes[54]
                                      se pauta = falso entao
                                         para conta <- 51 ate 54 faca
                                              cont <- cont + 1
                                              notaav1[cont] <- nota_ltc1[conta]
                                              notaav2[cont] <- nota_ltc2[conta]
                                              notaav3[cont] <- nota_ltc3[conta]
                                              notaav4[cont] <- nota_ltc4[conta]
                                         fimpara
                                      fimse
                                      numav <- 4
                                    senao
                                       se n = 110 entao
                                          nomeav[1] <- nomes[76]
                                          nomeav[2] <- nomes[77]
                                          nomeav[3] <- nomes[78]
                                          nomeav[4] <- nomes[79]
                                          se pauta = falso entao
                                             para conta <- 76 ate 79 faca
                                                  cont <- cont + 1
                                                  notaav1[cont] <- nota_ed1[conta]
                                                  notaav2[cont] <- nota_ed2[conta]
                                                  notaav3[cont] <- nota_ed3[conta]
                                                  notaav4[cont] <- nota_ed4[conta]
                                             fimpara
                                          fimse
                                          numav <- 4
                                        senao
                                           se n = 111 entao
                                             nomeav[1] <- nomes[51]
                                             nomeav[2] <- nomes[52]
                                             nomeav[3] <- nomes[53]
                                             nomeav[4] <- nomes[54]
                                             se pauta = falso entao
                                                para conta <- 51 ate 54 faca
                                                     cont <- cont + 1
                                                     notaav1[cont] <- nota_ii1[conta]
                                                     notaav2[cont] <- nota_ii2[conta]
                                                     notaav3[cont] <- nota_ii3[conta]
                                                     notaav4[cont] <- nota_ii4[conta]
                                                fimpara
                                             fimse
                                             numav <- 4
                                            senao
                                               se n = 112 entao
                                                  nomeav[1] <- nomes[76]
                                                  nomeav[2] <- nomes[77]
                                                  nomeav[3] <- nomes[78]
                                                  nomeav[4] <- nomes[79]
                                                  se pauta = falso entao
                                                     para conta <- 76 ate 79 faca
                                                          cont <- cont + 1
                                                          notaav1[cont] <- nota_pe1[conta]
                                                          notaav2[cont] <- nota_pe2[conta]
                                                          notaav3[cont] <- nota_pe3[conta]
                                                          notaav4[cont] <- nota_pe4[conta]
                                                     fimpara
                                                  fimse
                                                  numav <- 4
                                               fimse
                                           fimse
                                       fimse
                                   fimse
                               fimse
                           fimse
                       fimse
                   fimse
               fimse
           fimse
       fimse
   fimse
   se pauta = falso entao
      para conta <- 1 ate numav faca
           se (notaav1[conta])e(notaav2[conta] <> "?") entao
              medtemp <- caracpnum(notaav1[conta]) + caracpnum(notaav2[conta])
              medtemp <- medtemp/2
              para cont <- 1 ate compr(numpcarac(medtemp)) faca
                   se copia(numpcarac(medtemp);cont,1) = "." entao
                      se caracpnum(copia(numpcarac(medtemp);cont+2,1)) >= 5 entao
                         medtemp <- medtemp + 0.1
                      fimse
                      mediaav1[conta] <- copia(numpcarac(medtemp);1,cont-1) + "," + copia(numpcarac(medtemp);cont+1,1)
                      interrompa
                   fimse
              fimpara
              se (compr(numpcarac(medtemp)) = 1)ou(compr(numpcarac(medtemp)) = 2) entao
                 mediaav1[conta] <- numpcarac(medtemp) + ",0"
              fimse
              se (caracpnum(copia(mediaav1[conta];1,1)) <= 9)e(copia(mediaav1[conta];2,1) = ",") entao
                 notaav3[conta] <- "Excl."
                 notaav4[conta] <- "Excl."
                 mediaav[conta] <- "Excl."
               senao
                  se caracpnum(copia(mediaav1[conta];1,2)) >= 14 entao
                     notaav3[conta] <- "Disp."
                     notaav4[conta] <- "Disp."
                     mediaav[conta] <- "Disp."
                  fimse
              fimse
            senao
               notaav4[conta] <- "?"
               mediaav1[conta] <- "?"
               mediaav[conta] <- "?"
           fimse
           se (notaav3[conta] <> "?")e(notaav3[conta] <> "")e(notaav3[conta] <> "Exc.") entao
              medtemp <- caracpnum(notaav1[conta]) + caracpnum(notaav2[conta]) + caracpnum(notaav3[conta])
              medtemp <- medtemp/3
              para cont <- 1 ate compr(numpcarac(medtemp)) faca
                   se copia(numpcarac(medtemp);cont,1) = "." entao
                      se caracpnum(copia(numpcarac(medtemp);cont+2,1)) >= 5 entao
                         medtemp <- medtemp + 0.1
                      fimse
                      mediaav[conta] <- copia(numpcarac(medtemp);1,cont-1) + "," + copia(numpcarac(medtemp);cont+1,1)
                      interrompa
                   fimse
              fimpara
              se (compr(numpcarac(medtemp)) = 1)ou(compr(numpcarac(medtemp)) = 2) entao
                 mediaav[conta] <- numpcarac(medtemp) + ",0"
              fimse
           fimse
           espacoav1[conta] <- ""
           tempav <- compr("                             ") - compr(nomeav[conta])
           para cont <- 1 ate tempav faca
                espacoav1[conta] <- espacoav1[conta] + " "
           fimpara
           se conta = numav entao
              para cont <- (numav+1) ate 22 faca
                   espacoav1[cont] <- "                             "
                   espacoav2[cont] <- "     "
                   espacoav2b[cont] <- "      "
                   espacoav3[cont] <- "      "
                   espacoav4[cont] <- "      "
                   espacoav4b[cont] <- "      "
                   espacoav5[cont] <- "           "
                   nomeav[cont] <- ""
              fimpara
           fimse
      fimpara
   fimse
   pauta <- verdadeiro
   //FK5Ee0vHrd
   //D3012003
   //27m7ke7phetq
   para conta <- 1 ate numav faca
        se (avaliado1[n] = verdadeiro)ou(inic_av1[n] = falso) entao
           tempav <- compr("     ") - compr(notaav1[conta])
           espacoav2[conta] <- ""
           para cont <- 1 ate tempav faca
                espacoav2[conta] <- espacoav2[conta] + " "
           fimpara
           se conta = numav entao
              inic_av1[n] <- verdadeiro
           fimse
        fimse
        se (avaliado2[n] = verdadeiro)ou(inic_av2[n] = falso) entao
           tempav <- compr("      ") - compr(notaav2[conta])
           espacoav3[conta] <- ""
           para cont <- 1 ate tempav faca
                espacoav3[conta] <- espacoav3[conta] + " "
           fimpara
           tempav <- compr("      ") - compr(mediaav1[conta])
           espacoav2b[conta] <- ""
           para cont <- 1 ate tempav faca
                espacoav2b[conta] <- espacoav2b[conta] + " "
           fimpara
           se conta = numav entao
              inic_av2[n] <- verdadeiro
           fimse
        fimse
        se (avaliado3[n] = verdadeiro)ou(inic_av3[n] = falso)ou(notaav3[conta] = "Disp.")ou(notaav3[conta] = "Excl.") entao
           tempav <- compr("      ") - compr(notaav3[conta])
           espacoav4[conta] <- ""
           para cont <- 1 ate tempav faca
                espacoav4[conta] <- espacoav4[conta] + " "
           fimpara
           se conta = numav entao
              inic_av3[n] <- verdadeiro
           fimse
        fimse
        se (avaliado4[n] = verdadeiro)ou(inic_av4[n] = falso)ou(notaav3[conta] = "Disp.")ou(notaav3[conta] = "Excl.") entao
           tempav <- compr("      ") - compr(notaav4[conta])
           espacoav4b[conta] <- ""
           para cont <- 1 ate tempav faca
                espacoav4b[conta] <- espacoav4b[conta] + " "
           fimpara
           tempav <- compr("           ") - compr(mediaav[conta])
           espacoav5[conta] <- ""
           para cont <- 1 ate tempav faca
                espacoav5[conta] <- espacoav5[conta] + " "
           fimpara
           se conta = numav entao
              inic_av4[n] <- verdadeiro
           fimse
        fimse
   fimpara
   escreval ("       _________________________________________________________________________________________________________")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                               SIGA - UEM                                                |")
   escreval ("      |_________________________________________________________________________________________________________|")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |              Nome             | Av. 1 | Av. 2 | Média | Ex N. | Ex. R | Nota Final |")
   escreval ("      |                    | ------------------------------|-------|-------|-------|-------|-------|------------|")
   escreval ("      |                    |  ", nomeav[1], espacoav1[1],"| ",espacoav2[1], notaav1[1], " |", espacoav3[1],notaav2[1]," |", espacoav2b[1], mediaav1[1], " |", espacoav4[1],notaav3[1], " |", espacoav4b[1],notaav4[1], " |", espacoav5[1],mediaav[1]," |")
   escreval ("      |                    |  ", nomeav[2], espacoav1[2],"| ",espacoav2[2], notaav1[2], " |", espacoav3[2],notaav2[2]," |", espacoav2b[2], mediaav1[2], " |", espacoav4[2],notaav3[2], " |", espacoav4b[2],notaav4[2], " |", espacoav5[2],mediaav[2]," |")
   escreval ("      |                    |  ", nomeav[3], espacoav1[3],"| ",espacoav2[3], notaav1[3], " |", espacoav3[3],notaav2[3]," |", espacoav2b[3], mediaav1[3], " |", espacoav4[3],notaav3[3], " |", espacoav4b[3],notaav4[3], " |", espacoav5[3],mediaav[3]," |")
   escreval ("      |                    |  ", nomeav[4], espacoav1[4],"| ",espacoav2[4], notaav1[4], " |", espacoav3[4],notaav2[4]," |", espacoav2b[4], mediaav1[4], " |", espacoav4[4],notaav3[4], " |", espacoav4b[4],notaav4[4], " |", espacoav5[4],mediaav[4]," |")
   escreval ("      |                    |  ", nomeav[5], espacoav1[5],"| ",espacoav2[5], notaav1[5], " |", espacoav3[5],notaav2[5]," |", espacoav2b[5], mediaav1[5], " |", espacoav4[5],notaav3[5], " |", espacoav4b[5],notaav4[5], " |", espacoav5[5],mediaav[5]," |")
   escreval ("      |                    |  ", nomeav[6], espacoav1[6],"| ",espacoav2[6], notaav1[6], " |", espacoav3[6],notaav2[6]," |", espacoav2b[6], mediaav1[6], " |", espacoav4[6],notaav3[6], " |", espacoav4b[6],notaav4[6], " |", espacoav5[6],mediaav[6]," |")
   escreval ("      |                    |  ", nomeav[7], espacoav1[7],"| ",espacoav2[7], notaav1[7], " |", espacoav3[7],notaav2[7]," |", espacoav2b[7], mediaav1[7], " |", espacoav4[7],notaav3[7], " |", espacoav4b[7],notaav4[7], " |", espacoav5[7],mediaav[7]," |")
   escreval ("      |                    |  ", nomeav[8], espacoav1[8],"| ",espacoav2[8], notaav1[8], " |", espacoav3[8],notaav2[8]," |", espacoav2b[8], mediaav1[8], " |", espacoav4[8],notaav3[8], " |", espacoav4b[8],notaav4[8], " |", espacoav5[8],mediaav[8]," |")
   escreval ("      |                    |  ", nomeav[9], espacoav1[9],"| ",espacoav2[9], notaav1[9], " |", espacoav3[9],notaav2[9]," |", espacoav2b[9], mediaav1[9], " |", espacoav4[9],notaav3[9], " |", espacoav4b[9],notaav4[9], " |", espacoav5[9],mediaav[9]," |")
   escreval ("      |____________________|  ", nomeav[10], espacoav1[10],"| ",espacoav2[10], notaav1[10], " |", espacoav3[10],notaav2[10]," |", espacoav2b[10], mediaav1[10], " |", espacoav4[10],notaav3[10], " |", espacoav4b[10],notaav4[10], " |", espacoav5[10],mediaav[10]," |")
   escreval ("      |                    |  ", nomeav[11], espacoav1[11],"| ",espacoav2[11], notaav1[11], " |", espacoav3[11],notaav2[11]," |", espacoav2b[11], mediaav1[11], " |", espacoav4[11],notaav3[11], " |", espacoav4b[11],notaav4[11], " |", espacoav5[11],mediaav[11]," |")
   escreval ("      |     Avaliações     |  ", nomeav[12], espacoav1[12],"| ",espacoav2[12], notaav1[12], " |", espacoav3[12],notaav2[12]," |", espacoav2b[12], mediaav1[12], " |", espacoav4[12],notaav3[12], " |", espacoav4b[12],notaav4[12], " |", espacoav5[12],mediaav[12]," |")
   escreval ("      |____________________|  ", nomeav[13], espacoav1[13],"| ",espacoav2[13], notaav1[13], " |", espacoav3[13],notaav2[13]," |", espacoav2b[13], mediaav1[13], " |", espacoav4[13],notaav3[13], " |", espacoav4b[13],notaav4[13], " |", espacoav5[13],mediaav[13]," |")
   escreval ("      |                    |  ", nomeav[14], espacoav1[14],"| ",espacoav2[14], notaav1[14], " |", espacoav3[14],notaav2[14]," |", espacoav2b[14], mediaav1[14], " |", espacoav4[14],notaav3[14], " |", espacoav4b[14],notaav4[14], " |", espacoav5[14],mediaav[14]," |")
   escreval ("      |                    |  ", nomeav[15], espacoav1[15],"| ",espacoav2[15], notaav1[15], " |", espacoav3[15],notaav2[15]," |", espacoav2b[15], mediaav1[15], " |", espacoav4[15],notaav3[15], " |", espacoav4b[15],notaav4[15], " |", espacoav5[15],mediaav[15]," |")
   escreval ("      |                    |  ", nomeav[16], espacoav1[16],"| ",espacoav2[16], notaav1[16], " |", espacoav3[16],notaav2[16]," |", espacoav2b[16], mediaav1[16], " |", espacoav4[16],notaav3[16], " |", espacoav4b[16],notaav4[16], " |", espacoav5[16],mediaav[16]," |")
   escreval ("      |                    |  ", nomeav[17], espacoav1[17],"| ",espacoav2[17], notaav1[17], " |", espacoav3[17],notaav2[17]," |", espacoav2b[17], mediaav1[17], " |", espacoav4[17],notaav3[17], " |", espacoav4b[17],notaav4[17], " |", espacoav5[17],mediaav[17]," |")
   escreval ("      |                    |  ", nomeav[18], espacoav1[18],"| ",espacoav2[18], notaav1[18], " |", espacoav3[18],notaav2[18]," |", espacoav2b[18], mediaav1[18], " |", espacoav4[18],notaav3[18], " |", espacoav4b[18],notaav4[18], " |", espacoav5[18],mediaav[18]," |                   ________________________")
   escreval ("      |                    |  ", nomeav[19], espacoav1[19],"| ",espacoav2[19], notaav1[19], " |", espacoav3[19],notaav2[19]," |", espacoav2b[19], mediaav1[19], " |", espacoav4[19],notaav3[19], " |", espacoav4b[19],notaav4[19], " |", espacoav5[19],mediaav[19]," |                  |                        |")
   escreval ("      |                    |  ", nomeav[20], espacoav1[20],"| ",espacoav2[20], notaav1[20], " |", espacoav3[20],notaav2[20]," |", espacoav2b[20], mediaav1[20], " |", espacoav4[20],notaav3[20], " |", espacoav4b[20],notaav4[20], " |", espacoav5[20],mediaav[20]," |                  |          Guia          |")
   escreval ("      |                    |  ", nomeav[21], espacoav1[21],"| ",espacoav2[21], notaav1[21], " |", espacoav3[21],notaav2[21]," |", espacoav2b[21], mediaav1[21], " |", espacoav4[21],notaav3[21], " |", espacoav4b[21],notaav4[21], " |", espacoav5[21],mediaav[21]," |                  |------------------------|")
   escreval ("      |                    |  ", nomeav[22], espacoav1[22],"| ",espacoav2[22], notaav1[22], " |", espacoav3[22],notaav2[22]," |", espacoav2b[22], mediaav1[22], " |", espacoav4[22],notaav3[22], " |", espacoav4b[22],notaav4[22], " |", espacoav5[22],mediaav[22]," |                  | Avaliar = 'a'          |")
   escreval ("      |                    |                               |       |       |       |       |       |            |                  |------------------------|")
   escreval ("      |                    |                               |       |       |       |       |       |            |                  | Voltar = 'v'           |")
   escreval ("      |____________________|____________________________________________________________________________________|                  |________________________|")
   escreval ()
   escreval ()
   escreval ("O que deseja fazer? (Consulte o guia).")
   leia (resposta)
   enquanto (resposta <> "a")e(resposta <> "v") faca
            escreval ("Consulte o guia.")
            leia (resposta)
   fimenquanto
   se resposta = "a" entao
      AvaliacoesDoc ()
   fimse
fimse
CarregarMenuComGuia ()

FimProcedimento


Procedimento Avaliacoes2 ()

var

iniciado : logico
v1, v2, v3, v4, v5, v6, espacoavv1, espacoavv2, espacoavv3, espacoavv4, espacoavv5, espacoavv6, avv0, avv1, avv2, avv3 : caractere
tempavv : inteiro
Inicio


limpatela
escolha a
   caso 1
      nota1[n] <- nota_eb1[n]
      nota2[n] <- nota_eb2[n]
      nota3[n] <- nota_eb3[n]
      nota4[n] <- nota_eb4[n]
   caso 2
      nota1[n] <- nota_ego1[n]
      nota2[n] <- nota_ego2[n]
      nota3[n] <- nota_ego3[n]
      nota4[n] <- nota_ego4[n]
   caso 3
      nota1[n] <- nota_fg1[n]
      nota2[n] <- nota_fg2[n]
      nota3[n] <- nota_fg3[n]
      nota4[n] <- nota_fg4[n]
   caso 4
      nota1[n] <- nota_itic1[n]
      nota2[n] <- nota_itic2[n]
      nota3[n] <- nota_itic3[n]
      nota4[n] <- nota_itic4[n]
   caso 5
      nota1[n] <- nota_mehv1[n]
      nota2[n] <- nota_mehv2[n]
      nota3[n] <- nota_mehv3[n]
      nota4[n] <- nota_mehv4[n]
   caso 6
      nota1[n] <- nota_mb1[n]
      nota2[n] <- nota_mb2[n]
      nota3[n] <- nota_mb3[n]
      nota4[n] <- nota_mb4[n]
   caso 7
      nota1[n] <- nota_alga1[n]
      nota2[n] <- nota_alga2[n]
      nota3[n] <- nota_alga3[n]
      nota4[n] <- nota_alga4[n]
   caso 8
      nota1[n] <- nota_ami1[n]
      nota2[n] <- nota_ami2[n]
      nota3[n] <- nota_ami3[n]
      nota4[n] <- nota_ami4[n]
   caso 9
      nota1[n] <- nota_ltc1[n]
      nota2[n] <- nota_ltc2[n]
      nota3[n] <- nota_ltc3[n]
      nota4[n] <- nota_ltc4[n]
   caso 10
      nota1[n] <- nota_ed1[n]
      nota2[n] <- nota_ed2[n]
      nota3[n] <- nota_ed3[n]
      nota4[n] <- nota_ed4[n]
   caso 11
      nota1[n] <- nota_ii1[n]
      nota2[n] <- nota_ii2[n]
      nota3[n] <- nota_ii3[n]
      nota4[n] <- nota_ii4[n]
   caso 12
      nota1[n] <- nota_pe1[n]
      nota2[n] <- nota_pe2[n]
      nota3[n] <- nota_pe3[n]
      nota4[n] <- nota_pe4[n]
fimescolha
media1[n] <- "?"
media[n] <- "?"
se nota2[n] <> "?" entao
   se nota3[n] = "Disp." entao
      nota3[n] <- "Dispensado"
      nota4[n] <- "Dispensado"
      media[n] <- (caracpnum(nota1[n]) + caracpnum(nota2[n]))/2
      se compr(media[n]) > 2 entao
         media[n] <- copia(media[n];1,2) + "," + copia(media[n];4,1)
       senao
          media[n] <- media[n] + ",0"
      fimse
   fimse
   se nota3[n] = "Excl." entao
      nota3[n] <- "Excluído"
      nota4[n] <- "Excluído"
      media[n] <- "Excluído"
   fimse
   se media1[n] = "?" entao
      medtemp <- caracpnum(nota1[n]) + caracpnum(nota2[n])
      medtemp <- medtemp/2
      para cont <- 1 ate compr(numpcarac(medtemp)) faca
           se copia(numpcarac(medtemp);cont,1) = "." entao
              se caracpnum(copia(numpcarac(medtemp);cont+2,1)) >= 5 entao
                 medtemp <- medtemp + 0.1
              fimse
              media1[n] <- copia(numpcarac(medtemp);1,cont-1) + "," + copia(numpcarac(medtemp);cont+1,1)
              fimse
           fimse
           se compr(media1[n]) <= 2 entao
              media1[n] <- numpcarac(medtemp) + ",0"
           fimse
      fimpara
   fimse
fimse
se (nota3[n] <> "?")e(nota3[n] <> "Excl.")e(nota3[n] <> "Disp.") entao
   media[n] <- ""
   se caracpnum(nota4[n]) >= caracpnum(nota3[n]) entao
      medtemp <- caracpnum(nota1[n]) + caracpnum(nota2[n]) + caracpnum(nota4[n])
    senao
       medtemp <- caracpnum(nota1[n]) + caracpnum(nota2[n]) + caracpnum(nota3[n])
   fimse
   medtemp <- medtemp/3
   para cont <- 1 ate compr(numpcarac(medtemp)) faca
        se copia(numpcarac(medtemp);cont,1) = "." entao
           se caracpnum(copia(numpcarac(medtemp);cont+2,1)) >= 5 entao
              medtemp <- medtemp + 0.1
           fimse
           media[n] <- copia(numpcarac(medtemp);1,cont-1) + "," + copia(numpcarac(medtemp);cont+1,1)
           fimse
        fimse
        se compr(media[n]) <= 2 entao
           media[n] <- numpcarac(medtemp) + ",0"
        fimse
   fimpara
fimse

espacoavv1 <- ""
espacoavv2 <- ""
espacoavv3 <- ""
espacoavv4 <- ""
espacoavv5 <- ""
espacoavv6 <- ""
avv1 <- "          "
avv2 <- "            "
avv3 <- "              "
v1 <- ""
v2 <- ""
v3 <- ""
v4 <- ""
v5 <- ""
v6 <- ""

se nota1[n] <> "?" entao
   se (copia(nota1[n];1,2) = "1,")entao
      v1 <- " valor"
      nota1[n] <- nota1[n] + v1
    senao
       v1 <- " valores"
       nota1[n] <- nota1[n] + v1
   fimse
fimse
se nota2[n] <> "?" entao
   se (copia(nota2[n];1,2) <> "1,") entao
      v2 <- " valores"
      nota2[n] <- nota2[n] + v2
    senao
       v2 <- " valor"
       nota2[n] <- nota2[n] + v2
   fimse
fimse
se (media1[n] <> "Excluído")e(media1[n] <> "Dispensado")e(media1[n] <> "?") entao
   se (copia(media1[n];1,2) <> "1,") entao
      v3 <- " valores"
      media1[n] <- media1[n] + v3
    senao
       v3 <- " valor"
       media1[n] <- media1[n] + v3
   fimse
fimse
se (nota3[n] <> "Excluído")e(nota3[n] <> "Dispensado")e(nota3[n] <> "?") entao
   se (copia(nota3[n];1,2) <> "1,") entao
      v4 <- " valores"
      nota3[n] <- nota3[n] + v4
    senao
       v4 <- " valor"
       nota3[n] <- nota3[n] + v4
   fimse
fimse
se (nota4[n] <> "Excluído")e(nota4[n] <> "nulo")e(nota4[n] <> "Dispensado")e(nota4[n] <> "?") entao
   se (copia(nota4[n];1,2) <> "1,") entao
      v5 <- " valores"
      nota4[n] <- nota4[n] + v5
    senao
       v5 <- " valor"
       nota4[n] <- nota4[n] + v5
   fimse
fimse
se (media[n] <> "Excluído")e(media[n] <> "?") entao
   se (copia(media[n];1,2) <> "1,") entao
      v6 <- " valores"
      media[n] <- media[n] + v6
    senao
       v6 <- " valor"
       media[n] <- media[n] + v6
   fimse
fimse

tempavv <- compr("                                                                                  ") - compr(cadeiradoc[a+100])
para conta <- 1 ate tempavv faca
     avv0 <- avv0 + " "
fimpara
tempavv <- compr("                               ") - compr(nota1[n])
para conta <- 1 ate tempavv faca
     espacoavv1 <- espacoavv1 + " "
fimpara
tempavv <- compr("                                ") - compr(nota2[n])
para conta <- 1 ate tempavv faca
     espacoavv2 <- espacoavv2 + " "
fimpara
tempavv <- compr("                 ") - compr(media1[n])
para conta <- 1 ate tempavv faca
     espacoavv3 <- espacoavv3 + " "
fimpara
tempavv <- compr("                                    ") - compr(nota3[n])
para conta <- 1 ate tempavv faca
     espacoavv4 <- espacoavv4 + " "
fimpara
tempavv <- compr("                        ") - compr(nota4[n])
para conta <- 1 ate tempavv faca
     espacoavv5 <- espacoavv5 + " "
fimpara
tempavv <- compr("                                                    ") - compr(media[n])
para conta <- 1 ate tempavv faca
     espacoavv6 <- espacoavv6 + " "
fimpara
se avaliado1[a+100] = verdadeiro entao
   avv1 <- "      "
   espacoavv1 <- ""
   tempavv <- compr("                             ") - compr(nota1[n])
   espacoavv1 <- ""
   para conta <- 1 ate tempavv faca
        espacoavv1 <- espacoavv1 + " "
   fimpara
fimse
se avaliado2[a+100] = verdadeiro entao
   tempavv <- compr("                                    ") - compr(nota2[n])
   espacoavv4 <- ""
   para conta <- 1 ate tempavv faca
        espacoavv4 <- espacoavv4 + " "
   fimpara
fimse
se avaliado3[a+100] = verdadeiro entao
   avv2 <- "        "
   tempavv <- compr("                               ") - compr(nota4[n])
   espacoavv5 <- ""
   para conta <- 1 ate tempavv faca
        espacoavv5 <- espacoavv5 + " "
   fimpara
fimse
se avaliado4[a+100] = verdadeiro entao
   avv3 <- "         "
   tempavv <- compr("                                                 ") - compr(nota4[n])
   espacoavv6 <- ""
   para conta <- 1 ate tempavv faca
        espacoavv6 <- espacoavv6 + " "
   fimpara
fimse

   //20218415
   //çasiwesdcde
   //D3012003
   //27m7ke7phetq
   escreval ("       _________________________________________________________________________________________________________")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                               SIGA - UEM                                                |")
   escreval ("      |_________________________________________________________________________________________________________|")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    | ",cadeiradoc[a+100],":", avv0,"|")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |      Avaliação 1                   Avaliação 2                 Média Frequência    |")
   escreval ("      |                    |   -----------------             -----------------            --------------------  |")
   escreval ("      |                    |",avv1, nota1[n], espacoavv1, nota2[n], espacoavv2, media1[n], espacoavv3,"|")                                                                                    |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                   Exame Normal                   Exame de Recorrência              |")
   escreval ("      |____________________|                ------------------               ----------------------             |")
   escreval ("      |                    |            ",avv2,nota3[n],espacoavv4, nota4[n],espacoavv5,"|")
   escreval ("      |     Avaliações     |                                                                                    |")
   escreval ("      |____________________|                                                                                    |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                                    Nota Final                                      |")
   escreval ("      |                    |                                ------------------                                  |")
   escreval ("      |                    |                          ",avv3, media[n], espacoavv6,"|")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |____________________|____________________________________________________________________________________|")
   escreval ()
   escreval ()
   escreval ("Aperte 'v' para voltar.")
   leia (resposta)
   enquanto resposta <> "v" faca
            escreval ("Resposta inválida. (v = voltar)")
            leia (resposta)
   fimenquanto
   Avaliacoes ()

Fimprocedimento

Procedimento AvaliacoesDoc ()

var

notav, nota : vetor[1..100] de caractere
invalidoav, semnota : logico
contador, c2, numvirg : inteiro
tempav : caractere

Inicio

limpatela
se (avaliado1[n] = verdadeiro)e(avaliado2[n] = verdadeiro)e(avaliado3[n] = verdadeiro)e(avaliado4[n] = verdadeiro) entao
    escreval ("Os seus alunos já foram avaliados.")
    timer 1500
    timer 0
    limpatela
    para conta <- 1 ate 3 faca
         escreval ("Redirecionando o usuário...")
         timer 1200
         timer 0
         limpatela
         escreval ("Redirecionando o usuário..")
         timer 1200
         timer 0
         limpatela
    fimpara
    Avaliacoes ()
 senao
    escreval ("Faça as suas avaliações.")
    timer 1500
    timer 0
    limpatela
fimse
para conta <- 1 ate numav faca
     repita
      limpatela
         invalidoav <- falso
         numvirg <- 0
         c2 <- 0
         semnota <- falso
         se avaliado1[n] = falso entao
            escreval ("Qual é a nota da primeira avaliação de ", nomeav[conta], "?")
          senao
             se avaliado2[n] = falso entao
                escreval ("Qual é a nota da segunda avaliação de ", nomeav[conta], "?")
              senao
                 se (notaav3[conta] = "Excl.") entao
                    escreval ("O(A) estudante ", nomeav[conta], " foi excluído(a) com ", mediaav1[conta], " valores.")
                    timer 2500
                    timer 0
                    semnota <- verdadeiro
                    limpatela
                  senao
                     se (notaav3[conta] = "Disp.") entao
                        escreval ("O(A) estudante ", nomeav[conta], " foi dispensado(a).")
                        timer 2500
                        timer 0
                        semnota <- verdadeiro
                        limpatela
                      senao
                         se avaliado3[n] = falso entao
                            escreval ("Qual é a nota do exame final de ", nomeav[conta], "?")
                          senao
                             se (notaav3[conta] <> "Excl.")e(notaav3[conta] <> "Disp.") entao
                                escreval (nomeav[conta], " foi à recorrência?")
                                leia (resposta)
                                enquanto (resposta <> "s")e(resposta <> "n") faca
                                         escreval ("Resposta inválida. (s = sim, n = não).")
                                         leia (resposta)
                                fimenquanto
                                se resposta = "n" entao
                                   notaav4[conta] <- "nulo"
                                   semnota <- verdadeiro
                                 senao
                                    escreval ("Qual foi a nota de ", nomeav[conta], " no exame de recorrência?")
                                fimse
                             fimse
                         fimse
                     fimse
                 fimse
             fimse
         fimse
         se semnota = falso entao
             leia (notat)
             se (compr(notat) <= 2)ou(compr(notat) >= 5)ou(numvirg > 1) entao
                invalidoav <- verdadeiro
              senao
                 se ((compr(notat) = 3)e(copia(notat;2,1) <> ","))ou((compr(notat) = 4)e(copia(notat;3,1) <> ",")) entao
                    invalidoav <- verdadeiro
                  senao
                     se (compr(notat) = 4)e(copia(notat;1,1) = "2")e(copia(notat;4,1) <> "0") entao
                        invalidoav <- verdadeiro
                        c2 <- 10
                     fimse
                 fimse
             fimse
             se invalidoav = falso entao
                se compr(notat) = 3 entao
                   para cont <- 1 ate compr(notat) faca
                        se (copia(notat;cont,1) <> "0")e(copia(notat;cont,1) <> "1")e(copia(notat;cont,1) <> "2")e(copia(notat;cont,1) <> "3")e(copia(notat;cont,1) <> "4")e(copia(notat;cont,1) <> "5")e(copia(notat;cont,1) <> "6")e(copia(notat;cont,1) <> "7")e(copia(notat;cont,1) <> "8")e(copia(notat;cont,1) <> "9")e(copia(notat;cont,1) <> ",") entao
                           invalidoav <- verdadeiro
                           c2 <- 10
                        fimse
                   fimpara
                 senao
                    se compr(notat) = 4 entao
                       se (copia(notat;1,1) <> "1")e(copia(notat;1,1) <> "2") entao
                          invalidoav <- verdadeiro
                          c2 <- 10
                        senao
                           para cont <- 2 ate compr(notat) faca
                                se (copia(notat;cont,1) <> "0")e(copia(notat;cont,1) <> "1")e(copia(notat;cont,1) <> "2")e(copia(notat;cont,1) <> "3")e(copia(notat;cont,1) <> "4")e(copia(notat;cont,1) <> "5")e(copia(notat;cont,1) <> "6")e(copia(notat;cont,1) <> "7")e(copia(notat;cont,1) <> "8")e(copia(notat;cont,1) <> "9")e(copia(notat;cont,1) <> ",") entao
                                   invalidoav <- verdadeiro
                                   c2 <- 10
                                fimse
                           fimpara
                       fimse
                       se invalidoav = falso entao
                          se caracpnum(copia(notat;1,2)) > 20 entao
                             invalidoav <- verdadeiro
                             c2 <- 10
                          fimse
                       fimse
                    fimse
                fimse
                para cont <- 1 ate compr(notat) faca
                     se copia(notat;cont,1) = "," entao
                        numvirg <- numvirg + 1
                     fimse
                fimpara
             fimse
             se numvirg > 1 entao
                invalidoav <- verdadeiro
             fimse
             se (invalidoav = verdadeiro) entao
                se (c2 <> 10) entao
                   limpatela
                   escreval (notat)
                   escreval ("Nota inválida. Tente novamente. (Formato = x,x ou xx,x)")
                   timer 2000
                   timer 0
                 senao
                    limpatela
                    escreval (notat)
                    escreval ("Nota inválida. Tente novamente.")
                    timer 2000
                    timer 0
                fimse
             fimse
         fimse
     ate invalidoav = falso
     se avaliado1[n] = falso entao
        notaav1[conta] <- notat
      senao
         se avaliado2[n] = falso entao
            notaav2[conta] <- notat
          senao
             se avaliado3[n] = falso entao
                se (caracpnum(mediaav1[conta]) >= 10)e(caracpnum(mediaav1[conta]) < 14) entao
                   notaav3[conta] <- notat
                fimse
              senao
                 se (resposta = "s")e(semnota = falso) entao
                    notaav4[conta] <- notat
                 fimse
             fimse
         fimse
     fimse
     notav[conta] <- notat
fimpara
para conta <- 1 ate 100 faca
     nota[conta] <- "?"
fimpara
se n = 101 entao
   para conta <- 1 ate 7 faca
        nota[conta] <- notav[conta]
        se avaliado1[n] = falso entao
           nota_eb1[conta] <- nota[conta]
         senao
            se avaliado2[n] = falso entao
               nota_eb2[conta] <- nota[conta]
             senao
                se avaliado3[n] = falso entao
                   nota_eb3[conta] <- nota[conta]
                fimse
            fimse
        fimse
   fimpara
   cont <- 8
   para conta <- 26 ate 32 faca
        nota[conta] <- notav[cont]
        se avaliado1[n] = falso entao
           nota_eb1[conta] <- nota[conta]
         senao
            se avaliado2[n] = falso entao
               nota_eb2[conta] <- nota[conta]
             senao
                se avaliado3[n] = falso entao
                   nota_eb3[conta] <- nota[conta]
                fimse
            fimse
        fimse
        cont <- cont + 1
   fimpara
   nota[51] <- notav[15]
   nota[52] <- notav[16]
   nota[53] <- notav[17]
   nota[54] <- notav[18]
   nota[76] <- notav[19]
   nota[77] <- notav[20]
   nota[78] <- notav[21]
   nota[79] <- notav[22]
   se avaliado1[n] = falso entao
      nota_eb1[51] <- nota[51]
      nota_eb1[52] <- nota[52]
      nota_eb1[53] <- nota[53]
      nota_eb1[54] <- nota[54]
      nota_eb1[76] <- nota[76]
      nota_eb1[77] <- nota[77]
      nota_eb1[78] <- nota[78]
      nota_eb1[79] <- nota[79]
    senao
       se avaliado2[n] = falso entao
          nota_eb2[51] <- nota[51]
          nota_eb2[52] <- nota[52]
          nota_eb2[53] <- nota[53]
          nota_eb2[54] <- nota[54]
          nota_eb2[76] <- nota[76]
          nota_eb2[77] <- nota[77]
          nota_eb2[78] <- nota[78]
          nota_eb2[79] <- nota[79]
        senao
           se avaliado3[n] = falso entao
              nota_eb3[51] <- nota[51]
              nota_eb3[52] <- nota[52]
              nota_eb3[53] <- nota[53]
              nota_eb3[54] <- nota[54]
              nota_eb3[76] <- nota[76]
              nota_eb3[77] <- nota[77]
              nota_eb3[78] <- nota[78]
              nota_eb3[79] <- nota[79]
           senao
              se avaliado4[n] = falso entao
                 nota_eb4[51] <- nota[51]
                 nota_eb4[52] <- nota[52]
                 nota_eb4[53] <- nota[53]
                 nota_eb4[54] <- nota[54]
                 nota_eb4[76] <- nota[76]
                 nota_eb4[77] <- nota[77]
                 nota_eb4[78] <- nota[78]
                 nota_eb4[79] <- nota[79]
              fimse
           fimse
       fimse
   fimse
 senao
    se n = 102 entao
       para conta <- 1 ate 7 faca
            nota[conta] <- notav[conta]
            se avaliado1[n] = falso entao
               nota_ego1[conta] <- nota[conta]
             senao
                se avaliado2[n] = falso entao
                   nota_ego2[conta] <- nota[conta]
                 senao
                    se avaliado3[n] = falso entao
                       nota_ego3[conta] <- nota[conta]
                     senao
                        se avaliado4[n] = falso entao
                           nota_ego4[conta] <- nota[conta]
                        fimse
                    fimse
                fimse
            fimse
       fimpara
       cont <- 8
       para conta <- 26 ate 32 faca
            nota[conta] <- notav[cont]
            nota_ego[conta] <- nota[conta]
            se avaliado1[n] = falso entao
               nota_ego1[conta] <- nota[conta]
             senao
                se avaliado2[n] = falso entao
                   nota_ego2[conta] <- nota[conta]
                 senao
                    se avaliado3[n] = falso entao
                       nota_ego3[conta] <- nota[conta]
                     senao
                        se avaliado4[n] = falso entao
                           nota_ego4[conta] <- nota[conta]
                        fimse
                    fimse
                fimse
            fimse
            cont <- cont + 1
       fimpara
     senao
        se n = 103 entao
           para conta <- 1 ate 7 faca
                nota[conta] <- notav[conta]
                se avaliado1[n] = falso entao
                   nota_fg1[conta] <- nota[conta]
                 senao
                    se avaliado2[n] = falso entao
                       nota_fg2[conta] <- nota[conta]
                     senao
                        se avaliado3[n] = falso entao
                           nota_fg3[conta] <- nota[conta]
                         senao
                            se avaliado4[n] = falso entao
                               nota_fg4[conta] <- nota[conta]
                            fimse
                        fimse
                    fimse
                fimse
           fimpara
           cont <- 8
           para conta <- 26 ate 32 faca
                nota[conta] <- notav[cont]
                se avaliado1[n] = falso entao
                   nota_fg1[conta] <- nota[conta]
                 senao
                    se avaliado2[n] = falso entao
                       nota_fg2[conta] <- nota[conta]
                     senao
                        se avaliado3[n] = falso entao
                           nota_fg3[conta] <- nota[conta]
                         senao
                            se avaliado4[n] = falso entao
                               nota_fg4[conta] <- nota[conta]
                            fimse
                        fimse
                    fimse
                fimse
                cont <- cont + 1
           fimpara
           nota[76] <- notav[15]
           nota[77] <- notav[16]
           nota[78] <- notav[17]
           nota[79] <- notav[18]
           se avaliado1[n] = falso entao
              nota_fg1[51] <- nota[51]
              nota_fg1[52] <- nota[52]
              nota_fg1[53] <- nota[53]
              nota_fg1[54] <- nota[54]
              nota_fg1[76] <- nota[76]
              nota_fg1[77] <- nota[77]
              nota_fg1[78] <- nota[78]
              nota_fg1[79] <- nota[79]
            senao
               se avaliado2[n] = falso entao
                  nota_fg2[51] <- nota[51]
                  nota_fg2[52] <- nota[52]
                  nota_fg2[53] <- nota[53]
                  nota_fg2[54] <- nota[54]
                  nota_fg2[76] <- nota[76]
                  nota_fg2[77] <- nota[77]
                  nota_fg2[78] <- nota[78]
                  nota_fg2[79] <- nota[79]
                senao
                   se avaliado3[n] = falso entao
                      nota_fg3[51] <- nota[51]
                      nota_fg3[52] <- nota[52]
                      nota_fg3[53] <- nota[53]
                      nota_fg3[54] <- nota[54]
                      nota_fg3[76] <- nota[76]
                      nota_fg3[77] <- nota[77]
                      nota_fg3[78] <- nota[78]
                      nota_fg3[79] <- nota[79]
                   senao
                      se avaliado4[n] = falso entao
                         nota_fg4[51] <- nota[51]
                         nota_fg4[52] <- nota[52]
                         nota_fg4[53] <- nota[53]
                         nota_fg4[54] <- nota[54]
                         nota_fg4[76] <- nota[76]
                         nota_fg4[77] <- nota[77]
                         nota_fg4[78] <- nota[78]
                         nota_fg4[79] <- nota[79]
                      fimse
                   fimse
               fimse
           fimse
         senao
            se n = 104 entao
               para conta <- 1 ate 7 faca
                    nota[conta] <- notav[conta]
                    se avaliado1[n] = falso entao
                       nota_itic1[conta] <- nota[conta]
                     senao
                        se avaliado2[n] = falso entao
                           nota_itic2[conta] <- nota[conta]
                         senao
                            se avaliado3[n] = falso entao
                               nota_itic3[conta] <- nota[conta]
                             senao
                                se avaliado4[n] = falso entao
                                   nota_itic4[conta] <- nota[conta]
                                fimse   ]
                            fimse
                        fimse
                    fimse
               fimpara
               cont <- 8
               para conta <- 26 ate 32 faca
                    nota[conta] <- notav[cont]
                    se avaliado1[n] = falso entao
                       nota_itic1[conta] <- nota[conta]
                     senao
                        se avaliado2[n] = falso entao
                           nota_itic2[conta] <- nota[conta]
                         senao
                            se avaliado3[n] = falso entao
                               nota_itic3[conta] <- nota[conta]
                             senao
                                se avaliado4[n] = falso entao
                                   nota_itic4[conta] <- nota[conta]
                                fimse
                            fimse
                        fimse
                    fimse
                    cont <- cont + 1
               fimpara
               nota[51] <- notav[15]
               nota[52] <- notav[16]
               nota[53] <- notav[17]
               nota[54] <- notav[18]
               nota[76] <- notav[19]
               nota[77] <- notav[20]
               nota[78] <- notav[21]
               nota[79] <- notav[22]
               se avaliado1[n] = falso entao
                  nota_itic1[51] <- nota[51]
                  nota_itic1[52] <- nota[52]
                  nota_itic1[53] <- nota[53]
                  nota_itic1[54] <- nota[54]
                  nota_itic1[76] <- nota[76]
                  nota_itic1[77] <- nota[77]
                  nota_itic1[78] <- nota[78]
                  nota_itic1[79] <- nota[79]
                senao
                   se avaliado2[n] = falso entao
                      nota_itic2[51] <- nota[51]
                      nota_itic2[52] <- nota[52]
                      nota_itic2[53] <- nota[53]
                      nota_itic2[54] <- nota[54]
                      nota_itic2[76] <- nota[76]
                      nota_itic2[77] <- nota[77]
                      nota_itic2[78] <- nota[78]
                      nota_itic2[79] <- nota[79]
                    senao
                       se avaliado3[n] = falso entao
                          nota_itic3[51] <- nota[51]
                          nota_itic3[52] <- nota[52]
                          nota_itic3[53] <- nota[53]
                          nota_itic3[54] <- nota[54]
                          nota_itic3[76] <- nota[76]
                          nota_itic3[77] <- nota[77]
                          nota_itic3[78] <- nota[78]
                          nota_itic3[79] <- nota[79]
                        senao
                           se avaliado4[n] = falso entao
                              nota_itic4[51] <- nota[51]
                              nota_itic4[52] <- nota[52]
                              nota_itic4[53] <- nota[53]
                              nota_itic4[54] <- nota[54]
                              nota_itic4[76] <- nota[76]
                              nota_itic4[77] <- nota[77]
                              nota_itic4[78] <- nota[78]
                              nota_itic4[79] <- nota[79]
                           fimse
                       fimse
                   fimse
               fimse
             senao
                se n = 105 entao
                   para conta <- 1 ate 7 faca
                        nota[conta] <- notav[conta]
                        se avaliado1[n] = falso entao
                           nota_mehv1[conta] <- nota[conta]
                         senao
                            se avaliado2[n] = falso entao
                               nota_mehv2[conta] <- nota[conta]
                             senao
                                se avaliado3[n] = falso entao
                                   nota_mehv3[conta] <- nota[conta]
                                 senao
                                   se avaliado4[n] = falso entao
                                      nota_mehv4[conta] <- nota[conta]
                                   fimse
                                fimse
                            fimse
                        fimse
                   fimpara
                   cont <- 8
                   para conta <- 26 ate 32 faca
                        nota[conta] <- notav[cont]
                        se avaliado1[n] = falso entao
                           nota_mehv1[conta] <- nota[conta]
                         senao
                            se avaliado2[n] = falso entao
                               nota_mehv2[conta] <- nota[conta]
                             senao
                                se avaliado3[n] = falso entao
                                   nota_mehv3[conta] <- nota[conta]
                                 senao
                                    se avaliado4[n] = falso entao
                                       nota_mehv4[conta] <- nota[conta]
                                    fimse
                                fimse
                            fimse
                        fimse
                        cont <- cont + 1
                   fimpara
                   nota[51] <- notav[15]
                   nota[52] <- notav[16]
                   nota[53] <- notav[17]
                   nota[54] <- notav[18]
                   nota[76] <- notav[19]
                   nota[77] <- notav[20]
                   nota[78] <- notav[21]
                   nota[79] <- notav[22]
                   se avaliado1[n] = falso entao
                      nota_mehv1[51] <- nota[51]
                      nota_mehv1[52] <- nota[52]
                      nota_mehv1[53] <- nota[53]
                      nota_mehv1[54] <- nota[54]
                      nota_mehv1[76] <- nota[76]
                      nota_mehv1[77] <- nota[77]
                      nota_mehv1[78] <- nota[78]
                      nota_mehv1[79] <- nota[79]
                    senao
                       se avaliado2[n] = falso entao
                          nota_mehv2[51] <- nota[51]
                          nota_mehv2[52] <- nota[52]
                          nota_mehv2[53] <- nota[53]
                          nota_mehv2[54] <- nota[54]
                          nota_mehv2[76] <- nota[76]
                          nota_mehv2[77] <- nota[77]
                          nota_mehv2[78] <- nota[78]
                          nota_mehv2[79] <- nota[79]
                        senao
                           se avaliado3[n] = falso entao
                              nota_mehv3[51] <- nota[51]
                              nota_mehv3[52] <- nota[52]
                              nota_mehv3[53] <- nota[53]
                              nota_mehv3[54] <- nota[54]
                              nota_mehv3[76] <- nota[76]
                              nota_mehv3[77] <- nota[77]
                              nota_mehv3[78] <- nota[78]
                              nota_mehv3[79] <- nota[79]
                            senao
                               se avaliado3[n] = falso entao
                                  nota_mehv4[51] <- nota[51]
                                  nota_mehv4[52] <- nota[52]
                                  nota_mehv4[53] <- nota[53]
                                  nota_mehv4[54] <- nota[54]
                                  nota_mehv4[76] <- nota[76]
                                  nota_mehv4[77] <- nota[77]
                                  nota_mehv4[78] <- nota[78]
                                  nota_mehv4[79] <- nota[79]
                               fimse
                           fimse
                       fimse
                   fimse
                 senao
                    se n = 106 entao
                       para conta <- 1 ate 7 faca
                            nota[conta] <- notav[conta]
                            se avaliado1[n] = falso entao
                               nota_mb1[conta] <- nota[conta]
                             senao
                                se avaliado2[n] = falso entao
                                   nota_mb2[conta] <- nota[conta]
                                 senao
                                    se avaliado3[n] = falso entao
                                       nota_mb3[conta] <- nota[conta]
                                     senao
                                        se avaliado4[n] = falso entao
                                           nota_mb4[conta] <- nota[conta]
                                        fimse
                                    fimse
                                fimse
                            fimse
                       fimpara
                       cont <- 8
                       para conta <- 26 ate 32 faca
                            nota[conta] <- notav[cont]
                            se avaliado1[n] = falso entao
                               nota_mb1[conta] <- nota[conta]
                             senao
                                se avaliado2[n] = falso entao
                                   nota_mb2[conta] <- nota[conta]
                                 senao
                                    se avaliado3[n] = falso entao
                                       nota_mb3[conta] <- nota[conta]
                                     senao
                                        se avaliado4[n] = falso entao
                                           nota_mb4[conta] <- nota[conta]
                                        fimse
                                    fimse
                                fimse
                            fimse
                            cont <- cont + 1
                       fimpara
                       nota[51] <- notav[15]
                       nota[52] <- notav[16]
                       nota[53] <- notav[17]
                       nota[54] <- notav[18]
                       nota[76] <- notav[19]
                       nota[77] <- notav[20]
                       nota[78] <- notav[21]
                       nota[79] <- notav[22]
                       se avaliado1[n] = falso entao
                          nota_mb1[51] <- nota[51]
                          nota_mb1[52] <- nota[52]
                          nota_mb1[53] <- nota[53]
                          nota_mb1[54] <- nota[54]
                          nota_mb1[76] <- nota[76]
                          nota_mb1[77] <- nota[77]
                          nota_mb1[78] <- nota[78]
                          nota_mb1[79] <- nota[79]
                        senao
                           se avaliado2[n] = falso entao
                              nota_mb2[51] <- nota[51]
                              nota_mb2[52] <- nota[52]
                              nota_mb2[53] <- nota[53]
                              nota_mb2[54] <- nota[54]
                              nota_mb2[76] <- nota[76]
                              nota_mb2[77] <- nota[77]
                              nota_mb2[78] <- nota[78]
                              nota_mb2[79] <- nota[79]
                            senao
                               se avaliado3[n] = falso entao
                                  nota_mb3[51] <- nota[51]
                                  nota_mb3[52] <- nota[52]
                                  nota_mb3[53] <- nota[53]
                                  nota_mb3[54] <- nota[54]
                                  nota_mb3[76] <- nota[76]
                                  nota_mb3[77] <- nota[77]
                                  nota_mb3[78] <- nota[78]
                                  nota_mb3[79] <- nota[79]
                                senao
                                   se avaliado4[n] = falso entao
                                      nota_mb4[51] <- nota[51]
                                      nota_mb4[52] <- nota[52]
                                      nota_mb4[53] <- nota[53]
                                      nota_mb4[54] <- nota[54]
                                      nota_mb4[76] <- nota[76]
                                      nota_mb4[77] <- nota[77]
                                      nota_mb4[78] <- nota[78]
                                      nota_mb4[79] <- nota[79]
                                   fimse
                               fimse
                           fimse
                       fimse
                     senao
                        se n = 107 entao
                           nota[1] <- notav[51]
                           nota[2] <- notav[52]
                           nota[3] <- notav[53]
                           nota[4] <- notav[54]
                           nota[5] <- notav[76]
                           nota[6] <- notav[77]
                           nota[7] <- notav[78]
                           nota[8] <- notav[79]
                           se avaliado1[n] = falso entao
                              nota_alga1[1] <- nota[1]
                              nota_alga1[2] <- nota[2]
                              nota_alga1[3] <- nota[3]
                              nota_alga1[4] <- nota[4]
                              nota_alga1[5] <- nota[5]
                              nota_alga1[6] <- nota[6]
                              nota_alga1[7] <- nota[7]
                              nota_alga1[8] <- nota[8]
                            senao
                               se avaliado2[n] = falso entao
                                  nota_alga2[1] <- nota[1]
                                  nota_alga2[2] <- nota[2]
                                  nota_alga2[3] <- nota[3]
                                  nota_alga2[4] <- nota[4]
                                  nota_alga2[5] <- nota[5]
                                  nota_alga2[7] <- nota[6]
                                  nota_alga2[7] <- nota[7]
                                  nota_alga2[8] <- nota[8]
                                senao
                                   se avaliado3[n] = falso entao
                                      nota_alga3[1] <- nota[1]
                                      nota_alga3[2] <- nota[2]
                                      nota_alga3[3] <- nota[3]
                                      nota_alga3[4] <- nota[4]
                                      nota_alga3[5] <- nota[5]
                                      nota_alga3[6] <- nota[6]
                                      nota_alga3[7] <- nota[7]
                                      nota_alga3[8] <- nota[8]
                                    senao
                                       se avaliado4[n] = falso entao
                                          nota_alga4[1] <- nota[1]
                                          nota_alga4[2] <- nota[2]
                                          nota_alga4[3] <- nota[3]
                                          nota_alga4[4] <- nota[4]
                                          nota_alga4[5] <- nota[5]
                                          nota_alga4[6] <- nota[6]
                                          nota_alga4[7] <- nota[7]
                                          nota_alga4[8] <- nota[8]
                                       fimse
                                   fimse
                               fimse
                           fimse
                         senao
                            se n = 108 entao
                               nota[51] <- notav[1]
                               nota[52] <- notav[2]
                               nota[53] <- notav[3]
                               nota[54] <- notav[4]
                               nota[76] <- notav[5]
                               nota[77] <- notav[6]
                               nota[78] <- notav[7]
                               nota[79] <- notav[8]
                               se avaliado1[n] = falso entao
                                  nota_ami1[51] <- nota[51]
                                  nota_ami1[52] <- nota[52]
                                  nota_ami1[53] <- nota[53]
                                  nota_ami1[54] <- nota[54]
                                  nota_ami1[76] <- nota[76]
                                  nota_ami1[77] <- nota[77]
                                  nota_ami1[78] <- nota[78]
                                  nota_ami1[79] <- nota[79]
                                senao
                                   se avaliado2[n] = falso entao
                                      nota_ami2[51] <- nota[51]
                                      nota_ami2[52] <- nota[52]
                                      nota_ami2[53] <- nota[53]
                                      nota_ami2[54] <- nota[54]
                                      nota_ami2[76] <- nota[76]
                                      nota_ami2[77] <- nota[77]
                                      nota_ami2[78] <- nota[78]
                                      nota_ami2[79] <- nota[79]
                                    senao
                                       se avaliado3[n] = falso entao
                                          nota_ami3[51] <- nota[51]
                                          nota_ami3[52] <- nota[52]
                                          nota_ami3[53] <- nota[53]
                                          nota_ami3[54] <- nota[54]
                                          nota_ami3[76] <- nota[76]
                                          nota_ami3[77] <- nota[77]
                                          nota_ami3[78] <- nota[78]
                                          nota_ami3[79] <- nota[79]
                                        senao
                                           se avaliado4[n] = falso entao
                                              nota_ami4[51] <- nota[51]
                                              nota_ami4[52] <- nota[52]
                                              nota_ami4[53] <- nota[53]
                                              nota_ami4[54] <- nota[54]
                                              nota_ami4[76] <- nota[76]
                                              nota_ami4[77] <- nota[77]
                                              nota_ami4[78] <- nota[78]
                                              nota_ami4[79] <- nota[79]
                                           fimse
                                       fimse
                                   fimse
                               fimse
                             senao
                                se n = 109 entao
                                   nota[51] <- notav[1]
                                   nota[52] <- notav[2]
                                   nota[53] <- notav[3]
                                   nota[54] <- notav[4]
                                   se avaliado1[n] = falso entao
                                      nota_ltc1[51] <- nota[51]
                                      nota_ltc1[52] <- nota[52]
                                      nota_ltc1[53] <- nota[53]
                                      nota_ltc1[54] <- nota[54]
                                    senao
                                       se avaliado2[n] = falso entao
                                          nota_ltc2[51] <- nota[51]
                                          nota_ltc2[52] <- nota[52]
                                          nota_ltc2[53] <- nota[53]
                                          nota_ltc2[54] <- nota[54]
                                        senao
                                           se avaliado3[n] = falso entao
                                              nota_ltc3[51] <- nota[51]
                                              nota_ltc3[52] <- nota[52]
                                              nota_ltc3[53] <- nota[53]
                                              nota_ltc3[54] <- nota[54]
                                            senao
                                               se avaliado4[n] = falso entao
                                                  nota_ltc4[51] <- nota[51]
                                                  nota_ltc4[52] <- nota[52]
                                                  nota_ltc4[53] <- nota[53]
                                                  nota_ltc4[54] <- nota[54]
                                               fimse
                                           fimse
                                       fimse
                                   fimse
                                 senao
                                    se n = 110 entao
                                       nota[76] <- notav[1]
                                       nota[77] <- notav[2]
                                       nota[78] <- notav[3]
                                       nota[79] <- notav[4]
                                       se avaliado1[n] = falso entao
                                          nota_ed1[76] <- nota[76]
                                          nota_ed1[77] <- nota[77]
                                          nota_ed1[78] <- nota[78]
                                          nota_ed1[79] <- nota[79]
                                        senao
                                           se avaliado2[n] = falso entao
                                              nota_ed2[76] <- nota[76]
                                              nota_ed2[77] <- nota[77]
                                              nota_ed2[78] <- nota[78]
                                              nota_ed2[79] <- nota[79]
                                            senao
                                               se avaliado3[n] = falso entao
                                                  nota_ed3[76] <- nota[76]
                                                  nota_ed3[77] <- nota[77]
                                                  nota_ed3[78] <- nota[78]
                                                  nota_ed3[79] <- nota[79]
                                                senao
                                                   se avaliado4[n] = falso entao
                                                      nota_ed4[76] <- nota[76]
                                                      nota_ed4[77] <- nota[77]
                                                      nota_ed4[78] <- nota[78]
                                                      nota_ed4[79] <- nota[79]
                                                   fimse
                                               fimse
                                           fimse
                                       fimse
                                     senao
                                        se n = 111 entao
                                           nota[51] <- notav[1]
                                           nota[52] <- notav[2]
                                           nota[53] <- notav[3]
                                           nota[54] <- notav[4]
                                           se avaliado1[n] = falso entao
                                              nota_ii1[51] <- nota[51]
                                              nota_ii1[52] <- nota[52]
                                              nota_ii1[53] <- nota[53]
                                              nota_ii1[54] <- nota[54]
                                            senao
                                               se avaliado2[n] = falso entao
                                                  nota_ii2[51] <- nota[51]
                                                  nota_ii2[52] <- nota[52]
                                                  nota_ii2[53] <- nota[53]
                                                  nota_ii2[54] <- nota[54]
                                                senao
                                                   se avaliado3[n] = falso entao
                                                      nota_ii3[51] <- nota[51]
                                                      nota_ii3[52] <- nota[52]
                                                      nota_ii3[53] <- nota[53]
                                                      nota_ii3[54] <- nota[54]
                                                    senao
                                                       se avaliado4[n] = falso entao
                                                          nota_ii4[51] <- nota[51]
                                                          nota_ii4[52] <- nota[52]
                                                          nota_ii4[53] <- nota[53]
                                                          nota_ii4[54] <- nota[54]
                                                       fimse
                                                   fimse
                                               fimse
                                           fimse
                                         senao
                                            se n = 112 entao
                                               nota[76] <- notav[1]
                                               nota[77] <- notav[2]
                                               nota[78] <- notav[3]
                                               nota[79] <- notav[4]
                                               se avaliado1[n] = falso entao
                                                  nota_pe1[76] <- nota[76]
                                                  nota_pe1[77] <- nota[77]
                                                  nota_pe1[78] <- nota[78]
                                                  nota_pe1[79] <- nota[79]
                                                senao
                                                   se avaliado2[n] = falso entao
                                                      nota_pe2[76] <- nota[76]
                                                      nota_pe2[77] <- nota[77]
                                                      nota_pe2[78] <- nota[78]
                                                      nota_pe2[79] <- nota[79]
                                                    senao
                                                       se avaliado3[n] = falso entao
                                                          nota_pe3[76] <- nota[76]
                                                          nota_pe3[77] <- nota[77]
                                                          nota_pe3[78] <- nota[78]
                                                          nota_pe3[79] <- nota[79]
                                                        senao
                                                           se avaliado4[n] = falso entao
                                                              nota_pe4[76] <- nota[76]
                                                              nota_pe4[77] <- nota[77]
                                                              nota_pe4[78] <- nota[78]
                                                              nota_pe4[79] <- nota[79]
                                                           fimse
                                                       fimse
                                                   fimse
                                               fimse
                                            fimse
                                        fimse
                                    fimse
                                fimse
                            fimse
                        fimse
                    fimse
                fimse
            fimse
        fimse
    fimse
fimse
se avaliado1[n] = falso entao
   avaliado1[n] <- verdadeiro
   para conta <- 1 ate 100 faca
        se nota[conta] <> "?" entao
           nota1[conta] <- nota[conta]
        fimse
   fimpara
 senao
    //FK5Ee0vHrd
    //D3012003
    //27m7ke7phetq
    se avaliado2[n] = falso entao
       avaliado2[n] <- verdadeiro
       contador <- 1
       para conta <- 1 ate 100 faca
            se (nota[conta] <> "?")e(nota[conta] <> "") entao
               nota2[conta] <- nota[conta]
               media1[conta] <- ""
               medtemp <- caracpnum(nota1[conta]) + caracpnum(nota2[conta])
               medtemp <- medtemp/2
               para cont <- 1 ate compr(numpcarac(medtemp)) faca
                    se copia(numpcarac(medtemp);cont,1) = "." entao
                       se caracpnum(copia(numpcarac(medtemp);cont+2,1)) >= 5 entao
                          medtemp <- medtemp + 0.1
                       fimse
                       media1[conta] <- copia(numpcarac(medtemp);1,cont-1) + "," + copia(numpcarac(medtemp);cont+1,1)
                       interrompa
                     senao
                        media1[conta] <- numpcarac(medtemp) + ",0"
                    fimse
               fimpara
               se medtemp >= 14 entao
                  notaav3[contador] <- "Disp."
                  notaav4[contador] <- "Disp."
                  mediaav[contador] <- media1[conta]
                senao
                   se medtemp < 10 entao
                      notaav3[contador] <- "Excl."
                      notaav4[contador] <- "Excl."
                      mediaav[contador] <- "Excluído"
                   fimse
               fimse
               mediaav1[contador] <- media1[conta]
               contador <- contador + 1
            fimse
       fimpara
     senao
        contador <- 1
        avaliado3[n] <- verdadeiro
        media[conta] <- ""
        para conta <- 1 ate 100 faca
             se nota[conta] <> "?" entao
                nota3[conta] <- nota[conta]
                se (notaav3[contador] <> "Excl.")e(notaav3[contador] <> "Disp.")e(mediaav[contador] = "?")e(contador <= numav) entao
                   media[conta] <- ""
                   nota4[conta] <- nota[conta]
                   se notaav4[contador] = "nulo" entao
                      medtemp <- caracpnum(nota1[conta]) + caracpnum(nota2[conta]) + caracpnum(nota3[conta])
                      avaliado4[n] <- verdadeiro
                    senao
                       se notaav4[contador] <> "?" entao
                          se caracpnum(notaav4[contador]) >= caracpnum(notaav3[contador]) entao
                             medtemp <- caracpnum(nota1[conta]) + caracpnum(nota2[conta]) + caracpnum(nota4[conta])
                           senao
                              medtemp <- caracpnum(nota1[conta]) + caracpnum(nota2[conta]) + caracpnum(nota3[conta])
                          fimse
                          avaliado4[n] <- verdadeiro
                       fimse
                   fimse
                   se avaliado4[n] = verdadeiro entao
                      medtemp <- medtemp/3
                      para cont <- 1 ate compr(numpcarac(medtemp)) faca
                           se copia(numpcarac(medtemp);cont,1) = "." entao
                              se caracpnum(copia(numpcarac(medtemp);cont+2,1)) >= 5 entao
                                 medtemp <- medtemp + 0.1
                              fimse
                              media[conta] <- copia(numpcarac(medtemp);1,cont-1) + "," + copia(numpcarac(medtemp);cont+1,1)
                              interrompa
                           fimse
                      fimpara
                      se compr(numpcarac(medtemp)) > 2 entao
                         mediaav[contador] <- media[conta]
                       senao
                          mediaav[contador] <- numpcarac(medtemp) + ",0"
                      fimse
                   fimse
                fimse
                contador <- contador + 1
             fimse
        fimpara
    fimse
fimse

Avaliacoes ()
   
FimProcedimento

Procedimento Docentes ()

var

invalidodoc : logico

inicio

limpatela
se contadoc = falso entao
se curso[n] = "Licenciatura em Informática" entao
   escreval ("       _________________________________________________________________________________________________________")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                               SIGA - UEM                                                |")
   escreval ("      |_________________________________________________________________________________________________________|")
   escreval ("      |                    |   ______________________________________                                           |")
   escreval ("      |                    |  |                                      |                                          |")
   escreval ("      |                    |  | Docente Dércio Canguissa - EB        |                                          |")
   escreval ("      |                    |  |______________________________________|                                          |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |   ______________________________________                                           |")
   escreval ("      |                    |  |                                      |                                          |")
   escreval ("      |                    |  | Docente Januário Simango - EGO       |                                          |")
   escreval ("      |                    |  |______________________________________|                                          |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |   ______________________________________                                           |")
   escreval ("      |                    |  |                                      |                                          |")
   escreval ("      |                    |  | Docente Ida Alvarinho - FG           |                                          |                   ________________________")
   escreval ("      |                    |  |______________________________________|                                          |                  |                        |")
   escreval ("      |                    |                                                                                    |                  |          Guia          |")
   escreval ("      |                    |   ______________________________________                                           |                  |------------------------|")
   escreval ("      |                    |  |                                      |                                          |                  | D. Canguissa = '1'     |")
   escreval ("      |____________________|  | Docente Sérgio Bantu - ITIC          |                                          |                  |------------------------|")
   escreval ("      |                    |  |______________________________________|                                          |                  | J. Simango = '2'       |")
   escreval ("      |      Docentes      |                                                                                    |                  |------------------------|")
   escreval ("      |____________________|   ______________________________________      Cadeiras do próximo semestre         |                  | I. Alvarinho = '3'     |")
   escreval ("      |                    |  |                                      |    .-------------------------------------|                  |------------------------|")
   escreval ("      |                    |  | Docente Zaqueu Mantoinha - MEHV      |    | Álgebra Linear e Geometria Analítica|                  | S. Bantu = '4'         |")
   escreval ("      |                    |  |______________________________________|    |-------------------------------------|                  |------------------------|")
   escreval ("      |                    |                                              | Análise Matemática II               |                  | Z. Mantoinha = '5'     |")
   escreval ("      |                    |   ______________________________________     |-------------------------------------|                  |------------------------|")
   escreval ("      |                    |  |                                      |    | Introdução à Informática            |                  | C. Ligungo = '6'       |")
   escreval ("      |                    |  | Docente Carlota Ligungo - MB         |    |-------------------------------------|                  |------------------------|")
   escreval ("      |                    |  |______________________________________|    | Lógica e Teoria de Conjuntos        |                  | Página Inicial = 'pi'  |")
   escreval ("      |____________________|______________________________________________|_____________________________________|                  |________________________|")
   escreval ()
   escreval ()
    escreval ("Qual perfil deseja visualizar? (Consulte o guia).")
    repita
      invalidodoc <- falso
      leia (resposta)
      se nao((resposta = "1")ou(resposta = "2")ou(resposta = "3")ou(resposta = "4")ou(resposta = "5")ou(resposta = "6")ou(resposta = "pi")) entao
         escreval ("Resposta inválida. (Consulte o guia).")
         invalidodoc <- verdadeiro
      fimse
    ate invalidodoc = falso
    escolha resposta
      caso "1"
        m <- 101
      caso "2"
        m <- 102
      caso "3"
        m <- 103
      caso "4"
        m <- 104
      caso "5"
        m <- 105
      caso "6"
        m <- 106
    fimescolha
   se resposta <> "pi" entao
      Docentes2 ()
   fimse
   CarregarMenuComGuia ()
 senao
se curso[n] = "Licenciatura em Matemática" entao
   escreval ("       _________________________________________________________________________________________________________")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                               SIGA - UEM                                                |")
   escreval ("      |_________________________________________________________________________________________________________|")
   escreval ("      |                    |   ______________________________________                                           |")
   escreval ("      |                    |  |                                      |                                          |")
   escreval ("      |                    |  | Docente Dércio Canguissa - EB        |                                          |")
   escreval ("      |                    |  |______________________________________|                                          |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |   ______________________________________                                           |")
   escreval ("      |                    |  |                                      |                                          |")
   escreval ("      |                    |  | Docente Januário Simango - EGO       |                                          |")
   escreval ("      |                    |  |______________________________________|                                          |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |   ______________________________________                                           |")
   escreval ("      |                    |  |                                      |                                          |")
   escreval ("      |                    |  | Docente Ida Alvarinho - FG           |                                          |                   ________________________")
   escreval ("      |                    |  |______________________________________|                                          |                  |                        |")
   escreval ("      |                    |                                                                                    |                  |          Guia          |")
   escreval ("      |                    |   ______________________________________                                           |                  |------------------------|")
   escreval ("      |                    |  |                                      |                                          |                  | D. Canguissa = '1'     |")
   escreval ("      |____________________|  | Docente Sérgio Bantu - ITIC          |                                          |                  |------------------------|")
   escreval ("      |                    |  |______________________________________|      Cadeiras do próximo mês             |                  | J. Simango = '2'       |")
   escreval ("      |      Docentes      |                                              .-------------------------------------|                  |------------------------|")
   escreval ("      |____________________|   ______________________________________     | Álgebra Linear                      |                  | I. Alvarinho = '3'     |")
   escreval ("      |                    |  |                                      |    |-------------------------------------|                  |------------------------|")
   escreval ("      |                    |  | Docente Zaqueu Mantoinha - MEHV      |    | Análise Matemática I                |                  | S. Bantu = '4'         |")
   escreval ("      |                    |  |______________________________________|    |-------------------------------------|                  |------------------------|")
   escreval ("      |                    |                                              | Geometria Plana e Espacial          |                  | Z. Mantoinha = '5'     |")
   escreval ("      |                    |   ______________________________________     |-------------------------------------|                  |------------------------|")
   escreval ("      |                    |  |                                      |    | Introdução à Informática            |                  | C. Ligungo = '6'       |")
   escreval ("      |                    |  | Docente Carlota Ligungo - MB         |    |-------------------------------------|                  |------------------------|")
   escreval ("      |                    |  |______________________________________|    | Lógica e Teoria de Conjuntos        |                  | Página Inicial = 'pi'  |")
   escreval ("      |____________________|______________________________________________|_____________________________________|                  |________________________|")
   escreval ()
   escreval ()
    escreval ("Qual perfil deseja visualizar? (Consulte o guia).")
    repita
      invalidodoc <- falso
      leia (resposta)
      se nao((resposta = "1")ou(resposta = "2")ou(resposta = "3")ou(resposta = "4")ou(resposta = "5")ou(resposta = "6")ou(resposta = "pi")) entao
         escreval ("Resposta inválida. (Consulte o guia).")
         invalidodoc <- verdadeiro
      fimse
    ate invalidodoc = falso
    escolha resposta
      caso "1"
        m <- 101
      caso "2"
        m <- 102
      caso "3"
        m <- 103
      caso "4"
        m <- 104
      caso "5"
        m <- 105
      caso "6"
        m <- 106
    fimescolha
   se resposta <> "pi" entao
      Docentes2 ()
   fimse
   CarregarMenuComGuia ()
 senao
se curso[n] = "Licenciatura em Estatística" entao
   escreval ("       _________________________________________________________________________________________________________")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                               SIGA - UEM                                                |")
   escreval ("      |_________________________________________________________________________________________________________|")
   escreval ("      |                    |   _____________________________________________________________________________    |")
   escreval ("      |                    |  |                                      |                                      |   |")
   escreval ("      |                    |  | Docente Dércio Canguissa - EB        | Docente Nádia Pelanco - ED           |   |")
   escreval ("      |                    |  |______________________________________|______________________________________|   |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |   _____________________________________________________________________________    |")
   escreval ("      |                    |  |                                      |                                      |   |                   ____________________________")
   escreval ("      |                    |  | Docente Masego Avantuna - ALGA       | Docente Fabrício Fambonela - II      |   |                  |                            |")
   escreval ("      |                    |  |______________________________________|______________________________________|   |                  |            Guia            |")
   escreval ("      |                    |                                                                                    |                  |----------------------------|")
   escreval ("      |                    |   _____________________________________________________________________________    |                  | D. Canguissa = '1'         |")
   escreval ("      |                    |  |                                      |                                      |   |                  |----------------------------|")
   escreval ("      |                    |  | Docente Marla Matsinhe - AM I        | Docente Spike Sawezuno - LTC         |   |                  | M. Avantuna = '2'          |")
   escreval ("      |                    |  |______________________________________|______________________________________|   |                  |----------------------------|")
   escreval ("      |                    |                                                                                    |                  | M. Matsinhe = '3'          |")
   escreval ("      |                    |   ______________________________________                                           |                  |----------------------------|")
   escreval ("      |                    |  |                                      |                                          |                  | S. Bantu = '4'             |")
   escreval ("      |____________________|  | Docente Sérgio Bantu - ITIC          |                                          |                  |----------------------------|")
   escreval ("      |                    |  |______________________________________|                                          |                  | Z. Mantoinha = '5'         |")
   escreval ("      |      Docentes      |                                                                                    |                  |----------------------------|")
   escreval ("      |____________________|   ______________________________________                                           |                  | C. Ligungo = '6'           |")
   escreval ("      |                    |  |                                      |                                          |                  |----------------------------|")
   escreval ("      |                    |  | Docente Zaqueu Mantoinha - MEHV      |                                          |                  | N. Pelanco = '7'           |")
   escreval ("      |                    |  |______________________________________|                                          |                  |----------------------------|")
   escreval ("      |                    |                                                                                    |                  | F. Fambonela = '8'         |")
   escreval ("      |                    |   ______________________________________                                           |                  |----------------------------|")
   escreval ("      |                    |  |                                      |              Cadeira do próximo semestre |                  | S. Sawezuno = '9'          |")
   escreval ("      |                    |  | Docente Carlota Ligungo - MB         |            .-----------------------------|                  |----------------------------|")
   escreval ("      |                    |  |______________________________________|            | Economia                    |                  | Página Inicial = 'pi'      |")
   escreval ("      |____________________|______________________________________________________|_____________________________|                  |____________________________|")
   escreval ()
   escreval ()
   escreval ("Qual perfil deseja visualizar? (Consulte o guia).")
    repita
      invalidodoc <- falso
      leia (resposta)
      se nao((resposta = "1")ou(resposta = "2")ou(resposta = "3")ou(resposta = "4")ou(resposta = "5")ou(resposta = "6")ou(resposta = "7")ou(resposta = "8")ou(resposta = "9")ou(resposta = "pi")) entao
         escreval ("Resposta inválida. (Consulte o guia).")
         invalidodoc <- verdadeiro
      fimse
    ate invalidodoc = falso
    escolha resposta
      caso "1"
        m <- 101
      caso "2"
        m <- 107
      caso "3"
        m <- 108
      caso "4"
        m <- 104
      caso "5"
        m <- 105
      caso "6"
        m <- 106
      caso "7"
        m <- 110
      caso "8"
        m <- 111
      caso "9"
        m <- 109
    fimescolha
   se resposta <> "pi" entao
      Docentes2 ()
   fimse
   CarregarMenuComGuia ()
 senao
se curso[n] = "Licenciatura em Ciências de Informação Geográfica" entao
   escreval ("       _________________________________________________________________________________________________________")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                               SIGA - UEM                                                |")
   escreval ("      |_________________________________________________________________________________________________________|")
   escreval ("      |                    |   ______________________________________ ______________________________________    |")
   escreval ("      |                    |  |                                      |                                      |   |")
   escreval ("      |                    |  | Docente Dércio Canguissa - EB        | Docente Masego Avantuna - ALGA       |   |")
   escreval ("      |                    |  |______________________________________|______________________________________|   |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |   ______________________________________ ______________________________________    |")
   escreval ("      |                    |  |                                      |                                      |   |")
   escreval ("      |                    |  | Docente Marla Matsinhe - AM I        | Docente Iracema Muguvuli - PE        |   |")
   escreval ("      |                    |  |______________________________________|______________________________________|   |                   ____________________________")
   escreval ("      |                    |                                                                                    |                  |                            |")
   escreval ("      |                    |   ______________________________________                                           |                  |            Guia            |")
   escreval ("      |                    |  |                                      |                                          |                  |----------------------------|")
   escreval ("      |                    |  | Docente Ida Alvarinho - FG           |                                          |                  | D. Canguissa = '1'         |")
   escreval ("      |                    |  |______________________________________|                                          |                  |----------------------------|")
   escreval ("      |                    |                                                                                    |                  | M. Matsinhe = '2'          |")
   escreval ("      |                    |   ______________________________________                                           |                  |----------------------------|")
   escreval ("      |                    |  |                                      |                                          |                  | I. Alvarinho = '3'         |")
   escreval ("      |____________________|  | Docente Sérgio Bantu - ITIC          |                                          |                  |----------------------------|")
   escreval ("      |                    |  |______________________________________|                                          |                  | S. Bantu = '4'             |")
   escreval ("      |      Docentes      |                                                                                    |                  |----------------------------|")
   escreval ("      |____________________|   ______________________________________                                           |                  | Z. Mantoinha = '5'         |")
   escreval ("      |                    |  |                                      |                                          |                  |----------------------------|")
   escreval ("      |                    |  | Docente Zaqueu Mantoinha - MEHV      |                                          |                  | C. Ligungo = '6'           |")
   escreval ("      |                    |  |______________________________________|                                          |                  |----------------------------|")
   escreval ("      |                    |                                            Cadeiras do próximo semestre            |                  | M. Avantuna = '7'          |")
   escreval ("      |                    |   ______________________________________  .----------------------------------------|                  |----------------------------|")
   escreval ("      |                    |  |                                      | | Lógica e Teoria de Conjuntos           |                  | I. Muguvuli = '8'          |")
   escreval ("      |                    |  | Docente Carlota Ligungo - MB         | |----------------------------------------|                  |----------------------------|")
   escreval ("      |                    |  |______________________________________| | Fundamentos de Geologia e Geoformologia|                  | Página Inicial = 'pi'      |")
   escreval ("      |____________________|___________________________________________|________________________________________|                  |____________________________|")
   escreval ()
   escreval ()
    escreval ("Qual perfil deseja visualizar? (Consulte o guia).")
    repita
      invalidodoc <- falso
      leia (resposta)
      se nao((resposta = "1")ou(resposta = "2")ou(resposta = "3")ou(resposta = "4")ou(resposta = "5")ou(resposta = "6")ou(resposta = "7")ou(resposta = "8")ou(resposta = "pi")) entao
         escreval ("Resposta inválida. (Consulte o guia).")
         invalidodoc <- verdadeiro
      fimse
    ate invalidodoc = falso
//    escolha resposta
//      caso "1"
//        d <- 1
//      caso "2"
//        d <- 8
//      caso "3"
//        d <- 3
//      caso "4"
//        d <- 4
//      caso "5"
//        d <- 5
//      caso "6"
//        d <- 6
//      caso "7"
//        d <- 7
//      caso "8"
//        d <- 12
//    fimescolha
   se resposta = "1" entao
      m <- 101
    senao
       se resposta = "2" entao
          m <- 108
        senao
           se resposta = "3" entao
              m <- 103
            senao
               se resposta = "4" entao
                  m <- 104
                senao
                   se resposta = "5" entao
                      m <- 105
                    senao
                       se resposta = "6" entao
                          m <- 106
                        senao
                           se resposta = "7" entao
                              m <- 107
                            senao
                               se resposta = "8" entao
                                  m <- 112
                               fimse
                           fimse
                       fimse
                   fimse
               fimse
           fimse
       fimse
    fimse
   se resposta <> "pi" entao
      Docentes2 ()
   fimse
   CarregarMenuComGuia ()
fimse
fimse
fimse
fimse
 senao
   escreval ("       _________________________________________________________________________________________________________")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                               SIGA - UEM                                                |")
   escreval ("      |_________________________________________________________________________________________________________|")
   escreval ("      |                    |   ______________________________________________________________________________   |                   ____________________________")
   escreval ("      |                    |  |                                      |                                       |  |                  |                            |")
   escreval ("      |                    |  | Docente Dércio Canguissa - EB        | Docente Masego Avantuna - ALGA        |  |                  |            Guia            |")
   escreval ("      |                    |  |______________________________________|_______________________________________|  |                  |----------------------------|")
   escreval ("      |                    |                                                                                    |                  | D. Canguissa = '1          |")
   escreval ("      |                    |   ______________________________________________________________________________   |                  |----------------------------|")
   escreval ("      |                    |  |                                      |                                       |  |                  | J. Simango = '2'           |")
   escreval ("      |                    |  | Docente Januário Simango - EGO       | Docente Marla Matsinhe - AM I         |  |                  |----------------------------|")
   escreval ("      |                    |  |______________________________________|_______________________________________|  |                  | I. Alvarinho = '3'         |")
   escreval ("      |                    |                                                                                    |                  |----------------------------|")
   escreval ("      |                    |   ______________________________________________________________________________   |                  | S. Bantu = '4'             |")
   escreval ("      |                    |  |                                      |                                       |  |                  |----------------------------|")
   escreval ("      |                    |  | Docente Ida Alvarinho - FG           | Docente Spike Sawezuno - LTC          |  |                  | Z. Mantoinha = '5'         |")
   escreval ("      |                    |  |______________________________________|_______________________________________|  |                  |----------------------------|")
   escreval ("      |                    |                                                                                    |                  | C. Ligungo = '6'           |")
   escreval ("      |                    |   ______________________________________________________________________________   |                  |----------------------------|")
   escreval ("      |                    |  |                                      |                                       |  |                  | M. Avantuna = '7'          |")
   escreval ("      |____________________|  | Docente Sérgio Bantu - ITIC          | Docente Nádia Pelanco - ED            |  |                  |----------------------------|")
   escreval ("      |                    |  |______________________________________|_______________________________________|  |                  | M. Matsinhe = '8'          |")
   escreval ("      |      Docentes      |                                                                                    |                  |----------------------------|")
   escreval ("      |____________________|   ______________________________________________________________________________   |                  | S. Sawezuno = '9'          |")
   escreval ("      |                    |  |                                      |                                       |  |                  |----------------------------|")
   escreval ("      |                    |  | Docente Zaqueu Mantoinha - MEHV      | Docente Fabrício Fambonela - II       |  |                  | N. Pelanco = '10'          |")
   escreval ("      |                    |  |______________________________________|_______________________________________|  |                  |----------------------------|")
   escreval ("      |                    |                                                                                    |                  | F. Fambonela = '11'        |")
   escreval ("      |                    |   ______________________________________________________________________________   |                  |----------------------------|")
   escreval ("      |                    |  |                                      |                                       |  |                  | I. Muguvuli = '12'         |")
   escreval ("      |                    |  | Docente Carlota Ligungo - MB         | Docente Iracema Muguvuli - PE         |  |                  |----------------------------|")
   escreval ("      |                    |  |______________________________________|_______________________________________|  |                  | Página Inicial = 'pi'      |")
   escreval ("      |____________________|____________________________________________________________________________________|                  |____________________________|")
   escreval ()
   escreval ()
   escreval ("Qual perfil deseja visualizar? (Consulte o guia).")
    repita
      invalidodoc <- falso
      leia (resposta)
      se nao((resposta = "1")ou(resposta = "2")ou(resposta = "3")ou(resposta = "4")ou(resposta = "5")ou(resposta = "6")ou(resposta = "7")ou(resposta = "8")ou(resposta = "9")ou(resposta = "10")ou(resposta = "11")ou(resposta = "12")ou(resposta = "pi")) entao
         escreval ("Resposta inválida. (Consulte o guia).")
         invalidodoc <- verdadeiro
      fimse
    ate invalidodoc = falso
   se resposta = "1" entao
      m <- 101
    senao
       se resposta = "2" entao
          m <- 108
        senao
           se resposta = "3" entao
              m <- 103
            senao
               se resposta = "4" entao
                  m <- 104
                senao
                   se resposta = "5" entao
                      m <- 105
                    senao
                       se resposta = "6" entao
                          m <- 106
                        senao
                           se resposta = "7" entao
                              m <- 107
                            senao
                               se resposta = "8" entao
                                  m <- 108
                                senao
                                   se resposta = "9" entao
                                      m <- 109
                                    senao
                                       se resposta = "10" entao
                                          m <- 110
                                        senao
                                           se resposta = "11" entao
                                              m <- 111
                                            senao
                                               se resposta = "12" entao
                                                  m <- 112
                                               fimse
                                           fimse
                                       fimse
                                   fimse
                               fimse
                           fimse
                       fimse
                   fimse
               fimse
           fimse
       fimse
    fimse
   chamadopordoc <- verdadeiro
   se resposta <> "pi" entao
      Docentes2 ()
   fimse
   CarregarMenuComGuia ()
fimse

FimProcedimento
//Xó mais uma vez. O e-mail que tentei te enviar deu error. Wali "sintaxe incorreta", não sei o que se passa. Mas como vai a vida aí? Já viste a aula que a docente postou?

Procedimento Docentes2 ()

var

tempd : inteiro

Inicio

se (contadoc = verdadeiro)e(chamadopordoc = falso) entao
   m <- n
fimse
se (mperfil = falso)ou(chamadopordoc = verdadeiro) entao
   para conta <- 1 ate 8 faca
        espacod[conta] <- ""
   fimpara
   tempd <- compr("                         ") - compr(nomes[m])
   para conta <- 1 ate tempd faca
        espacod[1] <- espacod[1] + " "
   fimpara
   tempd <- compr("                         ") - compr(sexo[m])
   para conta <- 1 ate tempd faca
        espacod[2] <- espacod[2] + " "
   fimpara
   tempd <- compr("           ") - compr(data_nascimento[m])
   para conta <- 1 ate tempd faca
        espacod[3] <- espacod[3] + " "
   fimpara
   tempd <- compr("                ") - compr(nacionalidade[m])
   para conta <- 1 ate tempd faca
        espacod[4] <- espacod[4] + " "
   fimpara
   se compr(cadeiradoc[m]) < compr("                            ") entao
      tempd <- compr("                            ") - compr(cadeiradoc[m])
      doctemp <- cadeiradoc[m]
      para conta <- 1 ate tempd faca
           espacod[5] <- espacod[5] + " "
      fimpara
      espacod[8] <- "                            "
    senao
       para conta <- compr(cadeiradoc[m]) ate 1 passo -1 faca
            se copia(cadeiradoc[m];conta, 1) = " " entao
               se compr(copia(cadeiradoc[m];1,conta-1)) < compr("                            ") entao
                  cad5 <- copia(cadeiradoc[m];conta+1,compr(cadeiradoc[m]))
                  doctemp <- copia(cadeiradoc[m];1,conta-1)
                  tempd <- compr("                            ") - compr(doctemp)
                  para conta <- 1 ate tempd faca
                       espacod[8] <- espacod[8] + " "
                  fimpara
                  tempd <- compr("                            ") - compr(cad5)
                  para conta <- 1 ate tempd faca
                       espacod5b <- espacod5b + " "
                  fimpara
                  interrompa
               fimse
            fimse
       fimpara
   fimse
    mperfil <- verdadeiro
fimse
tempd <- compr("                  ") -  compr(desdedoc[m])
para conta <- 1 ate tempd faca
     espacod[6] <- espacod[6] + " "
fimpara
tempd <- compr("                             ") - compr(email[m])
para conta <- 1 ate tempd faca
     espacod[7] <- espacod[7] + " "
fimpara

se (chamadoporperfil = verdadeiro)e(chamadopordoc = falso) entao
   chamadoporperfil <- falso
   limpatela
   escreval ("       _________________________________________________________________________________________________________")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                               SIGA - UEM                                                |")
   escreval ("      |_________________________________________________________________________________________________________|")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |____________________|                                                                                    |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |     Meu Perfil     |                                                                                    |")
   escreval ("      |____________________|    ________________________________                                                |")
   escreval ("      |                    |   |              .  .              |                                               |")
   escreval ("      |                    |   |            .      .            |                                               |")
   escreval ("      |                    |   |            .      .            |                                               |")
   escreval ("      |                    |   |             .    .             |                                               |")
   escreval ("      |                    |   |             .    .             |                                               |")
   escreval ("      |                    |   |           .        .           |                                               |")
   escreval ("      |                    |   |         .            .         |                                               |")
   escreval ("      |                    |   | Dados Pessoais        .        |     Dados Académicos                          |")
   escreval ("      |                    |   |--------------------------------|    .--------------------------------------.   |")
   escreval ("      |                    |   |                                |    |                                      |   |")
   escreval ("      |                    |   | Nome: ", nomes[n], espacod[1], "|    | Cadeira: ", doctemp, espacod[5], "|   |")
   escreval ("      |                    |   |                                |    |          ", cad5, espacod[8], "|   |")
   escreval ("      |                    |   | Sexo: ", sexo[n], espacod[2], "|    | A dar aulas desde: ", desdedoc[n], espacod[6], "|   |")
   escreval ("      |                    |   |                                |    |                                      |   |   ")
   escreval ("      |                    |   | Data de Nascimento: ", data_nascimento[n], espacod[3], "|    | E-mail: ", email[n], espacod[7], "|   |                  ________________________")
   escreval ("      |                    |   |                                |    |                                      |   |                  |                        |")
   escreval ("      |                    |   | Nacionalidade: ", nacionalidade[n], espacod[4], "|    |                                      |   |                  |          Guia          |")
   escreval ("      |                    |   |                                |    |                                      |   |                  |------------------------|")
   escreval ("      |                    |   |________________________________|    |______________________________________|   |                  | Customizar = 'c'       |")
   escreval ("      |                    |                                                                                    |                  |------------------------|")
   escreval ("      |                    |                                                                                    |                  | Mudar senha = 'm'      |")
   escreval ("      |                    |                                                                                    |                  |------------------------|")
   escreval ("      |                    |                                                                                    |                  | Voltar = 'v'           |")
   escreval ("      |____________________|____________________________________________________________________________________|                  |________________________|")
   escreval ()
   escreval ()
   escreval ("O que deseja fazer? (Consulte o guia)")
   repita
     leia (resposta)
     se (resposta <> "v")e(resposta <> "m")e(resposta <> "c") entao
        escreval ("Consulte o guia.")
     fimse
     se resposta = "m" entao
        MudarSenha ()
      senao
         se resposta = "c" entao
            Customizar ()
         fimse
     fimse
   ate resposta = "v"
   CarregarMenuComGuia ()
senao
   limpatela
   escreval ("       _________________________________________________________________________________________________________")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                               SIGA - UEM                                                |")
   escreval ("      |_________________________________________________________________________________________________________|")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |    ________________________________                                                |")
   escreval ("      |                    |   |              .  .              |                                               |")
   escreval ("      |                    |   |            .      .            |                                               |")
   escreval ("      |                    |   |            .      .            |                                               |")
   escreval ("      |                    |   |             .    .             |                                               |")
   escreval ("      |                    |   |             .    .             |                                               |")
   escreval ("      |                    |   |           .        .           |                                               |")
   escreval ("      |                    |   |         .            .         |                                               |")
   escreval ("      |                    |   | Dados Pessoais        .        |     Dados Académicos                          |")
   escreval ("      |                    |   |--------------------------------|    .--------------------------------------.   |")
   escreval ("      |                    |   |                                |    |                                      |   |")
   escreval ("      |                    |   | Nome: ", nomes[m], espacod[1], "|    | Cadeira: ", doctemp, espacod[5], "|   |")
   escreval ("      |____________________|   |                                |    |          ", cad5, espacod[8], "|   |")
   escreval ("      |                    |   | Sexo: ", sexo[m], espacod[2], "|    | A dar aulas desde: ", desdedoc[m], espacod[6], "|   |")
   escreval ("      |      Docentes      |   |                                |    |                                      |   |")
   escreval ("      |____________________|   | Data de Nascimento: ", data_nascimento[m], espacod[3], "|    | E-mail: ", email[m], espacod[7], "|   |")
   escreval ("      |                    |   |                                |    |                                      |   |")
   escreval ("      |                    |   | Nacionalidade: ", nacionalidade[m], espacod[4], "|    |                                      |   |                   ________________________")
   escreval ("      |                    |   |                                |    |                                      |   |                  |                        |")
   escreval ("      |                    |   |________________________________|    |______________________________________|   |                  |          Guia          |")
   escreval ("      |                    |                                                                                    |                  |------------------------|")
   escreval ("      |                    |                                                                                    |                  | Enviar e-mail = 'e'    |")
   escreval ("      |                    |                                                                                    |                  |------------------------|")
   escreval ("      |                    |                                                                                    |                  | Voltar = 'v'           |")
   escreval ("      |____________________|____________________________________________________________________________________|                  |________________________|")
   escreval ()
   escreval ()
   escreval ("O que deseja fazer? (Consulte o guia).")
   repita
      leia (resposta)
        se resposta = "v" entao
           Docentes ()
         senao
            se resposta = "e" entao
               chamadopordoc <- verdadeiro
               Email2 ()
             senao
                escreval ("Consulte o guia.")
            fimse
        fimse
   ate (resposta = "v")ou(resposta = "e")
   Docentes ()
fimse

Fimprocedimento


Procedimento Notificacoes ()

var

tempn : inteiro
minitexto, espacosn : caractere
naoenviado : logico

Inicio

texto <- textoorg
se notif = verdadeiro entao
tempn <- 80 - compr(email[n])

se compr(texto) > tempn entao
   minitexto <- copia(texto; 1, tempn-6) + "..."
 senao
    minitexto <- texto + " "
fimse
tempn <- tempn - (compr(minitexto) + 2)
espacosn <- ""
 se (notificacoes_a[m] = "")ou(copia(notificacoes_a[m];1,83) = "                                                                                   ") entao
   para conta <- 1 ate tempn faca
        espacosn <- espacosn +  " "
   fimpara
   notificacoes_a[m] <- "1. " + minitexto + "| " + email[n] + espacosn
   textoorg_a[m] <- textoorg
   em_a[m] <- n
 senao
    se (notificacoes_b[m] = "")ou(copia(notificacoes_b[m];1,83) = "                                                                                   ") entao
       para conta <- 1 ate tempn faca
            espacosn <- espacosn +  " "
       fimpara
       notificacoes_b[m] <- "2. " + minitexto + "| " + email[n] + espacosn
       textoorg_b[m] <- textoorg
       em_b[m] <- n
     senao
        se (notificacoes_c[m] = "")ou(copia(notificacoes_c[m];1,83) = "                                                                                   ") entao
           para conta <- 1 ate tempn faca
                espacosn <- espacosn +  " "
           fimpara
           notificacoes_c[m] <- "3. " + minitexto + "| " + email[n] + espacosn
           textoorg_c[m] <- textoorg
           em_c[m] <- n
         senao
           se (notificacoes_d[m] = "")ou(copia(notificacoes_d[m];1,83) = "                                                                                   ") entao
              para conta <- 1 ate tempn faca
                   espacosn <- espacosn +  " "
              fimpara
              notificacoes_d[m] <- "4. " + minitexto + "| " + email[n] + espacosn
              textoorg_d[m] <- textoorg
              em_d[m] <- n
            senao
               se (notificacoes_e[m] = "")ou(copia(notificacoes_e[m];1,83) = "                                                                                   ") entao
                  para conta <- 1 ate tempn faca
                       espacosn <- espacosn +  " "
                  fimpara
                  notificacoes_e[m] <- "5. " + minitexto + "| " + email[n] + espacosn
                  textoorg_e[m] <- textoorg
                  em_e[m] <- n
                senao
                   se (notificacoes_f[m] = "")ou(copia(notificacoes_f[m];1,83) = "                                                                                   ") entao
                      para conta <- 1 ate tempn faca
                           espacosn <- espacosn +  " "
                      fimpara
                      notificacoes_f[m] <- "6. " + minitexto + "| " + email[n] + espacosn
                      textoorg_f[m] <- textoorg
                      em_f[m] <- n
                    senao
                       se (notificacoes_g[m] = "")ou(copia(notificacoes_g[m];1,83) = "                                                                                   ") entao
                          para conta <- 1 ate tempn faca
                               espacosn <- espacosn +  " "
                          fimpara
                          notificacoes_g[m] <- "7. " + minitexto + "| " + email[n] + espacosn
                          textoorg_g[m] <- textoorg
                          em_g[m] <- n
                        senao
                           se (notificacoes_h[m] = "")ou(copia(notificacoes_h[m];1,83) = "                                                                                   ") entao
                              para conta <- 1 ate tempn faca
                                   espacosn <- espacosn +  " "
                              fimpara
                              notificacoes_h[m] <- "8. " + minitexto + "| " + email[n] + espacosn
                              textoorg_h[m] <- textoorg
                              em_h[m] <- n
                            senao
                               se (notificacoes_i[m] = "")ou(copia(notificacoes_i[m];1,83) = "                                                                                   ") entao
                                  para conta <- 1 ate tempn faca
                                       espacosn <- espacosn +  " "
                                  fimpara
                                  notificacoes_i[m] <- "9. " + minitexto + "| " + email[n] + espacosn
                                  textoorg_i[m] <- textoorg
                                  em_i[m] <- n
                                senao
                                   se (notificacoes_j[m] = "")ou(copia(notificacoes_j[m];1,83) = "                                                                                   ") entao
                                      para conta <- 1 ate tempn faca
                                           espacosn <- espacosn +  " "
                                      fimpara
                                      notificacoes_j[m] <- "10. " + minitexto + "| " + email[n] + espacosn
                                      textoorg_j[m] <- textoorg
                                      em_j[m] <- n
                                    senao
                                       se (notificacoes_k[m] = "")ou(copia(notificacoes_k[m];1,83) = "                                                                                   ") entao
                                          para conta <- 1 ate tempn faca
                                               espacosn <- espacosn +  " "
                                          fimpara
                                          notificacoes_k[m] <- "11. " + minitexto + "| " + email[n] + espacosn
                                          textoorg_k[m] <- textoorg
                                          em_k[m] <- n
                                        senao
                                           se (notificacoes_l[m] = "")ou(copia(notificacoes_l[m];1,83) = "                                                                                   ") entao
                                              para conta <- 1 ate tempn faca
                                                   espacosn <- espacosn +  " "
                                              fimpara
                                              notificacoes_l[m] <- "12. " + minitexto + "| " + email[n] + espacosn
                                              textoorg_l[m] <- textoorg
                                              em_l[m] <- n
                                            senao
                                               se (notificacoes_m[m] = "")ou(copia(notificacoes_m[m];1,83) = "                                                                                   ") entao
                                                  para conta <- 1 ate tempn faca
                                                       espacosn <- espacosn +  " "
                                                  fimpara
                                                  notificacoes_m[m] <- "13. " + minitexto + "| " + email[n] + espacosn
                                                  textoorg_m[m] <- textoorg
                                                  em_m[m] <- n
                                                senao
                                                   se (notificacoes_n[m] = "")ou(copia(notificacoes_n[m];1,83) = "                                                                                   ") entao
                                                      para conta <- 1 ate tempn faca
                                                           espacosn <- espacosn +  " "
                                                      fimpara
                                                      notificacoes_n[m] <- "14. " + minitexto + "| " + email[n] + espacosn
                                                      textoorg_a[m] <- textoorg
                                                      em_n[m] <- n
                                                    senao
                                                       se (notificacoes_o[m] = "")ou(copia(notificacoes_o[m];1,83) = "                                                                                   ") entao
                                                          para conta <- 1 ate tempn faca
                                                               espacosn <- espacosn +  " "
                                                          fimpara
                                                          notificacoes_o[m] <- "15. " + minitexto + "| " + email[n] + espacosn
                                                          textoorg_o[m] <- textoorg
                                                          em_o[m] <- n
                                                        senao
                                                           se (notificacoes_p[m] = "")ou(copia(notificacoes_p[m];1,83) = "                                                                                   ") entao
                                                              para conta <- 1 ate tempn faca
                                                                   espacosn <- espacosn +  " "
                                                              fimpara
                                                              notificacoes_p[m] <- "16. " + minitexto + "| " + email[n] + espacosn
                                                              textoorg_p[m] <- textoorg
                                                              em_p[m] <- n
                                                            senao
                                                               se (notificacoes_q[m] = "")ou(copia(notificacoes_q[m];1,83) = "                                                                                   ") entao
                                                                  para conta <- 1 ate tempn faca
                                                                       espacosn <- espacosn +  " "
                                                                  fimpara
                                                                  notificacoes_q[m] <- "17. " + minitexto + "| " + email[n] + espacosn
                                                                  textoorg_q[m] <- textoorg
                                                                  em_q[m] <- n
                                                                senao
                                                                   se (notificacoes_r[m] = "")ou(copia(notificacoes_r[m];1,83) = "                                                                                   ") entao
                                                                      para conta <- 1 ate tempn faca
                                                                           espacosn <- espacosn +  " "
                                                                      fimpara
                                                                      notificacoes_r[m] <- "18. " + minitexto + "| " + email[n] + espacosn
                                                                      textoorg_r[m] <- textoorg
                                                                      em_r[m] <- n
                                                                    senao
                                                                       se (notificacoes_s[m] = "")ou(copia(notificacoes_s[m];1,83) = "                                                                                   ") entao
                                                                          para conta <- 1 ate tempn faca
                                                                               espacosn <- espacosn +  " "
                                                                          fimpara
                                                                          notificacoes_s[m] <- "19. " + minitexto + "| " + email[n] + espacosn
                                                                          textoorg_s[m] <- textoorg
                                                                          em_s[m] <- n
                                                                        senao
                                                                           se (notificacoes_t[m] = "")ou(copia(notificacoes_t[m];1,83) = "                                                                                   ") entao
                                                                              para conta <- 1 ate tempn faca
                                                                                   espacosn <- espacosn +  " "
                                                                              fimpara
                                                                              notificacoes_t[m] <- "20. " + minitexto + "| " + email[n] + espacosn
                                                                              textoorg_t[m] <- textoorg
                                                                              em_t[m] <- n
                                                                            senao
                                                                               se (notificacoes_u[m] = "")ou(copia(notificacoes_u[m];1,83) = "                                                                                   ") entao
                                                                                  para conta <- 1 ate tempn faca
                                                                                       espacosn <- espacosn +  " "
                                                                                  fimpara
                                                                                  notificacoes_u[m] <- "21. " + minitexto + "| " + email[n] + espacosn
                                                                                  textoorg_u[m] <- textoorg
                                                                                  em_u[m] <- n
                                                                                senao
                                                                                   se (notificacoes_v[m] = "")ou(copia(notificacoes_v[m];1,83) = "                                                                                   ") entao
                                                                                      para conta <- 1 ate tempn faca
                                                                                           espacosn <- espacosn +  " "
                                                                                      fimpara
                                                                                      notificacoes_v[m] <- "22. " + minitexto + "| " + email[n] + espacosn
                                                                                      textoorg_v[m] <- textoorg
                                                                                      em_v[m] <- n
                                                                                    senao
                                                                                       se (notificacoes_w[m] = "")ou(copia(notificacoes_w[m];1,83) = "                                                                                   ") entao
                                                                                          para conta <- 1 ate tempn faca
                                                                                               espacosn <- espacosn +  " "
                                                                                          fimpara
                                                                                          notificacoes_w[m] <- "23. " + minitexto + "| " + email[n] + espacosn
                                                                                          textoorg_w[m] <- textoorg
                                                                                          em_w[m] <- n
                                                                                        senao
                                                                                           se (notificacoes_x[m] = "")ou(copia(notificacoes_x[m];1,83) = "                                                                                   ") entao
                                                                                              para conta <- 1 ate tempn faca
                                                                                                   espacosn <- espacosn +  " "
                                                                                              fimpara
                                                                                              notificacoes_x[m] <- "24. " + minitexto + "| " + email[n] + espacosn
                                                                                              textoorg_x[m] <- textoorg
                                                                                              em_x[m] <- n
                                                                                            senao
                                                                                               se (notificacoes_y[m] = "")ou(copia(notificacoes_y[m];1,83) = "                                                                                   ") entao
                                                                                                  para conta <- 1 ate tempn faca
                                                                                                       espacosn <- espacosn +  " "
                                                                                                  fimpara
                                                                                                  notificacoes_y[m] <- "25. " + minitexto + "| " + email[n] + espacosn
                                                                                                  textoorg_y[m] <- textoorg
                                                                                                  em_y[m] <- n
                                                                                                senao
                                                                                                   limpatela
                                                                                                   escreva ("Caixa cheia.")
                                                                                                   timer(700)
                                                                                                   limpatela
                                                                                                   escreva ("Espere até o recetor deletar e-mails antigos.")
                                                                                                   timer(2000)
                                                                                                   timer(0)
                                                                                                   naoenviado <- verdadeiro
                                                                                               fimse
                                                                                           fimse
                                                                                       fimse
                                                                                   fimse
                                                                               fimse
                                                                           fimse
                                                                       fimse
                                                                   fimse
                                                               fimse
                                                           fimse
                                                       fimse
                                                   fimse
                                               fimse
                                           fimse
                                       fimse
                                   fimse
                               fimse
                           fimse
                       fimse
                   fimse
               fimse
           fimse
       fimse
   fimse
 fimse
se naoenviado = falso entao
      noti[m] <- noti[m] + 1
      num_email[m] <- num_email[m] + 1
   limpatela
   para conta <- 1 ate 3 faca
        limpatela
        escreval ("Enviando o seu e-mail...")
        timer(1200)
        timer(0)
        limpatela
        escreval ("Enviando o seu e-mail..")
        timer(1200)
        timer(0)
   fimpara
   escreval ("E-mail enviado com sucesso.")
   timer 1000
   timer 0
fimse
notif <- falso
se chamadopordoc = falso entao
   Turmas ()
 senao
    chamadopordoc <- falso
    Docentes ()
fimse
fimse
se notificacoes_a[n] = "" entao
   notificacoes_a[n] <- "                                                                                   "
fimse
se notificacoes_b[n] = "" entao
   notificacoes_b[n] <- "                                                                                   "
fimse
se notificacoes_c[n] = "" entao
   notificacoes_c[n] <- "                                                                                   "
fimse
se notificacoes_d[n] = "" entao
   notificacoes_d[n] <- "                                                                                   "
fimse
se notificacoes_e[n] = "" entao
   notificacoes_e[n] <- "                                                                                   "
fimse
se notificacoes_f[n] = "" entao
   notificacoes_f[n] <- "                                                                                   "
fimse
se notificacoes_g[n] = "" entao
   notificacoes_g[n] <- "                                                                                   "
fimse
se notificacoes_h[n] = "" entao
   notificacoes_h[n] <- "                                                                                   "
fimse
se notificacoes_i[n] = "" entao
   notificacoes_i[n] <- "                                                                                   "
fimse
se notificacoes_j[n] = "" entao
   notificacoes_j[n] <- "                                                                                   "
fimse
se notificacoes_k[n] = "" entao
   notificacoes_k[n] <- "                                                                                   "
fimse
se notificacoes_l[n] = "" entao
   notificacoes_l[n] <- "                                                                                   "
fimse
se notificacoes_m[n] = "" entao
   notificacoes_m[n] <- "                                                                                   "
fimse
se notificacoes_n[n] = "" entao
   notificacoes_n[n] <- "                                                                                   "
fimse
se notificacoes_o[n] = "" entao
   notificacoes_o[n] <- "                                                                                   "
fimse
se notificacoes_p[n] = "" entao
   notificacoes_p[n] <- "                                                                                   "
fimse
se notificacoes_q[n] = "" entao
   notificacoes_q[n] <- "                                                                                   "
fimse
se notificacoes_r[n] = "" entao
   notificacoes_r[n] <- "                                                                                   "
fimse
se notificacoes_s[n] = "" entao
   notificacoes_s[n] <- "                                                                                   "
fimse
se notificacoes_t[n] = "" entao
   notificacoes_t[n] <- "                                                                                   "
fimse
se notificacoes_u[n] = "" entao
   notificacoes_u[n] <- "                                                                                   "
fimse
se notificacoes_v[n] = "" entao
   notificacoes_v[n] <- "                                                                                   "
fimse
se notificacoes_w[n] = "" entao
   notificacoes_w[n] <- "                                                                                   "
fimse
se notificacoes_x[n] = "" entao
   notificacoes_x[n] <- "                                                                                   "
fimse
se notificacoes_y[n] = "" entao
   notificacoes_y[n] <- "                                                                                   "
fimse

   limpatela
   escreval ("       _________________________________________________________________________________________________________")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                               SIGA - UEM                                                |")
   escreval ("      |_________________________________________________________________________________________________________|")
   escreval ("      |                    |                                                                                    |")
se num_email[n] = 0 entao
   escreval ("      |                    | Nenhum e-mail disponível.                                                          |")
 senao
    escreval ("      |                    | Caixa de entrada:                                                                  |")
fimse
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    | ", notificacoes_a[n], "|")
   escreval ("      |                    | ", notificacoes_b[n], "|")
   escreval ("      |                    | ", notificacoes_c[n], "|")
   escreval ("      |                    | ", notificacoes_d[n], "|")
   escreval ("      |                    | ", notificacoes_e[n], "|")
   escreval ("      |                    | ", notificacoes_f[n], "|")
   escreval ("      |                    | ", notificacoes_g[n], "|")
   escreval ("      |                    | ", notificacoes_h[n], "|")
   escreval ("      |                    | ", notificacoes_i[n], "|")
   escreval ("      |                    | ", notificacoes_j[n], "|")
   escreval ("      |                    | ", notificacoes_k[n], "|")
   escreval ("      |                    | ", notificacoes_l[n], "|")
   escreval ("      |                    | ", notificacoes_m[n], "|")
   escreval ("      |                    | ", notificacoes_n[n], "|")
   escreval ("      |                    | ", notificacoes_o[n], "|")
   escreval ("      |                    | ", notificacoes_p[n], "|")
   escreval ("      |                    | ", notificacoes_q[n], "|")
   escreval ("      |____________________| ", notificacoes_r[n], "|")
   escreval ("      |                    | ", notificacoes_s[n], "|")
   escreval ("      |       E-mail       | ", notificacoes_t[n], "|                   ________________________")
   escreval ("      |____________________| ", notificacoes_u[n], "|                  |                        |")
   escreval ("      |                    | ", notificacoes_v[n], "|                  |          Guia          |")
   escreval ("      |                    | ", notificacoes_w[n], "|                  |------------------------|")
   escreval ("      |                    | ", notificacoes_x[n], "|                  | Abrir e-mail = 'a'     |")
   escreval ("      |                    | ", notificacoes_y[n], "|                  |------------------------|")
   escreval ("      |                    |                                                                                    |                  | Voltar = 'v'           |")
   escreval ("      |____________________|____________________________________________________________________________________|                  |________________________|")
   escreval ()
   escreval ()
   escreval ("O que deseja fazer? (Consulte o guia).")
   repita
     leia (resposta)
     se (resposta <> "v")e(resposta <> "a") entao
        escreval ("Consulte o guia.")
     fimse
   ate (resposta = "v")ou(resposta = "a")
   se resposta = "v" entao
      CarregarMenuComGuia ()
    senao
       se (resposta = "a") entao
           se (num_email[n] = 0) entao
              limpatela
              escreva ("Nenhum e-mail disponível.")
              timer 1500
              timer 0
              limpatela
              escreva ("Redirecionando o usuário.")
              timer 1200
              timer 0
              Notificacoes ()
            senao
               se (num_email[n] = 1) entao
                  escreval ("Há somente um e-mail, abrir?")
                  repita
                    leia (resposta)
                    se resposta = "n" entao
                       Notificacoes ()
                     senao
                        se resposta = "s" entao
                           num <- 1
                           noti[n] <- 0
                           VisualizarEmail ()
                         senao
                            escreval ("Use somente s(sim) ou n(não).")
                        fimse
                    fimse
                  ate (resposta = "s")ou(resposta = "n")
                senao
                   escreval ("Qual e-mail deseja abrir? (1 -", num_email[n], ").")
                   leia (num)
                   enquanto (num < 1)ou(num > num_email[n]) faca
                       escreval ("Escolha inválida.")
                       leia (num)
                   fimenquanto
                   se compr(visto[n]) = 0 entao
                      visto[n] <- visto[n] + numpcarac(num) + " "
                      noti[n] <- noti[n] - 1
                    senao
                       cont <- 0
                       para conta <- 1 ate compr(visto[n]) faca
                            se copia(visto[n];conta,1) <> numpcarac(num) entao
                               cont <- cont + 1
                             senao
                                se (conta < compr(visto[n]))e(compr(numpcarac(num)) = 2) entao
                                   se copia(visto[n];conta,2) <> numpcarac(num) entao
                                      cont <- cont + 1
                                  fimse
                                fimse
                            fimse
                       fimpara
                       se cont = compr(visto[n]) entao
                          visto[n] <- visto[n] + numpcarac(num) + " "
                          noti[n] <- noti[n] - 1
                       fimse
                   fimse
               fimse
           fimse
       fimse
   fimse
   VisualizarEmail ()
   
FimProcedimento


Procedimento VisualizarEmail ()

var

partev, espacos_v : vetor[1..16] de caractere
tempv : inteiro
espacov, espacov2 : caractere

Inicio

limpatela
caminho1 <- falso
caminho2 <- falso

escolha num
   caso 1
     texto <- textoorg_a[n]
     em <- em_a[n]
   caso 2
     texto <- textoorg_b[n]
     em <- em_b[n]
   caso 3
     texto <- textoorg_c[n]
     em <- em_c[n]
   caso 4
     texto <- textoorg_d[n]
     em <- em_d[n]
   caso 5
     texto <- textoorg_e[n]
     em <- em_e[n]
   caso 6
     texto <- textoorg_f[n]
     em <- em_f[n]
   caso 7
     texto <- textoorg_g[n]
     em <- em_g[n]
   caso 8
     texto <- textoorg_h[n]
     em <- em_h[n]
   caso 9
     texto <- textoorg_i[n]
     em <- em_i[n]
   caso 10
     texto <- textoorg_j[n]
     em <- em_j[n]
   caso 11
     texto <- textoorg_k[n]
     em <- em_k[n]
   caso 12
     texto <- textoorg_l[n]
     em <- em_l[n]
   caso 13
     texto <- textoorg_m[n]
     em <- em_m[n]
   caso 14
     texto <- textoorg_n[n]
     em <- em_n[n]
   caso 15
     texto <- textoorg_o[n]
     em <- em_o[n]
   caso 16
     texto <- textoorg_p[n]
     em <- em_p[n]
   caso 17
     texto <- textoorg_q[n]
     em <- em_q[n]
   caso 18
     texto <- textoorg_r[n]
     em <- em_r[n]
   caso 19
     texto <- textoorg_s[n]
     em <- em_s[n]
   caso 20
     texto <- textoorg_t[n]
     em <- em_t[n]
   caso 21
     texto <- textoorg_u[n]
     em <- em_u[n]
   caso 22
     texto <- textoorg_v[n]
     em <- em_v[n]
   caso 23
     texto <- textoorg_w[n]
     em <- em_w[n]
   caso 24
     texto <- textoorg_x[n]
     em <- em_x[n]
   caso 25
     texto <- textoorg_y[n]
     em <- em_y[n]
fimescolha

se chamadopordoc = falso entao
   tempv <- compr("                                                   ") - compr(nomes[em]) - compr(curs[em]) - compr(nivel[em])
   para conta <- 1 ate tempv faca
        espacov <- espacov + " "
   fimpara
   tempv <- compr("                                                       ") - (compr(email[em]) + 2)
   para conta <- 1 ate tempv faca
        espacov2 <- espacov2 + " "
   fimpara
 senao
    tempv <- compr("                                              ") - compr(nomes[em]) - compr(abr[em])
    para conta <- 1 ate tempv faca
         espacov <- espacov + " "
    fimpara
    tempv <- compr("                                                       ") - (compr(email[em]) + 2)
    para conta <- 1 ate tempv faca
         espacov2 <- espacov2 + " "
    fimpara
fimse

para conta <- 1 ate 16 faca
       se compr(texto) > 54 entao
          para cont <- 55 ate 45 passo -1 faca
               se copia(texto;cont,1) = " " entao
                  partev[conta] <- copia(texto; 1, cont-1)
                  texto <- copia(texto;cont+1,compr(texto))
                  caminho1 <- verdadeiro
                  interrompa
               fimse
          fimpara
          se caminho1 = falso entao
             partev[conta] <- copia(texto;1,53) + "-"
             texto <- copia(texto;54,compr(texto))
             caminho2 <- verdadeiro
          fimse
        senao
           se (compr(texto) < 55)e((caminho1 = verdadeiro)ou(caminho2 = verdadeiro)) entao
              partev[conta] <- texto
              interrompa
            senao
               se (caminho1 = falso)e(caminho2 = falso) entao
                  partev[1] <- texto
                  tempv <- compr("                                                       ") - compr(texto)
                  para conta <- 1 ate tempv faca
                       espacos_v[1] <- espacos_v[1] + " "
                  fimpara
                  para conta <- 2 ate 16 faca
                       espacos_v[conta] <- "                                                       "
                  fimpara
                  interrompa
               fimse
           fimse
       fimse
  fimpara
tempv <- conta
para cont <- (conta+1) ate 16 faca
     espacos_v[cont] <- "                                                       "
fimpara
cont <- tempv
se (caminho1 = verdadeiro)ou(caminho2 = verdadeiro) entao
   para conta <- 1 ate cont faca
        tempv <- compr("                                                       ") - compr(partev[conta])
        para cont <- 1 ate tempv faca
             espacos_v[conta] <- espacos_v[conta] + " "
        fimpara
   fimpara
fimse
limpatela
   escreval ("       _________________________________________________________________________________________________________")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                               SIGA - UEM                                                |")
   escreval ("      |_________________________________________________________________________________________________________|")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |              ________________________________________________________              |")
   escreval ("      |                    |             |                                                        |             |")
 se chamadopordoc = falso entao
   escreval ("      |                    |             | ", nomes[em], " (", curs[em]," ", nivel[em],")", espacov,"|             |")
   escreval ("      |                    |             |", espacov2, "~ ", email[em], " |             |")
  senao
   escreval ("      |                    |             | Docente ", nomes[em], " ", abr[em], espacov, "|             |")
   escreval ("      |                    |             |", espacov2, "~ ", email[em], " |             |")
 fimse
   escreval ("      |                    |             |--------------------------------------------------------|             |")
   escreval ("      |                    |             | ", partev[1], espacos_v[1], "|             |")
   escreval ("      |                    |             | ", partev[2], espacos_v[2], "|             |")
   escreval ("      |                    |             | ", partev[3], espacos_v[3], "|             |")
   escreval ("      |                    |             | ", partev[4], espacos_v[4], "|             |")
   escreval ("      |                    |             | ", partev[5], espacos_v[5], "|             |")
   escreval ("      |                    |             | ", partev[6], espacos_v[6], "|             |")
   escreval ("      |                    |             | ", partev[7], espacos_v[7], "|             |")
   escreval ("      |                    |             | ", partev[8], espacos_v[8], "|             |")
   escreval ("      |                    |             | ", partev[9], espacos_v[9], "|             |")
   escreval ("      |                    |             | ", partev[10], espacos_v[10], "|             |")
   escreval ("      |                    |             | ", partev[11], espacos_v[11], "|             |")
   escreval ("      |____________________|             | ", partev[12], espacos_v[12], "|             |                   ________________________")
   escreval ("      |                    |             | ", partev[13], espacos_v[13], "|             |                  |                        |")
   escreval ("      |       E-mail       |             | ", partev[14], espacos_v[14], "|             |                  |          Guia          |")
   escreval ("      |____________________|             | ", partev[15], espacos_v[15], "|             |                  |------------------------|")
   escreval ("      |                    |             | ", partev[16], espacos_v[16], "|             |                  | Responder = 'r'        |")
   escreval ("      |                    |             |________________________________________________________|             |                  |------------------------|")
   escreval ("      |                    |                                                                                    |                  | Deletar e-mail = 'd'   |")
   escreval ("      |                    |                                                                                    |                  |------------------------|")
   escreval ("      |                    |                                                                                    |                  | Voltar = 'v'           |")
   escreval ("      |____________________|____________________________________________________________________________________|                  |________________________|")
   escreval ()
   escreval ()
   escreval ("O que deseja fazer? (Consulte o guia).")
   repita
    leia (resposta)
     se resposta = "v" entao
        Notificacoes ()
      senao
         se resposta = "d" entao
            escreval ("Tem certeza que deseja deletar este e-mail?")
            repita
             leia (resposta)
               se resposta = "n" entao
                  VisualizarEmail ()
                senao
                   se resposta = "s" entao
                      Deletar ()
                   fimse
               fimse
            ate (resposta = "s")ou(resposta = "n")
          senao
             se resposta = "r" entao
                m <- em
                Email2 ()
             fimse
         fimse
     fimse
     Notificacoes ()

FimProcedimento

Procedimento Deletar ()

Inicio

se num_email[n] > 0 entao
   se (num = 1)e(num_email[n] >= 1) entao
      se num_email[n] <> 1 entao
         notificacoes_a[n] <- "1. " + copia(notificacoes_b[n];4,compr(notificacoes_b[n]))
         textoorg_a[n] <- textoorg_b[n]
         em_a[n] <- em_b[n]
       senao
          notificacoes_a[n] <- "                                                                                   "
          textoorg_a[n] <- ""
      fimse
   fimse
   se (num <= 2)e(num_email[n] >= 2) entao
      se num_email[n] <> 2 entao
         notificacoes_b[n] <- "2. " + copia(notificacoes_c[n];4,compr(notificacoes_c[n]))
         textoorg_b[n] <- textoorg_c[n]
         em_b[n] <- em_c[n]
       senao
          notificacoes_b[n] <- "                                                                                   "
          textoorg_b[n] <- ""
      fimse
   fimse
   se (num <= 3)e(num_email[n] >= 3) entao
      se num_email[n] <> 3 entao
         notificacoes_c[n] <- "3. " + copia(notificacoes_d[n];4,compr(notificacoes_d[n]))
         textoorg_c[n] <- textoorg_d[n]
         em_c[n] <- em_d[n]
       senao
          notificacoes_c[n] <- "                                                                                   "
          textoorg_c[n] <- ""
      fimse
   fimse
   se (num <= 4)e(num_email[n] >= 4) entao
      se num_email[n] <> 4 entao
         notificacoes_d[n] <- "4. " + copia(notificacoes_e[n];4,compr(notificacoes_e[n]))
         textoorg_d[n] <- textoorg_e[n]
         em_d[n] <- em_e[n]
       senao
          notificacoes_d[n] <- "                                                                                   "
          textoorg_d[n] <- ""
      fimse
   fimse
   se (num <= 5)e(num_email[n] >= 5) entao
      se num_email[n] <> 5 entao
         notificacoes_e[n] <- "5. " + copia(notificacoes_f[n];4,compr(notificacoes_f[n]))
         textoorg_e[n] <- textoorg_f[n]
         em_e[n] <- em_f[n]
       senao
          notificacoes_e[n] <- "                                                                                   "
          textoorg_e[n] <- ""
      fimse
   fimse
   se (num <= 6)e(num_email[n] >= 6) entao
      se num_email[n] <> 6 entao
         notificacoes_f[n] <- "6. " + copia(notificacoes_g[n];4,compr(notificacoes_g[n]))
         textoorg_f[n] <- textoorg_g[n]
         em_f[n] <- em_g[n]
       senao
          notificacoes_f[n] <- "                                                                                   "
          textoorg_f[n] <- ""
      fimse
   fimse
   se (num <= 7)e(num_email[n] >= 7) entao
      se num_email[n] <> 7 entao
         notificacoes_g[n] <- "7. " + copia(notificacoes_h[n];4,compr(notificacoes_h[n]))
         textoorg_g[n] <- textoorg_h[n]
         em_g[n] <- em_h[n]
       senao
          notificacoes_g[n] <- "                                                                                   "
          textoorg_g[n] <- ""
      fimse
   fimse
   se (num <= 8)e(num_email[n] >= 8) entao
      se num_email[n] <> 8 entao
         notificacoes_h[n] <- "8. " + copia(notificacoes_i[n];4,compr(notificacoes_i[n]))
         textoorg_h[n] <- textoorg_i[n]
         em_h[n] <- em_i[n]
       senao
          notificacoes_h[n] <- "                                                                                   "
          textoorg_h[n] <- ""
      fimse
   fimse
   se (num <= 9)e(num_email[n] >= 9) entao
      se num_email[n] <> 9 entao
         notificacoes_i[n] <- "9. " + copia(notificacoes_j[n];4,compr(notificacoes_j[n]))
         textoorg_i[n] <- textoorg_j[n]
         em_i[n] <- em_j[n]
       senao
          notificacoes_i[n] <- "                                                                                   "
          textoorg_i[n] <- ""
      fimse
   fimse
   se (num <= 10)e(num_email[n] >= 10) entao
      se num_email[n] <> 10 entao
         notificacoes_j[n] <- "10. " + copia(notificacoes_k[n];5,compr(notificacoes_k[n]))
         textoorg_j[n] <- textoorg_k[n]
         em_j[n] <- em_k[n]
       senao
          notificacoes_j[n] <- "                                                                                   "
          textoorg_j[n] <- ""
      fimse
   fimse
   se (num <= 11)e(num_email[n] >= 11) entao
      se num_email[n] <> 11 entao
         notificacoes_k[n] <- "11. " + copia(notificacoes_l[n];5,compr(notificacoes_l[n]))
         textoorg_k[n] <- textoorg_l[n]
         em_k[n] <- em_l[n]
       senao
          notificacoes_k[n] <- "                                                                                   "
          textoorg_k[n] <- ""
      fimse
   fimse
   se (num <= 12)e(num_email[n] >= 12) entao
      se num_email[n] <> 12 entao
         notificacoes_l[n] <- "12. " + copia(notificacoes_m[n];5,compr(notificacoes_m[n]))
         textoorg_l[n] <- textoorg_m[n]
         em_l[n] <- em_m[n]
       senao
          notificacoes_l[n] <- "                                                                                   "
          textoorg_l[n] <- ""
      fimse
   fimse
   se (num <= 13)e(num_email[n] >= 13) entao
      se num_email[n] <> 13 entao
         notificacoes_m[n] <- "13. " + copia(notificacoes_n[n];5,compr(notificacoes_n[n]))
         textoorg_m[n] <- textoorg_n[n]
         em_m[n] <- em_n[n]
       senao
          notificacoes_m[n] <- "                                                                                   "
          textoorg_m[n] <- ""
      fimse
   fimse
   se (num <= 14)e(num_email[n] >= 14) entao
      se num_email[n] <> 14 entao
         notificacoes_n[n] <- "14. " + copia(notificacoes_o[n];5,compr(notificacoes_o[n]))
         textoorg_n[n] <- textoorg_o[n]
         em_n[n] <- em_o[n]
       senao
          notificacoes_n[n] <- "                                                                                   "
          textoorg_n[n] <- ""
      fimse
   fimse
   se (num <= 15)e(num_email[n] >= 15) entao
      se num_email[n] <> 15 entao
         notificacoes_o[n] <- "15. " + copia(notificacoes_p[n];5,compr(notificacoes_p[n]))
         textoorg_o[n] <- textoorg_p[n]
         em_o[n] <- em_p[n]
       senao
          notificacoes_o[n] <- "                                                                                   "
          textoorg_o[n] <- ""
      fimse
   fimse
   se (num <= 16)e(num_email[n] >= 16) entao
      se num_email[n] <> 16 entao
         notificacoes_p[n] <- "16. " + copia(notificacoes_q[n];5,compr(notificacoes_q[n]))
         textoorg_p[n] <- textoorg_q[n]
         em_p[n] <- em_q[n]
       senao
          notificacoes_p[n] <- "                                                                                   "
          textoorg_p[n] <- ""
      fimse
   fimse
   se (num <= 17)e(num_email[n] >= 17) entao
      se num_email[n] <> 17 entao
         notificacoes_q[n] <- "17. " + copia(notificacoes_r[n];5,compr(notificacoes_r[n]))
         textoorg_q[n] <- textoorg_r[n]
         em_q[n] <- em_r[n]
       senao
          notificacoes_q[n] <- "                                                                                   "
          textoorg_q[n] <- ""
      fimse
   fimse
   se (num <= 18)e(num_email[n] >= 18) entao
      se num_email[n] <> 18 entao
         notificacoes_r[n] <- "18. " + copia(notificacoes_s[n];5,compr(notificacoes_s[n]))
         textoorg_r[n] <- textoorg_s[n]
         em_r[n] <- em_s[n]
       senao
          notificacoes_r[n] <- "                                                                                   "
          textoorg_r[n] <- ""
      fimse
   fimse
   se (num <= 19)e(num_email[n] >= 19) entao
      se num_email[n] <> 19 entao
         notificacoes_s[n] <- "19. " + copia(notificacoes_t[n];5,compr(notificacoes_t[n]))
         textoorg_s[n] <- textoorg_t[n]
         em_s[n] <- em_t[n]
       senao
          notificacoes_s[n] <- "                                                                                   "
          textoorg_s[n] <- ""
      fimse
   fimse
   se (num <= 20)e(num_email[n] >= 20) entao
      se num_email[n] <> 20 entao
         notificacoes_t[n] <- "20. " + copia(notificacoes_y[n];5,compr(notificacoes_u[n]))
         textoorg_t[n] <- textoorg_u[n]
         em_t[n] <- em_u[n]
       senao
          notificacoes_t[n] <- "                                                                                   "
          textoorg_t[n] <- ""
      fimse
   fimse
   se (num <= 21)e(num_email[n] >= 21) entao
      se num_email[n] <> 21 entao
         notificacoes_u[n] <- "21. " + copia(notificacoes_v[n];5,compr(notificacoes_v[n]))
         textoorg_u[n] <- textoorg_v[n]
         em_u[n] <- em_v[n]
       senao
          notificacoes_u[n] <- "                                                                                   "
          textoorg_u[n] <- ""
      fimse
   fimse
   se (num <= 22)e(num_email[n] >= 22) entao
      se num_email[n] <> 22 entao
         notificacoes_v[n] <- "22. " + copia(notificacoes_w[n];5,compr(notificacoes_w[n]))
         textoorg_v[n] <- textoorg_w[n]
         em_v[n] <- em_w[n]
       senao
          notificacoes_v[n] <- "                                                                                   "
          textoorg_v[n] <- ""
      fimse
   fimse
   se (num <= 23)e(num_email[n] >= 23) entao
      se num_email[n] <> 23 entao
         notificacoes_w[n] <- "23. " + copia(notificacoes_x[n];5,compr(notificacoes_x[n]))
         textoorg_w[n] <- textoorg_x[n]
         em_w[n] <- em_x[n]
       senao
          notificacoes_w[n] <- "                                                                                   "
          textoorg_w[n] <- ""
      fimse
   fimse
   se (num <= 24)e(num_email[n] >= 24) entao
      se num_email[n] <> 24 entao
         notificacoes_x[n] <- "24. " + copia(notificacoes_y[n];5,compr(notificacoes_y[n]))
         textoorg_x[n] <- textoorg_y[n]
         em_x[n] <- em_y[n]
       senao
          notificacoes_x[n] <- "                                                                                   "
          textoorg_x[n] <- ""
      fimse
   fimse
   se (num <= 25)e(num_email[n] >= 25) entao
      notificacoes_y[n] <- "                                                                                   "
      textoorg_y[n] <- ""
   fimse
fimse
para conta <- 1 ate compr(visto[n]) faca
     se numpcarac(num) = copia(visto[n];conta,1) entao
        se conta = 1 entao
           visto[n] <- copia(visto[n];3,compr(visto[n]))
         senao
            visto[n] <- copia(visto[n];1,conta-2) + " " + copia(visto[n];conta+2,compr(visto[n]))
        fimse
        interrompa
      senao
         se numpcarac(num) = copia(visto[n];conta,2) entao
            se conta = 1 entao
               visto[n] <- copia(visto[n];4,compr(visto[n]))
             senao
                visto[n] <- copia(visto[n];1,conta-2) + " " + copia(visto[n];conta+3,compr(visto[n]))
            fimse
            interrompa
         fimse
     fimse
fimpara
num_email[n] <- num_email[n] - 1

FimProcedimento

Procedimento Pagamentos ()

var

tempp : inteiro

Inicio

espacop1 <- ""
espacop2 <- ""
espacop3 <- ""
espacop4 <- ""
tempp <- compr("      ") - compr(saldo1[n])
para conta <- 1 ate tempp faca
     espacop1 <- espacop1 + " "
fimpara

tempp <- compr("      ") - compr(saldo2[n])
para conta <- 1 ate tempp faca
     espacop2 <- espacop2 + " "
fimpara

tempp <- compr("                                                             ") - compr(nomes[n])
para conta <- 1 ate tempp faca
     espacop3 <- espacop3 + " "
fimpara

tempp <- compr("                                                             ") - compr(curso[n])
para conta <- 1 ate tempp faca
     espacop4 <- espacop4 + " "
fimpara

   limpatela
   escreval ("       _________________________________________________________________________________________________________")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                               SIGA - UEM                                                |")
   escreval ("      |_________________________________________________________________________________________________________|")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                                                                       SALDO        |")
   escreval ("      |                    |                                                               -------------------- |")
   escreval ("      |                    |                                                                BIM - ", espacop1, saldo1[n], ".00 MT  |")
   escreval ("      |                    |                                                                BCI - ", espacop2, saldo2[n], ".00 MT  |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |  ________________________                                                          |")
   escreval ("      |                    | |                        |                                                         |")
   escreval ("      |                    | | Inscrições             |                                                         |")
   escreval ("      |                    | |________________________|                                                         |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |  ________________________                                                          |")
   escreval ("      |                    | |                        |                                                         |")
   escreval ("      |                    | | Matrículas             |                                                         |")
   escreval ("      |                    | |________________________|                                                         |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                                                                                    |                   ________________________")
   escreval ("      |                    |                                                                                    |                  |                        |")
   escreval ("      |                    |                                                                                    |                  |          Guia          |")
   escreval ("      |____________________|                                                                                    |                  |------------------------|")
   escreval ("      |                    |                                                                                    |                  | Inscrições = 'i'       |")
   escreval ("      |     Pagamentos     |                                                                                    |                  |------------------------|")
   escreval ("      |____________________|                                                                                    |                  | Matrículas = 'm'       |")
   escreval ("      |                    |                                                                                    |                  |------------------------|")
   escreval ("      |                    |                                                                                    |                  | Página Inicial = 'pi'  |")
   escreval ("      |____________________|____________________________________________________________________________________|                  |________________________|")
   escreval ()
   escreval ()
   escreval ("O que deseja fazer? (Consulte o guia).")
   repita
      leia (resposta)
      se resposta = "m" entao
         Matriculas ()
       senao
          se resposta = "i" entao
             Inscricoes ()
           senao
              se resposta <> "pi" entao
                 escreval ("Consulte o guia.")
              fimse
          fimse
      fimse
   ate (resposta = "m")ou(resposta = "i")ou(resposta = "pi")
   CarregarMenuComGuia ()

FimProcedimento


Procedimento Matriculas ()

Inicio

limpatela
escreval ("       _________________________________________________________________________________________________________")
escreval ("      |                                                                                                         |")
escreval ("      |                                               SIGA - UEM                                                |")
escreval ("      |_________________________________________________________________________________________________________|")
escreval ("      |                    |                                                                                    |")
escreval ("      |                    |                                                                        SALDO       |")
escreval ("      |                    |                     |                                          ------------------- |")
escreval ("      |                    | Código              | ", codigos[n],"                                  BIM - ", espacop1, saldo1[n], ".00 MT |")
escreval ("      |                    | --------------------|--------------------------------------     BCI - ", espacop2, saldo2[n], ".00 MT |")
escreval ("      |                    | Nome Completo       | ", nomes[n], espacop3, "|")
escreval ("      |                    | --------------------|--------------------------------------                        |")
escreval ("      |                    | Curso               | ", curso[n], espacop4, "|")
escreval ("      |                    | --------------------|--------------------------------------                        |")
escreval ("      |                    | Ano Lectivo         | 2021                                                         |")
escreval ("      |                    | --------------------|--------------------------------------                        |")
escreval ("      |                    | Data de Matrícula   | ", datam[n], "                                                   |")
escreval ("      |                    | --------------------|--------------------------------------                        |")
escreval ("      |                    | Tipo de Matrícula   | Normal                                                       |")
escreval ("      |                    | --------------------|--------------------------------------                        |")
escreval ("      |                    | Estado da Matrícula | Completa                                                     |")
escreval ("      |                    | --------------------|---------------------------------------                       |")
escreval ("      |                    |                     |                                                              |")
escreval ("      |                    |                     |                                                              |")
escreval ("      |                    |                                                                                    |")
escreval ("      |                    |                                                                                    |                   ________________________")
escreval ("      |                    |                                                                                    |                  |                        |")
escreval ("      |                    |                                                                                    |                  |          Guia          |")
escreval ("      |____________________|                                                                                    |                  |------------------------|")
escreval ("      |                    |                                                                                    |                  | Inscrições = 'i'       |")
escreval ("      |     Pagamentos     |                                                                                    |                  |------------------------|")
escreval ("      |____________________|                                                                                    |                  | Voltar = 'v'           |")
escreval ("      |                    |                                                                                    |                  |------------------------|")
escreval ("      |                    |                                                                                    |                  | Página Inicial = 'pi'  |")
escreval ("      |____________________|____________________________________________________________________________________|                  |________________________|")
escreval ()
escreval ()
escreval ("O que deseja fazer? (Consulte o guia.)")
repita
    leia (resposta)
    se resposta = "i" entao
       Inscricoes ()
     senao
        se resposta = "v" entao
           Pagamentos ()
         senao
            se resposta <> "pi" entao
               escreval ("Consulte o guia.")
            fimse
        fimse
    fimse
ate (resposta = "i")ou(resposta = "v")ou(resposta = "pi")
CarregarMenuComGuia ()

FimProcedimento

Procedimento Inscricoes ()
var

tempp : inteiro

Inicio


limpatela
se (curso[n] = "Licenciatura em Informática")ou(curso[n] = "Licenciatura em Matemática") entao
   se resposta <> "2" entao
      escreval ("       _________________________________________________________________________________________________________")
      escreval ("      |                                                                                                         |")
      escreval ("      |                                               SIGA - UEM                                                |")
      escreval ("      |_________________________________________________________________________________________________________|")
      escreval ("      |                    |                                                                                    |")
      escreval ("      |                    | Inscrições ativas nesse semestre:                                      SALDO       |")
      escreval ("      |                    |                                                                ------------------- |")
      escreval ("      |                    |                                                                 BIM - ", espacop1, saldo1[n], ".00 MT |")
      escreval ("      |                    |                                                                 BCI - ", espacop2, saldo2[n], ".00 MT |")
      escreval ("      |                    |                                                                                    |")
      escreval ("      |                    |  Disciplina                         | Ano | Semestre | Tipo       | Estado         |")
      escreval ("      |                    | ------------------------------------|-----|----------|------------|--------------  |")
      escreval ("      |                    |  Estatística Básica                 |  1  |     1    | Frequência | Activa         |")
      escreval ("      |                    | ------------------------------------|-----|----------|------------|--------------  |")
      escreval ("      |                    |  Estrutura e Gestão de Organizações |  1  |     1    | Frequência | Activa         |")
      escreval ("      |                    | ------------------------------------|-----|----------|------------|--------------  |")
      escreval ("      |                    |  Fundamentos de Geometria           |  1  |     1    | Frequência | Activa         |")
      escreval ("      |                    | ------------------------------------|-----|----------|------------|--------------  |")
      escreval ("      |                    |  Introdução às Tecnologias de       |  1  |     1    | Frequência | Activa         |")
      escreval ("      |                    |  Informação e Comunicações          |     |          |            |                |")
      escreval ("      |                    | ------------------------------------|-----|----------|------------|--------------  |")
      escreval ("      |                    |  Métodos de Estudo e Habilidades    |  1  |     1    | Frequência | Activa         |")
      escreval ("      |                    |  para a Vida                        |     |          |            |                |")
      escreval ("      |                    | ------------------------------------|-----|----------|------------|--------------  |")
      escreval ("      |                    |  Matemática Básica                  |  1  |     1    | Frequência | Activa         |                   ________________________")
      escreval ("      |                    |                                     |     |          |            |                |                  |                        |")
      escreval ("      |                    |                                                                                    |                  |          Guia          |")
      escreval ("      |____________________|                                                                                    |                  |------------------------|")
      escreval ("      |                    |                                                                                    |                  | Página 2 = '2'         |")
      escreval ("      |     Pagamentos     |                                                                                    |                  |------------------------|")
      escreval ("      |____________________|                                                                                    |                  | Matrículas = 'm'       |")
      escreval ("      |                    |                                                                                    |                  |------------------------|")
      escreval ("      |                    |                                                                               1|2  |                  | Página Inicial = 'pi'  |")
      escreval ("      |____________________|____________________________________________________________________________________|                  |________________________|")
      escreval ()
      escreval ()
      escreval ("O que deseja fazer? (Consulte o guia.)")
      repita
         leia (resposta)
         se resposta = "2" entao
            Inscricoes ()
          senao
             se resposta = "m" entao
                Matriculas ()
              senao
                 se resposta <> "pi" entao
                    escreval ("Consulte o guia.")
                 fimse
             fimse
         fimse
      ate (resposta = "2")ou(resposta = "m")ou(resposta = "pi")
   senao
    se (curso[n] = "Licenciatura em Informática")e(resposta = "2") entao
       valor_i <- "1800.00 MT"
       espacop3 <- "    "
       tempp <- compr("                         ") - compr(estado[n])
       espacop4 <- ""
       para conta <- 1 ate tempp faca
            espacop4 <- espacop4 + " "
       fimpara
       escreval ("       _________________________________________________________________________________________________________")
       escreval ("      |                                                                                                         |")
       escreval ("      |                                               SIGA - UEM                                                |")
       escreval ("      |_________________________________________________________________________________________________________|")
       escreval ("      |                    |                                                                                    |")
       escreval ("      |                    | Inscrições para o próximo semestre:                                   SALDO        |")
       escreval ("      |                    |                                                               -------------------- |")
       escreval ("      |                    |                                                                 BIM - ", espacop1, saldo1[n], ".00 MT |")
       escreval ("      |                    |                                                                 BCI - ", espacop2, saldo2[n], ".00 MT |")
       escreval ("      |                    |                                                                                    |")
       escreval ("      |                    |  Disciplina                         | Ano | Semestre | Tipo       | Estado         |")
       escreval ("      |                    | ------------------------------------|-----|----------|------------|--------------  |")
       escreval ("      |                    |  Álgebra Linear e Geometria         |  1  |     2    | Frequência | Inactiva       |")
       escreval ("      |                    |  Analítica                          |     |          |            |                |")
       escreval ("      |                    | ------------------------------------|-----|----------|------------|--------------  |")
       escreval ("      |                    |  Análise Matemática II              |  1  |     2    | Frequência | Inactiva       |")
       escreval ("      |                    | ------------------------------------|-----|----------|------------|--------------  |")
       escreval ("      |                    |  Introdução à Informática           |  1  |     2    | Frequência | Inactiva       |")
       escreval ("      |                    | ------------------------------------|-----|----------|------------|--------------  |")
       escreval ("      |                    |  Lógica e Teoria de Conjuntos       |  1  |     2    | Frequência | Inactiva       |")
       escreval ("      |                    |                                     |     |          |            |                |")
       escreval ("      |                    |                                                                                    |")
       escreval ("      |                    |                                                                                    |                   ________________________")
       escreval ("      |                    |                                                                                    |                  |                        |")
       escreval ("      |                    |                             Valor a pagar | Estado                                 |                  |          Guia          |")
       escreval ("      |                    |                            ---------------|----------------                        |                  |------------------------|")
       escreval ("      |                    |                             ", valor_i, espacop3, "| ", estado[n], espacop4, "|                  | Página 1 = '1'         |")
       escreval ("      |____________________|                                                                                    |                  |------------------------|")
       escreval ("      |                    |                                                                                    |                  | Pagar inscrição = 'p'  |")
       escreval ("      |     Pagamentos     |                                                                                    |                  |------------------------|")
       escreval ("      |____________________|                                                                                    |                  | Matrículas = 'm'       |")
       escreval ("      |                    |                                                                                    |                  |------------------------|")
       escreval ("      |                    |                                                                               2|2  |                  | Página Inicial = 'pi'  |")
       escreval ("      |____________________|____________________________________________________________________________________|                  |________________________|")
       escreval ()
       escreval ()
       escreval ("O que deseja fazer? (Consulte o guia.)")
       repita
          leia (resposta)
          se resposta = "1" entao
             Inscricoes ()
           senao
              se resposta = "p" entao
                 Pagar ()
               senao
                  se resposta = "m" entao
                     Matriculas ()
                   senao
                      se resposta <> "pi" entao
                         escreval ("Consulte o guia.")
                      fimse
                  fimse
              fimse
          fimse
       ate (resposta = "1")ou(resposta = "m")ou(resposta = "p")ou(resposta = "pi")
    senao
       se (curso[n] = "Licenciatura em Matemática")e(resposta = "2") entao
          valor_i <- "2250.00 MT"
          espacop3 <- "    "
          tempp <- compr("                                                             ") - compr(estado[n])
          espacop4 <- ""
          para conta <- 1 ate tempp faca
               espacop4 <- espacop4 + " "
          fimpara
          escreval ("       _________________________________________________________________________________________________________")
          escreval ("      |                                                                                                         |")
          escreval ("      |                                               SIGA - UEM                                                |")
          escreval ("      |_________________________________________________________________________________________________________|")
          escreval ("      |                    |                                                                                    |")
          escreval ("      |                    | Inscrições para o próximo semestre:                                   SALDO        |")
          escreval ("      |                    |                                                               -------------------- |")
          escreval ("      |                    |                                                                 BIM - ", espacop1, saldo1[n], ".00 MT |")
          escreval ("      |                    |                                                                 BCI - ", espacop2, saldo2[n], ".00 MT |")
          escreval ("      |                    |                                                                                    |")
          escreval ("      |                    |  Disciplina                         | Ano | Semestre | Tipo       | Estado         |")
          escreval ("      |                    | ------------------------------------|-----|----------|------------|--------------  |")
          escreval ("      |                    |  Álgebra Linear                     |  1  |     2    | Frequência | Inactiva       |")
          escreval ("      |                    | ------------------------------------|-----|----------|------------|--------------  |")
          escreval ("      |                    |  Ánálise Matemática                 |  1  |     2    | Frequência | Inactiva       |")
          escreval ("      |                    | ------------------------------------|-----|----------|------------|--------------  |")
          escreval ("      |                    |  Geometria Plana e Espacial         |  1  |     2    | Frequência | Inactiva       |")
          escreval ("      |                    | ------------------------------------|-----|----------|------------|--------------  |")
          escreval ("      |                    |  Introdução à Informática           |  1  |     2    | Frequência | Inactiva       |")
          escreval ("      |                    |  -----------------------------------|-----|----------|------------|--------------  |")
          escreval ("      |                    |  Lógica e Teoria de Conjuntos       |  1  |     2    | Frequência | Inactiva       |")
          escreval ("      |                    |                                     |     |          |            |                |")
          escreval ("      |                    |                                                                                    |                   ________________________")
          escreval ("      |                    |                                                                                    |                  |                        |")
          escreval ("      |                    |                                                                                    |                  |          Guia          |")
          escreval ("      |                    |                                                                                    |                  |------------------------|")
          escreval ("      |                    |                             Valor a pagar | Estado                                 |                  | Página 1 = '1'         |")
          escreval ("      |____________________|                            ---------------|----------------                        |                  |------------------------|")
          escreval ("      |                    |                             ", valor_i, espacop3, "|", estado[n], espacop4, "        |                  | Pagar inscrição = 'p'  |")
          escreval ("      |     Pagamentos     |                                                                                    |                  |------------------------|")
          escreval ("      |____________________|                                                                                    |                  | Matrículas = 'm'       |")
          escreval ("      |                    |                                                                                    |                  |------------------------|")
          escreval ("      |                    |                                                                               2|2  |                  | Página Inicial = 'pi'  |")
          escreval ("      |____________________|____________________________________________________________________________________|                  |________________________|")
          escreval ()
          escreval ()
          escreval ("O que deseja fazer? (Consulte o guia.)")
          repita
              leia (resposta)
              se resposta = "1" entao
                 Inscricoes ()
               senao
                  se resposta = "p" entao
                     Pagar ()
                   senao
                      se resposta = "m" entao
                         Matriculas ()
                       senao
                          se resposta <> "pi" entao
                             escreval ("Consulte o guia.")
                          fimse
                      fimse
                  fimse
              fimse
          ate (resposta = "1")ou(resposta = "m")ou(resposta = "p")ou(resposta = "pi")
       fimse
    fimse
  fimse
 senao
    se curso[n] = "Licenciatura em Estatística" entao
       se resposta <> "2" entao
          escreval ("       _________________________________________________________________________________________________________")
          escreval ("      |                                                                                                         |")
          escreval ("      |                                               SIGA - UEM                                                |")
          escreval ("      |_________________________________________________________________________________________________________|")
          escreval ("      |                    |                                                                                    |")
          escreval ("      |                    | Inscrições ativas nesse semestre:                                      SALDO       |")
          escreval ("      |                    |                                                                ------------------- |")
          escreval ("      |                    |                                                                 BIM - ", espacop1, saldo1[n], ".00 MT |")
          escreval ("      |                    |                                                                 BCI - ", espacop2, saldo2[n], ".00 MT |")
          escreval ("      |                    |                                                                                    |")
          escreval ("      |                    |  Disciplina                         | Ano | Semestre | Tipo       | Estado         |")
          escreval ("      |                    | ------------------------------------|-----|----------|------------|--------------  |")
          escreval ("      |                    |  Estatística Básica                 |  1  |     1    | Frequência | Activa         |")
          escreval ("      |                    | ------------------------------------|-----|----------|------------|--------------  |")
          escreval ("      |                    |  Álgebra Linear e Geometria         |  1  |     1    | Frequência | Activa         |")
          escreval ("      |                    |  Analítica                          |     |          |            |                |")
          escreval ("      |                    | ------------------------------------|-----|----------|------------|--------------  |")
          escreval ("      |                    |  Análise Matemática I               |  1  |     1    | Frequência | Activa         |")
          escreval ("      |                    | ------------------------------------|-----|----------|------------|--------------  |")
          escreval ("      |                    |  Introdução às Tecnologias de       |  1  |     1    | Frequência | Activa         |")
          escreval ("      |                    |  Informação e Comunicações          |     |          |            |                |")
          escreval ("      |                    | ------------------------------------|-----|----------|------------|--------------  |")
          escreval ("      |                    |  Métodos de Estudo e Habilidades    |  1  |     1    | Frequência | Activa         |")
          escreval ("      |                    |  para a Vida                        |     |          |            |                |")
          escreval ("      |                    | ------------------------------------|-----|----------|------------|--------------  |                   ________________________")
          escreval ("      |                    |  Matemática Básica                  |  1  |     1    | Frequência | Activa         |                  |                        |")
          escreval ("      |                    | ------------------------------------|-----|----------|------------|--------------  |                  |          Guia          |")
          escreval ("      |____________________|  Estatística Descritiva             |  1  |     1    | Frequência | Activa         |                  |------------------------|")
          escreval ("      |                    | ------------------------------------|-----|----------|------------|--------------  |                  | Página 2 = '2'         |")
          escreval ("      |     Pagamentos     |  Lógica e Teoria de Conjuntos       |  1  |     1    | Frequência | Activa         |                  |------------------------|")
          escreval ("      |____________________| ------------------------------------|-----|----------|------------|--------------  |                  | Matrículas = 'm'       |")
          escreval ("      |                    |                                     |     |          |            |                |                  |------------------------|")
          escreval ("      |                    |                                                                               1|2  |                  | Página Inicial = 'pi'  |")
          escreval ("      |____________________|____________________________________________________________________________________|                  |________________________|")
          escreval ()
          escreval ()
          escreval ("O que deseja fazer? (Consulte o guia.)")
          repita
             leia (resposta)
             se resposta = "2" entao
                Inscricoes ()
              senao
                 se resposta = "m" entao
                    Matriculas ()
                  senao
                     se resposta <> "pi" entao
                        escreval ("Consulte o guia.")
                     fimse
                 fimse
             fimse
          ate (resposta = "2")ou(resposta = "m")ou(resposta = "pi")
        senao
           valor_i <- "450.00 MT"
           espacop3 <- "    "
           tempp <- compr("                                       ") - compr(estado[n])
           espacop4 <- ""
           para conta <- 1 ate tempp faca
                espacop4 <- espacop4 + " "
           fimpara
           escreval ("       _________________________________________________________________________________________________________")
           escreval ("      |                                                                                                         |")
           escreval ("      |                                               SIGA - UEM                                                |")
           escreval ("      |_________________________________________________________________________________________________________|")
           escreval ("      |                    |                                                                                    |")
           escreval ("      |                    | Inscrição para o próximo semestre:                                    SALDO        |")
           escreval ("      |                    |                                                               -------------------- |")
           escreval ("      |                    |                                                                 BIM - ", espacop1, saldo1[n], ".00 MT |")
           escreval ("      |                    |                                                                 BCI - ", espacop2, saldo2[n], ".00 MT |")
           escreval ("      |                    |                                                                                    |")
           escreval ("      |                    |  Disciplina                         | Ano | Semestre | Tipo       | Estado         |")
           escreval ("      |                    | ------------------------------------|-----|----------|------------|--------------  |")
           escreval ("      |                    |  Economia                           |  1  |     2    | Frequência | Inactiva       |")
           escreval ("      |                    |                                     |     |          |            |                |")
           escreval ("      |                    |                                                                                    |")
           escreval ("      |                    |                                                                                    |")
           escreval ("      |                    |                                                                                    |")
           escreval ("      |                    |                                                                                    |")
           escreval ("      |                    |                                                                                    |")
           escreval ("      |                    |                                                                                    |")
           escreval ("      |                    |                                                                                    |")
           escreval ("      |                    |                                                                                    |")
           escreval ("      |                    |                                                                                    |                   ________________________")
           escreval ("      |                    |                                                                                    |                  |                        |")
           escreval ("      |                    |                             Valor a pagar | Estado                                 |                  |          Guia          |")
           escreval ("      |                    |                            ---------------|----------------                        |                  |------------------------|")
           escreval ("      |                    |                             ", valor_i, espacop3, "|", estado[n], espacop4, "|                  | Página 1 = '1'         |")
           escreval ("      |____________________|                                                                                    |                  |------------------------|")
           escreval ("      |                    |                                                                                    |                  | Pagar inscrição = 'p'  |")
           escreval ("      |     Pagamentos     |                                                                                    |                  |------------------------|")
           escreval ("      |____________________|                                                                                    |                  | Matrículas = 'm'       |")
           escreval ("      |                    |                                                                                    |                  |------------------------|")
           escreval ("      |                    |                                                                               2|2  |                  | Página Inicial = 'pi'  |")
           escreval ("      |____________________|____________________________________________________________________________________|                  |________________________|")
           escreval ()
           escreval ()
           escreval ("O que deseja fazer? (Consulte o guia.)")
           repita
              leia (resposta)
              se resposta = "1" entao
                 Inscricoes ()
               senao
                  se resposta = "p" entao
                     Pagar ()
                   senao
                      se resposta = "m" entao
                         Matriculas ()
                       senao
                          se resposta <> "pi" entao
                             escreval ("Consulte o guia.")
                          fimse
                      fimse
                  fimse
              fimse
           ate (resposta = "1")ou(resposta = "p")ou(resposta = "m")ou(resposta = "pi")
       fimse
     senao
        se curso[n] = "Licenciatura em Ciências de Informação Geográfica" entao
           se resposta <> "2" entao
              escreval ("       _________________________________________________________________________________________________________")
              escreval ("      |                                                                                                         |")
              escreval ("      |                                               SIGA - UEM                                                |")
              escreval ("      |_________________________________________________________________________________________________________|")
              escreval ("      |                    |                                                                                    |")
              escreval ("      |                    | Inscrições ativas nesse semestre:                                      SALDO       |")
              escreval ("      |                    |                                                                ------------------- |")
              escreval ("      |                    |                                                                 BIM - ", espacop1, saldo1[n], ".00 MT |")
              escreval ("      |                    |                                                                 BCI - ", espacop2, saldo2[n], ".00 MT |")
              escreval ("      |                    |                                                                                    |")
              escreval ("      |                    |  Disciplina                         | Ano | Semestre | Tipo       | Estado         |")
              escreval ("      |                    | ------------------------------------|-----|----------|------------|--------------  |")
              escreval ("      |                    |  Estatística Básica                 |  1  |     1    | Frequência | Activa         |")
              escreval ("      |                    | ------------------------------------|-----|----------|------------|--------------  |")
              escreval ("      |                    |  Análise Matemática I               |  1  |     1    | Frequência | Activa         |")
              escreval ("      |                    | ------------------------------------|-----|----------|------------|--------------  |")
              escreval ("      |                    |  Fundamentos de Geometria           |  1  |     1    | Frequência | Activa         |")
              escreval ("      |                    | ------------------------------------|-----|----------|------------|--------------  |")
              escreval ("      |                    |  Introdução às Tecnologias de       |  1  |     1    | Frequência | Activa         |")
              escreval ("      |                    |  Informação e Comunicações          |     |          |            |                |")
              escreval ("      |                    | ------------------------------------|-----|----------|------------|--------------  |")
              escreval ("      |                    |  Métodos de Estudo e Habilidades    |  1  |     1    | Frequência | Activa         |")
              escreval ("      |                    |  para a Vida                        |     |          |            |                |")
              escreval ("      |                    | ------------------------------------|-----|----------|------------|--------------  |")
              escreval ("      |                    |  Matemática Básica                  |  1  |     1    | Frequência | Activa         |                   ________________________")
              escreval ("      |                    | ------------------------------------|-----|----------|------------|--------------  |                  |                        |")
              escreval ("      |                    |  Álgebra Linear e Geometria         |  1  |     1    | Frequência | Activa         |                  |          Guia          |")
              escreval ("      |____________________|  Analítica                          |     |          |            |                |                  |------------------------|")
              escreval ("      |                    | ------------------------------------|-----|----------|------------|--------------  |                  | Página 2 = '2'         |")
              escreval ("      |     Pagamentos     |  Probabilidade e Estatística        |  1  |     1    | Frequência | Activa         |                  |------------------------|")
              escreval ("      |____________________|                                     |     |          |            |                |                  | Matrículas = 'm'       |")
              escreval ("      |                    |                                                                                    |                  |------------------------|")
              escreval ("      |                    |                                                                               1|2  |                  | Página Inicial = 'pi'  |")
              escreval ("      |____________________|____________________________________________________________________________________|                  |________________________|")
              escreval ()
              escreval ()
              escreval ("O que deseja fazer? (Consulte o guia.)")
              repita
                 leia (resposta)
                 se resposta = "2" entao
                    Inscricoes ()
                  senao
                     se resposta = "m" entao
                        Matriculas ()
                      senao
                         se resposta <> "pi" entao
                            escreval ("Consulte o guia.")
                         fimse
                     fimse
                 fimse
              ate (resposta = "2")ou(resposta = "m")ou(resposta = "pi")
            senao
               valor_i <- "900.00 MT"
               espacop3 <- "    "
               tempp <- compr("                                       ") - compr(estado[n])
               espacop4 <- ""
               para conta <- 1 ate tempp faca
                    espacop4 <- espacop4 + " "
               fimpara
               escreval ("       _________________________________________________________________________________________________________")
               escreval ("      |                                                                                                         |")
               escreval ("      |                                               SIGA - UEM                                                |")
               escreval ("      |_________________________________________________________________________________________________________|")
               escreval ("      |                    |                                                                                    |")
               escreval ("      |                    | Inscrições para o próximo semestre:                                   SALDO        |")
               escreval ("      |                    |                                                               -------------------- |")
               escreval ("      |                    |                                                                 BIM - ", espacop1, saldo1[n], ".00 MT |")
               escreval ("      |                    |                                                                 BCI - ", espacop2, saldo2[n], ".00 MT |")
               escreval ("      |                    |                                                                                    |")
               escreval ("      |                    |  Disciplina                         | Ano | Semestre | Tipo       | Estado         |")
               escreval ("      |                    | ------------------------------------|-----|----------|------------|--------------  |")
               escreval ("      |                    |  Lógica e Teoria de Conjuntos       |  1  |     2    | Frequência | Inactiva       |")
               escreval ("      |                    | ------------------------------------|-----|----------|------------|--------------  |")
               escreval ("      |                    |  Fundamentos de Geologia e          |  1  |     2    | Frequência | Inactiva       |")
               escreval ("      |                    |  Geoformologia                      |     |          |            |                |")
               escreval ("      |                    |                                     |     |          |            |                |")
               escreval ("      |                    |                                                                                    |")
               escreval ("      |                    |                                                                                    |")
               escreval ("      |                    |                                                                                    |")
               escreval ("      |                    |                                                                                    |")
               escreval ("      |                    |                                                                                    |")
               escreval ("      |                    |                                                                                    |                   ________________________")
               escreval ("      |                    |                                                                                    |                  |                        |")
               escreval ("      |                    |                             Valor a pagar | Estado                                 |                  |          Guia          |")
               escreval ("      |                    |                            ---------------|----------------                        |                  |------------------------|")
               escreval ("      |                    |                             ", valor_i, espacop3, "| ", estado[n], espacop4, "|                  | Página 1 = '1'         |")
               escreval ("      |____________________|                                                                                    |                  |------------------------|")
               escreval ("      |                    |                                                                                    |                  | Pagar inscrição = 'p'  |")
               escreval ("      |     Pagamentos     |                                                                                    |                  |------------------------|")
               escreval ("      |____________________|                                                                                    |                  | Matrículas = 'm'       |")
               escreval ("      |                    |                                                                                    |                  |------------------------|")
               escreval ("      |                    |                                                                               2|2  |                  | Página Inicial = 'pi'  |")
               escreval ("      |____________________|____________________________________________________________________________________|                  |________________________|")
               escreval ()
               escreval ()
               escreval ("O que deseja fazer? (Consulte o guia.)")
               repita
                  leia (resposta)
                  se resposta = "1" entao
                     Inscricoes ()
                   senao
                      se resposta = "p" entao
                         Pagar ()
                       senao
                          se resposta = "m" entao
                             Matriculas ()
                           senao
                              se resposta <> "pi" entao
                                 escreval ("Consulte o guia.")
                              fimse
                          fimse
                      fimse
                  fimse
               ate (resposta = "1")ou(resposta = "p")ou(resposta = "m")ou(resposta = "pi")
           fimse
        fimse
    fimse
fimse

CarregarMenuComGuia ()
 
FimProcedimento


Procedimento Pagar ()

var

insuficiente : logico
valor : inteiro

Inicio

limpatela
escreval ("                          Saldo")
escreval ("                    -----------------")
escreval ("                     BIM - ", saldo1[n]),".00 MT"
escreval ("                     BCI - ", saldo2[n]),".00 MT"
escreval ()
escreval ()
escreval ("Inscrições do próximo semestre do curso de '", curso[n], "'")
escreval ()
escreval ("                    Total a pagar: ", valor_i)
escreval ()
escreval ()
escreval ("Deseja efetuar esse pagamento com que cartão? (1 = BIM, 2 = BCI)")
escreval ()
valor <- caracpnum(copia(valor_i;1,compr(valor_i) - 4))
leia (resposta)
enquanto (resposta <> "1")e(resposta <> "2") faca
         escreval ("Resposta inválida. Tente novamente. (1 = BIM, 2 = BCI)")
fimenquanto
repita
  insuficiente <- falso
   se resposta = "1" entao
      se caracpnum(saldo1[n]) < caracpnum(valor_i) entao
         escreval ("Saldo insuficiente para efetuar esse pagamento.")
         insuficiente <- verdadeiro
         timer 1500
         timer 0
         escreval ()
         escreval ("Deseja efetuar esse pagamento com o cartão BCI?")
         leia (resposta)
         enquanto resposta <> "s")e(resposta <> "n") faca
                  escreval ("Resposta inválida. Tente novamente. (s = sim, n = não)")
                  leia (resposta)
         fimenquanto
         se resposta = "s" entao
            resposta <- "2"
         fimse
       senao
          saldonum <- caracpnum(saldo1[n]) - valor
          saldo1[n] <- copia(saldonum)
      fimse
   fimse
   se resposta = "2" entao
      caracpnum(saldo2[n]) < caracpnum(valor_i) entao
         escreval ("Saldo insuficiente para efetuar esse pagamento.")
         insuficiente <- verdadeiro
         timer 1500
         timer 0
         escreval ()
         escreval ("Deseja efetuar esse pagamento com o cartão BIM?")
         leia (resposta)
         enquanto resposta <> "s")e(resposta <> "n") faca
                  escreval ("Resposta inválida. Tente novamente. (s = sim, n = não)")
                  leia (resposta)
         fimenquanto
         se resposta = "s" entao
            resposta <- "1"
         fimse
       senao
          saldonum <- caracpnum(saldo2[n]) - valor
          saldo2[n] <- copia(saldonum)
      fimse
   fimse
ate (resposta = "n")ou(insuficiente = falso)
       se resposta = "n" entao
            limpatela
            escreval ("Pedido cancelado.")
            timer 1500
            timer 0
            para conta <- 1 ate 3 faca
                 limpatela
                 escreva ("Redirecionando o usuário...")
                 timer 1200
                 timer 0
                 limpatela
                 escreva ("Redirecionando o usuário..")
                 timer 1200
                 timer 0
            fimpara
            Inscricoes ()
         fimse
       senao
          para conta <- 1 ate 3 faca
               limpatela
               escreva ("Processando o seu pedido...")
               timer 1200
               timer 0
               limpatela
               escreva ("Processando o seu pedido..")
               timer 1200
               timer 0
          fimpara
          limpatela
          estado[n] <- "Pendente"
          escreval ("O seu pedido será confirmado dentro de 48 horas.")
          timer 1800
          timer 0
          escreval ()
          escreval ("Aperte 'c' para continuar.")
          repita
             leia (resposta)
             se resposta <> "c" entao
                escreval (resposta)
                escreval ("Resposta inválida")
             fimse
          ate resposta = "c"
              Inscricoes ()
FimProcedimento

Procedimento Sobre ()

inicio

   limpatela
   escreval ("       _________________________________________________________________________________________________________")
   escreval ("      |                                                                                                         |")
   escreval ("      |                                               SIGA - UEM                                                |")
   escreval ("      |_________________________________________________________________________________________________________|")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    | A Universidade Eduardo Mondlane (UEM), como instituição pluridisciplinar de        |")
   escreval ("      |                    | formação de profissionais de nível superior, de pesquisa, de extensão e de domínio |")
   escreval ("      |                    | e cultivo do saber humano, tem a honra de se apresentar a toda a Comunidade        |")
   escreval ("      |                    | Universitária, aos seus parceiros nacionais e estrangeiros e a toda a sociedade em |")
   escreval ("      |                    | geral.                                                                             |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    | Somos uma universidade aberta à Região e ao Mundo e pretendemos, com este portal,  |")
   escreval ("      |                    | oferecer mais um canal de interacção e de comunicação com toda a sociedade.        |")
   escreval ("      |                    | Os nossos serviços e produtos só têm valor e fazem sentido quando este pode        |")
   escreval ("      |                    | contribuir para o desenvolvimento da sociedade e acarinhados pelos nossos          |")
   escreval ("      |                    | colaboradores e parceiros. A expansão da nossa instituição a nível nacional,       |")
   escreval ("      |                    | regional e internacional tornar-se uma realidade crescente e de qualidade.         |")
   escreval ("      |                    | Esperamos que todos quanto visitarem este portal encontrem nele um instrumento     |")
   escreval ("      |                    | para um melhor conhecimentoe aproximação à nossa UEM.                              |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    | Um dos nossos valores é a colegialidade - a UEM é uma comunidade colegial de       |")
   escreval ("      |                    | investigadores, docentes, corpo técnico-administrativo e estudantes, cujas         |")
   escreval ("      |                    | práticas acadêmicas e de gestão são informadas por processos decisórios emanados   |")
   escreval ("      |                    | dos órgãos colegiais.                                                              |")
   escreval ("      |                    | Por essa razão, criamos o SIGA (Sistema Integrado de Gestão Académica) para        |")
   escreval ("      |                    | facilitar a comunicação entre o corpo estudantil e os seus ensindadores.           |")
   escreval ("      |                    | Com o SIGA, também pode-se efetuar pagamentos, ver a lista de docentes e           |")
   escreval ("      |                    | estudantes do DMI, ver o calendário académico e compartilhar as pautas.            |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |____________________|                                                                                    |")
   escreval ("      |                    |                                                                                    |")
   escreval ("      |       Sobre        |                                                                                    |")
   escreval ("      |____________________|____________________________________________________________________________________|")
   escreval ()
   escreval ()
   escreval ("Aperte 'v' para voltar à página inicial.")
   repita
      leia (respostanet)
      se respostanet <> "v" entao
         escreval ("Resposta inválida.")
      fimse
   ate (respostanet = "v")
   CarregarMenuComGuia ()

FimProcedimento

Procedimento  Tempos ()

Var

hrs, min, seg : inteiro

Inicio

repita

hrs <- 0
min <- 0

limpatela
escreval ("Quantos segundos deseja converter?")
  leia (num)
  enquanto num < 0 faca
    escreval ("Use somente números positivos.")
    leia (num)
  fimenquanto
    seg <- num
    se num>=3600 entao
      hrs <- num DIV 3600
      num <- num - (hrs*3600)
    fimse
    se num>=60 entao
      min <- num DIV 60
      num <- num - (min*60)
    fimse
  escreval (seg, " segundos =", hrs, " horas e", min, " minutos e", num, " segundos")
escreval ()

escreval ("Repetir? (s = sim, n = não)")
leia (resposta)
    enquanto (resposta <> "s")e(resposta <> "n") faca
             escreval ("Use apenas s(sim), ou n(não).")
             leia (resposta)
    fimenquanto
ate resposta = "n"
Menu ()

Fimprocedimento

Procedimento SomadeNumeros ()

Var

nums : vetor[1..5] de real
msg : vetor[1..5] de caractere
total : real

Inicio

repita

total <- 0
msg[1] <- "Primeiro número:"
msg[2] <- "Segundo número:"
msg[3] <- "Terceiro número:"
msg[4] <- "Quarto número:"
msg[5] <- "Quinto número:"

limpatela
escreval ("Quais são os seus números?")
para conta <- 1 ate 5 faca
     leia (num)
     total <- total + num
     nums[conta] <- num
fimpara
limpatela
escreval ("O total é:", total)
escreval ("Os números são: ")
para conta <- 1 ate 5 faca
     escreval (msg[conta], nums[conta])
fimpara

escreval ("Repetir? (s = sim, n = não)")
leia (resposta)
    enquanto (resposta <> "s")e(resposta <> "n") faca
             escreval ("Use apenas s(sim), ou n(não).")
             leia (resposta)
    fimenquanto
ate resposta = "n"
Menu ()


Fimprocedimento

Procedimento PositivoseNegativos()

Var

posi, neg : vetor[1..20] de real
medianeg, totalneg : real
contador, conta1, conta2 : inteiro
list : caractere

Inicio

repita

list <- ""
conta1 <- 0
conta2 <- 0

limpatela
escreval ("Escolha 20 números.")
para contador <- 1 ate 20 faca
     leia (num)
     se n >= 0 entao
        conta1 <- conta1 + 1
        posi[conta1] <- num
      senao
         conta2 <- conta2 + 1
         neg[conta2] <- num
         totalneg <- totalneg + num
     fimse
fimpara
para contador <- 1 ate conta1 faca
    se conta <= (conta1 - 2) entao
       list <- list + numpcarac(posi[conta]) + ", "
      senao
       se conta = (conta1 - 1) entao
        list <- list + numpcarac(posi[conta]) + " e "
       senao
          list <- list + numpcarac(posi[conta])
       fimse
    fimse
fimpara
medianeg <- totalneg/conta2
escreval ("Os números positivos são: ", list)
escreval ("A média aritmética dos números negativos é:", medianeg)

escreval ("Repetir? (s = sim, n = não)")
leia (resposta)
    enquanto (resposta <> "s")e(resposta <> "n") faca
             escreval ("Use apenas s(sim), ou n(não).")
             leia (resposta)
    fimenquanto
ate resposta = "n"
Menu ()


Fimprocedimento

Procedimento Salarios ()

var

   vogais : vetor[1..40] de caractere
   espacos : vetor[1..10] de inteiro
   caracteres : vetor[1..40] de inteiro
   validomai, validomin, validosim, vogs: vetor[1..40] de logico
   nome, palavra, letr, resp : caractere
   con, conta2, conte, mediador, mediador2, letra, letratemp, valido, comprimento, comprimento2, comp, posicao, capital, passe, quantidade, perm, perm2, temp, temp2, diminuido, branco : inteiro
   caminho1, caminho2, caminho3, error, repeticao, permitido, permitido2, permitido3, presente : logico
   nomemaior, nomemenor, stemp, salariomaior, salariomenor : caractere
   contador, num, salario, maiortemp, menortemp : inteiro
   invalido : logico

Inicio

repita

salariomaior <- ""
salariomenor <- ""
vogais[1] <- "A"
vogais[2] <- "À"
vogais[3] <- "Á"
vogais[4] <- "Â"
vogais[5] <- "Ã"
vogais[6] <- "E"
vogais[7] <- "È"
vogais[8] <- "É"
vogais[9] <- "Ê"
vogais[10] <- "I"
vogais[11] <- "Ì"
vogais[12] <- "Í"
vogais[13] <- "Î"
vogais[14] <- "O"
vogais[15] <- "Ò"
vogais[16] <- "Ó"
vogais[17] <- "Ô"
vogais[18] <- "Õ"
vogais[19] <- "U"
vogais[20] <- "Ù"
vogais[21] <- "Ú"
vogais[22] <- "Û"

conta2 <- 0


limpatela
escreval ("Quantos funcionários são?")
 leia (num)
 limpatela
 enquanto num <= 0 faca
      limpatela
      escreval ("Número inválido de funcionários. Tente novamente.")
      leia (num)
 fimenquanto
para contador <- 1 ate num faca
     limpatela
     escreval ("Nome do", contador, "º funcionário: ")
    repita
       para cont <- 1 ate 40 faca
            validomai[cont] <- falso
            validomin[cont] <- falso
            validosim[cont] <- falso
            vogs[cont] <- falso
            caracteres[cont] <- 0
       fimpara
       mediador <- 1
       mediador2 <- 0
       valido <- 0
       conte <- 0
       passe <- 0
       quantidade <- 0
       perm <- 0
       perm2 <- 0
       branco <- 0
       temp <- 1
       caminho1 <- falso
       caminho2 <- falso
       caminho3 <- falso
       error <- falso
       repeticao <- falso
       permitido <- falso
       permitido2 <- verdadeiro
       permitido3 <- verdadeiro

          repita
            leia (nome)
            comprimento <- compr(nome)
            se comprimento = 0 entao
               limpatela
               escreval ("Funcionário sem nome? :(")
             senao
                se comprimento < 2 entao
                   limpatela
                   escreval (nome)
                   escreval ("Nome curto demais.")
                 senao
                    se comprimento > 40 entao
                       limpatela
                       escreval (nome)
                       escreval ("Nome longo demais")
                    fimse
                fimse
            fimse
           ate (comprimento >= 2)e(comprimento < 40)
           para cont <- 1 ate 10 faca
                 se nome = nomes[cont] entao
                    repeticao <- verdadeiro
                 fimse
            fimpara
           comp <- comprimento - 2

         para cont <- 1 ate comprimento faca
              letra <- asc(copia(nome;mediador,1))
              caracteres[cont] <- letra
              para con <- 1 ate comprimento faca
                   se cont = 1 entao
                       letratemp <- asc(copia(nome;con,1))
                       se letratemp = 32 entao
                          branco <- branco + 1
                       fimse
                   fimse
              fimpara
              se branco = comprimento entao
                 limpatela
                  escreval (nome)
                  escreval ("Campo branco não vale. D:")
                  caminho2 <- verdadeiro
                  caminho1 <- verdadeiro
                  valido <- -10
              fimse
//-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
              se ((letra >= 65)e(letra <= 90))ou((letra >= 192)e(letra <= 195))ou(letra = 199)ou((letra >= 200)e(letra <= 206))ou((letra >= 210)e(letra <= 213))ou((letra >= 217)e(letra <= 219)) entao
                  validomai[cont] <- verdadeiro
               senao
                  se ((letra >= 97)e(letra <= 122))ou((letra >= 224)e(letra <= 227))ou(letra = 231)ou((letra >= 233)e(letra <= 238))ou((letra >= 242)e(letra <= 245))ou((letra >= 249)e(letra <= 251)) entao
                      validomin[cont] <- verdadeiro
                   senao
                      se (letra = 32)ou(letra = 39)ou(letra = 45) entao
                          validosim[cont] <- verdadeiro
                      fimse
                  fimse
              fimse

          se (caracteres[cont] = 97)ou(caracteres[cont] = 101)ou(caracteres[cont] = 105)ou(caracteres[cont] = 111) entao
              vogs[cont] <- verdadeiro
          fimse
          se  (pos("Da", nome) >= comp)ou((pos("Da", nome) = 1)e((pos(" ", nome) = 3)ou((pos("s", nome) = 3)e(pos(" ", nome) = 4))))ou(pos("De", nome) >= comp)ou((pos("De", nome) = 1)e(pos(" ", nome) = 3))ou(pos("Di", nome) >= comp)ou((pos("Di", nome) = 1)e(pos(" ", nome) = 3))ou(pos("Do", nome) >= comp)ou((pos("Do", nome) = 1)e((pos(" ", nome) = 3)ou((pos("s", nome) = 3)e(pos(" ", nome) = 4)))) entao
               error <- verdadeiro
          fimse
          se  (pos("Ç", nome) = 1)ou(pos("Ç", nome) = pos(" ", nome) + 1)ou(pos("ç", nome) = pos(" ", nome) - 1)ou(pos("ç", nome) = comprimento) entao
              error <- verdadeiro
          fimse

          se cont > 1 entao
             se (vogs[comprimento] = verdadeiro)e(caracteres[comprimento-1] = 68) entao
                 error <- verdadeiro
             fimse
          fimse
          se cont > 2 entao
             se (caracteres[comprimento] = 115)e(vogs[comprimento-1] = verdadeiro)e(caracteres[comprimento-2] = 68) entao
                 error <- verdadeiro
              senao
                 se (vogs[comprimento] = verdadeiro)e(caracteres[comprimento-1] = 100)e(caracteres[comprimento-2] = 32) entao
                      error <- verdadeiro
                 fimse
             fimse
          fimse
          se cont > 3 entao
             se ((vogs[cont] = verdadeiro)e(caracteres[cont-1] = 100)e(caracteres[cont-2] = 32))ou((caracteres[cont] = 115)e(vogs[cont-1] = verdadeiro)e(caracteres[cont-2] = 100)e(caracteres[cont-3] = 32))ou((caracteres[cont-2] = 32)e(caracteres[cont-1] = 100)e(caracteres[cont] = 39)) entao
                  permitido3 <- verdadeiro
             fimse
             se (caracteres[comprimento] = 115)e(vogs[comprimento-1] = verdadeiro)e(caracteres[comprimento-2] = 100)e(caracteres[comprimento-3] = 32) entao
                 error <- verdadeiro
             fimse
          fimse
//-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
              para conte <- 1 ate comprimento faca
                   se copia(nome;conte, 1) = "'" entao
                      quantidade <- quantidade + 1
                      presente <- verdadeiro
                      letr <- copia(nome;conte+1, 1)
                      para con <- 1 ate 22 faca
                        se vogais[con] = letr entao
                           perm2 <- perm2 + 1
                        fimse
                      fimpara
                   fimse
                     Se (presente = verdadeiro)e(conte < comprimento)e(pos("'", nome) >= 5)e(pos("'", nome) <= (comprimento - 2))e((copia(nome;conte-2,1) = " ")e((copia(nome;conte - 1,1) = "d")ou(copia(nome;conte - 1,1) = "D")) ) entao
                         perm <- perm + 1
                     fimse
                presente <- falso
              fimpara
              se (quantidade <> perm)ou(quantidade <> perm2) entao
                 permitido <- falso
                 limpatela
                   escreval (nome)
                   escreval ("Mau uso da preposição. Tente novamente.")
                   caminho2 <- verdadeiro
                   caminho1 <- verdadeiro
                   cont <- comprimento
              fimse
              se cont = 1 entao
               se validomin[cont] = verdadeiro entao
                   limpatela
                   escreval (nome)
                   escreval ("As iniciais devem ser maiúsculas. Tente novamente. :(")
                   caminho2 <- verdadeiro
                   caminho1 <- verdadeiro
                   cont <- comprimento
                   valido <- -10
               fimse
              fimse
                se (validomai[cont] = verdadeiro) entao
                    valido <- valido + 1
                senao
                   se (validomin[cont] = verdadeiro) entao
                       valido <- valido + 1
                   senao
                      se (validosim[cont] = verdadeiro) entao
                          valido <- valido + 1
                      fimse
                   fimse
                fimse
                se (cont > 1)e((caminho1 = falso)e(caminho2 = falso)) entao
                 se (caracteres[1] = 32)ou(caracteres[comprimento] = 32)ou(caracteres[1] = 45)ou(caracteres[comprimento] = 45)ou((caracteres[cont-1] = 45)e(caracteres[cont] = 32))ou((caracteres[cont] = 45)e(caracteres[cont-1] = 32)) entao
                     limpatela
                     escreval (nome)
                     escreval ("Um nome não pode começar nem terminar com espaço ou traço. Volte a escrever o nome.")
                     caminho1 <- verdadeiro
                     valido <- 0
                 fimse
                fimse
                se (cont > 2)e(caminho1 = falso) entao
                    se ((caracteres[cont] = 32)e(caracteres[cont-1] = 32))ou((caracteres[cont] = 45)e(caracteres[cont-1] = 45)) entao
                        limpatela
                        escreval (nome)
                        escreval ("Um nome não pode ter dois ou mais espaços ou traços seguidos. Volte a escrever o nome.")
                        caminho1 <- verdadeiro
                        valido <- 0
                     senao
                        se ((validomai[cont] = verdadeiro)ou(validomin[cont] = verdadeiro))e(((caracteres[cont] = 32)e(caracteres[cont-1] <> 32)e(caracteres[cont] = 32))ou((caracteres[cont] = 32)e(caracteres[cont-1] <> 32)e(caracteres[cont-2] = 32)ou((caracteres[1] <> 32)e(caracteres[2] = 32))ou((caracteres[(comprimento-1)] = 32)e(caracteres[comprimento] <> 32)e(cont = comprimento))ou((caracteres[1] <> 45)e(caracteres[2] = 45)))) entao
                             limpatela
                             escreval (nome)
                             escreval ("Letras separadas não permitidas. Volte a escrever o nome.")
                             caminho1 <- verdadeiro
                             valido <- 0
                        fimse
                    fimse
                fimse
                se (caminho1 = falso)e(caminho2 = falso)e(cont = comprimento) entao
                    comprimento2 <- comprimento - 2
                    temp <- cont
                    para cont <- 1 ate comprimento2 faca
                      se error = falso entao
                         se (caracteres[cont] = 32)e(validomin[cont+1] = verdadeiro)e((vogs[cont+2] = falso)e(caracteres[cont+2] <> 39)) entao
                             limpatela
                             escreval (nome)
                             escreval ("As iniciais devem ser maiúsculas. Tente novamente.")
                             caminho1 <- verdadeiro
                             valido <- 0
                          senao
                             se caracteres[cont] = 32 entao
                                passe <- passe + 1
                              senao
                                 se (validomin[cont] = falso)e(validomai[cont] = falso)e(validosim[cont] = falso) entao
                                     caminho1 <- falso
                                     caminho2 <- falso
                                     caminho3 <- verdadeiro
                                 fimse
                             fimse
                         fimse
                       senao
                          limpatela
                          escreval (nome)
                          escreval ("Não se pode começar nem terminar o nome dessa forma. Tente novamente.")
                          caminho1 <- verdadeiro
                          valido <- 0
                      fimse
                    fimpara
                      se (passe = 0)e(caminho1 = falso)e(caminho3 = falso)e((validomai[cont] = verdadeiro)ou(validomin[cont] = verdadeiro)) entao
                         limpatela
                         escreval (nome)
                         escreval ("Escreva o apelido.")
                         caminho1 <- verdadeiro
                         valido <- 0
                      fimse
                fimse
                se temp = comprimento entao
                   para con <- 2 ate comprimento faca
                        se (caracteres[1] = caracteres[con])e(caracteres[con-1] <> 32)e(caracteres[con-1] <> 39) entao
                           permitido2 <- falso
                        fimse
                   fimpara
                fimse
                se (cont > 1)e(caminho1 = falso)e(caminho2 = falso)e(caminho3 = falso) entao
                    letr <- copia(nome;cont,1)
                    posicao <- pos(letr, nome)
                    se ((posicao <> 1)e(caracteres[cont-1] <> 32)e(caracteres[cont-1] <> 45)e(caracteres[cont] <> 100))e(validomai[cont] = verdadeiro)ou((temp = comprimento)e(validomai[temp] = verdadeiro))ou(permitido2 = falso) entao
                        se (validomai[cont] = verdadeiro)e(caracteres[cont-1] <> 39) entao
                          limpatela
                          escreval (nome)
                          escreval ("Só as iniciais devem ser maiúsculas. Tente novamente.")
                          caminho1 <- verdadeiro
                          valido <- 0
                        fimse
                    fimse
                fimse
                se temp = comprimento entao
                   cont <- temp
                fimse
                se (caminho1 = falso)e(caminho2 = falso)e(caminho3 = falso)e(cont >= 3) entao
                    diminuido <- caracteres[cont] - 32
                   se ((caracteres[cont] = caracteres[cont-1])e(caracteres[cont] = caracteres[cont-2]))ou((caracteres[cont] = caracteres[cont-1])e(caracteres[cont-2] = diminuido)) entao
                        limpatela
                        escreval (nome)
                        escreval ("Três letras seguidas iguais? Tente novamente.")
                        caminho1 <- verdadeiro
                        valido <- 0
                   fimse
                fimse
             mediador <- mediador + 1
         fimpara

        se (valido <> comprimento)e(caminho1 = falso)e(caminho2 = falso) entao
            limpatela
            escreval (nome)
            escreval ("Nome inválido. Use apenas letras.")
        fimse
    ate valido = comprimento

     limpatela
     escreval ("Qual é o salário de ", nome, " em meticais?")
     repita
       invalido <- falso
       leia (stemp)
       para conta <- 1 ate compr(stemp) faca
            se (copia(stemp;conta,1) <> "0")e(copia(stemp;conta,1) <> "1")e(copia(stemp;conta,1) <> "2")e(copia(stemp;conta,1) <> "3")e(copia(stemp;conta,1) <> "4")e(copia(stemp;conta,1) <> "5")e(copia(stemp;conta,1) <> "6")e(copia(stemp;conta,1) <> "7")e(copia(stemp;conta,1) <> "8")e(copia(stemp;conta,1) <> "9") entao
                limpatela
                escreval (stemp)
                escreval ("Use somente números. Tente novamente.")
                invalido <- verdadeiro
                interrompa
            fimse
       fimpara
     ate invalido = falso
     salario <- int(caracpnum(stemp))
     se contador = 1 entao
        menortemp <- salario
        maiortemp <- salario
        nomemenor <- nome
        nomemaior <- nome
     fimse
     se salario < menortemp entao
        menortemp <- salario
        nomemenor <- nome
      senao
         se salario > maiortemp entao
            maiortemp <- salario
            nomemaior <- nome
         fimse
     fimse
fimpara
stemp <- numpcarac(maiortemp)
para conta <- (compr(stemp)-2) ate 1 passo -3 faca
     se compr(stemp) > 3 entao
        salariomaior <- "," + copia(stemp;conta, 3) + salariomaior
        stemp <- copia(stemp;1,conta-1)
     fimse
fimpara
salariomaior <- stemp + salariomaior + ".00"
stemp <- numpcarac(menortemp)
para conta <- (compr(stemp)-2) ate 1 passo -3 faca
     se compr(stemp) > 3 entao
        salariomenor <- "," + copia(stemp;conta, 3) + salariomenor
        stemp <- copia(stemp;1,conta-1)
     fimse
fimpara
salariomenor <- stemp + salariomenor + ".00"

limpatela
escreval ("O funcionário com o maior salário é ", nomemaior, " com ", salariomaior, " mts.")
escreval ("O funcionário com o menor salário é ", nomemenor, " com ", salariomenor, " mts.")
escreval ()
escreval ("Repetir? (s = sim, n = não)")
leia (resposta)
    enquanto (resposta <> "s")e(resposta <> "n") faca
             escreval ("Use apenas s(sim), ou n(não).")
             leia (resposta)
    fimenquanto
ate resposta = "n"
Menu ()

Fimprocedimento

Procedimento Menu ()

Inicio

pronto <- 1
limpatela
escreval ("Bem-vindo ao menu de execuções!")
escreval ()
escreval ("Escolha uma das opções.")
escreval ()
escreval ("Opção 1: Programa para converter segundos para o formato de horas, minutos, e segundos.")
escreval ()
escreval ("Opção 2: Programa que recebe 5 números e escreve a soma deles e mostra os números.")
escreval ()
escreval ("Opção 3: Programa que recebe 20 números e organiza e mostra os números positivos, se houver, num vetor e mostra a média dos números negativos, se houver.")
escreval ()
escreval ("Opção 4: Programa que recebe o nome de funcionários e o seu salário e mostra o funcionário com o maior salário e o com o menor.")
escreval ()
escreval ("Opção 5: Programa que permite a comunicação entre alunos e docentes, mostra o calendário académico, as turmas do DMI, e permite a compartilhamento das pautas.")
escreval ()
escreval ("Opção 6: Sair")
escreval ()
leia (opcao)
enquanto (opcao < 1)ou(opcao > 6) faca
          escreval ("Opção inválida")
          leia (opcao)
fimenquanto
escolha opcao
   caso 1
     Tempos ()
   caso 2
     SomadeNumeros ()
   caso 3
     PositivoseNegativos ()
   caso 4
     Salarios ()
   caso 5
     chamado <- verdadeiro
     Detalhes ()
   caso 6
     limpatela
     escreval ("Fim")
fimescolha

Fimprocedimento

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...

Menu ()

Fimalgoritmo