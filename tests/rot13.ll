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
  %cell2 = sub i16 %cell, 1
  store i16 %cell2, i16* %address
  %pntr3 = load i16* %pntr
  %address4 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr3
  %input = call i16 @getchar()
  store i16 %input, i16* %address4
  %pntr5 = load i16* %pntr
  %address6 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr5
  %cell7 = load i16* %address6
  %cell8 = add i16 %cell7, 1
  store i16 %cell8, i16* %address6
  br label %test

test:                                             ; preds = %false584, %block
  %pntr9 = load i16* %pntr
  %address10 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr9
  %cell11 = load i16* %address10
  %cmp = icmp ne i16 %cell11, 0
  br i1 %cmp, label %true, label %false

true:                                             ; preds = %test
  br label %block12

false:                                            ; preds = %test
  br label %end

block12:                                          ; preds = %true
  %pntr13 = load i16* %pntr
  %address14 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr13
  %cell15 = load i16* %address14
  %cell16 = sub i16 %cell15, 1
  store i16 %cell16, i16* %address14
  br label %test17

test17:                                           ; preds = %false107, %block12
  %pntr20 = load i16* %pntr
  %address21 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr20
  %cell22 = load i16* %address21
  %cmp23 = icmp ne i16 %cell22, 0
  br i1 %cmp23, label %true18, label %false19

true18:                                           ; preds = %test17
  br label %block24

false19:                                          ; preds = %test17
  %pntr199 = load i16* %pntr
  %pntr200 = add i16 %pntr199, 1
  store i16 %pntr200, i16* %pntr
  %pntr201 = load i16* %pntr
  %pntr202 = add i16 %pntr201, 1
  store i16 %pntr202, i16* %pntr
  %pntr203 = load i16* %pntr
  %pntr204 = add i16 %pntr203, 1
  store i16 %pntr204, i16* %pntr
  br label %test205

block24:                                          ; preds = %true18
  %pntr25 = load i16* %pntr
  %pntr26 = add i16 %pntr25, 1
  store i16 %pntr26, i16* %pntr
  %pntr27 = load i16* %pntr
  %pntr28 = add i16 %pntr27, 1
  store i16 %pntr28, i16* %pntr
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
  %pntr41 = load i16* %pntr
  %address42 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr41
  %cell43 = load i16* %address42
  %cell44 = add i16 %cell43, 1
  store i16 %cell44, i16* %address42
  br label %test45

test45:                                           ; preds = %block52, %block24
  %pntr48 = load i16* %pntr
  %address49 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr48
  %cell50 = load i16* %address49
  %cmp51 = icmp ne i16 %cell50, 0
  br i1 %cmp51, label %true46, label %false47

true46:                                           ; preds = %test45
  br label %block52

false47:                                          ; preds = %test45
  %pntr93 = load i16* %pntr
  %pntr94 = sub i16 %pntr93, 1
  store i16 %pntr94, i16* %pntr
  %pntr95 = load i16* %pntr
  %address96 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr95
  %cell97 = load i16* %address96
  %cell98 = add i16 %cell97, 1
  store i16 %cell98, i16* %address96
  %pntr99 = load i16* %pntr
  %pntr100 = sub i16 %pntr99, 1
  store i16 %pntr100, i16* %pntr
  %pntr101 = load i16* %pntr
  %address102 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr101
  %cell103 = load i16* %address102
  %cell104 = sub i16 %cell103, 1
  store i16 %cell104, i16* %address102
  br label %test105

block52:                                          ; preds = %true46
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
  %address72 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr71
  %cell73 = load i16* %address72
  %cell74 = add i16 %cell73, 1
  store i16 %cell74, i16* %address72
  %pntr75 = load i16* %pntr
  %address76 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr75
  %cell77 = load i16* %address76
  %cell78 = add i16 %cell77, 1
  store i16 %cell78, i16* %address76
  %pntr79 = load i16* %pntr
  %address80 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr79
  %cell81 = load i16* %address80
  %cell82 = add i16 %cell81, 1
  store i16 %cell82, i16* %address80
  %pntr83 = load i16* %pntr
  %address84 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr83
  %cell85 = load i16* %address84
  %cell86 = add i16 %cell85, 1
  store i16 %cell86, i16* %address84
  %pntr87 = load i16* %pntr
  %pntr88 = sub i16 %pntr87, 1
  store i16 %pntr88, i16* %pntr
  %pntr89 = load i16* %pntr
  %address90 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr89
  %cell91 = load i16* %address90
  %cell92 = sub i16 %cell91, 1
  store i16 %cell92, i16* %address90
  br label %test45

