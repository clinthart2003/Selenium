rule HIGH_xor_exe_headers
{
strings:

$1 = { 556968722171736e6673606c21 }
$2 = { 566a6b712272706d6570636f22 }
$3 = { 576b6a702373716c6471626e23 }
$4 = { 506c6d772474766b6376656924 }
$5 = { 516d6c762575776a6277646825 }
$6 = { 526e6f75267674696174676b26 }
$7 = { 536f6e74277775686075666a27 }
$8 = { 5c60617b28787a676f7a696528 }
$9 = { 5d61607a29797b666e7b686429 }
$10 = { 5e6263792a7a78656d786b672a }
$11 = { 5f6362782b7b79646c796a662b }
$12 = { 5864657f2c7c7e636b7e6d612c }
$13 = { 5965647e2d7d7f626a7f6c602d }
$14 = { 5a66677d2e7e7c61697c6f632e }
$15 = { 5b67667c2f7f7d60687d6e622f }
$16 = { 447879633060627f7762717d30 }
$17 = { 457978623161637e7663707c31 }
$18 = { 467a7b613262607d7560737f32 }
$19 = { 477b7a603363617c7461727e33 }
$20 = { 407c7d673464667b7366757934 }
$21 = { 417d7c663565677a7267747835 }
$22 = { 427e7f65366664797164777b36 }
$23 = { 437f7e64376765787065767a37 }
$24 = { 4c70716b38686a777f6a797538 }
$25 = { 4d71706a39696b767e6b787439 }
$26 = { 4e7273693a6a68757d687b773a }
$27 = { 4f7372683b6b69747c697a763b }
$28 = { 4874756f3c6c6e737b6e7d713c }
$29 = { 4975746e3d6d6f727a6f7c703d }
$30 = { 4a76776d3e6e6c71796c7f733e }
$31 = { 4b77766c3f6f6d70786d7e723f }
$32 = { 744849530050524f4752414d00 }
$33 = { 754948520151534e4653404c01 }
$34 = { 764a4b510252504d4550434f02 }
$35 = { 774b4a500353514c4451424e03 }
$36 = { 704c4d570454564b4356454904 }
$37 = { 714d4c560555574a4257444805 }
$38 = { 724e4f55065654494154474b06 }
$39 = { 734f4e54075755484055464a07 }
$40 = { 7c40415b08585a474f5a494508 }
$41 = { 7d41405a09595b464e5b484409 }
$42 = { 7e4243590a5a58454d584b470a }
$43 = { 7f4342580b5b59444c594a460b }
$44 = { 7844455f0c5c5e434b5e4d410c }
$45 = { 7945445e0d5d5f424a5f4c400d }
$46 = { 7a46475d0e5e5c41495c4f430e }
$47 = { 7b47465c0f5f5d40485d4e420f }
$48 = { 645859431040425f5742515d10 }
$49 = { 655958421141435e5643505c11 }
$50 = { 665a5b411242405d5540535f12 }
$51 = { 675b5a401343415c5441525e13 }
$52 = { 605c5d471444465b5346555914 }
$53 = { 615d5c461545475a5247545815 }
$54 = { 625e5f45164644595144575b16 }
$55 = { 635f5e44174745585045565a17 }
$56 = { 6c50514b18484a575f4a595518 }
$57 = { 6d51504a19494b565e4b585419 }
$58 = { 6e5253491a4a48555d485b571a }
$59 = { 6f5352481b4b49545c495a561b }
$60 = { 6854554f1c4c4e535b4e5d511c }
$61 = { 6955544e1d4d4f525a4f5c501d }
$62 = { 6a56574d1e4e4c51594c5f531e }
$63 = { 6b57564c1f4f4d50584d5e521f }
$64 = { 142829336030322f2732212d60 }
$65 = { 152928326131332e2633202c61 }
$66 = { 162a2b316232302d2530232f62 }
$67 = { 172b2a306333312c2431222e63 }
$68 = { 102c2d376434362b2336252964 }
$69 = { 112d2c366535372a2237242865 }
$70 = { 122e2f35663634292134272b66 }
$71 = { 132f2e34673735282035262a67 }
$72 = { 1c20213b68383a272f3a292568 }
$73 = { 1d21203a69393b262e3b282469 }
$74 = { 1e2223396a3a38252d382b276a }
$75 = { 1f2322386b3b39242c392a266b }
$76 = { 1824253f6c3c3e232b3e2d216c }
$77 = { 1925243e6d3d3f222a3f2c206d }
$78 = { 1a26273d6e3e3c21293c2f236e }
$79 = { 1b27263c6f3f3d20283d2e226f }
$80 = { 043839237020223f3722313d70 }
$81 = { 053938227121233e3623303c71 }
$82 = { 063a3b217222203d3520333f72 }
$83 = { 073b3a207323213c3421323e73 }
$84 = { 003c3d277424263b3326353974 }
$85 = { 013d3c267525273a3227343875 }
$86 = { 023e3f25762624393124373b76 }
$87 = { 033f3e24772725383025363a77 }
$88 = { 0c30312b78282a373f2a393578 }
$89 = { 0d31302a79292b363e2b383479 }
$90 = { 0e3233297a2a28353d283b377a }
$91 = { 0f3332287b2b29343c293a367b }
$92 = { 0834352f7c2c2e333b2e3d317c }
$93 = { 0935342e7d2d2f323a2f3c307d }
$94 = { 0a36372d7e2e2c31392c3f337e }
$95 = { 0b37362c7f2f2d30382d3e327f }
$96 = { 340809134010120f0712010d40 }
$97 = { 350908124111130e0613000c41 }
$98 = { 360a0b114212100d0510030f42 }
$99 = { 370b0a104313110c0411020e43 }
$100 = { 300c0d174414160b0316050944 }
$101 = { 310d0c164515170a0217040845 }
$102 = { 320e0f15461614090114070b46 }
$103 = { 330f0e14471715080015060a47 }
$104 = { 3c00011b48181a070f1a090548 }
$105 = { 3d01001a49191b060e1b080449 }
$106 = { 3e0203194a1a18050d180b074a }
$107 = { 3f0302184b1b19040c190a064b }
$108 = { 3804051f4c1c1e030b1e0d014c }
$109 = { 3905041e4d1d1f020a1f0c004d }
$110 = { 3a06071d4e1e1c01091c0f034e }
$111 = { 3b07061c4f1f1d00081d0e024f }
$112 = { 241819035000021f1702111d50 }
$113 = { 251918025101031e1603101c51 }
$114 = { 261a1b015202001d1500131f52 }
$115 = { 271b1a005303011c1401121e53 }
$116 = { 201c1d075404061b1306151954 }
$117 = { 211d1c065505071a1207141855 }
$118 = { 221e1f05560604191104171b56 }
$119 = { 231f1e04570705181005161a57 }
$120 = { 2c10110b58080a171f0a191558 }
$121 = { 2d11100a59090b161e0b181459 }
$122 = { 2e1213095a0a08151d081b175a }
$123 = { 2f1312085b0b09141c091a165b }
$124 = { 2814150f5c0c0e131b0e1d115c }
$125 = { 2915140e5d0d0f121a0f1c105d }
$126 = { 2a16170d5e0e0c11190c1f135e }
$127 = { 2b17160c5f0f0d10180d1e125f }
$128 = { d4e8e9f3a0f0f2efe7f2e1eda0 }
$129 = { d5e9e8f2a1f1f3eee6f3e0eca1 }
$130 = { d6eaebf1a2f2f0ede5f0e3efa2 }
$131 = { d7ebeaf0a3f3f1ece4f1e2eea3 }
$132 = { d0ecedf7a4f4f6ebe3f6e5e9a4 }
$133 = { d1edecf6a5f5f7eae2f7e4e8a5 }
$134 = { d2eeeff5a6f6f4e9e1f4e7eba6 }
$135 = { d3efeef4a7f7f5e8e0f5e6eaa7 }
$136 = { dce0e1fba8f8fae7effae9e5a8 }
$137 = { dde1e0faa9f9fbe6eefbe8e4a9 }
$138 = { dee2e3f9aafaf8e5edf8ebe7aa }
$139 = { dfe3e2f8abfbf9e4ecf9eae6ab }
$140 = { d8e4e5ffacfcfee3ebfeede1ac }
$141 = { d9e5e4feadfdffe2eaffece0ad }
$142 = { dae6e7fdaefefce1e9fcefe3ae }
$143 = { dbe7e6fcaffffde0e8fdeee2af }
$144 = { c4f8f9e3b0e0e2fff7e2f1fdb0 }
$145 = { c5f9f8e2b1e1e3fef6e3f0fcb1 }
$146 = { c6fafbe1b2e2e0fdf5e0f3ffb2 }
$147 = { c7fbfae0b3e3e1fcf4e1f2feb3 }
$148 = { c0fcfde7b4e4e6fbf3e6f5f9b4 }
$149 = { c1fdfce6b5e5e7faf2e7f4f8b5 }
$150 = { c2feffe5b6e6e4f9f1e4f7fbb6 }
$151 = { c3fffee4b7e7e5f8f0e5f6fab7 }
$152 = { ccf0f1ebb8e8eaf7ffeaf9f5b8 }
$153 = { cdf1f0eab9e9ebf6feebf8f4b9 }
$154 = { cef2f3e9baeae8f5fde8fbf7ba }
$155 = { cff3f2e8bbebe9f4fce9faf6bb }
$156 = { c8f4f5efbceceef3fbeefdf1bc }
$157 = { c9f5f4eebdedeff2faeffcf0bd }
$158 = { caf6f7edbeeeecf1f9ecfff3be }
$159 = { cbf7f6ecbfefedf0f8edfef2bf }
$160 = { f4c8c9d380d0d2cfc7d2c1cd80 }
$161 = { f5c9c8d281d1d3cec6d3c0cc81 }
$162 = { f6cacbd182d2d0cdc5d0c3cf82 }
$163 = { f7cbcad083d3d1ccc4d1c2ce83 }
$164 = { f0cccdd784d4d6cbc3d6c5c984 }
$165 = { f1cdccd685d5d7cac2d7c4c885 }
$166 = { f2cecfd586d6d4c9c1d4c7cb86 }
$167 = { f3cfced487d7d5c8c0d5c6ca87 }
$168 = { fcc0c1db88d8dac7cfdac9c588 }
$169 = { fdc1c0da89d9dbc6cedbc8c489 }
$170 = { fec2c3d98adad8c5cdd8cbc78a }
$171 = { ffc3c2d88bdbd9c4ccd9cac68b }
$172 = { f8c4c5df8cdcdec3cbdecdc18c }
$173 = { f9c5c4de8ddddfc2cadfccc08d }
$174 = { fac6c7dd8ededcc1c9dccfc38e }
$175 = { fbc7c6dc8fdfddc0c8ddcec28f }
$176 = { e4d8d9c390c0c2dfd7c2d1dd90 }
$177 = { e5d9d8c291c1c3ded6c3d0dc91 }
$178 = { e6dadbc192c2c0ddd5c0d3df92 }
$179 = { e7dbdac093c3c1dcd4c1d2de93 }
$180 = { e0dcddc794c4c6dbd3c6d5d994 }
$181 = { e1dddcc695c5c7dad2c7d4d895 }
$182 = { e2dedfc596c6c4d9d1c4d7db96 }
$183 = { e3dfdec497c7c5d8d0c5d6da97 }
$184 = { ecd0d1cb98c8cad7dfcad9d598 }
$185 = { edd1d0ca99c9cbd6decbd8d499 }
$186 = { eed2d3c99acac8d5ddc8dbd79a }
$187 = { efd3d2c89bcbc9d4dcc9dad69b }
$188 = { e8d4d5cf9cccced3dbceddd19c }
$189 = { e9d5d4ce9dcdcfd2dacfdcd09d }
$190 = { ead6d7cd9ececcd1d9ccdfd39e }
$191 = { ebd7d6cc9fcfcdd0d8cdded29f }
$192 = { 94a8a9b3e0b0b2afa7b2a1ade0 }
$193 = { 95a9a8b2e1b1b3aea6b3a0ace1 }
$194 = { 96aaabb1e2b2b0ada5b0a3afe2 }
$195 = { 97abaab0e3b3b1aca4b1a2aee3 }
$196 = { 90acadb7e4b4b6aba3b6a5a9e4 }
$197 = { 91adacb6e5b5b7aaa2b7a4a8e5 }
$198 = { 92aeafb5e6b6b4a9a1b4a7abe6 }
$199 = { 93afaeb4e7b7b5a8a0b5a6aae7 }
$200 = { 9ca0a1bbe8b8baa7afbaa9a5e8 }
$201 = { 9da1a0bae9b9bba6aebba8a4e9 }
$202 = { 9ea2a3b9eabab8a5adb8aba7ea }
$203 = { 9fa3a2b8ebbbb9a4acb9aaa6eb }
$204 = { 98a4a5bfecbcbea3abbeada1ec }
$205 = { 99a5a4beedbdbfa2aabfaca0ed }
$206 = { 9aa6a7bdeebebca1a9bcafa3ee }
$207 = { 9ba7a6bcefbfbda0a8bdaea2ef }
$208 = { 84b8b9a3f0a0a2bfb7a2b1bdf0 }
$209 = { 85b9b8a2f1a1a3beb6a3b0bcf1 }
$210 = { 86babba1f2a2a0bdb5a0b3bff2 }
$211 = { 87bbbaa0f3a3a1bcb4a1b2bef3 }
$212 = { 80bcbda7f4a4a6bbb3a6b5b9f4 }
$213 = { 81bdbca6f5a5a7bab2a7b4b8f5 }
$214 = { 82bebfa5f6a6a4b9b1a4b7bbf6 }
$215 = { 83bfbea4f7a7a5b8b0a5b6baf7 }
$216 = { 8cb0b1abf8a8aab7bfaab9b5f8 }
$217 = { 8db1b0aaf9a9abb6beabb8b4f9 }
$218 = { 8eb2b3a9faaaa8b5bda8bbb7fa }
$219 = { 8fb3b2a8fbaba9b4bca9bab6fb }
$220 = { 88b4b5affcacaeb3bbaebdb1fc }
$221 = { 89b5b4aefdadafb2baafbcb0fd }
$222 = { 8ab6b7adfeaeacb1b9acbfb3fe }
$223 = { 8bb7b6acffafadb0b8adbeb2ff }
$224 = { b4888993c090928f8792818dc0 }
$225 = { b5898892c191938e8693808cc1 }
$226 = { b68a8b91c292908d8590838fc2 }
$227 = { b78b8a90c393918c8491828ec3 }
$228 = { b08c8d97c494968b83968589c4 }
$229 = { b18d8c96c595978a82978488c5 }
$230 = { b28e8f95c69694898194878bc6 }
$231 = { b38f8e94c79795888095868ac7 }
$232 = { bc80819bc8989a878f9a8985c8 }
$233 = { bd81809ac9999b868e9b8884c9 }
$234 = { be828399ca9a98858d988b87ca }
$235 = { bf838298cb9b99848c998a86cb }
$236 = { b884859fcc9c9e838b9e8d81cc }
$237 = { b985849ecd9d9f828a9f8c80cd }
$238 = { ba86879dce9e9c81899c8f83ce }
$239 = { bb87869ccf9f9d80889d8e82cf }
$240 = { a4989983d080829f9782919dd0 }
$241 = { a5999882d181839e9683909cd1 }
$242 = { a69a9b81d282809d9580939fd2 }
$243 = { a79b9a80d383819c9481929ed3 }
$244 = { a09c9d87d484869b93869599d4 }
$245 = { a19d9c86d585879a92879498d5 }
$246 = { a29e9f85d68684999184979bd6 }
$247 = { a39f9e84d78785989085969ad7 }
$248 = { ac90918bd8888a979f8a9995d8 }
$249 = { ad91908ad9898b969e8b9894d9 }
$250 = { ae929389da8a88959d889b97da }
$251 = { af939288db8b89949c899a96db }
$252 = { a894958fdc8c8e939b8e9d91dc }
$253 = { a995948edd8d8f929a8f9c90dd }
$254 = { aa96978dde8e8c91998c9f93de }
condition:
any of them
}

rule HIGH_rol_riew_xor_shellcode
{
strings:
$a = { 53 27 96 56 77 b8 ?? ?? 30 d4 ?? 98 }
$b = { 35 72 69 65 77 8b ?? ?? 03 4d ?? 89 }
condition:
any of them
}

rule HIGH_xor_faceold_shellcode
{
strings:
$a = { 21 ( ff | f8 ) 99 99 99 a8 9e de 72 }
condition:
any of them
}

rule HIGH_lodsb_rol_stosb_decode
{
strings:
$a = { ac c0 c0 ?? aa 49 75 }
condition:
any of them
}

rule HIGH_shellcode_function_resolve_plain
{
strings:
$a = { c7450045786974c7450454687265c7450861640000 }
$b = { c7450047657446c74504696c6553c74508697a6500 }
$c = { c7450047657454c74504656d7046c74508696c654ec7450c616d6541 }
$d = { c7450047657454c74504656d7050c7450861746841 }
condition:
any of them
}

rule HIGH_shellcode_ecx_getip
{
strings:
$a = { e8 01 00 00 00 ?? 8b 0c 24 83 c4 04 8d 49 15 }
$b = { 41 80 31 f4 81 39 90 64 64 64 75 }
condition:
any of them

}


rule HIGH_shellcode_reverse_xor
{
strings:
$a = { 33 c9 b9 ?? ?? ?? ?? (8b ?? ?? ?? ?? ?? ?? | 83 ?? ?? ??) 8a 06 32 c1 88 06 46 49 }
$b = { 8b fa 8b f7 56 8a 06 32 c1 88 06 46 49 }


condition:
any of them
}

rule HIGH_shellcode_lodsb_xor_stosb_decode
{
strings:
$c = { ac [0-9] c0 c8 ?? [0-9] 32c3 [0-9] aa }
$a = { c0 c8 06 75 03 74 01 e8 32 c3 aa 49 }
$b = { eb ea fc 33 c9 eb 01 }
condition:
any of them
}


rule HIGH_shellcode_xor_decode_4byte
{
strings:
$a = { 35 fa fc ba bc 89 07 eb }
condition:
any of them
}

rule EXPERIMENTAL_shellcode_readwritefile
{
strings:
$a = { 6a00 6a00 6a0? 6a00 6a00 6800000040 ?? ff }
condition:
any of them
}

rule HIGH_shellcode_xor_decode
{
strings:
$a = { 33 c9 66 b9 ?? ?? 80 34 0a ?? e2 fa eb }
condition:
any of them
}

rule HIGH_PDF_CVE_2009_3459
{
strings:
$a = "<</Columns 1/Predictor 02/Colors 1073741838/BitsPerComponent 1>>"
$b = { 78 9c 63 60 50 60 60 60 10 00 00 00 b7 00 31 36 }
$c = { 7c 2f 44 6f 63 75 6d 65 6e 74 73 20 61 6e 64 20 53 65 74 74 69 6e 67 73 2f 78 70 2f e6 a1 8c e9 9d a2 2f 74 65 73 74 2e 74 78 74}
condition:
any of them
} 

rule HIGH_pdf_u3d_exploit
{
strings:
$b = "%PDF-1."
$a = "/Subtype/U3D/Length 172417/Filter/FlateDecode/"
$c = /\/Subtype\s{0,}\/U3D\s{0,}\/VA\s{0,}\[\]\s{0,}\/DV\s{0,}\/F\s{0,}\/AN/
condition:
$b at 0 and ($a or $c)
}

rule HIGH_swap_xor_exe_headers
{
strings:
$a = { b5 a2 ef 7f [70-90] 87 bb 9c 86 9f cf 80 9d 9d 88 82 8e 8c cf }
$b = { 50 64 50 44 ef fe ea ae }
condition:
any of them
} 

// metasploit created pdf with obfuscated "Java" or "/JS "
rule METASPLOIT_PDF
{
strings:
$hdr = "%PDF-"
$a = "#4aava"
$b = "J#61va"
$c = "Ja#76a"
$d = "Jav#61"
$e = "#4a#61va"
$f = "#4aa#76a"
$g = "#4aav#61"
$h = "#4a#61#76a"
$i = "#4a#61v#61"
$j = "#4a#61#76#61"
$k = "#4aa#76#61"
$l = "J#61#76#61"
$m = "Ja#76#61"
$n = "J#61v#61"
$o = "J#61#76a"
$p = "/#4aS "
$q = "/J#53 "
condition:
$hdr at 0 and ($a or $b or $c or $d or $e or $f or $g or $h or $i or $j or $k or $l or $m or $n or $o or $p or $q)
} 

rule HIGH_shellcode_dec66
{
strings:
$a = { 3b 50 24 ba 4b bc ee 22 76 43 6a 7e e2 88 05 cd ec }
$b = { 8b fe ac 32 c3 aa e2 fa }
condition:
any of them
}

rule HIGH_exe_dec66
{
strings:
$a = { b8 87 87 92 c0 93 90 8a 83 95 87 74 38 }
condition:
any of them
} 

rule HIGH_PDF_malformed_version
{
strings:
$a = "%PDF-aaa"
condition:
$a at 0
}

rule EXPERIMENTAL_pdf_cve_2010_0188
{
strings:
$a = "Title(Novartis delivers strong operational performance in H1 2009)"
$c = "/XFA 3 0 R"
$d = "(D:20090716172105)"
$e = "cbc2cdf2-a534-4b2f-b7cc-296a74d3fbe0"
condition:
any of them
} 

rule pdf_meta_docid_2010_0188
{
strings:
$a = "2390d98e-7d70-4b70-bd3a-7bb7df72dff0"
condition:
any of them
}

rule HIGH_FZH_EXE_Payloads
{
strings:
$a = { c9 39 3d 55 18 59 51 25 05 51 1d 2d 18 15 1d }
$b = { 46 2e 5a 68 23 06 81 19 }
condition:
any of them
}

rule HIGH_xor_fffdfcabff23d5
{
strings:
$a = { ff fd fc eb ff 23 95 eb ff fd fc eb ff 23 95 eb }
condition:
$a
}

rule HIGH_PDF_topmostform
{
strings:
$a = "<</V () /Kids [3 0 R] /T (topmostSubform[0]) >>"
condition:
$a
}

rule MEDIUM_bad_cn_pdf_metadata
{
strings:
// creator name
$a = { e7 95 aa e8 8c 84 e8 8a b1 e5 9b ad }
condition:
any of them
}

rule HIGH_CVE_2010_0188_simple_doc_id
{
strings:
$a = "d94abdb7-ff38-474b-855a-2852349cbd9c"
condition:
$a
} 

rule EXPERIMENTAL_128_bytekey_exe_4h_possible
{
strings:
$a = { 2e 2e 22 22 26 26 22 22 3e 3e 22 22 26 26 22 22 }
$b = { 2e 2e 22 22 26 26 22 22 de de e2 e2 e6 e6 e2 e2 }
$c = { ee ee e2 e2 e6 e6 e2 e2 fe fe e2 e2 e6 e6 e2 e2 }
$f = { ee ee e2 e2 e6 e6 e2 e2 de de 22 22 26 26 22 22 }
$d = { 2e 2e 22 22 26 26 22 22 3e 3e 22 22 26 26 22 22 }
$e = { 2e 2e 22 22 26 26 22 22 5e 5e 62 62 66 66 62 62 }
$g = { 6e 6e 62 62 66 66 62 62 7e 7e 62 62 66 66 62 62 }
$h = { 6e 6e 62 62 66 66 62 62 5e 5e 22 22 26 26 22 22 }
condition:
any of them
}

rule EXPERIMENTAL_pdf_cve_2009_4324
{
strings:
$a = "8966-6480b8c5a1b1"
$b = "2b22379d-4af0-4711-bf40-06edc7f79e3a"
$c = "9ea3-0d81cd2ab399"
$f = "b2da-3942bcd5d85a"
$g = "a9c1-f83d00798bc3"
$h = "a6b7-12808536c901"
$j = "9140-bfd7bd065258"
$k = "b08c-387fdf454abd8"
$l = "a63c-e0ebb68eeb74"
condition:
any of them
}

rule HIGH_known_bad_pdf_metadata
{
strings:
$a = "%PDF-"
$h = "/Producer (Python PDF Library "
$c = "/Lang(zh-cn)/MarkInfo"
$l = "/Author (Rock)"
$m = "Author(h)/Producer(Acrobat Distiller 6.0.1 (Windows))/Company(h)"
$n = "Author(HkHk)"
$o = "Author(oldlamp)"
$p = "Author(cj)"
$q = "/Title(Microsoft Word - readme.doc)"
$ac = "/Title(Microsoft Word - kk.doc)"
$r = "Author()/Producer(Acrobat Distiller 6.0 (Windows))/Company(sp2)"
$s = "Author (XXXXXXXXXXXXXXXXXXXXX)"
$t = "Company(jn)"
$u = "(file:///C|/masm32/BIN/pdf/1.txt)"
$v = "/Creator( )"
$j = "FreePic2Pdf - 1.26</pdf:Producer>"
$z = "/Company(bn)"
$y = "<rdf:li>badapple</rdf:li>"
$b = "/Author(vmware)/Creator(PScript5.dll Version 5.2.2)"
$d = "/Author(Stephan Huck)"
$aa = "file:///C|/Documents and Settings/xp/"
$ab = "/Author(hotel-okura)"

condition:
$a at 0 and ($b or $h or $c or $l or $m or $n or $o or $p or $q or $r or $s or $t or $u or $v or $j or $z or $y or $d or $aa or $ab or $ac)
}

// author - matt
// sig type - Payload Detector
// badness - 8
// detects double decrementing xor loops encoding 00's

rule double_dec_xor
{
strings:
$a = { 2E 2E 22 22 26 26 22 22 3E 3E 22 22 26 26 22 22 }
$b = { 2E 2E 22 22 26 26 22 22 5E 5E 62 62 66 66 62 62 }
$c = { 6E 6E 62 62 66 66 62 62 7E 7E 62 62 66 66 62 62 }
$d = { 6E 6E 62 62 66 66 62 62 5E 5E 22 22 26 26 22 22 }
$e = { 2E 2E 22 22 26 26 22 22 DE DE E2 E2 E6 E6 E2 E2 }
condition:
any of them
}


// author - matt
// sig type - Metadata
// badness - 5
// metadata found in xls documents with cve-2009-3129

rule qq1test_cve_2009_3129
{
strings:
$a = "qq1test "
$b = "fsdafds"
condition:
any of them
}


rule PDF_long_unescape
{
// look for parameters exceeding 100 chars to the functions:
// unescape, decodeURI, decodeURIComponent
strings:
$ = /unescape\x28[\x20-\x27\x2A-\x7E]{100,32767}/ nocase
$ = /decodeURI\x28[\x20-\x27\x2A-\x7E]{100,32767}/ nocase
$ = /decodeURIComponent\x28[\x20-\x27\x2A-\x7E]{100,32767}/ nocase
condition:
any of them
}


rule PDF_long_string_fromCharCode
{
// look for parameters exceeding 50 chars to the function String.fromCharCode
strings:
$a = /String.fromCharCode\x28[\x20-\x27\x2A-\x7E]{50,32767}/ nocase
condition:
$a
}

rule LNK_MS_Exploit
{
///////////////////////////////////////////////////////////////
// Yara Signature for Windows Shell LNK exploit CVE-2010-2568
// Tested on small sample set
// Created by Alexander Hanel
// HeaderSize + LinkCLSID
// 00000000 4c 00 00 00 01 14 02 00 00 00 00 00 c0 00 00 00 |L...............|
// IDList:ItemIDList:ItemIdSize
// 00000050 1f 50 e0 4f d0 20 ea 3a 69 10 a2 d8 08 00 2b 30 |.P.O. .:i.....+0|
// IDList:ItemIDList:ItemIdData
// 2E ?? 20 20 EC 21 EA 3A 69 10 A2 DD 08 00 2B 30 30
// Strings "\\.\" $lnk_escap
// 5C 00 5C 00 2E 00 5C 00
// Strings "C:\" $lnk_C_drive
// 43 00 3A 00 5C
// Strings ".\.\." $lnk_cur_dr
// 00 5C 00 5C 00
///////////////////////////////////////////////////////////////

strings:
$lnk_header_clsid = { 4C 00 00 00 01 14 02 00 00 00 00 00 C0 00 00 00 00 00 00 46 }
$lnk_data = { 1F ?? E0 4F D0 20 EA 3A 69 10 A2 D8 08 00 2B 30 }
$lnk_item_data = { 2E ?? 20 20 EC 21 EA 3A 69 10 A2 DD 08 00 2B 30 30 }
$lnk_escap = { 5C 00 5C 00 2E 00 5C 00 }
$lnk_C_drive = { 43 00 3A 00 5C }
$lnk_cur_dr = { 00 5C 00 5C 00 }

condition:
$lnk_header_clsid and $lnk_data and $lnk_item_data and ($lnk_escap or $lnk_C_drive or $lnk_cur_dr )

} 


/*
// author - matt
// sig type - Payload Detector
// badness - 7
// detects FIFA 7/3/1983 marker denoting end of payload
*/
rule shellcode_marker_FIFA83
{
strings:
$a = { 46 49 46 41 03 07 83 19 }

condition:
$a
}


/*
// author - matt
// sig type - Shellcode
// badness - 9
// 0000A8B1 - jmp 0x12 eb10 <EB>^P
0000A8B3 - pop ebx 5b [
0000A8B4 - inc ebx 43 C
0000A8B5 - xor ecx,ecx 33c9 3<C9>
0000A8B7 - mov cx,0x3a5 66b9a503 f<B9><A5>^C
0000A8BB - xor byte [ebx],0x94 803394 <80>3<94>
0000A8BE - inc ebx 43 C
0000A8BF - loop 0xfffffffc e2fa <E2><FA>
0000A8C1 - jmp 0x7 eb05 <EB>^E
0000A8C3 - call 0xfffffff0 e8ebffffff <E8><EB><FF><FF><FF>

00003338 - xor ecx,ecx 33c9 3<C9>
0000333A - mov cx,0x135 66b93501 f<B9>5^A
0000333E - xor byte [edx+ecx],0x1 80340a01 <80>4
^A
00003342 - loop 0xfffffffc e2fa <E2><FA>


*/
rule shellcode_xor_ebx
{
strings:
$a = { 33 c9 66 b9 ?? ?? 80 33 ?? 43 e2 }
$b = { 33 c9 66 b9 ?? ?? 80 34 ?? ?? e2 }
condition:
any of them
}


/*
// author - matt
// sig type - Embedded Trojan
// badness - 7
// indicators found in owpq4 trojan, sometimes found in plaintext executables in office documents
*/
rule owpq4_cgi_trojan
{
strings:
        $a = "/Ccmwhite"
        $b = "/Ufwhite" 
condition:
        all of them

}

/*
// author - matt
// sig type - Embedded Trojan
// badness - 9
// filenames of comment group executables in chm files
*/
rule comment_chm_file_name
{
strings:
	$d = "/AcroRD32.exe"
	$e = "/reader_sl.exe"
	$a = "/svchost.exe"
	$b = "/iexplore.exe"
	$c = "ITSF"
        $f = "AdobeUpdater.exe"
condition:
$c at 0 and ($a or $b or $d or $e or $f)
}

/*
// author - xxxxx
// sig type - Filetype
// badness - 0
// generic detection of office magic header
*/
rule office_magic_bytes
{
strings:
		$magic = {D0 CF 11 E0 A1 B1 1A E1 00 00 00 }

condition:
		$magic

}

/*
// author - xxxxx
// sig type - Filetype
// badness - 0
// detects Microsoft office word documents
*/
rule word_document
{
strings:
		$rootentry = { 52 00 6f 00 6f 00 74 00 20 00 45 00 6e 00 74 00 72 00 79 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 }
		$worddoc = "WordDocument" wide
		$msworddoc = "MSWordDoc" nocase
condition:
		$rootentry and ($worddoc or $msworddoc)

}

/*
// author - xxxxx
// sig type - Filetype
// badness - 1
// looks like a word doc but doesn't quack like a word doc
*/
rule word_doc_no_root_entry
{
strings:
		$worddoc = "WordDocument" wide

condition:
		$worddoc and not word_document

}


/*
// author - xxxxx
// sig type - Filetype
// badness - 1
// multiple embedded ole objects
*/
rule multiple_embedded_ole_object
{
strings:
		$embedded_ole = { D0 CF 11 E0 A1 B1 1A E1 00 00 00 }

condition:
		#embedded_ole >2

}

/*
// author - xxxxx
// sig type - Metadata
// badness - 1
// imagepdf metadata
*/
rule pdf_imagepdf_link
{
strings:
        $a = "<</URI(http://www.imagepdf.com/)"

condition:
        $a

}

/*
// author - matt
// sig type - Bad Stuff
// badness - 10
// malformed PDF version number "aaa"
*/
rule pdf_file_aaa
{
strings:
	$pdf_header = "%PDF-aaa"

condition:
	$pdf_header at 0

}

/*
// author - xxxxx
// sig type - Filetype
// badness - 0
// detect standard pdf file header
*/
rule pdf_file
{
strings:
		$pdf_header = "%PDF-1."

condition:
		$pdf_header at 0

}

/*
// author - xxxxx
// sig type - Bad Stuff
// badness - 7
// detects specific flash exploit artifacts
*/
rule pdf_pyexploit_AS_sploit_swf
{
strings:
		$flash_string = "(sploit\\"
		$swf = "swf)"
condition:
		all of them

}

/*
// author - xxxxx
// sig type - Bad Stuff
// badness - 6
// out of spec color tag in PDF documents, CVE-2009-3459
*/
rule pdf_OutOfSpecColorsTag
{
strings:
		$string2 = /Colors [0-9][0-9]/

condition:
		$string2

}

/*
// author - xxxxx
// sig type - Bad Stuff
// badness - 7
// cve ??
*/
rule pdf_predictor_deflate_0day
{
strings:
		$string1 = "/Predictor 02" nocase
		$string2 = "/Predictor 2" nocase
		$hexstring = {78 9C 63 60 50 60 60 60}
condition:
		$string1 or $string2 and $hexstring

}

/*
// author - matt
// sig type - Bad Stuff
// badness - 8
// detect malformed U3D exploits, CVE-2009-2990
*/
rule pdf_cve_2009_2990
{
strings:
        $a = /\/Subtype\s{0,}\/U3D\s{0,}\/VA\s{0,}\[\]\s{0,}\/DV\s{0,}\/F\s{0,}\/AN/
        $b = /\/Subtype\s{0,}\/U3D.+?\/VA\s{0,}\[\]\s{0,}\/DV\s{0,}\/F\s{0,}\/AN/
	$c = "/Subtype/U3D/Length 172417/"
condition:
        any of them

}

/*
// author - xxxxx
// sig type - Bad Stuff
// badness - 5
// potentially malformed pdf header version
*/
rule pdf_version_alphachars
{
strings:
		$string = /\%PDF-[a-zA-z]{1,5}/

condition:
		$string

}

/*
// author - xxxxx
// sig type - Bad Stuff
// badness - 5
// possible flash heapspray technique
*/
rule flash_multibytewrite
{
strings:
                $FWS = {46 57 53 }
                $multi = {77 72 69 74 65 4D 75 6C 74 69 42 79 74 65 }
condition:
                all of them

}

/*
// author - xxxxx
// sig type - Filetype
// badness - 0
// detect rar files
*/
rule rar_magic_bytes
{
strings:
                $rar = {52 61 72 21 1A 07 00}

condition:
                $rar

}

/*
// author - xxxxx
// sig type - Metadata
// badness - 6
// known bad pdf metadata
*/
rule pdf_meta_company_jn
{
strings:
                $string = "Company(jn)"

condition:
                $string

}

/*
// author - xxxxx
// sig type - Metadata
// badness - 5
// metadata
*/
rule pdf_meta_roman_pdf
{
strings:
                $string = "(roman.pdf)"

condition:
                $string

}

/*
// author - xxxxx
// sig type - Bad Stuff
// badness - 7
// possible flash exploit cve-2009-1862
*/
rule pdf_pyexploit_AS_heap_swf
{
strings:
		$flash_string = "(heapspray\\"
		$swf = "swf)"
condition:
		all of them

}

/*
// author - xxxxx
// sig type - Metadata
// badness - 0
// +0530 metadata
*/
rule five_n_half_hour_pos_gmt
{
strings:
		$gmt_offset = "+05:30"	

condition:
		$gmt_offset

}

/*
// author - xxxxx
// sig type - Metadata
// badness - 1
// +0800 metadadta
*/
rule eight_hr_pos_gmt
{
strings:
		$gmt_offset = "+08'00')"	

condition:
		$gmt_offset

}

/*
// author - matt
// sig type - Metadata
// badness - 9
// specific timestamp in july from flast exploits
*/
rule jrh_metadata
{
strings:
        $a = "/LastModified(D:20090706144655+08'00')"
        $b = "/CreationDate(D:20090709101513+08'00')"
        $c = "/ModDate(D:20090629020704+08'00')"

condition:
        any of them

}

/*
// author - matt
// sig type - Metadata
// badness - 7
// known bad author version associated with cve-2009-4324 exploits
*/
rule pdf_author_hotel_okura
{
strings:
        $a = "/Author(hotel-okura)"

condition:
        any of them 

}

/*
// author - xxxxx
// sig type - Metadata
// badness - 8
// author man go
*/
rule author_man_go
{
strings:
		$string = "(man go)" nocase

condition:
		$string

}

/*
// author - xxxxx
// sig type - Metadata
// badness - 7
// tittle aa
*/
rule title_aa
{
strings:
		$string = "Title(aa)"

condition:
		$string

}

/*
// author - xxxxx
// sig type - Metadata
// badness - 9
// document id value from cve-2009-4324 kits
*/
rule pdf_cve_2009_4324_meta_6480b8c5a11
{
strings:
	$a = "8966-6480b8c5a1b1"

condition:
	any of them

}

/*
// author - xxxxx
// sig type - Metadata
// badness - 9
// doc id metadata
*/
rule pdf_cve_2009_4324_meta_9ea3_0d81cd2ab399
{
strings:
        $a = "9ea3-0d81cd2ab399"

condition:
        any of them

}

/*
// author - xxxxx
// sig type - Metadata
// badness - 9
// doc id metadata
*/
rule pdf_cve_2009_4324_meta_b2da_3942bcd5d85a
{
strings:
        $a = "b2da-3942bcd5d85a"

condition:
        any of them

}

/*
// author - xxxxx
// sig type - Metadata
// badness - 9
// doc id metadata
*/
rule pdf_cve_2009_4324_meta_a9c1_f83d00798bc3
{
strings:
        $a = "a9c1-f83d00798bc3"

condition:
        any of them

}

/*
// author - xxxxx
// sig type - Metadata
// badness - 9
// document id metadata
*/
rule pdf_cve_2009_4324_meta_a6b7_12808536c901
{
strings:
        $a = "a6b7-12808536c901"

condition:
        any of them

}

/*
// author - xxxxx
// sig type - Metadata
// badness - 9
// document id metadata
*/
rule pdf_cve_various_meta_9140_bfd7bd065258
{
strings:
        $a = "b08c-387fdf454abd8"

condition:
        any of them

}

/*
// author - xxxxx
// sig type - Metadata
// badness - 9
// doc id meta
*/
rule pdf_cve_2009_4324_meta_a63c_e0ebb68eeb74
{
strings:
        $a = "a63c-e0ebb68eeb74"

condition:
        any of them

}

/*
// author - matt
// sig type - Metadata
// badness - 7
// freepic2pdf application
*/
rule pdf_FreePic2Pdf
{
strings:
		$string = "FreePic2Pdf" nocase

condition:
		pdf_file and $string

}

/*
// author - xxxxx
// sig type - Filetype
// badness - 0
// chm filetype detection
*/
rule chm_file
{
strings:
                $magic = { 49 54 53 46 03 00 00 00  60 00 00 00 01 00 00 00 }

condition:
                $magic

}

/*
// author - xxxxx
// sig type - Payload Detector
// badness - 5
// chm file with a .exe file
*/
rule chm_with_exe_string
{
strings:
		$string = ".exe" nocase

condition:
		chm_file and $string

}

/*
// author - xxxxx
// sig type - Payload Detector
// badness - 3
// embedded chm file with succ.htm
*/
rule chm_succ_htm
{
strings:
		$string = "succ.htm" nocase

condition:
		chm_file and $string

}

/*
// author - xxxxx
// sig type - Payload Detector
// badness - 3
// access.hhc in chm
*/
rule chm_access_hhc
{
strings:
		$string = "access.hhc" nocase

condition:
		chm_file and $string

}

/*
// author - xxxxx
// sig type - Payload Detector
// badness - 3
// hh.exe in chm
*/
rule chm_hh_exe
{
strings:
		$string = "hh.exe" nocase

condition:
		chm_file and $string

}

/*
// author - xxxxx
// sig type - Bad Stuff
// badness - 3
// display page in chm
*/
rule chm_IE_Cant_Disp_page
{
strings:
		$string = "Internet Explorer cannot display the webpage.htm" nocase

condition:
		chm_file and $string

}

/*
// author - matt
// sig type - Metadata
// badness - 8
// badapple metadata
*/
rule author_badapple_rdf
{
strings:
        $string = ">badapple</rdf" nocase

condition:
        $string

}

/*
// author - xxxxx
// sig type - Metadata
// badness - 5
// bad author
*/
rule author_Kunthar_Yangkey
{
strings:
		$author = "Kunthar Yangkey" nocase

condition:
		$author

}

/*
// author - matt
// sig type - Metadata
// badness - 7
// bad company string
*/
rule company_sp2
{
strings:
		$string = "Company(sp2)"

condition:
		$string

}

/*
// author - xxxxx
// sig type - Bad Stuff
// badness - 5
// ??
*/
rule pdf_deflate_artifact
{
strings:
		$string = "24P0P04R0"

condition:
		$string

}

/*
// author - xxxxx
// sig type - Bad Stuff
// badness - 5
// bad?
*/
rule pdf_Interesting_artificat
{
strings:
		$string = "/#E6#AD#A3#E6#96#87"

condition:
		$string

}

/*
// author - xxxxx
// sig type - Bad Stuff
// badness - 5
// bad?
*/
rule Youtso_font_present
{
strings:
		$font = "FontName/AHOBBP+TCRC-Youtso" nocase

condition:
		$font

}

/*
// author - xxxxx
// sig type - Bad Stuff
// badness - 3
// might be bad to have a http://bad.com/bad.php?
*/
rule url_that_ends_in_php
{
strings:
		$re_possible_url = /http:\/\/.*\/.*\.php/

condition:
		$re_possible_url

}

/*
// author - matt
// sig type - Bad Stuff
// badness - 9
// bad to see this
*/
rule pdf_producer_python_pdf_lib
{
strings:
		$python_lib_string = "/Producer (Python PDF Library \\055 http\\072\\057\\057pybrary\\056net\\057pyPdf\\057)"

condition:
		all of them

}

/*
// author - xxxxx
// sig type - Shellcode
// badness - 5
// utf shellcode
*/
rule utf_encoded_shellcode
{
strings:
		$re_utf = /(%U([0-9a-f]{4})){6}/ nocase

condition:
		$re_utf

}

/*
// author - matt
// sig type - Payload Detector
// badness - 9
// looking for the payload encoding
*/
rule pdf_plain_exe_marker
{
strings:
        $a = { 1C 0A D1 20 D1 CE F0 27 10 F8 2F EC AC }

condition:
        any of them

}

/*
// author - matt
// sig type - Bad Stuff
// badness - 10
// metasploit generated obfuscated tags
*/
rule PDF_obfuscated_JS_tags
{
strings:
        $a = "/#54#79#70e/#41c#74ion/S/J#61vaS#63#72#69#70#74/JS 6 0 R"
        $b = "/L#65ng#74#68 2860/Fi#6c#74e#72[/F#6ca#74#65#44ecode/A#53CII#48#65#78D#65#63#6fde]"
        $c = "/Ty#70#65/#4fu#74#6c#69#6e#65s/#43o#75#6et 0"
        $d = "/#4ce#6e#67th 2108/Fi#6c#74#65#72[/#46#6c#61#74#65#44ec#6f#64e/A#53CI#49Hex#44#65cod#65]"
        $e = "/#54#79#70#65/A#63ti#6fn/#53/#4aa#76a#53c#72#69#70t/#4a#53"
        $f = "/T#79p#65/P#61#67es/#4b#69ds[4 0 R]/C#6f#75nt"
condition:
        any of them

}

/*
// author - matt
// sig type - Payload Detector
// badness - 8
// executable in RTF
*/
rule RTF_embedded_exe
{
strings:
        $a = "{\\rtf1\\ansi\\"
        $b = "546869732070726f6772616d"
        $c = "4d5a90000"
condition:
        ($a at 0) and ($b or $c)

}

/*
// author - matt
// sig type - Shellcode
// badness - 8
// looking for xor / ror combination
*/
rule exe_increment_xor_ror_3
{
strings:
        $a = { 6a d3 86 03 ?? 05 06 07 }

condition:
        any of them

}

/*
// author - matt
// sig type - Payload Detector
// badness - 9
// exe header
*/
rule xor_t_exe_header
{
strings:
	$a = { 54 c3 c2  d8 8b db d9 c4 cc d9 ca c6 8b c8 ca }

condition:
	any of them

}

/*
// author - matt
// sig type - Payload Detector
// badness - 9
// Detect upack packed executable encoded with reverse xor
*/
rule rev_xor_upack
{
strings:
	$a = { 71 61 71 7c 6a 79 73 79 07 01 1c 75 7c }

condition:
	any of them

}

/*
// author - matt
// sig type - Payload Detector
// badness - 9
// detect payloads with incrementing xor and xor 28
*/
rule payload_inc_40_xor_28_exe
{
strings:
        $a = { c9 df 16 87 9b 99 9a 9b }

condition:
        any of them

}

/*
// author - matt
// sig type - Payload Detector
// badness - 9
// detect rolling xor marker
*/
rule rolling_xor_exe_marker
{
strings:
	$a = { 3e 3e 73 74 72 65 61 6d 0d 0a 50 73 31 33 23 64 }

condition:
	$a 

}

/*
// author - matt
// sig type - Payload Detector
// badness - 9
// detect payloads in PDF files with FVCK marker
*/
rule pdf_fvck_xor_exe_header
{
strings:
$a = "stream\x0d\x0aFVCK"
$b = { 00 00 00 00 46 56 43 4b }

condition:
any of them

}

/*
// author - matt
// sig type - Shellcode
// badness - 9
// detect faceold xor shellcode
*/
rule shellcode_xor_faceold
{
strings:
	$a = { 21 ( ff | f8 ) 99 99 99 a8 9e de 72 }

condition:
	any of them

}

/*
// author - matt
// sig type - Shellcode
// badness - 9
// shellcode from some excel doc
*/
rule shellcode_new_excel_bd
{
strings:
	$a = { 88 33 69 43 e2 fa eb 05 }

condition:
	any of them

}

/*
// author - matt
// sig type - Payload Detector
// badness - 9
// money, money, moneeeyyy
*/
rule shellcode_fzh_marker
{
strings:
$string = { 46 2E 5A 68 23 06 81 19 }
$b = { 4a 75 63 4b 12 01 83 19 }

condition:
any of them

}

/*
// author - xxxxx
// sig type - Payload Detector
// badness - 4
// maybe ?
*/
rule shellcode_JBIA_marker
{
strings:
		$string = { 4a 42 49 41 }

condition:
		$string

}

/*
// author - xxxxx
// sig type - Shellcode
// badness - 5
// shellcode?
*/
rule shellcode_PEB_LDR_DATA
{
strings:
		$string = { 64 A1 30 00 00 00 8B 40 0C 8B 70 1C AD 8B 68 08 }

condition:
		$string

}

/*
// author - xxxxx
// sig type - Shellcode
// badness - 5
// shell?
*/
rule shellcode_RVA_pointer
{
strings:
		$string = { 56 8B 76 20 03 F5 }

condition:
		$string

}

/*
// author - matt
// sig type - Shellcode
// badness - 8
// hash function res?
*/
rule shellcode_hash_function_name_function
{
strings:
		$strings = { 0fbe103AD67408C1CB0703DA40ebf1 }

condition:
		$strings

}

/*
// author - xxxxx
// sig type - Shellcode
// badness - 5
// utf noop
*/
rule utf8_encoded_noop
{
strings:
		$utf_8_noop = "/%0.%0.%0.%0./"

condition:
		$utf_8_noop

}

/*
// author - xxxxx
// sig type - Shellcode
// badness - 6
// utf noop sled
*/
rule utf16_noop_sled
{
strings:
		$utf_noop_sled = "%u9090%u9090%u9090%u9090"

condition:
		$utf_noop_sled

}

/*
// author - matt
// sig type - Shellcode
// badness - 9
// riew encoding shellcode
*/
rule shellcode_rol_riew_xor_shellcode
{
strings:
	$a = { 53 27 96 56 77 b8 ?? ?? 30 d4 ?? 98 }
	$b = { 35 72 96 65 77 8b ?? ?? 03 4d ?? 89 }
condition:
	any of them

}

/*
// author - matt
// sig type - Shellcode
// badness - 9
// shellcode that encodes the exe with 4 static bytes
*/
rule shellcode_4byte_xor
{
strings:
	$a = { 8b 0c 01 81 f1 ca 50 39 af 8b 55 fc }
	$b = { b8 c0 10 18 1f ac 05 93 fa b8 55 cf }
condition:
	any of them

}

/*
// author - matt
// sig type - Shellcode
// badness - 9
// look for shellcode that performs dec xor plus xor 66
*/
rule shellcode_dec_xor_66
{
strings:
	$a = { 3b 50 24 ba 4b bc ee 22 76 43 6a 7e e2 88 05 cd ec }
	$b = { 8b fe ac 32 c3 aa e2 fa }
condition:
	any of them

}

/*
// author - matt
// sig type - Payload Detector
// badness - 9
// detect executables encoded with dec xor 66
*/
rule exe_dec66
{
strings:
	$a = { b8 87 87 92 c0 93 90 8a 83 95 87 74 38 }

condition:
	any of them

}

/*
// author - matt
// sig type - Payload Detector
// badness - 9
// look for fcfabcba encoded executable
*/
rule fcfabcba_xor_exe
{
strings:
	$a = { bc ba [2] bc ba [2] bc ba [2] bc ba [2] bc ba}

condition:
	any of them

}

/*
// author - matt
// sig type - Payload Detector
// badness - 9
// detect exe header with add
*/
rule add_exe_headers
{
strings:
	$a = "Uijt!qsphsbn!dboopu!cf!svo!jo!EPT!"

condition:
	any of them

}

/*
// author - matt
// sig type - Payload Detector
// badness - 9
// detect swap xor exe header
*/
rule swap_xor_exe_headers
{
strings:
        $a = { b5 a2 ef 7f [70-90] 87 bb 9c 86 9f cf 80 9d 9d 88 82 8e 8c cf }

condition:
        any of them

}

/*
// author - matt
// sig type - Payload Detector
// badness - 7
// detect decrementing xor exe header by looking for lots of nulls
*/
rule xord_exe_payload
{
strings:
          $xord_string = "~}|{zyxwvutsrqponmlkjihgfedcba`_^]\\[ZYXWVUTSRQPONMLKJIHGFEDCBA@?>=<;:9876543210/.-,+*)('&%$#"

condition:
          $xord_string

}

/*
// author - xxxxx
// sig type - Payload Detector
// badness - 5
// exe
*/
rule cannot_run_in_dos
{
strings:
		$warning_banner = "This program cannot be run in DOS mode" nocase

condition:
		$warning_banner

}

/*
// author - xxxxx
// sig type - Payload Detector
// badness - 5
// exe
*/
rule upx_strings
{
strings:
		$upx = "UPX"
		$rsrc = ".rsrc"
condition:
		all of them

}

/*
// author - xxxxx
// sig type - Payload Detector
// badness - 5
// exe
*/
rule load_libary_a
{
strings:
		$loadlibarya = "LoadLibraryA" nocase

condition:
		$loadlibarya

}

/*
// author - xxxxx
// sig type - Payload Detector
// badness - 5
// exe
*/
rule shell_execute_a
{
strings:
		$shellexecutea = "ShellExecuteA" nocase

condition:
		$shellexecutea

}

/*
// author - xxxxx
// sig type - Payload Detector
// badness - 5
// exe
*/
rule get_proc_address
{
strings:
		$getprocaddress = "GetProcAddress" nocase

condition:
		$getprocaddress

}

/*
// author - xxxxx
// sig type - Payload Detector
// badness - 5
// exe
*/
rule get_version_ex_a
{
strings:
		$getversionexa = "GetVersionExA" nocase

condition:
		$getversionexa

}

/*
// author - xxxxx
// sig type - Payload Detector
// badness - 5
// exe
*/
rule win_api_LoadLibaryA
{
strings:
		$loadlibarya = "LoadLibraryA" nocase

condition:
		$loadlibarya

}

/*
// author - xxxxx
// sig type - Payload Detector
// badness - 5
// exe
*/
rule win_api_WriteFile_1
{
strings:
		$WriteFile = "WriteFile" nocase

condition:
		$WriteFile

}

/*
// author - xxxxx
// sig type - Payload Detector
// badness - 5
// exe
*/
rule win_api_CreateFileA_1
{
strings:
		$CreateFileA = "CreateFileA" nocase

condition:
		$CreateFileA

}

/*
// author - xxxxx
// sig type - Bad Stuff
// badness - 1
// ?
*/
rule javascript_openwindow_excel
{
strings:
		$rootentry = { 52 00 6f 00 6f 00 74 00 20 00 45 00 6e 00 74 00 72 00 79 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 }
		$workbook = "Workbook" wide
		$jsopenwindow = "javascript:window.open(" nocase
condition:
		all of them

}

/*
// author - xxxxx
// sig type - Bad Stuff
// badness - 3
// ?
*/
rule javascript_document_write_excel
{
strings:
		$rootentry = { 52 00 6f 00 6f 00 74 00 20 00 45 00 6e 00 74 00 72 00 79 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 }
		$workbook = "Workbook" wide
		$jsdocwrite = "javascript:document.write" nocase
condition:
		all of them

}

/*
// author - xxxxx
// sig type - Bad Stuff
// badness - 4
// excel
*/
rule excel_xf_classic_macro_virus
{
strings:
		$comment_string = "**Add New Workbook, Infect It, Save It As Book1.xls**"
		$copy_right_lulz = "(C) The Narkotic Network 1998"
condition:
		any of them 

}

/*
// author - xxxxx
// sig type - Bad Stuff
// badness - 5
// flash in office
*/
rule vba_office_embedded_flash
{
strings:
		$flDbg10ocxwide = "FlDbg10.ocx" wide nocase
		$fldbg10 = "FlDbg10.ocx" nocase
condition:
		any of them

}

/*
// author - xxxxx
// sig type - JavaScript
// badness - 5
// encoded
*/
rule js_number_encoding
{
strings:
		$re_number_encoding = /(([0-9]{2})\.|([0-9]{3})\.){40}/ 

condition:
		$re_number_encoding

}

/*
// author - xxxxx
// sig type - JavaScript
// badness - 5
// js
*/
rule js_packed_function
{
strings:
		$packed_string = "p,a,c,k,e,d"

condition:
		$packed_string

}

/*
// author - xxxxx
// sig type - JavaScript
// badness - 5
// js
*/
rule js_packed_function_shellcode
{
strings:
		$re_packed_shellcode = /((u([0-9a-f]){4},){5})/

condition:
		$re_packed_shellcode

}

/*
// author - xxxxx
// sig type - JavaScript
// badness - 5
// js
*/
rule js_probable_obfuscation
{
strings:
		$function = "function" nocase
		$var = "var " nocase
		$eval = "eval(" nocase
condition:
		all of them

}

/*
// author - xxxxx
// sig type - JavaScript
// badness - 5
// js
*/
rule js_heap_spray
{
strings:
		$nop = "nop" nocase
		//$shellcode = "shellcode" nocase
		//$block = "block" nocase
		$spray = "spray" nocase
		//$while_loop = "while" nocase
		$for_loop = "for" nocase
condition:
		all of them

}

/*
// author - xxxxx
// sig type - JavaScript
// badness - 5
// js
*/
rule js_variable_named_shellcode
{
strings:
		$var_named_shellcode = "var shellcode"
condition:
		$var_named_shellcode

}

/*
// author - xxxxx
// sig type - JavaScript
// badness - 5
// js
*/
rule js_string_replace_obfuscation
{
strings:
		$js_replace_v1 = "replace(/[\\+!@#$^*]/g,\"\")" nocase		

condition:
		$js_replace_v1

}

/*
// author - xxxxx
// sig type - JavaScript
// badness - 5
// js
*/
rule app_viewer_version_tostring
{
strings:
		$app_veiwer_version_2_string = "app.viewerVersion.toString()"

condition:
		$app_veiwer_version_2_string

}

/*
// author - xxxxx
// sig type - JavaScript
// badness - 5
// js
*/
rule js_acrobat_version_fingerprinting_attempt
{
strings:
		$general_ver = "app.viewerVersion" nocase

condition:
		$general_ver

}

/*
// author - xxxxx
// sig type - JavaScript
// badness - 5
// js
*/
rule js_pdf_app_settimeout
{
strings:
		$app_settimeout = "app.setTimeOut(" nocase

condition:
		$app_settimeout

}

/*
// author - xxxxx
// sig type - JavaScript
// badness - 5
// js
*/
rule js_acrobat_app_alert
{
strings:
		$app_alert = "app.alert('"

condition:
		$app_alert

}

/*
// author - xxxxx
// sig type - JavaScript
// badness - 5
// js
*/
rule js_obfuscation_large_array_of_numbers
{
strings:
		$new_array = "new array(" nocase
		$re_lots_of_numbers = /([0-9]{4},){100}/
condition:
		all of them

}

/*
// author - xxxxx
// sig type - JavaScript
// badness - 5
// js
*/
rule js_obfuscation_string_from_char_code
{
strings:
		$char_index = "\"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=\""
		$indexof = ".indexof" nocase
		$join = ".join" nocase
		$length = ".length"
		$charcodeat = ".charcodeat" nocase
		$string_fromcharcode = "String.fromCharCode" nocase
		//$char_at = ".charat"
condition:
		all of them

}

/*
// author - xxxxx
// sig type - JavaScript
// badness - 5
// js
*/
rule js_base_64_decode_function
{
strings:
		$char_at = "input.charat" nocase 
		$indexof = ".indexof" nocase
		$base64_decode = "Base64.decode" nocase
condition:
		all of them 

}

/*
// author - xxxxx
// sig type - Bad Stuff
// badness - 5
// swf
*/
rule pdf_improperly_embedded_swf
{
strings:
        	$stream = { 3e 3e 73 74 72 65 61 6d }
                $embedded_swf = { 0a 46 57 53 }
                $embedded_swf1 = { 0a 43 57 53 }
               // $ton_of_as_and_bs = { 61 61 61 61 61 61 61 61  61 61 61 61 61 61 61 61 62 62 62 62 62 62 62 62 62 62 62 62 62 62 62 62}
condition:
                pdf_file and $stream and ($embedded_swf or $embedded_swf1) 

}

/*
// author - xxxxx
// sig type - Bad Stuff
// badness - 5
// ?
*/
rule pdf_fixed_malformed_comment_header
{
strings:
        		$stream = { 25 50 44 46 2D 31 2E 36 0D 25 E2 E3 CF D3 0D 0A }

condition:
                pdf_file and $stream

}

/*
// author - xxxxx
// sig type - Filetype
// badness - 2
// encrypted pdf
*/
rule pdf_encrypt_contents
{
strings:
		$encrypted = "/Encrypt"

condition:
		$encrypted

}

/*
// author - xxxxx
// sig type - Bad Stuff
// badness - 2
// embedded file
*/
rule pdf_embedded_file
{
strings:
		$type = "/Type" nocase
		$embedded_file = "/EmbeddedFile" nocase
condition:
		all of them

}

/*
// author - xxxxx
// sig type - Bad Stuff
// badness - 2
// swf
*/
rule pdf_richmedia
{
strings:
                   $richmedia = "/RichMedia"     

condition:
                   pdf_file and $richmedia

}

/*
// author - xxxxx
// sig type - Bad Stuff
// badness - 2
// flash
*/
rule pdf_richmedia_flash_subtype
{
strings:
		$binding_background = "/Binding (Background)"

condition:
		$binding_background

}

/*
// author - xxxxx
// sig type - JavaScript
// badness - 4
// js inside
*/
rule pdf_js_open_action
{
strings:
		$open_action = "/OpenAction" nocase
		$js = "/JS (" nocase
		$s_javascript = "/S /JavaScript" nocase
condition:
		all of them

}

/*
// author - matt
// sig type - JavaScript
// badness - 1
// update me
*/
rule pdf_js_object
{
strings:
$js_tag = "/JavaScript "
condition:
$js_tag
}

/*
// author - matt
// sig type - Payload Detector
// badness - 1
// update me
*/
rule pdf_collab_get_icon
{
strings:
$pdf_collab_get_icon = "Collab.getIcon(" nocase
condition:
$pdf_collab_get_icon
}

/*
// author - matt
// sig type - JavaScript
// badness - 1
// update me
*/
rule pdf_collab_collect_email
{
strings:
$pdf_collab_collect_email = "Collab.collectEmailInfo(" nocase
condition:
$pdf_collab_collect_email
}

/*
// author - matt
// sig type - Bad Stuff
// badness - 1
// update me
*/
rule pdf_jbig2_decode_stream
{
strings:
$jbig2decode = "JBIG2Decode" nocase
condition:
$jbig2decode
}

/*
// author - matt
// sig type - Metadata
// badness - 1
// update me
*/
rule pdf_documents_and_settings
{
strings:
$docs_n_settings = "documents%20and%20settings" nocase
condition:
$docs_n_settings
}

/*
// author - matt
// sig type - Metadata
// badness - 1
// update me
*/
rule pdf_documents_and_settings_xp
{
strings:
$string1 = "Documents%20and%20Settings/xp/%E6%A1%8C%E9%9D%A2/test.txt" nocase
		$string2 = "Documents%20and%20Settings/xp/"
condition:
$string1 or $string2
}

/*
// author - matt
// sig type - JavaScript
// badness - 1
// update me
*/
rule pdf_type_action
{
strings:
$obj = "obj"
		$F = "/F" nocase
		$C = "(/C/" nocase
		$newwindow = "/NewWindow true" nocase
		$type_action = "/Type /Action" nocase
		$s_launch = "/S /Launch" nocase
condition:
all of them
}

/*
// author - matt
// sig type - JavaScript
// badness - 1
// update me
*/
rule pdf_get_annot_exploit
{
strings:
$type_annot = "/Type /Annot" nocase
		$subj = "Subj (" nocase
condition:
all of them
}

/*
// author - matt
// sig type - JavaScript
// badness - 1
// update me
*/
rule pdf_customdictionaryopen_exploit
{
strings:
$custom_dict_open = ".spell.customDictionaryOpen("
condition:
$custom_dict_open
}

/*
// author - matt
// sig type - Metadata
// badness - 7
// Added, Author(HkHk) - dre
*/
rule known_bad_metadata
{
strings:
$a = "(Microsoft Word - readme.doc)"
$b = /\/Author.+?(Rock)/
$c = "MC SYSTEM"
$d = "MC SYSTEM" wide
$e = "/Producer(FreePic2Pdf - 1.26)"
$f = "Author(HkHk)" nocase

condition:
$a or $b or ($c and $d) or $e or $f
}

/*
// author - matt
// sig type - Metadata
// badness - 7
// update me
*/
rule pdf_author_vmware
{
strings:
$a = "/Author(vmware)"
condition:
any of them
}

/*
// author - matt
// sig type - Metadata
// badness - 7
// update me
*/
rule pdf_1cj
{
strings:
$a = /\/Author.+?(cj)/
condition:
$a
}

/*
// author - matt
// sig type - Metadata
// badness - 8
// update me
*/
rule author_stephen_hucks
{
strings:
$a = "/Author(Stephan Huck)"
condition:
any of them
}

/*
// author - xxxxx
// sig type - JavaScript
// badness - 5
// util.printf
*/
rule pdf_util_printf_exploit
{
strings:
		$util_printf = "util.printf("

condition:
		$util_printf

}

/*
// author - matt
// sig type - Payload Detector
// badness - 1
// update me
*/
rule pdf_1oldlamp
{
strings:
$a = /\/Author.+?(oldlamp)/
condition:
$a
}

/*
// author - matt
// sig type - Payload Detector
// badness - 1
// update me
*/
rule pdf_giverchyman
{
strings:
$a = "giverchyman"
condition:
$a
}

/*
// author - matt
// sig type - Payload Detector
// badness - 1
// update me
*/
rule pdf_lang_zh_cn
{
strings:
$lang_string = "/Lang(zh-cn)"
condition:
$lang_string
}

/*
// author - xxxxx
// sig type - Payload Detector
// badness - 1
// Ripped from patterns used by officemalscanner. - Dre
*/
rule LODSB_STOSB_ROL_decryption
{
strings:
$decrypt = { ac c0 c0 04 aa 49 75 f8 }
condition:
$decrypt
}

/*
// author - xxxxx
// sig type - Payload Detector
// badness - 1
// Ripped from patterns used by officemalscanner. - Dre
*/
rule LODSB_STOSB_ADD_decryption
{
strings:
$decrypt = { AC 04 58 AA 13 C5 BD 12 }
condition:
$decrypt
}

/*
// author - xxxxx
// sig type - Payload Detector
// badness - 1
// update me
*/
rule LODSB_STOSB_XOR_decryption
{
strings:
$shellcode = { AC 34 DE AA EB F5 E8 E4 } // maybe be able to add three FF bytes
condition:
$shellcode
}

/*
// author - xxxxx
// sig type - Payload Detector
// badness - 1
// Ripped from patterns used by officemalscanner. - Dre
*/
rule lodsd_stosd_sub_decryption
{
strings:
$shellcode = { AD 2D E4 9E 38 58 AB 84 }
condition:
$shellcode
}

/*
// author - matt
// sig type - Payload Detector
// badness - 1
// update me
*/
rule api_hashing_shellcode
{
strings:
$1 = { 74 0? C1 C? 0D 03 [0-8] EB F? [0-4] 3B [0-8] 75 [0-8] 8B 5? 24 03 DD 66 [0-4] 8B 0C 4B [0-12] 8B 04 8B 03 C5 }
condition:
$1
}

/*
// author - xxxxx
// sig type - Shellcode
// badness - 1
// Ripped from patterns used by officemalscanner. - Dre
*/
rule shellcode_F30h
{
strings:
$a = { 64 A1 30 }
condition:
$a
}

/*
// author - xxxxx
// sig type - Shellcode
// badness - 7
// jmp call pop
*/
rule shellcode_jmp_call_pop
{
strings:
$eb_call_pop = { EB [0-12] 33 [0-60] EB ?? E8 ?? FF FF FF }
$a = { eb [0-12] 5a  [0-60] eb [1-4] e8 ?? ff ff ff }
condition:
any of them
}

/*
// author - matt
// sig type - Payload Detector
// badness - 1
// update me
*/
rule shellcode_xor_decryption
{
strings:
$xor_shellcode = { AC 34 EB }
		$xor_1 = { A6 A5 A4 A3 A2 }
		$xor_2 = { 9A 99 98 97 96 }
		$xor_3 = { 8A 89 88 87 86 }
		$xor_4 = { 7B 7A 79 78 77 }
		$xor_5 = { 69 67 66 65 64 }
		$xor_6 = { EF EE ED EC EB }
		$xor_7 = { E2 E1 E0 DF DE }
		$xor_8 = { 6B 6A 69 69 67 66 }
condition:
$xor_shellcode and ($xor_1 or $xor_2 or $xor_3 or $xor_4 or $xor_5 or $xor_6 or $xor_7 or $xor_8)
}

/*
// author - xxxxx
// sig type - Payload Detector
// badness - 1
// Ripped from patterns used by officemalscanner. - Dre
*/
rule shellcode_push_dword_call
{
strings:
$shellcode = { FF 75 ?? FF 55 }
condition:
$shellcode
}

/*
// author - xxxxx
// sig type - Payload Detector
// badness - 1
// update me
*/
rule shellcode_multiple_push_dword_call
{
strings:
$shellcode = { FF 75 ?? FF 55 }
condition:
#shellcode >2
}

/*
// author - xxxxx
// sig type - Payload Detector
// badness - 1
// update me
*/
rule noop_sled
{
strings:
$noop = { 90 90 90 90 90 90 90 }
condition:
$noop
}

/*
// author - xxxxx
// sig type - Payload Detector
// badness - 1
// update me
*/
rule multiple_noop_sled
{
strings:
$noop = { 90 90 90 90 90 90 }
condition:
#noop >2
}

/*
// author - matt
// sig type - Payload Detector
// badness - 1
// update me
*/
rule Core_Metadata
{
strings:
$a = "CoreST Inc"
condition:
any of them
}

/*
// author - matt
// sig type - Shellcode
// badness - 8
// get ecx
*/
rule shellcode_ecx_getip
{
strings:
	$a = { e8 01 00 00 00 ?? 8b 0c 24 83 c4 04 8d 49 15 eb }
	$b = { 41 80 31 f4 81 39 90 64 64 64 75 }
condition:
	any of them

}

/*
// author - matt
// sig type - Shellcode
// badness - 7
// update me
*/
rule shellcode_egghunt_83fc
{
strings:
$a = { 40 46 39 06 75 ?? ff }
	$b = { 8b d6 33 c9 80 34 0a c2 41 3b c8 7c f7 ff d6 }
condition:
any of them
}

/*
// author - matt
// sig type - Shellcode
// badness - 1
// update me
*/
rule shellcode_xor_decode_4byte
{
strings:
$a = { 35 fa fc ba bc 89 07 eb }
condition:
any of them
}

/*
// author - matt
// sig type - Shellcode
// badness - 7
// xor decode

$b example

0000280E - mov cx,0x1b7                         66b9b701
00002812 - xor byte [edx+ecx],0xe9              80340ae9
00002816 - loop 0xfffffffc                      e2fa
 $c example

00000806 - xor ecx,ecx                          33c9
00000808 - mov cx,0x4d9                         66b9d904
0000080C - xor byte [ebx+ecx],0xf7              80340bf7
00000810 - loop 0xfffffffc                      e2fa
00000812 - jmp 0x4                              eb02
00000814 - call eax                             ffd0

*/
rule shellcode_xor_decode
{
strings:
$a = { 33 c9 66 b9 ?? ?? 80 34 ?? ?? e2 fa eb }
$b = { 66 b9 ?? ?? 80 34 0? ?? e2 fa }
condition:
any of them

}

/*
// author - matt
// sig type - Shellcode
// badness - 1
// update me
*/
rule shellcode_function_resolve_plain
{
strings:
$a = { c7450045786974c7450454687265c7450861640000 }
	$b = { c7450047657446c74504696c6553c74508697a6500 }
	$c = { c7450047657454c74504656d7046c74508696c654ec7450c616d6541 }
	$d = { c7450047657454c74504656d7050c7450861746841 }
condition:
any of them
}

/*
// author - matt
// sig type - Shellcode
// badness - 5
// shellcode



*/
rule lodsb_rol_stosb_decode
{
strings:
$a = { ac c0 c0 ?? aa 49 75 } 

condition:
any of them

}

/*
// author - matt
// sig type - Shellcode
// badness - 5
// shellcode
*/
rule shellcode_reverse_xor
{
strings:
	$a = { 33 c9 b9 ?? ?? ?? ?? 8b ?? ?? ?? ?? ?? ?? 8a 06 32 c1 88 06 46 49 }

condition:
	any of them

}

/*
// author - matt
// sig type - Payload Detector
// badness - 8
// static xor this program
*/
rule xor_exe_headers
{
strings:

	$1 = { 556968722171736e6673606c21 }
	$2 = { 566a6b712272706d6570636f22 }
	$3 = { 576b6a702373716c6471626e23 }
	$4 = { 506c6d772474766b6376656924 }
	$5 = { 516d6c762575776a6277646825 }
	$6 = { 526e6f75267674696174676b26 }
	$7 = { 536f6e74277775686075666a27 }
	$8 = { 5c60617b28787a676f7a696528 }
	$9 = { 5d61607a29797b666e7b686429 }
	$10 = { 5e6263792a7a78656d786b672a }
	$11 = { 5f6362782b7b79646c796a662b }
	$12 = { 5864657f2c7c7e636b7e6d612c }
	$13 = { 5965647e2d7d7f626a7f6c602d }
	$14 = { 5a66677d2e7e7c61697c6f632e }
	$15 = { 5b67667c2f7f7d60687d6e622f }
	$16 = { 447879633060627f7762717d30 }
	$17 = { 457978623161637e7663707c31 }
	$18 = { 467a7b613262607d7560737f32 }
	$19 = { 477b7a603363617c7461727e33 }
	$20 = { 407c7d673464667b7366757934 }
	$21 = { 417d7c663565677a7267747835 }
	$22 = { 427e7f65366664797164777b36 }
	$23 = { 437f7e64376765787065767a37 }
	$24 = { 4c70716b38686a777f6a797538 }
	$25 = { 4d71706a39696b767e6b787439 }
	$26 = { 4e7273693a6a68757d687b773a }
	$27 = { 4f7372683b6b69747c697a763b }
	$28 = { 4874756f3c6c6e737b6e7d713c }
	$29 = { 4975746e3d6d6f727a6f7c703d }
	$30 = { 4a76776d3e6e6c71796c7f733e }
	$31 = { 4b77766c3f6f6d70786d7e723f }
	$32 = { 744849530050524f4752414d00 }
	$33 = { 754948520151534e4653404c01 }
	$34 = { 764a4b510252504d4550434f02 }
	$35 = { 774b4a500353514c4451424e03 }
	$36 = { 704c4d570454564b4356454904 }
	$37 = { 714d4c560555574a4257444805 }
	$38 = { 724e4f55065654494154474b06 }
	$39 = { 734f4e54075755484055464a07 }
	$40 = { 7c40415b08585a474f5a494508 }
	$41 = { 7d41405a09595b464e5b484409 }
	$42 = { 7e4243590a5a58454d584b470a }
	$43 = { 7f4342580b5b59444c594a460b }
	$44 = { 7844455f0c5c5e434b5e4d410c }
	$45 = { 7945445e0d5d5f424a5f4c400d }
	$46 = { 7a46475d0e5e5c41495c4f430e }
	$47 = { 7b47465c0f5f5d40485d4e420f }
	$48 = { 645859431040425f5742515d10 }
	$49 = { 655958421141435e5643505c11 }
	$50 = { 665a5b411242405d5540535f12 }
	$51 = { 675b5a401343415c5441525e13 }
	$52 = { 605c5d471444465b5346555914 }
	$53 = { 615d5c461545475a5247545815 }
	$54 = { 625e5f45164644595144575b16 }
	$55 = { 635f5e44174745585045565a17 }
	$56 = { 6c50514b18484a575f4a595518 }
	$57 = { 6d51504a19494b565e4b585419 }
	$58 = { 6e5253491a4a48555d485b571a }
	$59 = { 6f5352481b4b49545c495a561b }
	$60 = { 6854554f1c4c4e535b4e5d511c }
	$61 = { 6955544e1d4d4f525a4f5c501d }
	$62 = { 6a56574d1e4e4c51594c5f531e }
	$63 = { 6b57564c1f4f4d50584d5e521f }
	$64 = { 142829336030322f2732212d60 }
	$65 = { 152928326131332e2633202c61 }
	$66 = { 162a2b316232302d2530232f62 }
	$67 = { 172b2a306333312c2431222e63 }
	$68 = { 102c2d376434362b2336252964 }
	$69 = { 112d2c366535372a2237242865 }
	$70 = { 122e2f35663634292134272b66 }
	$71 = { 132f2e34673735282035262a67 }
	$72 = { 1c20213b68383a272f3a292568 }
	$73 = { 1d21203a69393b262e3b282469 }
	$74 = { 1e2223396a3a38252d382b276a }
	$75 = { 1f2322386b3b39242c392a266b }
	$76 = { 1824253f6c3c3e232b3e2d216c }
	$77 = { 1925243e6d3d3f222a3f2c206d }
	$78 = { 1a26273d6e3e3c21293c2f236e }
	$79 = { 1b27263c6f3f3d20283d2e226f }
	$80 = { 043839237020223f3722313d70 }
	$81 = { 053938227121233e3623303c71 }
	$82 = { 063a3b217222203d3520333f72 }
	$83 = { 073b3a207323213c3421323e73 }
	$84 = { 003c3d277424263b3326353974 }
	$85 = { 013d3c267525273a3227343875 }
	$86 = { 023e3f25762624393124373b76 }
	$87 = { 033f3e24772725383025363a77 }
	$88 = { 0c30312b78282a373f2a393578 }
	$89 = { 0d31302a79292b363e2b383479 }
	$90 = { 0e3233297a2a28353d283b377a }
	$91 = { 0f3332287b2b29343c293a367b }
	$92 = { 0834352f7c2c2e333b2e3d317c }
	$93 = { 0935342e7d2d2f323a2f3c307d }
	$94 = { 0a36372d7e2e2c31392c3f337e }
	$95 = { 0b37362c7f2f2d30382d3e327f }
	$96 = { 340809134010120f0712010d40 }
	$97 = { 350908124111130e0613000c41 }
	$98 = { 360a0b114212100d0510030f42 }
	$99 = { 370b0a104313110c0411020e43 }
	$100 = { 300c0d174414160b0316050944 }
	$101 = { 310d0c164515170a0217040845 }
	$102 = { 320e0f15461614090114070b46 }
	$103 = { 330f0e14471715080015060a47 }
	$104 = { 3c00011b48181a070f1a090548 }
	$105 = { 3d01001a49191b060e1b080449 }
	$106 = { 3e0203194a1a18050d180b074a }
	$107 = { 3f0302184b1b19040c190a064b }
	$108 = { 3804051f4c1c1e030b1e0d014c }
	$109 = { 3905041e4d1d1f020a1f0c004d }
	$110 = { 3a06071d4e1e1c01091c0f034e }
	$111 = { 3b07061c4f1f1d00081d0e024f }
	$112 = { 241819035000021f1702111d50 }
	$113 = { 251918025101031e1603101c51 }
	$114 = { 261a1b015202001d1500131f52 }
	$115 = { 271b1a005303011c1401121e53 }
	$116 = { 201c1d075404061b1306151954 }
	$117 = { 211d1c065505071a1207141855 }
	$118 = { 221e1f05560604191104171b56 }
	$119 = { 231f1e04570705181005161a57 }
	$120 = { 2c10110b58080a171f0a191558 }
	$121 = { 2d11100a59090b161e0b181459 }
	$122 = { 2e1213095a0a08151d081b175a }
	$123 = { 2f1312085b0b09141c091a165b }
	$124 = { 2814150f5c0c0e131b0e1d115c }
	$125 = { 2915140e5d0d0f121a0f1c105d }
	$126 = { 2a16170d5e0e0c11190c1f135e }
	$127 = { 2b17160c5f0f0d10180d1e125f }
	$128 = { d4e8e9f3a0f0f2efe7f2e1eda0 }
	$129 = { d5e9e8f2a1f1f3eee6f3e0eca1 }
	$130 = { d6eaebf1a2f2f0ede5f0e3efa2 }
	$131 = { d7ebeaf0a3f3f1ece4f1e2eea3 }
	$132 = { d0ecedf7a4f4f6ebe3f6e5e9a4 }
	$133 = { d1edecf6a5f5f7eae2f7e4e8a5 }
	$134 = { d2eeeff5a6f6f4e9e1f4e7eba6 }
	$135 = { d3efeef4a7f7f5e8e0f5e6eaa7 }
	$136 = { dce0e1fba8f8fae7effae9e5a8 }
	$137 = { dde1e0faa9f9fbe6eefbe8e4a9 }
	$138 = { dee2e3f9aafaf8e5edf8ebe7aa }
	$139 = { dfe3e2f8abfbf9e4ecf9eae6ab }
	$140 = { d8e4e5ffacfcfee3ebfeede1ac }
	$141 = { d9e5e4feadfdffe2eaffece0ad }
	$142 = { dae6e7fdaefefce1e9fcefe3ae }
	$143 = { dbe7e6fcaffffde0e8fdeee2af }
	$144 = { c4f8f9e3b0e0e2fff7e2f1fdb0 }
	$145 = { c5f9f8e2b1e1e3fef6e3f0fcb1 }
	$146 = { c6fafbe1b2e2e0fdf5e0f3ffb2 }
	$147 = { c7fbfae0b3e3e1fcf4e1f2feb3 }
	$148 = { c0fcfde7b4e4e6fbf3e6f5f9b4 }
	$149 = { c1fdfce6b5e5e7faf2e7f4f8b5 }
	$150 = { c2feffe5b6e6e4f9f1e4f7fbb6 }
	$151 = { c3fffee4b7e7e5f8f0e5f6fab7 }
	$152 = { ccf0f1ebb8e8eaf7ffeaf9f5b8 }
	$153 = { cdf1f0eab9e9ebf6feebf8f4b9 }
	$154 = { cef2f3e9baeae8f5fde8fbf7ba }
	$155 = { cff3f2e8bbebe9f4fce9faf6bb }
	$156 = { c8f4f5efbceceef3fbeefdf1bc }
	$157 = { c9f5f4eebdedeff2faeffcf0bd }
	$158 = { caf6f7edbeeeecf1f9ecfff3be }
	$159 = { cbf7f6ecbfefedf0f8edfef2bf }
	$160 = { f4c8c9d380d0d2cfc7d2c1cd80 }
	$161 = { f5c9c8d281d1d3cec6d3c0cc81 }
	$162 = { f6cacbd182d2d0cdc5d0c3cf82 }
	$163 = { f7cbcad083d3d1ccc4d1c2ce83 }
	$164 = { f0cccdd784d4d6cbc3d6c5c984 }
	$165 = { f1cdccd685d5d7cac2d7c4c885 }
	$166 = { f2cecfd586d6d4c9c1d4c7cb86 }
	$167 = { f3cfced487d7d5c8c0d5c6ca87 }
	$168 = { fcc0c1db88d8dac7cfdac9c588 }
	$169 = { fdc1c0da89d9dbc6cedbc8c489 }
	$170 = { fec2c3d98adad8c5cdd8cbc78a }
	$171 = { ffc3c2d88bdbd9c4ccd9cac68b }
	$172 = { f8c4c5df8cdcdec3cbdecdc18c }
	$173 = { f9c5c4de8ddddfc2cadfccc08d }
	$174 = { fac6c7dd8ededcc1c9dccfc38e }
	$175 = { fbc7c6dc8fdfddc0c8ddcec28f }
	$176 = { e4d8d9c390c0c2dfd7c2d1dd90 }
	$177 = { e5d9d8c291c1c3ded6c3d0dc91 }
	$178 = { e6dadbc192c2c0ddd5c0d3df92 }
	$179 = { e7dbdac093c3c1dcd4c1d2de93 }
	$180 = { e0dcddc794c4c6dbd3c6d5d994 }
	$181 = { e1dddcc695c5c7dad2c7d4d895 }
	$182 = { e2dedfc596c6c4d9d1c4d7db96 }
	$183 = { e3dfdec497c7c5d8d0c5d6da97 }
	$184 = { ecd0d1cb98c8cad7dfcad9d598 }
	$185 = { edd1d0ca99c9cbd6decbd8d499 }
	$186 = { eed2d3c99acac8d5ddc8dbd79a }
	$187 = { efd3d2c89bcbc9d4dcc9dad69b }
	$188 = { e8d4d5cf9cccced3dbceddd19c }
	$189 = { e9d5d4ce9dcdcfd2dacfdcd09d }
	$190 = { ead6d7cd9ececcd1d9ccdfd39e }
	$191 = { ebd7d6cc9fcfcdd0d8cdded29f }
	$192 = { 94a8a9b3e0b0b2afa7b2a1ade0 }
	$193 = { 95a9a8b2e1b1b3aea6b3a0ace1 }
	$194 = { 96aaabb1e2b2b0ada5b0a3afe2 }
	$195 = { 97abaab0e3b3b1aca4b1a2aee3 }
	$196 = { 90acadb7e4b4b6aba3b6a5a9e4 }
	$197 = { 91adacb6e5b5b7aaa2b7a4a8e5 }
	$198 = { 92aeafb5e6b6b4a9a1b4a7abe6 }
	$199 = { 93afaeb4e7b7b5a8a0b5a6aae7 }
	$200 = { 9ca0a1bbe8b8baa7afbaa9a5e8 }
	$201 = { 9da1a0bae9b9bba6aebba8a4e9 }
	$202 = { 9ea2a3b9eabab8a5adb8aba7ea }
	$203 = { 9fa3a2b8ebbbb9a4acb9aaa6eb }
	$204 = { 98a4a5bfecbcbea3abbeada1ec }
	$205 = { 99a5a4beedbdbfa2aabfaca0ed }
	$206 = { 9aa6a7bdeebebca1a9bcafa3ee }
	$207 = { 9ba7a6bcefbfbda0a8bdaea2ef }
	$208 = { 84b8b9a3f0a0a2bfb7a2b1bdf0 }
	$209 = { 85b9b8a2f1a1a3beb6a3b0bcf1 }
	$210 = { 86babba1f2a2a0bdb5a0b3bff2 }
	$211 = { 87bbbaa0f3a3a1bcb4a1b2bef3 }
	$212 = { 80bcbda7f4a4a6bbb3a6b5b9f4 }
	$213 = { 81bdbca6f5a5a7bab2a7b4b8f5 }
	$214 = { 82bebfa5f6a6a4b9b1a4b7bbf6 }
	$215 = { 83bfbea4f7a7a5b8b0a5b6baf7 }
	$216 = { 8cb0b1abf8a8aab7bfaab9b5f8 }
	$217 = { 8db1b0aaf9a9abb6beabb8b4f9 }
	$218 = { 8eb2b3a9faaaa8b5bda8bbb7fa }
	$219 = { 8fb3b2a8fbaba9b4bca9bab6fb }
	$220 = { 88b4b5affcacaeb3bbaebdb1fc }
	$221 = { 89b5b4aefdadafb2baafbcb0fd }
	$222 = { 8ab6b7adfeaeacb1b9acbfb3fe }
	$223 = { 8bb7b6acffafadb0b8adbeb2ff }
	$224 = { b4888993c090928f8792818dc0 }
	$225 = { b5898892c191938e8693808cc1 }
	$226 = { b68a8b91c292908d8590838fc2 }
	$227 = { b78b8a90c393918c8491828ec3 }
	$228 = { b08c8d97c494968b83968589c4 }
	$229 = { b18d8c96c595978a82978488c5 }
	$230 = { b28e8f95c69694898194878bc6 }
	$231 = { b38f8e94c79795888095868ac7 }
	$232 = { bc80819bc8989a878f9a8985c8 }
	$233 = { bd81809ac9999b868e9b8884c9 }
	$234 = { be828399ca9a98858d988b87ca }
	$235 = { bf838298cb9b99848c998a86cb }
	$236 = { b884859fcc9c9e838b9e8d81cc }
	$237 = { b985849ecd9d9f828a9f8c80cd }
	$238 = { ba86879dce9e9c81899c8f83ce }
	$239 = { bb87869ccf9f9d80889d8e82cf }
	$240 = { a4989983d080829f9782919dd0 }
	$241 = { a5999882d181839e9683909cd1 }
	$242 = { a69a9b81d282809d9580939fd2 }
	$243 = { a79b9a80d383819c9481929ed3 }
	$244 = { a09c9d87d484869b93869599d4 }
	$245 = { a19d9c86d585879a92879498d5 }
	$246 = { a29e9f85d68684999184979bd6 }
	$247 = { a39f9e84d78785989085969ad7 }
	$248 = { ac90918bd8888a979f8a9995d8 }
	$249 = { ad91908ad9898b969e8b9894d9 }
	$250 = { ae929389da8a88959d889b97da }
	$251 = { af939288db8b89949c899a96db }
	$252 = { a894958fdc8c8e939b8e9d91dc }
	$253 = { a995948edd8d8f929a8f9c90dd }
	$254 = { aa96978dde8e8c91998c9f93de }
condition:
	any of them

}

/*
// author - matt
// sig type - Shellcode
// badness - 8
// shellcode
*/
rule shellcode_7503
{
strings:
	$a = { 75 03 74 01 e8 }

condition:
	$a

}

/*
// author - matt
// sig type - Embedded Trojan
// badness - 9
// hongzinst
*/
rule xor_hongzinst
{
strings:
  $xorhongzinst1 = { 69 6e 6f 66 7b 68 6f 72 75  } 
  $revhongzinst1 = { 69 6f 91 99 87 95 95 89 8d  } 
  $xorhongzinst2 = { 6a 6d 6c 65 78 6b 6c 71 76  } 
  $revhongzinst2 = { 6a 6e 6e 98 84 94 92 88 8e  } 
  $xorhongzinst3 = { 6b 6c 6d 64 79 6a 6d 70 77  } 
  $revhongzinst3 = { 6b 6d 6f 67 85 97 93 8f 8f  } 
  $xorhongzinst4 = { 6c 6b 6a 63 7e 6d 6a 77 70  } 
  $revhongzinst4 = { 6c 6c 6c 66 7a 96 90 8e 88  } 
  $xorhongzinst5 = { 6d 6a 6b 62 7f 6c 6b 76 71  } 
  $revhongzinst5 = { 6d 6b 6d 65 7b 69 91 8d 89  } 
  $xorhongzinst6 = { 6e 69 68 61 7c 6f 68 75 72  } 
  $revhongzinst6 = { 6e 6a 6a 64 78 68 6e 8c 8a  } 
  $xorhongzinst7 = { 6f 68 69 60 7d 6e 69 74 73  } 
  $revhongzinst7 = { 6f 69 6b 63 79 6b 6f 73 8b  } 
  $xorhongzinst8 = { 60 67 66 6f 72 61 66 7b 7c  } 
  $revhongzinst8 = { 60 68 68 62 7e 6a 6c 72 74  } 
  $xorhongzinst9 = { 61 66 67 6e 73 60 67 7a 7d  } 
  $revhongzinst9 = { 61 67 69 61 7f 6d 6d 71 75  } 
  $xorhongzinst10 = { 62 65 64 6d 70 63 64 79 7e  } 
  $revhongzinst10 = { 62 66 66 60 7c 6c 6a 70 76  } 
  $xorhongzinst11 = { 63 64 65 6c 71 62 65 78 7f  } 
  $revhongzinst11 = { 63 65 67 6f 7d 6f 6b 77 77  } 
  $xorhongzinst12 = { 64 63 62 6b 76 65 62 7f 78  } 
  $revhongzinst12 = { 64 64 64 6e 72 6e 68 76 70  } 
  $xorhongzinst13 = { 65 62 63 6a 77 64 63 7e 79  } 
  $revhongzinst13 = { 65 63 65 6d 73 61 69 75 71  } 
  $xorhongzinst14 = { 66 61 60 69 74 67 60 7d 7a  } 
  $revhongzinst14 = { 66 62 62 6c 70 60 66 74 72  } 
  $xorhongzinst15 = { 67 60 61 68 75 66 61 7c 7b  } 
  $revhongzinst15 = { 67 61 63 6b 71 63 67 7b 73  } 
  $xorhongzinst16 = { 78 7f 7e 77 6a 79 7e 63 64  } 
  $revhongzinst16 = { 78 60 60 6a 76 62 64 7a 7c  } 
  $xorhongzinst17 = { 79 7e 7f 76 6b 78 7f 62 65  } 
  $revhongzinst17 = { 79 7f 61 69 77 65 65 79 7d  } 
  $xorhongzinst18 = { 7a 7d 7c 75 68 7b 7c 61 66  } 
  $revhongzinst18 = { 7a 7e 7e 68 74 64 62 78 7e  } 
  $xorhongzinst19 = { 7b 7c 7d 74 69 7a 7d 60 67  } 
  $revhongzinst19 = { 7b 7d 7f 77 75 67 63 7f 7f  } 
  $xorhongzinst20 = { 7c 7b 7a 73 6e 7d 7a 67 60  } 
  $revhongzinst20 = { 7c 7c 7c 76 6a 66 60 7e 78  } 
  $xorhongzinst21 = { 7d 7a 7b 72 6f 7c 7b 66 61  } 
  $revhongzinst21 = { 7d 7b 7d 75 6b 79 61 7d 79  } 
  $xorhongzinst22 = { 7e 79 78 71 6c 7f 78 65 62  } 
  $revhongzinst22 = { 7e 7a 7a 74 68 78 7e 7c 7a  } 
  $xorhongzinst23 = { 7f 78 79 70 6d 7e 79 64 63  } 
  $revhongzinst23 = { 7f 79 7b 73 69 7b 7f 63 7b  } 
  $xorhongzinst24 = { 70 77 76 7f 62 71 76 6b 6c  } 
  $revhongzinst24 = { 70 78 78 72 6e 7a 7c 62 64  } 
  $xorhongzinst25 = { 71 76 77 7e 63 70 77 6a 6d  } 
  $revhongzinst25 = { 71 77 79 71 6f 7d 7d 61 65  } 
  $xorhongzinst26 = { 72 75 74 7d 60 73 74 69 6e  } 
  $revhongzinst26 = { 72 76 76 70 6c 7c 7a 60 66  } 
  $xorhongzinst27 = { 73 74 75 7c 61 72 75 68 6f  } 
  $revhongzinst27 = { 73 75 77 7f 6d 7f 7b 67 67  } 
  $xorhongzinst28 = { 74 73 72 7b 66 75 72 6f 68  } 
  $revhongzinst28 = { 74 74 74 7e 62 7e 78 66 60  } 
  $xorhongzinst29 = { 75 72 73 7a 67 74 73 6e 69  } 
  $revhongzinst29 = { 75 73 75 7d 63 71 79 65 61  } 
  $xorhongzinst30 = { 76 71 70 79 64 77 70 6d 6a  } 
  $revhongzinst30 = { 76 72 72 7c 60 70 76 64 62  } 
  $xorhongzinst31 = { 77 70 71 78 65 76 71 6c 6b  } 
  $revhongzinst31 = { 77 71 73 7b 61 73 77 6b 63  } 
  $xorhongzinst32 = { 48 4f 4e 47 5a 49 4e 53 54  } 
  $revhongzinst32 = { 48 70 70 7a 66 72 74 6a 6c  } 
  $xorhongzinst33 = { 49 4e 4f 46 5b 48 4f 52 55  } 
  $revhongzinst33 = { 49 4f 71 79 67 75 75 69 6d  } 
  $xorhongzinst34 = { 4a 4d 4c 45 58 4b 4c 51 56  } 
  $revhongzinst34 = { 4a 4e 4e 78 64 74 72 68 6e  } 
  $xorhongzinst35 = { 4b 4c 4d 44 59 4a 4d 50 57  } 
  $revhongzinst35 = { 4b 4d 4f 47 65 77 73 6f 6f  } 
  $xorhongzinst36 = { 4c 4b 4a 43 5e 4d 4a 57 50  } 
  $revhongzinst36 = { 4c 4c 4c 46 5a 76 70 6e 68  } 
  $xorhongzinst37 = { 4d 4a 4b 42 5f 4c 4b 56 51  } 
  $revhongzinst37 = { 4d 4b 4d 45 5b 49 71 6d 69  } 
  $xorhongzinst38 = { 4e 49 48 41 5c 4f 48 55 52  } 
  $revhongzinst38 = { 4e 4a 4a 44 58 48 4e 6c 6a  } 
  $xorhongzinst39 = { 4f 48 49 40 5d 4e 49 54 53  } 
  $revhongzinst39 = { 4f 49 4b 43 59 4b 4f 53 6b  } 
  $xorhongzinst40 = { 40 47 46 4f 52 41 46 5b 5c  } 
  $revhongzinst40 = { 40 48 48 42 5e 4a 4c 52 54  } 
  $xorhongzinst41 = { 41 46 47 4e 53 40 47 5a 5d  } 
  $revhongzinst41 = { 41 47 49 41 5f 4d 4d 51 55  } 
  $xorhongzinst42 = { 42 45 44 4d 50 43 44 59 5e  } 
  $revhongzinst42 = { 42 46 46 40 5c 4c 4a 50 56  } 
  $xorhongzinst43 = { 43 44 45 4c 51 42 45 58 5f  } 
  $revhongzinst43 = { 43 45 47 4f 5d 4f 4b 57 57  } 
  $xorhongzinst44 = { 44 43 42 4b 56 45 42 5f 58  } 
  $revhongzinst44 = { 44 44 44 4e 52 4e 48 56 50  } 
  $xorhongzinst45 = { 45 42 43 4a 57 44 43 5e 59  } 
  $revhongzinst45 = { 45 43 45 4d 53 41 49 55 51  } 
  $xorhongzinst46 = { 46 41 40 49 54 47 40 5d 5a  } 
  $revhongzinst46 = { 46 42 42 4c 50 40 46 54 52  } 
  $xorhongzinst47 = { 47 40 41 48 55 46 41 5c 5b  } 
  $revhongzinst47 = { 47 41 43 4b 51 43 47 5b 53  } 
  $xorhongzinst48 = { 58 5f 5e 57 4a 59 5e 43 44  } 
  $revhongzinst48 = { 58 40 40 4a 56 42 44 5a 5c  } 
  $xorhongzinst49 = { 59 5e 5f 56 4b 58 5f 42 45  } 
  $revhongzinst49 = { 59 5f 41 49 57 45 45 59 5d  } 
  $xorhongzinst50 = { 5a 5d 5c 55 48 5b 5c 41 46  } 
  $revhongzinst50 = { 5a 5e 5e 48 54 44 42 58 5e  } 
  $xorhongzinst51 = { 5b 5c 5d 54 49 5a 5d 40 47  } 
  $revhongzinst51 = { 5b 5d 5f 57 55 47 43 5f 5f  } 
  $xorhongzinst52 = { 5c 5b 5a 53 4e 5d 5a 47 40  } 
  $revhongzinst52 = { 5c 5c 5c 56 4a 46 40 5e 58  } 
  $xorhongzinst53 = { 5d 5a 5b 52 4f 5c 5b 46 41  } 
  $revhongzinst53 = { 5d 5b 5d 55 4b 59 41 5d 59  } 
  $xorhongzinst54 = { 5e 59 58 51 4c 5f 58 45 42  } 
  $revhongzinst54 = { 5e 5a 5a 54 48 58 5e 5c 5a  } 
  $xorhongzinst55 = { 5f 58 59 50 4d 5e 59 44 43  } 
  $revhongzinst55 = { 5f 59 5b 53 49 5b 5f 43 5b  } 
  $xorhongzinst56 = { 50 57 56 5f 42 51 56 4b 4c  } 
  $revhongzinst56 = { 50 58 58 52 4e 5a 5c 42 44  } 
  $xorhongzinst57 = { 51 56 57 5e 43 50 57 4a 4d  } 
  $revhongzinst57 = { 51 57 59 51 4f 5d 5d 41 45  } 
  $xorhongzinst58 = { 52 55 54 5d 40 53 54 49 4e  } 
  $revhongzinst58 = { 52 56 56 50 4c 5c 5a 40 46  } 
  $xorhongzinst59 = { 53 54 55 5c 41 52 55 48 4f  } 
  $revhongzinst59 = { 53 55 57 5f 4d 5f 5b 47 47  } 
  $xorhongzinst60 = { 54 53 52 5b 46 55 52 4f 48  } 
  $revhongzinst60 = { 54 54 54 5e 42 5e 58 46 40  } 
  $xorhongzinst61 = { 55 52 53 5a 47 54 53 4e 49  } 
  $revhongzinst61 = { 55 53 55 5d 43 51 59 45 41  } 
  $xorhongzinst62 = { 56 51 50 59 44 57 50 4d 4a  } 
  $revhongzinst62 = { 56 52 52 5c 40 50 56 44 42  } 
  $xorhongzinst63 = { 57 50 51 58 45 56 51 4c 4b  } 
  $revhongzinst63 = { 57 51 53 5b 41 53 57 4b 43  } 
  $xorhongzinst64 = { 28 2f 2e 27 3a 29 2e 33 34  } 
  $revhongzinst64 = { 28 50 50 5a 46 52 54 4a 4c  } 
  $xorhongzinst65 = { 29 2e 2f 26 3b 28 2f 32 35  } 
  $revhongzinst65 = { 29 2f 51 59 47 55 55 49 4d  } 
  $xorhongzinst66 = { 2a 2d 2c 25 38 2b 2c 31 36  } 
  $revhongzinst66 = { 2a 2e 2e 58 44 54 52 48 4e  } 
  $xorhongzinst67 = { 2b 2c 2d 24 39 2a 2d 30 37  } 
  $revhongzinst67 = { 2b 2d 2f 27 45 57 53 4f 4f  } 
  $xorhongzinst68 = { 2c 2b 2a 23 3e 2d 2a 37 30  } 
  $revhongzinst68 = { 2c 2c 2c 26 3a 56 50 4e 48  } 
  $xorhongzinst69 = { 2d 2a 2b 22 3f 2c 2b 36 31  } 
  $revhongzinst69 = { 2d 2b 2d 25 3b 29 51 4d 49  } 
  $xorhongzinst70 = { 2e 29 28 21 3c 2f 28 35 32  } 
  $revhongzinst70 = { 2e 2a 2a 24 38 28 2e 4c 4a  } 
  $xorhongzinst71 = { 2f 28 29 20 3d 2e 29 34 33  } 
  $revhongzinst71 = { 2f 29 2b 23 39 2b 2f 33 4b  } 
  $xorhongzinst72 = { 20 27 26 2f 32 21 26 3b 3c  } 
  $revhongzinst72 = { 20 28 28 22 3e 2a 2c 32 34  } 
  $xorhongzinst73 = { 21 26 27 2e 33 20 27 3a 3d  } 
  $revhongzinst73 = { 21 27 29 21 3f 2d 2d 31 35  } 
  $xorhongzinst74 = { 22 25 24 2d 30 23 24 39 3e  } 
  $revhongzinst74 = { 22 26 26 20 3c 2c 2a 30 36  } 
  $xorhongzinst75 = { 23 24 25 2c 31 22 25 38 3f  } 
  $revhongzinst75 = { 23 25 27 2f 3d 2f 2b 37 37  } 
  $xorhongzinst76 = { 24 23 22 2b 36 25 22 3f 38  } 
  $revhongzinst76 = { 24 24 24 2e 32 2e 28 36 30  } 
  $xorhongzinst77 = { 25 22 23 2a 37 24 23 3e 39  } 
  $revhongzinst77 = { 25 23 25 2d 33 21 29 35 31  } 
  $xorhongzinst78 = { 26 21 20 29 34 27 20 3d 3a  } 
  $revhongzinst78 = { 26 22 22 2c 30 20 26 34 32  } 
  $xorhongzinst79 = { 27 20 21 28 35 26 21 3c 3b  } 
  $revhongzinst79 = { 27 21 23 2b 31 23 27 3b 33  } 
  $xorhongzinst80 = { 38 3f 3e 37 2a 39 3e 23 24  } 
  $revhongzinst80 = { 38 20 20 2a 36 22 24 3a 3c  } 
  $xorhongzinst81 = { 39 3e 3f 36 2b 38 3f 22 25  } 
  $revhongzinst81 = { 39 3f 21 29 37 25 25 39 3d  } 
  $xorhongzinst82 = { 3a 3d 3c 35 28 3b 3c 21 26  } 
  $revhongzinst82 = { 3a 3e 3e 28 34 24 22 38 3e  } 
  $xorhongzinst83 = { 3b 3c 3d 34 29 3a 3d 20 27  } 
  $revhongzinst83 = { 3b 3d 3f 37 35 27 23 3f 3f  } 
  $xorhongzinst84 = { 3c 3b 3a 33 2e 3d 3a 27 20  } 
  $revhongzinst84 = { 3c 3c 3c 36 2a 26 20 3e 38  } 
  $xorhongzinst85 = { 3d 3a 3b 32 2f 3c 3b 26 21  } 
  $revhongzinst85 = { 3d 3b 3d 35 2b 39 21 3d 39  } 
  $xorhongzinst86 = { 3e 39 38 31 2c 3f 38 25 22  } 
  $revhongzinst86 = { 3e 3a 3a 34 28 38 3e 3c 3a  } 
  $xorhongzinst87 = { 3f 38 39 30 2d 3e 39 24 23  } 
  $revhongzinst87 = { 3f 39 3b 33 29 3b 3f 23 3b  } 
  $xorhongzinst88 = { 30 37 36 3f 22 31 36 2b 2c  } 
  $revhongzinst88 = { 30 38 38 32 2e 3a 3c 22 24  } 
  $xorhongzinst89 = { 31 36 37 3e 23 30 37 2a 2d  } 
  $revhongzinst89 = { 31 37 39 31 2f 3d 3d 21 25  } 
  $xorhongzinst90 = { 32 35 34 3d 20 33 34 29 2e  } 
  $revhongzinst90 = { 32 36 36 30 2c 3c 3a 20 26  } 
  $xorhongzinst91 = { 33 34 35 3c 21 32 35 28 2f  } 
  $revhongzinst91 = { 33 35 37 3f 2d 3f 3b 27 27  } 
  $xorhongzinst92 = { 34 33 32 3b 26 35 32 2f 28  } 
  $revhongzinst92 = { 34 34 34 3e 22 3e 38 26 20  } 
  $xorhongzinst93 = { 35 32 33 3a 27 34 33 2e 29  } 
  $revhongzinst93 = { 35 33 35 3d 23 31 39 25 21  } 
  $xorhongzinst94 = { 36 31 30 39 24 37 30 2d 2a  } 
  $revhongzinst94 = { 36 32 32 3c 20 30 36 24 22  } 
  $xorhongzinst95 = { 37 30 31 38 25 36 31 2c 2b  } 
  $revhongzinst95 = { 37 31 33 3b 21 33 37 2b 23  } 
  $xorhongzinst96 = { 08 0f 0e 07 1a 09 0e 13 14  } 
  $revhongzinst96 = { 08 30 30 3a 26 32 34 2a 2c  } 
  $xorhongzinst97 = { 09 0e 0f 06 1b 08 0f 12 15  } 
  $revhongzinst97 = { 09 0f 31 39 27 35 35 29 2d  } 
  $xorhongzinst98 = { 0a 0d 0c 05 18 0b 0c 11 16  } 
  $revhongzinst98 = { 0a 0e 0e 38 24 34 32 28 2e  } 
  $xorhongzinst99 = { 0b 0c 0d 04 19 0a 0d 10 17  } 
  $revhongzinst99 = { 0b 0d 0f 07 25 37 33 2f 2f  } 
  $xorhongzinst100 = { 0c 0b 0a 03 1e 0d 0a 17 10  } 
  $revhongzinst100 = { 0c 0c 0c 06 1a 36 30 2e 28  } 
  $xorhongzinst101 = { 0d 0a 0b 02 1f 0c 0b 16 11  } 
  $revhongzinst101 = { 0d 0b 0d 05 1b 09 31 2d 29  } 
  $xorhongzinst102 = { 0e 09 08 01 1c 0f 08 15 12  } 
  $revhongzinst102 = { 0e 0a 0a 04 18 08 0e 2c 2a  } 
  $xorhongzinst103 = { 0f 08 09 00 1d 0e 09 14 13  } 
  $revhongzinst103 = { 0f 09 0b 03 19 0b 0f 13 2b  } 
  $xorhongzinst104 = { 00 07 06 0f 12 01 06 1b 1c  } 
  $revhongzinst104 = { 00 08 08 02 1e 0a 0c 12 14  } 
  $xorhongzinst105 = { 01 06 07 0e 13 00 07 1a 1d  } 
  $revhongzinst105 = { 01 07 09 01 1f 0d 0d 11 15  } 
  $xorhongzinst106 = { 02 05 04 0d 10 03 04 19 1e  } 
  $revhongzinst106 = { 02 06 06 00 1c 0c 0a 10 16  } 
  $xorhongzinst107 = { 03 04 05 0c 11 02 05 18 1f  } 
  $revhongzinst107 = { 03 05 07 0f 1d 0f 0b 17 17  } 
  $xorhongzinst108 = { 04 03 02 0b 16 05 02 1f 18  } 
  $revhongzinst108 = { 04 04 04 0e 12 0e 08 16 10  } 
  $xorhongzinst109 = { 05 02 03 0a 17 04 03 1e 19  } 
  $revhongzinst109 = { 05 03 05 0d 13 01 09 15 11  } 
  $xorhongzinst110 = { 06 01 00 09 14 07 00 1d 1a  } 
  $revhongzinst110 = { 06 02 02 0c 10 00 06 14 12  } 
  $xorhongzinst111 = { 07 00 01 08 15 06 01 1c 1b  } 
  $revhongzinst111 = { 07 01 03 0b 11 03 07 1b 13  } 
  $xorhongzinst112 = { 18 1f 1e 17 0a 19 1e 03 04  } 
  $revhongzinst112 = { 18 00 00 0a 16 02 04 1a 1c  } 
  $xorhongzinst113 = { 19 1e 1f 16 0b 18 1f 02 05  } 
  $revhongzinst113 = { 19 1f 01 09 17 05 05 19 1d  } 
  $xorhongzinst114 = { 1a 1d 1c 15 08 1b 1c 01 06  } 
  $revhongzinst114 = { 1a 1e 1e 08 14 04 02 18 1e  } 
  $xorhongzinst115 = { 1b 1c 1d 14 09 1a 1d 00 07  } 
  $revhongzinst115 = { 1b 1d 1f 17 15 07 03 1f 1f  } 
  $xorhongzinst116 = { 1c 1b 1a 13 0e 1d 1a 07 00  } 
  $revhongzinst116 = { 1c 1c 1c 16 0a 06 00 1e 18  } 
  $xorhongzinst117 = { 1d 1a 1b 12 0f 1c 1b 06 01  } 
  $revhongzinst117 = { 1d 1b 1d 15 0b 19 01 1d 19  } 
  $xorhongzinst118 = { 1e 19 18 11 0c 1f 18 05 02  } 
  $revhongzinst118 = { 1e 1a 1a 14 08 18 1e 1c 1a  } 
  $xorhongzinst119 = { 1f 18 19 10 0d 1e 19 04 03  } 
  $revhongzinst119 = { 1f 19 1b 13 09 1b 1f 03 1b  } 
  $xorhongzinst120 = { 10 17 16 1f 02 11 16 0b 0c  } 
  $revhongzinst120 = { 10 18 18 12 0e 1a 1c 02 04  } 
  $xorhongzinst121 = { 11 16 17 1e 03 10 17 0a 0d  } 
  $revhongzinst121 = { 11 17 19 11 0f 1d 1d 01 05  } 
  $xorhongzinst122 = { 12 15 14 1d 00 13 14 09 0e  } 
  $revhongzinst122 = { 12 16 16 10 0c 1c 1a 00 06  } 
  $xorhongzinst123 = { 13 14 15 1c 01 12 15 08 0f  } 
  $revhongzinst123 = { 13 15 17 1f 0d 1f 1b 07 07  } 
  $xorhongzinst124 = { 14 13 12 1b 06 15 12 0f 08  } 
  $revhongzinst124 = { 14 14 14 1e 02 1e 18 06 00  } 
  $xorhongzinst125 = { 15 12 13 1a 07 14 13 0e 09  } 
  $revhongzinst125 = { 15 13 15 1d 03 11 19 05 01  } 
  $xorhongzinst126 = { 16 11 10 19 04 17 10 0d 0a  } 
  $revhongzinst126 = { 16 12 12 1c 00 10 16 04 02  } 
  $xorhongzinst127 = { 17 10 11 18 05 16 11 0c 0b  } 
  $revhongzinst127 = { 17 11 13 1b 01 13 17 0b 03  } 
  $xorhongzinst128 = { e8 ef ee e7 fa e9 ee f3 f4  } 
  $revhongzinst128 = { e8 10 10 1a 06 12 14 0a 0c  } 
  $xorhongzinst129 = { e9 ee ef e6 fb e8 ef f2 f5  } 
  $revhongzinst129 = { e9 ef 11 19 07 15 15 09 0d  } 
  $xorhongzinst130 = { ea ed ec e5 f8 eb ec f1 f6  } 
  $revhongzinst130 = { ea ee ee 18 04 14 12 08 0e  } 
  $xorhongzinst131 = { eb ec ed e4 f9 ea ed f0 f7  } 
  $revhongzinst131 = { eb ed ef e7 05 17 13 0f 0f  } 
  $xorhongzinst132 = { ec eb ea e3 fe ed ea f7 f0  } 
  $revhongzinst132 = { ec ec ec e6 fa 16 10 0e 08  } 
  $xorhongzinst133 = { ed ea eb e2 ff ec eb f6 f1  } 
  $revhongzinst133 = { ed eb ed e5 fb e9 11 0d 09  } 
  $xorhongzinst134 = { ee e9 e8 e1 fc ef e8 f5 f2  } 
  $revhongzinst134 = { ee ea ea e4 f8 e8 ee 0c 0a  } 
  $xorhongzinst135 = { ef e8 e9 e0 fd ee e9 f4 f3  } 
  $revhongzinst135 = { ef e9 eb e3 f9 eb ef f3 0b  } 
  $xorhongzinst136 = { e0 e7 e6 ef f2 e1 e6 fb fc  } 
  $revhongzinst136 = { e0 e8 e8 e2 fe ea ec f2 f4  } 
  $xorhongzinst137 = { e1 e6 e7 ee f3 e0 e7 fa fd  } 
  $revhongzinst137 = { e1 e7 e9 e1 ff ed ed f1 f5  } 
  $xorhongzinst138 = { e2 e5 e4 ed f0 e3 e4 f9 fe  } 
  $revhongzinst138 = { e2 e6 e6 e0 fc ec ea f0 f6  } 
  $xorhongzinst139 = { e3 e4 e5 ec f1 e2 e5 f8 ff  } 
  $revhongzinst139 = { e3 e5 e7 ef fd ef eb f7 f7  } 
  $xorhongzinst140 = { e4 e3 e2 eb f6 e5 e2 ff f8  } 
  $revhongzinst140 = { e4 e4 e4 ee f2 ee e8 f6 f0  } 
  $xorhongzinst141 = { e5 e2 e3 ea f7 e4 e3 fe f9  } 
  $revhongzinst141 = { e5 e3 e5 ed f3 e1 e9 f5 f1  } 
  $xorhongzinst142 = { e6 e1 e0 e9 f4 e7 e0 fd fa  } 
  $revhongzinst142 = { e6 e2 e2 ec f0 e0 e6 f4 f2  } 
  $xorhongzinst143 = { e7 e0 e1 e8 f5 e6 e1 fc fb  } 
  $revhongzinst143 = { e7 e1 e3 eb f1 e3 e7 fb f3  } 
  $xorhongzinst144 = { f8 ff fe f7 ea f9 fe e3 e4  } 
  $revhongzinst144 = { f8 e0 e0 ea f6 e2 e4 fa fc  } 
  $xorhongzinst145 = { f9 fe ff f6 eb f8 ff e2 e5  } 
  $revhongzinst145 = { f9 ff e1 e9 f7 e5 e5 f9 fd  } 
  $xorhongzinst146 = { fa fd fc f5 e8 fb fc e1 e6  } 
  $revhongzinst146 = { fa fe fe e8 f4 e4 e2 f8 fe  } 
  $xorhongzinst147 = { fb fc fd f4 e9 fa fd e0 e7  } 
  $revhongzinst147 = { fb fd ff f7 f5 e7 e3 ff ff  } 
  $xorhongzinst148 = { fc fb fa f3 ee fd fa e7 e0  } 
  $revhongzinst148 = { fc fc fc f6 ea e6 e0 fe f8  } 
  $xorhongzinst149 = { fd fa fb f2 ef fc fb e6 e1  } 
  $revhongzinst149 = { fd fb fd f5 eb f9 e1 fd f9  } 
  $xorhongzinst150 = { fe f9 f8 f1 ec ff f8 e5 e2  } 
  $revhongzinst150 = { fe fa fa f4 e8 f8 fe fc fa  } 
  $xorhongzinst151 = { ff f8 f9 f0 ed fe f9 e4 e3  } 
  $revhongzinst151 = { ff f9 fb f3 e9 fb ff e3 fb  } 
  $xorhongzinst152 = { f0 f7 f6 ff e2 f1 f6 eb ec  } 
  $revhongzinst152 = { f0 f8 f8 f2 ee fa fc e2 e4  } 
  $xorhongzinst153 = { f1 f6 f7 fe e3 f0 f7 ea ed  } 
  $revhongzinst153 = { f1 f7 f9 f1 ef fd fd e1 e5  } 
  $xorhongzinst154 = { f2 f5 f4 fd e0 f3 f4 e9 ee  } 
  $revhongzinst154 = { f2 f6 f6 f0 ec fc fa e0 e6  } 
  $xorhongzinst155 = { f3 f4 f5 fc e1 f2 f5 e8 ef  } 
  $revhongzinst155 = { f3 f5 f7 ff ed ff fb e7 e7  } 
  $xorhongzinst156 = { f4 f3 f2 fb e6 f5 f2 ef e8  } 
  $revhongzinst156 = { f4 f4 f4 fe e2 fe f8 e6 e0  } 
  $xorhongzinst157 = { f5 f2 f3 fa e7 f4 f3 ee e9  } 
  $revhongzinst157 = { f5 f3 f5 fd e3 f1 f9 e5 e1  } 
  $xorhongzinst158 = { f6 f1 f0 f9 e4 f7 f0 ed ea  } 
  $revhongzinst158 = { f6 f2 f2 fc e0 f0 f6 e4 e2  } 
  $xorhongzinst159 = { f7 f0 f1 f8 e5 f6 f1 ec eb  } 
  $revhongzinst159 = { f7 f1 f3 fb e1 f3 f7 eb e3  } 
  $xorhongzinst160 = { c8 cf ce c7 da c9 ce d3 d4  } 
  $revhongzinst160 = { c8 f0 f0 fa e6 f2 f4 ea ec  } 
  $xorhongzinst161 = { c9 ce cf c6 db c8 cf d2 d5  } 
  $revhongzinst161 = { c9 cf f1 f9 e7 f5 f5 e9 ed  } 
  $xorhongzinst162 = { ca cd cc c5 d8 cb cc d1 d6  } 
  $revhongzinst162 = { ca ce ce f8 e4 f4 f2 e8 ee  } 
  $xorhongzinst163 = { cb cc cd c4 d9 ca cd d0 d7  } 
  $revhongzinst163 = { cb cd cf c7 e5 f7 f3 ef ef  } 
  $xorhongzinst164 = { cc cb ca c3 de cd ca d7 d0  } 
  $revhongzinst164 = { cc cc cc c6 da f6 f0 ee e8  } 
  $xorhongzinst165 = { cd ca cb c2 df cc cb d6 d1  } 
  $revhongzinst165 = { cd cb cd c5 db c9 f1 ed e9  } 
  $xorhongzinst166 = { ce c9 c8 c1 dc cf c8 d5 d2  } 
  $revhongzinst166 = { ce ca ca c4 d8 c8 ce ec ea  } 
  $xorhongzinst167 = { cf c8 c9 c0 dd ce c9 d4 d3  } 
  $revhongzinst167 = { cf c9 cb c3 d9 cb cf d3 eb  } 
  $xorhongzinst168 = { c0 c7 c6 cf d2 c1 c6 db dc  } 
  $revhongzinst168 = { c0 c8 c8 c2 de ca cc d2 d4  } 
  $xorhongzinst169 = { c1 c6 c7 ce d3 c0 c7 da dd  } 
  $revhongzinst169 = { c1 c7 c9 c1 df cd cd d1 d5  } 
  $xorhongzinst170 = { c2 c5 c4 cd d0 c3 c4 d9 de  } 
  $revhongzinst170 = { c2 c6 c6 c0 dc cc ca d0 d6  } 
  $xorhongzinst171 = { c3 c4 c5 cc d1 c2 c5 d8 df  } 
  $revhongzinst171 = { c3 c5 c7 cf dd cf cb d7 d7  } 
  $xorhongzinst172 = { c4 c3 c2 cb d6 c5 c2 df d8  } 
  $revhongzinst172 = { c4 c4 c4 ce d2 ce c8 d6 d0  } 
  $xorhongzinst173 = { c5 c2 c3 ca d7 c4 c3 de d9  } 
  $revhongzinst173 = { c5 c3 c5 cd d3 c1 c9 d5 d1  } 
  $xorhongzinst174 = { c6 c1 c0 c9 d4 c7 c0 dd da  } 
  $revhongzinst174 = { c6 c2 c2 cc d0 c0 c6 d4 d2  } 
  $xorhongzinst175 = { c7 c0 c1 c8 d5 c6 c1 dc db  } 
  $revhongzinst175 = { c7 c1 c3 cb d1 c3 c7 db d3  } 
  $xorhongzinst176 = { d8 df de d7 ca d9 de c3 c4  } 
  $revhongzinst176 = { d8 c0 c0 ca d6 c2 c4 da dc  } 
  $xorhongzinst177 = { d9 de df d6 cb d8 df c2 c5  } 
  $revhongzinst177 = { d9 df c1 c9 d7 c5 c5 d9 dd  } 
  $xorhongzinst178 = { da dd dc d5 c8 db dc c1 c6  } 
  $revhongzinst178 = { da de de c8 d4 c4 c2 d8 de  } 
  $xorhongzinst179 = { db dc dd d4 c9 da dd c0 c7  } 
  $revhongzinst179 = { db dd df d7 d5 c7 c3 df df  } 
  $xorhongzinst180 = { dc db da d3 ce dd da c7 c0  } 
  $revhongzinst180 = { dc dc dc d6 ca c6 c0 de d8  } 
  $xorhongzinst181 = { dd da db d2 cf dc db c6 c1  } 
  $revhongzinst181 = { dd db dd d5 cb d9 c1 dd d9  } 
  $xorhongzinst182 = { de d9 d8 d1 cc df d8 c5 c2  } 
  $revhongzinst182 = { de da da d4 c8 d8 de dc da  } 
  $xorhongzinst183 = { df d8 d9 d0 cd de d9 c4 c3  } 
  $revhongzinst183 = { df d9 db d3 c9 db df c3 db  } 
  $xorhongzinst184 = { d0 d7 d6 df c2 d1 d6 cb cc  } 
  $revhongzinst184 = { d0 d8 d8 d2 ce da dc c2 c4  } 
  $xorhongzinst185 = { d1 d6 d7 de c3 d0 d7 ca cd  } 
  $revhongzinst185 = { d1 d7 d9 d1 cf dd dd c1 c5  } 
  $xorhongzinst186 = { d2 d5 d4 dd c0 d3 d4 c9 ce  } 
  $revhongzinst186 = { d2 d6 d6 d0 cc dc da c0 c6  } 
  $xorhongzinst187 = { d3 d4 d5 dc c1 d2 d5 c8 cf  } 
  $revhongzinst187 = { d3 d5 d7 df cd df db c7 c7  } 
  $xorhongzinst188 = { d4 d3 d2 db c6 d5 d2 cf c8  } 
  $revhongzinst188 = { d4 d4 d4 de c2 de d8 c6 c0  } 
  $xorhongzinst189 = { d5 d2 d3 da c7 d4 d3 ce c9  } 
  $revhongzinst189 = { d5 d3 d5 dd c3 d1 d9 c5 c1  } 
  $xorhongzinst190 = { d6 d1 d0 d9 c4 d7 d0 cd ca  } 
  $revhongzinst190 = { d6 d2 d2 dc c0 d0 d6 c4 c2  } 
  $xorhongzinst191 = { d7 d0 d1 d8 c5 d6 d1 cc cb  } 
  $revhongzinst191 = { d7 d1 d3 db c1 d3 d7 cb c3  } 
  $xorhongzinst192 = { a8 af ae a7 ba a9 ae b3 b4  } 
  $revhongzinst192 = { a8 d0 d0 da c6 d2 d4 ca cc  } 
  $xorhongzinst193 = { a9 ae af a6 bb a8 af b2 b5  } 
  $revhongzinst193 = { a9 af d1 d9 c7 d5 d5 c9 cd  } 
  $xorhongzinst194 = { aa ad ac a5 b8 ab ac b1 b6  } 
  $revhongzinst194 = { aa ae ae d8 c4 d4 d2 c8 ce  } 
  $xorhongzinst195 = { ab ac ad a4 b9 aa ad b0 b7  } 
  $revhongzinst195 = { ab ad af a7 c5 d7 d3 cf cf  } 
  $xorhongzinst196 = { ac ab aa a3 be ad aa b7 b0  } 
  $revhongzinst196 = { ac ac ac a6 ba d6 d0 ce c8  } 
  $xorhongzinst197 = { ad aa ab a2 bf ac ab b6 b1  } 
  $revhongzinst197 = { ad ab ad a5 bb a9 d1 cd c9  } 
  $xorhongzinst198 = { ae a9 a8 a1 bc af a8 b5 b2  } 
  $revhongzinst198 = { ae aa aa a4 b8 a8 ae cc ca  } 
  $xorhongzinst199 = { af a8 a9 a0 bd ae a9 b4 b3  } 
  $revhongzinst199 = { af a9 ab a3 b9 ab af b3 cb  } 
  $xorhongzinst200 = { a0 a7 a6 af b2 a1 a6 bb bc  } 
  $revhongzinst200 = { a0 a8 a8 a2 be aa ac b2 b4  } 
  $xorhongzinst201 = { a1 a6 a7 ae b3 a0 a7 ba bd  } 
  $revhongzinst201 = { a1 a7 a9 a1 bf ad ad b1 b5  } 
  $xorhongzinst202 = { a2 a5 a4 ad b0 a3 a4 b9 be  } 
  $revhongzinst202 = { a2 a6 a6 a0 bc ac aa b0 b6  } 
  $xorhongzinst203 = { a3 a4 a5 ac b1 a2 a5 b8 bf  } 
  $revhongzinst203 = { a3 a5 a7 af bd af ab b7 b7  } 
  $xorhongzinst204 = { a4 a3 a2 ab b6 a5 a2 bf b8  } 
  $revhongzinst204 = { a4 a4 a4 ae b2 ae a8 b6 b0  } 
  $xorhongzinst205 = { a5 a2 a3 aa b7 a4 a3 be b9  } 
  $revhongzinst205 = { a5 a3 a5 ad b3 a1 a9 b5 b1  } 
  $xorhongzinst206 = { a6 a1 a0 a9 b4 a7 a0 bd ba  } 
  $revhongzinst206 = { a6 a2 a2 ac b0 a0 a6 b4 b2  } 
  $xorhongzinst207 = { a7 a0 a1 a8 b5 a6 a1 bc bb  } 
  $revhongzinst207 = { a7 a1 a3 ab b1 a3 a7 bb b3  } 
  $xorhongzinst208 = { b8 bf be b7 aa b9 be a3 a4  } 
  $revhongzinst208 = { b8 a0 a0 aa b6 a2 a4 ba bc  } 
  $xorhongzinst209 = { b9 be bf b6 ab b8 bf a2 a5  } 
  $revhongzinst209 = { b9 bf a1 a9 b7 a5 a5 b9 bd  } 
  $xorhongzinst210 = { ba bd bc b5 a8 bb bc a1 a6  } 
  $revhongzinst210 = { ba be be a8 b4 a4 a2 b8 be  } 
  $xorhongzinst211 = { bb bc bd b4 a9 ba bd a0 a7  } 
  $revhongzinst211 = { bb bd bf b7 b5 a7 a3 bf bf  } 
  $xorhongzinst212 = { bc bb ba b3 ae bd ba a7 a0  } 
  $revhongzinst212 = { bc bc bc b6 aa a6 a0 be b8  } 
  $xorhongzinst213 = { bd ba bb b2 af bc bb a6 a1  } 
  $revhongzinst213 = { bd bb bd b5 ab b9 a1 bd b9  } 
  $xorhongzinst214 = { be b9 b8 b1 ac bf b8 a5 a2  } 
  $revhongzinst214 = { be ba ba b4 a8 b8 be bc ba  } 
  $xorhongzinst215 = { bf b8 b9 b0 ad be b9 a4 a3  } 
  $revhongzinst215 = { bf b9 bb b3 a9 bb bf a3 bb  } 
  $xorhongzinst216 = { b0 b7 b6 bf a2 b1 b6 ab ac  } 
  $revhongzinst216 = { b0 b8 b8 b2 ae ba bc a2 a4  } 
  $xorhongzinst217 = { b1 b6 b7 be a3 b0 b7 aa ad  } 
  $revhongzinst217 = { b1 b7 b9 b1 af bd bd a1 a5  } 
  $xorhongzinst218 = { b2 b5 b4 bd a0 b3 b4 a9 ae  } 
  $revhongzinst218 = { b2 b6 b6 b0 ac bc ba a0 a6  } 
  $xorhongzinst219 = { b3 b4 b5 bc a1 b2 b5 a8 af  } 
  $revhongzinst219 = { b3 b5 b7 bf ad bf bb a7 a7  } 
  $xorhongzinst220 = { b4 b3 b2 bb a6 b5 b2 af a8  } 
  $revhongzinst220 = { b4 b4 b4 be a2 be b8 a6 a0  } 
  $xorhongzinst221 = { b5 b2 b3 ba a7 b4 b3 ae a9  } 
  $revhongzinst221 = { b5 b3 b5 bd a3 b1 b9 a5 a1  } 
  $xorhongzinst222 = { b6 b1 b0 b9 a4 b7 b0 ad aa  } 
  $revhongzinst222 = { b6 b2 b2 bc a0 b0 b6 a4 a2  } 
  $xorhongzinst223 = { b7 b0 b1 b8 a5 b6 b1 ac ab  } 
  $revhongzinst223 = { b7 b1 b3 bb a1 b3 b7 ab a3  } 
  $xorhongzinst224 = { 88 8f 8e 87 9a 89 8e 93 94  } 
  $revhongzinst224 = { 88 b0 b0 ba a6 b2 b4 aa ac  } 
  $xorhongzinst225 = { 89 8e 8f 86 9b 88 8f 92 95  } 
  $revhongzinst225 = { 89 8f b1 b9 a7 b5 b5 a9 ad  } 
  $xorhongzinst226 = { 8a 8d 8c 85 98 8b 8c 91 96  } 
  $revhongzinst226 = { 8a 8e 8e b8 a4 b4 b2 a8 ae  } 
  $xorhongzinst227 = { 8b 8c 8d 84 99 8a 8d 90 97  } 
  $revhongzinst227 = { 8b 8d 8f 87 a5 b7 b3 af af  } 
  $xorhongzinst228 = { 8c 8b 8a 83 9e 8d 8a 97 90  } 
  $revhongzinst228 = { 8c 8c 8c 86 9a b6 b0 ae a8  } 
  $xorhongzinst229 = { 8d 8a 8b 82 9f 8c 8b 96 91  } 
  $revhongzinst229 = { 8d 8b 8d 85 9b 89 b1 ad a9  } 
  $xorhongzinst230 = { 8e 89 88 81 9c 8f 88 95 92  } 
  $revhongzinst230 = { 8e 8a 8a 84 98 88 8e ac aa  } 
  $xorhongzinst231 = { 8f 88 89 80 9d 8e 89 94 93  } 
  $revhongzinst231 = { 8f 89 8b 83 99 8b 8f 93 ab  } 
  $xorhongzinst232 = { 80 87 86 8f 92 81 86 9b 9c  } 
  $revhongzinst232 = { 80 88 88 82 9e 8a 8c 92 94  } 
  $xorhongzinst233 = { 81 86 87 8e 93 80 87 9a 9d  } 
  $revhongzinst233 = { 81 87 89 81 9f 8d 8d 91 95  } 
  $xorhongzinst234 = { 82 85 84 8d 90 83 84 99 9e  } 
  $revhongzinst234 = { 82 86 86 80 9c 8c 8a 90 96  } 
  $xorhongzinst235 = { 83 84 85 8c 91 82 85 98 9f  } 
  $revhongzinst235 = { 83 85 87 8f 9d 8f 8b 97 97  } 
  $xorhongzinst236 = { 84 83 82 8b 96 85 82 9f 98  } 
  $revhongzinst236 = { 84 84 84 8e 92 8e 88 96 90  } 
  $xorhongzinst237 = { 85 82 83 8a 97 84 83 9e 99  } 
  $revhongzinst237 = { 85 83 85 8d 93 81 89 95 91  } 
  $xorhongzinst238 = { 86 81 80 89 94 87 80 9d 9a  } 
  $revhongzinst238 = { 86 82 82 8c 90 80 86 94 92  } 
  $xorhongzinst239 = { 87 80 81 88 95 86 81 9c 9b  } 
  $revhongzinst239 = { 87 81 83 8b 91 83 87 9b 93  } 
  $xorhongzinst240 = { 98 9f 9e 97 8a 99 9e 83 84  } 
  $revhongzinst240 = { 98 80 80 8a 96 82 84 9a 9c  } 
  $xorhongzinst241 = { 99 9e 9f 96 8b 98 9f 82 85  } 
  $revhongzinst241 = { 99 9f 81 89 97 85 85 99 9d  } 
  $xorhongzinst242 = { 9a 9d 9c 95 88 9b 9c 81 86  } 
  $revhongzinst242 = { 9a 9e 9e 88 94 84 82 98 9e  } 
  $xorhongzinst243 = { 9b 9c 9d 94 89 9a 9d 80 87  } 
  $revhongzinst243 = { 9b 9d 9f 97 95 87 83 9f 9f  } 
  $xorhongzinst244 = { 9c 9b 9a 93 8e 9d 9a 87 80  } 
  $revhongzinst244 = { 9c 9c 9c 96 8a 86 80 9e 98  } 
  $xorhongzinst245 = { 9d 9a 9b 92 8f 9c 9b 86 81  } 
  $revhongzinst245 = { 9d 9b 9d 95 8b 99 81 9d 99  } 
  $xorhongzinst246 = { 9e 99 98 91 8c 9f 98 85 82  } 
  $revhongzinst246 = { 9e 9a 9a 94 88 98 9e 9c 9a  } 
  $xorhongzinst247 = { 9f 98 99 90 8d 9e 99 84 83  } 
  $revhongzinst247 = { 9f 99 9b 93 89 9b 9f 83 9b  } 
  $xorhongzinst248 = { 90 97 96 9f 82 91 96 8b 8c  } 
  $revhongzinst248 = { 90 98 98 92 8e 9a 9c 82 84  } 
  $xorhongzinst249 = { 91 96 97 9e 83 90 97 8a 8d  } 
  $revhongzinst249 = { 91 97 99 91 8f 9d 9d 81 85  } 
  $xorhongzinst250 = { 92 95 94 9d 80 93 94 89 8e  } 
  $revhongzinst250 = { 92 96 96 90 8c 9c 9a 80 86  } 
  $xorhongzinst251 = { 93 94 95 9c 81 92 95 88 8f  } 
  $revhongzinst251 = { 93 95 97 9f 8d 9f 9b 87 87  } 
  $xorhongzinst252 = { 94 93 92 9b 86 95 92 8f 88  } 
  $revhongzinst252 = { 94 94 94 9e 82 9e 98 86 80  } 
  $xorhongzinst253 = { 95 92 93 9a 87 94 93 8e 89  } 
  $revhongzinst253 = { 95 93 95 9d 83 91 99 85 81  } 
  $xorhongzinst254 = { 96 91 90 99 84 97 90 8d 8a  } 
  $revhongzinst254 = { 96 92 92 9c 80 90 96 84 82  } 
condition:
   any of them

}

/*
// author - matt
// sig type - Metadata
// badness - 9
// tombkeeper metadata info
*/
rule tomb_doc_id
{
strings:
	$a = "d936643a-1a19-4a94-8bf8-6c9f24465fb4"
	$b = "90bddea2-984f-44d3-81bc-aeeb8d0a7113"
condition:
any of them
}

/*
// author - matt
// sig type - Embedded Trojan
// badness - 9
// advanced
*/
rule xor_advanced
{
strings:
  $xoradvanced1 = { 64 72 60 72 65 35 34 67 7b 30  } 
  $revadvanced1 = { 64 73 9e 8d 99 c8 ce 9c 83 c9  } 
  $xoradvanced2 = { 67 71 63 71 66 36 37 64 78 33  } 
  $revadvanced2 = { 67 72 61 8c 9a c9 c9 9d 80 c8  } 
  $xoradvanced3 = { 66 70 62 70 67 37 36 65 79 32  } 
  $revadvanced3 = { 66 71 60 73 9b ca c8 9a 81 cb  } 
  $xoradvanced4 = { 61 77 65 77 60 30 31 62 7e 35  } 
  $revadvanced4 = { 61 70 63 72 64 cb cb 9b 86 ca  } 
  $xoradvanced5 = { 60 76 64 76 61 31 30 63 7f 34  } 
  $revadvanced5 = { 60 77 62 71 65 34 ca 98 87 cd  } 
  $xoradvanced6 = { 63 75 67 75 62 32 33 60 7c 37  } 
  $revadvanced6 = { 63 76 65 70 66 35 35 99 84 cc  } 
  $xoradvanced7 = { 62 74 66 74 63 33 32 61 7d 36  } 
  $revadvanced7 = { 62 75 64 77 67 36 34 66 85 cf  } 
  $xoradvanced8 = { 6d 7b 69 7b 6c 3c 3d 6e 72 39  } 
  $revadvanced8 = { 6d 74 67 76 60 37 37 67 7a ce  } 
  $xoradvanced9 = { 6c 7a 68 7a 6d 3d 3c 6f 73 38  } 
  $revadvanced9 = { 6c 7b 66 75 61 30 36 64 7b 31  } 
  $xoradvanced10 = { 6f 79 6b 79 6e 3e 3f 6c 70 3b  } 
  $revadvanced10 = { 6f 7a 69 74 62 31 31 65 78 30  } 
  $xoradvanced11 = { 6e 78 6a 78 6f 3f 3e 6d 71 3a  } 
  $revadvanced11 = { 6e 79 68 7b 63 32 30 62 79 33  } 
  $xoradvanced12 = { 69 7f 6d 7f 68 38 39 6a 76 3d  } 
  $revadvanced12 = { 69 78 6b 7a 6c 33 33 63 7e 32  } 
  $xoradvanced13 = { 68 7e 6c 7e 69 39 38 6b 77 3c  } 
  $revadvanced13 = { 68 7f 6a 79 6d 3c 32 60 7f 35  } 
  $xoradvanced14 = { 6b 7d 6f 7d 6a 3a 3b 68 74 3f  } 
  $revadvanced14 = { 6b 7e 6d 78 6e 3d 3d 61 7c 34  } 
  $xoradvanced15 = { 6a 7c 6e 7c 6b 3b 3a 69 75 3e  } 
  $revadvanced15 = { 6a 7d 6c 7f 6f 3e 3c 6e 7d 37  } 
  $xoradvanced16 = { 75 63 71 63 74 24 25 76 6a 21  } 
  $revadvanced16 = { 75 7c 6f 7e 68 3f 3f 6f 72 36  } 
  $xoradvanced17 = { 74 62 70 62 75 25 24 77 6b 20  } 
  $revadvanced17 = { 74 63 6e 7d 69 38 3e 6c 73 39  } 
  $xoradvanced18 = { 77 61 73 61 76 26 27 74 68 23  } 
  $revadvanced18 = { 77 62 71 7c 6a 39 39 6d 70 38  } 
  $xoradvanced19 = { 76 60 72 60 77 27 26 75 69 22  } 
  $revadvanced19 = { 76 61 70 63 6b 3a 38 6a 71 3b  } 
  $xoradvanced20 = { 71 67 75 67 70 20 21 72 6e 25  } 
  $revadvanced20 = { 71 60 73 62 74 3b 3b 6b 76 3a  } 
  $xoradvanced21 = { 70 66 74 66 71 21 20 73 6f 24  } 
  $revadvanced21 = { 70 67 72 61 75 24 3a 68 77 3d  } 
  $xoradvanced22 = { 73 65 77 65 72 22 23 70 6c 27  } 
  $revadvanced22 = { 73 66 75 60 76 25 25 69 74 3c  } 
  $xoradvanced23 = { 72 64 76 64 73 23 22 71 6d 26  } 
  $revadvanced23 = { 72 65 74 67 77 26 24 76 75 3f  } 
  $xoradvanced24 = { 7d 6b 79 6b 7c 2c 2d 7e 62 29  } 
  $revadvanced24 = { 7d 64 77 66 70 27 27 77 6a 3e  } 
  $xoradvanced25 = { 7c 6a 78 6a 7d 2d 2c 7f 63 28  } 
  $revadvanced25 = { 7c 6b 76 65 71 20 26 74 6b 21  } 
  $xoradvanced26 = { 7f 69 7b 69 7e 2e 2f 7c 60 2b  } 
  $revadvanced26 = { 7f 6a 79 64 72 21 21 75 68 20  } 
  $xoradvanced27 = { 7e 68 7a 68 7f 2f 2e 7d 61 2a  } 
  $revadvanced27 = { 7e 69 78 6b 73 22 20 72 69 23  } 
  $xoradvanced28 = { 79 6f 7d 6f 78 28 29 7a 66 2d  } 
  $revadvanced28 = { 79 68 7b 6a 7c 23 23 73 6e 22  } 
  $xoradvanced29 = { 78 6e 7c 6e 79 29 28 7b 67 2c  } 
  $revadvanced29 = { 78 6f 7a 69 7d 2c 22 70 6f 25  } 
  $xoradvanced30 = { 7b 6d 7f 6d 7a 2a 2b 78 64 2f  } 
  $revadvanced30 = { 7b 6e 7d 68 7e 2d 2d 71 6c 24  } 
  $xoradvanced31 = { 7a 6c 7e 6c 7b 2b 2a 79 65 2e  } 
  $revadvanced31 = { 7a 6d 7c 6f 7f 2e 2c 7e 6d 27  } 
  $xoradvanced32 = { 45 53 41 53 44 14 15 46 5a 11  } 
  $revadvanced32 = { 45 6c 7f 6e 78 2f 2f 7f 62 26  } 
  $xoradvanced33 = { 44 52 40 52 45 15 14 47 5b 10  } 
  $revadvanced33 = { 44 53 7e 6d 79 28 2e 7c 63 29  } 
  $xoradvanced34 = { 47 51 43 51 46 16 17 44 58 13  } 
  $revadvanced34 = { 47 52 41 6c 7a 29 29 7d 60 28  } 
  $xoradvanced35 = { 46 50 42 50 47 17 16 45 59 12  } 
  $revadvanced35 = { 46 51 40 53 7b 2a 28 7a 61 2b  } 
  $xoradvanced36 = { 41 57 45 57 40 10 11 42 5e 15  } 
  $revadvanced36 = { 41 50 43 52 44 2b 2b 7b 66 2a  } 
  $xoradvanced37 = { 40 56 44 56 41 11 10 43 5f 14  } 
  $revadvanced37 = { 40 57 42 51 45 14 2a 78 67 2d  } 
  $xoradvanced38 = { 43 55 47 55 42 12 13 40 5c 17  } 
  $revadvanced38 = { 43 56 45 50 46 15 15 79 64 2c  } 
  $xoradvanced39 = { 42 54 46 54 43 13 12 41 5d 16  } 
  $revadvanced39 = { 42 55 44 57 47 16 14 46 65 2f  } 
  $xoradvanced40 = { 4d 5b 49 5b 4c 1c 1d 4e 52 19  } 
  $revadvanced40 = { 4d 54 47 56 40 17 17 47 5a 2e  } 
  $xoradvanced41 = { 4c 5a 48 5a 4d 1d 1c 4f 53 18  } 
  $revadvanced41 = { 4c 5b 46 55 41 10 16 44 5b 11  } 
  $xoradvanced42 = { 4f 59 4b 59 4e 1e 1f 4c 50 1b  } 
  $revadvanced42 = { 4f 5a 49 54 42 11 11 45 58 10  } 
  $xoradvanced43 = { 4e 58 4a 58 4f 1f 1e 4d 51 1a  } 
  $revadvanced43 = { 4e 59 48 5b 43 12 10 42 59 13  } 
  $xoradvanced44 = { 49 5f 4d 5f 48 18 19 4a 56 1d  } 
  $revadvanced44 = { 49 58 4b 5a 4c 13 13 43 5e 12  } 
  $xoradvanced45 = { 48 5e 4c 5e 49 19 18 4b 57 1c  } 
  $revadvanced45 = { 48 5f 4a 59 4d 1c 12 40 5f 15  } 
  $xoradvanced46 = { 4b 5d 4f 5d 4a 1a 1b 48 54 1f  } 
  $revadvanced46 = { 4b 5e 4d 58 4e 1d 1d 41 5c 14  } 
  $xoradvanced47 = { 4a 5c 4e 5c 4b 1b 1a 49 55 1e  } 
  $revadvanced47 = { 4a 5d 4c 5f 4f 1e 1c 4e 5d 17  } 
  $xoradvanced48 = { 55 43 51 43 54 04 05 56 4a 01  } 
  $revadvanced48 = { 55 5c 4f 5e 48 1f 1f 4f 52 16  } 
  $xoradvanced49 = { 54 42 50 42 55 05 04 57 4b 00  } 
  $revadvanced49 = { 54 43 4e 5d 49 18 1e 4c 53 19  } 
  $xoradvanced50 = { 57 41 53 41 56 06 07 54 48 03  } 
  $revadvanced50 = { 57 42 51 5c 4a 19 19 4d 50 18  } 
  $xoradvanced51 = { 56 40 52 40 57 07 06 55 49 02  } 
  $revadvanced51 = { 56 41 50 43 4b 1a 18 4a 51 1b  } 
  $xoradvanced52 = { 51 47 55 47 50 00 01 52 4e 05  } 
  $revadvanced52 = { 51 40 53 42 54 1b 1b 4b 56 1a  } 
  $xoradvanced53 = { 50 46 54 46 51 01 00 53 4f 04  } 
  $revadvanced53 = { 50 47 52 41 55 04 1a 48 57 1d  } 
  $xoradvanced54 = { 53 45 57 45 52 02 03 50 4c 07  } 
  $revadvanced54 = { 53 46 55 40 56 05 05 49 54 1c  } 
  $xoradvanced55 = { 52 44 56 44 53 03 02 51 4d 06  } 
  $revadvanced55 = { 52 45 54 47 57 06 04 56 55 1f  } 
  $xoradvanced56 = { 5d 4b 59 4b 5c 0c 0d 5e 42 09  } 
  $revadvanced56 = { 5d 44 57 46 50 07 07 57 4a 1e  } 
  $xoradvanced57 = { 5c 4a 58 4a 5d 0d 0c 5f 43 08  } 
  $revadvanced57 = { 5c 4b 56 45 51 00 06 54 4b 01  } 
  $xoradvanced58 = { 5f 49 5b 49 5e 0e 0f 5c 40 0b  } 
  $revadvanced58 = { 5f 4a 59 44 52 01 01 55 48 00  } 
  $xoradvanced59 = { 5e 48 5a 48 5f 0f 0e 5d 41 0a  } 
  $revadvanced59 = { 5e 49 58 4b 53 02 00 52 49 03  } 
  $xoradvanced60 = { 59 4f 5d 4f 58 08 09 5a 46 0d  } 
  $revadvanced60 = { 59 48 5b 4a 5c 03 03 53 4e 02  } 
  $xoradvanced61 = { 58 4e 5c 4e 59 09 08 5b 47 0c  } 
  $revadvanced61 = { 58 4f 5a 49 5d 0c 02 50 4f 05  } 
  $xoradvanced62 = { 5b 4d 5f 4d 5a 0a 0b 58 44 0f  } 
  $revadvanced62 = { 5b 4e 5d 48 5e 0d 0d 51 4c 04  } 
  $xoradvanced63 = { 5a 4c 5e 4c 5b 0b 0a 59 45 0e  } 
  $revadvanced63 = { 5a 4d 5c 4f 5f 0e 0c 5e 4d 07  } 
  $xoradvanced64 = { 25 33 21 33 24 74 75 26 3a 71  } 
  $revadvanced64 = { 25 4c 5f 4e 58 0f 0f 5f 42 06  } 
  $xoradvanced65 = { 24 32 20 32 25 75 74 27 3b 70  } 
  $revadvanced65 = { 24 33 5e 4d 59 08 0e 5c 43 09  } 
  $xoradvanced66 = { 27 31 23 31 26 76 77 24 38 73  } 
  $revadvanced66 = { 27 32 21 4c 5a 09 09 5d 40 08  } 
  $xoradvanced67 = { 26 30 22 30 27 77 76 25 39 72  } 
  $revadvanced67 = { 26 31 20 33 5b 0a 08 5a 41 0b  } 
  $xoradvanced68 = { 21 37 25 37 20 70 71 22 3e 75  } 
  $revadvanced68 = { 21 30 23 32 24 0b 0b 5b 46 0a  } 
  $xoradvanced69 = { 20 36 24 36 21 71 70 23 3f 74  } 
  $revadvanced69 = { 20 37 22 31 25 74 0a 58 47 0d  } 
  $xoradvanced70 = { 23 35 27 35 22 72 73 20 3c 77  } 
  $revadvanced70 = { 23 36 25 30 26 75 75 59 44 0c  } 
  $xoradvanced71 = { 22 34 26 34 23 73 72 21 3d 76  } 
  $revadvanced71 = { 22 35 24 37 27 76 74 26 45 0f  } 
  $xoradvanced72 = { 2d 3b 29 3b 2c 7c 7d 2e 32 79  } 
  $revadvanced72 = { 2d 34 27 36 20 77 77 27 3a 0e  } 
  $xoradvanced73 = { 2c 3a 28 3a 2d 7d 7c 2f 33 78  } 
  $revadvanced73 = { 2c 3b 26 35 21 70 76 24 3b 71  } 
  $xoradvanced74 = { 2f 39 2b 39 2e 7e 7f 2c 30 7b  } 
  $revadvanced74 = { 2f 3a 29 34 22 71 71 25 38 70  } 
  $xoradvanced75 = { 2e 38 2a 38 2f 7f 7e 2d 31 7a  } 
  $revadvanced75 = { 2e 39 28 3b 23 72 70 22 39 73  } 
  $xoradvanced76 = { 29 3f 2d 3f 28 78 79 2a 36 7d  } 
  $revadvanced76 = { 29 38 2b 3a 2c 73 73 23 3e 72  } 
  $xoradvanced77 = { 28 3e 2c 3e 29 79 78 2b 37 7c  } 
  $revadvanced77 = { 28 3f 2a 39 2d 7c 72 20 3f 75  } 
  $xoradvanced78 = { 2b 3d 2f 3d 2a 7a 7b 28 34 7f  } 
  $revadvanced78 = { 2b 3e 2d 38 2e 7d 7d 21 3c 74  } 
  $xoradvanced79 = { 2a 3c 2e 3c 2b 7b 7a 29 35 7e  } 
  $revadvanced79 = { 2a 3d 2c 3f 2f 7e 7c 2e 3d 77  } 
  $xoradvanced80 = { 35 23 31 23 34 64 65 36 2a 61  } 
  $revadvanced80 = { 35 3c 2f 3e 28 7f 7f 2f 32 76  } 
  $xoradvanced81 = { 34 22 30 22 35 65 64 37 2b 60  } 
  $revadvanced81 = { 34 23 2e 3d 29 78 7e 2c 33 79  } 
  $xoradvanced82 = { 37 21 33 21 36 66 67 34 28 63  } 
  $revadvanced82 = { 37 22 31 3c 2a 79 79 2d 30 78  } 
  $xoradvanced83 = { 36 20 32 20 37 67 66 35 29 62  } 
  $revadvanced83 = { 36 21 30 23 2b 7a 78 2a 31 7b  } 
  $xoradvanced84 = { 31 27 35 27 30 60 61 32 2e 65  } 
  $revadvanced84 = { 31 20 33 22 34 7b 7b 2b 36 7a  } 
  $xoradvanced85 = { 30 26 34 26 31 61 60 33 2f 64  } 
  $revadvanced85 = { 30 27 32 21 35 64 7a 28 37 7d  } 
  $xoradvanced86 = { 33 25 37 25 32 62 63 30 2c 67  } 
  $revadvanced86 = { 33 26 35 20 36 65 65 29 34 7c  } 
  $xoradvanced87 = { 32 24 36 24 33 63 62 31 2d 66  } 
  $revadvanced87 = { 32 25 34 27 37 66 64 36 35 7f  } 
  $xoradvanced88 = { 3d 2b 39 2b 3c 6c 6d 3e 22 69  } 
  $revadvanced88 = { 3d 24 37 26 30 67 67 37 2a 7e  } 
  $xoradvanced89 = { 3c 2a 38 2a 3d 6d 6c 3f 23 68  } 
  $revadvanced89 = { 3c 2b 36 25 31 60 66 34 2b 61  } 
  $xoradvanced90 = { 3f 29 3b 29 3e 6e 6f 3c 20 6b  } 
  $revadvanced90 = { 3f 2a 39 24 32 61 61 35 28 60  } 
  $xoradvanced91 = { 3e 28 3a 28 3f 6f 6e 3d 21 6a  } 
  $revadvanced91 = { 3e 29 38 2b 33 62 60 32 29 63  } 
  $xoradvanced92 = { 39 2f 3d 2f 38 68 69 3a 26 6d  } 
  $revadvanced92 = { 39 28 3b 2a 3c 63 63 33 2e 62  } 
  $xoradvanced93 = { 38 2e 3c 2e 39 69 68 3b 27 6c  } 
  $revadvanced93 = { 38 2f 3a 29 3d 6c 62 30 2f 65  } 
  $xoradvanced94 = { 3b 2d 3f 2d 3a 6a 6b 38 24 6f  } 
  $revadvanced94 = { 3b 2e 3d 28 3e 6d 6d 31 2c 64  } 
  $xoradvanced95 = { 3a 2c 3e 2c 3b 6b 6a 39 25 6e  } 
  $revadvanced95 = { 3a 2d 3c 2f 3f 6e 6c 3e 2d 67  } 
  $xoradvanced96 = { 05 13 01 13 04 54 55 06 1a 51  } 
  $revadvanced96 = { 05 2c 3f 2e 38 6f 6f 3f 22 66  } 
  $xoradvanced97 = { 04 12 00 12 05 55 54 07 1b 50  } 
  $revadvanced97 = { 04 13 3e 2d 39 68 6e 3c 23 69  } 
  $xoradvanced98 = { 07 11 03 11 06 56 57 04 18 53  } 
  $revadvanced98 = { 07 12 01 2c 3a 69 69 3d 20 68  } 
  $xoradvanced99 = { 06 10 02 10 07 57 56 05 19 52  } 
  $revadvanced99 = { 06 11 00 13 3b 6a 68 3a 21 6b  } 
  $xoradvanced100 = { 01 17 05 17 00 50 51 02 1e 55  } 
  $revadvanced100 = { 01 10 03 12 04 6b 6b 3b 26 6a  } 
  $xoradvanced101 = { 00 16 04 16 01 51 50 03 1f 54  } 
  $revadvanced101 = { 00 17 02 11 05 54 6a 38 27 6d  } 
  $xoradvanced102 = { 03 15 07 15 02 52 53 00 1c 57  } 
  $revadvanced102 = { 03 16 05 10 06 55 55 39 24 6c  } 
  $xoradvanced103 = { 02 14 06 14 03 53 52 01 1d 56  } 
  $revadvanced103 = { 02 15 04 17 07 56 54 06 25 6f  } 
  $xoradvanced104 = { 0d 1b 09 1b 0c 5c 5d 0e 12 59  } 
  $revadvanced104 = { 0d 14 07 16 00 57 57 07 1a 6e  } 
  $xoradvanced105 = { 0c 1a 08 1a 0d 5d 5c 0f 13 58  } 
  $revadvanced105 = { 0c 1b 06 15 01 50 56 04 1b 51  } 
  $xoradvanced106 = { 0f 19 0b 19 0e 5e 5f 0c 10 5b  } 
  $revadvanced106 = { 0f 1a 09 14 02 51 51 05 18 50  } 
  $xoradvanced107 = { 0e 18 0a 18 0f 5f 5e 0d 11 5a  } 
  $revadvanced107 = { 0e 19 08 1b 03 52 50 02 19 53  } 
  $xoradvanced108 = { 09 1f 0d 1f 08 58 59 0a 16 5d  } 
  $revadvanced108 = { 09 18 0b 1a 0c 53 53 03 1e 52  } 
  $xoradvanced109 = { 08 1e 0c 1e 09 59 58 0b 17 5c  } 
  $revadvanced109 = { 08 1f 0a 19 0d 5c 52 00 1f 55  } 
  $xoradvanced110 = { 0b 1d 0f 1d 0a 5a 5b 08 14 5f  } 
  $revadvanced110 = { 0b 1e 0d 18 0e 5d 5d 01 1c 54  } 
  $xoradvanced111 = { 0a 1c 0e 1c 0b 5b 5a 09 15 5e  } 
  $revadvanced111 = { 0a 1d 0c 1f 0f 5e 5c 0e 1d 57  } 
  $xoradvanced112 = { 15 03 11 03 14 44 45 16 0a 41  } 
  $revadvanced112 = { 15 1c 0f 1e 08 5f 5f 0f 12 56  } 
  $xoradvanced113 = { 14 02 10 02 15 45 44 17 0b 40  } 
  $revadvanced113 = { 14 03 0e 1d 09 58 5e 0c 13 59  } 
  $xoradvanced114 = { 17 01 13 01 16 46 47 14 08 43  } 
  $revadvanced114 = { 17 02 11 1c 0a 59 59 0d 10 58  } 
  $xoradvanced115 = { 16 00 12 00 17 47 46 15 09 42  } 
  $revadvanced115 = { 16 01 10 03 0b 5a 58 0a 11 5b  } 
  $xoradvanced116 = { 11 07 15 07 10 40 41 12 0e 45  } 
  $revadvanced116 = { 11 00 13 02 14 5b 5b 0b 16 5a  } 
  $xoradvanced117 = { 10 06 14 06 11 41 40 13 0f 44  } 
  $revadvanced117 = { 10 07 12 01 15 44 5a 08 17 5d  } 
  $xoradvanced118 = { 13 05 17 05 12 42 43 10 0c 47  } 
  $revadvanced118 = { 13 06 15 00 16 45 45 09 14 5c  } 
  $xoradvanced119 = { 12 04 16 04 13 43 42 11 0d 46  } 
  $revadvanced119 = { 12 05 14 07 17 46 44 16 15 5f  } 
  $xoradvanced120 = { 1d 0b 19 0b 1c 4c 4d 1e 02 49  } 
  $revadvanced120 = { 1d 04 17 06 10 47 47 17 0a 5e  } 
  $xoradvanced121 = { 1c 0a 18 0a 1d 4d 4c 1f 03 48  } 
  $revadvanced121 = { 1c 0b 16 05 11 40 46 14 0b 41  } 
  $xoradvanced122 = { 1f 09 1b 09 1e 4e 4f 1c 00 4b  } 
  $revadvanced122 = { 1f 0a 19 04 12 41 41 15 08 40  } 
  $xoradvanced123 = { 1e 08 1a 08 1f 4f 4e 1d 01 4a  } 
  $revadvanced123 = { 1e 09 18 0b 13 42 40 12 09 43  } 
  $xoradvanced124 = { 19 0f 1d 0f 18 48 49 1a 06 4d  } 
  $revadvanced124 = { 19 08 1b 0a 1c 43 43 13 0e 42  } 
  $xoradvanced125 = { 18 0e 1c 0e 19 49 48 1b 07 4c  } 
  $revadvanced125 = { 18 0f 1a 09 1d 4c 42 10 0f 45  } 
  $xoradvanced126 = { 1b 0d 1f 0d 1a 4a 4b 18 04 4f  } 
  $revadvanced126 = { 1b 0e 1d 08 1e 4d 4d 11 0c 44  } 
  $xoradvanced127 = { 1a 0c 1e 0c 1b 4b 4a 19 05 4e  } 
  $revadvanced127 = { 1a 0d 1c 0f 1f 4e 4c 1e 0d 47  } 
  $xoradvanced128 = { e5 f3 e1 f3 e4 b4 b5 e6 fa b1  } 
  $revadvanced128 = { e5 0c 1f 0e 18 4f 4f 1f 02 46  } 
  $xoradvanced129 = { e4 f2 e0 f2 e5 b5 b4 e7 fb b0  } 
  $revadvanced129 = { e4 f3 1e 0d 19 48 4e 1c 03 49  } 
  $xoradvanced130 = { e7 f1 e3 f1 e6 b6 b7 e4 f8 b3  } 
  $revadvanced130 = { e7 f2 e1 0c 1a 49 49 1d 00 48  } 
  $xoradvanced131 = { e6 f0 e2 f0 e7 b7 b6 e5 f9 b2  } 
  $revadvanced131 = { e6 f1 e0 f3 1b 4a 48 1a 01 4b  } 
  $xoradvanced132 = { e1 f7 e5 f7 e0 b0 b1 e2 fe b5  } 
  $revadvanced132 = { e1 f0 e3 f2 e4 4b 4b 1b 06 4a  } 
  $xoradvanced133 = { e0 f6 e4 f6 e1 b1 b0 e3 ff b4  } 
  $revadvanced133 = { e0 f7 e2 f1 e5 b4 4a 18 07 4d  } 
  $xoradvanced134 = { e3 f5 e7 f5 e2 b2 b3 e0 fc b7  } 
  $revadvanced134 = { e3 f6 e5 f0 e6 b5 b5 19 04 4c  } 
  $xoradvanced135 = { e2 f4 e6 f4 e3 b3 b2 e1 fd b6  } 
  $revadvanced135 = { e2 f5 e4 f7 e7 b6 b4 e6 05 4f  } 
  $xoradvanced136 = { ed fb e9 fb ec bc bd ee f2 b9  } 
  $revadvanced136 = { ed f4 e7 f6 e0 b7 b7 e7 fa 4e  } 
  $xoradvanced137 = { ec fa e8 fa ed bd bc ef f3 b8  } 
  $revadvanced137 = { ec fb e6 f5 e1 b0 b6 e4 fb b1  } 
  $xoradvanced138 = { ef f9 eb f9 ee be bf ec f0 bb  } 
  $revadvanced138 = { ef fa e9 f4 e2 b1 b1 e5 f8 b0  } 
  $xoradvanced139 = { ee f8 ea f8 ef bf be ed f1 ba  } 
  $revadvanced139 = { ee f9 e8 fb e3 b2 b0 e2 f9 b3  } 
  $xoradvanced140 = { e9 ff ed ff e8 b8 b9 ea f6 bd  } 
  $revadvanced140 = { e9 f8 eb fa ec b3 b3 e3 fe b2  } 
  $xoradvanced141 = { e8 fe ec fe e9 b9 b8 eb f7 bc  } 
  $revadvanced141 = { e8 ff ea f9 ed bc b2 e0 ff b5  } 
  $xoradvanced142 = { eb fd ef fd ea ba bb e8 f4 bf  } 
  $revadvanced142 = { eb fe ed f8 ee bd bd e1 fc b4  } 
  $xoradvanced143 = { ea fc ee fc eb bb ba e9 f5 be  } 
  $revadvanced143 = { ea fd ec ff ef be bc ee fd b7  } 
  $xoradvanced144 = { f5 e3 f1 e3 f4 a4 a5 f6 ea a1  } 
  $revadvanced144 = { f5 fc ef fe e8 bf bf ef f2 b6  } 
  $xoradvanced145 = { f4 e2 f0 e2 f5 a5 a4 f7 eb a0  } 
  $revadvanced145 = { f4 e3 ee fd e9 b8 be ec f3 b9  } 
  $xoradvanced146 = { f7 e1 f3 e1 f6 a6 a7 f4 e8 a3  } 
  $revadvanced146 = { f7 e2 f1 fc ea b9 b9 ed f0 b8  } 
  $xoradvanced147 = { f6 e0 f2 e0 f7 a7 a6 f5 e9 a2  } 
  $revadvanced147 = { f6 e1 f0 e3 eb ba b8 ea f1 bb  } 
  $xoradvanced148 = { f1 e7 f5 e7 f0 a0 a1 f2 ee a5  } 
  $revadvanced148 = { f1 e0 f3 e2 f4 bb bb eb f6 ba  } 
  $xoradvanced149 = { f0 e6 f4 e6 f1 a1 a0 f3 ef a4  } 
  $revadvanced149 = { f0 e7 f2 e1 f5 a4 ba e8 f7 bd  } 
  $xoradvanced150 = { f3 e5 f7 e5 f2 a2 a3 f0 ec a7  } 
  $revadvanced150 = { f3 e6 f5 e0 f6 a5 a5 e9 f4 bc  } 
  $xoradvanced151 = { f2 e4 f6 e4 f3 a3 a2 f1 ed a6  } 
  $revadvanced151 = { f2 e5 f4 e7 f7 a6 a4 f6 f5 bf  } 
  $xoradvanced152 = { fd eb f9 eb fc ac ad fe e2 a9  } 
  $revadvanced152 = { fd e4 f7 e6 f0 a7 a7 f7 ea be  } 
  $xoradvanced153 = { fc ea f8 ea fd ad ac ff e3 a8  } 
  $revadvanced153 = { fc eb f6 e5 f1 a0 a6 f4 eb a1  } 
  $xoradvanced154 = { ff e9 fb e9 fe ae af fc e0 ab  } 
  $revadvanced154 = { ff ea f9 e4 f2 a1 a1 f5 e8 a0  } 
  $xoradvanced155 = { fe e8 fa e8 ff af ae fd e1 aa  } 
  $revadvanced155 = { fe e9 f8 eb f3 a2 a0 f2 e9 a3  } 
  $xoradvanced156 = { f9 ef fd ef f8 a8 a9 fa e6 ad  } 
  $revadvanced156 = { f9 e8 fb ea fc a3 a3 f3 ee a2  } 
  $xoradvanced157 = { f8 ee fc ee f9 a9 a8 fb e7 ac  } 
  $revadvanced157 = { f8 ef fa e9 fd ac a2 f0 ef a5  } 
  $xoradvanced158 = { fb ed ff ed fa aa ab f8 e4 af  } 
  $revadvanced158 = { fb ee fd e8 fe ad ad f1 ec a4  } 
  $xoradvanced159 = { fa ec fe ec fb ab aa f9 e5 ae  } 
  $revadvanced159 = { fa ed fc ef ff ae ac fe ed a7  } 
  $xoradvanced160 = { c5 d3 c1 d3 c4 94 95 c6 da 91  } 
  $revadvanced160 = { c5 ec ff ee f8 af af ff e2 a6  } 
  $xoradvanced161 = { c4 d2 c0 d2 c5 95 94 c7 db 90  } 
  $revadvanced161 = { c4 d3 fe ed f9 a8 ae fc e3 a9  } 
  $xoradvanced162 = { c7 d1 c3 d1 c6 96 97 c4 d8 93  } 
  $revadvanced162 = { c7 d2 c1 ec fa a9 a9 fd e0 a8  } 
  $xoradvanced163 = { c6 d0 c2 d0 c7 97 96 c5 d9 92  } 
  $revadvanced163 = { c6 d1 c0 d3 fb aa a8 fa e1 ab  } 
  $xoradvanced164 = { c1 d7 c5 d7 c0 90 91 c2 de 95  } 
  $revadvanced164 = { c1 d0 c3 d2 c4 ab ab fb e6 aa  } 
  $xoradvanced165 = { c0 d6 c4 d6 c1 91 90 c3 df 94  } 
  $revadvanced165 = { c0 d7 c2 d1 c5 94 aa f8 e7 ad  } 
  $xoradvanced166 = { c3 d5 c7 d5 c2 92 93 c0 dc 97  } 
  $revadvanced166 = { c3 d6 c5 d0 c6 95 95 f9 e4 ac  } 
  $xoradvanced167 = { c2 d4 c6 d4 c3 93 92 c1 dd 96  } 
  $revadvanced167 = { c2 d5 c4 d7 c7 96 94 c6 e5 af  } 
  $xoradvanced168 = { cd db c9 db cc 9c 9d ce d2 99  } 
  $revadvanced168 = { cd d4 c7 d6 c0 97 97 c7 da ae  } 
  $xoradvanced169 = { cc da c8 da cd 9d 9c cf d3 98  } 
  $revadvanced169 = { cc db c6 d5 c1 90 96 c4 db 91  } 
  $xoradvanced170 = { cf d9 cb d9 ce 9e 9f cc d0 9b  } 
  $revadvanced170 = { cf da c9 d4 c2 91 91 c5 d8 90  } 
  $xoradvanced171 = { ce d8 ca d8 cf 9f 9e cd d1 9a  } 
  $revadvanced171 = { ce d9 c8 db c3 92 90 c2 d9 93  } 
  $xoradvanced172 = { c9 df cd df c8 98 99 ca d6 9d  } 
  $revadvanced172 = { c9 d8 cb da cc 93 93 c3 de 92  } 
  $xoradvanced173 = { c8 de cc de c9 99 98 cb d7 9c  } 
  $revadvanced173 = { c8 df ca d9 cd 9c 92 c0 df 95  } 
  $xoradvanced174 = { cb dd cf dd ca 9a 9b c8 d4 9f  } 
  $revadvanced174 = { cb de cd d8 ce 9d 9d c1 dc 94  } 
  $xoradvanced175 = { ca dc ce dc cb 9b 9a c9 d5 9e  } 
  $revadvanced175 = { ca dd cc df cf 9e 9c ce dd 97  } 
  $xoradvanced176 = { d5 c3 d1 c3 d4 84 85 d6 ca 81  } 
  $revadvanced176 = { d5 dc cf de c8 9f 9f cf d2 96  } 
  $xoradvanced177 = { d4 c2 d0 c2 d5 85 84 d7 cb 80  } 
  $revadvanced177 = { d4 c3 ce dd c9 98 9e cc d3 99  } 
  $xoradvanced178 = { d7 c1 d3 c1 d6 86 87 d4 c8 83  } 
  $revadvanced178 = { d7 c2 d1 dc ca 99 99 cd d0 98  } 
  $xoradvanced179 = { d6 c0 d2 c0 d7 87 86 d5 c9 82  } 
  $revadvanced179 = { d6 c1 d0 c3 cb 9a 98 ca d1 9b  } 
  $xoradvanced180 = { d1 c7 d5 c7 d0 80 81 d2 ce 85  } 
  $revadvanced180 = { d1 c0 d3 c2 d4 9b 9b cb d6 9a  } 
  $xoradvanced181 = { d0 c6 d4 c6 d1 81 80 d3 cf 84  } 
  $revadvanced181 = { d0 c7 d2 c1 d5 84 9a c8 d7 9d  } 
  $xoradvanced182 = { d3 c5 d7 c5 d2 82 83 d0 cc 87  } 
  $revadvanced182 = { d3 c6 d5 c0 d6 85 85 c9 d4 9c  } 
  $xoradvanced183 = { d2 c4 d6 c4 d3 83 82 d1 cd 86  } 
  $revadvanced183 = { d2 c5 d4 c7 d7 86 84 d6 d5 9f  } 
  $xoradvanced184 = { dd cb d9 cb dc 8c 8d de c2 89  } 
  $revadvanced184 = { dd c4 d7 c6 d0 87 87 d7 ca 9e  } 
  $xoradvanced185 = { dc ca d8 ca dd 8d 8c df c3 88  } 
  $revadvanced185 = { dc cb d6 c5 d1 80 86 d4 cb 81  } 
  $xoradvanced186 = { df c9 db c9 de 8e 8f dc c0 8b  } 
  $revadvanced186 = { df ca d9 c4 d2 81 81 d5 c8 80  } 
  $xoradvanced187 = { de c8 da c8 df 8f 8e dd c1 8a  } 
  $revadvanced187 = { de c9 d8 cb d3 82 80 d2 c9 83  } 
  $xoradvanced188 = { d9 cf dd cf d8 88 89 da c6 8d  } 
  $revadvanced188 = { d9 c8 db ca dc 83 83 d3 ce 82  } 
  $xoradvanced189 = { d8 ce dc ce d9 89 88 db c7 8c  } 
  $revadvanced189 = { d8 cf da c9 dd 8c 82 d0 cf 85  } 
  $xoradvanced190 = { db cd df cd da 8a 8b d8 c4 8f  } 
  $revadvanced190 = { db ce dd c8 de 8d 8d d1 cc 84  } 
  $xoradvanced191 = { da cc de cc db 8b 8a d9 c5 8e  } 
  $revadvanced191 = { da cd dc cf df 8e 8c de cd 87  } 
  $xoradvanced192 = { a5 b3 a1 b3 a4 f4 f5 a6 ba f1  } 
  $revadvanced192 = { a5 cc df ce d8 8f 8f df c2 86  } 
  $xoradvanced193 = { a4 b2 a0 b2 a5 f5 f4 a7 bb f0  } 
  $revadvanced193 = { a4 b3 de cd d9 88 8e dc c3 89  } 
  $xoradvanced194 = { a7 b1 a3 b1 a6 f6 f7 a4 b8 f3  } 
  $revadvanced194 = { a7 b2 a1 cc da 89 89 dd c0 88  } 
  $xoradvanced195 = { a6 b0 a2 b0 a7 f7 f6 a5 b9 f2  } 
  $revadvanced195 = { a6 b1 a0 b3 db 8a 88 da c1 8b  } 
  $xoradvanced196 = { a1 b7 a5 b7 a0 f0 f1 a2 be f5  } 
  $revadvanced196 = { a1 b0 a3 b2 a4 8b 8b db c6 8a  } 
  $xoradvanced197 = { a0 b6 a4 b6 a1 f1 f0 a3 bf f4  } 
  $revadvanced197 = { a0 b7 a2 b1 a5 f4 8a d8 c7 8d  } 
  $xoradvanced198 = { a3 b5 a7 b5 a2 f2 f3 a0 bc f7  } 
  $revadvanced198 = { a3 b6 a5 b0 a6 f5 f5 d9 c4 8c  } 
  $xoradvanced199 = { a2 b4 a6 b4 a3 f3 f2 a1 bd f6  } 
  $revadvanced199 = { a2 b5 a4 b7 a7 f6 f4 a6 c5 8f  } 
  $xoradvanced200 = { ad bb a9 bb ac fc fd ae b2 f9  } 
  $revadvanced200 = { ad b4 a7 b6 a0 f7 f7 a7 ba 8e  } 
  $xoradvanced201 = { ac ba a8 ba ad fd fc af b3 f8  } 
  $revadvanced201 = { ac bb a6 b5 a1 f0 f6 a4 bb f1  } 
  $xoradvanced202 = { af b9 ab b9 ae fe ff ac b0 fb  } 
  $revadvanced202 = { af ba a9 b4 a2 f1 f1 a5 b8 f0  } 
  $xoradvanced203 = { ae b8 aa b8 af ff fe ad b1 fa  } 
  $revadvanced203 = { ae b9 a8 bb a3 f2 f0 a2 b9 f3  } 
  $xoradvanced204 = { a9 bf ad bf a8 f8 f9 aa b6 fd  } 
  $revadvanced204 = { a9 b8 ab ba ac f3 f3 a3 be f2  } 
  $xoradvanced205 = { a8 be ac be a9 f9 f8 ab b7 fc  } 
  $revadvanced205 = { a8 bf aa b9 ad fc f2 a0 bf f5  } 
  $xoradvanced206 = { ab bd af bd aa fa fb a8 b4 ff  } 
  $revadvanced206 = { ab be ad b8 ae fd fd a1 bc f4  } 
  $xoradvanced207 = { aa bc ae bc ab fb fa a9 b5 fe  } 
  $revadvanced207 = { aa bd ac bf af fe fc ae bd f7  } 
  $xoradvanced208 = { b5 a3 b1 a3 b4 e4 e5 b6 aa e1  } 
  $revadvanced208 = { b5 bc af be a8 ff ff af b2 f6  } 
  $xoradvanced209 = { b4 a2 b0 a2 b5 e5 e4 b7 ab e0  } 
  $revadvanced209 = { b4 a3 ae bd a9 f8 fe ac b3 f9  } 
  $xoradvanced210 = { b7 a1 b3 a1 b6 e6 e7 b4 a8 e3  } 
  $revadvanced210 = { b7 a2 b1 bc aa f9 f9 ad b0 f8  } 
  $xoradvanced211 = { b6 a0 b2 a0 b7 e7 e6 b5 a9 e2  } 
  $revadvanced211 = { b6 a1 b0 a3 ab fa f8 aa b1 fb  } 
  $xoradvanced212 = { b1 a7 b5 a7 b0 e0 e1 b2 ae e5  } 
  $revadvanced212 = { b1 a0 b3 a2 b4 fb fb ab b6 fa  } 
  $xoradvanced213 = { b0 a6 b4 a6 b1 e1 e0 b3 af e4  } 
  $revadvanced213 = { b0 a7 b2 a1 b5 e4 fa a8 b7 fd  } 
  $xoradvanced214 = { b3 a5 b7 a5 b2 e2 e3 b0 ac e7  } 
  $revadvanced214 = { b3 a6 b5 a0 b6 e5 e5 a9 b4 fc  } 
  $xoradvanced215 = { b2 a4 b6 a4 b3 e3 e2 b1 ad e6  } 
  $revadvanced215 = { b2 a5 b4 a7 b7 e6 e4 b6 b5 ff  } 
  $xoradvanced216 = { bd ab b9 ab bc ec ed be a2 e9  } 
  $revadvanced216 = { bd a4 b7 a6 b0 e7 e7 b7 aa fe  } 
  $xoradvanced217 = { bc aa b8 aa bd ed ec bf a3 e8  } 
  $revadvanced217 = { bc ab b6 a5 b1 e0 e6 b4 ab e1  } 
  $xoradvanced218 = { bf a9 bb a9 be ee ef bc a0 eb  } 
  $revadvanced218 = { bf aa b9 a4 b2 e1 e1 b5 a8 e0  } 
  $xoradvanced219 = { be a8 ba a8 bf ef ee bd a1 ea  } 
  $revadvanced219 = { be a9 b8 ab b3 e2 e0 b2 a9 e3  } 
  $xoradvanced220 = { b9 af bd af b8 e8 e9 ba a6 ed  } 
  $revadvanced220 = { b9 a8 bb aa bc e3 e3 b3 ae e2  } 
  $xoradvanced221 = { b8 ae bc ae b9 e9 e8 bb a7 ec  } 
  $revadvanced221 = { b8 af ba a9 bd ec e2 b0 af e5  } 
  $xoradvanced222 = { bb ad bf ad ba ea eb b8 a4 ef  } 
  $revadvanced222 = { bb ae bd a8 be ed ed b1 ac e4  } 
  $xoradvanced223 = { ba ac be ac bb eb ea b9 a5 ee  } 
  $revadvanced223 = { ba ad bc af bf ee ec be ad e7  } 
  $xoradvanced224 = { 85 93 81 93 84 d4 d5 86 9a d1  } 
  $revadvanced224 = { 85 ac bf ae b8 ef ef bf a2 e6  } 
  $xoradvanced225 = { 84 92 80 92 85 d5 d4 87 9b d0  } 
  $revadvanced225 = { 84 93 be ad b9 e8 ee bc a3 e9  } 
  $xoradvanced226 = { 87 91 83 91 86 d6 d7 84 98 d3  } 
  $revadvanced226 = { 87 92 81 ac ba e9 e9 bd a0 e8  } 
  $xoradvanced227 = { 86 90 82 90 87 d7 d6 85 99 d2  } 
  $revadvanced227 = { 86 91 80 93 bb ea e8 ba a1 eb  } 
  $xoradvanced228 = { 81 97 85 97 80 d0 d1 82 9e d5  } 
  $revadvanced228 = { 81 90 83 92 84 eb eb bb a6 ea  } 
  $xoradvanced229 = { 80 96 84 96 81 d1 d0 83 9f d4  } 
  $revadvanced229 = { 80 97 82 91 85 d4 ea b8 a7 ed  } 
  $xoradvanced230 = { 83 95 87 95 82 d2 d3 80 9c d7  } 
  $revadvanced230 = { 83 96 85 90 86 d5 d5 b9 a4 ec  } 
  $xoradvanced231 = { 82 94 86 94 83 d3 d2 81 9d d6  } 
  $revadvanced231 = { 82 95 84 97 87 d6 d4 86 a5 ef  } 
  $xoradvanced232 = { 8d 9b 89 9b 8c dc dd 8e 92 d9  } 
  $revadvanced232 = { 8d 94 87 96 80 d7 d7 87 9a ee  } 
  $xoradvanced233 = { 8c 9a 88 9a 8d dd dc 8f 93 d8  } 
  $revadvanced233 = { 8c 9b 86 95 81 d0 d6 84 9b d1  } 
  $xoradvanced234 = { 8f 99 8b 99 8e de df 8c 90 db  } 
  $revadvanced234 = { 8f 9a 89 94 82 d1 d1 85 98 d0  } 
  $xoradvanced235 = { 8e 98 8a 98 8f df de 8d 91 da  } 
  $revadvanced235 = { 8e 99 88 9b 83 d2 d0 82 99 d3  } 
  $xoradvanced236 = { 89 9f 8d 9f 88 d8 d9 8a 96 dd  } 
  $revadvanced236 = { 89 98 8b 9a 8c d3 d3 83 9e d2  } 
  $xoradvanced237 = { 88 9e 8c 9e 89 d9 d8 8b 97 dc  } 
  $revadvanced237 = { 88 9f 8a 99 8d dc d2 80 9f d5  } 
  $xoradvanced238 = { 8b 9d 8f 9d 8a da db 88 94 df  } 
  $revadvanced238 = { 8b 9e 8d 98 8e dd dd 81 9c d4  } 
  $xoradvanced239 = { 8a 9c 8e 9c 8b db da 89 95 de  } 
  $revadvanced239 = { 8a 9d 8c 9f 8f de dc 8e 9d d7  } 
  $xoradvanced240 = { 95 83 91 83 94 c4 c5 96 8a c1  } 
  $revadvanced240 = { 95 9c 8f 9e 88 df df 8f 92 d6  } 
  $xoradvanced241 = { 94 82 90 82 95 c5 c4 97 8b c0  } 
  $revadvanced241 = { 94 83 8e 9d 89 d8 de 8c 93 d9  } 
  $xoradvanced242 = { 97 81 93 81 96 c6 c7 94 88 c3  } 
  $revadvanced242 = { 97 82 91 9c 8a d9 d9 8d 90 d8  } 
  $xoradvanced243 = { 96 80 92 80 97 c7 c6 95 89 c2  } 
  $revadvanced243 = { 96 81 90 83 8b da d8 8a 91 db  } 
  $xoradvanced244 = { 91 87 95 87 90 c0 c1 92 8e c5  } 
  $revadvanced244 = { 91 80 93 82 94 db db 8b 96 da  } 
  $xoradvanced245 = { 90 86 94 86 91 c1 c0 93 8f c4  } 
  $revadvanced245 = { 90 87 92 81 95 c4 da 88 97 dd  } 
  $xoradvanced246 = { 93 85 97 85 92 c2 c3 90 8c c7  } 
  $revadvanced246 = { 93 86 95 80 96 c5 c5 89 94 dc  } 
  $xoradvanced247 = { 92 84 96 84 93 c3 c2 91 8d c6  } 
  $revadvanced247 = { 92 85 94 87 97 c6 c4 96 95 df  } 
  $xoradvanced248 = { 9d 8b 99 8b 9c cc cd 9e 82 c9  } 
  $revadvanced248 = { 9d 84 97 86 90 c7 c7 97 8a de  } 
  $xoradvanced249 = { 9c 8a 98 8a 9d cd cc 9f 83 c8  } 
  $revadvanced249 = { 9c 8b 96 85 91 c0 c6 94 8b c1  } 
  $xoradvanced250 = { 9f 89 9b 89 9e ce cf 9c 80 cb  } 
  $revadvanced250 = { 9f 8a 99 84 92 c1 c1 95 88 c0  } 
  $xoradvanced251 = { 9e 88 9a 88 9f cf ce 9d 81 ca  } 
  $revadvanced251 = { 9e 89 98 8b 93 c2 c0 92 89 c3  } 
  $xoradvanced252 = { 99 8f 9d 8f 98 c8 c9 9a 86 cd  } 
  $revadvanced252 = { 99 88 9b 8a 9c c3 c3 93 8e c2  } 
  $xoradvanced253 = { 98 8e 9c 8e 99 c9 c8 9b 87 cc  } 
  $revadvanced253 = { 98 8f 9a 89 9d cc c2 90 8f c5  } 
  $xoradvanced254 = { 9b 8d 9f 8d 9a ca cb 98 84 cf  } 
  $revadvanced254 = { 9b 8e 9d 88 9e cd cd 91 8c c4  } 
condition:
   any of them

}

/*
// author - matt
// sig type - Embedded Trojan
// badness - 9
// wumsvc
*/
rule xor_wumsvc
{
strings:
 $xorwumsvc1 = { 30 36 33 2f 33 31 2f 33 2f 33 33 31  } 
  $revwumsvc1 = { 30 37 cd d0 cf cc d5 c8 d7 ca c5 c6  } 
  $xorwumsvc2 = { 33 35 30 2c 30 32 2c 30 2c 30 30 32  } 
  $revwumsvc2 = { 33 36 32 d1 cc cd d2 c9 d4 cb ca c7  } 
  $xorwumsvc3 = { 32 34 31 2d 31 33 2d 31 2d 31 31 33  } 
  $revwumsvc3 = { 32 35 33 2e cd ce d3 ce d5 c8 cb c8  } 
  $xorwumsvc4 = { 35 33 36 2a 36 34 2a 36 2a 36 36 34  } 
  $revwumsvc4 = { 35 34 30 2f 32 cf d0 cf d2 c9 c8 c9  } 
  $xorwumsvc5 = { 34 32 37 2b 37 35 2b 37 2b 37 37 35  } 
  $revwumsvc5 = { 34 33 31 2c 33 30 d1 cc d3 ce c9 ca  } 
  $xorwumsvc6 = { 37 31 34 28 34 36 28 34 28 34 34 36  } 
  $revwumsvc6 = { 37 32 36 2d 30 31 2e cd d0 cf ce cb  } 
  $xorwumsvc7 = { 36 30 35 29 35 37 29 35 29 35 35 37  } 
  $revwumsvc7 = { 36 31 37 2a 31 32 2f 32 d1 cc cf cc  } 
  $xorwumsvc8 = { 39 3f 3a 26 3a 38 26 3a 26 3a 3a 38  } 
  $revwumsvc8 = { 39 30 34 2b 36 33 2c 33 2e cd cc cd  } 
  $xorwumsvc9 = { 38 3e 3b 27 3b 39 27 3b 27 3b 3b 39  } 
  $revwumsvc9 = { 38 3f 35 28 37 34 2d 30 2f 32 cd ce  } 
  $xorwumsvc10 = { 3b 3d 38 24 38 3a 24 38 24 38 38 3a  } 
  $revwumsvc10 = { 3b 3e 3a 29 34 35 2a 31 2c 33 32 cf  } 
  $xorwumsvc11 = { 3a 3c 39 25 39 3b 25 39 25 39 39 3b  } 
  $revwumsvc11 = { 3a 3d 3b 26 35 36 2b 36 2d 30 33 30  } 
  $xorwumsvc12 = { 3d 3b 3e 22 3e 3c 22 3e 22 3e 3e 3c  } 
  $revwumsvc12 = { 3d 3c 38 27 3a 37 28 37 2a 31 30 31  } 
  $xorwumsvc13 = { 3c 3a 3f 23 3f 3d 23 3f 23 3f 3f 3d  } 
  $revwumsvc13 = { 3c 3b 39 24 3b 38 29 34 2b 36 31 32  } 
  $xorwumsvc14 = { 3f 39 3c 20 3c 3e 20 3c 20 3c 3c 3e  } 
  $revwumsvc14 = { 3f 3a 3e 25 38 39 26 35 28 37 36 33  } 
  $xorwumsvc15 = { 3e 38 3d 21 3d 3f 21 3d 21 3d 3d 3f  } 
  $revwumsvc15 = { 3e 39 3f 22 39 3a 27 3a 29 34 37 34  } 
  $xorwumsvc16 = { 21 27 22 3e 22 20 3e 22 3e 22 22 20  } 
  $revwumsvc16 = { 21 38 3c 23 3e 3b 24 3b 26 35 34 35  } 
  $xorwumsvc17 = { 20 26 23 3f 23 21 3f 23 3f 23 23 21  } 
  $revwumsvc17 = { 20 27 3d 20 3f 3c 25 38 27 3a 35 36  } 
  $xorwumsvc18 = { 23 25 20 3c 20 22 3c 20 3c 20 20 22  } 
  $revwumsvc18 = { 23 26 22 21 3c 3d 22 39 24 3b 3a 37  } 
  $xorwumsvc19 = { 22 24 21 3d 21 23 3d 21 3d 21 21 23  } 
  $revwumsvc19 = { 22 25 23 3e 3d 3e 23 3e 25 38 3b 38  } 
  $xorwumsvc20 = { 25 23 26 3a 26 24 3a 26 3a 26 26 24  } 
  $revwumsvc20 = { 25 24 20 3f 22 3f 20 3f 22 39 38 39  } 
  $xorwumsvc21 = { 24 22 27 3b 27 25 3b 27 3b 27 27 25  } 
  $revwumsvc21 = { 24 23 21 3c 23 20 21 3c 23 3e 39 3a  } 
  $xorwumsvc22 = { 27 21 24 38 24 26 38 24 38 24 24 26  } 
  $revwumsvc22 = { 27 22 26 3d 20 21 3e 3d 20 3f 3e 3b  } 
  $xorwumsvc23 = { 26 20 25 39 25 27 39 25 39 25 25 27  } 
  $revwumsvc23 = { 26 21 27 3a 21 22 3f 22 21 3c 3f 3c  } 
  $xorwumsvc24 = { 29 2f 2a 36 2a 28 36 2a 36 2a 2a 28  } 
  $revwumsvc24 = { 29 20 24 3b 26 23 3c 23 3e 3d 3c 3d  } 
  $xorwumsvc25 = { 28 2e 2b 37 2b 29 37 2b 37 2b 2b 29  } 
  $revwumsvc25 = { 28 2f 25 38 27 24 3d 20 3f 22 3d 3e  } 
  $xorwumsvc26 = { 2b 2d 28 34 28 2a 34 28 34 28 28 2a  } 
  $revwumsvc26 = { 2b 2e 2a 39 24 25 3a 21 3c 23 22 3f  } 
  $xorwumsvc27 = { 2a 2c 29 35 29 2b 35 29 35 29 29 2b  } 
  $revwumsvc27 = { 2a 2d 2b 36 25 26 3b 26 3d 20 23 20  } 
  $xorwumsvc28 = { 2d 2b 2e 32 2e 2c 32 2e 32 2e 2e 2c  } 
  $revwumsvc28 = { 2d 2c 28 37 2a 27 38 27 3a 21 20 21  } 
  $xorwumsvc29 = { 2c 2a 2f 33 2f 2d 33 2f 33 2f 2f 2d  } 
  $revwumsvc29 = { 2c 2b 29 34 2b 28 39 24 3b 26 21 22  } 
  $xorwumsvc30 = { 2f 29 2c 30 2c 2e 30 2c 30 2c 2c 2e  } 
  $revwumsvc30 = { 2f 2a 2e 35 28 29 36 25 38 27 26 23  } 
  $xorwumsvc31 = { 2e 28 2d 31 2d 2f 31 2d 31 2d 2d 2f  } 
  $revwumsvc31 = { 2e 29 2f 32 29 2a 37 2a 39 24 27 24  } 
  $xorwumsvc32 = { 11 17 12 0e 12 10 0e 12 0e 12 12 10  } 
  $revwumsvc32 = { 11 28 2c 33 2e 2b 34 2b 36 25 24 25  } 
  $xorwumsvc33 = { 10 16 13 0f 13 11 0f 13 0f 13 13 11  } 
  $revwumsvc33 = { 10 17 2d 30 2f 2c 35 28 37 2a 25 26  } 
  $xorwumsvc34 = { 13 15 10 0c 10 12 0c 10 0c 10 10 12  } 
  $revwumsvc34 = { 13 16 12 31 2c 2d 32 29 34 2b 2a 27  } 
  $xorwumsvc35 = { 12 14 11 0d 11 13 0d 11 0d 11 11 13  } 
  $revwumsvc35 = { 12 15 13 0e 2d 2e 33 2e 35 28 2b 28  } 
  $xorwumsvc36 = { 15 13 16 0a 16 14 0a 16 0a 16 16 14  } 
  $revwumsvc36 = { 15 14 10 0f 12 2f 30 2f 32 29 28 29  } 
  $xorwumsvc37 = { 14 12 17 0b 17 15 0b 17 0b 17 17 15  } 
  $revwumsvc37 = { 14 13 11 0c 13 10 31 2c 33 2e 29 2a  } 
  $xorwumsvc38 = { 17 11 14 08 14 16 08 14 08 14 14 16  } 
  $revwumsvc38 = { 17 12 16 0d 10 11 0e 2d 30 2f 2e 2b  } 
  $xorwumsvc39 = { 16 10 15 09 15 17 09 15 09 15 15 17  } 
  $revwumsvc39 = { 16 11 17 0a 11 12 0f 12 31 2c 2f 2c  } 
  $xorwumsvc40 = { 19 1f 1a 06 1a 18 06 1a 06 1a 1a 18  } 
  $revwumsvc40 = { 19 10 14 0b 16 13 0c 13 0e 2d 2c 2d  } 
  $xorwumsvc41 = { 18 1e 1b 07 1b 19 07 1b 07 1b 1b 19  } 
  $revwumsvc41 = { 18 1f 15 08 17 14 0d 10 0f 12 2d 2e  } 
  $xorwumsvc42 = { 1b 1d 18 04 18 1a 04 18 04 18 18 1a  } 
  $revwumsvc42 = { 1b 1e 1a 09 14 15 0a 11 0c 13 12 2f  } 
  $xorwumsvc43 = { 1a 1c 19 05 19 1b 05 19 05 19 19 1b  } 
  $revwumsvc43 = { 1a 1d 1b 06 15 16 0b 16 0d 10 13 10  } 
  $xorwumsvc44 = { 1d 1b 1e 02 1e 1c 02 1e 02 1e 1e 1c  } 
  $revwumsvc44 = { 1d 1c 18 07 1a 17 08 17 0a 11 10 11  } 
  $xorwumsvc45 = { 1c 1a 1f 03 1f 1d 03 1f 03 1f 1f 1d  } 
  $revwumsvc45 = { 1c 1b 19 04 1b 18 09 14 0b 16 11 12  } 
  $xorwumsvc46 = { 1f 19 1c 00 1c 1e 00 1c 00 1c 1c 1e  } 
  $revwumsvc46 = { 1f 1a 1e 05 18 19 06 15 08 17 16 13  } 
  $xorwumsvc47 = { 1e 18 1d 01 1d 1f 01 1d 01 1d 1d 1f  } 
  $revwumsvc47 = { 1e 19 1f 02 19 1a 07 1a 09 14 17 14  } 
  $xorwumsvc48 = { 01 07 02 1e 02 00 1e 02 1e 02 02 00  } 
  $revwumsvc48 = { 01 18 1c 03 1e 1b 04 1b 06 15 14 15  } 
  $xorwumsvc49 = { 00 06 03 1f 03 01 1f 03 1f 03 03 01  } 
  $revwumsvc49 = { 00 07 1d 00 1f 1c 05 18 07 1a 15 16  } 
  $xorwumsvc50 = { 03 05 00 1c 00 02 1c 00 1c 00 00 02  } 
  $revwumsvc50 = { 03 06 02 01 1c 1d 02 19 04 1b 1a 17  } 
  $xorwumsvc51 = { 02 04 01 1d 01 03 1d 01 1d 01 01 03  } 
  $revwumsvc51 = { 02 05 03 1e 1d 1e 03 1e 05 18 1b 18  } 
  $xorwumsvc52 = { 05 03 06 1a 06 04 1a 06 1a 06 06 04  } 
  $revwumsvc52 = { 05 04 00 1f 02 1f 00 1f 02 19 18 19  } 
  $xorwumsvc53 = { 04 02 07 1b 07 05 1b 07 1b 07 07 05  } 
  $revwumsvc53 = { 04 03 01 1c 03 00 01 1c 03 1e 19 1a  } 
  $xorwumsvc54 = { 07 01 04 18 04 06 18 04 18 04 04 06  } 
  $revwumsvc54 = { 07 02 06 1d 00 01 1e 1d 00 1f 1e 1b  } 
  $xorwumsvc55 = { 06 00 05 19 05 07 19 05 19 05 05 07  } 
  $revwumsvc55 = { 06 01 07 1a 01 02 1f 02 01 1c 1f 1c  } 
  $xorwumsvc56 = { 09 0f 0a 16 0a 08 16 0a 16 0a 0a 08  } 
  $revwumsvc56 = { 09 00 04 1b 06 03 1c 03 1e 1d 1c 1d  } 
  $xorwumsvc57 = { 08 0e 0b 17 0b 09 17 0b 17 0b 0b 09  } 
  $revwumsvc57 = { 08 0f 05 18 07 04 1d 00 1f 02 1d 1e  } 
  $xorwumsvc58 = { 0b 0d 08 14 08 0a 14 08 14 08 08 0a  } 
  $revwumsvc58 = { 0b 0e 0a 19 04 05 1a 01 1c 03 02 1f  } 
  $xorwumsvc59 = { 0a 0c 09 15 09 0b 15 09 15 09 09 0b  } 
  $revwumsvc59 = { 0a 0d 0b 16 05 06 1b 06 1d 00 03 00  } 
  $xorwumsvc60 = { 0d 0b 0e 12 0e 0c 12 0e 12 0e 0e 0c  } 
  $revwumsvc60 = { 0d 0c 08 17 0a 07 18 07 1a 01 00 01  } 
  $xorwumsvc61 = { 0c 0a 0f 13 0f 0d 13 0f 13 0f 0f 0d  } 
  $revwumsvc61 = { 0c 0b 09 14 0b 08 19 04 1b 06 01 02  } 
  $xorwumsvc62 = { 0f 09 0c 10 0c 0e 10 0c 10 0c 0c 0e  } 
  $revwumsvc62 = { 0f 0a 0e 15 08 09 16 05 18 07 06 03  } 
  $xorwumsvc63 = { 0e 08 0d 11 0d 0f 11 0d 11 0d 0d 0f  } 
  $revwumsvc63 = { 0e 09 0f 12 09 0a 17 0a 19 04 07 04  } 
  $xorwumsvc64 = { 71 77 72 6e 72 70 6e 72 6e 72 72 70  } 
  $revwumsvc64 = { 71 08 0c 13 0e 0b 14 0b 16 05 04 05  } 
  $xorwumsvc65 = { 70 76 73 6f 73 71 6f 73 6f 73 73 71  } 
  $revwumsvc65 = { 70 77 0d 10 0f 0c 15 08 17 0a 05 06  } 
  $xorwumsvc66 = { 73 75 70 6c 70 72 6c 70 6c 70 70 72  } 
  $revwumsvc66 = { 73 76 72 11 0c 0d 12 09 14 0b 0a 07  } 
  $xorwumsvc67 = { 72 74 71 6d 71 73 6d 71 6d 71 71 73  } 
  $revwumsvc67 = { 72 75 73 6e 0d 0e 13 0e 15 08 0b 08  } 
  $xorwumsvc68 = { 75 73 76 6a 76 74 6a 76 6a 76 76 74  } 
  $revwumsvc68 = { 75 74 70 6f 72 0f 10 0f 12 09 08 09  } 
  $xorwumsvc69 = { 74 72 77 6b 77 75 6b 77 6b 77 77 75  } 
  $revwumsvc69 = { 74 73 71 6c 73 70 11 0c 13 0e 09 0a  } 
  $xorwumsvc70 = { 77 71 74 68 74 76 68 74 68 74 74 76  } 
  $revwumsvc70 = { 77 72 76 6d 70 71 6e 0d 10 0f 0e 0b  } 
  $xorwumsvc71 = { 76 70 75 69 75 77 69 75 69 75 75 77  } 
  $revwumsvc71 = { 76 71 77 6a 71 72 6f 72 11 0c 0f 0c  } 
  $xorwumsvc72 = { 79 7f 7a 66 7a 78 66 7a 66 7a 7a 78  } 
  $revwumsvc72 = { 79 70 74 6b 76 73 6c 73 6e 0d 0c 0d  } 
  $xorwumsvc73 = { 78 7e 7b 67 7b 79 67 7b 67 7b 7b 79  } 
  $revwumsvc73 = { 78 7f 75 68 77 74 6d 70 6f 72 0d 0e  } 
  $xorwumsvc74 = { 7b 7d 78 64 78 7a 64 78 64 78 78 7a  } 
  $revwumsvc74 = { 7b 7e 7a 69 74 75 6a 71 6c 73 72 0f  } 
  $xorwumsvc75 = { 7a 7c 79 65 79 7b 65 79 65 79 79 7b  } 
  $revwumsvc75 = { 7a 7d 7b 66 75 76 6b 76 6d 70 73 70  } 
  $xorwumsvc76 = { 7d 7b 7e 62 7e 7c 62 7e 62 7e 7e 7c  } 
  $revwumsvc76 = { 7d 7c 78 67 7a 77 68 77 6a 71 70 71  } 
  $xorwumsvc77 = { 7c 7a 7f 63 7f 7d 63 7f 63 7f 7f 7d  } 
  $revwumsvc77 = { 7c 7b 79 64 7b 78 69 74 6b 76 71 72  } 
  $xorwumsvc78 = { 7f 79 7c 60 7c 7e 60 7c 60 7c 7c 7e  } 
  $revwumsvc78 = { 7f 7a 7e 65 78 79 66 75 68 77 76 73  } 
  $xorwumsvc79 = { 7e 78 7d 61 7d 7f 61 7d 61 7d 7d 7f  } 
  $revwumsvc79 = { 7e 79 7f 62 79 7a 67 7a 69 74 77 74  } 
  $xorwumsvc80 = { 61 67 62 7e 62 60 7e 62 7e 62 62 60  } 
  $revwumsvc80 = { 61 78 7c 63 7e 7b 64 7b 66 75 74 75  } 
  $xorwumsvc81 = { 60 66 63 7f 63 61 7f 63 7f 63 63 61  } 
  $revwumsvc81 = { 60 67 7d 60 7f 7c 65 78 67 7a 75 76  } 
  $xorwumsvc82 = { 63 65 60 7c 60 62 7c 60 7c 60 60 62  } 
  $revwumsvc82 = { 63 66 62 61 7c 7d 62 79 64 7b 7a 77  } 
  $xorwumsvc83 = { 62 64 61 7d 61 63 7d 61 7d 61 61 63  } 
  $revwumsvc83 = { 62 65 63 7e 7d 7e 63 7e 65 78 7b 78  } 
  $xorwumsvc84 = { 65 63 66 7a 66 64 7a 66 7a 66 66 64  } 
  $revwumsvc84 = { 65 64 60 7f 62 7f 60 7f 62 79 78 79  } 
  $xorwumsvc85 = { 64 62 67 7b 67 65 7b 67 7b 67 67 65  } 
  $revwumsvc85 = { 64 63 61 7c 63 60 61 7c 63 7e 79 7a  } 
  $xorwumsvc86 = { 67 61 64 78 64 66 78 64 78 64 64 66  } 
  $revwumsvc86 = { 67 62 66 7d 60 61 7e 7d 60 7f 7e 7b  } 
  $xorwumsvc87 = { 66 60 65 79 65 67 79 65 79 65 65 67  } 
  $revwumsvc87 = { 66 61 67 7a 61 62 7f 62 61 7c 7f 7c  } 
  $xorwumsvc88 = { 69 6f 6a 76 6a 68 76 6a 76 6a 6a 68  } 
  $revwumsvc88 = { 69 60 64 7b 66 63 7c 63 7e 7d 7c 7d  } 
  $xorwumsvc89 = { 68 6e 6b 77 6b 69 77 6b 77 6b 6b 69  } 
  $revwumsvc89 = { 68 6f 65 78 67 64 7d 60 7f 62 7d 7e  } 
  $xorwumsvc90 = { 6b 6d 68 74 68 6a 74 68 74 68 68 6a  } 
  $revwumsvc90 = { 6b 6e 6a 79 64 65 7a 61 7c 63 62 7f  } 
  $xorwumsvc91 = { 6a 6c 69 75 69 6b 75 69 75 69 69 6b  } 
  $revwumsvc91 = { 6a 6d 6b 76 65 66 7b 66 7d 60 63 60  } 
  $xorwumsvc92 = { 6d 6b 6e 72 6e 6c 72 6e 72 6e 6e 6c  } 
  $revwumsvc92 = { 6d 6c 68 77 6a 67 78 67 7a 61 60 61  } 
  $xorwumsvc93 = { 6c 6a 6f 73 6f 6d 73 6f 73 6f 6f 6d  } 
  $revwumsvc93 = { 6c 6b 69 74 6b 68 79 64 7b 66 61 62  } 
  $xorwumsvc94 = { 6f 69 6c 70 6c 6e 70 6c 70 6c 6c 6e  } 
  $revwumsvc94 = { 6f 6a 6e 75 68 69 76 65 78 67 66 63  } 
  $xorwumsvc95 = { 6e 68 6d 71 6d 6f 71 6d 71 6d 6d 6f  } 
  $revwumsvc95 = { 6e 69 6f 72 69 6a 77 6a 79 64 67 64  } 
  $xorwumsvc96 = { 51 57 52 4e 52 50 4e 52 4e 52 52 50  } 
  $revwumsvc96 = { 51 68 6c 73 6e 6b 74 6b 76 65 64 65  } 
  $xorwumsvc97 = { 50 56 53 4f 53 51 4f 53 4f 53 53 51  } 
  $revwumsvc97 = { 50 57 6d 70 6f 6c 75 68 77 6a 65 66  } 
  $xorwumsvc98 = { 53 55 50 4c 50 52 4c 50 4c 50 50 52  } 
  $revwumsvc98 = { 53 56 52 71 6c 6d 72 69 74 6b 6a 67  } 
  $xorwumsvc99 = { 52 54 51 4d 51 53 4d 51 4d 51 51 53  } 
  $revwumsvc99 = { 52 55 53 4e 6d 6e 73 6e 75 68 6b 68  } 
  $xorwumsvc100 = { 55 53 56 4a 56 54 4a 56 4a 56 56 54  } 
  $revwumsvc100 = { 55 54 50 4f 52 6f 70 6f 72 69 68 69  } 
  $xorwumsvc101 = { 54 52 57 4b 57 55 4b 57 4b 57 57 55  } 
  $revwumsvc101 = { 54 53 51 4c 53 50 71 6c 73 6e 69 6a  } 
  $xorwumsvc102 = { 57 51 54 48 54 56 48 54 48 54 54 56  } 
  $revwumsvc102 = { 57 52 56 4d 50 51 4e 6d 70 6f 6e 6b  } 
  $xorwumsvc103 = { 56 50 55 49 55 57 49 55 49 55 55 57  } 
  $revwumsvc103 = { 56 51 57 4a 51 52 4f 52 71 6c 6f 6c  } 
  $xorwumsvc104 = { 59 5f 5a 46 5a 58 46 5a 46 5a 5a 58  } 
  $revwumsvc104 = { 59 50 54 4b 56 53 4c 53 4e 6d 6c 6d  } 
  $xorwumsvc105 = { 58 5e 5b 47 5b 59 47 5b 47 5b 5b 59  } 
  $revwumsvc105 = { 58 5f 55 48 57 54 4d 50 4f 52 6d 6e  } 
  $xorwumsvc106 = { 5b 5d 58 44 58 5a 44 58 44 58 58 5a  } 
  $revwumsvc106 = { 5b 5e 5a 49 54 55 4a 51 4c 53 52 6f  } 
  $xorwumsvc107 = { 5a 5c 59 45 59 5b 45 59 45 59 59 5b  } 
  $revwumsvc107 = { 5a 5d 5b 46 55 56 4b 56 4d 50 53 50  } 
  $xorwumsvc108 = { 5d 5b 5e 42 5e 5c 42 5e 42 5e 5e 5c  } 
  $revwumsvc108 = { 5d 5c 58 47 5a 57 48 57 4a 51 50 51  } 
  $xorwumsvc109 = { 5c 5a 5f 43 5f 5d 43 5f 43 5f 5f 5d  } 
  $revwumsvc109 = { 5c 5b 59 44 5b 58 49 54 4b 56 51 52  } 
  $xorwumsvc110 = { 5f 59 5c 40 5c 5e 40 5c 40 5c 5c 5e  } 
  $revwumsvc110 = { 5f 5a 5e 45 58 59 46 55 48 57 56 53  } 
  $xorwumsvc111 = { 5e 58 5d 41 5d 5f 41 5d 41 5d 5d 5f  } 
  $revwumsvc111 = { 5e 59 5f 42 59 5a 47 5a 49 54 57 54  } 
  $xorwumsvc112 = { 41 47 42 5e 42 40 5e 42 5e 42 42 40  } 
  $revwumsvc112 = { 41 58 5c 43 5e 5b 44 5b 46 55 54 55  } 
  $xorwumsvc113 = { 40 46 43 5f 43 41 5f 43 5f 43 43 41  } 
  $revwumsvc113 = { 40 47 5d 40 5f 5c 45 58 47 5a 55 56  } 
  $xorwumsvc114 = { 43 45 40 5c 40 42 5c 40 5c 40 40 42  } 
  $revwumsvc114 = { 43 46 42 41 5c 5d 42 59 44 5b 5a 57  } 
  $xorwumsvc115 = { 42 44 41 5d 41 43 5d 41 5d 41 41 43  } 
  $revwumsvc115 = { 42 45 43 5e 5d 5e 43 5e 45 58 5b 58  } 
  $xorwumsvc116 = { 45 43 46 5a 46 44 5a 46 5a 46 46 44  } 
  $revwumsvc116 = { 45 44 40 5f 42 5f 40 5f 42 59 58 59  } 
  $xorwumsvc117 = { 44 42 47 5b 47 45 5b 47 5b 47 47 45  } 
  $revwumsvc117 = { 44 43 41 5c 43 40 41 5c 43 5e 59 5a  } 
  $xorwumsvc118 = { 47 41 44 58 44 46 58 44 58 44 44 46  } 
  $revwumsvc118 = { 47 42 46 5d 40 41 5e 5d 40 5f 5e 5b  } 
  $xorwumsvc119 = { 46 40 45 59 45 47 59 45 59 45 45 47  } 
  $revwumsvc119 = { 46 41 47 5a 41 42 5f 42 41 5c 5f 5c  } 
  $xorwumsvc120 = { 49 4f 4a 56 4a 48 56 4a 56 4a 4a 48  } 
  $revwumsvc120 = { 49 40 44 5b 46 43 5c 43 5e 5d 5c 5d  } 
  $xorwumsvc121 = { 48 4e 4b 57 4b 49 57 4b 57 4b 4b 49  } 
  $revwumsvc121 = { 48 4f 45 58 47 44 5d 40 5f 42 5d 5e  } 
  $xorwumsvc122 = { 4b 4d 48 54 48 4a 54 48 54 48 48 4a  } 
  $revwumsvc122 = { 4b 4e 4a 59 44 45 5a 41 5c 43 42 5f  } 
  $xorwumsvc123 = { 4a 4c 49 55 49 4b 55 49 55 49 49 4b  } 
  $revwumsvc123 = { 4a 4d 4b 56 45 46 5b 46 5d 40 43 40  } 
  $xorwumsvc124 = { 4d 4b 4e 52 4e 4c 52 4e 52 4e 4e 4c  } 
  $revwumsvc124 = { 4d 4c 48 57 4a 47 58 47 5a 41 40 41  } 
  $xorwumsvc125 = { 4c 4a 4f 53 4f 4d 53 4f 53 4f 4f 4d  } 
  $revwumsvc125 = { 4c 4b 49 54 4b 48 59 44 5b 46 41 42  } 
  $xorwumsvc126 = { 4f 49 4c 50 4c 4e 50 4c 50 4c 4c 4e  } 
  $revwumsvc126 = { 4f 4a 4e 55 48 49 56 45 58 47 46 43  } 
  $xorwumsvc127 = { 4e 48 4d 51 4d 4f 51 4d 51 4d 4d 4f  } 
  $revwumsvc127 = { 4e 49 4f 52 49 4a 57 4a 59 44 47 44  } 
  $xorwumsvc128 = { b1 b7 b2 ae b2 b0 ae b2 ae b2 b2 b0  } 
  $revwumsvc128 = { b1 48 4c 53 4e 4b 54 4b 56 45 44 45  } 
  $xorwumsvc129 = { b0 b6 b3 af b3 b1 af b3 af b3 b3 b1  } 
  $revwumsvc129 = { b0 b7 4d 50 4f 4c 55 48 57 4a 45 46  } 
  $xorwumsvc130 = { b3 b5 b0 ac b0 b2 ac b0 ac b0 b0 b2  } 
  $revwumsvc130 = { b3 b6 b2 51 4c 4d 52 49 54 4b 4a 47  } 
  $xorwumsvc131 = { b2 b4 b1 ad b1 b3 ad b1 ad b1 b1 b3  } 
  $revwumsvc131 = { b2 b5 b3 ae 4d 4e 53 4e 55 48 4b 48  } 
  $xorwumsvc132 = { b5 b3 b6 aa b6 b4 aa b6 aa b6 b6 b4  } 
  $revwumsvc132 = { b5 b4 b0 af b2 4f 50 4f 52 49 48 49  } 
  $xorwumsvc133 = { b4 b2 b7 ab b7 b5 ab b7 ab b7 b7 b5  } 
  $revwumsvc133 = { b4 b3 b1 ac b3 b0 51 4c 53 4e 49 4a  } 
  $xorwumsvc134 = { b7 b1 b4 a8 b4 b6 a8 b4 a8 b4 b4 b6  } 
  $revwumsvc134 = { b7 b2 b6 ad b0 b1 ae 4d 50 4f 4e 4b  } 
  $xorwumsvc135 = { b6 b0 b5 a9 b5 b7 a9 b5 a9 b5 b5 b7  } 
  $revwumsvc135 = { b6 b1 b7 aa b1 b2 af b2 51 4c 4f 4c  } 
  $xorwumsvc136 = { b9 bf ba a6 ba b8 a6 ba a6 ba ba b8  } 
  $revwumsvc136 = { b9 b0 b4 ab b6 b3 ac b3 ae 4d 4c 4d  } 
  $xorwumsvc137 = { b8 be bb a7 bb b9 a7 bb a7 bb bb b9  } 
  $revwumsvc137 = { b8 bf b5 a8 b7 b4 ad b0 af b2 4d 4e  } 
  $xorwumsvc138 = { bb bd b8 a4 b8 ba a4 b8 a4 b8 b8 ba  } 
  $revwumsvc138 = { bb be ba a9 b4 b5 aa b1 ac b3 b2 4f  } 
  $xorwumsvc139 = { ba bc b9 a5 b9 bb a5 b9 a5 b9 b9 bb  } 
  $revwumsvc139 = { ba bd bb a6 b5 b6 ab b6 ad b0 b3 b0  } 
  $xorwumsvc140 = { bd bb be a2 be bc a2 be a2 be be bc  } 
  $revwumsvc140 = { bd bc b8 a7 ba b7 a8 b7 aa b1 b0 b1  } 
  $xorwumsvc141 = { bc ba bf a3 bf bd a3 bf a3 bf bf bd  } 
  $revwumsvc141 = { bc bb b9 a4 bb b8 a9 b4 ab b6 b1 b2  } 
  $xorwumsvc142 = { bf b9 bc a0 bc be a0 bc a0 bc bc be  } 
  $revwumsvc142 = { bf ba be a5 b8 b9 a6 b5 a8 b7 b6 b3  } 
  $xorwumsvc143 = { be b8 bd a1 bd bf a1 bd a1 bd bd bf  } 
  $revwumsvc143 = { be b9 bf a2 b9 ba a7 ba a9 b4 b7 b4  } 
  $xorwumsvc144 = { a1 a7 a2 be a2 a0 be a2 be a2 a2 a0  } 
  $revwumsvc144 = { a1 b8 bc a3 be bb a4 bb a6 b5 b4 b5  } 
  $xorwumsvc145 = { a0 a6 a3 bf a3 a1 bf a3 bf a3 a3 a1  } 
  $revwumsvc145 = { a0 a7 bd a0 bf bc a5 b8 a7 ba b5 b6  } 
  $xorwumsvc146 = { a3 a5 a0 bc a0 a2 bc a0 bc a0 a0 a2  } 
  $revwumsvc146 = { a3 a6 a2 a1 bc bd a2 b9 a4 bb ba b7  } 
  $xorwumsvc147 = { a2 a4 a1 bd a1 a3 bd a1 bd a1 a1 a3  } 
  $revwumsvc147 = { a2 a5 a3 be bd be a3 be a5 b8 bb b8  } 
  $xorwumsvc148 = { a5 a3 a6 ba a6 a4 ba a6 ba a6 a6 a4  } 
  $revwumsvc148 = { a5 a4 a0 bf a2 bf a0 bf a2 b9 b8 b9  } 
  $xorwumsvc149 = { a4 a2 a7 bb a7 a5 bb a7 bb a7 a7 a5  } 
  $revwumsvc149 = { a4 a3 a1 bc a3 a0 a1 bc a3 be b9 ba  } 
  $xorwumsvc150 = { a7 a1 a4 b8 a4 a6 b8 a4 b8 a4 a4 a6  } 
  $revwumsvc150 = { a7 a2 a6 bd a0 a1 be bd a0 bf be bb  } 
  $xorwumsvc151 = { a6 a0 a5 b9 a5 a7 b9 a5 b9 a5 a5 a7  } 
  $revwumsvc151 = { a6 a1 a7 ba a1 a2 bf a2 a1 bc bf bc  } 
  $xorwumsvc152 = { a9 af aa b6 aa a8 b6 aa b6 aa aa a8  } 
  $revwumsvc152 = { a9 a0 a4 bb a6 a3 bc a3 be bd bc bd  } 
  $xorwumsvc153 = { a8 ae ab b7 ab a9 b7 ab b7 ab ab a9  } 
  $revwumsvc153 = { a8 af a5 b8 a7 a4 bd a0 bf a2 bd be  } 
  $xorwumsvc154 = { ab ad a8 b4 a8 aa b4 a8 b4 a8 a8 aa  } 
  $revwumsvc154 = { ab ae aa b9 a4 a5 ba a1 bc a3 a2 bf  } 
  $xorwumsvc155 = { aa ac a9 b5 a9 ab b5 a9 b5 a9 a9 ab  } 
  $revwumsvc155 = { aa ad ab b6 a5 a6 bb a6 bd a0 a3 a0  } 
  $xorwumsvc156 = { ad ab ae b2 ae ac b2 ae b2 ae ae ac  } 
  $revwumsvc156 = { ad ac a8 b7 aa a7 b8 a7 ba a1 a0 a1  } 
  $xorwumsvc157 = { ac aa af b3 af ad b3 af b3 af af ad  } 
  $revwumsvc157 = { ac ab a9 b4 ab a8 b9 a4 bb a6 a1 a2  } 
  $xorwumsvc158 = { af a9 ac b0 ac ae b0 ac b0 ac ac ae  } 
  $revwumsvc158 = { af aa ae b5 a8 a9 b6 a5 b8 a7 a6 a3  } 
  $xorwumsvc159 = { ae a8 ad b1 ad af b1 ad b1 ad ad af  } 
  $revwumsvc159 = { ae a9 af b2 a9 aa b7 aa b9 a4 a7 a4  } 
  $xorwumsvc160 = { 91 97 92 8e 92 90 8e 92 8e 92 92 90  } 
  $revwumsvc160 = { 91 a8 ac b3 ae ab b4 ab b6 a5 a4 a5  } 
  $xorwumsvc161 = { 90 96 93 8f 93 91 8f 93 8f 93 93 91  } 
  $revwumsvc161 = { 90 97 ad b0 af ac b5 a8 b7 aa a5 a6  } 
  $xorwumsvc162 = { 93 95 90 8c 90 92 8c 90 8c 90 90 92  } 
  $revwumsvc162 = { 93 96 92 b1 ac ad b2 a9 b4 ab aa a7  } 
  $xorwumsvc163 = { 92 94 91 8d 91 93 8d 91 8d 91 91 93  } 
  $revwumsvc163 = { 92 95 93 8e ad ae b3 ae b5 a8 ab a8  } 
  $xorwumsvc164 = { 95 93 96 8a 96 94 8a 96 8a 96 96 94  } 
  $revwumsvc164 = { 95 94 90 8f 92 af b0 af b2 a9 a8 a9  } 
  $xorwumsvc165 = { 94 92 97 8b 97 95 8b 97 8b 97 97 95  } 
  $revwumsvc165 = { 94 93 91 8c 93 90 b1 ac b3 ae a9 aa  } 
  $xorwumsvc166 = { 97 91 94 88 94 96 88 94 88 94 94 96  } 
  $revwumsvc166 = { 97 92 96 8d 90 91 8e ad b0 af ae ab  } 
  $xorwumsvc167 = { 96 90 95 89 95 97 89 95 89 95 95 97  } 
  $revwumsvc167 = { 96 91 97 8a 91 92 8f 92 b1 ac af ac  } 
  $xorwumsvc168 = { 99 9f 9a 86 9a 98 86 9a 86 9a 9a 98  } 
  $revwumsvc168 = { 99 90 94 8b 96 93 8c 93 8e ad ac ad  } 
  $xorwumsvc169 = { 98 9e 9b 87 9b 99 87 9b 87 9b 9b 99  } 
  $revwumsvc169 = { 98 9f 95 88 97 94 8d 90 8f 92 ad ae  } 
  $xorwumsvc170 = { 9b 9d 98 84 98 9a 84 98 84 98 98 9a  } 
  $revwumsvc170 = { 9b 9e 9a 89 94 95 8a 91 8c 93 92 af  } 
  $xorwumsvc171 = { 9a 9c 99 85 99 9b 85 99 85 99 99 9b  } 
  $revwumsvc171 = { 9a 9d 9b 86 95 96 8b 96 8d 90 93 90  } 
  $xorwumsvc172 = { 9d 9b 9e 82 9e 9c 82 9e 82 9e 9e 9c  } 
  $revwumsvc172 = { 9d 9c 98 87 9a 97 88 97 8a 91 90 91  } 
  $xorwumsvc173 = { 9c 9a 9f 83 9f 9d 83 9f 83 9f 9f 9d  } 
  $revwumsvc173 = { 9c 9b 99 84 9b 98 89 94 8b 96 91 92  } 
  $xorwumsvc174 = { 9f 99 9c 80 9c 9e 80 9c 80 9c 9c 9e  } 
  $revwumsvc174 = { 9f 9a 9e 85 98 99 86 95 88 97 96 93  } 
  $xorwumsvc175 = { 9e 98 9d 81 9d 9f 81 9d 81 9d 9d 9f  } 
  $revwumsvc175 = { 9e 99 9f 82 99 9a 87 9a 89 94 97 94  } 
  $xorwumsvc176 = { 81 87 82 9e 82 80 9e 82 9e 82 82 80  } 
  $revwumsvc176 = { 81 98 9c 83 9e 9b 84 9b 86 95 94 95  } 
  $xorwumsvc177 = { 80 86 83 9f 83 81 9f 83 9f 83 83 81  } 
  $revwumsvc177 = { 80 87 9d 80 9f 9c 85 98 87 9a 95 96  } 
  $xorwumsvc178 = { 83 85 80 9c 80 82 9c 80 9c 80 80 82  } 
  $revwumsvc178 = { 83 86 82 81 9c 9d 82 99 84 9b 9a 97  } 
  $xorwumsvc179 = { 82 84 81 9d 81 83 9d 81 9d 81 81 83  } 
  $revwumsvc179 = { 82 85 83 9e 9d 9e 83 9e 85 98 9b 98  } 
  $xorwumsvc180 = { 85 83 86 9a 86 84 9a 86 9a 86 86 84  } 
  $revwumsvc180 = { 85 84 80 9f 82 9f 80 9f 82 99 98 99  } 
  $xorwumsvc181 = { 84 82 87 9b 87 85 9b 87 9b 87 87 85  } 
  $revwumsvc181 = { 84 83 81 9c 83 80 81 9c 83 9e 99 9a  } 
  $xorwumsvc182 = { 87 81 84 98 84 86 98 84 98 84 84 86  } 
  $revwumsvc182 = { 87 82 86 9d 80 81 9e 9d 80 9f 9e 9b  } 
  $xorwumsvc183 = { 86 80 85 99 85 87 99 85 99 85 85 87  } 
  $revwumsvc183 = { 86 81 87 9a 81 82 9f 82 81 9c 9f 9c  } 
  $xorwumsvc184 = { 89 8f 8a 96 8a 88 96 8a 96 8a 8a 88  } 
  $revwumsvc184 = { 89 80 84 9b 86 83 9c 83 9e 9d 9c 9d  } 
  $xorwumsvc185 = { 88 8e 8b 97 8b 89 97 8b 97 8b 8b 89  } 
  $revwumsvc185 = { 88 8f 85 98 87 84 9d 80 9f 82 9d 9e  } 
  $xorwumsvc186 = { 8b 8d 88 94 88 8a 94 88 94 88 88 8a  } 
  $revwumsvc186 = { 8b 8e 8a 99 84 85 9a 81 9c 83 82 9f  } 
  $xorwumsvc187 = { 8a 8c 89 95 89 8b 95 89 95 89 89 8b  } 
  $revwumsvc187 = { 8a 8d 8b 96 85 86 9b 86 9d 80 83 80  } 
  $xorwumsvc188 = { 8d 8b 8e 92 8e 8c 92 8e 92 8e 8e 8c  } 
  $revwumsvc188 = { 8d 8c 88 97 8a 87 98 87 9a 81 80 81  } 
  $xorwumsvc189 = { 8c 8a 8f 93 8f 8d 93 8f 93 8f 8f 8d  } 
  $revwumsvc189 = { 8c 8b 89 94 8b 88 99 84 9b 86 81 82  } 
  $xorwumsvc190 = { 8f 89 8c 90 8c 8e 90 8c 90 8c 8c 8e  } 
  $revwumsvc190 = { 8f 8a 8e 95 88 89 96 85 98 87 86 83  } 
  $xorwumsvc191 = { 8e 88 8d 91 8d 8f 91 8d 91 8d 8d 8f  } 
  $revwumsvc191 = { 8e 89 8f 92 89 8a 97 8a 99 84 87 84  } 
  $xorwumsvc192 = { f1 f7 f2 ee f2 f0 ee f2 ee f2 f2 f0  } 
  $revwumsvc192 = { f1 88 8c 93 8e 8b 94 8b 96 85 84 85  } 
  $xorwumsvc193 = { f0 f6 f3 ef f3 f1 ef f3 ef f3 f3 f1  } 
  $revwumsvc193 = { f0 f7 8d 90 8f 8c 95 88 97 8a 85 86  } 
  $xorwumsvc194 = { f3 f5 f0 ec f0 f2 ec f0 ec f0 f0 f2  } 
  $revwumsvc194 = { f3 f6 f2 91 8c 8d 92 89 94 8b 8a 87  } 
  $xorwumsvc195 = { f2 f4 f1 ed f1 f3 ed f1 ed f1 f1 f3  } 
  $revwumsvc195 = { f2 f5 f3 ee 8d 8e 93 8e 95 88 8b 88  } 
  $xorwumsvc196 = { f5 f3 f6 ea f6 f4 ea f6 ea f6 f6 f4  } 
  $revwumsvc196 = { f5 f4 f0 ef f2 8f 90 8f 92 89 88 89  } 
  $xorwumsvc197 = { f4 f2 f7 eb f7 f5 eb f7 eb f7 f7 f5  } 
  $revwumsvc197 = { f4 f3 f1 ec f3 f0 91 8c 93 8e 89 8a  } 
  $xorwumsvc198 = { f7 f1 f4 e8 f4 f6 e8 f4 e8 f4 f4 f6  } 
  $revwumsvc198 = { f7 f2 f6 ed f0 f1 ee 8d 90 8f 8e 8b  } 
  $xorwumsvc199 = { f6 f0 f5 e9 f5 f7 e9 f5 e9 f5 f5 f7  } 
  $revwumsvc199 = { f6 f1 f7 ea f1 f2 ef f2 91 8c 8f 8c  } 
  $xorwumsvc200 = { f9 ff fa e6 fa f8 e6 fa e6 fa fa f8  } 
  $revwumsvc200 = { f9 f0 f4 eb f6 f3 ec f3 ee 8d 8c 8d  } 
  $xorwumsvc201 = { f8 fe fb e7 fb f9 e7 fb e7 fb fb f9  } 
  $revwumsvc201 = { f8 ff f5 e8 f7 f4 ed f0 ef f2 8d 8e  } 
  $xorwumsvc202 = { fb fd f8 e4 f8 fa e4 f8 e4 f8 f8 fa  } 
  $revwumsvc202 = { fb fe fa e9 f4 f5 ea f1 ec f3 f2 8f  } 
  $xorwumsvc203 = { fa fc f9 e5 f9 fb e5 f9 e5 f9 f9 fb  } 
  $revwumsvc203 = { fa fd fb e6 f5 f6 eb f6 ed f0 f3 f0  } 
  $xorwumsvc204 = { fd fb fe e2 fe fc e2 fe e2 fe fe fc  } 
  $revwumsvc204 = { fd fc f8 e7 fa f7 e8 f7 ea f1 f0 f1  } 
  $xorwumsvc205 = { fc fa ff e3 ff fd e3 ff e3 ff ff fd  } 
  $revwumsvc205 = { fc fb f9 e4 fb f8 e9 f4 eb f6 f1 f2  } 
  $xorwumsvc206 = { ff f9 fc e0 fc fe e0 fc e0 fc fc fe  } 
  $revwumsvc206 = { ff fa fe e5 f8 f9 e6 f5 e8 f7 f6 f3  } 
  $xorwumsvc207 = { fe f8 fd e1 fd ff e1 fd e1 fd fd ff  } 
  $revwumsvc207 = { fe f9 ff e2 f9 fa e7 fa e9 f4 f7 f4  } 
  $xorwumsvc208 = { e1 e7 e2 fe e2 e0 fe e2 fe e2 e2 e0  } 
  $revwumsvc208 = { e1 f8 fc e3 fe fb e4 fb e6 f5 f4 f5  } 
  $xorwumsvc209 = { e0 e6 e3 ff e3 e1 ff e3 ff e3 e3 e1  } 
  $revwumsvc209 = { e0 e7 fd e0 ff fc e5 f8 e7 fa f5 f6  } 
  $xorwumsvc210 = { e3 e5 e0 fc e0 e2 fc e0 fc e0 e0 e2  } 
  $revwumsvc210 = { e3 e6 e2 e1 fc fd e2 f9 e4 fb fa f7  } 
  $xorwumsvc211 = { e2 e4 e1 fd e1 e3 fd e1 fd e1 e1 e3  } 
  $revwumsvc211 = { e2 e5 e3 fe fd fe e3 fe e5 f8 fb f8  } 
  $xorwumsvc212 = { e5 e3 e6 fa e6 e4 fa e6 fa e6 e6 e4  } 
  $revwumsvc212 = { e5 e4 e0 ff e2 ff e0 ff e2 f9 f8 f9  } 
  $xorwumsvc213 = { e4 e2 e7 fb e7 e5 fb e7 fb e7 e7 e5  } 
  $revwumsvc213 = { e4 e3 e1 fc e3 e0 e1 fc e3 fe f9 fa  } 
  $xorwumsvc214 = { e7 e1 e4 f8 e4 e6 f8 e4 f8 e4 e4 e6  } 
  $revwumsvc214 = { e7 e2 e6 fd e0 e1 fe fd e0 ff fe fb  } 
  $xorwumsvc215 = { e6 e0 e5 f9 e5 e7 f9 e5 f9 e5 e5 e7  } 
  $revwumsvc215 = { e6 e1 e7 fa e1 e2 ff e2 e1 fc ff fc  } 
  $xorwumsvc216 = { e9 ef ea f6 ea e8 f6 ea f6 ea ea e8  } 
  $revwumsvc216 = { e9 e0 e4 fb e6 e3 fc e3 fe fd fc fd  } 
  $xorwumsvc217 = { e8 ee eb f7 eb e9 f7 eb f7 eb eb e9  } 
  $revwumsvc217 = { e8 ef e5 f8 e7 e4 fd e0 ff e2 fd fe  } 
  $xorwumsvc218 = { eb ed e8 f4 e8 ea f4 e8 f4 e8 e8 ea  } 
  $revwumsvc218 = { eb ee ea f9 e4 e5 fa e1 fc e3 e2 ff  } 
  $xorwumsvc219 = { ea ec e9 f5 e9 eb f5 e9 f5 e9 e9 eb  } 
  $revwumsvc219 = { ea ed eb f6 e5 e6 fb e6 fd e0 e3 e0  } 
  $xorwumsvc220 = { ed eb ee f2 ee ec f2 ee f2 ee ee ec  } 
  $revwumsvc220 = { ed ec e8 f7 ea e7 f8 e7 fa e1 e0 e1  } 
  $xorwumsvc221 = { ec ea ef f3 ef ed f3 ef f3 ef ef ed  } 
  $revwumsvc221 = { ec eb e9 f4 eb e8 f9 e4 fb e6 e1 e2  } 
  $xorwumsvc222 = { ef e9 ec f0 ec ee f0 ec f0 ec ec ee  } 
  $revwumsvc222 = { ef ea ee f5 e8 e9 f6 e5 f8 e7 e6 e3  } 
  $xorwumsvc223 = { ee e8 ed f1 ed ef f1 ed f1 ed ed ef  } 
  $revwumsvc223 = { ee e9 ef f2 e9 ea f7 ea f9 e4 e7 e4  } 
  $xorwumsvc224 = { d1 d7 d2 ce d2 d0 ce d2 ce d2 d2 d0  } 
  $revwumsvc224 = { d1 e8 ec f3 ee eb f4 eb f6 e5 e4 e5  } 
  $xorwumsvc225 = { d0 d6 d3 cf d3 d1 cf d3 cf d3 d3 d1  } 
  $revwumsvc225 = { d0 d7 ed f0 ef ec f5 e8 f7 ea e5 e6  } 
  $xorwumsvc226 = { d3 d5 d0 cc d0 d2 cc d0 cc d0 d0 d2  } 
  $revwumsvc226 = { d3 d6 d2 f1 ec ed f2 e9 f4 eb ea e7  } 
  $xorwumsvc227 = { d2 d4 d1 cd d1 d3 cd d1 cd d1 d1 d3  } 
  $revwumsvc227 = { d2 d5 d3 ce ed ee f3 ee f5 e8 eb e8  } 
  $xorwumsvc228 = { d5 d3 d6 ca d6 d4 ca d6 ca d6 d6 d4  } 
  $revwumsvc228 = { d5 d4 d0 cf d2 ef f0 ef f2 e9 e8 e9  } 
  $xorwumsvc229 = { d4 d2 d7 cb d7 d5 cb d7 cb d7 d7 d5  } 
  $revwumsvc229 = { d4 d3 d1 cc d3 d0 f1 ec f3 ee e9 ea  } 
  $xorwumsvc230 = { d7 d1 d4 c8 d4 d6 c8 d4 c8 d4 d4 d6  } 
  $revwumsvc230 = { d7 d2 d6 cd d0 d1 ce ed f0 ef ee eb  } 
  $xorwumsvc231 = { d6 d0 d5 c9 d5 d7 c9 d5 c9 d5 d5 d7  } 
  $revwumsvc231 = { d6 d1 d7 ca d1 d2 cf d2 f1 ec ef ec  } 
  $xorwumsvc232 = { d9 df da c6 da d8 c6 da c6 da da d8  } 
  $revwumsvc232 = { d9 d0 d4 cb d6 d3 cc d3 ce ed ec ed  } 
  $xorwumsvc233 = { d8 de db c7 db d9 c7 db c7 db db d9  } 
  $revwumsvc233 = { d8 df d5 c8 d7 d4 cd d0 cf d2 ed ee  } 
  $xorwumsvc234 = { db dd d8 c4 d8 da c4 d8 c4 d8 d8 da  } 
  $revwumsvc234 = { db de da c9 d4 d5 ca d1 cc d3 d2 ef  } 
  $xorwumsvc235 = { da dc d9 c5 d9 db c5 d9 c5 d9 d9 db  } 
  $revwumsvc235 = { da dd db c6 d5 d6 cb d6 cd d0 d3 d0  } 
  $xorwumsvc236 = { dd db de c2 de dc c2 de c2 de de dc  } 
  $revwumsvc236 = { dd dc d8 c7 da d7 c8 d7 ca d1 d0 d1  } 
  $xorwumsvc237 = { dc da df c3 df dd c3 df c3 df df dd  } 
  $revwumsvc237 = { dc db d9 c4 db d8 c9 d4 cb d6 d1 d2  } 
  $xorwumsvc238 = { df d9 dc c0 dc de c0 dc c0 dc dc de  } 
  $revwumsvc238 = { df da de c5 d8 d9 c6 d5 c8 d7 d6 d3  } 
  $xorwumsvc239 = { de d8 dd c1 dd df c1 dd c1 dd dd df  } 
  $revwumsvc239 = { de d9 df c2 d9 da c7 da c9 d4 d7 d4  } 
  $xorwumsvc240 = { c1 c7 c2 de c2 c0 de c2 de c2 c2 c0  } 
  $revwumsvc240 = { c1 d8 dc c3 de db c4 db c6 d5 d4 d5  } 
  $xorwumsvc241 = { c0 c6 c3 df c3 c1 df c3 df c3 c3 c1  } 
  $revwumsvc241 = { c0 c7 dd c0 df dc c5 d8 c7 da d5 d6  } 
  $xorwumsvc242 = { c3 c5 c0 dc c0 c2 dc c0 dc c0 c0 c2  } 
  $revwumsvc242 = { c3 c6 c2 c1 dc dd c2 d9 c4 db da d7  } 
  $xorwumsvc243 = { c2 c4 c1 dd c1 c3 dd c1 dd c1 c1 c3  } 
  $revwumsvc243 = { c2 c5 c3 de dd de c3 de c5 d8 db d8  } 
  $xorwumsvc244 = { c5 c3 c6 da c6 c4 da c6 da c6 c6 c4  } 
  $revwumsvc244 = { c5 c4 c0 df c2 df c0 df c2 d9 d8 d9  } 
  $xorwumsvc245 = { c4 c2 c7 db c7 c5 db c7 db c7 c7 c5  } 
  $revwumsvc245 = { c4 c3 c1 dc c3 c0 c1 dc c3 de d9 da  } 
  $xorwumsvc246 = { c7 c1 c4 d8 c4 c6 d8 c4 d8 c4 c4 c6  } 
  $revwumsvc246 = { c7 c2 c6 dd c0 c1 de dd c0 df de db  } 
  $xorwumsvc247 = { c6 c0 c5 d9 c5 c7 d9 c5 d9 c5 c5 c7  } 
  $revwumsvc247 = { c6 c1 c7 da c1 c2 df c2 c1 dc df dc  } 
  $xorwumsvc248 = { c9 cf ca d6 ca c8 d6 ca d6 ca ca c8  } 
  $revwumsvc248 = { c9 c0 c4 db c6 c3 dc c3 de dd dc dd  } 
  $xorwumsvc249 = { c8 ce cb d7 cb c9 d7 cb d7 cb cb c9  } 
  $revwumsvc249 = { c8 cf c5 d8 c7 c4 dd c0 df c2 dd de  } 
  $xorwumsvc250 = { cb cd c8 d4 c8 ca d4 c8 d4 c8 c8 ca  } 
  $revwumsvc250 = { cb ce ca d9 c4 c5 da c1 dc c3 c2 df  } 
  $xorwumsvc251 = { ca cc c9 d5 c9 cb d5 c9 d5 c9 c9 cb  } 
  $revwumsvc251 = { ca cd cb d6 c5 c6 db c6 dd c0 c3 c0  } 
  $xorwumsvc252 = { cd cb ce d2 ce cc d2 ce d2 ce ce cc  } 
  $revwumsvc252 = { cd cc c8 d7 ca c7 d8 c7 da c1 c0 c1  } 
  $xorwumsvc253 = { cc ca cf d3 cf cd d3 cf d3 cf cf cd  } 
  $revwumsvc253 = { cc cb c9 d4 cb c8 d9 c4 db c6 c1 c2  } 
  $xorwumsvc254 = { cf c9 cc d0 cc ce d0 cc d0 cc cc ce  } 
  $revwumsvc254 = { cf ca ce d5 c8 c9 d6 c5 d8 c7 c6 c3  } 
condition:
   any of them

}

/*
// author - matt
// sig type - Metadata
// badness - 9
// cve-2010-0188
*/
rule pdf_0day_exploit
{
strings:
	$a = "Title(Novartis delivers strong operational performance in H1 2009)"
	$b = "(D:20090716172105+02'00')"
	$c = "/XFA 3 0 R"
	$d = "(D:20090716172105)"
	$e = "cbc2cdf2-a534-4b2f-b7cc-296a74d3fbe0"
condition:
	any of them

}

/*
// author - matt
// sig type - Metadata
// badness - 9
// document id from most recent cve-2010-0188 exploits
*/
rule pdf_meta_doc_id_2010_0188
{
strings:
$a = "2390d98e-7d70-4b70-bd3a-7bb7df72dff0"
condition:
$a
}

/*
// author - matt
// sig type - Shellcode
// badness - 9
// found in new ppt on 3/21, see 75d82a68a3955e8ed753a6e140be3a46
*/
rule shellcode_stage1_ror6_xorfe
{
strings:
$a = { ac c0 c8 06 34 fe aa }
condition:
any of them
}

/*
// author - matt
// sig type - Metadata
// badness - 9
// used in new pdf exploit toolkit to bypass AV, see 303a84452b9e2c4996a9a6d085cba658
*/
rule pdf_topmostform_cve_2010_0188
{
strings:
$a = "<</V () /Kids [3 0 R] /T (topmostSubform[0]) >>"
$b = "[3 0 R] /T (topmostSubform[0]) >>"

condition:
any of them
}

/*
// author - matt
// sig type - JavaScript
// badness - 7
// prompts the user to launch an executable using cmd.exe
*/
rule pdf_file_launch_cmd_exe
{
strings:
$a = "<</S/JavaScript/JS(this.exportDataObject({"
$b = "<</S/Launch/Type/Action/Win<</F(cmd.exe)"
$z = "%PDF-"
$c = "/F (cmd.exe)"
$d = "fso=createobject(\"scripting.filesystemobject"
$e = "/P (/c echo m=\".\":n="
condition:
$z at 0 and ($a or $b or $c or $d or $e)

}

/*
// author - matt
// sig type - Payload Detector
// badness - 9
// detects rol 4 encoded executables
*/
rule rol_4_exe_header
{
strings:
$a = {45 86 96 37 02 07 27 f6 76 27 16 d6 02}
condition:
$a
}

/*
// author - matt
// sig type - Metadata
// badness - 9
// detects specific document ID of very low detection pdfs
*/
rule cve_2009_4324_meta_c41ea
{
strings:
$a = "c41eae9b-3a0f-4fe4-bec2-98cb4cac9ad2"
condition:
$a
}

/*
// author - matt
// sig type - Embedded Trojan
// badness - 7
// detects ql_asd
*/
rule xor_qlasd
{
strings:
	$xorQLASD1 = { 50 4d 5e 40 52 45  } 
	$revQLASD1 = { 50 4c a0 bf ae b8  } 
	$xorQLASD2 = { 53 4e 5d 43 51 46  } 
	$revQLASD2 = { 53 4d 5f be ad b9  } 
	$xorQLASD3 = { 52 4f 5c 42 50 47  } 
	$revQLASD3 = { 52 4e 5e 41 ac ba  } 
	$xorQLASD4 = { 55 48 5b 45 57 40  } 
	$revQLASD4 = { 55 4f 5d 40 53 bb  } 
	$xorQLASD5 = { 54 49 5a 44 56 41  } 
	$revQLASD5 = { 54 48 5c 43 52 44  } 
	$xorQLASD6 = { 57 4a 59 47 55 42  } 
	$revQLASD6 = { 57 49 5b 42 51 45  } 
	$xorQLASD7 = { 56 4b 58 46 54 43  } 
	$revQLASD7 = { 56 4a 5a 45 50 46  } 
	$xorQLASD8 = { 59 44 57 49 5b 4c  } 
	$revQLASD8 = { 59 4b 59 44 57 47  } 
	$xorQLASD9 = { 58 45 56 48 5a 4d  } 
	$revQLASD9 = { 58 44 58 47 56 40  } 
	$xorQLASD10 = { 5b 46 55 4b 59 4e  } 
	$revQLASD10 = { 5b 45 57 46 55 41  } 
	$xorQLASD11 = { 5a 47 54 4a 58 4f  } 
	$revQLASD11 = { 5a 46 56 49 54 42  } 
	$xorQLASD12 = { 5d 40 53 4d 5f 48  } 
	$revQLASD12 = { 5d 47 55 48 5b 43  } 
	$xorQLASD13 = { 5c 41 52 4c 5e 49  } 
	$revQLASD13 = { 5c 40 54 4b 5a 4c  } 
	$xorQLASD14 = { 5f 42 51 4f 5d 4a  } 
	$revQLASD14 = { 5f 41 53 4a 59 4d  } 
	$xorQLASD15 = { 5e 43 50 4e 5c 4b  } 
	$revQLASD15 = { 5e 42 52 4d 58 4e  } 
	$xorQLASD16 = { 41 5c 4f 51 43 54  } 
	$revQLASD16 = { 41 43 51 4c 5f 4f  } 
	$xorQLASD17 = { 40 5d 4e 50 42 55  } 
	$revQLASD17 = { 40 5c 50 4f 5e 48  } 
	$xorQLASD18 = { 43 5e 4d 53 41 56  } 
	$revQLASD18 = { 43 5d 4f 4e 5d 49  } 
	$xorQLASD19 = { 42 5f 4c 52 40 57  } 
	$revQLASD19 = { 42 5e 4e 51 5c 4a  } 
	$xorQLASD20 = { 45 58 4b 55 47 50  } 
	$revQLASD20 = { 45 5f 4d 50 43 4b  } 
	$xorQLASD21 = { 44 59 4a 54 46 51  } 
	$revQLASD21 = { 44 58 4c 53 42 54  } 
	$xorQLASD22 = { 47 5a 49 57 45 52  } 
	$revQLASD22 = { 47 59 4b 52 41 55  } 
	$xorQLASD23 = { 46 5b 48 56 44 53  } 
	$revQLASD23 = { 46 5a 4a 55 40 56  } 
	$xorQLASD24 = { 49 54 47 59 4b 5c  } 
	$revQLASD24 = { 49 5b 49 54 47 57  } 
	$xorQLASD25 = { 48 55 46 58 4a 5d  } 
	$revQLASD25 = { 48 54 48 57 46 50  } 
	$xorQLASD26 = { 4b 56 45 5b 49 5e  } 
	$revQLASD26 = { 4b 55 47 56 45 51  } 
	$xorQLASD27 = { 4a 57 44 5a 48 5f  } 
	$revQLASD27 = { 4a 56 46 59 44 52  } 
	$xorQLASD28 = { 4d 50 43 5d 4f 58  } 
	$revQLASD28 = { 4d 57 45 58 4b 53  } 
	$xorQLASD29 = { 4c 51 42 5c 4e 59  } 
	$revQLASD29 = { 4c 50 44 5b 4a 5c  } 
	$xorQLASD30 = { 4f 52 41 5f 4d 5a  } 
	$revQLASD30 = { 4f 51 43 5a 49 5d  } 
	$xorQLASD31 = { 4e 53 40 5e 4c 5b  } 
	$revQLASD31 = { 4e 52 42 5d 48 5e  } 
	$xorQLASD32 = { 71 6c 7f 61 73 64  } 
	$revQLASD32 = { 71 53 41 5c 4f 5f  } 
	$xorQLASD33 = { 70 6d 7e 60 72 65  } 
	$revQLASD33 = { 70 6c 40 5f 4e 58  } 
	$xorQLASD34 = { 73 6e 7d 63 71 66  } 
	$revQLASD34 = { 73 6d 7f 5e 4d 59  } 
	$xorQLASD35 = { 72 6f 7c 62 70 67  } 
	$revQLASD35 = { 72 6e 7e 61 4c 5a  } 
	$xorQLASD36 = { 75 68 7b 65 77 60  } 
	$revQLASD36 = { 75 6f 7d 60 73 5b  } 
	$xorQLASD37 = { 74 69 7a 64 76 61  } 
	$revQLASD37 = { 74 68 7c 63 72 64  } 
	$xorQLASD38 = { 77 6a 79 67 75 62  } 
	$revQLASD38 = { 77 69 7b 62 71 65  } 
	$xorQLASD39 = { 76 6b 78 66 74 63  } 
	$revQLASD39 = { 76 6a 7a 65 70 66  } 
	$xorQLASD40 = { 79 64 77 69 7b 6c  } 
	$revQLASD40 = { 79 6b 79 64 77 67  } 
	$xorQLASD41 = { 78 65 76 68 7a 6d  } 
	$revQLASD41 = { 78 64 78 67 76 60  } 
	$xorQLASD42 = { 7b 66 75 6b 79 6e  } 
	$revQLASD42 = { 7b 65 77 66 75 61  } 
	$xorQLASD43 = { 7a 67 74 6a 78 6f  } 
	$revQLASD43 = { 7a 66 76 69 74 62  } 
	$xorQLASD44 = { 7d 60 73 6d 7f 68  } 
	$revQLASD44 = { 7d 67 75 68 7b 63  } 
	$xorQLASD45 = { 7c 61 72 6c 7e 69  } 
	$revQLASD45 = { 7c 60 74 6b 7a 6c  } 
	$xorQLASD46 = { 7f 62 71 6f 7d 6a  } 
	$revQLASD46 = { 7f 61 73 6a 79 6d  } 
	$xorQLASD47 = { 7e 63 70 6e 7c 6b  } 
	$revQLASD47 = { 7e 62 72 6d 78 6e  } 
	$xorQLASD48 = { 61 7c 6f 71 63 74  } 
	$revQLASD48 = { 61 63 71 6c 7f 6f  } 
	$xorQLASD49 = { 60 7d 6e 70 62 75  } 
	$revQLASD49 = { 60 7c 70 6f 7e 68  } 
	$xorQLASD50 = { 63 7e 6d 73 61 76  } 
	$revQLASD50 = { 63 7d 6f 6e 7d 69  } 
	$xorQLASD51 = { 62 7f 6c 72 60 77  } 
	$revQLASD51 = { 62 7e 6e 71 7c 6a  } 
	$xorQLASD52 = { 65 78 6b 75 67 70  } 
	$revQLASD52 = { 65 7f 6d 70 63 6b  } 
	$xorQLASD53 = { 64 79 6a 74 66 71  } 
	$revQLASD53 = { 64 78 6c 73 62 74  } 
	$xorQLASD54 = { 67 7a 69 77 65 72  } 
	$revQLASD54 = { 67 79 6b 72 61 75  } 
	$xorQLASD55 = { 66 7b 68 76 64 73  } 
	$revQLASD55 = { 66 7a 6a 75 60 76  } 
	$xorQLASD56 = { 69 74 67 79 6b 7c  } 
	$revQLASD56 = { 69 7b 69 74 67 77  } 
	$xorQLASD57 = { 68 75 66 78 6a 7d  } 
	$revQLASD57 = { 68 74 68 77 66 70  } 
	$xorQLASD58 = { 6b 76 65 7b 69 7e  } 
	$revQLASD58 = { 6b 75 67 76 65 71  } 
	$xorQLASD59 = { 6a 77 64 7a 68 7f  } 
	$revQLASD59 = { 6a 76 66 79 64 72  } 
	$xorQLASD60 = { 6d 70 63 7d 6f 78  } 
	$revQLASD60 = { 6d 77 65 78 6b 73  } 
	$xorQLASD61 = { 6c 71 62 7c 6e 79  } 
	$revQLASD61 = { 6c 70 64 7b 6a 7c  } 
	$xorQLASD62 = { 6f 72 61 7f 6d 7a  } 
	$revQLASD62 = { 6f 71 63 7a 69 7d  } 
	$xorQLASD63 = { 6e 73 60 7e 6c 7b  } 
	$revQLASD63 = { 6e 72 62 7d 68 7e  } 
	$xorQLASD64 = { 11 0c 1f 01 13 04  } 
	$revQLASD64 = { 11 73 61 7c 6f 7f  } 
	$xorQLASD65 = { 10 0d 1e 00 12 05  } 
	$revQLASD65 = { 10 0c 60 7f 6e 78  } 
	$xorQLASD66 = { 13 0e 1d 03 11 06  } 
	$revQLASD66 = { 13 0d 1f 7e 6d 79  } 
	$xorQLASD67 = { 12 0f 1c 02 10 07  } 
	$revQLASD67 = { 12 0e 1e 01 6c 7a  } 
	$xorQLASD68 = { 15 08 1b 05 17 00  } 
	$revQLASD68 = { 15 0f 1d 00 13 7b  } 
	$xorQLASD69 = { 14 09 1a 04 16 01  } 
	$revQLASD69 = { 14 08 1c 03 12 04  } 
	$xorQLASD70 = { 17 0a 19 07 15 02  } 
	$revQLASD70 = { 17 09 1b 02 11 05  } 
	$xorQLASD71 = { 16 0b 18 06 14 03  } 
	$revQLASD71 = { 16 0a 1a 05 10 06  } 
	$xorQLASD72 = { 19 04 17 09 1b 0c  } 
	$revQLASD72 = { 19 0b 19 04 17 07  } 
	$xorQLASD73 = { 18 05 16 08 1a 0d  } 
	$revQLASD73 = { 18 04 18 07 16 00  } 
	$xorQLASD74 = { 1b 06 15 0b 19 0e  } 
	$revQLASD74 = { 1b 05 17 06 15 01  } 
	$xorQLASD75 = { 1a 07 14 0a 18 0f  } 
	$revQLASD75 = { 1a 06 16 09 14 02  } 
	$xorQLASD76 = { 1d 00 13 0d 1f 08  } 
	$revQLASD76 = { 1d 07 15 08 1b 03  } 
	$xorQLASD77 = { 1c 01 12 0c 1e 09  } 
	$revQLASD77 = { 1c 00 14 0b 1a 0c  } 
	$xorQLASD78 = { 1f 02 11 0f 1d 0a  } 
	$revQLASD78 = { 1f 01 13 0a 19 0d  } 
	$xorQLASD79 = { 1e 03 10 0e 1c 0b  } 
	$revQLASD79 = { 1e 02 12 0d 18 0e  } 
	$xorQLASD80 = { 01 1c 0f 11 03 14  } 
	$revQLASD80 = { 01 03 11 0c 1f 0f  } 
	$xorQLASD81 = { 00 1d 0e 10 02 15  } 
	$revQLASD81 = { 00 1c 10 0f 1e 08  } 
	$xorQLASD82 = { 03 1e 0d 13 01 16  } 
	$revQLASD82 = { 03 1d 0f 0e 1d 09  } 
	$xorQLASD83 = { 02 1f 0c 12 00 17  } 
	$revQLASD83 = { 02 1e 0e 11 1c 0a  } 
	$xorQLASD84 = { 05 18 0b 15 07 10  } 
	$revQLASD84 = { 05 1f 0d 10 03 0b  } 
	$xorQLASD85 = { 04 19 0a 14 06 11  } 
	$revQLASD85 = { 04 18 0c 13 02 14  } 
	$xorQLASD86 = { 07 1a 09 17 05 12  } 
	$revQLASD86 = { 07 19 0b 12 01 15  } 
	$xorQLASD87 = { 06 1b 08 16 04 13  } 
	$revQLASD87 = { 06 1a 0a 15 00 16  } 
	$xorQLASD88 = { 09 14 07 19 0b 1c  } 
	$revQLASD88 = { 09 1b 09 14 07 17  } 
	$xorQLASD89 = { 08 15 06 18 0a 1d  } 
	$revQLASD89 = { 08 14 08 17 06 10  } 
	$xorQLASD90 = { 0b 16 05 1b 09 1e  } 
	$revQLASD90 = { 0b 15 07 16 05 11  } 
	$xorQLASD91 = { 0a 17 04 1a 08 1f  } 
	$revQLASD91 = { 0a 16 06 19 04 12  } 
	$xorQLASD92 = { 0d 10 03 1d 0f 18  } 
	$revQLASD92 = { 0d 17 05 18 0b 13  } 
	$xorQLASD93 = { 0c 11 02 1c 0e 19  } 
	$revQLASD93 = { 0c 10 04 1b 0a 1c  } 
	$xorQLASD94 = { 0f 12 01 1f 0d 1a  } 
	$revQLASD94 = { 0f 11 03 1a 09 1d  } 
	$xorQLASD95 = { 0e 13 00 1e 0c 1b  } 
	$revQLASD95 = { 0e 12 02 1d 08 1e  } 
	$xorQLASD96 = { 31 2c 3f 21 33 24  } 
	$revQLASD96 = { 31 13 01 1c 0f 1f  } 
	$xorQLASD97 = { 30 2d 3e 20 32 25  } 
	$revQLASD97 = { 30 2c 00 1f 0e 18  } 
	$xorQLASD98 = { 33 2e 3d 23 31 26  } 
	$revQLASD98 = { 33 2d 3f 1e 0d 19  } 
	$xorQLASD99 = { 32 2f 3c 22 30 27  } 
	$revQLASD99 = { 32 2e 3e 21 0c 1a  } 
	$xorQLASD100 = { 35 28 3b 25 37 20  } 
	$revQLASD100 = { 35 2f 3d 20 33 1b  } 
	$xorQLASD101 = { 34 29 3a 24 36 21  } 
	$revQLASD101 = { 34 28 3c 23 32 24  } 
	$xorQLASD102 = { 37 2a 39 27 35 22  } 
	$revQLASD102 = { 37 29 3b 22 31 25  } 
	$xorQLASD103 = { 36 2b 38 26 34 23  } 
	$revQLASD103 = { 36 2a 3a 25 30 26  } 
	$xorQLASD104 = { 39 24 37 29 3b 2c  } 
	$revQLASD104 = { 39 2b 39 24 37 27  } 
	$xorQLASD105 = { 38 25 36 28 3a 2d  } 
	$revQLASD105 = { 38 24 38 27 36 20  } 
	$xorQLASD106 = { 3b 26 35 2b 39 2e  } 
	$revQLASD106 = { 3b 25 37 26 35 21  } 
	$xorQLASD107 = { 3a 27 34 2a 38 2f  } 
	$revQLASD107 = { 3a 26 36 29 34 22  } 
	$xorQLASD108 = { 3d 20 33 2d 3f 28  } 
	$revQLASD108 = { 3d 27 35 28 3b 23  } 
	$xorQLASD109 = { 3c 21 32 2c 3e 29  } 
	$revQLASD109 = { 3c 20 34 2b 3a 2c  } 
	$xorQLASD110 = { 3f 22 31 2f 3d 2a  } 
	$revQLASD110 = { 3f 21 33 2a 39 2d  } 
	$xorQLASD111 = { 3e 23 30 2e 3c 2b  } 
	$revQLASD111 = { 3e 22 32 2d 38 2e  } 
	$xorQLASD112 = { 21 3c 2f 31 23 34  } 
	$revQLASD112 = { 21 23 31 2c 3f 2f  } 
	$xorQLASD113 = { 20 3d 2e 30 22 35  } 
	$revQLASD113 = { 20 3c 30 2f 3e 28  } 
	$xorQLASD114 = { 23 3e 2d 33 21 36  } 
	$revQLASD114 = { 23 3d 2f 2e 3d 29  } 
	$xorQLASD115 = { 22 3f 2c 32 20 37  } 
	$revQLASD115 = { 22 3e 2e 31 3c 2a  } 
	$xorQLASD116 = { 25 38 2b 35 27 30  } 
	$revQLASD116 = { 25 3f 2d 30 23 2b  } 
	$xorQLASD117 = { 24 39 2a 34 26 31  } 
	$revQLASD117 = { 24 38 2c 33 22 34  } 
	$xorQLASD118 = { 27 3a 29 37 25 32  } 
	$revQLASD118 = { 27 39 2b 32 21 35  } 
	$xorQLASD119 = { 26 3b 28 36 24 33  } 
	$revQLASD119 = { 26 3a 2a 35 20 36  } 
	$xorQLASD120 = { 29 34 27 39 2b 3c  } 
	$revQLASD120 = { 29 3b 29 34 27 37  } 
	$xorQLASD121 = { 28 35 26 38 2a 3d  } 
	$revQLASD121 = { 28 34 28 37 26 30  } 
	$xorQLASD122 = { 2b 36 25 3b 29 3e  } 
	$revQLASD122 = { 2b 35 27 36 25 31  } 
	$xorQLASD123 = { 2a 37 24 3a 28 3f  } 
	$revQLASD123 = { 2a 36 26 39 24 32  } 
	$xorQLASD124 = { 2d 30 23 3d 2f 38  } 
	$revQLASD124 = { 2d 37 25 38 2b 33  } 
	$xorQLASD125 = { 2c 31 22 3c 2e 39  } 
	$revQLASD125 = { 2c 30 24 3b 2a 3c  } 
	$xorQLASD126 = { 2f 32 21 3f 2d 3a  } 
	$revQLASD126 = { 2f 31 23 3a 29 3d  } 
	$xorQLASD127 = { 2e 33 20 3e 2c 3b  } 
	$revQLASD127 = { 2e 32 22 3d 28 3e  } 
	$xorQLASD128 = { d1 cc df c1 d3 c4  } 
	$revQLASD128 = { d1 33 21 3c 2f 3f  } 
	$xorQLASD129 = { d0 cd de c0 d2 c5  } 
	$revQLASD129 = { d0 cc 20 3f 2e 38  } 
	$xorQLASD130 = { d3 ce dd c3 d1 c6  } 
	$revQLASD130 = { d3 cd df 3e 2d 39  } 
	$xorQLASD131 = { d2 cf dc c2 d0 c7  } 
	$revQLASD131 = { d2 ce de c1 2c 3a  } 
	$xorQLASD132 = { d5 c8 db c5 d7 c0  } 
	$revQLASD132 = { d5 cf dd c0 d3 3b  } 
	$xorQLASD133 = { d4 c9 da c4 d6 c1  } 
	$revQLASD133 = { d4 c8 dc c3 d2 c4  } 
	$xorQLASD134 = { d7 ca d9 c7 d5 c2  } 
	$revQLASD134 = { d7 c9 db c2 d1 c5  } 
	$xorQLASD135 = { d6 cb d8 c6 d4 c3  } 
	$revQLASD135 = { d6 ca da c5 d0 c6  } 
	$xorQLASD136 = { d9 c4 d7 c9 db cc  } 
	$revQLASD136 = { d9 cb d9 c4 d7 c7  } 
	$xorQLASD137 = { d8 c5 d6 c8 da cd  } 
	$revQLASD137 = { d8 c4 d8 c7 d6 c0  } 
	$xorQLASD138 = { db c6 d5 cb d9 ce  } 
	$revQLASD138 = { db c5 d7 c6 d5 c1  } 
	$xorQLASD139 = { da c7 d4 ca d8 cf  } 
	$revQLASD139 = { da c6 d6 c9 d4 c2  } 
	$xorQLASD140 = { dd c0 d3 cd df c8  } 
	$revQLASD140 = { dd c7 d5 c8 db c3  } 
	$xorQLASD141 = { dc c1 d2 cc de c9  } 
	$revQLASD141 = { dc c0 d4 cb da cc  } 
	$xorQLASD142 = { df c2 d1 cf dd ca  } 
	$revQLASD142 = { df c1 d3 ca d9 cd  } 
	$xorQLASD143 = { de c3 d0 ce dc cb  } 
	$revQLASD143 = { de c2 d2 cd d8 ce  } 
	$xorQLASD144 = { c1 dc cf d1 c3 d4  } 
	$revQLASD144 = { c1 c3 d1 cc df cf  } 
	$xorQLASD145 = { c0 dd ce d0 c2 d5  } 
	$revQLASD145 = { c0 dc d0 cf de c8  } 
	$xorQLASD146 = { c3 de cd d3 c1 d6  } 
	$revQLASD146 = { c3 dd cf ce dd c9  } 
	$xorQLASD147 = { c2 df cc d2 c0 d7  } 
	$revQLASD147 = { c2 de ce d1 dc ca  } 
	$xorQLASD148 = { c5 d8 cb d5 c7 d0  } 
	$revQLASD148 = { c5 df cd d0 c3 cb  } 
	$xorQLASD149 = { c4 d9 ca d4 c6 d1  } 
	$revQLASD149 = { c4 d8 cc d3 c2 d4  } 
	$xorQLASD150 = { c7 da c9 d7 c5 d2  } 
	$revQLASD150 = { c7 d9 cb d2 c1 d5  } 
	$xorQLASD151 = { c6 db c8 d6 c4 d3  } 
	$revQLASD151 = { c6 da ca d5 c0 d6  } 
	$xorQLASD152 = { c9 d4 c7 d9 cb dc  } 
	$revQLASD152 = { c9 db c9 d4 c7 d7  } 
	$xorQLASD153 = { c8 d5 c6 d8 ca dd  } 
	$revQLASD153 = { c8 d4 c8 d7 c6 d0  } 
	$xorQLASD154 = { cb d6 c5 db c9 de  } 
	$revQLASD154 = { cb d5 c7 d6 c5 d1  } 
	$xorQLASD155 = { ca d7 c4 da c8 df  } 
	$revQLASD155 = { ca d6 c6 d9 c4 d2  } 
	$xorQLASD156 = { cd d0 c3 dd cf d8  } 
	$revQLASD156 = { cd d7 c5 d8 cb d3  } 
	$xorQLASD157 = { cc d1 c2 dc ce d9  } 
	$revQLASD157 = { cc d0 c4 db ca dc  } 
	$xorQLASD158 = { cf d2 c1 df cd da  } 
	$revQLASD158 = { cf d1 c3 da c9 dd  } 
	$xorQLASD159 = { ce d3 c0 de cc db  } 
	$revQLASD159 = { ce d2 c2 dd c8 de  } 
	$xorQLASD160 = { f1 ec ff e1 f3 e4  } 
	$revQLASD160 = { f1 d3 c1 dc cf df  } 
	$xorQLASD161 = { f0 ed fe e0 f2 e5  } 
	$revQLASD161 = { f0 ec c0 df ce d8  } 
	$xorQLASD162 = { f3 ee fd e3 f1 e6  } 
	$revQLASD162 = { f3 ed ff de cd d9  } 
	$xorQLASD163 = { f2 ef fc e2 f0 e7  } 
	$revQLASD163 = { f2 ee fe e1 cc da  } 
	$xorQLASD164 = { f5 e8 fb e5 f7 e0  } 
	$revQLASD164 = { f5 ef fd e0 f3 db  } 
	$xorQLASD165 = { f4 e9 fa e4 f6 e1  } 
	$revQLASD165 = { f4 e8 fc e3 f2 e4  } 
	$xorQLASD166 = { f7 ea f9 e7 f5 e2  } 
	$revQLASD166 = { f7 e9 fb e2 f1 e5  } 
	$xorQLASD167 = { f6 eb f8 e6 f4 e3  } 
	$revQLASD167 = { f6 ea fa e5 f0 e6  } 
	$xorQLASD168 = { f9 e4 f7 e9 fb ec  } 
	$revQLASD168 = { f9 eb f9 e4 f7 e7  } 
	$xorQLASD169 = { f8 e5 f6 e8 fa ed  } 
	$revQLASD169 = { f8 e4 f8 e7 f6 e0  } 
	$xorQLASD170 = { fb e6 f5 eb f9 ee  } 
	$revQLASD170 = { fb e5 f7 e6 f5 e1  } 
	$xorQLASD171 = { fa e7 f4 ea f8 ef  } 
	$revQLASD171 = { fa e6 f6 e9 f4 e2  } 
	$xorQLASD172 = { fd e0 f3 ed ff e8  } 
	$revQLASD172 = { fd e7 f5 e8 fb e3  } 
	$xorQLASD173 = { fc e1 f2 ec fe e9  } 
	$revQLASD173 = { fc e0 f4 eb fa ec  } 
	$xorQLASD174 = { ff e2 f1 ef fd ea  } 
	$revQLASD174 = { ff e1 f3 ea f9 ed  } 
	$xorQLASD175 = { fe e3 f0 ee fc eb  } 
	$revQLASD175 = { fe e2 f2 ed f8 ee  } 
	$xorQLASD176 = { e1 fc ef f1 e3 f4  } 
	$revQLASD176 = { e1 e3 f1 ec ff ef  } 
	$xorQLASD177 = { e0 fd ee f0 e2 f5  } 
	$revQLASD177 = { e0 fc f0 ef fe e8  } 
	$xorQLASD178 = { e3 fe ed f3 e1 f6  } 
	$revQLASD178 = { e3 fd ef ee fd e9  } 
	$xorQLASD179 = { e2 ff ec f2 e0 f7  } 
	$revQLASD179 = { e2 fe ee f1 fc ea  } 
	$xorQLASD180 = { e5 f8 eb f5 e7 f0  } 
	$revQLASD180 = { e5 ff ed f0 e3 eb  } 
	$xorQLASD181 = { e4 f9 ea f4 e6 f1  } 
	$revQLASD181 = { e4 f8 ec f3 e2 f4  } 
	$xorQLASD182 = { e7 fa e9 f7 e5 f2  } 
	$revQLASD182 = { e7 f9 eb f2 e1 f5  } 
	$xorQLASD183 = { e6 fb e8 f6 e4 f3  } 
	$revQLASD183 = { e6 fa ea f5 e0 f6  } 
	$xorQLASD184 = { e9 f4 e7 f9 eb fc  } 
	$revQLASD184 = { e9 fb e9 f4 e7 f7  } 
	$xorQLASD185 = { e8 f5 e6 f8 ea fd  } 
	$revQLASD185 = { e8 f4 e8 f7 e6 f0  } 
	$xorQLASD186 = { eb f6 e5 fb e9 fe  } 
	$revQLASD186 = { eb f5 e7 f6 e5 f1  } 
	$xorQLASD187 = { ea f7 e4 fa e8 ff  } 
	$revQLASD187 = { ea f6 e6 f9 e4 f2  } 
	$xorQLASD188 = { ed f0 e3 fd ef f8  } 
	$revQLASD188 = { ed f7 e5 f8 eb f3  } 
	$xorQLASD189 = { ec f1 e2 fc ee f9  } 
	$revQLASD189 = { ec f0 e4 fb ea fc  } 
	$xorQLASD190 = { ef f2 e1 ff ed fa  } 
	$revQLASD190 = { ef f1 e3 fa e9 fd  } 
	$xorQLASD191 = { ee f3 e0 fe ec fb  } 
	$revQLASD191 = { ee f2 e2 fd e8 fe  } 
	$xorQLASD192 = { 91 8c 9f 81 93 84  } 
	$revQLASD192 = { 91 f3 e1 fc ef ff  } 
	$xorQLASD193 = { 90 8d 9e 80 92 85  } 
	$revQLASD193 = { 90 8c e0 ff ee f8  } 
	$xorQLASD194 = { 93 8e 9d 83 91 86  } 
	$revQLASD194 = { 93 8d 9f fe ed f9  } 
	$xorQLASD195 = { 92 8f 9c 82 90 87  } 
	$revQLASD195 = { 92 8e 9e 81 ec fa  } 
	$xorQLASD196 = { 95 88 9b 85 97 80  } 
	$revQLASD196 = { 95 8f 9d 80 93 fb  } 
	$xorQLASD197 = { 94 89 9a 84 96 81  } 
	$revQLASD197 = { 94 88 9c 83 92 84  } 
	$xorQLASD198 = { 97 8a 99 87 95 82  } 
	$revQLASD198 = { 97 89 9b 82 91 85  } 
	$xorQLASD199 = { 96 8b 98 86 94 83  } 
	$revQLASD199 = { 96 8a 9a 85 90 86  } 
	$xorQLASD200 = { 99 84 97 89 9b 8c  } 
	$revQLASD200 = { 99 8b 99 84 97 87  } 
	$xorQLASD201 = { 98 85 96 88 9a 8d  } 
	$revQLASD201 = { 98 84 98 87 96 80  } 
	$xorQLASD202 = { 9b 86 95 8b 99 8e  } 
	$revQLASD202 = { 9b 85 97 86 95 81  } 
	$xorQLASD203 = { 9a 87 94 8a 98 8f  } 
	$revQLASD203 = { 9a 86 96 89 94 82  } 
	$xorQLASD204 = { 9d 80 93 8d 9f 88  } 
	$revQLASD204 = { 9d 87 95 88 9b 83  } 
	$xorQLASD205 = { 9c 81 92 8c 9e 89  } 
	$revQLASD205 = { 9c 80 94 8b 9a 8c  } 
	$xorQLASD206 = { 9f 82 91 8f 9d 8a  } 
	$revQLASD206 = { 9f 81 93 8a 99 8d  } 
	$xorQLASD207 = { 9e 83 90 8e 9c 8b  } 
	$revQLASD207 = { 9e 82 92 8d 98 8e  } 
	$xorQLASD208 = { 81 9c 8f 91 83 94  } 
	$revQLASD208 = { 81 83 91 8c 9f 8f  } 
	$xorQLASD209 = { 80 9d 8e 90 82 95  } 
	$revQLASD209 = { 80 9c 90 8f 9e 88  } 
	$xorQLASD210 = { 83 9e 8d 93 81 96  } 
	$revQLASD210 = { 83 9d 8f 8e 9d 89  } 
	$xorQLASD211 = { 82 9f 8c 92 80 97  } 
	$revQLASD211 = { 82 9e 8e 91 9c 8a  } 
	$xorQLASD212 = { 85 98 8b 95 87 90  } 
	$revQLASD212 = { 85 9f 8d 90 83 8b  } 
	$xorQLASD213 = { 84 99 8a 94 86 91  } 
	$revQLASD213 = { 84 98 8c 93 82 94  } 
	$xorQLASD214 = { 87 9a 89 97 85 92  } 
	$revQLASD214 = { 87 99 8b 92 81 95  } 
	$xorQLASD215 = { 86 9b 88 96 84 93  } 
	$revQLASD215 = { 86 9a 8a 95 80 96  } 
	$xorQLASD216 = { 89 94 87 99 8b 9c  } 
	$revQLASD216 = { 89 9b 89 94 87 97  } 
	$xorQLASD217 = { 88 95 86 98 8a 9d  } 
	$revQLASD217 = { 88 94 88 97 86 90  } 
	$xorQLASD218 = { 8b 96 85 9b 89 9e  } 
	$revQLASD218 = { 8b 95 87 96 85 91  } 
	$xorQLASD219 = { 8a 97 84 9a 88 9f  } 
	$revQLASD219 = { 8a 96 86 99 84 92  } 
	$xorQLASD220 = { 8d 90 83 9d 8f 98  } 
	$revQLASD220 = { 8d 97 85 98 8b 93  } 
	$xorQLASD221 = { 8c 91 82 9c 8e 99  } 
	$revQLASD221 = { 8c 90 84 9b 8a 9c  } 
	$xorQLASD222 = { 8f 92 81 9f 8d 9a  } 
	$revQLASD222 = { 8f 91 83 9a 89 9d  } 
	$xorQLASD223 = { 8e 93 80 9e 8c 9b  } 
	$revQLASD223 = { 8e 92 82 9d 88 9e  } 
	$xorQLASD224 = { b1 ac bf a1 b3 a4  } 
	$revQLASD224 = { b1 93 81 9c 8f 9f  } 
	$xorQLASD225 = { b0 ad be a0 b2 a5  } 
	$revQLASD225 = { b0 ac 80 9f 8e 98  } 
	$xorQLASD226 = { b3 ae bd a3 b1 a6  } 
	$revQLASD226 = { b3 ad bf 9e 8d 99  } 
	$xorQLASD227 = { b2 af bc a2 b0 a7  } 
	$revQLASD227 = { b2 ae be a1 8c 9a  } 
	$xorQLASD228 = { b5 a8 bb a5 b7 a0  } 
	$revQLASD228 = { b5 af bd a0 b3 9b  } 
	$xorQLASD229 = { b4 a9 ba a4 b6 a1  } 
	$revQLASD229 = { b4 a8 bc a3 b2 a4  } 
	$xorQLASD230 = { b7 aa b9 a7 b5 a2  } 
	$revQLASD230 = { b7 a9 bb a2 b1 a5  } 
	$xorQLASD231 = { b6 ab b8 a6 b4 a3  } 
	$revQLASD231 = { b6 aa ba a5 b0 a6  } 
	$xorQLASD232 = { b9 a4 b7 a9 bb ac  } 
	$revQLASD232 = { b9 ab b9 a4 b7 a7  } 
	$xorQLASD233 = { b8 a5 b6 a8 ba ad  } 
	$revQLASD233 = { b8 a4 b8 a7 b6 a0  } 
	$xorQLASD234 = { bb a6 b5 ab b9 ae  } 
	$revQLASD234 = { bb a5 b7 a6 b5 a1  } 
	$xorQLASD235 = { ba a7 b4 aa b8 af  } 
	$revQLASD235 = { ba a6 b6 a9 b4 a2  } 
	$xorQLASD236 = { bd a0 b3 ad bf a8  } 
	$revQLASD236 = { bd a7 b5 a8 bb a3  } 
	$xorQLASD237 = { bc a1 b2 ac be a9  } 
	$revQLASD237 = { bc a0 b4 ab ba ac  } 
	$xorQLASD238 = { bf a2 b1 af bd aa  } 
	$revQLASD238 = { bf a1 b3 aa b9 ad  } 
	$xorQLASD239 = { be a3 b0 ae bc ab  } 
	$revQLASD239 = { be a2 b2 ad b8 ae  } 
	$xorQLASD240 = { a1 bc af b1 a3 b4  } 
	$revQLASD240 = { a1 a3 b1 ac bf af  } 
	$xorQLASD241 = { a0 bd ae b0 a2 b5  } 
	$revQLASD241 = { a0 bc b0 af be a8  } 
	$xorQLASD242 = { a3 be ad b3 a1 b6  } 
	$revQLASD242 = { a3 bd af ae bd a9  } 
	$xorQLASD243 = { a2 bf ac b2 a0 b7  } 
	$revQLASD243 = { a2 be ae b1 bc aa  } 
	$xorQLASD244 = { a5 b8 ab b5 a7 b0  } 
	$revQLASD244 = { a5 bf ad b0 a3 ab  } 
	$xorQLASD245 = { a4 b9 aa b4 a6 b1  } 
	$revQLASD245 = { a4 b8 ac b3 a2 b4  } 
	$xorQLASD246 = { a7 ba a9 b7 a5 b2  } 
	$revQLASD246 = { a7 b9 ab b2 a1 b5  } 
	$xorQLASD247 = { a6 bb a8 b6 a4 b3  } 
	$revQLASD247 = { a6 ba aa b5 a0 b6  } 
	$xorQLASD248 = { a9 b4 a7 b9 ab bc  } 
	$revQLASD248 = { a9 bb a9 b4 a7 b7  } 
	$xorQLASD249 = { a8 b5 a6 b8 aa bd  } 
	$revQLASD249 = { a8 b4 a8 b7 a6 b0  } 
	$xorQLASD250 = { ab b6 a5 bb a9 be  } 
	$revQLASD250 = { ab b5 a7 b6 a5 b1  } 
	$xorQLASD251 = { aa b7 a4 ba a8 bf  } 
	$revQLASD251 = { aa b6 a6 b9 a4 b2  } 
	$xorQLASD252 = { ad b0 a3 bd af b8  } 
	$revQLASD252 = { ad b7 a5 b8 ab b3  } 
	$xorQLASD253 = { ac b1 a2 bc ae b9  } 
	$revQLASD253 = { ac b0 a4 bb aa bc  } 
	$xorQLASD254 = { af b2 a1 bf ad ba  } 
	$revQLASD254 = { af b1 a3 ba a9 bd  } 
	$dadcQLASD0 = { 8b90859d8998 } 
	$dadcQLASD1 = { 8d96839b8f9e } 
	$af3950caQLASD0 = { fe750f8bfc7d } 
	$af3950caQLASD1 = { 681c95ee6a14 } 
	$af3950caQLASD2 = { 0186f078038e } 
	$af3950caQLASD3 = { 9be3661199eb } 
	$effeefeeQLASD0 = { beb2b0afbcba } 
	$effeefeeQLASD1 = { afa3b1aeadab } 
	$effeefeeQLASD2 = { bea2b0bfbcaa } 
	$effeefeeQLASD3 = { bfa3a1aebdab } 
	$fefeefefQLASD0 = { afb2b0aeadba } 
	$fefeefefQLASD1 = { afa3b0bfadab } 
	$fefeefefQLASD2 = { bea3a1bfbcab } 
	$fefeefefQLASD3 = { beb2a1aebcba } 
	$bcbafcfaQLASD0 = { edf6a3bbeffe } 
	$bcbafcfaQLASD1 = { ebb0a5fde9b8 } 
	$bcbafcfaQLASD2 = { adb6e3fbafbe } 
	$bcbafcfaQLASD3 = { abf0e5bda9f8 } 
	$babcfafcQLASD0 = { ebf0a5bde9f8 } 
	$babcfafcQLASD1 = { edb6a3fbefbe } 
	$babcfafcQLASD2 = { abb0e5fda9b8 } 
	$babcfafcQLASD3 = { adf6e3bbaffe } 

condition:
any of them
}

/*
// author - matt
// sig type - Payload Detector
// badness - 9
// detects executables using 64bit key ff fd fc ab ff 23 d5
*/
rule xor_exe_fffdfcabff23d5
{
strings:
$a = { ff fd fc eb ff 23 95 eb ff fd fc eb ff 23 95 eb }
condition:
$a
}

/*
// author - matt
// sig type - Metadata
// badness - 6
// detects a new variant of the cve-2010-0188 libtiff using JS to create the TIFF based upon version ala d1a47090ba13e2b721c62636e7ffa7b3
*/
rule js_image_cve_2010_0188
{
strings:
$a = "0c8e1181-35ef-4541-9e28-28ca0b10472c"
$b = "2010-04-04T12:28:46+08:00"
$c = "6e8d0c67-6a98-4f37-b070-39744a8c1c4b"
$d = "2010-03-31T11:25:39+08:00"
condition:
any of them
}

/*
// author - xxxxx
// sig type - Metadata
// badness - 8
// Looking for gauxixidegauxixide string in files, sourced from RB international man of mystery.
*/
rule gauxixidegauxixide
{
strings:
$a = "gauxixidegauxixide"
condition:
$a
}

/*
// author - xxxxx
// sig type - Metadata
// badness - 1
// This signature will trigger if a xdp document is contained in a file
*/
rule pdf_xdp_document_present
{
strings:
$a = "<xdp:xdp" nocase
condition:
$a
}

/*
// author - xxxxx
// sig type - Metadata
// badness - 1
// Detects any xfa objects in a file
*/
rule pdf_XFA_object
{
strings:
$a = "/XFA" nocase
$b = "http://www.xfa.org" nocase

condition:
$a and $b
}

/*
// author - xxxxx
// sig type - Metadata
// badness - 1
// Looks for FDF files embedded in pdf docs
*/
rule PDF_FDF_object
{
strings:
$a= "%FDF-" nocase
condition:
$a
}

/*
// author - xxxxx
// sig type - Metadata
// badness - 3
// looks for a +8 gmt offset modify date
*/
rule pdf_800_xmp_mod
{
strings:
$a = "+08:00</xmp:ModifyDate>" nocase
condition:
$a
}

/*
// author - xxxxx
// sig type - Metadata
// badness - 3
// Looks for a +8 gmt offset in xmp create date
*/
rule pdf_800_xmp_create
{
strings:
$a = "+08:00</xmp:CreateDate>"
condition:
$a
}

/*
// author - xxxxx
// sig type - Metadata
// badness - 3
// speaks for its self
*/
rule pdf_800_xmp_metadatadate
{
strings:
$a = "+08:00</xmp:MetadataDate>"
condition:
$a
}

/*
// author - matt
// sig type - Payload Detector
// badness - 7
// payload encoded with 0x99887766
*/
rule xor_99887766
{
strings:
$a = { 66 77 88 99 66 77 88 99 }
condition:
$a
}

/*
// author - matt
// sig type - Bad Stuff
// badness - 8
// win32 functions in win hlp
*/
rule hlp_win32_calls
{
strings:
$a = "RR(`KERNEL32.DLL',`VirtualAlloc',`UUUU')"
$b = "RR(`msvcrt.dll',`strncpy',`USU')"
$c = "RR(`KERNEL32.DLL',`CreateThread',`UUUUUS')"
$d = "VirtualAlloc(0x0DC20000, 0x1000, 0x3000, 0x40)"
$e = "CreateThread(0,0,0x0DC20000,0,0,`nnnn')"

condition:
any of them
}

/*
// author - matt
// sig type - Shellcode
// badness - 7
// shellcode used to in the win32 hlp loader
*/
rule shellcode_win32_hlp_loader
{
strings:
$a = { 33 c9 41 41 e2 1b 66 b9 } 
condition:
$a
}

/*
// author - matt
// sig type - Shellcode
// badness - 7
// 0000010E - lodsb                                ac
0000010F - sub al,0x61                          2c61
00000111 - mov dl,al                            8ad0
00000113 - lodsb                                ac
00000114 - sub al,0x61                          2c61
00000116 - shl al,0x4                           c0e004
00000119 - add al,dl                            02c2
0000011B - stosb                                aa
0000011C - loop 0xfffffff2                      e2f0

*/
rule shellcode_ascii_decoder
{
strings:
$a = { ac 2c ?? 8a d0 ac 2c ?? c0 e0 04 02 c2 aa e2 }
condition:
$a 
}

/*
// author - matt
// sig type - Shellcode
// badness - 4
// ascii stage 2 payload 
*/
rule shellcode_ascii_stage2
{
strings:
$a = "iofaaaaaaaddamcmabaa"
condition:
$a
}

/*
// author - matt
// sig type - Bad Stuff
// badness - 5
// shows up a lot in those bad xls files
*/
rule xls_chmain
{
strings:
$a = "XLMAIN11.CHM"
condition:
#a > 10
}

/*
// author - matt
// sig type - Embedded Trojan
// badness - 8
// detect command strings "+Windows+NT+5.01"
*/
rule xor_comment
{
strings:
	$xorcomment_string1 = { 2a 56 68 6f 65 6e 76 72 2a 4f 55 2a 34 2f 31 30  } 
	$revcomment_string1 = { 2a 57 96 90 99 93 8c 89 d2 b6 a3 dd c0 da c3 c3  } 
	$xorcomment_string2 = { 29 55 6b 6c 66 6d 75 71 29 4c 56 29 37 2c 32 33  } 
	$revcomment_string2 = { 29 56 69 91 9a 92 8b 88 d1 b7 ac dc c3 db c4 c2  } 
	$xorcomment_string3 = { 28 54 6a 6d 67 6c 74 70 28 4d 57 28 36 2d 33 32  } 
	$revcomment_string3 = { 28 55 68 6e 9b 91 8a 8f d0 b4 ad d3 c2 d8 c5 c5  } 
	$xorcomment_string4 = { 2f 53 6d 6a 60 6b 73 77 2f 4a 50 2f 31 2a 34 35  } 
	$revcomment_string4 = { 2f 54 6b 6f 64 90 89 8e d7 b5 ae d2 cd d9 c6 c4  } 
	$xorcomment_string5 = { 2e 52 6c 6b 61 6a 72 76 2e 4b 51 2e 30 2b 35 34  } 
	$revcomment_string5 = { 2e 53 6a 6c 65 6f 88 8d d6 b2 af d1 cc d6 c7 c7  } 
	$xorcomment_string6 = { 2d 51 6f 68 62 69 71 75 2d 48 52 2d 33 28 36 37  } 
	$revcomment_string6 = { 2d 52 6d 6d 66 6e 77 8c d5 b3 a8 d0 cf d7 c8 c6  } 
	$xorcomment_string7 = { 2c 50 6e 69 63 68 70 74 2c 49 53 2c 32 29 37 36  } 
	$revcomment_string7 = { 2c 51 6c 6a 67 6d 76 73 d4 b0 a9 d7 ce d4 c9 c9  } 
	$xorcomment_string8 = { 23 5f 61 66 6c 67 7f 7b 23 46 5c 23 3d 26 38 39  } 
	$revcomment_string8 = { 23 50 6f 6b 60 6c 75 72 2b b1 aa d6 c9 d5 ca c8  } 
	$xorcomment_string9 = { 22 5e 60 67 6d 66 7e 7a 22 47 5d 22 3c 27 39 38  } 
	$revcomment_string9 = { 22 5f 6e 68 61 6b 74 71 2a 4e ab d5 c8 d2 cb cb  } 
	$xorcomment_string10 = { 21 5d 63 64 6e 65 7d 79 21 44 5e 21 3f 24 3a 3b  } 
	$revcomment_string10 = { 21 5e 61 69 62 6a 73 70 29 4f 54 d4 cb d3 cc ca  } 
	$xorcomment_string11 = { 20 5c 62 65 6f 64 7c 78 20 45 5f 20 3e 25 3b 3a  } 
	$revcomment_string11 = { 20 5d 60 66 63 69 72 77 28 4c 55 2b ca d0 cd cd  } 
	$xorcomment_string12 = { 27 5b 65 62 68 63 7b 7f 27 42 58 27 39 22 3c 3d  } 
	$revcomment_string12 = { 27 5c 63 67 6c 68 71 76 2f 4d 56 2a 35 d1 ce cc  } 
	$xorcomment_string13 = { 26 5a 64 63 69 62 7a 7e 26 43 59 26 38 23 3d 3c  } 
	$revcomment_string13 = { 26 5b 62 64 6d 67 70 75 2e 4a 57 29 34 2e cf cf  } 
	$xorcomment_string14 = { 25 59 67 60 6a 61 79 7d 25 40 5a 25 3b 20 3e 3f  } 
	$revcomment_string14 = { 25 5a 65 65 6e 66 7f 74 2d 4b 50 28 37 2f 30 ce  } 
	$xorcomment_string15 = { 24 58 66 61 6b 60 78 7c 24 41 5b 24 3a 21 3f 3e  } 
	$revcomment_string15 = { 24 59 64 62 6f 65 7e 7b 2c 48 51 2f 36 2c 31 31  } 
	$xorcomment_string16 = { 3b 47 79 7e 74 7f 67 63 3b 5e 44 3b 25 3e 20 21  } 
	$revcomment_string16 = { 3b 58 67 63 68 64 7d 7a 23 49 52 2e 31 2d 32 30  } 
	$xorcomment_string17 = { 3a 46 78 7f 75 7e 66 62 3a 5f 45 3a 24 3f 21 20  } 
	$revcomment_string17 = { 3a 47 66 60 69 63 7c 79 22 46 53 2d 30 2a 33 33  } 
	$xorcomment_string18 = { 39 45 7b 7c 76 7d 65 61 39 5c 46 39 27 3c 22 23  } 
	$revcomment_string18 = { 39 46 79 61 6a 62 7b 78 21 47 5c 2c 33 2b 34 32  } 
	$xorcomment_string19 = { 38 44 7a 7d 77 7c 64 60 38 5d 47 38 26 3d 23 22  } 
	$revcomment_string19 = { 38 45 78 7e 6b 61 7a 7f 20 44 5d 23 32 28 35 35  } 
	$xorcomment_string20 = { 3f 43 7d 7a 70 7b 63 67 3f 5a 40 3f 21 3a 24 25  } 
	$revcomment_string20 = { 3f 44 7b 7f 74 60 79 7e 27 45 5e 22 3d 29 36 34  } 
	$xorcomment_string21 = { 3e 42 7c 7b 71 7a 62 66 3e 5b 41 3e 20 3b 25 24  } 
	$revcomment_string21 = { 3e 43 7a 7c 75 7f 78 7d 26 42 5f 21 3c 26 37 37  } 
	$xorcomment_string22 = { 3d 41 7f 78 72 79 61 65 3d 58 42 3d 23 38 26 27  } 
	$revcomment_string22 = { 3d 42 7d 7d 76 7e 67 7c 25 43 58 20 3f 27 38 36  } 
	$xorcomment_string23 = { 3c 40 7e 79 73 78 60 64 3c 59 43 3c 22 39 27 26  } 
	$revcomment_string23 = { 3c 41 7c 7a 77 7d 66 63 24 40 59 27 3e 24 39 39  } 
	$xorcomment_string24 = { 33 4f 71 76 7c 77 6f 6b 33 56 4c 33 2d 36 28 29  } 
	$revcomment_string24 = { 33 40 7f 7b 70 7c 65 62 3b 41 5a 26 39 25 3a 38  } 
	$xorcomment_string25 = { 32 4e 70 77 7d 76 6e 6a 32 57 4d 32 2c 37 29 28  } 
	$revcomment_string25 = { 32 4f 7e 78 71 7b 64 61 3a 5e 5b 25 38 22 3b 3b  } 
	$xorcomment_string26 = { 31 4d 73 74 7e 75 6d 69 31 54 4e 31 2f 34 2a 2b  } 
	$revcomment_string26 = { 31 4e 71 79 72 7a 63 60 39 5f 44 24 3b 23 3c 3a  } 
	$xorcomment_string27 = { 30 4c 72 75 7f 74 6c 68 30 55 4f 30 2e 35 2b 2a  } 
	$revcomment_string27 = { 30 4d 70 76 73 79 62 67 38 5c 45 3b 3a 20 3d 3d  } 
	$xorcomment_string28 = { 37 4b 75 72 78 73 6b 6f 37 52 48 37 29 32 2c 2d  } 
	$revcomment_string28 = { 37 4c 73 77 7c 78 61 66 3f 5d 46 3a 25 21 3e 3c  } 
	$xorcomment_string29 = { 36 4a 74 73 79 72 6a 6e 36 53 49 36 28 33 2d 2c  } 
	$revcomment_string29 = { 36 4b 72 74 7d 77 60 65 3e 5a 47 39 24 3e 3f 3f  } 
	$xorcomment_string30 = { 35 49 77 70 7a 71 69 6d 35 50 4a 35 2b 30 2e 2f  } 
	$revcomment_string30 = { 35 4a 75 75 7e 76 6f 64 3d 5b 40 38 27 3f 20 3e  } 
	$xorcomment_string31 = { 34 48 76 71 7b 70 68 6c 34 51 4b 34 2a 31 2f 2e  } 
	$revcomment_string31 = { 34 49 74 72 7f 75 6e 6b 3c 58 41 3f 26 3c 21 21  } 
	$xorcomment_string32 = { 0b 77 49 4e 44 4f 57 53 0b 6e 74 0b 15 0e 10 11  } 
	$revcomment_string32 = { 0b 48 77 73 78 74 6d 6a 33 59 42 3e 21 3d 22 20  } 
	$xorcomment_string33 = { 0a 76 48 4f 45 4e 56 52 0a 6f 75 0a 14 0f 11 10  } 
	$revcomment_string33 = { 0a 77 76 70 79 73 6c 69 32 56 43 3d 20 3a 23 23  } 
	$xorcomment_string34 = { 09 75 4b 4c 46 4d 55 51 09 6c 76 09 17 0c 12 13  } 
	$revcomment_string34 = { 09 76 49 71 7a 72 6b 68 31 57 4c 3c 23 3b 24 22  } 
	$xorcomment_string35 = { 08 74 4a 4d 47 4c 54 50 08 6d 77 08 16 0d 13 12  } 
	$revcomment_string35 = { 08 75 48 4e 7b 71 6a 6f 30 54 4d 33 22 38 25 25  } 
	$xorcomment_string36 = { 0f 73 4d 4a 40 4b 53 57 0f 6a 70 0f 11 0a 14 15  } 
	$revcomment_string36 = { 0f 74 4b 4f 44 70 69 6e 37 55 4e 32 2d 39 26 24  } 
	$xorcomment_string37 = { 0e 72 4c 4b 41 4a 52 56 0e 6b 71 0e 10 0b 15 14  } 
	$revcomment_string37 = { 0e 73 4a 4c 45 4f 68 6d 36 52 4f 31 2c 36 27 27  } 
	$xorcomment_string38 = { 0d 71 4f 48 42 49 51 55 0d 68 72 0d 13 08 16 17  } 
	$revcomment_string38 = { 0d 72 4d 4d 46 4e 57 6c 35 53 48 30 2f 37 28 26  } 
	$xorcomment_string39 = { 0c 70 4e 49 43 48 50 54 0c 69 73 0c 12 09 17 16  } 
	$revcomment_string39 = { 0c 71 4c 4a 47 4d 56 53 34 50 49 37 2e 34 29 29  } 
	$xorcomment_string40 = { 03 7f 41 46 4c 47 5f 5b 03 66 7c 03 1d 06 18 19  } 
	$revcomment_string40 = { 03 70 4f 4b 40 4c 55 52 0b 51 4a 36 29 35 2a 28  } 
	$xorcomment_string41 = { 02 7e 40 47 4d 46 5e 5a 02 67 7d 02 1c 07 19 18  } 
	$revcomment_string41 = { 02 7f 4e 48 41 4b 54 51 0a 6e 4b 35 28 32 2b 2b  } 
	$xorcomment_string42 = { 01 7d 43 44 4e 45 5d 59 01 64 7e 01 1f 04 1a 1b  } 
	$revcomment_string42 = { 01 7e 41 49 42 4a 53 50 09 6f 74 34 2b 33 2c 2a  } 
	$xorcomment_string43 = { 00 7c 42 45 4f 44 5c 58 00 65 7f 00 1e 05 1b 1a  } 
	$revcomment_string43 = { 00 7d 40 46 43 49 52 57 08 6c 75 0b 2a 30 2d 2d  } 
	$xorcomment_string44 = { 07 7b 45 42 48 43 5b 5f 07 62 78 07 19 02 1c 1d  } 
	$revcomment_string44 = { 07 7c 43 47 4c 48 51 56 0f 6d 76 0a 15 31 2e 2c  } 
	$xorcomment_string45 = { 06 7a 44 43 49 42 5a 5e 06 63 79 06 18 03 1d 1c  } 
	$revcomment_string45 = { 06 7b 42 44 4d 47 50 55 0e 6a 77 09 14 0e 2f 2f  } 
	$xorcomment_string46 = { 05 79 47 40 4a 41 59 5d 05 60 7a 05 1b 00 1e 1f  } 
	$revcomment_string46 = { 05 7a 45 45 4e 46 5f 54 0d 6b 70 08 17 0f 10 2e  } 
	$xorcomment_string47 = { 04 78 46 41 4b 40 58 5c 04 61 7b 04 1a 01 1f 1e  } 
	$revcomment_string47 = { 04 79 44 42 4f 45 5e 5b 0c 68 71 0f 16 0c 11 11  } 
	$xorcomment_string48 = { 1b 67 59 5e 54 5f 47 43 1b 7e 64 1b 05 1e 00 01  } 
	$revcomment_string48 = { 1b 78 47 43 48 44 5d 5a 03 69 72 0e 11 0d 12 10  } 
	$xorcomment_string49 = { 1a 66 58 5f 55 5e 46 42 1a 7f 65 1a 04 1f 01 00  } 
	$revcomment_string49 = { 1a 67 46 40 49 43 5c 59 02 66 73 0d 10 0a 13 13  } 
	$xorcomment_string50 = { 19 65 5b 5c 56 5d 45 41 19 7c 66 19 07 1c 02 03  } 
	$revcomment_string50 = { 19 66 59 41 4a 42 5b 58 01 67 7c 0c 13 0b 14 12  } 
	$xorcomment_string51 = { 18 64 5a 5d 57 5c 44 40 18 7d 67 18 06 1d 03 02  } 
	$revcomment_string51 = { 18 65 58 5e 4b 41 5a 5f 00 64 7d 03 12 08 15 15  } 
	$xorcomment_string52 = { 1f 63 5d 5a 50 5b 43 47 1f 7a 60 1f 01 1a 04 05  } 
	$revcomment_string52 = { 1f 64 5b 5f 54 40 59 5e 07 65 7e 02 1d 09 16 14  } 
	$xorcomment_string53 = { 1e 62 5c 5b 51 5a 42 46 1e 7b 61 1e 00 1b 05 04  } 
	$revcomment_string53 = { 1e 63 5a 5c 55 5f 58 5d 06 62 7f 01 1c 06 17 17  } 
	$xorcomment_string54 = { 1d 61 5f 58 52 59 41 45 1d 78 62 1d 03 18 06 07  } 
	$revcomment_string54 = { 1d 62 5d 5d 56 5e 47 5c 05 63 78 00 1f 07 18 16  } 
	$xorcomment_string55 = { 1c 60 5e 59 53 58 40 44 1c 79 63 1c 02 19 07 06  } 
	$revcomment_string55 = { 1c 61 5c 5a 57 5d 46 43 04 60 79 07 1e 04 19 19  } 
	$xorcomment_string56 = { 13 6f 51 56 5c 57 4f 4b 13 76 6c 13 0d 16 08 09  } 
	$revcomment_string56 = { 13 60 5f 5b 50 5c 45 42 1b 61 7a 06 19 05 1a 18  } 
	$xorcomment_string57 = { 12 6e 50 57 5d 56 4e 4a 12 77 6d 12 0c 17 09 08  } 
	$revcomment_string57 = { 12 6f 5e 58 51 5b 44 41 1a 7e 7b 05 18 02 1b 1b  } 
	$xorcomment_string58 = { 11 6d 53 54 5e 55 4d 49 11 74 6e 11 0f 14 0a 0b  } 
	$revcomment_string58 = { 11 6e 51 59 52 5a 43 40 19 7f 64 04 1b 03 1c 1a  } 
	$xorcomment_string59 = { 10 6c 52 55 5f 54 4c 48 10 75 6f 10 0e 15 0b 0a  } 
	$revcomment_string59 = { 10 6d 50 56 53 59 42 47 18 7c 65 1b 1a 00 1d 1d  } 
	$xorcomment_string60 = { 17 6b 55 52 58 53 4b 4f 17 72 68 17 09 12 0c 0d  } 
	$revcomment_string60 = { 17 6c 53 57 5c 58 41 46 1f 7d 66 1a 05 01 1e 1c  } 
	$xorcomment_string61 = { 16 6a 54 53 59 52 4a 4e 16 73 69 16 08 13 0d 0c  } 
	$revcomment_string61 = { 16 6b 52 54 5d 57 40 45 1e 7a 67 19 04 1e 1f 1f  } 
	$xorcomment_string62 = { 15 69 57 50 5a 51 49 4d 15 70 6a 15 0b 10 0e 0f  } 
	$revcomment_string62 = { 15 6a 55 55 5e 56 4f 44 1d 7b 60 18 07 1f 00 1e  } 
	$xorcomment_string63 = { 14 68 56 51 5b 50 48 4c 14 71 6b 14 0a 11 0f 0e  } 
	$revcomment_string63 = { 14 69 54 52 5f 55 4e 4b 1c 78 61 1f 06 1c 01 01  } 
	$xorcomment_string64 = { 6b 17 29 2e 24 2f 37 33 6b 0e 14 6b 75 6e 70 71  } 
	$revcomment_string64 = { 6b 68 57 53 58 54 4d 4a 13 79 62 1e 01 1d 02 00  } 
	$xorcomment_string65 = { 6a 16 28 2f 25 2e 36 32 6a 0f 15 6a 74 6f 71 70  } 
	$revcomment_string65 = { 6a 17 56 50 59 53 4c 49 12 76 63 1d 00 1a 03 03  } 
	$xorcomment_string66 = { 69 15 2b 2c 26 2d 35 31 69 0c 16 69 77 6c 72 73  } 
	$revcomment_string66 = { 69 16 29 51 5a 52 4b 48 11 77 6c 1c 03 1b 04 02  } 
	$xorcomment_string67 = { 68 14 2a 2d 27 2c 34 30 68 0d 17 68 76 6d 73 72  } 
	$revcomment_string67 = { 68 15 28 2e 5b 51 4a 4f 10 74 6d 13 02 18 05 05  } 
	$xorcomment_string68 = { 6f 13 2d 2a 20 2b 33 37 6f 0a 10 6f 71 6a 74 75  } 
	$revcomment_string68 = { 6f 14 2b 2f 24 50 49 4e 17 75 6e 12 0d 19 06 04  } 
	$xorcomment_string69 = { 6e 12 2c 2b 21 2a 32 36 6e 0b 11 6e 70 6b 75 74  } 
	$revcomment_string69 = { 6e 13 2a 2c 25 2f 48 4d 16 72 6f 11 0c 16 07 07  } 
	$xorcomment_string70 = { 6d 11 2f 28 22 29 31 35 6d 08 12 6d 73 68 76 77  } 
	$revcomment_string70 = { 6d 12 2d 2d 26 2e 37 4c 15 73 68 10 0f 17 08 06  } 
	$xorcomment_string71 = { 6c 10 2e 29 23 28 30 34 6c 09 13 6c 72 69 77 76  } 
	$revcomment_string71 = { 6c 11 2c 2a 27 2d 36 33 14 70 69 17 0e 14 09 09  } 
	$xorcomment_string72 = { 63 1f 21 26 2c 27 3f 3b 63 06 1c 63 7d 66 78 79  } 
	$revcomment_string72 = { 63 10 2f 2b 20 2c 35 32 6b 71 6a 16 09 15 0a 08  } 
	$xorcomment_string73 = { 62 1e 20 27 2d 26 3e 3a 62 07 1d 62 7c 67 79 78  } 
	$revcomment_string73 = { 62 1f 2e 28 21 2b 34 31 6a 0e 6b 15 08 12 0b 0b  } 
	$xorcomment_string74 = { 61 1d 23 24 2e 25 3d 39 61 04 1e 61 7f 64 7a 7b  } 
	$revcomment_string74 = { 61 1e 21 29 22 2a 33 30 69 0f 14 14 0b 13 0c 0a  } 
	$xorcomment_string75 = { 60 1c 22 25 2f 24 3c 38 60 05 1f 60 7e 65 7b 7a  } 
	$revcomment_string75 = { 60 1d 20 26 23 29 32 37 68 0c 15 6b 0a 10 0d 0d  } 
	$xorcomment_string76 = { 67 1b 25 22 28 23 3b 3f 67 02 18 67 79 62 7c 7d  } 
	$revcomment_string76 = { 67 1c 23 27 2c 28 31 36 6f 0d 16 6a 75 11 0e 0c  } 
	$xorcomment_string77 = { 66 1a 24 23 29 22 3a 3e 66 03 19 66 78 63 7d 7c  } 
	$revcomment_string77 = { 66 1b 22 24 2d 27 30 35 6e 0a 17 69 74 6e 0f 0f  } 
	$xorcomment_string78 = { 65 19 27 20 2a 21 39 3d 65 00 1a 65 7b 60 7e 7f  } 
	$revcomment_string78 = { 65 1a 25 25 2e 26 3f 34 6d 0b 10 68 77 6f 70 0e  } 
	$xorcomment_string79 = { 64 18 26 21 2b 20 38 3c 64 01 1b 64 7a 61 7f 7e  } 
	$revcomment_string79 = { 64 19 24 22 2f 25 3e 3b 6c 08 11 6f 76 6c 71 71  } 
	$xorcomment_string80 = { 7b 07 39 3e 34 3f 27 23 7b 1e 04 7b 65 7e 60 61  } 
	$revcomment_string80 = { 7b 18 27 23 28 24 3d 3a 63 09 12 6e 71 6d 72 70  } 
	$xorcomment_string81 = { 7a 06 38 3f 35 3e 26 22 7a 1f 05 7a 64 7f 61 60  } 
	$revcomment_string81 = { 7a 07 26 20 29 23 3c 39 62 06 13 6d 70 6a 73 73  } 
	$xorcomment_string82 = { 79 05 3b 3c 36 3d 25 21 79 1c 06 79 67 7c 62 63  } 
	$revcomment_string82 = { 79 06 39 21 2a 22 3b 38 61 07 1c 6c 73 6b 74 72  } 
	$xorcomment_string83 = { 78 04 3a 3d 37 3c 24 20 78 1d 07 78 66 7d 63 62  } 
	$revcomment_string83 = { 78 05 38 3e 2b 21 3a 3f 60 04 1d 63 72 68 75 75  } 
	$xorcomment_string84 = { 7f 03 3d 3a 30 3b 23 27 7f 1a 00 7f 61 7a 64 65  } 
	$revcomment_string84 = { 7f 04 3b 3f 34 20 39 3e 67 05 1e 62 7d 69 76 74  } 
	$xorcomment_string85 = { 7e 02 3c 3b 31 3a 22 26 7e 1b 01 7e 60 7b 65 64  } 
	$revcomment_string85 = { 7e 03 3a 3c 35 3f 38 3d 66 02 1f 61 7c 66 77 77  } 
	$xorcomment_string86 = { 7d 01 3f 38 32 39 21 25 7d 18 02 7d 63 78 66 67  } 
	$revcomment_string86 = { 7d 02 3d 3d 36 3e 27 3c 65 03 18 60 7f 67 78 76  } 
	$xorcomment_string87 = { 7c 00 3e 39 33 38 20 24 7c 19 03 7c 62 79 67 66  } 
	$revcomment_string87 = { 7c 01 3c 3a 37 3d 26 23 64 00 19 67 7e 64 79 79  } 
	$xorcomment_string88 = { 73 0f 31 36 3c 37 2f 2b 73 16 0c 73 6d 76 68 69  } 
	$revcomment_string88 = { 73 00 3f 3b 30 3c 25 22 7b 01 1a 66 79 65 7a 78  } 
	$xorcomment_string89 = { 72 0e 30 37 3d 36 2e 2a 72 17 0d 72 6c 77 69 68  } 
	$revcomment_string89 = { 72 0f 3e 38 31 3b 24 21 7a 1e 1b 65 78 62 7b 7b  } 
	$xorcomment_string90 = { 71 0d 33 34 3e 35 2d 29 71 14 0e 71 6f 74 6a 6b  } 
	$revcomment_string90 = { 71 0e 31 39 32 3a 23 20 79 1f 04 64 7b 63 7c 7a  } 
	$xorcomment_string91 = { 70 0c 32 35 3f 34 2c 28 70 15 0f 70 6e 75 6b 6a  } 
	$revcomment_string91 = { 70 0d 30 36 33 39 22 27 78 1c 05 7b 7a 60 7d 7d  } 
	$xorcomment_string92 = { 77 0b 35 32 38 33 2b 2f 77 12 08 77 69 72 6c 6d  } 
	$revcomment_string92 = { 77 0c 33 37 3c 38 21 26 7f 1d 06 7a 65 61 7e 7c  } 
	$xorcomment_string93 = { 76 0a 34 33 39 32 2a 2e 76 13 09 76 68 73 6d 6c  } 
	$revcomment_string93 = { 76 0b 32 34 3d 37 20 25 7e 1a 07 79 64 7e 7f 7f  } 
	$xorcomment_string94 = { 75 09 37 30 3a 31 29 2d 75 10 0a 75 6b 70 6e 6f  } 
	$revcomment_string94 = { 75 0a 35 35 3e 36 2f 24 7d 1b 00 78 67 7f 60 7e  } 
	$xorcomment_string95 = { 74 08 36 31 3b 30 28 2c 74 11 0b 74 6a 71 6f 6e  } 
	$revcomment_string95 = { 74 09 34 32 3f 35 2e 2b 7c 18 01 7f 66 7c 61 61  } 
	$xorcomment_string96 = { 4b 37 09 0e 04 0f 17 13 4b 2e 34 4b 55 4e 50 51  } 
	$revcomment_string96 = { 4b 08 37 33 38 34 2d 2a 73 19 02 7e 61 7d 62 60  } 
	$xorcomment_string97 = { 4a 36 08 0f 05 0e 16 12 4a 2f 35 4a 54 4f 51 50  } 
	$revcomment_string97 = { 4a 37 36 30 39 33 2c 29 72 16 03 7d 60 7a 63 63  } 
	$xorcomment_string98 = { 49 35 0b 0c 06 0d 15 11 49 2c 36 49 57 4c 52 53  } 
	$revcomment_string98 = { 49 36 09 31 3a 32 2b 28 71 17 0c 7c 63 7b 64 62  } 
	$xorcomment_string99 = { 48 34 0a 0d 07 0c 14 10 48 2d 37 48 56 4d 53 52  } 
	$revcomment_string99 = { 48 35 08 0e 3b 31 2a 2f 70 14 0d 73 62 78 65 65  } 
	$xorcomment_string100 = { 4f 33 0d 0a 00 0b 13 17 4f 2a 30 4f 51 4a 54 55  } 
	$revcomment_string100 = { 4f 34 0b 0f 04 30 29 2e 77 15 0e 72 6d 79 66 64  } 
	$xorcomment_string101 = { 4e 32 0c 0b 01 0a 12 16 4e 2b 31 4e 50 4b 55 54  } 
	$revcomment_string101 = { 4e 33 0a 0c 05 0f 28 2d 76 12 0f 71 6c 76 67 67  } 
	$xorcomment_string102 = { 4d 31 0f 08 02 09 11 15 4d 28 32 4d 53 48 56 57  } 
	$revcomment_string102 = { 4d 32 0d 0d 06 0e 17 2c 75 13 08 70 6f 77 68 66  } 
	$xorcomment_string103 = { 4c 30 0e 09 03 08 10 14 4c 29 33 4c 52 49 57 56  } 
	$revcomment_string103 = { 4c 31 0c 0a 07 0d 16 13 74 10 09 77 6e 74 69 69  } 
	$xorcomment_string104 = { 43 3f 01 06 0c 07 1f 1b 43 26 3c 43 5d 46 58 59  } 
	$revcomment_string104 = { 43 30 0f 0b 00 0c 15 12 4b 11 0a 76 69 75 6a 68  } 
	$xorcomment_string105 = { 42 3e 00 07 0d 06 1e 1a 42 27 3d 42 5c 47 59 58  } 
	$revcomment_string105 = { 42 3f 0e 08 01 0b 14 11 4a 2e 0b 75 68 72 6b 6b  } 
	$xorcomment_string106 = { 41 3d 03 04 0e 05 1d 19 41 24 3e 41 5f 44 5a 5b  } 
	$revcomment_string106 = { 41 3e 01 09 02 0a 13 10 49 2f 34 74 6b 73 6c 6a  } 
	$xorcomment_string107 = { 40 3c 02 05 0f 04 1c 18 40 25 3f 40 5e 45 5b 5a  } 
	$revcomment_string107 = { 40 3d 00 06 03 09 12 17 48 2c 35 4b 6a 70 6d 6d  } 
	$xorcomment_string108 = { 47 3b 05 02 08 03 1b 1f 47 22 38 47 59 42 5c 5d  } 
	$revcomment_string108 = { 47 3c 03 07 0c 08 11 16 4f 2d 36 4a 55 71 6e 6c  } 
	$xorcomment_string109 = { 46 3a 04 03 09 02 1a 1e 46 23 39 46 58 43 5d 5c  } 
	$revcomment_string109 = { 46 3b 02 04 0d 07 10 15 4e 2a 37 49 54 4e 6f 6f  } 
	$xorcomment_string110 = { 45 39 07 00 0a 01 19 1d 45 20 3a 45 5b 40 5e 5f  } 
	$revcomment_string110 = { 45 3a 05 05 0e 06 1f 14 4d 2b 30 48 57 4f 50 6e  } 
	$xorcomment_string111 = { 44 38 06 01 0b 00 18 1c 44 21 3b 44 5a 41 5f 5e  } 
	$revcomment_string111 = { 44 39 04 02 0f 05 1e 1b 4c 28 31 4f 56 4c 51 51  } 
	$xorcomment_string112 = { 5b 27 19 1e 14 1f 07 03 5b 3e 24 5b 45 5e 40 41  } 
	$revcomment_string112 = { 5b 38 07 03 08 04 1d 1a 43 29 32 4e 51 4d 52 50  } 
	$xorcomment_string113 = { 5a 26 18 1f 15 1e 06 02 5a 3f 25 5a 44 5f 41 40  } 
	$revcomment_string113 = { 5a 27 06 00 09 03 1c 19 42 26 33 4d 50 4a 53 53  } 
	$xorcomment_string114 = { 59 25 1b 1c 16 1d 05 01 59 3c 26 59 47 5c 42 43  } 
	$revcomment_string114 = { 59 26 19 01 0a 02 1b 18 41 27 3c 4c 53 4b 54 52  } 
	$xorcomment_string115 = { 58 24 1a 1d 17 1c 04 00 58 3d 27 58 46 5d 43 42  } 
	$revcomment_string115 = { 58 25 18 1e 0b 01 1a 1f 40 24 3d 43 52 48 55 55  } 
	$xorcomment_string116 = { 5f 23 1d 1a 10 1b 03 07 5f 3a 20 5f 41 5a 44 45  } 
	$revcomment_string116 = { 5f 24 1b 1f 14 00 19 1e 47 25 3e 42 5d 49 56 54  } 
	$xorcomment_string117 = { 5e 22 1c 1b 11 1a 02 06 5e 3b 21 5e 40 5b 45 44  } 
	$revcomment_string117 = { 5e 23 1a 1c 15 1f 18 1d 46 22 3f 41 5c 46 57 57  } 
	$xorcomment_string118 = { 5d 21 1f 18 12 19 01 05 5d 38 22 5d 43 58 46 47  } 
	$revcomment_string118 = { 5d 22 1d 1d 16 1e 07 1c 45 23 38 40 5f 47 58 56  } 
	$xorcomment_string119 = { 5c 20 1e 19 13 18 00 04 5c 39 23 5c 42 59 47 46  } 
	$revcomment_string119 = { 5c 21 1c 1a 17 1d 06 03 44 20 39 47 5e 44 59 59  } 
	$xorcomment_string120 = { 53 2f 11 16 1c 17 0f 0b 53 36 2c 53 4d 56 48 49  } 
	$revcomment_string120 = { 53 20 1f 1b 10 1c 05 02 5b 21 3a 46 59 45 5a 58  } 
	$xorcomment_string121 = { 52 2e 10 17 1d 16 0e 0a 52 37 2d 52 4c 57 49 48  } 
	$revcomment_string121 = { 52 2f 1e 18 11 1b 04 01 5a 3e 3b 45 58 42 5b 5b  } 
	$xorcomment_string122 = { 51 2d 13 14 1e 15 0d 09 51 34 2e 51 4f 54 4a 4b  } 
	$revcomment_string122 = { 51 2e 11 19 12 1a 03 00 59 3f 24 44 5b 43 5c 5a  } 
	$xorcomment_string123 = { 50 2c 12 15 1f 14 0c 08 50 35 2f 50 4e 55 4b 4a  } 
	$revcomment_string123 = { 50 2d 10 16 13 19 02 07 58 3c 25 5b 5a 40 5d 5d  } 
	$xorcomment_string124 = { 57 2b 15 12 18 13 0b 0f 57 32 28 57 49 52 4c 4d  } 
	$revcomment_string124 = { 57 2c 13 17 1c 18 01 06 5f 3d 26 5a 45 41 5e 5c  } 
	$xorcomment_string125 = { 56 2a 14 13 19 12 0a 0e 56 33 29 56 48 53 4d 4c  } 
	$revcomment_string125 = { 56 2b 12 14 1d 17 00 05 5e 3a 27 59 44 5e 5f 5f  } 
	$xorcomment_string126 = { 55 29 17 10 1a 11 09 0d 55 30 2a 55 4b 50 4e 4f  } 
	$revcomment_string126 = { 55 2a 15 15 1e 16 0f 04 5d 3b 20 58 47 5f 40 5e  } 
	$xorcomment_string127 = { 54 28 16 11 1b 10 08 0c 54 31 2b 54 4a 51 4f 4e  } 
	$revcomment_string127 = { 54 29 14 12 1f 15 0e 0b 5c 38 21 5f 46 5c 41 41  } 
	$xorcomment_string128 = { ab d7 e9 ee e4 ef f7 f3 ab ce d4 ab b5 ae b0 b1  } 
	$revcomment_string128 = { ab 28 17 13 18 14 0d 0a 53 39 22 5e 41 5d 42 40  } 
	$xorcomment_string129 = { aa d6 e8 ef e5 ee f6 f2 aa cf d5 aa b4 af b1 b0  } 
	$revcomment_string129 = { aa d7 16 10 19 13 0c 09 52 36 23 5d 40 5a 43 43  } 
	$xorcomment_string130 = { a9 d5 eb ec e6 ed f5 f1 a9 cc d6 a9 b7 ac b2 b3  } 
	$revcomment_string130 = { a9 d6 e9 11 1a 12 0b 08 51 37 2c 5c 43 5b 44 42  } 
	$xorcomment_string131 = { a8 d4 ea ed e7 ec f4 f0 a8 cd d7 a8 b6 ad b3 b2  } 
	$revcomment_string131 = { a8 d5 e8 ee 1b 11 0a 0f 50 34 2d 53 42 58 45 45  } 
	$xorcomment_string132 = { af d3 ed ea e0 eb f3 f7 af ca d0 af b1 aa b4 b5  } 
	$revcomment_string132 = { af d4 eb ef e4 10 09 0e 57 35 2e 52 4d 59 46 44  } 
	$xorcomment_string133 = { ae d2 ec eb e1 ea f2 f6 ae cb d1 ae b0 ab b5 b4  } 
	$revcomment_string133 = { ae d3 ea ec e5 ef 08 0d 56 32 2f 51 4c 56 47 47  } 
	$xorcomment_string134 = { ad d1 ef e8 e2 e9 f1 f5 ad c8 d2 ad b3 a8 b6 b7  } 
	$revcomment_string134 = { ad d2 ed ed e6 ee f7 0c 55 33 28 50 4f 57 48 46  } 
	$xorcomment_string135 = { ac d0 ee e9 e3 e8 f0 f4 ac c9 d3 ac b2 a9 b7 b6  } 
	$revcomment_string135 = { ac d1 ec ea e7 ed f6 f3 54 30 29 57 4e 54 49 49  } 
	$xorcomment_string136 = { a3 df e1 e6 ec e7 ff fb a3 c6 dc a3 bd a6 b8 b9  } 
	$revcomment_string136 = { a3 d0 ef eb e0 ec f5 f2 ab 31 2a 56 49 55 4a 48  } 
	$xorcomment_string137 = { a2 de e0 e7 ed e6 fe fa a2 c7 dd a2 bc a7 b9 b8  } 
	$revcomment_string137 = { a2 df ee e8 e1 eb f4 f1 aa ce 2b 55 48 52 4b 4b  } 
	$xorcomment_string138 = { a1 dd e3 e4 ee e5 fd f9 a1 c4 de a1 bf a4 ba bb  } 
	$revcomment_string138 = { a1 de e1 e9 e2 ea f3 f0 a9 cf d4 54 4b 53 4c 4a  } 
	$xorcomment_string139 = { a0 dc e2 e5 ef e4 fc f8 a0 c5 df a0 be a5 bb ba  } 
	$revcomment_string139 = { a0 dd e0 e6 e3 e9 f2 f7 a8 cc d5 ab 4a 50 4d 4d  } 
	$xorcomment_string140 = { a7 db e5 e2 e8 e3 fb ff a7 c2 d8 a7 b9 a2 bc bd  } 
	$revcomment_string140 = { a7 dc e3 e7 ec e8 f1 f6 af cd d6 aa b5 51 4e 4c  } 
	$xorcomment_string141 = { a6 da e4 e3 e9 e2 fa fe a6 c3 d9 a6 b8 a3 bd bc  } 
	$revcomment_string141 = { a6 db e2 e4 ed e7 f0 f5 ae ca d7 a9 b4 ae 4f 4f  } 
	$xorcomment_string142 = { a5 d9 e7 e0 ea e1 f9 fd a5 c0 da a5 bb a0 be bf  } 
	$revcomment_string142 = { a5 da e5 e5 ee e6 ff f4 ad cb d0 a8 b7 af b0 4e  } 
	$xorcomment_string143 = { a4 d8 e6 e1 eb e0 f8 fc a4 c1 db a4 ba a1 bf be  } 
	$revcomment_string143 = { a4 d9 e4 e2 ef e5 fe fb ac c8 d1 af b6 ac b1 b1  } 
	$xorcomment_string144 = { bb c7 f9 fe f4 ff e7 e3 bb de c4 bb a5 be a0 a1  } 
	$revcomment_string144 = { bb d8 e7 e3 e8 e4 fd fa a3 c9 d2 ae b1 ad b2 b0  } 
	$xorcomment_string145 = { ba c6 f8 ff f5 fe e6 e2 ba df c5 ba a4 bf a1 a0  } 
	$revcomment_string145 = { ba c7 e6 e0 e9 e3 fc f9 a2 c6 d3 ad b0 aa b3 b3  } 
	$xorcomment_string146 = { b9 c5 fb fc f6 fd e5 e1 b9 dc c6 b9 a7 bc a2 a3  } 
	$revcomment_string146 = { b9 c6 f9 e1 ea e2 fb f8 a1 c7 dc ac b3 ab b4 b2  } 
	$xorcomment_string147 = { b8 c4 fa fd f7 fc e4 e0 b8 dd c7 b8 a6 bd a3 a2  } 
	$revcomment_string147 = { b8 c5 f8 fe eb e1 fa ff a0 c4 dd a3 b2 a8 b5 b5  } 
	$xorcomment_string148 = { bf c3 fd fa f0 fb e3 e7 bf da c0 bf a1 ba a4 a5  } 
	$revcomment_string148 = { bf c4 fb ff f4 e0 f9 fe a7 c5 de a2 bd a9 b6 b4  } 
	$xorcomment_string149 = { be c2 fc fb f1 fa e2 e6 be db c1 be a0 bb a5 a4  } 
	$revcomment_string149 = { be c3 fa fc f5 ff f8 fd a6 c2 df a1 bc a6 b7 b7  } 
	$xorcomment_string150 = { bd c1 ff f8 f2 f9 e1 e5 bd d8 c2 bd a3 b8 a6 a7  } 
	$revcomment_string150 = { bd c2 fd fd f6 fe e7 fc a5 c3 d8 a0 bf a7 b8 b6  } 
	$xorcomment_string151 = { bc c0 fe f9 f3 f8 e0 e4 bc d9 c3 bc a2 b9 a7 a6  } 
	$revcomment_string151 = { bc c1 fc fa f7 fd e6 e3 a4 c0 d9 a7 be a4 b9 b9  } 
	$xorcomment_string152 = { b3 cf f1 f6 fc f7 ef eb b3 d6 cc b3 ad b6 a8 a9  } 
	$revcomment_string152 = { b3 c0 ff fb f0 fc e5 e2 bb c1 da a6 b9 a5 ba b8  } 
	$xorcomment_string153 = { b2 ce f0 f7 fd f6 ee ea b2 d7 cd b2 ac b7 a9 a8  } 
	$revcomment_string153 = { b2 cf fe f8 f1 fb e4 e1 ba de db a5 b8 a2 bb bb  } 
	$xorcomment_string154 = { b1 cd f3 f4 fe f5 ed e9 b1 d4 ce b1 af b4 aa ab  } 
	$revcomment_string154 = { b1 ce f1 f9 f2 fa e3 e0 b9 df c4 a4 bb a3 bc ba  } 
	$xorcomment_string155 = { b0 cc f2 f5 ff f4 ec e8 b0 d5 cf b0 ae b5 ab aa  } 
	$revcomment_string155 = { b0 cd f0 f6 f3 f9 e2 e7 b8 dc c5 bb ba a0 bd bd  } 
	$xorcomment_string156 = { b7 cb f5 f2 f8 f3 eb ef b7 d2 c8 b7 a9 b2 ac ad  } 
	$revcomment_string156 = { b7 cc f3 f7 fc f8 e1 e6 bf dd c6 ba a5 a1 be bc  } 
	$xorcomment_string157 = { b6 ca f4 f3 f9 f2 ea ee b6 d3 c9 b6 a8 b3 ad ac  } 
	$revcomment_string157 = { b6 cb f2 f4 fd f7 e0 e5 be da c7 b9 a4 be bf bf  } 
	$xorcomment_string158 = { b5 c9 f7 f0 fa f1 e9 ed b5 d0 ca b5 ab b0 ae af  } 
	$revcomment_string158 = { b5 ca f5 f5 fe f6 ef e4 bd db c0 b8 a7 bf a0 be  } 
	$xorcomment_string159 = { b4 c8 f6 f1 fb f0 e8 ec b4 d1 cb b4 aa b1 af ae  } 
	$revcomment_string159 = { b4 c9 f4 f2 ff f5 ee eb bc d8 c1 bf a6 bc a1 a1  } 
	$xorcomment_string160 = { 8b f7 c9 ce c4 cf d7 d3 8b ee f4 8b 95 8e 90 91  } 
	$revcomment_string160 = { 8b c8 f7 f3 f8 f4 ed ea b3 d9 c2 be a1 bd a2 a0  } 
	$xorcomment_string161 = { 8a f6 c8 cf c5 ce d6 d2 8a ef f5 8a 94 8f 91 90  } 
	$revcomment_string161 = { 8a f7 f6 f0 f9 f3 ec e9 b2 d6 c3 bd a0 ba a3 a3  } 
	$xorcomment_string162 = { 89 f5 cb cc c6 cd d5 d1 89 ec f6 89 97 8c 92 93  } 
	$revcomment_string162 = { 89 f6 c9 f1 fa f2 eb e8 b1 d7 cc bc a3 bb a4 a2  } 
	$xorcomment_string163 = { 88 f4 ca cd c7 cc d4 d0 88 ed f7 88 96 8d 93 92  } 
	$revcomment_string163 = { 88 f5 c8 ce fb f1 ea ef b0 d4 cd b3 a2 b8 a5 a5  } 
	$xorcomment_string164 = { 8f f3 cd ca c0 cb d3 d7 8f ea f0 8f 91 8a 94 95  } 
	$revcomment_string164 = { 8f f4 cb cf c4 f0 e9 ee b7 d5 ce b2 ad b9 a6 a4  } 
	$xorcomment_string165 = { 8e f2 cc cb c1 ca d2 d6 8e eb f1 8e 90 8b 95 94  } 
	$revcomment_string165 = { 8e f3 ca cc c5 cf e8 ed b6 d2 cf b1 ac b6 a7 a7  } 
	$xorcomment_string166 = { 8d f1 cf c8 c2 c9 d1 d5 8d e8 f2 8d 93 88 96 97  } 
	$revcomment_string166 = { 8d f2 cd cd c6 ce d7 ec b5 d3 c8 b0 af b7 a8 a6  } 
	$xorcomment_string167 = { 8c f0 ce c9 c3 c8 d0 d4 8c e9 f3 8c 92 89 97 96  } 
	$revcomment_string167 = { 8c f1 cc ca c7 cd d6 d3 b4 d0 c9 b7 ae b4 a9 a9  } 
	$xorcomment_string168 = { 83 ff c1 c6 cc c7 df db 83 e6 fc 83 9d 86 98 99  } 
	$revcomment_string168 = { 83 f0 cf cb c0 cc d5 d2 8b d1 ca b6 a9 b5 aa a8  } 
	$xorcomment_string169 = { 82 fe c0 c7 cd c6 de da 82 e7 fd 82 9c 87 99 98  } 
	$revcomment_string169 = { 82 ff ce c8 c1 cb d4 d1 8a ee cb b5 a8 b2 ab ab  } 
	$xorcomment_string170 = { 81 fd c3 c4 ce c5 dd d9 81 e4 fe 81 9f 84 9a 9b  } 
	$revcomment_string170 = { 81 fe c1 c9 c2 ca d3 d0 89 ef f4 b4 ab b3 ac aa  } 
	$xorcomment_string171 = { 80 fc c2 c5 cf c4 dc d8 80 e5 ff 80 9e 85 9b 9a  } 
	$revcomment_string171 = { 80 fd c0 c6 c3 c9 d2 d7 88 ec f5 8b aa b0 ad ad  } 
	$xorcomment_string172 = { 87 fb c5 c2 c8 c3 db df 87 e2 f8 87 99 82 9c 9d  } 
	$revcomment_string172 = { 87 fc c3 c7 cc c8 d1 d6 8f ed f6 8a 95 b1 ae ac  } 
	$xorcomment_string173 = { 86 fa c4 c3 c9 c2 da de 86 e3 f9 86 98 83 9d 9c  } 
	$revcomment_string173 = { 86 fb c2 c4 cd c7 d0 d5 8e ea f7 89 94 8e af af  } 
	$xorcomment_string174 = { 85 f9 c7 c0 ca c1 d9 dd 85 e0 fa 85 9b 80 9e 9f  } 
	$revcomment_string174 = { 85 fa c5 c5 ce c6 df d4 8d eb f0 88 97 8f 90 ae  } 
	$xorcomment_string175 = { 84 f8 c6 c1 cb c0 d8 dc 84 e1 fb 84 9a 81 9f 9e  } 
	$revcomment_string175 = { 84 f9 c4 c2 cf c5 de db 8c e8 f1 8f 96 8c 91 91  } 
	$xorcomment_string176 = { 9b e7 d9 de d4 df c7 c3 9b fe e4 9b 85 9e 80 81  } 
	$revcomment_string176 = { 9b f8 c7 c3 c8 c4 dd da 83 e9 f2 8e 91 8d 92 90  } 
	$xorcomment_string177 = { 9a e6 d8 df d5 de c6 c2 9a ff e5 9a 84 9f 81 80  } 
	$revcomment_string177 = { 9a e7 c6 c0 c9 c3 dc d9 82 e6 f3 8d 90 8a 93 93  } 
	$xorcomment_string178 = { 99 e5 db dc d6 dd c5 c1 99 fc e6 99 87 9c 82 83  } 
	$revcomment_string178 = { 99 e6 d9 c1 ca c2 db d8 81 e7 fc 8c 93 8b 94 92  } 
	$xorcomment_string179 = { 98 e4 da dd d7 dc c4 c0 98 fd e7 98 86 9d 83 82  } 
	$revcomment_string179 = { 98 e5 d8 de cb c1 da df 80 e4 fd 83 92 88 95 95  } 
	$xorcomment_string180 = { 9f e3 dd da d0 db c3 c7 9f fa e0 9f 81 9a 84 85  } 
	$revcomment_string180 = { 9f e4 db df d4 c0 d9 de 87 e5 fe 82 9d 89 96 94  } 
	$xorcomment_string181 = { 9e e2 dc db d1 da c2 c6 9e fb e1 9e 80 9b 85 84  } 
	$revcomment_string181 = { 9e e3 da dc d5 df d8 dd 86 e2 ff 81 9c 86 97 97  } 
	$xorcomment_string182 = { 9d e1 df d8 d2 d9 c1 c5 9d f8 e2 9d 83 98 86 87  } 
	$revcomment_string182 = { 9d e2 dd dd d6 de c7 dc 85 e3 f8 80 9f 87 98 96  } 
	$xorcomment_string183 = { 9c e0 de d9 d3 d8 c0 c4 9c f9 e3 9c 82 99 87 86  } 
	$revcomment_string183 = { 9c e1 dc da d7 dd c6 c3 84 e0 f9 87 9e 84 99 99  } 
	$xorcomment_string184 = { 93 ef d1 d6 dc d7 cf cb 93 f6 ec 93 8d 96 88 89  } 
	$revcomment_string184 = { 93 e0 df db d0 dc c5 c2 9b e1 fa 86 99 85 9a 98  } 
	$xorcomment_string185 = { 92 ee d0 d7 dd d6 ce ca 92 f7 ed 92 8c 97 89 88  } 
	$revcomment_string185 = { 92 ef de d8 d1 db c4 c1 9a fe fb 85 98 82 9b 9b  } 
	$xorcomment_string186 = { 91 ed d3 d4 de d5 cd c9 91 f4 ee 91 8f 94 8a 8b  } 
	$revcomment_string186 = { 91 ee d1 d9 d2 da c3 c0 99 ff e4 84 9b 83 9c 9a  } 
	$xorcomment_string187 = { 90 ec d2 d5 df d4 cc c8 90 f5 ef 90 8e 95 8b 8a  } 
	$revcomment_string187 = { 90 ed d0 d6 d3 d9 c2 c7 98 fc e5 9b 9a 80 9d 9d  } 
	$xorcomment_string188 = { 97 eb d5 d2 d8 d3 cb cf 97 f2 e8 97 89 92 8c 8d  } 
	$revcomment_string188 = { 97 ec d3 d7 dc d8 c1 c6 9f fd e6 9a 85 81 9e 9c  } 
	$xorcomment_string189 = { 96 ea d4 d3 d9 d2 ca ce 96 f3 e9 96 88 93 8d 8c  } 
	$revcomment_string189 = { 96 eb d2 d4 dd d7 c0 c5 9e fa e7 99 84 9e 9f 9f  } 
	$xorcomment_string190 = { 95 e9 d7 d0 da d1 c9 cd 95 f0 ea 95 8b 90 8e 8f  } 
	$revcomment_string190 = { 95 ea d5 d5 de d6 cf c4 9d fb e0 98 87 9f 80 9e  } 
	$xorcomment_string191 = { 94 e8 d6 d1 db d0 c8 cc 94 f1 eb 94 8a 91 8f 8e  } 
	$revcomment_string191 = { 94 e9 d4 d2 df d5 ce cb 9c f8 e1 9f 86 9c 81 81  } 
	$xorcomment_string192 = { eb 97 a9 ae a4 af b7 b3 eb 8e 94 eb f5 ee f0 f1  } 
	$revcomment_string192 = { eb e8 d7 d3 d8 d4 cd ca 93 f9 e2 9e 81 9d 82 80  } 
	$xorcomment_string193 = { ea 96 a8 af a5 ae b6 b2 ea 8f 95 ea f4 ef f1 f0  } 
	$revcomment_string193 = { ea 97 d6 d0 d9 d3 cc c9 92 f6 e3 9d 80 9a 83 83  } 
	$xorcomment_string194 = { e9 95 ab ac a6 ad b5 b1 e9 8c 96 e9 f7 ec f2 f3  } 
	$revcomment_string194 = { e9 96 a9 d1 da d2 cb c8 91 f7 ec 9c 83 9b 84 82  } 
	$xorcomment_string195 = { e8 94 aa ad a7 ac b4 b0 e8 8d 97 e8 f6 ed f3 f2  } 
	$revcomment_string195 = { e8 95 a8 ae db d1 ca cf 90 f4 ed 93 82 98 85 85  } 
	$xorcomment_string196 = { ef 93 ad aa a0 ab b3 b7 ef 8a 90 ef f1 ea f4 f5  } 
	$revcomment_string196 = { ef 94 ab af a4 d0 c9 ce 97 f5 ee 92 8d 99 86 84  } 
	$xorcomment_string197 = { ee 92 ac ab a1 aa b2 b6 ee 8b 91 ee f0 eb f5 f4  } 
	$revcomment_string197 = { ee 93 aa ac a5 af c8 cd 96 f2 ef 91 8c 96 87 87  } 
	$xorcomment_string198 = { ed 91 af a8 a2 a9 b1 b5 ed 88 92 ed f3 e8 f6 f7  } 
	$revcomment_string198 = { ed 92 ad ad a6 ae b7 cc 95 f3 e8 90 8f 97 88 86  } 
	$xorcomment_string199 = { ec 90 ae a9 a3 a8 b0 b4 ec 89 93 ec f2 e9 f7 f6  } 
	$revcomment_string199 = { ec 91 ac aa a7 ad b6 b3 94 f0 e9 97 8e 94 89 89  } 
	$xorcomment_string200 = { e3 9f a1 a6 ac a7 bf bb e3 86 9c e3 fd e6 f8 f9  } 
	$revcomment_string200 = { e3 90 af ab a0 ac b5 b2 eb f1 ea 96 89 95 8a 88  } 
	$xorcomment_string201 = { e2 9e a0 a7 ad a6 be ba e2 87 9d e2 fc e7 f9 f8  } 
	$revcomment_string201 = { e2 9f ae a8 a1 ab b4 b1 ea 8e eb 95 88 92 8b 8b  } 
	$xorcomment_string202 = { e1 9d a3 a4 ae a5 bd b9 e1 84 9e e1 ff e4 fa fb  } 
	$revcomment_string202 = { e1 9e a1 a9 a2 aa b3 b0 e9 8f 94 94 8b 93 8c 8a  } 
	$xorcomment_string203 = { e0 9c a2 a5 af a4 bc b8 e0 85 9f e0 fe e5 fb fa  } 
	$revcomment_string203 = { e0 9d a0 a6 a3 a9 b2 b7 e8 8c 95 eb 8a 90 8d 8d  } 
	$xorcomment_string204 = { e7 9b a5 a2 a8 a3 bb bf e7 82 98 e7 f9 e2 fc fd  } 
	$revcomment_string204 = { e7 9c a3 a7 ac a8 b1 b6 ef 8d 96 ea f5 91 8e 8c  } 
	$xorcomment_string205 = { e6 9a a4 a3 a9 a2 ba be e6 83 99 e6 f8 e3 fd fc  } 
	$revcomment_string205 = { e6 9b a2 a4 ad a7 b0 b5 ee 8a 97 e9 f4 ee 8f 8f  } 
	$xorcomment_string206 = { e5 99 a7 a0 aa a1 b9 bd e5 80 9a e5 fb e0 fe ff  } 
	$revcomment_string206 = { e5 9a a5 a5 ae a6 bf b4 ed 8b 90 e8 f7 ef f0 8e  } 
	$xorcomment_string207 = { e4 98 a6 a1 ab a0 b8 bc e4 81 9b e4 fa e1 ff fe  } 
	$revcomment_string207 = { e4 99 a4 a2 af a5 be bb ec 88 91 ef f6 ec f1 f1  } 
	$xorcomment_string208 = { fb 87 b9 be b4 bf a7 a3 fb 9e 84 fb e5 fe e0 e1  } 
	$revcomment_string208 = { fb 98 a7 a3 a8 a4 bd ba e3 89 92 ee f1 ed f2 f0  } 
	$xorcomment_string209 = { fa 86 b8 bf b5 be a6 a2 fa 9f 85 fa e4 ff e1 e0  } 
	$revcomment_string209 = { fa 87 a6 a0 a9 a3 bc b9 e2 86 93 ed f0 ea f3 f3  } 
	$xorcomment_string210 = { f9 85 bb bc b6 bd a5 a1 f9 9c 86 f9 e7 fc e2 e3  } 
	$revcomment_string210 = { f9 86 b9 a1 aa a2 bb b8 e1 87 9c ec f3 eb f4 f2  } 
	$xorcomment_string211 = { f8 84 ba bd b7 bc a4 a0 f8 9d 87 f8 e6 fd e3 e2  } 
	$revcomment_string211 = { f8 85 b8 be ab a1 ba bf e0 84 9d e3 f2 e8 f5 f5  } 
	$xorcomment_string212 = { ff 83 bd ba b0 bb a3 a7 ff 9a 80 ff e1 fa e4 e5  } 
	$revcomment_string212 = { ff 84 bb bf b4 a0 b9 be e7 85 9e e2 fd e9 f6 f4  } 
	$xorcomment_string213 = { fe 82 bc bb b1 ba a2 a6 fe 9b 81 fe e0 fb e5 e4  } 
	$revcomment_string213 = { fe 83 ba bc b5 bf b8 bd e6 82 9f e1 fc e6 f7 f7  } 
	$xorcomment_string214 = { fd 81 bf b8 b2 b9 a1 a5 fd 98 82 fd e3 f8 e6 e7  } 
	$revcomment_string214 = { fd 82 bd bd b6 be a7 bc e5 83 98 e0 ff e7 f8 f6  } 
	$xorcomment_string215 = { fc 80 be b9 b3 b8 a0 a4 fc 99 83 fc e2 f9 e7 e6  } 
	$revcomment_string215 = { fc 81 bc ba b7 bd a6 a3 e4 80 99 e7 fe e4 f9 f9  } 
	$xorcomment_string216 = { f3 8f b1 b6 bc b7 af ab f3 96 8c f3 ed f6 e8 e9  } 
	$revcomment_string216 = { f3 80 bf bb b0 bc a5 a2 fb 81 9a e6 f9 e5 fa f8  } 
	$xorcomment_string217 = { f2 8e b0 b7 bd b6 ae aa f2 97 8d f2 ec f7 e9 e8  } 
	$revcomment_string217 = { f2 8f be b8 b1 bb a4 a1 fa 9e 9b e5 f8 e2 fb fb  } 
	$xorcomment_string218 = { f1 8d b3 b4 be b5 ad a9 f1 94 8e f1 ef f4 ea eb  } 
	$revcomment_string218 = { f1 8e b1 b9 b2 ba a3 a0 f9 9f 84 e4 fb e3 fc fa  } 
	$xorcomment_string219 = { f0 8c b2 b5 bf b4 ac a8 f0 95 8f f0 ee f5 eb ea  } 
	$revcomment_string219 = { f0 8d b0 b6 b3 b9 a2 a7 f8 9c 85 fb fa e0 fd fd  } 
	$xorcomment_string220 = { f7 8b b5 b2 b8 b3 ab af f7 92 88 f7 e9 f2 ec ed  } 
	$revcomment_string220 = { f7 8c b3 b7 bc b8 a1 a6 ff 9d 86 fa e5 e1 fe fc  } 
	$xorcomment_string221 = { f6 8a b4 b3 b9 b2 aa ae f6 93 89 f6 e8 f3 ed ec  } 
	$revcomment_string221 = { f6 8b b2 b4 bd b7 a0 a5 fe 9a 87 f9 e4 fe ff ff  } 
	$xorcomment_string222 = { f5 89 b7 b0 ba b1 a9 ad f5 90 8a f5 eb f0 ee ef  } 
	$revcomment_string222 = { f5 8a b5 b5 be b6 af a4 fd 9b 80 f8 e7 ff e0 fe  } 
	$xorcomment_string223 = { f4 88 b6 b1 bb b0 a8 ac f4 91 8b f4 ea f1 ef ee  } 
	$revcomment_string223 = { f4 89 b4 b2 bf b5 ae ab fc 98 81 ff e6 fc e1 e1  } 
	$xorcomment_string224 = { cb b7 89 8e 84 8f 97 93 cb ae b4 cb d5 ce d0 d1  } 
	$revcomment_string224 = { cb 88 b7 b3 b8 b4 ad aa f3 99 82 fe e1 fd e2 e0  } 
	$xorcomment_string225 = { ca b6 88 8f 85 8e 96 92 ca af b5 ca d4 cf d1 d0  } 
	$revcomment_string225 = { ca b7 b6 b0 b9 b3 ac a9 f2 96 83 fd e0 fa e3 e3  } 
	$xorcomment_string226 = { c9 b5 8b 8c 86 8d 95 91 c9 ac b6 c9 d7 cc d2 d3  } 
	$revcomment_string226 = { c9 b6 89 b1 ba b2 ab a8 f1 97 8c fc e3 fb e4 e2  } 
	$xorcomment_string227 = { c8 b4 8a 8d 87 8c 94 90 c8 ad b7 c8 d6 cd d3 d2  } 
	$revcomment_string227 = { c8 b5 88 8e bb b1 aa af f0 94 8d f3 e2 f8 e5 e5  } 
	$xorcomment_string228 = { cf b3 8d 8a 80 8b 93 97 cf aa b0 cf d1 ca d4 d5  } 
	$revcomment_string228 = { cf b4 8b 8f 84 b0 a9 ae f7 95 8e f2 ed f9 e6 e4  } 
	$xorcomment_string229 = { ce b2 8c 8b 81 8a 92 96 ce ab b1 ce d0 cb d5 d4  } 
	$revcomment_string229 = { ce b3 8a 8c 85 8f a8 ad f6 92 8f f1 ec f6 e7 e7  } 
	$xorcomment_string230 = { cd b1 8f 88 82 89 91 95 cd a8 b2 cd d3 c8 d6 d7  } 
	$revcomment_string230 = { cd b2 8d 8d 86 8e 97 ac f5 93 88 f0 ef f7 e8 e6  } 
	$xorcomment_string231 = { cc b0 8e 89 83 88 90 94 cc a9 b3 cc d2 c9 d7 d6  } 
	$revcomment_string231 = { cc b1 8c 8a 87 8d 96 93 f4 90 89 f7 ee f4 e9 e9  } 
	$xorcomment_string232 = { c3 bf 81 86 8c 87 9f 9b c3 a6 bc c3 dd c6 d8 d9  } 
	$revcomment_string232 = { c3 b0 8f 8b 80 8c 95 92 cb 91 8a f6 e9 f5 ea e8  } 
	$xorcomment_string233 = { c2 be 80 87 8d 86 9e 9a c2 a7 bd c2 dc c7 d9 d8  } 
	$revcomment_string233 = { c2 bf 8e 88 81 8b 94 91 ca ae 8b f5 e8 f2 eb eb  } 
	$xorcomment_string234 = { c1 bd 83 84 8e 85 9d 99 c1 a4 be c1 df c4 da db  } 
	$revcomment_string234 = { c1 be 81 89 82 8a 93 90 c9 af b4 f4 eb f3 ec ea  } 
	$xorcomment_string235 = { c0 bc 82 85 8f 84 9c 98 c0 a5 bf c0 de c5 db da  } 
	$revcomment_string235 = { c0 bd 80 86 83 89 92 97 c8 ac b5 cb ea f0 ed ed  } 
	$xorcomment_string236 = { c7 bb 85 82 88 83 9b 9f c7 a2 b8 c7 d9 c2 dc dd  } 
	$revcomment_string236 = { c7 bc 83 87 8c 88 91 96 cf ad b6 ca d5 f1 ee ec  } 
	$xorcomment_string237 = { c6 ba 84 83 89 82 9a 9e c6 a3 b9 c6 d8 c3 dd dc  } 
	$revcomment_string237 = { c6 bb 82 84 8d 87 90 95 ce aa b7 c9 d4 ce ef ef  } 
	$xorcomment_string238 = { c5 b9 87 80 8a 81 99 9d c5 a0 ba c5 db c0 de df  } 
	$revcomment_string238 = { c5 ba 85 85 8e 86 9f 94 cd ab b0 c8 d7 cf d0 ee  } 
	$xorcomment_string239 = { c4 b8 86 81 8b 80 98 9c c4 a1 bb c4 da c1 df de  } 
	$revcomment_string239 = { c4 b9 84 82 8f 85 9e 9b cc a8 b1 cf d6 cc d1 d1  } 
	$xorcomment_string240 = { db a7 99 9e 94 9f 87 83 db be a4 db c5 de c0 c1  } 
	$revcomment_string240 = { db b8 87 83 88 84 9d 9a c3 a9 b2 ce d1 cd d2 d0  } 
	$xorcomment_string241 = { da a6 98 9f 95 9e 86 82 da bf a5 da c4 df c1 c0  } 
	$revcomment_string241 = { da a7 86 80 89 83 9c 99 c2 a6 b3 cd d0 ca d3 d3  } 
	$xorcomment_string242 = { d9 a5 9b 9c 96 9d 85 81 d9 bc a6 d9 c7 dc c2 c3  } 
	$revcomment_string242 = { d9 a6 99 81 8a 82 9b 98 c1 a7 bc cc d3 cb d4 d2  } 
	$xorcomment_string243 = { d8 a4 9a 9d 97 9c 84 80 d8 bd a7 d8 c6 dd c3 c2  } 
	$revcomment_string243 = { d8 a5 98 9e 8b 81 9a 9f c0 a4 bd c3 d2 c8 d5 d5  } 
	$xorcomment_string244 = { df a3 9d 9a 90 9b 83 87 df ba a0 df c1 da c4 c5  } 
	$revcomment_string244 = { df a4 9b 9f 94 80 99 9e c7 a5 be c2 dd c9 d6 d4  } 
	$xorcomment_string245 = { de a2 9c 9b 91 9a 82 86 de bb a1 de c0 db c5 c4  } 
	$revcomment_string245 = { de a3 9a 9c 95 9f 98 9d c6 a2 bf c1 dc c6 d7 d7  } 
	$xorcomment_string246 = { dd a1 9f 98 92 99 81 85 dd b8 a2 dd c3 d8 c6 c7  } 
	$revcomment_string246 = { dd a2 9d 9d 96 9e 87 9c c5 a3 b8 c0 df c7 d8 d6  } 
	$xorcomment_string247 = { dc a0 9e 99 93 98 80 84 dc b9 a3 dc c2 d9 c7 c6  } 
	$revcomment_string247 = { dc a1 9c 9a 97 9d 86 83 c4 a0 b9 c7 de c4 d9 d9  } 
	$xorcomment_string248 = { d3 af 91 96 9c 97 8f 8b d3 b6 ac d3 cd d6 c8 c9  } 
	$revcomment_string248 = { d3 a0 9f 9b 90 9c 85 82 db a1 ba c6 d9 c5 da d8  } 
	$xorcomment_string249 = { d2 ae 90 97 9d 96 8e 8a d2 b7 ad d2 cc d7 c9 c8  } 
	$revcomment_string249 = { d2 af 9e 98 91 9b 84 81 da be bb c5 d8 c2 db db  } 
	$xorcomment_string250 = { d1 ad 93 94 9e 95 8d 89 d1 b4 ae d1 cf d4 ca cb  } 
	$revcomment_string250 = { d1 ae 91 99 92 9a 83 80 d9 bf a4 c4 db c3 dc da  } 
	$xorcomment_string251 = { d0 ac 92 95 9f 94 8c 88 d0 b5 af d0 ce d5 cb ca  } 
	$revcomment_string251 = { d0 ad 90 96 93 99 82 87 d8 bc a5 db da c0 dd dd  } 
	$xorcomment_string252 = { d7 ab 95 92 98 93 8b 8f d7 b2 a8 d7 c9 d2 cc cd  } 
	$revcomment_string252 = { d7 ac 93 97 9c 98 81 86 df bd a6 da c5 c1 de dc  } 
	$xorcomment_string253 = { d6 aa 94 93 99 92 8a 8e d6 b3 a9 d6 c8 d3 cd cc  } 
	$revcomment_string253 = { d6 ab 92 94 9d 97 80 85 de ba a7 d9 c4 de df df  } 
	$xorcomment_string254 = { d5 a9 97 90 9a 91 89 8d d5 b0 aa d5 cb d0 ce cf  } 
	$revcomment_string254 = { d5 aa 95 95 9e 96 8f 84 dd bb a0 d8 c7 df c0 de  } 
	$dadccomment_string0 = { f18bb3b2beb3adaff1928ef7eff2eaed } 
	$dadccomment_string1 = { f78db5b4b8b5aba9f79488f1e9f4eceb } 
	$af3950cacomment_string0 = { 846e39a4cb5627b9847704e19a1760fb } 
	$af3950cacomment_string1 = { 1207a3c15d3fbddc121e9e840c7efa9e } 
	$af3950cacomment_string2 = { 7b9dc65734a5d84a7b84fb1265e49f08 } 
	$af3950cacomment_string3 = { e1f8503eaec04e23e1e16d7bff810961 } 
	$effeefeecomment_string0 = { c4a986808b91989dc4b0bbc5dad0dfdf } 
	$effeefeecomment_string1 = { d5b887819a80999cd5a1bac4cbc1dede } 
	$effeefeecomment_string2 = { c4b986908b81988dc4a0bbd5dac0dfcf } 
	$effeefeecomment_string3 = { c5b897818a80899cc5a1aac4dbc1cede } 
	$fefeefefcomment_string0 = { d5a986819a91989cd5b0bbc4cbd0dfde } 
	$fefeefefcomment_string1 = { d5b886909a80988dd5a1bbd5cbc1dfcf } 
	$fefeefefcomment_string2 = { c4b897908b80898dc4a1aad5dac1cecf } 
	$fefeefefcomment_string3 = { c4a997818b91899cc4b0aac4dad0cede } 
	$bcbafcfacomment_string0 = { 97ed9594d8d58b8997f4a8d18994cccb } 
	$bcbafcfacomment_string1 = { 91ab93d2de938dcf91b2ae978fd2ca8d } 
	$bcbafcfacomment_string2 = { d7add5d49895cbc9d7b4e891c9d48c8b } 
	$bcbafcfacomment_string3 = { d1ebd3929ed3cd8fd1f2eed7cf928acd } 
	$babcfafccomment_string0 = { 91eb9392ded38d8f91f2aed78f92cacd } 
	$babcfafccomment_string1 = { 97ad95d4d8958bc997b4a89189d4cc8b } 
	$babcfafccomment_string2 = { d1abd3d29e93cdcfd1b2ee97cfd28a8d } 
	$babcfafccomment_string3 = { d7edd59498d5cb89d7f4e8d1c9948ccb } 
condition:
any of them

}

/*
// author - matt
// sig type - Embedded Trojan
// badness - 8
// detect dnscalc new payload
*/
rule xor_dnscalc
{
strings:
	$xordns_string1 = { 22 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 3c 54 71 6d 6e 60 65  } 
	$revdns_string1 = { 22 3d c2 c3 c0 c1 c6 c7 c4 c5 ca cb c8 a1 83 9e 9e 91 8b  } 
	$xordns_string2 = { 21 3f 3f 3f 3f 3f 3f 3f 3f 3f 3f 3f 3f 57 72 6e 6d 63 66  } 
	$revdns_string2 = { 21 3c 3d c2 c3 c0 c1 c6 c7 c4 c5 ca cb a0 84 9f 9d 90 94  } 
	$xordns_string3 = { 20 3e 3e 3e 3e 3e 3e 3e 3e 3e 3e 3e 3e 56 73 6f 6c 62 67  } 
	$revdns_string3 = { 20 3f 3c 3d c2 c3 c0 c1 c6 c7 c4 c5 ca a3 85 98 9c 93 95  } 
	$xordns_string4 = { 27 39 39 39 39 39 39 39 39 39 39 39 39 51 74 68 6b 65 60  } 
	$revdns_string4 = { 27 3e 3f 3c 3d c2 c3 c0 c1 c6 c7 c4 c5 a2 86 99 9b 92 96  } 
	$xordns_string5 = { 26 38 38 38 38 38 38 38 38 38 38 38 38 50 75 69 6a 64 61  } 
	$revdns_string5 = { 26 39 3e 3f 3c 3d c2 c3 c0 c1 c6 c7 c4 ad 87 9a 9a 95 97  } 
	$xordns_string6 = { 25 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 53 76 6a 69 67 62  } 
	$revdns_string6 = { 25 38 39 3e 3f 3c 3d c2 c3 c0 c1 c6 c7 ac 88 9b 99 94 90  } 
	$xordns_string7 = { 24 3a 3a 3a 3a 3a 3a 3a 3a 3a 3a 3a 3a 52 77 6b 68 66 63  } 
	$revdns_string7 = { 24 3b 38 39 3e 3f 3c 3d c2 c3 c0 c1 c6 af 89 94 98 97 91  } 
	$xordns_string8 = { 2b 35 35 35 35 35 35 35 35 35 35 35 35 5d 78 64 67 69 6c  } 
	$revdns_string8 = { 2b 3a 3b 38 39 3e 3f 3c 3d c2 c3 c0 c1 ae 8a 95 97 96 92  } 
	$xordns_string9 = { 2a 34 34 34 34 34 34 34 34 34 34 34 34 5c 79 65 66 68 6d  } 
	$revdns_string9 = { 2a 35 3a 3b 38 39 3e 3f 3c 3d c2 c3 c0 a9 8b 96 96 99 93  } 
	$xordns_string10 = { 29 37 37 37 37 37 37 37 37 37 37 37 37 5f 7a 66 65 6b 6e  } 
	$revdns_string10 = { 29 34 35 3a 3b 38 39 3e 3f 3c 3d c2 c3 a8 8c 97 95 98 9c  } 
	$xordns_string11 = { 28 36 36 36 36 36 36 36 36 36 36 36 36 5e 7b 67 64 6a 6f  } 
	$revdns_string11 = { 28 37 34 35 3a 3b 38 39 3e 3f 3c 3d c2 ab 8d 90 94 9b 9d  } 
	$xordns_string12 = { 2f 31 31 31 31 31 31 31 31 31 31 31 31 59 7c 60 63 6d 68  } 
	$revdns_string12 = { 2f 36 37 34 35 3a 3b 38 39 3e 3f 3c 3d aa 8e 91 93 9a 9e  } 
	$xordns_string13 = { 2e 30 30 30 30 30 30 30 30 30 30 30 30 58 7d 61 62 6c 69  } 
	$revdns_string13 = { 2e 31 36 37 34 35 3a 3b 38 39 3e 3f 3c 55 8f 92 92 9d 9f  } 
	$xordns_string14 = { 2d 33 33 33 33 33 33 33 33 33 33 33 33 5b 7e 62 61 6f 6a  } 
	$revdns_string14 = { 2d 30 31 36 37 34 35 3a 3b 38 39 3e 3f 54 70 93 91 9c 98  } 
	$xordns_string15 = { 2c 32 32 32 32 32 32 32 32 32 32 32 32 5a 7f 63 60 6e 6b  } 
	$revdns_string15 = { 2c 33 30 31 36 37 34 35 3a 3b 38 39 3e 57 71 6c 90 9f 99  } 
	$xordns_string16 = { 33 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 45 60 7c 7f 71 74  } 
	$revdns_string16 = { 33 32 33 30 31 36 37 34 35 3a 3b 38 39 56 72 6d 6f 9e 9a  } 
	$xordns_string17 = { 32 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 44 61 7d 7e 70 75  } 
	$revdns_string17 = { 32 2d 32 33 30 31 36 37 34 35 3a 3b 38 51 73 6e 6e 61 9b  } 
	$xordns_string18 = { 31 2f 2f 2f 2f 2f 2f 2f 2f 2f 2f 2f 2f 47 62 7e 7d 73 76  } 
	$revdns_string18 = { 31 2c 2d 32 33 30 31 36 37 34 35 3a 3b 50 74 6f 6d 60 64  } 
	$xordns_string19 = { 30 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 46 63 7f 7c 72 77  } 
	$revdns_string19 = { 30 2f 2c 2d 32 33 30 31 36 37 34 35 3a 53 75 68 6c 63 65  } 
	$xordns_string20 = { 37 29 29 29 29 29 29 29 29 29 29 29 29 41 64 78 7b 75 70  } 
	$revdns_string20 = { 37 2e 2f 2c 2d 32 33 30 31 36 37 34 35 52 76 69 6b 62 66  } 
	$xordns_string21 = { 36 28 28 28 28 28 28 28 28 28 28 28 28 40 65 79 7a 74 71  } 
	$revdns_string21 = { 36 29 2e 2f 2c 2d 32 33 30 31 36 37 34 5d 77 6a 6a 65 67  } 
	$xordns_string22 = { 35 2b 2b 2b 2b 2b 2b 2b 2b 2b 2b 2b 2b 43 66 7a 79 77 72  } 
	$revdns_string22 = { 35 28 29 2e 2f 2c 2d 32 33 30 31 36 37 5c 78 6b 69 64 60  } 
	$xordns_string23 = { 34 2a 2a 2a 2a 2a 2a 2a 2a 2a 2a 2a 2a 42 67 7b 78 76 73  } 
	$revdns_string23 = { 34 2b 28 29 2e 2f 2c 2d 32 33 30 31 36 5f 79 64 68 67 61  } 
	$xordns_string24 = { 3b 25 25 25 25 25 25 25 25 25 25 25 25 4d 68 74 77 79 7c  } 
	$revdns_string24 = { 3b 2a 2b 28 29 2e 2f 2c 2d 32 33 30 31 5e 7a 65 67 66 62  } 
	$xordns_string25 = { 3a 24 24 24 24 24 24 24 24 24 24 24 24 4c 69 75 76 78 7d  } 
	$revdns_string25 = { 3a 25 2a 2b 28 29 2e 2f 2c 2d 32 33 30 59 7b 66 66 69 63  } 
	$xordns_string26 = { 39 27 27 27 27 27 27 27 27 27 27 27 27 4f 6a 76 75 7b 7e  } 
	$revdns_string26 = { 39 24 25 2a 2b 28 29 2e 2f 2c 2d 32 33 58 7c 67 65 68 6c  } 
	$xordns_string27 = { 38 26 26 26 26 26 26 26 26 26 26 26 26 4e 6b 77 74 7a 7f  } 
	$revdns_string27 = { 38 27 24 25 2a 2b 28 29 2e 2f 2c 2d 32 5b 7d 60 64 6b 6d  } 
	$xordns_string28 = { 3f 21 21 21 21 21 21 21 21 21 21 21 21 49 6c 70 73 7d 78  } 
	$revdns_string28 = { 3f 26 27 24 25 2a 2b 28 29 2e 2f 2c 2d 5a 7e 61 63 6a 6e  } 
	$xordns_string29 = { 3e 20 20 20 20 20 20 20 20 20 20 20 20 48 6d 71 72 7c 79  } 
	$revdns_string29 = { 3e 21 26 27 24 25 2a 2b 28 29 2e 2f 2c 45 7f 62 62 6d 6f  } 
	$xordns_string30 = { 3d 23 23 23 23 23 23 23 23 23 23 23 23 4b 6e 72 71 7f 7a  } 
	$revdns_string30 = { 3d 20 21 26 27 24 25 2a 2b 28 29 2e 2f 44 60 63 61 6c 68  } 
	$xordns_string31 = { 3c 22 22 22 22 22 22 22 22 22 22 22 22 4a 6f 73 70 7e 7b  } 
	$revdns_string31 = { 3c 23 20 21 26 27 24 25 2a 2b 28 29 2e 47 61 7c 60 6f 69  } 
	$xordns_string32 = { 03 1d 1d 1d 1d 1d 1d 1d 1d 1d 1d 1d 1d 75 50 4c 4f 41 44  } 
	$revdns_string32 = { 03 22 23 20 21 26 27 24 25 2a 2b 28 29 46 62 7d 7f 6e 6a  } 
	$xordns_string33 = { 02 1c 1c 1c 1c 1c 1c 1c 1c 1c 1c 1c 1c 74 51 4d 4e 40 45  } 
	$revdns_string33 = { 02 1d 22 23 20 21 26 27 24 25 2a 2b 28 41 63 7e 7e 71 6b  } 
	$xordns_string34 = { 01 1f 1f 1f 1f 1f 1f 1f 1f 1f 1f 1f 1f 77 52 4e 4d 43 46  } 
	$revdns_string34 = { 01 1c 1d 22 23 20 21 26 27 24 25 2a 2b 40 64 7f 7d 70 74  } 
	$xordns_string35 = { 00 1e 1e 1e 1e 1e 1e 1e 1e 1e 1e 1e 1e 76 53 4f 4c 42 47  } 
	$revdns_string35 = { 00 1f 1c 1d 22 23 20 21 26 27 24 25 2a 43 65 78 7c 73 75  } 
	$xordns_string36 = { 07 19 19 19 19 19 19 19 19 19 19 19 19 71 54 48 4b 45 40  } 
	$revdns_string36 = { 07 1e 1f 1c 1d 22 23 20 21 26 27 24 25 42 66 79 7b 72 76  } 
	$xordns_string37 = { 06 18 18 18 18 18 18 18 18 18 18 18 18 70 55 49 4a 44 41  } 
	$revdns_string37 = { 06 19 1e 1f 1c 1d 22 23 20 21 26 27 24 4d 67 7a 7a 75 77  } 
	$xordns_string38 = { 05 1b 1b 1b 1b 1b 1b 1b 1b 1b 1b 1b 1b 73 56 4a 49 47 42  } 
	$revdns_string38 = { 05 18 19 1e 1f 1c 1d 22 23 20 21 26 27 4c 68 7b 79 74 70  } 
	$xordns_string39 = { 04 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 72 57 4b 48 46 43  } 
	$revdns_string39 = { 04 1b 18 19 1e 1f 1c 1d 22 23 20 21 26 4f 69 74 78 77 71  } 
	$xordns_string40 = { 0b 15 15 15 15 15 15 15 15 15 15 15 15 7d 58 44 47 49 4c  } 
	$revdns_string40 = { 0b 1a 1b 18 19 1e 1f 1c 1d 22 23 20 21 4e 6a 75 77 76 72  } 
	$xordns_string41 = { 0a 14 14 14 14 14 14 14 14 14 14 14 14 7c 59 45 46 48 4d  } 
	$revdns_string41 = { 0a 15 1a 1b 18 19 1e 1f 1c 1d 22 23 20 49 6b 76 76 79 73  } 
	$xordns_string42 = { 09 17 17 17 17 17 17 17 17 17 17 17 17 7f 5a 46 45 4b 4e  } 
	$revdns_string42 = { 09 14 15 1a 1b 18 19 1e 1f 1c 1d 22 23 48 6c 77 75 78 7c  } 
	$xordns_string43 = { 08 16 16 16 16 16 16 16 16 16 16 16 16 7e 5b 47 44 4a 4f  } 
	$revdns_string43 = { 08 17 14 15 1a 1b 18 19 1e 1f 1c 1d 22 4b 6d 70 74 7b 7d  } 
	$xordns_string44 = { 0f 11 11 11 11 11 11 11 11 11 11 11 11 79 5c 40 43 4d 48  } 
	$revdns_string44 = { 0f 16 17 14 15 1a 1b 18 19 1e 1f 1c 1d 4a 6e 71 73 7a 7e  } 
	$xordns_string45 = { 0e 10 10 10 10 10 10 10 10 10 10 10 10 78 5d 41 42 4c 49  } 
	$revdns_string45 = { 0e 11 16 17 14 15 1a 1b 18 19 1e 1f 1c 75 6f 72 72 7d 7f  } 
	$xordns_string46 = { 0d 13 13 13 13 13 13 13 13 13 13 13 13 7b 5e 42 41 4f 4a  } 
	$revdns_string46 = { 0d 10 11 16 17 14 15 1a 1b 18 19 1e 1f 74 50 73 71 7c 78  } 
	$xordns_string47 = { 0c 12 12 12 12 12 12 12 12 12 12 12 12 7a 5f 43 40 4e 4b  } 
	$revdns_string47 = { 0c 13 10 11 16 17 14 15 1a 1b 18 19 1e 77 51 4c 70 7f 79  } 
	$xordns_string48 = { 13 0d 0d 0d 0d 0d 0d 0d 0d 0d 0d 0d 0d 65 40 5c 5f 51 54  } 
	$revdns_string48 = { 13 12 13 10 11 16 17 14 15 1a 1b 18 19 76 52 4d 4f 7e 7a  } 
	$xordns_string49 = { 12 0c 0c 0c 0c 0c 0c 0c 0c 0c 0c 0c 0c 64 41 5d 5e 50 55  } 
	$revdns_string49 = { 12 0d 12 13 10 11 16 17 14 15 1a 1b 18 71 53 4e 4e 41 7b  } 
	$xordns_string50 = { 11 0f 0f 0f 0f 0f 0f 0f 0f 0f 0f 0f 0f 67 42 5e 5d 53 56  } 
	$revdns_string50 = { 11 0c 0d 12 13 10 11 16 17 14 15 1a 1b 70 54 4f 4d 40 44  } 
	$xordns_string51 = { 10 0e 0e 0e 0e 0e 0e 0e 0e 0e 0e 0e 0e 66 43 5f 5c 52 57  } 
	$revdns_string51 = { 10 0f 0c 0d 12 13 10 11 16 17 14 15 1a 73 55 48 4c 43 45  } 
	$xordns_string52 = { 17 09 09 09 09 09 09 09 09 09 09 09 09 61 44 58 5b 55 50  } 
	$revdns_string52 = { 17 0e 0f 0c 0d 12 13 10 11 16 17 14 15 72 56 49 4b 42 46  } 
	$xordns_string53 = { 16 08 08 08 08 08 08 08 08 08 08 08 08 60 45 59 5a 54 51  } 
	$revdns_string53 = { 16 09 0e 0f 0c 0d 12 13 10 11 16 17 14 7d 57 4a 4a 45 47  } 
	$xordns_string54 = { 15 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 63 46 5a 59 57 52  } 
	$revdns_string54 = { 15 08 09 0e 0f 0c 0d 12 13 10 11 16 17 7c 58 4b 49 44 40  } 
	$xordns_string55 = { 14 0a 0a 0a 0a 0a 0a 0a 0a 0a 0a 0a 0a 62 47 5b 58 56 53  } 
	$revdns_string55 = { 14 0b 08 09 0e 0f 0c 0d 12 13 10 11 16 7f 59 44 48 47 41  } 
	$xordns_string56 = { 1b 05 05 05 05 05 05 05 05 05 05 05 05 6d 48 54 57 59 5c  } 
	$revdns_string56 = { 1b 0a 0b 08 09 0e 0f 0c 0d 12 13 10 11 7e 5a 45 47 46 42  } 
	$xordns_string57 = { 1a 04 04 04 04 04 04 04 04 04 04 04 04 6c 49 55 56 58 5d  } 
	$revdns_string57 = { 1a 05 0a 0b 08 09 0e 0f 0c 0d 12 13 10 79 5b 46 46 49 43  } 
	$xordns_string58 = { 19 07 07 07 07 07 07 07 07 07 07 07 07 6f 4a 56 55 5b 5e  } 
	$revdns_string58 = { 19 04 05 0a 0b 08 09 0e 0f 0c 0d 12 13 78 5c 47 45 48 4c  } 
	$xordns_string59 = { 18 06 06 06 06 06 06 06 06 06 06 06 06 6e 4b 57 54 5a 5f  } 
	$revdns_string59 = { 18 07 04 05 0a 0b 08 09 0e 0f 0c 0d 12 7b 5d 40 44 4b 4d  } 
	$xordns_string60 = { 1f 01 01 01 01 01 01 01 01 01 01 01 01 69 4c 50 53 5d 58  } 
	$revdns_string60 = { 1f 06 07 04 05 0a 0b 08 09 0e 0f 0c 0d 7a 5e 41 43 4a 4e  } 
	$xordns_string61 = { 1e 00 00 00 00 00 00 00 00 00 00 00 00 68 4d 51 52 5c 59  } 
	$revdns_string61 = { 1e 01 06 07 04 05 0a 0b 08 09 0e 0f 0c 65 5f 42 42 4d 4f  } 
	$xordns_string62 = { 1d 03 03 03 03 03 03 03 03 03 03 03 03 6b 4e 52 51 5f 5a  } 
	$revdns_string62 = { 1d 00 01 06 07 04 05 0a 0b 08 09 0e 0f 64 40 43 41 4c 48  } 
	$xordns_string63 = { 1c 02 02 02 02 02 02 02 02 02 02 02 02 6a 4f 53 50 5e 5b  } 
	$revdns_string63 = { 1c 03 00 01 06 07 04 05 0a 0b 08 09 0e 67 41 5c 40 4f 49  } 
	$xordns_string64 = { 63 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 7d 15 30 2c 2f 21 24  } 
	$revdns_string64 = { 63 02 03 00 01 06 07 04 05 0a 0b 08 09 66 42 5d 5f 4e 4a  } 
	$xordns_string65 = { 62 7c 7c 7c 7c 7c 7c 7c 7c 7c 7c 7c 7c 14 31 2d 2e 20 25  } 
	$revdns_string65 = { 62 7d 02 03 00 01 06 07 04 05 0a 0b 08 61 43 5e 5e 51 4b  } 
	$xordns_string66 = { 61 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 7f 17 32 2e 2d 23 26  } 
	$revdns_string66 = { 61 7c 7d 02 03 00 01 06 07 04 05 0a 0b 60 44 5f 5d 50 54  } 
	$xordns_string67 = { 60 7e 7e 7e 7e 7e 7e 7e 7e 7e 7e 7e 7e 16 33 2f 2c 22 27  } 
	$revdns_string67 = { 60 7f 7c 7d 02 03 00 01 06 07 04 05 0a 63 45 58 5c 53 55  } 
	$xordns_string68 = { 67 79 79 79 79 79 79 79 79 79 79 79 79 11 34 28 2b 25 20  } 
	$revdns_string68 = { 67 7e 7f 7c 7d 02 03 00 01 06 07 04 05 62 46 59 5b 52 56  } 
	$xordns_string69 = { 66 78 78 78 78 78 78 78 78 78 78 78 78 10 35 29 2a 24 21  } 
	$revdns_string69 = { 66 79 7e 7f 7c 7d 02 03 00 01 06 07 04 6d 47 5a 5a 55 57  } 
	$xordns_string70 = { 65 7b 7b 7b 7b 7b 7b 7b 7b 7b 7b 7b 7b 13 36 2a 29 27 22  } 
	$revdns_string70 = { 65 78 79 7e 7f 7c 7d 02 03 00 01 06 07 6c 48 5b 59 54 50  } 
	$xordns_string71 = { 64 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 12 37 2b 28 26 23  } 
	$revdns_string71 = { 64 7b 78 79 7e 7f 7c 7d 02 03 00 01 06 6f 49 54 58 57 51  } 
	$xordns_string72 = { 6b 75 75 75 75 75 75 75 75 75 75 75 75 1d 38 24 27 29 2c  } 
	$revdns_string72 = { 6b 7a 7b 78 79 7e 7f 7c 7d 02 03 00 01 6e 4a 55 57 56 52  } 
	$xordns_string73 = { 6a 74 74 74 74 74 74 74 74 74 74 74 74 1c 39 25 26 28 2d  } 
	$revdns_string73 = { 6a 75 7a 7b 78 79 7e 7f 7c 7d 02 03 00 69 4b 56 56 59 53  } 
	$xordns_string74 = { 69 77 77 77 77 77 77 77 77 77 77 77 77 1f 3a 26 25 2b 2e  } 
	$revdns_string74 = { 69 74 75 7a 7b 78 79 7e 7f 7c 7d 02 03 68 4c 57 55 58 5c  } 
	$xordns_string75 = { 68 76 76 76 76 76 76 76 76 76 76 76 76 1e 3b 27 24 2a 2f  } 
	$revdns_string75 = { 68 77 74 75 7a 7b 78 79 7e 7f 7c 7d 02 6b 4d 50 54 5b 5d  } 
	$xordns_string76 = { 6f 71 71 71 71 71 71 71 71 71 71 71 71 19 3c 20 23 2d 28  } 
	$revdns_string76 = { 6f 76 77 74 75 7a 7b 78 79 7e 7f 7c 7d 6a 4e 51 53 5a 5e  } 
	$xordns_string77 = { 6e 70 70 70 70 70 70 70 70 70 70 70 70 18 3d 21 22 2c 29  } 
	$revdns_string77 = { 6e 71 76 77 74 75 7a 7b 78 79 7e 7f 7c 15 4f 52 52 5d 5f  } 
	$xordns_string78 = { 6d 73 73 73 73 73 73 73 73 73 73 73 73 1b 3e 22 21 2f 2a  } 
	$revdns_string78 = { 6d 70 71 76 77 74 75 7a 7b 78 79 7e 7f 14 30 53 51 5c 58  } 
	$xordns_string79 = { 6c 72 72 72 72 72 72 72 72 72 72 72 72 1a 3f 23 20 2e 2b  } 
	$revdns_string79 = { 6c 73 70 71 76 77 74 75 7a 7b 78 79 7e 17 31 2c 50 5f 59  } 
	$xordns_string80 = { 73 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 05 20 3c 3f 31 34  } 
	$revdns_string80 = { 73 72 73 70 71 76 77 74 75 7a 7b 78 79 16 32 2d 2f 5e 5a  } 
	$xordns_string81 = { 72 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 6c 04 21 3d 3e 30 35  } 
	$revdns_string81 = { 72 6d 72 73 70 71 76 77 74 75 7a 7b 78 11 33 2e 2e 21 5b  } 
	$xordns_string82 = { 71 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 07 22 3e 3d 33 36  } 
	$revdns_string82 = { 71 6c 6d 72 73 70 71 76 77 74 75 7a 7b 10 34 2f 2d 20 24  } 
	$xordns_string83 = { 70 6e 6e 6e 6e 6e 6e 6e 6e 6e 6e 6e 6e 06 23 3f 3c 32 37  } 
	$revdns_string83 = { 70 6f 6c 6d 72 73 70 71 76 77 74 75 7a 13 35 28 2c 23 25  } 
	$xordns_string84 = { 77 69 69 69 69 69 69 69 69 69 69 69 69 01 24 38 3b 35 30  } 
	$revdns_string84 = { 77 6e 6f 6c 6d 72 73 70 71 76 77 74 75 12 36 29 2b 22 26  } 
	$xordns_string85 = { 76 68 68 68 68 68 68 68 68 68 68 68 68 00 25 39 3a 34 31  } 
	$revdns_string85 = { 76 69 6e 6f 6c 6d 72 73 70 71 76 77 74 1d 37 2a 2a 25 27  } 
	$xordns_string86 = { 75 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 03 26 3a 39 37 32  } 
	$revdns_string86 = { 75 68 69 6e 6f 6c 6d 72 73 70 71 76 77 1c 38 2b 29 24 20  } 
	$xordns_string87 = { 74 6a 6a 6a 6a 6a 6a 6a 6a 6a 6a 6a 6a 02 27 3b 38 36 33  } 
	$revdns_string87 = { 74 6b 68 69 6e 6f 6c 6d 72 73 70 71 76 1f 39 24 28 27 21  } 
	$xordns_string88 = { 7b 65 65 65 65 65 65 65 65 65 65 65 65 0d 28 34 37 39 3c  } 
	$revdns_string88 = { 7b 6a 6b 68 69 6e 6f 6c 6d 72 73 70 71 1e 3a 25 27 26 22  } 
	$xordns_string89 = { 7a 64 64 64 64 64 64 64 64 64 64 64 64 0c 29 35 36 38 3d  } 
	$revdns_string89 = { 7a 65 6a 6b 68 69 6e 6f 6c 6d 72 73 70 19 3b 26 26 29 23  } 
	$xordns_string90 = { 79 67 67 67 67 67 67 67 67 67 67 67 67 0f 2a 36 35 3b 3e  } 
	$revdns_string90 = { 79 64 65 6a 6b 68 69 6e 6f 6c 6d 72 73 18 3c 27 25 28 2c  } 
	$xordns_string91 = { 78 66 66 66 66 66 66 66 66 66 66 66 66 0e 2b 37 34 3a 3f  } 
	$revdns_string91 = { 78 67 64 65 6a 6b 68 69 6e 6f 6c 6d 72 1b 3d 20 24 2b 2d  } 
	$xordns_string92 = { 7f 61 61 61 61 61 61 61 61 61 61 61 61 09 2c 30 33 3d 38  } 
	$revdns_string92 = { 7f 66 67 64 65 6a 6b 68 69 6e 6f 6c 6d 1a 3e 21 23 2a 2e  } 
	$xordns_string93 = { 7e 60 60 60 60 60 60 60 60 60 60 60 60 08 2d 31 32 3c 39  } 
	$revdns_string93 = { 7e 61 66 67 64 65 6a 6b 68 69 6e 6f 6c 05 3f 22 22 2d 2f  } 
	$xordns_string94 = { 7d 63 63 63 63 63 63 63 63 63 63 63 63 0b 2e 32 31 3f 3a  } 
	$revdns_string94 = { 7d 60 61 66 67 64 65 6a 6b 68 69 6e 6f 04 20 23 21 2c 28  } 
	$xordns_string95 = { 7c 62 62 62 62 62 62 62 62 62 62 62 62 0a 2f 33 30 3e 3b  } 
	$revdns_string95 = { 7c 63 60 61 66 67 64 65 6a 6b 68 69 6e 07 21 3c 20 2f 29  } 
	$xordns_string96 = { 43 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 35 10 0c 0f 01 04  } 
	$revdns_string96 = { 43 62 63 60 61 66 67 64 65 6a 6b 68 69 06 22 3d 3f 2e 2a  } 
	$xordns_string97 = { 42 5c 5c 5c 5c 5c 5c 5c 5c 5c 5c 5c 5c 34 11 0d 0e 00 05  } 
	$revdns_string97 = { 42 5d 62 63 60 61 66 67 64 65 6a 6b 68 01 23 3e 3e 31 2b  } 
	$xordns_string98 = { 41 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 37 12 0e 0d 03 06  } 
	$revdns_string98 = { 41 5c 5d 62 63 60 61 66 67 64 65 6a 6b 00 24 3f 3d 30 34  } 
	$xordns_string99 = { 40 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 5e 36 13 0f 0c 02 07  } 
	$revdns_string99 = { 40 5f 5c 5d 62 63 60 61 66 67 64 65 6a 03 25 38 3c 33 35  } 
	$xordns_string100 = { 47 59 59 59 59 59 59 59 59 59 59 59 59 31 14 08 0b 05 00  } 
	$revdns_string100 = { 47 5e 5f 5c 5d 62 63 60 61 66 67 64 65 02 26 39 3b 32 36  } 
	$xordns_string101 = { 46 58 58 58 58 58 58 58 58 58 58 58 58 30 15 09 0a 04 01  } 
	$revdns_string101 = { 46 59 5e 5f 5c 5d 62 63 60 61 66 67 64 0d 27 3a 3a 35 37  } 
	$xordns_string102 = { 45 5b 5b 5b 5b 5b 5b 5b 5b 5b 5b 5b 5b 33 16 0a 09 07 02  } 
	$revdns_string102 = { 45 58 59 5e 5f 5c 5d 62 63 60 61 66 67 0c 28 3b 39 34 30  } 
	$xordns_string103 = { 44 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 32 17 0b 08 06 03  } 
	$revdns_string103 = { 44 5b 58 59 5e 5f 5c 5d 62 63 60 61 66 0f 29 34 38 37 31  } 
	$xordns_string104 = { 4b 55 55 55 55 55 55 55 55 55 55 55 55 3d 18 04 07 09 0c  } 
	$revdns_string104 = { 4b 5a 5b 58 59 5e 5f 5c 5d 62 63 60 61 0e 2a 35 37 36 32  } 
	$xordns_string105 = { 4a 54 54 54 54 54 54 54 54 54 54 54 54 3c 19 05 06 08 0d  } 
	$revdns_string105 = { 4a 55 5a 5b 58 59 5e 5f 5c 5d 62 63 60 09 2b 36 36 39 33  } 
	$xordns_string106 = { 49 57 57 57 57 57 57 57 57 57 57 57 57 3f 1a 06 05 0b 0e  } 
	$revdns_string106 = { 49 54 55 5a 5b 58 59 5e 5f 5c 5d 62 63 08 2c 37 35 38 3c  } 
	$xordns_string107 = { 48 56 56 56 56 56 56 56 56 56 56 56 56 3e 1b 07 04 0a 0f  } 
	$revdns_string107 = { 48 57 54 55 5a 5b 58 59 5e 5f 5c 5d 62 0b 2d 30 34 3b 3d  } 
	$xordns_string108 = { 4f 51 51 51 51 51 51 51 51 51 51 51 51 39 1c 00 03 0d 08  } 
	$revdns_string108 = { 4f 56 57 54 55 5a 5b 58 59 5e 5f 5c 5d 0a 2e 31 33 3a 3e  } 
	$xordns_string109 = { 4e 50 50 50 50 50 50 50 50 50 50 50 50 38 1d 01 02 0c 09  } 
	$revdns_string109 = { 4e 51 56 57 54 55 5a 5b 58 59 5e 5f 5c 35 2f 32 32 3d 3f  } 
	$xordns_string110 = { 4d 53 53 53 53 53 53 53 53 53 53 53 53 3b 1e 02 01 0f 0a  } 
	$revdns_string110 = { 4d 50 51 56 57 54 55 5a 5b 58 59 5e 5f 34 10 33 31 3c 38  } 
	$xordns_string111 = { 4c 52 52 52 52 52 52 52 52 52 52 52 52 3a 1f 03 00 0e 0b  } 
	$revdns_string111 = { 4c 53 50 51 56 57 54 55 5a 5b 58 59 5e 37 11 0c 30 3f 39  } 
	$xordns_string112 = { 53 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 25 00 1c 1f 11 14  } 
	$revdns_string112 = { 53 52 53 50 51 56 57 54 55 5a 5b 58 59 36 12 0d 0f 3e 3a  } 
	$xordns_string113 = { 52 4c 4c 4c 4c 4c 4c 4c 4c 4c 4c 4c 4c 24 01 1d 1e 10 15  } 
	$revdns_string113 = { 52 4d 52 53 50 51 56 57 54 55 5a 5b 58 31 13 0e 0e 01 3b  } 
	$xordns_string114 = { 51 4f 4f 4f 4f 4f 4f 4f 4f 4f 4f 4f 4f 27 02 1e 1d 13 16  } 
	$revdns_string114 = { 51 4c 4d 52 53 50 51 56 57 54 55 5a 5b 30 14 0f 0d 00 04  } 
	$xordns_string115 = { 50 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 4e 26 03 1f 1c 12 17  } 
	$revdns_string115 = { 50 4f 4c 4d 52 53 50 51 56 57 54 55 5a 33 15 08 0c 03 05  } 
	$xordns_string116 = { 57 49 49 49 49 49 49 49 49 49 49 49 49 21 04 18 1b 15 10  } 
	$revdns_string116 = { 57 4e 4f 4c 4d 52 53 50 51 56 57 54 55 32 16 09 0b 02 06  } 
	$xordns_string117 = { 56 48 48 48 48 48 48 48 48 48 48 48 48 20 05 19 1a 14 11  } 
	$revdns_string117 = { 56 49 4e 4f 4c 4d 52 53 50 51 56 57 54 3d 17 0a 0a 05 07  } 
	$xordns_string118 = { 55 4b 4b 4b 4b 4b 4b 4b 4b 4b 4b 4b 4b 23 06 1a 19 17 12  } 
	$revdns_string118 = { 55 48 49 4e 4f 4c 4d 52 53 50 51 56 57 3c 18 0b 09 04 00  } 
	$xordns_string119 = { 54 4a 4a 4a 4a 4a 4a 4a 4a 4a 4a 4a 4a 22 07 1b 18 16 13  } 
	$revdns_string119 = { 54 4b 48 49 4e 4f 4c 4d 52 53 50 51 56 3f 19 04 08 07 01  } 
	$xordns_string120 = { 5b 45 45 45 45 45 45 45 45 45 45 45 45 2d 08 14 17 19 1c  } 
	$revdns_string120 = { 5b 4a 4b 48 49 4e 4f 4c 4d 52 53 50 51 3e 1a 05 07 06 02  } 
	$xordns_string121 = { 5a 44 44 44 44 44 44 44 44 44 44 44 44 2c 09 15 16 18 1d  } 
	$revdns_string121 = { 5a 45 4a 4b 48 49 4e 4f 4c 4d 52 53 50 39 1b 06 06 09 03  } 
	$xordns_string122 = { 59 47 47 47 47 47 47 47 47 47 47 47 47 2f 0a 16 15 1b 1e  } 
	$revdns_string122 = { 59 44 45 4a 4b 48 49 4e 4f 4c 4d 52 53 38 1c 07 05 08 0c  } 
	$xordns_string123 = { 58 46 46 46 46 46 46 46 46 46 46 46 46 2e 0b 17 14 1a 1f  } 
	$revdns_string123 = { 58 47 44 45 4a 4b 48 49 4e 4f 4c 4d 52 3b 1d 00 04 0b 0d  } 
	$xordns_string124 = { 5f 41 41 41 41 41 41 41 41 41 41 41 41 29 0c 10 13 1d 18  } 
	$revdns_string124 = { 5f 46 47 44 45 4a 4b 48 49 4e 4f 4c 4d 3a 1e 01 03 0a 0e  } 
	$xordns_string125 = { 5e 40 40 40 40 40 40 40 40 40 40 40 40 28 0d 11 12 1c 19  } 
	$revdns_string125 = { 5e 41 46 47 44 45 4a 4b 48 49 4e 4f 4c 25 1f 02 02 0d 0f  } 
	$xordns_string126 = { 5d 43 43 43 43 43 43 43 43 43 43 43 43 2b 0e 12 11 1f 1a  } 
	$revdns_string126 = { 5d 40 41 46 47 44 45 4a 4b 48 49 4e 4f 24 00 03 01 0c 08  } 
	$xordns_string127 = { 5c 42 42 42 42 42 42 42 42 42 42 42 42 2a 0f 13 10 1e 1b  } 
	$revdns_string127 = { 5c 43 40 41 46 47 44 45 4a 4b 48 49 4e 27 01 1c 00 0f 09  } 
	$xordns_string128 = { a3 bd bd bd bd bd bd bd bd bd bd bd bd d5 f0 ec ef e1 e4  } 
	$revdns_string128 = { a3 42 43 40 41 46 47 44 45 4a 4b 48 49 26 02 1d 1f 0e 0a  } 
	$xordns_string129 = { a2 bc bc bc bc bc bc bc bc bc bc bc bc d4 f1 ed ee e0 e5  } 
	$revdns_string129 = { a2 bd 42 43 40 41 46 47 44 45 4a 4b 48 21 03 1e 1e 11 0b  } 
	$xordns_string130 = { a1 bf bf bf bf bf bf bf bf bf bf bf bf d7 f2 ee ed e3 e6  } 
	$revdns_string130 = { a1 bc bd 42 43 40 41 46 47 44 45 4a 4b 20 04 1f 1d 10 14  } 
	$xordns_string131 = { a0 be be be be be be be be be be be be d6 f3 ef ec e2 e7  } 
	$revdns_string131 = { a0 bf bc bd 42 43 40 41 46 47 44 45 4a 23 05 18 1c 13 15  } 
	$xordns_string132 = { a7 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 b9 d1 f4 e8 eb e5 e0  } 
	$revdns_string132 = { a7 be bf bc bd 42 43 40 41 46 47 44 45 22 06 19 1b 12 16  } 
	$xordns_string133 = { a6 b8 b8 b8 b8 b8 b8 b8 b8 b8 b8 b8 b8 d0 f5 e9 ea e4 e1  } 
	$revdns_string133 = { a6 b9 be bf bc bd 42 43 40 41 46 47 44 2d 07 1a 1a 15 17  } 
	$xordns_string134 = { a5 bb bb bb bb bb bb bb bb bb bb bb bb d3 f6 ea e9 e7 e2  } 
	$revdns_string134 = { a5 b8 b9 be bf bc bd 42 43 40 41 46 47 2c 08 1b 19 14 10  } 
	$xordns_string135 = { a4 ba ba ba ba ba ba ba ba ba ba ba ba d2 f7 eb e8 e6 e3  } 
	$revdns_string135 = { a4 bb b8 b9 be bf bc bd 42 43 40 41 46 2f 09 14 18 17 11  } 
	$xordns_string136 = { ab b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 b5 dd f8 e4 e7 e9 ec  } 
	$revdns_string136 = { ab ba bb b8 b9 be bf bc bd 42 43 40 41 2e 0a 15 17 16 12  } 
	$xordns_string137 = { aa b4 b4 b4 b4 b4 b4 b4 b4 b4 b4 b4 b4 dc f9 e5 e6 e8 ed  } 
	$revdns_string137 = { aa b5 ba bb b8 b9 be bf bc bd 42 43 40 29 0b 16 16 19 13  } 
	$xordns_string138 = { a9 b7 b7 b7 b7 b7 b7 b7 b7 b7 b7 b7 b7 df fa e6 e5 eb ee  } 
	$revdns_string138 = { a9 b4 b5 ba bb b8 b9 be bf bc bd 42 43 28 0c 17 15 18 1c  } 
	$xordns_string139 = { a8 b6 b6 b6 b6 b6 b6 b6 b6 b6 b6 b6 b6 de fb e7 e4 ea ef  } 
	$revdns_string139 = { a8 b7 b4 b5 ba bb b8 b9 be bf bc bd 42 2b 0d 10 14 1b 1d  } 
	$xordns_string140 = { af b1 b1 b1 b1 b1 b1 b1 b1 b1 b1 b1 b1 d9 fc e0 e3 ed e8  } 
	$revdns_string140 = { af b6 b7 b4 b5 ba bb b8 b9 be bf bc bd 2a 0e 11 13 1a 1e  } 
	$xordns_string141 = { ae b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 d8 fd e1 e2 ec e9  } 
	$revdns_string141 = { ae b1 b6 b7 b4 b5 ba bb b8 b9 be bf bc d5 0f 12 12 1d 1f  } 
	$xordns_string142 = { ad b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 b3 db fe e2 e1 ef ea  } 
	$revdns_string142 = { ad b0 b1 b6 b7 b4 b5 ba bb b8 b9 be bf d4 f0 13 11 1c 18  } 
	$xordns_string143 = { ac b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 b2 da ff e3 e0 ee eb  } 
	$revdns_string143 = { ac b3 b0 b1 b6 b7 b4 b5 ba bb b8 b9 be d7 f1 ec 10 1f 19  } 
	$xordns_string144 = { b3 ad ad ad ad ad ad ad ad ad ad ad ad c5 e0 fc ff f1 f4  } 
	$revdns_string144 = { b3 b2 b3 b0 b1 b6 b7 b4 b5 ba bb b8 b9 d6 f2 ed ef 1e 1a  } 
	$xordns_string145 = { b2 ac ac ac ac ac ac ac ac ac ac ac ac c4 e1 fd fe f0 f5  } 
	$revdns_string145 = { b2 ad b2 b3 b0 b1 b6 b7 b4 b5 ba bb b8 d1 f3 ee ee e1 1b  } 
	$xordns_string146 = { b1 af af af af af af af af af af af af c7 e2 fe fd f3 f6  } 
	$revdns_string146 = { b1 ac ad b2 b3 b0 b1 b6 b7 b4 b5 ba bb d0 f4 ef ed e0 e4  } 
	$xordns_string147 = { b0 ae ae ae ae ae ae ae ae ae ae ae ae c6 e3 ff fc f2 f7  } 
	$revdns_string147 = { b0 af ac ad b2 b3 b0 b1 b6 b7 b4 b5 ba d3 f5 e8 ec e3 e5  } 
	$xordns_string148 = { b7 a9 a9 a9 a9 a9 a9 a9 a9 a9 a9 a9 a9 c1 e4 f8 fb f5 f0  } 
	$revdns_string148 = { b7 ae af ac ad b2 b3 b0 b1 b6 b7 b4 b5 d2 f6 e9 eb e2 e6  } 
	$xordns_string149 = { b6 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 c0 e5 f9 fa f4 f1  } 
	$revdns_string149 = { b6 a9 ae af ac ad b2 b3 b0 b1 b6 b7 b4 dd f7 ea ea e5 e7  } 
	$xordns_string150 = { b5 ab ab ab ab ab ab ab ab ab ab ab ab c3 e6 fa f9 f7 f2  } 
	$revdns_string150 = { b5 a8 a9 ae af ac ad b2 b3 b0 b1 b6 b7 dc f8 eb e9 e4 e0  } 
	$xordns_string151 = { b4 aa aa aa aa aa aa aa aa aa aa aa aa c2 e7 fb f8 f6 f3  } 
	$revdns_string151 = { b4 ab a8 a9 ae af ac ad b2 b3 b0 b1 b6 df f9 e4 e8 e7 e1  } 
	$xordns_string152 = { bb a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 cd e8 f4 f7 f9 fc  } 
	$revdns_string152 = { bb aa ab a8 a9 ae af ac ad b2 b3 b0 b1 de fa e5 e7 e6 e2  } 
	$xordns_string153 = { ba a4 a4 a4 a4 a4 a4 a4 a4 a4 a4 a4 a4 cc e9 f5 f6 f8 fd  } 
	$revdns_string153 = { ba a5 aa ab a8 a9 ae af ac ad b2 b3 b0 d9 fb e6 e6 e9 e3  } 
	$xordns_string154 = { b9 a7 a7 a7 a7 a7 a7 a7 a7 a7 a7 a7 a7 cf ea f6 f5 fb fe  } 
	$revdns_string154 = { b9 a4 a5 aa ab a8 a9 ae af ac ad b2 b3 d8 fc e7 e5 e8 ec  } 
	$xordns_string155 = { b8 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 ce eb f7 f4 fa ff  } 
	$revdns_string155 = { b8 a7 a4 a5 aa ab a8 a9 ae af ac ad b2 db fd e0 e4 eb ed  } 
	$xordns_string156 = { bf a1 a1 a1 a1 a1 a1 a1 a1 a1 a1 a1 a1 c9 ec f0 f3 fd f8  } 
	$revdns_string156 = { bf a6 a7 a4 a5 aa ab a8 a9 ae af ac ad da fe e1 e3 ea ee  } 
	$xordns_string157 = { be a0 a0 a0 a0 a0 a0 a0 a0 a0 a0 a0 a0 c8 ed f1 f2 fc f9  } 
	$revdns_string157 = { be a1 a6 a7 a4 a5 aa ab a8 a9 ae af ac c5 ff e2 e2 ed ef  } 
	$xordns_string158 = { bd a3 a3 a3 a3 a3 a3 a3 a3 a3 a3 a3 a3 cb ee f2 f1 ff fa  } 
	$revdns_string158 = { bd a0 a1 a6 a7 a4 a5 aa ab a8 a9 ae af c4 e0 e3 e1 ec e8  } 
	$xordns_string159 = { bc a2 a2 a2 a2 a2 a2 a2 a2 a2 a2 a2 a2 ca ef f3 f0 fe fb  } 
	$revdns_string159 = { bc a3 a0 a1 a6 a7 a4 a5 aa ab a8 a9 ae c7 e1 fc e0 ef e9  } 
	$xordns_string160 = { 83 9d 9d 9d 9d 9d 9d 9d 9d 9d 9d 9d 9d f5 d0 cc cf c1 c4  } 
	$revdns_string160 = { 83 a2 a3 a0 a1 a6 a7 a4 a5 aa ab a8 a9 c6 e2 fd ff ee ea  } 
	$xordns_string161 = { 82 9c 9c 9c 9c 9c 9c 9c 9c 9c 9c 9c 9c f4 d1 cd ce c0 c5  } 
	$revdns_string161 = { 82 9d a2 a3 a0 a1 a6 a7 a4 a5 aa ab a8 c1 e3 fe fe f1 eb  } 
	$xordns_string162 = { 81 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f f7 d2 ce cd c3 c6  } 
	$revdns_string162 = { 81 9c 9d a2 a3 a0 a1 a6 a7 a4 a5 aa ab c0 e4 ff fd f0 f4  } 
	$xordns_string163 = { 80 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e f6 d3 cf cc c2 c7  } 
	$revdns_string163 = { 80 9f 9c 9d a2 a3 a0 a1 a6 a7 a4 a5 aa c3 e5 f8 fc f3 f5  } 
	$xordns_string164 = { 87 99 99 99 99 99 99 99 99 99 99 99 99 f1 d4 c8 cb c5 c0  } 
	$revdns_string164 = { 87 9e 9f 9c 9d a2 a3 a0 a1 a6 a7 a4 a5 c2 e6 f9 fb f2 f6  } 
	$xordns_string165 = { 86 98 98 98 98 98 98 98 98 98 98 98 98 f0 d5 c9 ca c4 c1  } 
	$revdns_string165 = { 86 99 9e 9f 9c 9d a2 a3 a0 a1 a6 a7 a4 cd e7 fa fa f5 f7  } 
	$xordns_string166 = { 85 9b 9b 9b 9b 9b 9b 9b 9b 9b 9b 9b 9b f3 d6 ca c9 c7 c2  } 
	$revdns_string166 = { 85 98 99 9e 9f 9c 9d a2 a3 a0 a1 a6 a7 cc e8 fb f9 f4 f0  } 
	$xordns_string167 = { 84 9a 9a 9a 9a 9a 9a 9a 9a 9a 9a 9a 9a f2 d7 cb c8 c6 c3  } 
	$revdns_string167 = { 84 9b 98 99 9e 9f 9c 9d a2 a3 a0 a1 a6 cf e9 f4 f8 f7 f1  } 
	$xordns_string168 = { 8b 95 95 95 95 95 95 95 95 95 95 95 95 fd d8 c4 c7 c9 cc  } 
	$revdns_string168 = { 8b 9a 9b 98 99 9e 9f 9c 9d a2 a3 a0 a1 ce ea f5 f7 f6 f2  } 
	$xordns_string169 = { 8a 94 94 94 94 94 94 94 94 94 94 94 94 fc d9 c5 c6 c8 cd  } 
	$revdns_string169 = { 8a 95 9a 9b 98 99 9e 9f 9c 9d a2 a3 a0 c9 eb f6 f6 f9 f3  } 
	$xordns_string170 = { 89 97 97 97 97 97 97 97 97 97 97 97 97 ff da c6 c5 cb ce  } 
	$revdns_string170 = { 89 94 95 9a 9b 98 99 9e 9f 9c 9d a2 a3 c8 ec f7 f5 f8 fc  } 
	$xordns_string171 = { 88 96 96 96 96 96 96 96 96 96 96 96 96 fe db c7 c4 ca cf  } 
	$revdns_string171 = { 88 97 94 95 9a 9b 98 99 9e 9f 9c 9d a2 cb ed f0 f4 fb fd  } 
	$xordns_string172 = { 8f 91 91 91 91 91 91 91 91 91 91 91 91 f9 dc c0 c3 cd c8  } 
	$revdns_string172 = { 8f 96 97 94 95 9a 9b 98 99 9e 9f 9c 9d ca ee f1 f3 fa fe  } 
	$xordns_string173 = { 8e 90 90 90 90 90 90 90 90 90 90 90 90 f8 dd c1 c2 cc c9  } 
	$revdns_string173 = { 8e 91 96 97 94 95 9a 9b 98 99 9e 9f 9c f5 ef f2 f2 fd ff  } 
	$xordns_string174 = { 8d 93 93 93 93 93 93 93 93 93 93 93 93 fb de c2 c1 cf ca  } 
	$revdns_string174 = { 8d 90 91 96 97 94 95 9a 9b 98 99 9e 9f f4 d0 f3 f1 fc f8  } 
	$xordns_string175 = { 8c 92 92 92 92 92 92 92 92 92 92 92 92 fa df c3 c0 ce cb  } 
	$revdns_string175 = { 8c 93 90 91 96 97 94 95 9a 9b 98 99 9e f7 d1 cc f0 ff f9  } 
	$xordns_string176 = { 93 8d 8d 8d 8d 8d 8d 8d 8d 8d 8d 8d 8d e5 c0 dc df d1 d4  } 
	$revdns_string176 = { 93 92 93 90 91 96 97 94 95 9a 9b 98 99 f6 d2 cd cf fe fa  } 
	$xordns_string177 = { 92 8c 8c 8c 8c 8c 8c 8c 8c 8c 8c 8c 8c e4 c1 dd de d0 d5  } 
	$revdns_string177 = { 92 8d 92 93 90 91 96 97 94 95 9a 9b 98 f1 d3 ce ce c1 fb  } 
	$xordns_string178 = { 91 8f 8f 8f 8f 8f 8f 8f 8f 8f 8f 8f 8f e7 c2 de dd d3 d6  } 
	$revdns_string178 = { 91 8c 8d 92 93 90 91 96 97 94 95 9a 9b f0 d4 cf cd c0 c4  } 
	$xordns_string179 = { 90 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e 8e e6 c3 df dc d2 d7  } 
	$revdns_string179 = { 90 8f 8c 8d 92 93 90 91 96 97 94 95 9a f3 d5 c8 cc c3 c5  } 
	$xordns_string180 = { 97 89 89 89 89 89 89 89 89 89 89 89 89 e1 c4 d8 db d5 d0  } 
	$revdns_string180 = { 97 8e 8f 8c 8d 92 93 90 91 96 97 94 95 f2 d6 c9 cb c2 c6  } 
	$xordns_string181 = { 96 88 88 88 88 88 88 88 88 88 88 88 88 e0 c5 d9 da d4 d1  } 
	$revdns_string181 = { 96 89 8e 8f 8c 8d 92 93 90 91 96 97 94 fd d7 ca ca c5 c7  } 
	$xordns_string182 = { 95 8b 8b 8b 8b 8b 8b 8b 8b 8b 8b 8b 8b e3 c6 da d9 d7 d2  } 
	$revdns_string182 = { 95 88 89 8e 8f 8c 8d 92 93 90 91 96 97 fc d8 cb c9 c4 c0  } 
	$xordns_string183 = { 94 8a 8a 8a 8a 8a 8a 8a 8a 8a 8a 8a 8a e2 c7 db d8 d6 d3  } 
	$revdns_string183 = { 94 8b 88 89 8e 8f 8c 8d 92 93 90 91 96 ff d9 c4 c8 c7 c1  } 
	$xordns_string184 = { 9b 85 85 85 85 85 85 85 85 85 85 85 85 ed c8 d4 d7 d9 dc  } 
	$revdns_string184 = { 9b 8a 8b 88 89 8e 8f 8c 8d 92 93 90 91 fe da c5 c7 c6 c2  } 
	$xordns_string185 = { 9a 84 84 84 84 84 84 84 84 84 84 84 84 ec c9 d5 d6 d8 dd  } 
	$revdns_string185 = { 9a 85 8a 8b 88 89 8e 8f 8c 8d 92 93 90 f9 db c6 c6 c9 c3  } 
	$xordns_string186 = { 99 87 87 87 87 87 87 87 87 87 87 87 87 ef ca d6 d5 db de  } 
	$revdns_string186 = { 99 84 85 8a 8b 88 89 8e 8f 8c 8d 92 93 f8 dc c7 c5 c8 cc  } 
	$xordns_string187 = { 98 86 86 86 86 86 86 86 86 86 86 86 86 ee cb d7 d4 da df  } 
	$revdns_string187 = { 98 87 84 85 8a 8b 88 89 8e 8f 8c 8d 92 fb dd c0 c4 cb cd  } 
	$xordns_string188 = { 9f 81 81 81 81 81 81 81 81 81 81 81 81 e9 cc d0 d3 dd d8  } 
	$revdns_string188 = { 9f 86 87 84 85 8a 8b 88 89 8e 8f 8c 8d fa de c1 c3 ca ce  } 
	$xordns_string189 = { 9e 80 80 80 80 80 80 80 80 80 80 80 80 e8 cd d1 d2 dc d9  } 
	$revdns_string189 = { 9e 81 86 87 84 85 8a 8b 88 89 8e 8f 8c e5 df c2 c2 cd cf  } 
	$xordns_string190 = { 9d 83 83 83 83 83 83 83 83 83 83 83 83 eb ce d2 d1 df da  } 
	$revdns_string190 = { 9d 80 81 86 87 84 85 8a 8b 88 89 8e 8f e4 c0 c3 c1 cc c8  } 
	$xordns_string191 = { 9c 82 82 82 82 82 82 82 82 82 82 82 82 ea cf d3 d0 de db  } 
	$revdns_string191 = { 9c 83 80 81 86 87 84 85 8a 8b 88 89 8e e7 c1 dc c0 cf c9  } 
	$xordns_string192 = { e3 fd fd fd fd fd fd fd fd fd fd fd fd 95 b0 ac af a1 a4  } 
	$revdns_string192 = { e3 82 83 80 81 86 87 84 85 8a 8b 88 89 e6 c2 dd df ce ca  } 
	$xordns_string193 = { e2 fc fc fc fc fc fc fc fc fc fc fc fc 94 b1 ad ae a0 a5  } 
	$revdns_string193 = { e2 fd 82 83 80 81 86 87 84 85 8a 8b 88 e1 c3 de de d1 cb  } 
	$xordns_string194 = { e1 ff ff ff ff ff ff ff ff ff ff ff ff 97 b2 ae ad a3 a6  } 
	$revdns_string194 = { e1 fc fd 82 83 80 81 86 87 84 85 8a 8b e0 c4 df dd d0 d4  } 
	$xordns_string195 = { e0 fe fe fe fe fe fe fe fe fe fe fe fe 96 b3 af ac a2 a7  } 
	$revdns_string195 = { e0 ff fc fd 82 83 80 81 86 87 84 85 8a e3 c5 d8 dc d3 d5  } 
	$xordns_string196 = { e7 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 91 b4 a8 ab a5 a0  } 
	$revdns_string196 = { e7 fe ff fc fd 82 83 80 81 86 87 84 85 e2 c6 d9 db d2 d6  } 
	$xordns_string197 = { e6 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 90 b5 a9 aa a4 a1  } 
	$revdns_string197 = { e6 f9 fe ff fc fd 82 83 80 81 86 87 84 ed c7 da da d5 d7  } 
	$xordns_string198 = { e5 fb fb fb fb fb fb fb fb fb fb fb fb 93 b6 aa a9 a7 a2  } 
	$revdns_string198 = { e5 f8 f9 fe ff fc fd 82 83 80 81 86 87 ec c8 db d9 d4 d0  } 
	$xordns_string199 = { e4 fa fa fa fa fa fa fa fa fa fa fa fa 92 b7 ab a8 a6 a3  } 
	$revdns_string199 = { e4 fb f8 f9 fe ff fc fd 82 83 80 81 86 ef c9 d4 d8 d7 d1  } 
	$xordns_string200 = { eb f5 f5 f5 f5 f5 f5 f5 f5 f5 f5 f5 f5 9d b8 a4 a7 a9 ac  } 
	$revdns_string200 = { eb fa fb f8 f9 fe ff fc fd 82 83 80 81 ee ca d5 d7 d6 d2  } 
	$xordns_string201 = { ea f4 f4 f4 f4 f4 f4 f4 f4 f4 f4 f4 f4 9c b9 a5 a6 a8 ad  } 
	$revdns_string201 = { ea f5 fa fb f8 f9 fe ff fc fd 82 83 80 e9 cb d6 d6 d9 d3  } 
	$xordns_string202 = { e9 f7 f7 f7 f7 f7 f7 f7 f7 f7 f7 f7 f7 9f ba a6 a5 ab ae  } 
	$revdns_string202 = { e9 f4 f5 fa fb f8 f9 fe ff fc fd 82 83 e8 cc d7 d5 d8 dc  } 
	$xordns_string203 = { e8 f6 f6 f6 f6 f6 f6 f6 f6 f6 f6 f6 f6 9e bb a7 a4 aa af  } 
	$revdns_string203 = { e8 f7 f4 f5 fa fb f8 f9 fe ff fc fd 82 eb cd d0 d4 db dd  } 
	$xordns_string204 = { ef f1 f1 f1 f1 f1 f1 f1 f1 f1 f1 f1 f1 99 bc a0 a3 ad a8  } 
	$revdns_string204 = { ef f6 f7 f4 f5 fa fb f8 f9 fe ff fc fd ea ce d1 d3 da de  } 
	$xordns_string205 = { ee f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 98 bd a1 a2 ac a9  } 
	$revdns_string205 = { ee f1 f6 f7 f4 f5 fa fb f8 f9 fe ff fc 95 cf d2 d2 dd df  } 
	$xordns_string206 = { ed f3 f3 f3 f3 f3 f3 f3 f3 f3 f3 f3 f3 9b be a2 a1 af aa  } 
	$revdns_string206 = { ed f0 f1 f6 f7 f4 f5 fa fb f8 f9 fe ff 94 b0 d3 d1 dc d8  } 
	$xordns_string207 = { ec f2 f2 f2 f2 f2 f2 f2 f2 f2 f2 f2 f2 9a bf a3 a0 ae ab  } 
	$revdns_string207 = { ec f3 f0 f1 f6 f7 f4 f5 fa fb f8 f9 fe 97 b1 ac d0 df d9  } 
	$xordns_string208 = { f3 ed ed ed ed ed ed ed ed ed ed ed ed 85 a0 bc bf b1 b4  } 
	$revdns_string208 = { f3 f2 f3 f0 f1 f6 f7 f4 f5 fa fb f8 f9 96 b2 ad af de da  } 
	$xordns_string209 = { f2 ec ec ec ec ec ec ec ec ec ec ec ec 84 a1 bd be b0 b5  } 
	$revdns_string209 = { f2 ed f2 f3 f0 f1 f6 f7 f4 f5 fa fb f8 91 b3 ae ae a1 db  } 
	$xordns_string210 = { f1 ef ef ef ef ef ef ef ef ef ef ef ef 87 a2 be bd b3 b6  } 
	$revdns_string210 = { f1 ec ed f2 f3 f0 f1 f6 f7 f4 f5 fa fb 90 b4 af ad a0 a4  } 
	$xordns_string211 = { f0 ee ee ee ee ee ee ee ee ee ee ee ee 86 a3 bf bc b2 b7  } 
	$revdns_string211 = { f0 ef ec ed f2 f3 f0 f1 f6 f7 f4 f5 fa 93 b5 a8 ac a3 a5  } 
	$xordns_string212 = { f7 e9 e9 e9 e9 e9 e9 e9 e9 e9 e9 e9 e9 81 a4 b8 bb b5 b0  } 
	$revdns_string212 = { f7 ee ef ec ed f2 f3 f0 f1 f6 f7 f4 f5 92 b6 a9 ab a2 a6  } 
	$xordns_string213 = { f6 e8 e8 e8 e8 e8 e8 e8 e8 e8 e8 e8 e8 80 a5 b9 ba b4 b1  } 
	$revdns_string213 = { f6 e9 ee ef ec ed f2 f3 f0 f1 f6 f7 f4 9d b7 aa aa a5 a7  } 
	$xordns_string214 = { f5 eb eb eb eb eb eb eb eb eb eb eb eb 83 a6 ba b9 b7 b2  } 
	$revdns_string214 = { f5 e8 e9 ee ef ec ed f2 f3 f0 f1 f6 f7 9c b8 ab a9 a4 a0  } 
	$xordns_string215 = { f4 ea ea ea ea ea ea ea ea ea ea ea ea 82 a7 bb b8 b6 b3  } 
	$revdns_string215 = { f4 eb e8 e9 ee ef ec ed f2 f3 f0 f1 f6 9f b9 a4 a8 a7 a1  } 
	$xordns_string216 = { fb e5 e5 e5 e5 e5 e5 e5 e5 e5 e5 e5 e5 8d a8 b4 b7 b9 bc  } 
	$revdns_string216 = { fb ea eb e8 e9 ee ef ec ed f2 f3 f0 f1 9e ba a5 a7 a6 a2  } 
	$xordns_string217 = { fa e4 e4 e4 e4 e4 e4 e4 e4 e4 e4 e4 e4 8c a9 b5 b6 b8 bd  } 
	$revdns_string217 = { fa e5 ea eb e8 e9 ee ef ec ed f2 f3 f0 99 bb a6 a6 a9 a3  } 
	$xordns_string218 = { f9 e7 e7 e7 e7 e7 e7 e7 e7 e7 e7 e7 e7 8f aa b6 b5 bb be  } 
	$revdns_string218 = { f9 e4 e5 ea eb e8 e9 ee ef ec ed f2 f3 98 bc a7 a5 a8 ac  } 
	$xordns_string219 = { f8 e6 e6 e6 e6 e6 e6 e6 e6 e6 e6 e6 e6 8e ab b7 b4 ba bf  } 
	$revdns_string219 = { f8 e7 e4 e5 ea eb e8 e9 ee ef ec ed f2 9b bd a0 a4 ab ad  } 
	$xordns_string220 = { ff e1 e1 e1 e1 e1 e1 e1 e1 e1 e1 e1 e1 89 ac b0 b3 bd b8  } 
	$revdns_string220 = { ff e6 e7 e4 e5 ea eb e8 e9 ee ef ec ed 9a be a1 a3 aa ae  } 
	$xordns_string221 = { fe e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 88 ad b1 b2 bc b9  } 
	$revdns_string221 = { fe e1 e6 e7 e4 e5 ea eb e8 e9 ee ef ec 85 bf a2 a2 ad af  } 
	$xordns_string222 = { fd e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 e3 8b ae b2 b1 bf ba  } 
	$revdns_string222 = { fd e0 e1 e6 e7 e4 e5 ea eb e8 e9 ee ef 84 a0 a3 a1 ac a8  } 
	$xordns_string223 = { fc e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2 8a af b3 b0 be bb  } 
	$revdns_string223 = { fc e3 e0 e1 e6 e7 e4 e5 ea eb e8 e9 ee 87 a1 bc a0 af a9  } 
	$xordns_string224 = { c3 dd dd dd dd dd dd dd dd dd dd dd dd b5 90 8c 8f 81 84  } 
	$revdns_string224 = { c3 e2 e3 e0 e1 e6 e7 e4 e5 ea eb e8 e9 86 a2 bd bf ae aa  } 
	$xordns_string225 = { c2 dc dc dc dc dc dc dc dc dc dc dc dc b4 91 8d 8e 80 85  } 
	$revdns_string225 = { c2 dd e2 e3 e0 e1 e6 e7 e4 e5 ea eb e8 81 a3 be be b1 ab  } 
	$xordns_string226 = { c1 df df df df df df df df df df df df b7 92 8e 8d 83 86  } 
	$revdns_string226 = { c1 dc dd e2 e3 e0 e1 e6 e7 e4 e5 ea eb 80 a4 bf bd b0 b4  } 
	$xordns_string227 = { c0 de de de de de de de de de de de de b6 93 8f 8c 82 87  } 
	$revdns_string227 = { c0 df dc dd e2 e3 e0 e1 e6 e7 e4 e5 ea 83 a5 b8 bc b3 b5  } 
	$xordns_string228 = { c7 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 b1 94 88 8b 85 80  } 
	$revdns_string228 = { c7 de df dc dd e2 e3 e0 e1 e6 e7 e4 e5 82 a6 b9 bb b2 b6  } 
	$xordns_string229 = { c6 d8 d8 d8 d8 d8 d8 d8 d8 d8 d8 d8 d8 b0 95 89 8a 84 81  } 
	$revdns_string229 = { c6 d9 de df dc dd e2 e3 e0 e1 e6 e7 e4 8d a7 ba ba b5 b7  } 
	$xordns_string230 = { c5 db db db db db db db db db db db db b3 96 8a 89 87 82  } 
	$revdns_string230 = { c5 d8 d9 de df dc dd e2 e3 e0 e1 e6 e7 8c a8 bb b9 b4 b0  } 
	$xordns_string231 = { c4 da da da da da da da da da da da da b2 97 8b 88 86 83  } 
	$revdns_string231 = { c4 db d8 d9 de df dc dd e2 e3 e0 e1 e6 8f a9 b4 b8 b7 b1  } 
	$xordns_string232 = { cb d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 bd 98 84 87 89 8c  } 
	$revdns_string232 = { cb da db d8 d9 de df dc dd e2 e3 e0 e1 8e aa b5 b7 b6 b2  } 
	$xordns_string233 = { ca d4 d4 d4 d4 d4 d4 d4 d4 d4 d4 d4 d4 bc 99 85 86 88 8d  } 
	$revdns_string233 = { ca d5 da db d8 d9 de df dc dd e2 e3 e0 89 ab b6 b6 b9 b3  } 
	$xordns_string234 = { c9 d7 d7 d7 d7 d7 d7 d7 d7 d7 d7 d7 d7 bf 9a 86 85 8b 8e  } 
	$revdns_string234 = { c9 d4 d5 da db d8 d9 de df dc dd e2 e3 88 ac b7 b5 b8 bc  } 
	$xordns_string235 = { c8 d6 d6 d6 d6 d6 d6 d6 d6 d6 d6 d6 d6 be 9b 87 84 8a 8f  } 
	$revdns_string235 = { c8 d7 d4 d5 da db d8 d9 de df dc dd e2 8b ad b0 b4 bb bd  } 
	$xordns_string236 = { cf d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 d1 b9 9c 80 83 8d 88  } 
	$revdns_string236 = { cf d6 d7 d4 d5 da db d8 d9 de df dc dd 8a ae b1 b3 ba be  } 
	$xordns_string237 = { ce d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 b8 9d 81 82 8c 89  } 
	$revdns_string237 = { ce d1 d6 d7 d4 d5 da db d8 d9 de df dc b5 af b2 b2 bd bf  } 
	$xordns_string238 = { cd d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 bb 9e 82 81 8f 8a  } 
	$revdns_string238 = { cd d0 d1 d6 d7 d4 d5 da db d8 d9 de df b4 90 b3 b1 bc b8  } 
	$xordns_string239 = { cc d2 d2 d2 d2 d2 d2 d2 d2 d2 d2 d2 d2 ba 9f 83 80 8e 8b  } 
	$revdns_string239 = { cc d3 d0 d1 d6 d7 d4 d5 da db d8 d9 de b7 91 8c b0 bf b9  } 
	$xordns_string240 = { d3 cd cd cd cd cd cd cd cd cd cd cd cd a5 80 9c 9f 91 94  } 
	$revdns_string240 = { d3 d2 d3 d0 d1 d6 d7 d4 d5 da db d8 d9 b6 92 8d 8f be ba  } 
	$xordns_string241 = { d2 cc cc cc cc cc cc cc cc cc cc cc cc a4 81 9d 9e 90 95  } 
	$revdns_string241 = { d2 cd d2 d3 d0 d1 d6 d7 d4 d5 da db d8 b1 93 8e 8e 81 bb  } 
	$xordns_string242 = { d1 cf cf cf cf cf cf cf cf cf cf cf cf a7 82 9e 9d 93 96  } 
	$revdns_string242 = { d1 cc cd d2 d3 d0 d1 d6 d7 d4 d5 da db b0 94 8f 8d 80 84  } 
	$xordns_string243 = { d0 ce ce ce ce ce ce ce ce ce ce ce ce a6 83 9f 9c 92 97  } 
	$revdns_string243 = { d0 cf cc cd d2 d3 d0 d1 d6 d7 d4 d5 da b3 95 88 8c 83 85  } 
	$xordns_string244 = { d7 c9 c9 c9 c9 c9 c9 c9 c9 c9 c9 c9 c9 a1 84 98 9b 95 90  } 
	$revdns_string244 = { d7 ce cf cc cd d2 d3 d0 d1 d6 d7 d4 d5 b2 96 89 8b 82 86  } 
	$xordns_string245 = { d6 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 a0 85 99 9a 94 91  } 
	$revdns_string245 = { d6 c9 ce cf cc cd d2 d3 d0 d1 d6 d7 d4 bd 97 8a 8a 85 87  } 
	$xordns_string246 = { d5 cb cb cb cb cb cb cb cb cb cb cb cb a3 86 9a 99 97 92  } 
	$revdns_string246 = { d5 c8 c9 ce cf cc cd d2 d3 d0 d1 d6 d7 bc 98 8b 89 84 80  } 
	$xordns_string247 = { d4 ca ca ca ca ca ca ca ca ca ca ca ca a2 87 9b 98 96 93  } 
	$revdns_string247 = { d4 cb c8 c9 ce cf cc cd d2 d3 d0 d1 d6 bf 99 84 88 87 81  } 
	$xordns_string248 = { db c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 c5 ad 88 94 97 99 9c  } 
	$revdns_string248 = { db ca cb c8 c9 ce cf cc cd d2 d3 d0 d1 be 9a 85 87 86 82  } 
	$xordns_string249 = { da c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 ac 89 95 96 98 9d  } 
	$revdns_string249 = { da c5 ca cb c8 c9 ce cf cc cd d2 d3 d0 b9 9b 86 86 89 83  } 
	$xordns_string250 = { d9 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 af 8a 96 95 9b 9e  } 
	$revdns_string250 = { d9 c4 c5 ca cb c8 c9 ce cf cc cd d2 d3 b8 9c 87 85 88 8c  } 
	$xordns_string251 = { d8 c6 c6 c6 c6 c6 c6 c6 c6 c6 c6 c6 c6 ae 8b 97 94 9a 9f  } 
	$revdns_string251 = { d8 c7 c4 c5 ca cb c8 c9 ce cf cc cd d2 bb 9d 80 84 8b 8d  } 
	$xordns_string252 = { df c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 a9 8c 90 93 9d 98  } 
	$revdns_string252 = { df c6 c7 c4 c5 ca cb c8 c9 ce cf cc cd ba 9e 81 83 8a 8e  } 
	$xordns_string253 = { de c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 c0 a8 8d 91 92 9c 99  } 
	$revdns_string253 = { de c1 c6 c7 c4 c5 ca cb c8 c9 ce cf cc a5 9f 82 82 8d 8f  } 
	$xordns_string254 = { dd c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 c3 ab 8e 92 91 9f 9a  } 
	$revdns_string254 = { dd c0 c1 c6 c7 c4 c5 ca cb c8 c9 ce cf a4 80 83 81 8c 88  } 
	$dadcdns_string0 = { f9e1e7e1e7e1e7e1e7e1e7e1e789aab0b5bdbe } 
	$dadcdns_string1 = { ffe7e1e7e1e7e1e7e1e7e1e7e18facb6b3bbb8 } 
	$af3950cadns_string0 = { 8c046df792046df792046df7926c20a6c05834 } 
	$af3950cadns_string1 = { 1a6df792046df792046df7920405bac35631ae } 
	$af3950cadns_string2 = { 73f792046df792046df792046d9fdf553fabcb } 
	$af3950cadns_string3 = { e992046df792046df792046df7fa493ca5ce5d } 
	$effeefeedns_string0 = { ccc3d2d3d2c3d2d3d2c3d2d3d2ab9f82809f8b } 
	$effeefeedns_string1 = { ddd2d3d2c3d2d3d2c3d2d3d2c3ba9e83918e8a } 
	$effeefeedns_string2 = { ccd3d2c3d2d3d2c3d2d3d2c3d2bb9f92808f8b } 
	$effeefeedns_string3 = { cdd2c3d2d3d2c3d2d3d2c3d2d3ba8e83818e9a } 
	$fefeefefdns_string0 = { ddc3d2d2c3c3d2d2c3c3d2d2c3ab9f83919f8b } 
	$fefeefefdns_string1 = { ddd2d2c3c3d2d2c3c3d2d2c3c3ba9f92918e8b } 
	$fefeefefdns_string2 = { ccd2c3c3d2d2c3c3d2d2c3c3d2ba8e92808e9a } 
	$fefeefefdns_string3 = { ccc3c3d2d2c3c3d2d2c3c3d2d2ab8e83809f9a } 
	$bcbafcfadns_string0 = { 9f87c1c78187c1c78187c1c781ef8c96d3db98 } 
	$bcbafcfadns_string1 = { 99c1c78187c1c78187c1c78187a98ad0d59d9e } 
	$bcbafcfadns_string2 = { dfc78187c1c78187c1c78187c1afccd6939bd8 } 
	$bcbafcfadns_string3 = { d98187c1c78187c1c78187c1c7e9ca9095ddde } 
	$babcfafcdns_string0 = { 9981c7c18781c7c18781c7c187e98a90d5dd9e } 
	$babcfafcdns_string1 = { 9fc7c18781c7c18781c7c18781af8cd6d39b98 } 
	$babcfafcdns_string2 = { d9c18781c7c18781c7c18781c7a9cad0959dde } 
	$babcfafcdns_string3 = { df8781c7c18781c7c18781c7c1efcc9693dbd8 } 
condition:
any of them
}

/*
// author - matt
// sig type - Metadata
// badness - 6
// doc id from cmment pdf
*/
rule cve_2010_0188_comment
{
strings:
$a = "0c8e1181-35ef-4541-9e28-28ca0b10472c"
condition:
$a
}

/*
// author - matt
// sig type - Payload Detector
// badness - 8
// detect A7 B5 36 29 encoded exe
*/
rule xor_exe_A7B53629
{
strings:
$a = { A7 B5 36 29 A7 B5 36 29 }
condition:
$a
}

/*
// author - matt
// sig type - Embedded Trojan
// badness - 5
// sb.php backdoor strings
*/
rule sb_php_backdoor_string
{
strings:
$a = "%c%c%c%c%c.exe"
$b = "~dfds3.reg"
condition:
all of them
}

/*
// author - matt
// sig type - Shellcode
// badness - 6
// detects shellcode
*/
rule shellcode_jmp0x12_entry
{
strings:
$a = { eb 12 ?? 33 c0 5a b0 ff 49 30 04 0a fe c8 85 c9 75 }
condition:
$a
}

/*
// author - matt
// sig type - Payload Detector
// badness - 4
// marks end of file plus eof\n
*/
rule pdf_eof_eof
{
strings:
$a = { 25 25 45 4f 46 0d 0a 65 6f 66 0a }
condition:
$a
}

/*
// author - matt
// sig type - Shellcode
// badness - 7
// detects the shellcode used to decode bcbafcfa encoding
*/
rule shellcode_bcbafcfa
{
strings:
$a = { 35 fa fc ba bc 89 06 83 c6 04 49 75 }
condition:
$a
}


/*
// author - matt
// sig type - Shellcode
// badness - 8
// shellcode decoder found in cve-2009-3129 payloads
*/
rule shellcode_dec_stage2_decoder
{
strings:
$a = { b0 ff 49 30 04 0a fe c8 85 c9 75 }
condition:
$a
}

/*
// author - matt
// sig type - Shellcode
// badness - 9
// 000036CE - xor ecx,ecx                          33c9
000036D0 - mov ecx,0x1f645                      b945f60100
000036D5 - add esi,0x17                         83c617
000036D8 - push esi                             56
000036D9 - mov al,[esi]                         8a06
000036DB - dec eax                              48
000036DC - xor al,cl                            32c1
000036DE - mov [esi],al                         8806
000036E0 - inc esi                              46
000036E1 - dec ecx                              49
000036E2 - jnz 0xfffffff7                       75f5



/*
// author - matt
// sig type - Shellcode
// badness - 8
// 00000D10 - mov eax,fs:[0x30]                    64a130 00 00 00
00000D16 - add eax,0x400                        05 00 04 00 00
00000D1B - mov edi,eax                          8bf8

*/
rule fs_30_eax_shellcode
{
strings:
$a = { 64 a1 30 00 00 00 05 ?? ?? ?? ?? 8b f8 }
condition:
$a
}

/*
// author - matt
// sig type - Shellcode
// badness - 8
// example 2
00000D22 - mov ecx,0xc8                         b9 c8 00 00 00
00000D27 - cld                                  fc
00000D28 - lodsd                                ad
00000D29 - xor eax,0xabababab                   35abababab
00000D2E - stosd                                ab
00000D2F - loop 0xfffffff9                      e2f7
*/
rule lodsb_xor_stosb_32_bit
{
strings:
$a = { b9 ?? ?? ?? ?? fc ad 35 ?? ?? ?? ?? ab e2 }
condition:
$a 
}

/*
// author - matt
// sig type - Shellcode
// badness - 8
// 00000DDB - mov bl,0xe9                          b3e9
00000DDD - mov dl,0xc7                          b2c7
00000DDF - lodsb                                ac
00000DE0 - xor al,bl                            32c3
00000DE2 - xor al,dl                            32c2
00000DE4 - stosb                                aa
00000DE5 - dec bl                               fecb
00000DE7 - dec dl                               feca
00000DE9 - loop 0xfffffff6                      e2f4

variant

0000222C - mov ecx,0x25d                        b95d020000
00002231 - mov dh,0xd8                          b6d8
00002233 - mov dl,0xe7                          b2e7
00002235 - cld                                  fc
00002236 - lodsb                                ac
00002237 - xor al,dh                            32c6
00002239 - xor al,dl                            32c2
0000223B - stosb                                aa
0000223C - dec dh                               fece
0000223E - dec dl                               feca
00002240 - loop 0xfffffff6                      e2f4


*/
rule double_dec_xor_shellcode
{
strings:
$a = { b3 ?? b2 ?? ac 32 c3 32 c2 aa fe cb fe ca e2 }
$b = { 18 ?? 19 ?? 07 99 68 99 69 01 55 60 55 61 }
$c = { b9 ?? ?? ?? ?? b? ?? b? ?? fc ac 32 c? 32 c? aa fe ?? fe ?? e2 } 
$d = { b9 ?? ?? ?? ?? b? ?? b? ?? ac 32 c? 32 c? aa fe ?? fe ?? e2 } 
condition:
any of them
}

/*
// author - matt
// sig type - Metadata
// badness - 8
// docid from some hongzinst pdfs
*/
rule hongzinst_doc_id
{
strings:
$a = "da20b46b-95e8-47b3-af6c-3ca0cf4ae2cd"
condition:
$a
}

/*
// author - matt
// sig type - Shellcode
// badness - 8
// 0000F21 - xor [ebx],al                         3003
00000F23 - inc ebx                              43
00000F24 - dec eax                              48
00000F25 - cmp eax,0x0                          83f800
00000F28 - jnz 0xfffffff9                       75f7

or 

00000EEC - xor [ebx],al                         3003
00000EEE - ror byte [ebx],0x5                   c00b05
00000EF1 - inc ebx                              43
00000EF2 - dec eax                              48
00000EF3 - cmp eax,0x0                          83f800
00000EF6 - nop                                  90
00000EF7 - jnz 0xfffffff5                       75f3

*/
rule dec_xor_shellcode_cve_2009_3129
{
strings:
$a = { 30 03 43 48 83 f8 00 75 f7 }
$b = { 30 03 c0 0b 05 43 48 83 f8 00 }
condition:
any of them
}

/*
// author - matt
// sig type - Shellcode
// badness - 7
// 00000AD1 - mov ecx,0xa602                       b902a60000
00000AD6 - add esi,0x20                         83c620
00000AD9 - push esi                             56
00000ADA - mov eax,[esi]                        8b06
00000ADC - cmp eax,0x0                          83f800
00000ADF - jz 0x7                               7405
00000AE1 - xor eax,0xbdbbfdfb                   35fbfdbbbd
00000AE6 - mov [esi],eax                        8906
00000AE8 - add esi,0x4                          83c604
00000AEB - dec ecx                              49
00000AEC - jnz 0xffffffee                      75ec

second signature based on encoded shellcode

00000000 - push ebp                             55
00000001 - mov ebp,esp                          8bec
00000003 - sub esp,0x364                        81ec64030000

ae 76 57 3c 17 99 b8 bd fb ae ed

*/
rule shellcode_bdbbfdfb_decode
{
strings:
$a = { 35 fb fd bb bd 89 06 83 c6 04 49 75 }
$b = { ae 76 57 3c 17 ?? ?? bd fb } 
condition:
any of them
}

/*
// author - matt
// sig type - Shellcode
// badness - 4
// looking for the really common pattern

xor ecx,ecx
mov ecx, constant (normally < 0xffff)

00000ACF - xor ecx,ecx                          33c9
00000AD1 - mov ecx,0xa602                       b902a60000

00000806 - xor ecx,ecx                          33c9
00000808 - mov cx,0x4d9                         66b9d904

*/
rule low_shellcode_clear_ecx_mov
{
strings:
$a = { 33 c9 b9 ?? ?? 00 00 }
$b = { 33 c9 66 b9 }
condition:
any of them
}

/*
// author - matt
// sig type - Embedded Trojan
// badness - 5
// blog malware
*/
rule blog_malware
{
strings:
$a = "ScriptMan"
condition:
$a
}

/*
// author - matt
// sig type - Embedded Trojan
// badness - 4
// \Usrdpa.dat in text for malware
*/
rule usrdpa_malware
{
strings:
$a = "\\Usrdpa.dat"
condition:
$a
}

/*
// author - matt
// sig type - Embedded Trojan
// badness - 7
// dns calc string
*/
rule dns_calc_string
{
strings:
$a = "PpPPpPPpPPpPPpPPpP"
condition:
$a
}

/*
// author - matt
// sig type - Shellcode
// badness - 7
// 0000377C - mov ecx,0x6be                        b9be060000
00003781 - lodsb                                ac
00003782 - ror al,0x5                           c0c805
00003785 - xor al,0x3f                          343f
00003787 - stosb                                aa

*/
rule shellcode_ror_xor_loop
{
strings:
$a = { b9 ?? ?? 00 00 ac c0 c8 ?? 34 ?? aa }
condition:
$a
}

/*
// author - matt
// sig type - Payload Detector
// badness - 8
// detects payloads marked with PdPD
*/
rule pdpd_exe_marker
{
strings:
$a = { 50 64 50 44 ef fe ea ae }
condition:
$a
}

/*
// author - xxxxx
// sig type - Metadata
// badness - 7
// Regex to look for obfuscated tags in a pdf file. 
*/
rule pdf_obfuscated_obj_tag
{
strings:
$a = /<<.*#([0-9a-fA-F]{2}){1,20}.*>>/
condition:
$a
}

/*
// author - matt
// sig type - Metadata
// badness - 9
// doc id
*/
rule cve_2010_1297
{
strings:
$a = "3ca2b197-e3a8-4a1d-a0ad-b98f3f80bfe4"
$b = "75a3af1a-70fb-4082-af2f-f8f1f4885844"
$c = "2010-06-11T11:47:10+08:00"
$d = "b80ab715-038b-4006-88aa-0501c8f758c7"
$e = "29a61116-2caa-44cb-930b-5559c1d0adca"
condition:
any of them
}

/*
// author - matt
// sig type - Metadata
// badness - 6
// stuff from bad cws
*/
rule cve_2010_1297_checksum
{
strings:
$a = "<</CheckSum<217C7F03F122BA37C17DD518206F6FC6>"
$b = "/CreationDate(D:20100421004653+08'00')"
$c = { 43 57 53 09 A2 D2 00 00 78 9C }
condition:
any of them
}

/*
// author - matt
// sig type - Payload Detector
// badness - 8
// marks payload origin
*/
rule exe_marker_iPh4ntom
{
strings:
$a = "iPh4Nt0m"
condition:
$a
}

/*
// author - xxxxx
// sig type - Metadata
// badness - 7
// Looks for obfusacted flatedecode tag
*/
rule pdf_obfuscated_flatedecode_tag
{
strings:
$a = "#46#6c#61#74#65#44#65#63#6f#64#65"
condition:
$a
}

/*
// author - matt
// sig type - Shellcode
// badness - 7
// shellcode xor 0x9
*/
rule shellcode_xor_9_decode_stub
{
strings:
$a = { D0 C1 D0 7D 2D FD B3 D6 D7 D0 D1 }
condition:
any of them
}

/*
// author - matt
// sig type - Shellcode
// badness - 8
// 00000D10 - inc ecx                              41
00000D11 - call 0x6                             e801000000
** extra 00 **
00000D17 - mov ecx,[esp]                        8b0c24
00000D1A - add esp,0x4                          83c404
00000D1D - lea ecx,[ecx+0x12]                   8d4912
00000D20 - inc ecx                              41
00000D21 - xor byte [ecx],0x67                  803167
00000D24 - cmp byte [ecx],0x90                  803990
00000D27 - jnz 0xfffffff9                       75f7

*/
rule shellcode_call_06
{
strings:
$a = { e8 01 00 00 00 ?? 8b 0c 24 83 c4 ?? 8d 49 ?? ?? 80 31 ?? 80 39 ?? 75 }
condition:
any of them
}

/*
// author - xxxxx
// sig type - Metadata
// badness - 3
// Looks for artifacts from a possible attack kit
*/
rule pdf_DefEmbedded_EFOpen_Abuse
{
strings:
$a = "<</CF<</DefEmbeddedFile<</AuthEvent/EFOpen/CFM/AESV2/"
$b = "test1"
$c = "sdfsqwe1"
$d = "tewt1"
$e = "sdfsawe@gom.com1"
$f = "<</Name/DefEmbeddedFile>>null]/Filter[/Crypt/FlateDecode]"


condition:
all of them
}

/*
// author - matt
// sig type - Shellcode
// badness - 9
// 81 7D B8 50 64 50 44     cmp dword [ebp-0x48],0x44506450
74 04                    jz loc_D
46                       inc esi
56                       push esi
EB A7                    jmp unk_FFFFFFB4

81 7D BC EF FE EA AE     cmp dword [ebp-0x44],0xaeeafeef
74 04                    jz loc_1A
46                       inc esi
56                       push esi
EB 9A                    jmp unk_FFFFFFB4

*/
rule pdpd_find_shellcode
{
strings:
        $a = { 81 7d b8 50 64 50 44 74 04 46 56 eb a7 81 7d bc ef fe ea ae 74 04 46 56 eb 9a  } 

condition:
any of them
}

/*
// author - matt
// sig type - Shellcode
// badness - 6
// C0 08 8E                 ror byte [eax],0x8e
80 30 EE                 xor byte [eax],0xee
40                       inc eax
E2 F7                    loop loc_BF

*/
rule shellcode_ror_xor_tight_loop
{
strings:
$a = { c0 08 ?? 80 30 ?? 40 e2  } 
condition:
any of them
}

/*
// author - xxxxx
// sig type - Payload Detector
// badness - 5
// Looks for AdjustTokenPRivileges
*/
rule win_api_ADjustTokenPriv
{
strings:
$a = "AdjustTokenPrivileges"
condition:
$a
}

/*
// author - xxxxx
// sig type - Bad Stuff
// badness - 7
// Looks for lnk files with dangerous CLSID's embedded in a docfile
*/
rule CVE_2010_2568_embedded_docfile
{
strings:
$a = { d0 cf 11 e0 a1 b1 1a e1 00 00 00 }
$b = { 4c 00 00 00 01 14 02 00 }
$c = { 20 20 ec 21 ea 3a 69 10 a2 dd 08 00 2b 30 30 9d }
$d = { e0 4f d0 20 ea 3a 69 10 a2 d8 08 00 2b 30 30 9d}
condition:
$a and $b and ($c or $d)
}


/*
// author - matt
// sig type - Payload Detector
// badness - 7
// String for egghunt
*/
rule shellcode_marker_zaq81
{
strings:
$a = { 5a 41 51 31 16 11 80 19 }
condition:
$a
}

/*
// author - matt
// sig type - Payload Detector
// badness - 7
// egghunt string
*/
rule shellcode_marker_juck_83
{
strings:
$a = { 4a 75 63 4b 12 01 83 19 }
condition:
$a
}

/*
// author - matt
// sig type - Payload Detector
// badness - 7
// egghunt string
*/
rule shellcode_marker_Fzh_81
{
strings:
$a = { 46 2e 5a 68 23 06 81 19 }
condition:
$a
}

/*
// author - matt
// sig type - Shellcode
// badness - 6
// marker to denote start of shellcode
*/
rule shellcode_marker_fafbfcfd
{
strings:
$a = { 45 4f 46 0d 0a fa fb fc fd }
condition:
$a
}

/*
// author - matt
// sig type - Shellcode
// badness - 9
// 0000A8B1 - jmp 0x12                             eb10    <EB>^P
0000A8B3 - pop ebx                              5b      [
0000A8B4 - inc ebx                              43      C
0000A8B5 - xor ecx,ecx                          33c9    3<C9>
0000A8B7 - mov cx,0x3a5                         66b9a503        f<B9><A5>^C
0000A8BB - xor byte [ebx],0x94                  803394  <80>3<94>
0000A8BE - inc ebx                              43      C
0000A8BF - loop 0xfffffffc                      e2fa    <E2><FA>
0000A8C1 - jmp 0x7                              eb05    <EB>^E
0000A8C3 - call 0xfffffff0                      e8ebffffff      <E8><EB><FF><FF><FF>

00003338 - xor ecx,ecx                          33c9    3<C9>
0000333A - mov cx,0x135                         66b93501        f<B9>5^A
0000333E - xor byte [edx+ecx],0x1               80340a01        <80>4
^A
00003342 - loop 0xfffffffc                      e2fa    <E2><FA>


/*
// author - matt
// sig type - Bad Stuff
// badness - 6
// flash filename of cve-2010-1297
*/
rule cve_2010_1297_flash_name
{
strings:
$a = "/UF(AES-PHP.swf)"
condition:
$a
}

/*
// author - matt
// sig type - Shellcode
// badness - 7
// 00000D10 - call 0x5                             e800000000      <E8>^@^@^@^@
00000D15 - pop edi                              5f      _
00000D16 - add edi,0x29                         83c729  <83><C7>)
00000D19 - mov bx,0x24dd                        66bbdd24        f<BB><DD>$
00000D1D - push edi                             57      W
00000D1E - pop esi                              5e      ^
00000D1F - xor ecx,ecx                          33c9    3<C9>
00000D21 - mov cx,0x204                         66b90402        f<B9>^D^B
00000D25 - lodsd                                66ad    f<AD>
00000D27 - test ax,ax                           6685c0  f<85><C0>
00000D2A - jz 0x10                              740e    t^N
00000D2C - mov dx,ax                            668bd0  f<8B><D0>
00000D2F - xor dx,bx                            6633d3  f3<D3>
00000D32 - test dx,dx                           6685d2  f<85><D2>
00000D35 - jz 0x5                               7403    t^C
00000D37 - mov ax,dx                            668bc2  f<8B><C2>
00000D3A - stosd                                66ab    f<AB>
00000D3C - loop 0xffffffe9                      e2e7    <E2><E7>

*/
rule shellcode_16_bit_xor_lodsd_stosd
{
strings:
$a = { 66 ad 66 85 c0 74 ?? 66 8b d0 66 33 d3 }
condition:
$a
}

/*
// author - matt
// sig type - Shellcode
// badness - 8
// 00000D13 - xor ecx,ecx                          33c9    3<C9>
00000D15 - xor byte [ebx],0x69                  803369  <80>3i
00000D18 - inc ebx                              43      C
00000D19 - inc ecx                              41      A
00000D1A - cmp ecx,0x7ba                        81f9ba070000    <81><F9><BA>^G^@^@
00000D20 - jc 0xfffffff5                        72f3    r<F3>


/*
// author - matt
// sig type - Payload Detector
// badness - 9
// detects payload xor'd with the same bytes
*/
rule xor_exe_a1b2c3d4e5f69780
{
strings:
$a = { a1 b2 c3 d4 e5 f6 97 80 a1 b2 c3 d4 e5 f6 97 80 }
condition:
$a
}

/*
// author - matt
// sig type - Payload Detector
// badness - 7
// payload encoded with every other byte xor'd with alternating decrementing xor counters
*/
rule exe_every_other_dec_payload
{
strings:
$a = { 7e ?? 7d ?? 7c ?? 7b ??  7a ?? 79 ?? 78 ?? 77 ?? 76 ?? 75 ?? 74 ?? 73 ?? 72 ?? 71 ?? 70 ?? 6f ?? }
condition:
$a
}

/*
// author - matt
// sig type - Payload Detector
// badness - 7
// payloads encoded with c1 d3 a7 fe
*/
rule exe_c1d3a7fe
{
strings:
$a = { c1 d3 a7 fe c1 d3 a7 fe  c1 d3 a7 fe c1 d3 a7 fe }
condition:
any of them
}

/*
// author - mjrichard
// sig type - hex shellcode detection
// badness - 7
// detects hex encoded shellcode
*/

rule flash_hex_shellcode
{
strings:
$a = "0c0c9090"
$b = "eb105b4b33c966"
condition:
any of them
}

rule flash_hex_embedded_cws
{
strings:
$a = "43575309"
condition:
$a
}

rule flash_heapspray
{
strings:
$a = "writeByte"
$b = "writeBytes"
$c = "loadBytes"
$d = "hexToBin"
$e = "ByteArray"
condition:
3 of them
} 

rule ups_v2_keepalive_traffic
/*
This rule detects the keep-alive packets generated by upsv2 which encrypt
the string '1111111111111111' with a static key. Can have 3 possible mode values - 0xff, 0xfe or 0x00.
*/
{
strings:
$a = { 10 00 (ff | fe | 00) ?? 49 a1 3e c2 93 7d e0 93 a2 f5 24 81 4c 69 ab 20 }
condition:
$a
}

rule ups_v2_shell_command_traffic
/* This rule detects the 'shell' command used in upsv2 traffic which is encrypted with a static key. Must have a mode of 0x00 */
{
strings:
$a = { 06 00 00 ?? 0b f8 6a 9f ce 46 }
condition:
$a
} 

rule ups_v2_shell_response_traffic
/* This rule detects the windows cmd.exe banner being returned over a UPS v2 command channel, goes from client -> server */
{
strings:
$a = { 68 00 00 ?? 35 f9 6c 81 cd 3f be c4 e7 e4 42 d9 13 3c f5 66 0b b0 57 a3 82 17 87 c7 e1 b7 7c df 13 78 af 3f 49 be 3d c5 92 7c 8c af 99 ec 56 99 5d 1b f5 61 01 e2 66 94 ca 38 f1 93 aa fc 20 9d 4f 68 aa 20 58 dd 66 90 d0 23 a2 cd f5 b0 35 f3 12 2a ea 3f 75 9a 02 f9 e1 76 8d f5 da 8a 51 ff 2a 0b c6 62 01 e3 7b 96 cf 7f e3 9c }
condition:
$a
} 


rule PdfExecution : Batch
{
strings:
$pdf_header = { 25 50 44 46 2D }
$run_string = "WScript.Shell" nocase
$activeX = "ActiveXObject" nocase

condition:
$pdf_header and $run_string and $activeX
}

rule BatchCompilation : Batch
{
strings:
$pdf_header = { 25 50 44 46 2D }
$rcx = "echo rcx"
$debug = /\n@debug<.*>nul/

condition:
$pdf_header and $debug and $rcx
}

rule EXPERIMENTAL_pdf_launch
{
meta:
author = "Oetken, Kyle"
version = "1.0"
fidelity = "EXPERIMENTAL"
milteraction = "HOLD"
strings:
$a = "%PDF-"
$b = "c:\\windows\\system32" nocase
$c = "scripting.filesystemobject" nocase
$d = "cmd /c" nocase
$e = "WScript.CreateObject" nocase
condition:
$a at 0 and ($b or $c or $d or $e)
}

rule pdf_launch_experimental
{
meta:
author = "DSIE"
version = "1.0"
fidelity = "EXPERIMENTAL"
milteraction = "HOLD"
strings:
$a = "%PDF-1."
$b = "/Action"
$c = "/Launch"
condition:
$a at 0 and ($b and ($c in (@b..filesize)))
}


rule ascii_shellcode_call_plus_6
{
meta:
author = "mjrichard@mitre.org"
alert = true
log = true
alert_severity = "MEDIUM"
type = "shellcode"
description = "Executable payloads partiall xor'd with 73a6d80a"
reference = "http://blog.trendmicro.com/malicious-rtf-files-exploit-microsoft-office-vulnerability"
source = "MITRE"
version = 1
strings:
$a = "e80100000000"
$b = "{"
condition:
$b at 0 and $a
}

rule cve_2010_3333
{
meta:
author = "mjrichard@mitre.org"
alert = true
log = true
alert_severity = "HIGH"
type = "exploit"
description = "RTF CVE-2010-3333 exploit prelude"
reference = "http://blog.trendmicro.com/malicious-rtf-files-exploit-microsoft-office-vulnerability"
source = "MITRE"
version = 1
strings:
$a = "{\\rtf1{\\shp{\\sp{\\sn pFragments}{\\sv 9;2;11111111acc81111"
condition:
$a at 0
}

rule backdoor_dpd_tempdir
{
strings:
// dftemp.tmp\x00
$a = { 64 66 74 65 6d 70 2e 74 6d 70 00 }
$b = "MZ"
condition:
$b at 0 and $a
}

rule backdoor_dpd_v2_packerxor
{
strings:
$a = { 00 ac 34 ?? aa e2 fa }
$b = "MZ"
condition:
$b at 0 and $a
}

rule backdoor_dpd_tabcteng_configxor
{
strings:
$a = { 8a 54 24 0c 03 c1 30 10 41 3b 4c 24 08 }
$b = "MZ"
condition:
$b at 0 and $a
}

rule backdoor_dpd_tabcteng_xor_encoder
{
strings:
$a = { f7 b1 04 01 00 00 8a 04 3e 8a 14 0a 3a c2 74 09 84 c0 74 05 32 c2 88 04 3e }
condition:
$a
}

rule backdoor_dpd_v3_connet
{
strings:
$a = { 63 6f 6e 6e 65 74 20 74 6f 20 74 61 72 67 65 74 20 69 73 20 6f 6b 00 }
condition:
$a
}

rule backdoor_dpd_tabcteng_jpg_command
{
// note for network use this would be in the HTTP payload after the \r\n\r\n
strings:
$a = { 00 00 00 00 00 6a }
condition:
$a at 3
}

rule backdoor_dpd_jpg_cabfile
{
// note for network use this would be in the HTTP payload after the \r\n\r\n
strings:
$a = { 4d 53 43 46 00 }
condition:
$a in (85..95)
}

rule shellcode_marker_fzh_family
{
meta:
author = "mjrichard@mitre.org"
alert = true
log = true
alert_severity = "HIGH"
type = "payload"
description = "detects markers used to denote the beginning and eof for fzh related payloads related to fzh payload encoding"
reference = "None"
source = "MITRE"
version = 1
strings:
// K.Zh
$g = { 4b 2e 5a 68 23 06 83 19 }
// FucK
$h = { 46 75 63 4b 12 01 81 19 }
// FIFA
$a = { 46 49 46 41 03 07 83 19 }
// = ZAQ1
$b = { 5a 41 51 31 16 11 80 19 }
// JucK
$c = { 4a 75 63 4b 12 01 83 19 }
// F.Zh
$d = { 46 2e 5a 68 23 06 81 19 }
// FVCK
$e = { 46 56 43 4b 04 06 89 19 }
// KaKa
$f = { 4b 61 4b 61 06 11 81 19 }
condition:
any of them
}

rule exe_payload_XXXXYYYY
{
meta:
author = "mjrichard@mitre.org"
alert = true
log = true
alert_severity = "HIGH"
type = "payload"
description = "Executable payload marker of XXXXYYYY"
reference = "N/A"
source = "MITRE"
version = 1
strings:
/*
000001D6 - cmp dword [eax],0x59595959 813859595959 <81>8YYYY
000001DC - jnz 0xb 7509 u
000001DE - cmp dword [eax+0x4],0x58585858 81780458585858 <81>x^DXXXX
*/
$a = { 7d 7d 58 58 58 58 59 59 59 59 }
$b = { 59 59 59 59 58 58 58 58 }
condition:
$a and $b
}

rule shellcode_marker_706f69753d6f578e
{
meta:
author = "mjrichard@mitre.org"
alert = true
log = true
alert_severity = "HIGH"
type = "shellcode"
description = "Payload marker used in CVE-2010-3333 attack"
reference = "RT 40602 / 40604"
source = "MITRE"
version = 1
strings:
$a = { 70 6f 69 75 3d 6f 57 8e }
condition:
$a
} 

rule lm_vu_ms_rtf_cve_2010_3333
// Created by alexander.hanel@LMCO.com
// This signature detects .rtf documents that exploit cve-2010-3333

// Example:
// 00000000 7b 5c 72 74 66 31 7b 5c 73 68 70 7b 5c 2a 5c 73 |{\rtf1{\shp{\*\s|
// 00000010 68 70 69 6e 73 74 7b 5c 73 70 7b 5c 73 6e 30 70 |hpinst{\sp{\sn0p|
// 00000020 66 72 61 67 6d 65 6e 74 73 7d 7b 5c 73 76 20 31 |fragments}{\sv 1|
// 00000030 3b 31 3b 30 31 32 33 34 35 36 37 34 30 30 30 65 |;1;012345674000e|

{
strings:
$1a = "\\rt"
$1b = "\\shp"
$1c = "\\sn"
$1d = "\\sv"
$1e = "\\shp"
$1f = "pFragments" nocase
condition:
all of them
} 


rule lm_vu_swf_cve_2011_0609
{
// Created by alexander.hanel@LMCO.com
// CVE-2011-0609 is a vulnerability that abuses the bytecode
// verifier inside Adobe Flash Player. The vulnerability was found by
// fuzzing clean flash files. The signature targets the ascii hex of
// the header, size and data of the fuzzed flash file.
//
// 00000000 46 57 53 09 47 cb 00 00 48 01 40 00 5a 00 00 19 |FWS.G...H.@.Z...|
// ......
// 00000530 30 30 84 82 03 34 33 35 37 35 33 30 39 65 61 63 |00...43575309eac|
// 00000540 37 30 30 30 30 37 38 39 63 62 63 62 63 30 39 36 |70000789cbcbc096|

strings:
$signature = "43575309eac70000789cbcbc0"
condition:
$signature
} 

rule lm_vu_swf_cve_2011_0611
{
// Created by alexander.hanel@LMCO.com
// Attackers have been commonly reusing the same two SWFs to exploit
// CVE-2011-0611. Rule lm_vu_swf_cve_2011_0611 detects
// the header of the two malicous SWFs that are commonly used.
// Rule lm_vu_swf_gen_cve_2011_0611_a107 is a generic signature that
// relies on common traces observed.

strings:
$22886d2683bfa33b27aae23019d49a17 = { 46 57 53 0a 5e 2c 00 00 78 00 05 5f 00 00 0f a0 }
$79b1c0ed2df4977d70c7d21817213fa6 = { 46 57 53 0a 75 27 00 00 78 00 05 5f 00 00 0f a0 }

condition:
$22886d2683bfa33b27aae23019d49a17 or $79b1c0ed2df4977d70c7d21817213fa6
}
rule lm_vu_swf_gen_cve_2011_0611
{
strings:
$afws = "FWS"
$apihex = "hexToBin"
$aafws = "465753"
$abcd = "410042004300440045004600470048"
$acfun = "5F66756E"
condition:
not lm_vu_swf_cve_2011_0611 and all of ($a*)

}

rule HIGH_cve_2012_0779
{
strings:
$build1 = "ScriptBridge.ScriptBridge"
$build2 = "ScriptBridge.ScriptBridge" wide
$s1 = ".swf"
$s2 = ".swf" wide

$info1 = "info=789c333434d63334d0333437d233b430b5b230b030000024fb03c3"
$info2 = "info=789c333434d63334d0333437d233b430b5b230b030000024fb03c3" wide

$d1 = "204.45.73.69"
$d2 = "204.45.73.69" wide
$d3 = "support-office-microsoft.com"
$d4 = "support-office-microsoft.com" wide
$d5 = "hytkorea.com"
$d6 = "hytkorea.com" wide
$d7 = "178.77.66.208"
$d8 = "178.77.66.208" wide

condition:
(any of ($info*) or any of ($d*)) or (any of ($build*) and any of ($s*))

}

rule cve_2012_0779_hueristic
{
strings:
$build1 = "ScriptBridge.ScriptBridge"
$build2 = "ScriptBridge.ScriptBridge" wide

$j1 = "javascript:eval(document.write(unescape("
$j2 = "javascript:eval(document.write(unescape(" wide

condition:
any of ($build*) and any of ($j*)
}

rule EXPERIMENTAL_CVE_2012_1856_RTF_strings
{
/*
Author: Ramsey S., CTOps MCOT
Created 8/21/2012
Purpose: Detect samples exploiting CVE_2012_1856
*/
strings:
$a = "\\object" nocase
$b = "\\objocx" nocase
$c = "\\objdata" nocase
$d = "D0CF11E"
$t = "TabStrip" nocase
condition:
($a and $b and $t) and ($c or $d)
} 

/*
Author: Jason Batchelor
Detect most recently seen IE-0day in the wild.
Date: 9/17/2012
*/


rule lm_ex_ie_0day
{
strings:
$a = "u0c0cKDogjsiIejengNEkoPDjfiJDIWUAzdfghjAAuUFGGBSIPPPUDFJKS"
condition:
$a
}

rule lm_email_block_RT39485_Frosty
{
strings:
$a = "charset=\"big5\"" nocase
$b = "charset=big5" nocase
$c = "+0800"
$d = "X-Mailer: Microsoft Outlook Express 6.00.2900.2180" nocase
$e = "X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180" nocase
condition:
( $a or $b ) and $c and $d and $e
}

// Jason Batchelor, Lockheed Martin
// 4/30/2013
/*
; This is a snippet from a specimen where a 128 bit MD buffer is begin created (MD5 logic)
100030eb: 55 push ebp
100030ec: 8b ec mov ebp,esp
100030ee: 51 push ecx
100030ef: 89 4d fc mov DWORD PTR [ebp-4],ecx
100030f2: 8b 45 08 mov eax,DWORD PTR [ebp+8]
100030f5: c7 40 14 00 00 00 00 mov DWORD PTR [eax+20],0x0
100030fc: 8b 4d 08 mov ecx,DWORD PTR [ebp+8]
100030ff: c7 41 10 00 00 00 00 mov DWORD PTR [ecx+16],0x0
10003106: 8b 55 08 mov edx,DWORD PTR [ebp+8]
10003109: c7 02 01 23 45 67 mov DWORD PTR [edx],0x67452301
1000310f: 8b 45 08 mov eax,DWORD PTR [ebp+8]
10003112: c7 40 04 89 ab cd ef mov DWORD PTR [eax+4],0xefcdab89
10003119: 8b 4d 08 mov ecx,DWORD PTR [ebp+8]
1000311c: c7 41 08 fe dc ba 98 mov DWORD PTR [ecx+8],0x98badcfe
10003123: 8b 55 08 mov edx,DWORD PTR [ebp+8]
10003126: c7 42 0c 76 54 32 10 mov DWORD PTR [edx+12],0x10325476
1000312d: 8b e5 mov esp,ebp
1000312f: 5d pop ebp
10003130: c2 04 00 ret 0x4

More info:
http://en.wikipedia.org/wiki/MD5#Pseudocode
*/

rule lm_nfo_md5sum_computation
{
strings:

$ = { 01 23 45 67 [3-6] 89 ab cd ef [3-6] fe dc ba 98 [3-6] 76 54 32 10 }
condition:
all of them
}

// Author: Jason Batchelor, Lockheed Martin
// Date: 5/6/2013
// Rationale: Detect evidence of rot13 cipher in a binary

/*
; Rot13 sample in assembly
100033da: 3c 4d cmp al,0x4d
100033dc: 7f 06 jg 0x100033e4
100033de: eb 10 jmp 0x100033f0
100033e0: 3c 4d cmp al,0x4d
100033e2: 7e 04 jle 0x100033e8
100033e4: 3c 5a cmp al,0x5a
100033e6: 7e 14 jle 0x100033fc
100033e8: 3c 60 cmp al,0x60
100033ea: 7e 08 jle 0x100033f4
100033ec: 3c 6d cmp al,0x6d
100033ee: 7f 08 jg 0x100033f8
100033f0: 04 0d add al,0xd
100033f2: eb 0a jmp 0x100033fe
100033f4: 3c 6d cmp al,0x6d
100033f6: 7e 06 jle 0x100033fe
100033f8: 3c 7a cmp al,0x7a
100033fa: 7f 02 jg 0x100033fe
100033fc: 2c 0d sub al,0xd
*/
rule lm_nfo_rot13_cipher
{
strings:
$ = { 3c 4d 7? ?? eb ?? 3c 4d 7? ?? 3c 5a 7? ?? 3c 60 7? ?? 3c 6d 7? ?? 04 0d eb ?? 3c 6d 7? ?? 3c 7a 7? ?? 2c 0d }
condition:
all of them
}

// Jason Batchelor, Lockheed Martin
// 5/6/2013

/*
The following are static PBox keys that define the blowfish algorithm:
0x243f6a88, 0x85a308d3, 0x13198a2e, 0x03707344,
0xa4093822, 0x299f31d0, 0x082efa98, 0xec4e6c89,
0x452821e6, 0x38d01377, 0xbe5466cf, 0x34e90c6c,
0xc0ac29b7, 0xc97c50dd, 0x3f84d5b5, 0xb5470917,
0x9216d5d9, 0x8979fb1b

; hexdump view
0001f880 88 6a 3f 24 d3 08 a3 85 2e 8a 19 13 44 73 70 03 |.j?$........Dsp.|
0001f890 22 38 09 a4 d0 31 9f 29 98 fa 2e 08 89 6c 4e ec |"8...1.).....lN.|
0001f8a0 e6 21 28 45 77 13 d0 38 cf 66 54 be 6c 0c e9 34 |.!(Ew..8.fT.l..4|
0001f8b0 b7 29 ac c0 dd 50 7c c9 b5 d5 84 3f 17 09 47 b5 |.)...P|....?..G.|
*/

rule lm_nfo_blowfish_encryption
{
strings:
$ = { 88 6a 3f 24 d3 08 a3 85 2e 8a 19 13 44 73 70 03 22 38 09 a4 d0 31 9f 29 98 fa 2e 08 89 6c 4e ec e6 21 28 45 77 13 d0 38 cf 66 54 be 6c 0c e9 34 b7 29 ac c0 dd 50 7c c9 b5 d5 84 3f 17 09 47 b5 }
condition:
all of them
}

/*
Jason Batchelor, Lockheed Martin
5/14/2013

Examples of aPlib compression sections (library is likely statically linked):

; Example #1
401cf3: 3d 00 7d 00 00 cmp eax,0x7d00
401cf8: 83 d9 ff sbb ecx,0xffffffff
401cfb: 3d 00 05 00 00 cmp eax,0x500
401d00: 83 d9 ff sbb ecx,0xffffffff
401d03: 3d 80 00 00 00 cmp eax,0x80
401d08: 83 d1 00 adc ecx,0x0
401d0b: 3d 80 00 00 00 cmp eax,0x80
401d10: 83 d1 00 adc ecx,0x0
401d13: 51 push ecx
401d14: 8b 4c 24 3c mov ecx,DWORD PTR [esp+60]
401d18: 2b 4c 24 04 sub ecx,DWORD PTR [esp+4]
401d1c: 39 c8 cmp eax,ecx
401d1e: 59 pop ecx
401d1f: 0f 87 61 00 00 00 ja 0x401d86

; Example #2
40eb6f: 3d 00 7d 00 00 cmp eax,0x7d00
40eb74: 83 d9 ff sbb ecx,0xffffffff
40eb77: 3d 00 05 00 00 cmp eax,0x500
40eb7c: 83 d9 ff sbb ecx,0xffffffff
40eb7f: 3d 80 00 00 00 cmp eax,0x80
40eb84: 83 d1 00 adc ecx,0x0
40eb87: 3d 80 00 00 00 cmp eax,0x80
40eb8c: 83 d1 00 adc ecx,0x0
40eb8f: 51 push ecx
40eb90: 8b 4c 24 3c mov ecx,DWORD PTR [esp+60]
40eb94: 2b 4c 24 04 sub ecx,DWORD PTR [esp+4]
40eb98: 39 c8 cmp eax,ecx
40eb9a: 59 pop ecx
40eb9b: 77 4d ja 0x40ebea
*/

rule lm_nfo_aPlib
{
strings:
$ = { 3d 00 7d 00 00 83 d9 ff 3d 00 05 00 00 83 d9 ff 3d 80 00 00 00 83 d1 00 3d 80 00 00 00 83 d1 00 51 }
condition:
all of them
}

/*
Jason Batchelor, Lockheed Martin
6/5/2013


; Hashing API sequence
00004994 41 inc ecx
00004995 AD lodsd
00004996 03C3 add eax,ebx
00004998 56 push esi
00004999 33F6 xor esi,esi
0000499B 0FBE10 movsx edx,byte [eax]
0000499E 3AF2 cmp dh,dl
000049A0 7408 jz 0x49aa
000049A2 C1CE0D ror esi,0xd
000049A5 03F2 add esi,edx
000049A7 40 inc eax
000049A8 EBF1 jmp short 0x499b
000049AA 3BFE cmp edi,esi
000049AC 5E pop esi
000049AD 75E5 jnz 0x4994

; hex ascii appearance of the above
00046d20 33 63 33 35 36 33 33 66 36 30 66 62 65 31 30 33 |3c35633f60fbe103|
00046d30 61 66 32 37 34 30 38 63 31 63 65 30 64 30 33 66 |af27408c1ce0d03f|
00046d40 32 34 30 65 62 66 31 33 62 66 65 35 65 37 35 65 |240ebf1

*/

rule lm_tq_api_getbyhash_ror_hexascii
{
strings:
$ = /41AD03C35633F60FBE103AF274.{2}C1CE.{2}03F240EB.{2}3BFE5E75/ nocase ascii
condition:
all of them
}

rule lm_tq_api_getbyhash_ror_binary
{
strings:
$ = { 41 AD 03 C3 56 33 F6 0F BE 10 3A F2 74 [1] C1 CE [1] 03 F2 40 EB [1] 3B FE 5E 75 }
condition:
all of them
}


/*
; snip from rc4 decryption routine
401fe1: 33 d2 xor edx,edx
401fe3: 8a 11 mov dl,BYTE PTR [ecx]
401fe5: 8b 45 fc mov eax,DWORD PTR [ebp-0x4]
401fe8: 25 ff 00 00 00 and eax,0xff
401fed: 33 d0 xor edx,eax
401fef: 8b 4d 0c mov ecx,DWORD PTR [ebp+0xc]
401ff2: 03 4d ec add ecx,DWORD PTR [ebp-0x14]
401ff5: 88 11 mov BYTE PTR [ecx],dl
401ff7: e9 35 ff ff ff jmp 0x401f31
*/

rule rc4_snip_1
{
meta:
author = "Jason Batchelor"
source = "Lockheed Martin"
lastmod = "20130730"
desc = "Looks for specific opcodes that perform the RC4 decrypt."

strings:
$ = { 33 d2 8? ?? 8? [2] 25 ff 00 00 00 33 d0 8?}
condition:
all of them
}

/*
; snip from rc4 decryption routine
401d6f: 03 ca add ecx,edx
401d71: 0f b6 d3 movzx edx,bl
401d74: 03 c2 add eax,edx
401d76: 8b df mov ebx,edi
401d78: 99 cdq
401d79: f7 fb idiv ebx
401d7b: 8a 04 32 mov al,BYTE PTR [edx+esi*1]
401d7e: 30 01 xor BYTE PTR [ecx],al
*/
rule rc4_snip_2
{
meta:
author = "Jason Batchelor"
source = "Lockheed Martin"
lastmod = "20130730"
desc = "Looks for specific opcodes that perform the RC4 decrypt."

strings:
$ = { 03 ca 0f b6 d3 03 c2 8b df 99 f7 fb 8? [2] 30 01 }

condition:
all of them
}

/*
; snip from object oriented rc4 code
402370: 8b 81 04 01 00 00 mov eax,DWORD PTR [ecx+0x104]
402376: 53 push ebx
402377: 40 inc eax
402378: 56 push esi
402379: 8b b1 08 01 00 00 mov esi,DWORD PTR [ecx+0x108]
40237f: 25 ff 00 00 00 and eax,0xff
402384: 89 81 04 01 00 00 mov DWORD PTR [ecx+0x104],eax
40238a: 8a 54 08 04 mov dl,BYTE PTR [eax+ecx*1+0x4]
40238e: 8a da mov bl,dl
402390: 03 f3 add esi,ebx
402392: 81 e6 ff 00 00 00 and esi,0xff
402398: 89 b1 08 01 00 00 mov DWORD PTR [ecx+0x108],esi
40239e: 8a 5c 0e 04 mov bl,BYTE PTR [esi+ecx*1+0x4]
4023a2: 5e pop esi
4023a3: 88 5c 08 04 mov BYTE PTR [eax+ecx*1+0x4],bl
4023a7: 8b 81 08 01 00 00 mov eax,DWORD PTR [ecx+0x108]
4023ad: 5b pop ebx
4023ae: 88 54 08 04 mov BYTE PTR [eax+ecx*1+0x4],dl ; sig start
4023b2: 8b 91 08 01 00 00 mov edx,DWORD PTR [ecx+0x108]
4023b8: 8a 44 0a 04 mov al,BYTE PTR [edx+ecx*1+0x4]
4023bc: 8b 91 04 01 00 00 mov edx,DWORD PTR [ecx+0x104]
4023c2: 8a 54 11 04 mov dl,BYTE PTR [ecx+edx*1+0x4]
4023c6: 03 c2 add eax,edx
4023c8: 25 ff 00 00 00 and eax,0xff
4023cd: 8a 44 08 04 mov al,BYTE PTR [eax+ecx*1+0x4]
4023d1: c3 ret

; similar but slightly different byte code
402024: 8b 81 04 01 00 00 mov eax,DWORD PTR [ecx+0x104]
40202a: 53 push ebx
40202b: 55 push ebp
40202c: 40 inc eax
40202d: bd ff 00 00 00 mov ebp,0xff
402032: 56 push esi
402033: 23 c5 and eax,ebp
402035: 57 push edi
402036: 89 81 04 01 00 00 mov DWORD PTR [ecx+0x104],eax
40203c: 8a 54 08 04 mov dl,BYTE PTR [eax+ecx*1+0x4]
402040: 8d 74 08 04 lea esi,[eax+ecx*1+0x4]
402044: 8d 81 08 01 00 00 lea eax,[ecx+0x108]
40204a: 8a da mov bl,dl
40204c: 03 18 add ebx,DWORD PTR [eax]
40204e: 8b fb mov edi,ebx
402050: 23 fd and edi,ebp
402052: 89 38 mov DWORD PTR [eax],edi
402054: 8a 5c 0f 04 mov bl,BYTE PTR [edi+ecx*1+0x4]
402058: 5f pop edi
402059: 88 1e mov BYTE PTR [esi],bl
40205b: 8b 30 mov esi,DWORD PTR [eax]
40205d: 88 54 0e 04 mov BYTE PTR [esi+ecx*1+0x4],dl
402061: 8b 00 mov eax,DWORD PTR [eax]
402063: 8b 91 04 01 00 00 mov edx,DWORD PTR [ecx+0x104]
402069: 5e pop esi
40206a: 8a 44 08 04 mov al,BYTE PTR [eax+ecx*1+0x4] ; sig start
40206e: 8a 54 11 04 mov dl,BYTE PTR [ecx+edx*1+0x4]
402072: 03 c2 add eax,edx
402074: 23 c5 and eax,ebp
402076: 5d pop ebp
402077: 5b pop ebx
402078: 8a 44 08 04 mov al,BYTE PTR [eax+ecx*1+0x4]
40207c: c3 ret

*/

rule rc4_snip_3
{
meta:
author = "Jason Batchelor"
source = "Lockheed Martin"
lastmod = "20130730"
desc = "Looks for specific opcodes that operate on an RC4 encrypted object."

strings:
$ = { 88 54 08 04 8b 91 08 01 00 00 8a 44 0a 04 8b 91 04 01 00 00 8a 54 11 04 03 c2 25 ff 00 00 00 8a 44 08 04 c3 }
$ = { 8a 44 08 04 8a 54 11 04 03 c2 23 c5 5d 5b 8a 44 08 04 c3 }
condition:
any of them
}

/*
401142: 81 e1 ff 00 00 00 and ecx,0xff
401148: 8a 0c 39 mov cl,BYTE PTR [ecx+edi*1]
40114b: 32 d9 xor bl,cl
40114d: 8b 4c 24 18 mov ecx,DWORD PTR [esp+0x18]
401151: 88 1c 28 mov BYTE PTR [eax+ebp*1],bl
401154: 40 inc eax
401155: 3b c1 cmp eax,ecx
401157: 7c 9e jl 0x4010f7
*/

rule rc4_snip_4
{
meta:
author = "Jason Batchelor"
source = "Lockheed Martin"
lastmod = "20130730"
desc = "Looks for specific opcodes that perform the RC4 decrypt."

strings:
$ = { 81 e1 ff 00 00 00 8a 0c 39 32 d9 8b 4c 24 18 88 1c 28 40 3b c1 7? }
condition:
all of them

}

rule rc4_snip_5
{
meta:
author = "Zach Kelly"
source = "Lockheed Martin"
lastmod = "20130525"
desc = "Looks for specific opcodes that build an RC4 key and perform the decrypt. Seen with certain crypter"
strings:
//////////////////////////////////////////////////////////////
// 4? (cannot use) inc edi
// 81 ?? FF 00 00 80 and edi, 800000FFh
// 79 ?? jns short loc_4010D7
// 4? dec edi
// 81 ?? 00 FF FF FF or edi, 0FFFFFF00h
// 4? inc edi
//////////////////////////////////////////////////////////////
$mask_signed_check = { 81 ?? FF 00 00 80 79 ?? 4? 81 ?? 00 FF FF FF 4? }

//////////////////////////////////////////////////////////////
// 8B C1 mov eax, ecx
// 99 cdq
// F7 ?? idiv edi
// 41 inc ecx
// 81 F9 00 01 00 00 cmp ecx, 100h
// 8A ?? ?? mov al, [edx+ebx]
// 88 ?? ?? ?? mov [esp+ecx+114h+var_101], al
// 7C ?? jl short loc_40102E
//////////////////////////////////////////////////////////////
$build_key = { 8B C1 99 F7 ?? 41 81 F9 00 01 00 00 8A ?? ?? 88 ?? ?? ?? 7C }

condition:
all of them
}

rule misc_rc4_encryption
{
condition:
rc4_snip_1 or rc4_snip_2 or rc4_snip_3 or rc4_snip_4 or rc4_snip_5
}


rule rt_rcdata_embedded
{
meta:
author = "Jason Batchelor"
source = "Lockheed Martin"
lastmod = "20130729"
desc = "Default name Microsoft gives to application defined, raw data resources. This may be a hint that there is something encoded within."
strings:
$ = "RT_RCDATA" wide ascii
condition:
all of them
}

rule idr_bin_embedded
{
meta:
author = "Jason Batchelor"
source = "Lockheed Martin"
lastmod = "20130801"
desc = "Common name used to define a binary resource."
strings:
$ = "IDR_BIN" wide ascii
condition:
all of them
}

rule misc_embedded_ms_resource
{
condition:
rt_rcdata_embedded or idr_bin_embedded
}

/*
401886: e8 17 08 00 00 call 0x4020a2 ; time
40188b: 50 push eax ; time result
40188c: e8 e2 07 00 00 call 0x402073 ; srand
401891: 83 c4 08 add esp,0x8
401894: e8 e7 07 00 00 call 0x402080 ; rand
401899: 99 cdq
40189a: b9 10 27 00 00 mov ecx,0x2710
40189f: f7 f9 idiv ecx ; div 10000
4018a1: 52 push edx ; remainder (1st var)
4018a2: e8 d9 07 00 00 call 0x402080 ; rand
4018a7: 99 cdq
4018a8: b9 10 27 00 00 mov ecx,0x2710
4018ad: f7 f9 idiv ecx ; div 10000
4018af: 52 push edx ; remainder (2nd var)
4018b0: 68 34 b1 40 00 push 0x40b134 ; url part
4018b5: 8d 94 24 24 01 00 00 lea edx,[esp+0x124] ; destination address
4018bc: 68 84 b1 40 00 push 0x40b184 ; formatting offset
4018c1: 52 push edx ; char *
4018c2: e8 b7 08 00 00 call 0x40217e ; sprintf
*/

rule rand_gen
{
meta:
author = "Jason Batchelor"
source = "Lockheed Martin"
lastmod = "20130905"
desc = "Malware generates two pairs pseudo random numbers"
strings:
$ = { e8 [4] 50 e8 [4] 83 c4 08 e8 [4] 99 b9 10 27 00 00 f7 f9 52 e8 [4] 99 b9 10 27 00 00 f7 f9 52 68 [4] 8d [6] 68 [4] 52 e8 }
condition:
all of them
}

/*
; process buffer containing URL backwards to get filename
40176d: 8a 84 14 98 00 00 00 mov al,BYTE PTR [esp+edx*1+0x98]
401774: 3c 0d cmp al,0xd ; carriage return
401776: 74 04 je 0x40177c
401778: 3c 0a cmp al,0xa ; new line
40177a: 75 08 jne 0x401784
40177c: c6 84 14 98 00 00 00 mov BYTE PTR [esp+edx*1+0x98],0x0 ; substitute NL or CR with 0x00
401783: 00
401784: 80 bc 14 98 00 00 00 cmp BYTE PTR [esp+edx*1+0x98],0x2f ; '/'
40178b: 2f
40178c: 74 03 je 0x401791
40178e: 4a dec edx ; decrement edx till we hit the slash
40178f: 79 dc jns 0x40176d
*/
rule process_list
{
meta:
author = "Jason Batchelor"
source = "Lockheed Martin"
lastmod = "20130905"
desc = "Malware processes list of URLs for payload retrieval"
strings:
$ = { 8a [6] 3c 0d 74 04 3c 0a 75 08 c6 [6] 00 80 [6] 2f 74 03 4a 79 dc }
condition:
all of them
}

rule debug_strings
{
meta:
author = "Jason Batchelor"
source = "Lockheed Martin"
lastmod = "20130905"
desc = "Debug strings observed in the binary"
strings:
$ = "read file error:%d" // debug strings
$ = "down file success"
$ = "Avaliable data:%u bytes"
$ = "Create file failed"
$ = "HttpQueryInfo failed:%d"
condition:
all of them
}

rule bd_ronin
{
condition:
rand_gen or process_list or debug_strings
}

rule vmware_port_io_detection
{
meta:
author = "Jason Batchelor"
source = "Lockheed Martin"
lastmod = "20130808"
desc = "Classic and well documented example of port I/O detection for VMWare"
strings:
$ = { b8 68 58 4d 56 bb 00 00 00 00 b9 0a 00 00 00 ba 58 56 00 00 ed 81 fb 68 58 4d 56 }
condition:
all of them
}

rule sldt_vm_detection
{
meta:
author = "Jason Batchelor"
source = "Lockheed Martin"
lastmod = "20130808"
desc = "Another trick will use the opcode sldt to store the LDTR return value. The first two bytes of this value will always be 0x00 if running on a normal host"
strings:
$ = { 0f 00 04 24 66 83 3c 24 }
condition:
all of them
}

rule cpu_time_check
{
meta:
author = "Jason Batchelor"
source = "Lockheed Martin"
lastmod = "20130808"
desc = "This trick will use the opcode RDTSC to produce a TSC (Time Stamp Counter) 64 bit value across edx:eax registers. This value is computed twice and subtracted, if the product is above a certain threshold, the malware knows it's being debugged"
strings:
$ = { 0f 31 91 0f 31 2b c1 89 45 fc 81 7d fc ff 00 00 00 }
condition:
all of them
}

rule str_vmware_check
{
meta:
author = "Jason Batchelor"
source = "Lockheed Martin"
lastmod = "20130808"
desc = "STR opcode is used to retrieve the value of the segment selector. Under VMWare, the value returned for the first two bytes will be 0x0040. Under this assumption the following check is performed to thwart analysis"
strings:
$ = { 0f 00 4d fc 80 7d fc 00 [0-1] 7? ?? 80 7d fd 40 }
condition:
all of them
}

rule virtual_pc_hook_fingerprint
{
meta:
author = "Jason Batchelor"
source = "Lockheed Martin"
lastmod = "20130808"
desc = " 0x0F3F070B, is a VM hook for Virtual PC. If running in the right environment, no exception will be raised. However, if running on a regular host the code will trigger an exception that will need to be handled"
strings:
$ = { BB 00 00 00 00 B8 01 00 00 00 0F 3F 07 0B 85 DB }
condition:
all of them
}

rule no_pill_vmware_check
{
meta:
author = "Jason Batchelor"
source = "Lockheed Martin"
lastmod = "20130809"
desc = "Rely on the LDT structure is assigned to a processor instead of an operating system. Due to this and lack of normal usage in Windows, the LDT table will differ predictably and can be used to detect VMWare"
strings:
$ = { 0f 01 04 24 8b 4c 24 02 b8 00 00 00 ff 23 c8 3b c8 }
condition:
all of them
}

rule kern32_addr_check
{
meta:
author = "Jason Batchelor"
source = "Lockheed Martin"
lastmod = "20130820"
desc = "Anti analysis check that examines the returned module handle"
strings:
$ = { be [4] 8d 7c 24 08 f3 a5 66 a5 b9 09 00 00 00 [0-8] 8d 44 24 08 50 ff [5-9] 3d 80 96 98 00 }
condition:
all of them
}

rule floating_point_register_check
{
meta:
author = "Jason Batchelor"
source = "Lockheed Martin"
lastmod = "20130820"
desc = "Anti emulation check that does some non-conventional arithmetic and checks the result"
strings:
$ = { dd [5] d9 fa e8 [4] 83 c0 2a [0-2] 83 f8 2a }
condition:
all of them
}

/*
Lockheed Martin, Kelsey Britton
06/18/2013
Detects on characteristics of jester backdoor.
*/
rule jester_strings
{
//unique strings located plaintext within the binary
strings:
$s0 = "Watch Flux"
$s1 = "I am so sad!"
$s2 = "I am so happy!"
$s3 = "!QAZ2wsx3edc"
$s4 = "SALT\\webuser"
condition:
all of them
}

rule jester_xor_key
{
//static key observed in the malware
strings:
$ky = {df000000e0000000e1000000e20000002b0000002c0000002d000000e7000000e8000000e90000002e000000ea000000eb000000ec000000ed000000ee000000ef000000f0000000f1000000f20000003f00000058000000590000005a0000005b000000440000004500000046000000470000004800000049000000960000009700000098000000990000004e0000004f000000500000005100000052000000e3000000e5000000e6000000e40000002f00000030000000310000003200000033000000340000003500000036000000 }
condition:
all of them
}

rule jester_tokenize
{
// This is a snippet of a routine responsible for tokenizing
// a command string from the C2 server. This portion takes
// each byte in the string and compares it to " " and "'".
// If either is found, it is replaced with \x00, unless it
// is a space located within a pair of single quotes.
//
// 80 FA 20 cmp dl, ' '
// 75 09 jnz short loc_100049E5 ; '
// 85 FF test edi, edi
// 75 05 jnz short loc_100049E5 ; '
// 88 1C 31 mov [ecx+esi], bl
// EB 1A jmp short loc_100049FF
// ;
// ---------------------------------------------------------------------------
// loc_100049E5:
// 80 FA 27 cmp dl, 27h ; '
// 75 15 jnz short loc_100049FF
// 88 1C 31 mov [ecx+esi], bl
// 85 FF test edi, edi
// 75 07 jnz short loc_100049F8
// BF 01 00 00 00 mov edi, 1
// EB 07 jmp short loc_100049FF
// ;
// ---------------------------------------------------------------------------
// loc_100049F8:
// 83 FF 01 cmp edi, 1
// 75 02 jnz short loc_100049FF
// 33 FF xor edi, edi
// loc_100049FF:
// 41 inc ecx
// 3B C8 cmp ecx, eax
// 7C D0 jl short loc_100049D
strings:
$tknz = {80FA20750985FF7505881C31EB1A80FA277515881C3185FF7507BF01000000EB0783FF01750233FF413BC87CD0}
condition:
all of them
}

rule jester_sniff_http
{
// This snippet is from a routine that opens a socket in
// SIO_RCVALL mode, which enables the socket to receive
// all packets that pass through. The routine captures one
// packet and checks to see if it can find any signs of
// the HTTP protocol. Checks for port 80 and HTTP are
// performed.
//
// 6A 50 push 50h ; hostshort
// FF 15 28 82 01 10 call ds:htons
// 66 39 45 02 cmp [ebp+2], ax
// 74 4B jz short loc_1000DAB0
// 6A 50 push 50h ; hostshort
// FF 15 28 82 01 10 call ds:htons
// 66 39 45 00 cmp [ebp+0], ax
// 74 3D jz short loc_1000DAB0
// 0F B7 47 02 movzx eax, word ptr [edi+2]
// 50 push eax ; hostshort
// FF 15 28 82 01 10 call ds:htons
// 0F B7 C8 movzx ecx, ax
// 2B CB sub ecx, ebx
// 2B CE sub ecx, esi
// 33 C0 xor eax, eax
// 83 F9 10 cmp ecx, 10h
// 7C 29 jl short loc_1000DAB5
// 8D 14 2B lea edx, [ebx+ebp]
// 90 nop
// loc_1000DA90:
// 8B 0C 10 mov ecx, [eax+edx]
// 81 F9 68 74 74 70 cmp ecx, 'ptth'
// 74 15 jz short loc_1000DAB0
// 81 F9 48 54 54 50 cmp ecx, 'PTTH'
// 74 0D jz short loc_1000DAB0
// 40 inc eax
// 83 F8 0D cmp eax, 0Dh
strings:
$http = {6A50FF15????????66394502744B6A50FF15????????66394500743D0FB7470250FF15????????0FB7C82BCB2BCE33C083F9107C298D142B908B0C1081F968747470741581F948545450740D4083F80D}
condition:
all of them
}

rule jester_decode
{
// This snippet of code is responsible for decoding \x15
// bytes from a buffer with a static key located within
// the malware. The routine is unique because it uses a
// static key and operates on 3 bytes per iteration of the
// loop.
//
// loc_10009260:
// 0F B6 0C 85 50 C0 01 10 movzx ecx, byte ptr g_static_key[eax*4] ;
// 30 4C 04 38 xor byte ptr [esp+eax+33Ch+var_file_data],
// cl
// 0F B6 0C 85 58 C0 01 10 movzx ecx, g_static_key_8[eax*4]
// 8A 14 85 54 C0 01 10 mov dl, g_static_key_4[eax*4]
// 30 54 04 39 xor byte ptr [esp+eax+33Ch+v_file_data+1],
// dl
// 30 4C 04 3A xor byte ptr [esp+eax+33Ch+var_noise0_dat],
// cl
// 83 C0 03 add eax, 3
// 83 F8 15 cmp eax, 15h
// 7C D5 jl short loc_10009260
strings:
$dcde = {0FB60C85?0??????304C04380FB60C85?8??????8A1485?4??????30540439304C043A83C00383F8157CD5}
condition:
all of them
}

rule jester_b64
{
// This is a routine that builds the inverse table for
// optimizing base64 decodes. The table is stored in
// a global location.
//
// 68 FF 00 00 00 push 0FFh ; size_t
// 6A 00 push 0; int
// 68 28 08 02 10 push offset b64_inv_table ; void *
// E8 2F B8 00 00 call _memset
// 83 C4 0C add esp, 0Ch
// 33 C0 xor eax, eax
// loc_10003AE6:
// 88 80 69 08 02 10 mov (b64_inv_table+41h)[eax], al
// 40 inc eax
// 83 F8 19 cmp eax, 19h
// 7E F4 jle short loc_10003AE6
// B9 61 00 00 00 mov ecx, 61h
// loc_10003AF7:
// 88 81 28 08 02 10 mov byte ptr b64_inv_table[ecx], al
// 41 inc ecx
// 40 inc eax
// 83 F9 7A cmp ecx, 7Ah
// 7E F3 jle short loc_10003AF7
// A2 58 08 02 10 mov byte ptr b64_inv_table+30h, al
// 40 inc eax
// A2 59 08 02 10 mov byte ptr b64_inv_table+31h, al
// 40 inc eax
// A2 5A 08 02 10 mov byte ptr b64_inv_table+32h, al
// 40 inc eax
// A2 5B 08 02 10 mov byte ptr b64_inv_table+33h, al
// 40 inc eax
// A2 5C 08 02 10 mov byte ptr b64_inv_table+34h, al
// 40 inc eax
// A2 5D 08 02 10 mov byte ptr b64_inv_table+35h, al
// 40 inc eax
// A2 5E 08 02 10 mov byte ptr b64_inv_table+36h, al
// 40 inc eax
// A2 5F 08 02 10 mov byte ptr b64_inv_table+37h, al
// 40 inc eax
// A2 60 08 02 10 mov byte ptr b64_inv_table+38h, al
// 40 inc eax
// A2 61 08 02 10 mov byte ptr b64_inv_table+39h, al
// 40 inc eax
// A2 68 08 02 10 mov byte ptr b64_inv_table+40h, al
// 40 inc eax
// A2 52 08 02 10 mov byte ptr b64_inv_table+2Ah, al
// FE C0 inc al
// A2 56 08 02 10 mov byte ptr b64_inv_table+2Eh, al
// C3 retn
strings:
$ = {68FF0000006A0068????????E82FB8000083C40C33C08880????????4083F8197EF4B9610000008881????????414083F97A7EF3A2????????40A2????????40A2????????40A2????????40A2????????40A2????????40A2????????40A2????????40A2????????40A2????????40A2????????40A2????????FEC0A2????????C3}
condition:
all of them
}

rule lm_bd_jester
{
condition:
jester_strings or jester_xor_key or jester_tokenize or jester_sniff_http or jester_decode or jester_b64
}


/*
; earlier method just does a single byte xor on payload with a static key
1000108e: ff 15 20 20 00 10 call DWORD PTR ds:0x10002020 ; VirtualAlloc
10001094: 89 45 fc mov DWORD PTR [ebp-0x4],eax ; address for decrypted payload
10001097: 33 c0 xor eax,eax
10001099: 8a 88 14 30 00 10 mov cl,BYTE PTR [eax+0x10003014]
1000109f: 80 f1 38 xor cl,0x38 ; single byte xor static key
100010a2: 88 8c 05 bc ec ff ff mov BYTE PTR [ebp+eax*1-0x1344],cl
100010a9: 40 inc eax ; inc offset
100010aa: 3d 3f 13 00 00 cmp eax,0x133f
100010af: 7c e8 jl 0x10001099
*/
rule decrypt_earlier
{
meta:
author = "Jason Batchelor"
source = "Lockheed Martin"
lastmod = "20130815"
desc = "Sig on earlier decryption method and allocation of memory for decrypted payload"
strings:
$ = { ff [5] 89 [2] 33 c0 8a [5] 80 f1 38 88 [6] 40 3d [2] 00 00 7c }
condition:
all of them
}


/*
; latest version will decode with xor and xor countup combo
; count up
1000108f: e8 81 02 00 00 call 0x10001315 ; stub VirtualAlloc function
10001094: 89 45 fc mov DWORD PTR [ebp-0x4],eax ; address for decrypted payload
10001097: 33 c0 xor eax,eax
10001099: 8a 88 14 30 00 10 mov cl,BYTE PTR [eax+0x10003014]
1000109f: 32 c8 xor cl,al ; xor with al countup key
100010a1: 90 nop
100010a2: e9 21 04 00 00 jmp 0x100014c8 ; jmp to extra xor routine
100010a7: 90 nop
100010a8: 90 nop
100010a9: 40 inc eax ; inc key and offset
100010aa: 3d 3f 13 00 00 cmp eax,0x133f

; extra xor with static byte
00000000 80F138 xor cl,0x38
00000003 36888C28BCECFFFF mov [ss:eax+ebp-0x1344],cl
0000000B E9D1FBFFFF jmp dword 0xfffffbe1

*/
rule decrypt_latest
{
meta:
author = "Jason Batchelor"
source = "Lockheed Martin"
lastmod = "20130815"
desc = "Sig on latest decryption method and allocation of memory for decrypted payload"
strings:
$ = { e8 [4] 89 [2] 33 c0 8a [5] 32 c8 [0-1] e9 [4-6] 40 3d }
$ = { 80 f1 38 36 [7] e9 }
condition:
all of them
}

/*
10001124: 6a 22 push 0x22 ; ProcessExecuteFlags
10001126: 58 pop eax
10001127: 89 45 e4 mov DWORD PTR [ebp-0x1c],eax
1000112a: c7 45 e0 02 00 00 00 mov DWORD PTR [ebp-0x20],0x2 ; ExecuteEnable, aim to disable DEP
10001131: 6a 04 push 0x4 ; ProcessInformationLength
10001133: 8d 4d e0 lea ecx,[ebp-0x20]
10001136: 51 push ecx ; ProcessInformation
10001137: 50 push eax ; ProcessInformationClass
10001138: ff 15 18 20 00 10 call DWORD PTR ds:0x10002018 ; GetCurrentProcess
1000113e: 50 push eax ; ProcessHandle
1000113f: ff 15 90 43 00 10 call DWORD PTR ds:0x10004390 ; ZwSetInformationProcess
10001145: 68 d8 43 00 10 push 0x100043d8 ; ThreadId
1000114a: 56 push esi ; dwCreationFlags
1000114b: 56 push esi ; lpParameter
1000114c: 68 73 10 00 10 push 0x10001073 ; offset start address
10001151: 56 push esi ; dwStackSize
10001152: 56 push esi ; lpThreadAttributes
10001153: ff 15 1c 20 00 10 call DWORD PTR ds:0x1000201c ; CreateThread
*/
rule change_dep_setting
{
meta:
author = "Jason Batchelor"
source = "Lockheed Martin"
lastmod = "20130815"
desc = "Sig on attempt to disable DEP on system"
strings:
$ = { 6a 22 58 89 [2] c7 [2] 02 00 00 00 6a 04 8d [2] 51 50 ff [5] 50 ff [5] 68 [4] 56 56 68 [4] 56 56 ff }
$ = "ZwSetInformationProcess"
condition:
all of them
}

rule in_pocket_sand
{
condition:
change_dep_setting or decrypt_latest or decrypt_earlier
}

/*
100010b8: 0f be d8 movsx ebx,al
100010bb: 81 fb 84 00 00 00 cmp ebx,0x84
100010c1: 74 04 je 0x100010c7
100010c3: 34 84 xor al,0x84
100010c5: 88 01 mov BYTE PTR [ecx],al
100010c7: 42 inc edx
100010c8: 3b d7 cmp edx,edi
100010ca: 72 de jb 0x100010aa
*/

rule xor_alg
{
meta:
author = "Jason Batchelor"
source = "Lockheed Martin"
lastmod = "20131017"
desc = "Algorithm that decodes the c2"
strings:
$ = { 0f be d8 81 fb ?? 00 00 00 74 04 34 ?? 88 01 42 3b d7 72 de }
condition:
all of them
}

/*
100013a0: 83 f9 08 cmp ecx,0x8
100013a3: 7f 57 jg 0x100013fc
100013a5: 74 48 je 0x100013ef
100013a7: 49 dec ecx
100013a8: 49 dec ecx
100013a9: 74 3b je 0x100013e6
100013ab: 49 dec ecx
100013ac: 74 2f je 0x100013dd
100013ae: 49 dec ecx
100013af: 74 21 je 0x100013d2
100013b1: 49 dec ecx
100013b2: 49 dec ecx
100013b3: 74 14 je 0x100013c9
100013b5: 49 dec ecx
100013b6: 0f 85 92 00 00 00 jne 0x1000144e
...
100013fc: 83 e9 09 sub ecx,0x9
100013ff: 74 42 je 0x10001443
10001401: 49 dec ecx
10001402: 74 33 je 0x10001437
10001404: 83 e9 05 sub ecx,0x5
10001407: 74 22 je 0x1000142b
10001409: 49 dec ecx
1000140a: 75 42 jne 0x1000144e
1000140c: 83 f8 04 cmp eax,0x4
1000140f: 75 3d jne 0x1000144e
*/

rule jump_table
{
meta:
author = "Jason Batchelor"
source = "Lockheed Martin"
lastmod = "20131017"
desc = "Signature that triggers on the jump table used"
strings:
$ = { 83 f9 08 7f ?? 74 ?? 49 49 74 ?? 49 74 ?? 49 74 ?? 49 49 74 ?? 49 0f }
$ = { 83 e9 09 74 ?? 49 74 ?? 83 e9 05 74 ?? 49 75 ?? 83 f8 04 75 }
condition:
all of them
}

rule bd_meatdress
{
condition:
xor_alg or jump_table
}



