; ModuleID = 'brainfuck'

define void @main() {
entry:
  %mem = alloca [32767 x i16]
  %pntr = alloca i16
  store i16 0, i16* %pntr
  br label %block

block:                                            ; preds = %entry
  %pntr1 = load i16* %pntr
  %address = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr1
  %cell = load i16* %address
  %cell2 = add i16 %cell, 1
  store i16 %cell2, i16* %address
  %pntr3 = load i16* %pntr
  %address4 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr3
  %cell5 = load i16* %address4
  %cell6 = add i16 %cell5, 1
  store i16 %cell6, i16* %address4
  %pntr7 = load i16* %pntr
  %address8 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr7
  %cell9 = load i16* %address8
  %cell10 = add i16 %cell9, 1
  store i16 %cell10, i16* %address8
  %pntr11 = load i16* %pntr
  %address12 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr11
  %cell13 = load i16* %address12
  %cell14 = add i16 %cell13, 1
  store i16 %cell14, i16* %address12
  br label %test

test:                                             ; preds = %false43, %block
  %pntr15 = load i16* %pntr
  %address16 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr15
  %cell17 = load i16* %address16
  %cmp = icmp ne i16 %cell17, 0
  br i1 %cmp, label %true, label %false

true:                                             ; preds = %test
  br label %block18

false:                                            ; preds = %test
  %pntr75 = load i16* %pntr
  %pntr76 = add i16 %pntr75, 1
  store i16 %pntr76, i16* %pntr
  %pntr77 = load i16* %pntr
  %pntr78 = add i16 %pntr77, 1
  store i16 %pntr78, i16* %pntr
  %pntr79 = load i16* %pntr
  %pntr80 = add i16 %pntr79, 1
  store i16 %pntr80, i16* %pntr
  %pntr81 = load i16* %pntr
  %address82 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr81
  %cell83 = load i16* %address82
  %cell84 = add i16 %cell83, 1
  store i16 %cell84, i16* %address82
  %pntr85 = load i16* %pntr
  %address86 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr85
  %cell87 = load i16* %address86
  %cell88 = add i16 %cell87, 1
  store i16 %cell88, i16* %address86
  %pntr89 = load i16* %pntr
  %address90 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr89
  %cell91 = load i16* %address90
  %cell92 = add i16 %cell91, 1
  store i16 %cell92, i16* %address90
  %pntr93 = load i16* %pntr
  %address94 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr93
  %cell95 = load i16* %address94
  %cell96 = add i16 %cell95, 1
  store i16 %cell96, i16* %address94
  %pntr97 = load i16* %pntr
  %address98 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr97
  %cell99 = load i16* %address98
  %cell100 = add i16 %cell99, 1
  store i16 %cell100, i16* %address98
  %pntr101 = load i16* %pntr
  %address102 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr101
  %cell103 = load i16* %address102
  %cell104 = add i16 %cell103, 1
  store i16 %cell104, i16* %address102
  br label %test105

block18:                                          ; preds = %true
  %pntr19 = load i16* %pntr
  %address20 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr19
  %cell21 = load i16* %address20
  %cell22 = sub i16 %cell21, 1
  store i16 %cell22, i16* %address20
  %pntr23 = load i16* %pntr
  %pntr24 = add i16 %pntr23, 1
  store i16 %pntr24, i16* %pntr
  %pntr25 = load i16* %pntr
  %address26 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr25
  %cell27 = load i16* %address26
  %cell28 = add i16 %cell27, 1
  store i16 %cell28, i16* %address26
  %pntr29 = load i16* %pntr
  %address30 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr29
  %cell31 = load i16* %address30
  %cell32 = add i16 %cell31, 1
  store i16 %cell32, i16* %address30
  %pntr33 = load i16* %pntr
  %address34 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr33
  %cell35 = load i16* %address34
  %cell36 = add i16 %cell35, 1
  store i16 %cell36, i16* %address34
  %pntr37 = load i16* %pntr
  %address38 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr37
  %cell39 = load i16* %address38
  %cell40 = add i16 %cell39, 1
  store i16 %cell40, i16* %address38
  br label %test41

test41:                                           ; preds = %block48, %block18
  %pntr44 = load i16* %pntr
  %address45 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr44
  %cell46 = load i16* %address45
  %cmp47 = icmp ne i16 %cell46, 0
  br i1 %cmp47, label %true42, label %false43

true42:                                           ; preds = %test41
  br label %block48

false43:                                          ; preds = %test41
  %pntr73 = load i16* %pntr
  %pntr74 = sub i16 %pntr73, 1
  store i16 %pntr74, i16* %pntr
  br label %test

block48:                                          ; preds = %true42
  %pntr49 = load i16* %pntr
  %address50 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr49
  %cell51 = load i16* %address50
  %cell52 = sub i16 %cell51, 1
  store i16 %cell52, i16* %address50
  %pntr53 = load i16* %pntr
  %pntr54 = add i16 %pntr53, 1
  store i16 %pntr54, i16* %pntr
  %pntr55 = load i16* %pntr
  %address56 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr55
  %cell57 = load i16* %address56
  %cell58 = add i16 %cell57, 1
  store i16 %cell58, i16* %address56
  %pntr59 = load i16* %pntr
  %address60 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr59
  %cell61 = load i16* %address60
  %cell62 = add i16 %cell61, 1
  store i16 %cell62, i16* %address60
  %pntr63 = load i16* %pntr
  %address64 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr63
  %cell65 = load i16* %address64
  %cell66 = add i16 %cell65, 1
  store i16 %cell66, i16* %address64
  %pntr67 = load i16* %pntr
  %address68 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr67
  %cell69 = load i16* %address68
  %cell70 = add i16 %cell69, 1
  store i16 %cell70, i16* %address68
  %pntr71 = load i16* %pntr
  %pntr72 = sub i16 %pntr71, 1
  store i16 %pntr72, i16* %pntr
  br label %test41

test105:                                          ; preds = %block112, %false
  %pntr108 = load i16* %pntr
  %address109 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr108
  %cell110 = load i16* %address109
  %cmp111 = icmp ne i16 %cell110, 0
  br i1 %cmp111, label %true106, label %false107

true106:                                          ; preds = %test105
  br label %block112

false107:                                         ; preds = %test105
  %pntr145 = load i16* %pntr
  %pntr146 = sub i16 %pntr145, 1
  store i16 %pntr146, i16* %pntr
  br label %test147

block112:                                         ; preds = %true106
  %pntr113 = load i16* %pntr
  %address114 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr113
  %cell115 = load i16* %address114
  %cell116 = sub i16 %cell115, 1
  store i16 %cell116, i16* %address114
  %pntr117 = load i16* %pntr
  %pntr118 = sub i16 %pntr117, 1
  store i16 %pntr118, i16* %pntr
  %pntr119 = load i16* %pntr
  %address120 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr119
  %cell121 = load i16* %address120
  %cell122 = sub i16 %cell121, 1
  store i16 %cell122, i16* %address120
  %pntr123 = load i16* %pntr
  %address124 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr123
  %cell125 = load i16* %address124
  %cell126 = sub i16 %cell125, 1
  store i16 %cell126, i16* %address124
  %pntr127 = load i16* %pntr
  %address128 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr127
  %cell129 = load i16* %address128
  %cell130 = sub i16 %cell129, 1
  store i16 %cell130, i16* %address128
  %pntr131 = load i16* %pntr
  %address132 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr131
  %cell133 = load i16* %address132
  %cell134 = sub i16 %cell133, 1
  store i16 %cell134, i16* %address132
  %pntr135 = load i16* %pntr
  %address136 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr135
  %cell137 = load i16* %address136
  %cell138 = sub i16 %cell137, 1
  store i16 %cell138, i16* %address136
  %pntr139 = load i16* %pntr
  %address140 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr139
  %cell141 = load i16* %address140
  %cell142 = sub i16 %cell141, 1
  store i16 %cell142, i16* %address140
  %pntr143 = load i16* %pntr
  %pntr144 = add i16 %pntr143, 1
  store i16 %pntr144, i16* %pntr
  br label %test105

test147:                                          ; preds = %false258, %false107
  %pntr150 = load i16* %pntr
  %address151 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr150
  %cell152 = load i16* %address151
  %cmp153 = icmp ne i16 %cell152, 0
  br i1 %cmp153, label %true148, label %false149

true148:                                          ; preds = %test147
  br label %block154

false149:                                         ; preds = %test147
  br label %end

block154:                                         ; preds = %true148
  %pntr155 = load i16* %pntr
  %pntr156 = add i16 %pntr155, 1
  store i16 %pntr156, i16* %pntr
  %pntr157 = load i16* %pntr
  %address158 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr157
  %cell159 = load i16* %address158
  %cell160 = add i16 %cell159, 1
  store i16 %cell160, i16* %address158
  %pntr161 = load i16* %pntr
  %address162 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr161
  %cell163 = load i16* %address162
  %cell164 = add i16 %cell163, 1
  store i16 %cell164, i16* %address162
  %pntr165 = load i16* %pntr
  %address166 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr165
  %cell167 = load i16* %address166
  %cell168 = add i16 %cell167, 1
  store i16 %cell168, i16* %address166
  %pntr169 = load i16* %pntr
  %address170 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr169
  %cell171 = load i16* %address170
  %cell172 = add i16 %cell171, 1
  store i16 %cell172, i16* %address170
  %pntr173 = load i16* %pntr
  %address174 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr173
  %cell175 = load i16* %address174
  %cell176 = add i16 %cell175, 1
  store i16 %cell176, i16* %address174
  %pntr177 = load i16* %pntr
  %address178 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr177
  %cell179 = load i16* %address178
  %cell180 = add i16 %cell179, 1
  store i16 %cell180, i16* %address178
  br label %test181

test181:                                          ; preds = %block188, %block154
  %pntr184 = load i16* %pntr
  %address185 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr184
  %cell186 = load i16* %address185
  %cmp187 = icmp ne i16 %cell186, 0
  br i1 %cmp187, label %true182, label %false183

true182:                                          ; preds = %test181
  br label %block188

false183:                                         ; preds = %test181
  %pntr221 = load i16* %pntr
  %pntr222 = sub i16 %pntr221, 1
  store i16 %pntr222, i16* %pntr
  %pntr223 = load i16* %pntr
  %address224 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr223
  %cell225 = load i16* %address224
  %res = call i16 @putchar(i16 %cell225)
  %pntr226 = load i16* %pntr
  %address227 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr226
  %cell228 = load i16* %address227
  %cell229 = sub i16 %cell228, 1
  store i16 %cell229, i16* %address227
  %pntr230 = load i16* %pntr
  %pntr231 = add i16 %pntr230, 1
  store i16 %pntr231, i16* %pntr
  %pntr232 = load i16* %pntr
  %address233 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr232
  %cell234 = load i16* %address233
  %cell235 = add i16 %cell234, 1
  store i16 %cell235, i16* %address233
  %pntr236 = load i16* %pntr
  %address237 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr236
  %cell238 = load i16* %address237
  %cell239 = add i16 %cell238, 1
  store i16 %cell239, i16* %address237
  %pntr240 = load i16* %pntr
  %address241 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr240
  %cell242 = load i16* %address241
  %cell243 = add i16 %cell242, 1
  store i16 %cell243, i16* %address241
  %pntr244 = load i16* %pntr
  %address245 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr244
  %cell246 = load i16* %address245
  %cell247 = add i16 %cell246, 1
  store i16 %cell247, i16* %address245
  %pntr248 = load i16* %pntr
  %address249 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr248
  %cell250 = load i16* %address249
  %cell251 = add i16 %cell250, 1
  store i16 %cell251, i16* %address249
  %pntr252 = load i16* %pntr
  %address253 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr252
  %cell254 = load i16* %address253
  %cell255 = add i16 %cell254, 1
  store i16 %cell255, i16* %address253
  br label %test256

block188:                                         ; preds = %true182
  %pntr189 = load i16* %pntr
  %address190 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr189
  %cell191 = load i16* %address190
  %cell192 = sub i16 %cell191, 1
  store i16 %cell192, i16* %address190
  %pntr193 = load i16* %pntr
  %pntr194 = sub i16 %pntr193, 1
  store i16 %pntr194, i16* %pntr
  %pntr195 = load i16* %pntr
  %address196 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr195
  %cell197 = load i16* %address196
  %cell198 = add i16 %cell197, 1
  store i16 %cell198, i16* %address196
  %pntr199 = load i16* %pntr
  %address200 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr199
  %cell201 = load i16* %address200
  %cell202 = add i16 %cell201, 1
  store i16 %cell202, i16* %address200
  %pntr203 = load i16* %pntr
  %address204 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr203
  %cell205 = load i16* %address204
  %cell206 = add i16 %cell205, 1
  store i16 %cell206, i16* %address204
  %pntr207 = load i16* %pntr
  %address208 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr207
  %cell209 = load i16* %address208
  %cell210 = add i16 %cell209, 1
  store i16 %cell210, i16* %address208
  %pntr211 = load i16* %pntr
  %address212 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr211
  %cell213 = load i16* %address212
  %cell214 = add i16 %cell213, 1
  store i16 %cell214, i16* %address212
  %pntr215 = load i16* %pntr
  %address216 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr215
  %cell217 = load i16* %address216
  %cell218 = add i16 %cell217, 1
  store i16 %cell218, i16* %address216
  %pntr219 = load i16* %pntr
  %pntr220 = add i16 %pntr219, 1
  store i16 %pntr220, i16* %pntr
  br label %test181

test256:                                          ; preds = %block263, %false183
  %pntr259 = load i16* %pntr
  %address260 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr259
  %cell261 = load i16* %address260
  %cmp262 = icmp ne i16 %cell261, 0
  br i1 %cmp262, label %true257, label %false258

true257:                                          ; preds = %test256
  br label %block263

false258:                                         ; preds = %test256
  %pntr296 = load i16* %pntr
  %pntr297 = sub i16 %pntr296, 1
  store i16 %pntr297, i16* %pntr
  br label %test147

block263:                                         ; preds = %true257
  %pntr264 = load i16* %pntr
  %address265 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr264
  %cell266 = load i16* %address265
  %cell267 = sub i16 %cell266, 1
  store i16 %cell267, i16* %address265
  %pntr268 = load i16* %pntr
  %pntr269 = sub i16 %pntr268, 1
  store i16 %pntr269, i16* %pntr
  %pntr270 = load i16* %pntr
  %address271 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr270
  %cell272 = load i16* %address271
  %cell273 = sub i16 %cell272, 1
  store i16 %cell273, i16* %address271
  %pntr274 = load i16* %pntr
  %address275 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr274
  %cell276 = load i16* %address275
  %cell277 = sub i16 %cell276, 1
  store i16 %cell277, i16* %address275
  %pntr278 = load i16* %pntr
  %address279 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr278
  %cell280 = load i16* %address279
  %cell281 = sub i16 %cell280, 1
  store i16 %cell281, i16* %address279
  %pntr282 = load i16* %pntr
  %address283 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr282
  %cell284 = load i16* %address283
  %cell285 = sub i16 %cell284, 1
  store i16 %cell285, i16* %address283
  %pntr286 = load i16* %pntr
  %address287 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr286
  %cell288 = load i16* %address287
  %cell289 = sub i16 %cell288, 1
  store i16 %cell289, i16* %address287
  %pntr290 = load i16* %pntr
  %address291 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr290
  %cell292 = load i16* %address291
  %cell293 = sub i16 %cell292, 1
  store i16 %cell293, i16* %address291
  %pntr294 = load i16* %pntr
  %pntr295 = add i16 %pntr294, 1
  store i16 %pntr295, i16* %pntr
  br label %test256

end:                                              ; preds = %false149
  ret void
}

declare i16 @putchar(i16)

declare i16 @getchar()