test105:                                          ; preds = %false149, %false47
  %pntr108 = load i16* %pntr
  %address109 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr108
  %cell110 = load i16* %address109
  %cmp111 = icmp ne i16 %cell110, 0
  br i1 %cmp111, label %true106, label %false107

true106:                                          ; preds = %test105
  br label %block112

false107:                                         ; preds = %test105
  br label %test17

block112:                                         ; preds = %true106
  %pntr113 = load i16* %pntr
  %pntr114 = add i16 %pntr113, 1
  store i16 %pntr114, i16* %pntr
  %pntr115 = load i16* %pntr
  %address116 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr115
  %cell117 = load i16* %address116
  %cell118 = add i16 %cell117, 1
  store i16 %cell118, i16* %address116
  %pntr119 = load i16* %pntr
  %pntr120 = add i16 %pntr119, 1
  store i16 %pntr120, i16* %pntr
  %pntr121 = load i16* %pntr
  %address122 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr121
  %cell123 = load i16* %address122
  %cell124 = add i16 %cell123, 1
  store i16 %cell124, i16* %address122
  %pntr125 = load i16* %pntr
  %pntr126 = add i16 %pntr125, 1
  store i16 %pntr126, i16* %pntr
  %pntr127 = load i16* %pntr
  %address128 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr127
  %cell129 = load i16* %address128
  %cell130 = sub i16 %cell129, 1
  store i16 %cell130, i16* %address128
  br label %test131

test131:                                          ; preds = %block138, %block112
  %pntr134 = load i16* %pntr
  %address135 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr134
  %cell136 = load i16* %address135
  %cmp137 = icmp ne i16 %cell136, 0
  br i1 %cmp137, label %true132, label %false133

true132:                                          ; preds = %test131
  br label %block138

false133:                                         ; preds = %test131
  %pntr145 = load i16* %pntr
  %pntr146 = sub i16 %pntr145, 1
  store i16 %pntr146, i16* %pntr
  br label %test147

block138:                                         ; preds = %true132
  %pntr139 = load i16* %pntr
  %pntr140 = add i16 %pntr139, 1
  store i16 %pntr140, i16* %pntr
  %pntr141 = load i16* %pntr
  %pntr142 = add i16 %pntr141, 1
  store i16 %pntr142, i16* %pntr
  %pntr143 = load i16* %pntr
  %pntr144 = add i16 %pntr143, 1
  store i16 %pntr144, i16* %pntr
  br label %test131

test147:                                          ; preds = %false157, %false133
  %pntr150 = load i16* %pntr
  %address151 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr150
  %cell152 = load i16* %address151
  %cmp153 = icmp ne i16 %cell152, 0
  br i1 %cmp153, label %true148, label %false149

true148:                                          ; preds = %test147
  br label %block154

false149:                                         ; preds = %test147
  %pntr185 = load i16* %pntr
  %pntr186 = sub i16 %pntr185, 1
  store i16 %pntr186, i16* %pntr
  %pntr187 = load i16* %pntr
  %pntr188 = sub i16 %pntr187, 1
  store i16 %pntr188, i16* %pntr
  %pntr189 = load i16* %pntr
  %pntr190 = sub i16 %pntr189, 1
  store i16 %pntr190, i16* %pntr
  %pntr191 = load i16* %pntr
  %pntr192 = sub i16 %pntr191, 1
  store i16 %pntr192, i16* %pntr
  %pntr193 = load i16* %pntr
  %pntr194 = sub i16 %pntr193, 1
  store i16 %pntr194, i16* %pntr
  %pntr195 = load i16* %pntr
  %address196 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr195
  %cell197 = load i16* %address196
  %cell198 = sub i16 %cell197, 1
  store i16 %cell198, i16* %address196
  br label %test105

block154:                                         ; preds = %true148
  br label %test155

test155:                                          ; preds = %block162, %block154
  %pntr158 = load i16* %pntr
  %address159 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr158
  %cell160 = load i16* %address159
  %cmp161 = icmp ne i16 %cell160, 0
  br i1 %cmp161, label %true156, label %false157

true156:                                          ; preds = %test155
  br label %block162

false157:                                         ; preds = %test155
  %pntr175 = load i16* %pntr
  %pntr176 = add i16 %pntr175, 1
  store i16 %pntr176, i16* %pntr
  %pntr177 = load i16* %pntr
  %pntr178 = add i16 %pntr177, 1
  store i16 %pntr178, i16* %pntr
  %pntr179 = load i16* %pntr
  %address180 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr179
  %cell181 = load i16* %address180
  %cell182 = add i16 %cell181, 1
  store i16 %cell182, i16* %address180
  %pntr183 = load i16* %pntr
  %pntr184 = add i16 %pntr183, 1
  store i16 %pntr184, i16* %pntr
  br label %test147

block162:                                         ; preds = %true156
  %pntr163 = load i16* %pntr
  %pntr164 = add i16 %pntr163, 1
  store i16 %pntr164, i16* %pntr
  %pntr165 = load i16* %pntr
  %address166 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr165
  %cell167 = load i16* %address166
  %cell168 = add i16 %cell167, 1
  store i16 %cell168, i16* %address166
  %pntr169 = load i16* %pntr
  %pntr170 = sub i16 %pntr169, 1
  store i16 %pntr170, i16* %pntr
  %pntr171 = load i16* %pntr
  %address172 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr171
  %cell173 = load i16* %address172
  %cell174 = sub i16 %cell173, 1
  store i16 %cell174, i16* %address172
  br label %test155

test205:                                          ; preds = %block212, %false19
  %pntr208 = load i16* %pntr
  %address209 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr208
  %cell210 = load i16* %address209
  %cmp211 = icmp ne i16 %cell210, 0
  br i1 %cmp211, label %true206, label %false207

true206:                                          ; preds = %test205
  br label %block212

false207:                                         ; preds = %test205
  %pntr217 = load i16* %pntr
  %address218 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr217
  %cell219 = load i16* %address218
  %cell220 = add i16 %cell219, 1
  store i16 %cell220, i16* %address218
  %pntr221 = load i16* %pntr
  %pntr222 = add i16 %pntr221, 1
  store i16 %pntr222, i16* %pntr
  %pntr223 = load i16* %pntr
  %address224 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr223
  %cell225 = load i16* %address224
  %cell226 = sub i16 %cell225, 1
  store i16 %cell226, i16* %address224
  %pntr227 = load i16* %pntr
  %address228 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr227
  %cell229 = load i16* %address228
  %cell230 = sub i16 %cell229, 1
  store i16 %cell230, i16* %address228
  br label %test231

block212:                                         ; preds = %true206
  %pntr213 = load i16* %pntr
  %address214 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr213
  %cell215 = load i16* %address214
  %cell216 = sub i16 %cell215, 1
  store i16 %cell216, i16* %address214
  br label %test205

test231:                                          ; preds = %false245, %false207
  %pntr234 = load i16* %pntr
  %address235 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr234
  %cell236 = load i16* %address235
  %cmp237 = icmp ne i16 %cell236, 0
  br i1 %cmp237, label %true232, label %false233

true232:                                          ; preds = %test231
  br label %block238

false233:                                         ; preds = %test231
  %pntr283 = load i16* %pntr
  %pntr284 = sub i16 %pntr283, 1
  store i16 %pntr284, i16* %pntr
  br label %test285

block238:                                         ; preds = %true232
  %pntr239 = load i16* %pntr
  %address240 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr239
  %cell241 = load i16* %address240
  %cell242 = sub i16 %cell241, 1
  store i16 %cell242, i16* %address240
  br label %test243

test243:                                          ; preds = %false273, %block238
  %pntr246 = load i16* %pntr
  %address247 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr246
  %cell248 = load i16* %address247
  %cmp249 = icmp ne i16 %cell248, 0
  br i1 %cmp249, label %true244, label %false245

true244:                                          ; preds = %test243
  br label %block250

false245:                                         ; preds = %test243
  br label %test231

block250:                                         ; preds = %true244
  %pntr251 = load i16* %pntr
  %pntr252 = sub i16 %pntr251, 1
  store i16 %pntr252, i16* %pntr
  %pntr253 = load i16* %pntr
  %address254 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr253
  %cell255 = load i16* %address254
  %cell256 = sub i16 %cell255, 1
  store i16 %cell256, i16* %address254
  %pntr257 = load i16* %pntr
  %pntr258 = add i16 %pntr257, 1
  store i16 %pntr258, i16* %pntr
  %pntr259 = load i16* %pntr
  %address260 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr259
  %cell261 = load i16* %address260
  %cell262 = add i16 %cell261, 1
  store i16 %cell262, i16* %address260
  %pntr263 = load i16* %pntr
  %address264 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr263
  %cell265 = load i16* %address264
  %cell266 = add i16 %cell265, 1
  store i16 %cell266, i16* %address264
  %pntr267 = load i16* %pntr
  %address268 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr267
  %cell269 = load i16* %address268
  %cell270 = add i16 %cell269, 1
  store i16 %cell270, i16* %address268
  br label %test271

test271:                                          ; preds = %block278, %block250
  %pntr274 = load i16* %pntr
  %address275 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr274
  %cell276 = load i16* %address275
  %cmp277 = icmp ne i16 %cell276, 0
  br i1 %cmp277, label %true272, label %false273

true272:                                          ; preds = %test271
  br label %block278

false273:                                         ; preds = %test271
  br label %test243

block278:                                         ; preds = %true272
  %pntr279 = load i16* %pntr
  %address280 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr279
  %cell281 = load i16* %address280
  %cell282 = sub i16 %cell281, 1
  store i16 %cell282, i16* %address280
  br label %test271

test285:                                          ; preds = %false541, %false233
  %pntr288 = load i16* %pntr
  %address289 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr288
  %cell290 = load i16* %address289
  %cmp291 = icmp ne i16 %cell290, 0
  br i1 %cmp291, label %true286, label %false287

true286:                                          ; preds = %test285
  br label %block292

false287:                                         ; preds = %test285
  %pntr563 = load i16* %pntr
  %pntr564 = sub i16 %pntr563, 1
  store i16 %pntr564, i16* %pntr
  br label %test565

block292:                                         ; preds = %true286
  %pntr293 = load i16* %pntr
  %address294 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr293
  %cell295 = load i16* %address294
  %cell296 = add i16 %cell295, 1
  store i16 %cell296, i16* %address294
  %pntr297 = load i16* %pntr
  %address298 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr297
  %cell299 = load i16* %address298
  %cell300 = add i16 %cell299, 1
  store i16 %cell300, i16* %address298
  %pntr301 = load i16* %pntr
  %address302 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr301
  %cell303 = load i16* %address302
  %cell304 = add i16 %cell303, 1
  store i16 %cell304, i16* %address302
  %pntr305 = load i16* %pntr
  %address306 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr305
  %cell307 = load i16* %address306
  %cell308 = add i16 %cell307, 1
  store i16 %cell308, i16* %address306
  %pntr309 = load i16* %pntr
  %address310 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr309
  %cell311 = load i16* %address310
  %cell312 = add i16 %cell311, 1
  store i16 %cell312, i16* %address310
  %pntr313 = load i16* %pntr
  %address314 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr313
  %cell315 = load i16* %address314
  %cell316 = add i16 %cell315, 1
  store i16 %cell316, i16* %address314
  %pntr317 = load i16* %pntr
  %address318 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr317
  %cell319 = load i16* %address318
  %cell320 = add i16 %cell319, 1
  store i16 %cell320, i16* %address318
  %pntr321 = load i16* %pntr
  %address322 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr321
  %cell323 = load i16* %address322
  %cell324 = add i16 %cell323, 1
  store i16 %cell324, i16* %address322
  %pntr325 = load i16* %pntr
  %address326 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr325
  %cell327 = load i16* %address326
  %cell328 = add i16 %cell327, 1
  store i16 %cell328, i16* %address326
  %pntr329 = load i16* %pntr
  %address330 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr329
  %cell331 = load i16* %address330
  %cell332 = add i16 %cell331, 1
  store i16 %cell332, i16* %address330
  %pntr333 = load i16* %pntr
  %address334 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr333
  %cell335 = load i16* %address334
  %cell336 = add i16 %cell335, 1
  store i16 %cell336, i16* %address334
  %pntr337 = load i16* %pntr
  %address338 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr337
  %cell339 = load i16* %address338
  %cell340 = add i16 %cell339, 1
  store i16 %cell340, i16* %address338
  %pntr341 = load i16* %pntr
  %pntr342 = sub i16 %pntr341, 1
  store i16 %pntr342, i16* %pntr
  br label %test343

test343:                                          ; preds = %false379, %block292
  %pntr346 = load i16* %pntr
  %address347 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr346
  %cell348 = load i16* %address347
  %cmp349 = icmp ne i16 %cell348, 0
  br i1 %cmp349, label %true344, label %false345

true344:                                          ; preds = %test343
  br label %block350

false345:                                         ; preds = %test343
  %pntr433 = load i16* %pntr
  %pntr434 = add i16 %pntr433, 1
  store i16 %pntr434, i16* %pntr
  %pntr435 = load i16* %pntr
  %pntr436 = add i16 %pntr435, 1
  store i16 %pntr436, i16* %pntr
  br label %test437

block350:                                         ; preds = %true344
  %pntr351 = load i16* %pntr
  %pntr352 = add i16 %pntr351, 1
  store i16 %pntr352, i16* %pntr
  %pntr353 = load i16* %pntr
  %address354 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr353
  %cell355 = load i16* %address354
  %cell356 = sub i16 %cell355, 1
  store i16 %cell356, i16* %address354
  br label %test357

test357:                                          ; preds = %block364, %block350
  %pntr360 = load i16* %pntr
  %address361 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr360
  %cell362 = load i16* %address361
  %cmp363 = icmp ne i16 %cell362, 0
  br i1 %cmp363, label %true358, label %false359

true358:                                          ; preds = %test357
  br label %block364

false359:                                         ; preds = %test357
  %pntr375 = load i16* %pntr
  %pntr376 = add i16 %pntr375, 1
  store i16 %pntr376, i16* %pntr
  br label %test377

block364:                                         ; preds = %true358
  %pntr365 = load i16* %pntr
  %pntr366 = add i16 %pntr365, 1
  store i16 %pntr366, i16* %pntr
  %pntr367 = load i16* %pntr
  %address368 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr367
  %cell369 = load i16* %address368
  %cell370 = add i16 %cell369, 1
  store i16 %cell370, i16* %address368
  %pntr371 = load i16* %pntr
  %pntr372 = add i16 %pntr371, 1
  store i16 %pntr372, i16* %pntr
  %pntr373 = load i16* %pntr
  %pntr374 = add i16 %pntr373, 1
  store i16 %pntr374, i16* %pntr
  br label %test357

test377:                                          ; preds = %false391, %false359
  %pntr380 = load i16* %pntr
  %address381 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr380
  %cell382 = load i16* %address381
  %cmp383 = icmp ne i16 %cell382, 0
  br i1 %cmp383, label %true378, label %false379

true378:                                          ; preds = %test377
  br label %block384

false379:                                         ; preds = %test377
  %pntr419 = load i16* %pntr
  %pntr420 = sub i16 %pntr419, 1
  store i16 %pntr420, i16* %pntr
  %pntr421 = load i16* %pntr
  %pntr422 = sub i16 %pntr421, 1
  store i16 %pntr422, i16* %pntr
  %pntr423 = load i16* %pntr
  %pntr424 = sub i16 %pntr423, 1
  store i16 %pntr424, i16* %pntr
  %pntr425 = load i16* %pntr
  %pntr426 = sub i16 %pntr425, 1
  store i16 %pntr426, i16* %pntr
  %pntr427 = load i16* %pntr
  %pntr428 = sub i16 %pntr427, 1
  store i16 %pntr428, i16* %pntr
  %pntr429 = load i16* %pntr
  %address430 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr429
  %cell431 = load i16* %address430
  %cell432 = sub i16 %cell431, 1
  store i16 %cell432, i16* %address430
  br label %test343

block384:                                         ; preds = %true378
  %pntr385 = load i16* %pntr
  %address386 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr385
  %cell387 = load i16* %address386
  %cell388 = add i16 %cell387, 1
  store i16 %cell388, i16* %address386
  br label %test389

test389:                                          ; preds = %block396, %block384
  %pntr392 = load i16* %pntr
  %address393 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr392
  %cell394 = load i16* %address393
  %cmp395 = icmp ne i16 %cell394, 0
  br i1 %cmp395, label %true390, label %false391

true390:                                          ; preds = %test389
  br label %block396

false391:                                         ; preds = %test389
  %pntr409 = load i16* %pntr
  %pntr410 = add i16 %pntr409, 1
  store i16 %pntr410, i16* %pntr
  %pntr411 = load i16* %pntr
  %address412 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr411
  %cell413 = load i16* %address412
  %cell414 = add i16 %cell413, 1
  store i16 %cell414, i16* %address412
  %pntr415 = load i16* %pntr
  %pntr416 = add i16 %pntr415, 1
  store i16 %pntr416, i16* %pntr
  %pntr417 = load i16* %pntr
  %pntr418 = add i16 %pntr417, 1
  store i16 %pntr418, i16* %pntr
  br label %test377

block396:                                         ; preds = %true390
  %pntr397 = load i16* %pntr
  %pntr398 = sub i16 %pntr397, 1
  store i16 %pntr398, i16* %pntr
  %pntr399 = load i16* %pntr
  %address400 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr399
  %cell401 = load i16* %address400
  %cell402 = add i16 %cell401, 1
  store i16 %cell402, i16* %address400
  %pntr403 = load i16* %pntr
  %pntr404 = add i16 %pntr403, 1
  store i16 %pntr404, i16* %pntr
  %pntr405 = load i16* %pntr
  %address406 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr405
  %cell407 = load i16* %address406
  %cell408 = sub i16 %cell407, 1
  store i16 %cell408, i16* %address406
  br label %test389

test437:                                          ; preds = %block444, %false345
  %pntr440 = load i16* %pntr
  %address441 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr440
  %cell442 = load i16* %address441
  %cmp443 = icmp ne i16 %cell442, 0
  br i1 %cmp443, label %true438, label %false439

true438:                                          ; preds = %test437
  br label %block444

false439:                                         ; preds = %test437
  %pntr457 = load i16* %pntr
  %pntr458 = add i16 %pntr457, 1
  store i16 %pntr458, i16* %pntr
  br label %test459

block444:                                         ; preds = %true438
  %pntr445 = load i16* %pntr
  %pntr446 = sub i16 %pntr445, 1
  store i16 %pntr446, i16* %pntr
  %pntr447 = load i16* %pntr
  %address448 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr447
  %cell449 = load i16* %address448
  %cell450 = add i16 %cell449, 1
  store i16 %cell450, i16* %address448
  %pntr451 = load i16* %pntr
  %pntr452 = add i16 %pntr451, 1
  store i16 %pntr452, i16* %pntr
  %pntr453 = load i16* %pntr
  %address454 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr453
  %cell455 = load i16* %address454
  %cell456 = sub i16 %cell455, 1
  store i16 %cell456, i16* %address454
  br label %test437

test459:                                          ; preds = %false509, %false439
  %pntr462 = load i16* %pntr
  %address463 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr462
  %cell464 = load i16* %address463
  %cmp465 = icmp ne i16 %cell464, 0
  br i1 %cmp465, label %true460, label %false461

true460:                                          ; preds = %test459
  br label %block466

false461:                                         ; preds = %test459
  %pntr535 = load i16* %pntr
  %pntr536 = sub i16 %pntr535, 1
  store i16 %pntr536, i16* %pntr
  %pntr537 = load i16* %pntr
  %pntr538 = sub i16 %pntr537, 1
  store i16 %pntr538, i16* %pntr
  br label %test539

block466:                                         ; preds = %true460
  %pntr467 = load i16* %pntr
  %address468 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr467
  %cell469 = load i16* %address468
  %cell470 = sub i16 %cell469, 1
  store i16 %cell470, i16* %address468
  br label %test471

test471:                                          ; preds = %false489, %block466
  %pntr474 = load i16* %pntr
  %address475 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr474
  %cell476 = load i16* %address475
  %cmp477 = icmp ne i16 %cell476, 0
  br i1 %cmp477, label %true472, label %false473

true472:                                          ; preds = %test471
  br label %block478

false473:                                         ; preds = %test471
  %pntr503 = load i16* %pntr
  %pntr504 = sub i16 %pntr503, 1
  store i16 %pntr504, i16* %pntr
  %pntr505 = load i16* %pntr
  %pntr506 = sub i16 %pntr505, 1
  store i16 %pntr506, i16* %pntr
  br label %test507

block478:                                         ; preds = %true472
  %pntr479 = load i16* %pntr
  %address480 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr479
  %cell481 = load i16* %address480
  %cell482 = sub i16 %cell481, 1
  store i16 %cell482, i16* %address480
  %pntr483 = load i16* %pntr
  %pntr484 = sub i16 %pntr483, 1
  store i16 %pntr484, i16* %pntr
  %pntr485 = load i16* %pntr
  %pntr486 = sub i16 %pntr485, 1
  store i16 %pntr486, i16* %pntr
  br label %test487

test487:                                          ; preds = %block494, %block478
  %pntr490 = load i16* %pntr
  %address491 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr490
  %cell492 = load i16* %address491
  %cmp493 = icmp ne i16 %cell492, 0
  br i1 %cmp493, label %true488, label %false489

true488:                                          ; preds = %test487
  br label %block494

false489:                                         ; preds = %test487
  %pntr499 = load i16* %pntr
  %pntr500 = add i16 %pntr499, 1
  store i16 %pntr500, i16* %pntr
  %pntr501 = load i16* %pntr
  %pntr502 = add i16 %pntr501, 1
  store i16 %pntr502, i16* %pntr
  br label %test471

block494:                                         ; preds = %true488
  %pntr495 = load i16* %pntr
  %address496 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr495
  %cell497 = load i16* %address496
  %cell498 = sub i16 %cell497, 1
  store i16 %cell498, i16* %address496
  br label %test487

test507:                                          ; preds = %block514, %false473
  %pntr510 = load i16* %pntr
  %address511 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr510
  %cell512 = load i16* %address511
  %cmp513 = icmp ne i16 %cell512, 0
  br i1 %cmp513, label %true508, label %false509

true508:                                          ; preds = %test507
  br label %block514

false509:                                         ; preds = %test507
  %pntr531 = load i16* %pntr
  %pntr532 = add i16 %pntr531, 1
  store i16 %pntr532, i16* %pntr
  %pntr533 = load i16* %pntr
  %pntr534 = add i16 %pntr533, 1
  store i16 %pntr534, i16* %pntr
  br label %test459

block514:                                         ; preds = %true508
  %pntr515 = load i16* %pntr
  %pntr516 = sub i16 %pntr515, 1
  store i16 %pntr516, i16* %pntr
  %pntr517 = load i16* %pntr
  %pntr518 = sub i16 %pntr517, 1
  store i16 %pntr518, i16* %pntr
  %pntr519 = load i16* %pntr
  %address520 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr519
  %cell521 = load i16* %address520
  %cell522 = sub i16 %cell521, 1
  store i16 %cell522, i16* %address520
  %pntr523 = load i16* %pntr
  %pntr524 = add i16 %pntr523, 1
  store i16 %pntr524, i16* %pntr
  %pntr525 = load i16* %pntr
  %pntr526 = add i16 %pntr525, 1
  store i16 %pntr526, i16* %pntr
  %pntr527 = load i16* %pntr
  %address528 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr527
  %cell529 = load i16* %address528
  %cell530 = sub i16 %cell529, 1
  store i16 %cell530, i16* %address528
  br label %test507

test539:                                          ; preds = %block546, %false461
  %pntr542 = load i16* %pntr
  %address543 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr542
  %cell544 = load i16* %address543
  %cmp545 = icmp ne i16 %cell544, 0
  br i1 %cmp545, label %true540, label %false541

true540:                                          ; preds = %test539
  br label %block546

false541:                                         ; preds = %test539
  br label %test285

block546:                                         ; preds = %true540
  %pntr547 = load i16* %pntr
  %pntr548 = sub i16 %pntr547, 1
  store i16 %pntr548, i16* %pntr
  %pntr549 = load i16* %pntr
  %pntr550 = sub i16 %pntr549, 1
  store i16 %pntr550, i16* %pntr
  %pntr551 = load i16* %pntr
  %address552 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr551
  %cell553 = load i16* %address552
  %cell554 = add i16 %cell553, 1
  store i16 %cell554, i16* %address552
  %pntr555 = load i16* %pntr
  %pntr556 = add i16 %pntr555, 1
  store i16 %pntr556, i16* %pntr
  %pntr557 = load i16* %pntr
  %pntr558 = add i16 %pntr557, 1
  store i16 %pntr558, i16* %pntr
  %pntr559 = load i16* %pntr
  %address560 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr559
  %cell561 = load i16* %address560
  %cell562 = sub i16 %cell561, 1
  store i16 %cell562, i16* %address560
  br label %test539

test565:                                          ; preds = %block572, %false287
  %pntr568 = load i16* %pntr
  %address569 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr568
  %cell570 = load i16* %address569
  %cmp571 = icmp ne i16 %cell570, 0
  br i1 %cmp571, label %true566, label %false567

true566:                                          ; preds = %test565
  br label %block572

false567:                                         ; preds = %test565
  %pntr577 = load i16* %pntr
  %pntr578 = sub i16 %pntr577, 1
  store i16 %pntr578, i16* %pntr
  %pntr579 = load i16* %pntr
  %address580 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr579
  %cell581 = load i16* %address580
  %res = call i16 @putchar(i16 %cell581)
  br label %test582

block572:                                         ; preds = %true566
  %pntr573 = load i16* %pntr
  %address574 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr573
  %cell575 = load i16* %address574
  %cell576 = sub i16 %cell575, 1
  store i16 %cell576, i16* %address574
  br label %test565

test582:                                          ; preds = %block589, %false567
  %pntr585 = load i16* %pntr
  %address586 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr585
  %cell587 = load i16* %address586
  %cmp588 = icmp ne i16 %cell587, 0
  br i1 %cmp588, label %true583, label %false584

true583:                                          ; preds = %test582
  br label %block589

false584:                                         ; preds = %test582
  %pntr594 = load i16* %pntr
  %pntr595 = sub i16 %pntr594, 1
  store i16 %pntr595, i16* %pntr
  %pntr596 = load i16* %pntr
  %address597 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr596
  %cell598 = load i16* %address597
  %cell599 = sub i16 %cell598, 1
  store i16 %cell599, i16* %address597
  %pntr600 = load i16* %pntr
  %address601 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr600
  %input602 = call i16 @getchar()
  store i16 %input602, i16* %address601
  %pntr603 = load i16* %pntr
  %address604 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr603
  %cell605 = load i16* %address604
  %cell606 = add i16 %cell605, 1
  store i16 %cell606, i16* %address604
  br label %test

block589:                                         ; preds = %true583
  %pntr590 = load i16* %pntr
  %address591 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr590
  %cell592 = load i16* %address591
  %cell593 = sub i16 %cell592, 1
  store i16 %cell593, i16* %address591
  br label %test582

end:                                              ; preds = %false
  ret void
}

declare i16 @putchar(i16)

declare i16 @getchar()
