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
  %pntr15 = load i16* %pntr
  %address16 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr15
  %cell17 = load i16* %address16
  %cell18 = add i16 %cell17, 1
  store i16 %cell18, i16* %address16
  %pntr19 = load i16* %pntr
  %address20 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr19
  %cell21 = load i16* %address20
  %cell22 = add i16 %cell21, 1
  store i16 %cell22, i16* %address20
  %pntr23 = load i16* %pntr
  %address24 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr23
  %cell25 = load i16* %address24
  %cell26 = add i16 %cell25, 1
  store i16 %cell26, i16* %address24
  %pntr27 = load i16* %pntr
  %address28 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr27
  %cell29 = load i16* %address28
  %cell30 = add i16 %cell29, 1
  store i16 %cell30, i16* %address28
  %pntr31 = load i16* %pntr
  %address32 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr31
  %cell33 = load i16* %address32
  %cell34 = add i16 %cell33, 1
  store i16 %cell34, i16* %address32
  %pntr35 = load i16* %pntr
  %address36 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr35
  %cell37 = load i16* %address36
  %cell38 = add i16 %cell37, 1
  store i16 %cell38, i16* %address36
  br label %test

test:                                             ; preds = %block42, %block
  %pntr39 = load i16* %pntr
  %address40 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr39
  %cell41 = load i16* %address40
  %cmp = icmp ne i16 %cell41, 0
  br i1 %cmp, label %true, label %false

true:                                             ; preds = %test
  br label %block42

false:                                            ; preds = %test
  %pntr147 = load i16* %pntr
  %pntr148 = add i16 %pntr147, 1
  store i16 %pntr148, i16* %pntr
  %pntr149 = load i16* %pntr
  %address150 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr149
  %cell151 = load i16* %address150
  %cell152 = add i16 %cell151, 1
  store i16 %cell152, i16* %address150
  %pntr153 = load i16* %pntr
  %address154 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr153
  %cell155 = load i16* %address154
  %cell156 = add i16 %cell155, 1
  store i16 %cell156, i16* %address154
  %pntr157 = load i16* %pntr
  %address158 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr157
  %cell159 = load i16* %address158
  %res = call i16 @putchar(i16 %cell159)
  %pntr160 = load i16* %pntr
  %pntr161 = add i16 %pntr160, 1
  store i16 %pntr161, i16* %pntr
  %pntr162 = load i16* %pntr
  %address163 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr162
  %cell164 = load i16* %address163
  %cell165 = add i16 %cell164, 1
  store i16 %cell165, i16* %address163
  %pntr166 = load i16* %pntr
  %address167 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr166
  %cell168 = load i16* %address167
  %res169 = call i16 @putchar(i16 %cell168)
  %pntr170 = load i16* %pntr
  %address171 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr170
  %cell172 = load i16* %address171
  %cell173 = add i16 %cell172, 1
  store i16 %cell173, i16* %address171
  %pntr174 = load i16* %pntr
  %address175 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr174
  %cell176 = load i16* %address175
  %cell177 = add i16 %cell176, 1
  store i16 %cell177, i16* %address175
  %pntr178 = load i16* %pntr
  %address179 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr178
  %cell180 = load i16* %address179
  %cell181 = add i16 %cell180, 1
  store i16 %cell181, i16* %address179
  %pntr182 = load i16* %pntr
  %address183 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr182
  %cell184 = load i16* %address183
  %cell185 = add i16 %cell184, 1
  store i16 %cell185, i16* %address183
  %pntr186 = load i16* %pntr
  %address187 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr186
  %cell188 = load i16* %address187
  %cell189 = add i16 %cell188, 1
  store i16 %cell189, i16* %address187
  %pntr190 = load i16* %pntr
  %address191 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr190
  %cell192 = load i16* %address191
  %cell193 = add i16 %cell192, 1
  store i16 %cell193, i16* %address191
  %pntr194 = load i16* %pntr
  %address195 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr194
  %cell196 = load i16* %address195
  %cell197 = add i16 %cell196, 1
  store i16 %cell197, i16* %address195
  %pntr198 = load i16* %pntr
  %address199 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr198
  %cell200 = load i16* %address199
  %res201 = call i16 @putchar(i16 %cell200)
  %pntr202 = load i16* %pntr
  %address203 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr202
  %cell204 = load i16* %address203
  %res205 = call i16 @putchar(i16 %cell204)
  %pntr206 = load i16* %pntr
  %address207 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr206
  %cell208 = load i16* %address207
  %cell209 = add i16 %cell208, 1
  store i16 %cell209, i16* %address207
  %pntr210 = load i16* %pntr
  %address211 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr210
  %cell212 = load i16* %address211
  %cell213 = add i16 %cell212, 1
  store i16 %cell213, i16* %address211
  %pntr214 = load i16* %pntr
  %address215 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr214
  %cell216 = load i16* %address215
  %cell217 = add i16 %cell216, 1
  store i16 %cell217, i16* %address215
  %pntr218 = load i16* %pntr
  %address219 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr218
  %cell220 = load i16* %address219
  %res221 = call i16 @putchar(i16 %cell220)
  %pntr222 = load i16* %pntr
  %pntr223 = add i16 %pntr222, 1
  store i16 %pntr223, i16* %pntr
  %pntr224 = load i16* %pntr
  %address225 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr224
  %cell226 = load i16* %address225
  %cell227 = add i16 %cell226, 1
  store i16 %cell227, i16* %address225
  %pntr228 = load i16* %pntr
  %address229 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr228
  %cell230 = load i16* %address229
  %cell231 = add i16 %cell230, 1
  store i16 %cell231, i16* %address229
  %pntr232 = load i16* %pntr
  %address233 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr232
  %cell234 = load i16* %address233
  %res235 = call i16 @putchar(i16 %cell234)
  %pntr236 = load i16* %pntr
  %pntr237 = sub i16 %pntr236, 1
  store i16 %pntr237, i16* %pntr
  %pntr238 = load i16* %pntr
  %pntr239 = sub i16 %pntr238, 1
  store i16 %pntr239, i16* %pntr
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
  %pntr256 = load i16* %pntr
  %address257 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr256
  %cell258 = load i16* %address257
  %cell259 = add i16 %cell258, 1
  store i16 %cell259, i16* %address257
  %pntr260 = load i16* %pntr
  %address261 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr260
  %cell262 = load i16* %address261
  %cell263 = add i16 %cell262, 1
  store i16 %cell263, i16* %address261
  %pntr264 = load i16* %pntr
  %address265 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr264
  %cell266 = load i16* %address265
  %cell267 = add i16 %cell266, 1
  store i16 %cell267, i16* %address265
  %pntr268 = load i16* %pntr
  %address269 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr268
  %cell270 = load i16* %address269
  %cell271 = add i16 %cell270, 1
  store i16 %cell271, i16* %address269
  %pntr272 = load i16* %pntr
  %address273 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr272
  %cell274 = load i16* %address273
  %cell275 = add i16 %cell274, 1
  store i16 %cell275, i16* %address273
  %pntr276 = load i16* %pntr
  %address277 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr276
  %cell278 = load i16* %address277
  %cell279 = add i16 %cell278, 1
  store i16 %cell279, i16* %address277
  %pntr280 = load i16* %pntr
  %address281 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr280
  %cell282 = load i16* %address281
  %cell283 = add i16 %cell282, 1
  store i16 %cell283, i16* %address281
  %pntr284 = load i16* %pntr
  %address285 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr284
  %cell286 = load i16* %address285
  %cell287 = add i16 %cell286, 1
  store i16 %cell287, i16* %address285
  %pntr288 = load i16* %pntr
  %address289 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr288
  %cell290 = load i16* %address289
  %cell291 = add i16 %cell290, 1
  store i16 %cell291, i16* %address289
  %pntr292 = load i16* %pntr
  %address293 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr292
  %cell294 = load i16* %address293
  %cell295 = add i16 %cell294, 1
  store i16 %cell295, i16* %address293
  %pntr296 = load i16* %pntr
  %address297 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr296
  %cell298 = load i16* %address297
  %cell299 = add i16 %cell298, 1
  store i16 %cell299, i16* %address297
  %pntr300 = load i16* %pntr
  %address301 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr300
  %cell302 = load i16* %address301
  %res303 = call i16 @putchar(i16 %cell302)
  %pntr304 = load i16* %pntr
  %pntr305 = add i16 %pntr304, 1
  store i16 %pntr305, i16* %pntr
  %pntr306 = load i16* %pntr
  %address307 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr306
  %cell308 = load i16* %address307
  %res309 = call i16 @putchar(i16 %cell308)
  %pntr310 = load i16* %pntr
  %address311 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr310
  %cell312 = load i16* %address311
  %cell313 = add i16 %cell312, 1
  store i16 %cell313, i16* %address311
  %pntr314 = load i16* %pntr
  %address315 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr314
  %cell316 = load i16* %address315
  %cell317 = add i16 %cell316, 1
  store i16 %cell317, i16* %address315
  %pntr318 = load i16* %pntr
  %address319 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr318
  %cell320 = load i16* %address319
  %cell321 = add i16 %cell320, 1
  store i16 %cell321, i16* %address319
  %pntr322 = load i16* %pntr
  %address323 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr322
  %cell324 = load i16* %address323
  %res325 = call i16 @putchar(i16 %cell324)
  %pntr326 = load i16* %pntr
  %address327 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr326
  %cell328 = load i16* %address327
  %cell329 = sub i16 %cell328, 1
  store i16 %cell329, i16* %address327
  %pntr330 = load i16* %pntr
  %address331 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr330
  %cell332 = load i16* %address331
  %cell333 = sub i16 %cell332, 1
  store i16 %cell333, i16* %address331
  %pntr334 = load i16* %pntr
  %address335 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr334
  %cell336 = load i16* %address335
  %cell337 = sub i16 %cell336, 1
  store i16 %cell337, i16* %address335
  %pntr338 = load i16* %pntr
  %address339 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr338
  %cell340 = load i16* %address339
  %cell341 = sub i16 %cell340, 1
  store i16 %cell341, i16* %address339
  %pntr342 = load i16* %pntr
  %address343 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr342
  %cell344 = load i16* %address343
  %cell345 = sub i16 %cell344, 1
  store i16 %cell345, i16* %address343
  %pntr346 = load i16* %pntr
  %address347 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr346
  %cell348 = load i16* %address347
  %cell349 = sub i16 %cell348, 1
  store i16 %cell349, i16* %address347
  %pntr350 = load i16* %pntr
  %address351 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr350
  %cell352 = load i16* %address351
  %res353 = call i16 @putchar(i16 %cell352)
  %pntr354 = load i16* %pntr
  %address355 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr354
  %cell356 = load i16* %address355
  %cell357 = sub i16 %cell356, 1
  store i16 %cell357, i16* %address355
  %pntr358 = load i16* %pntr
  %address359 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr358
  %cell360 = load i16* %address359
  %cell361 = sub i16 %cell360, 1
  store i16 %cell361, i16* %address359
  %pntr362 = load i16* %pntr
  %address363 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr362
  %cell364 = load i16* %address363
  %cell365 = sub i16 %cell364, 1
  store i16 %cell365, i16* %address363
  %pntr366 = load i16* %pntr
  %address367 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr366
  %cell368 = load i16* %address367
  %cell369 = sub i16 %cell368, 1
  store i16 %cell369, i16* %address367
  %pntr370 = load i16* %pntr
  %address371 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr370
  %cell372 = load i16* %address371
  %cell373 = sub i16 %cell372, 1
  store i16 %cell373, i16* %address371
  %pntr374 = load i16* %pntr
  %address375 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr374
  %cell376 = load i16* %address375
  %cell377 = sub i16 %cell376, 1
  store i16 %cell377, i16* %address375
  %pntr378 = load i16* %pntr
  %address379 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr378
  %cell380 = load i16* %address379
  %cell381 = sub i16 %cell380, 1
  store i16 %cell381, i16* %address379
  %pntr382 = load i16* %pntr
  %address383 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr382
  %cell384 = load i16* %address383
  %cell385 = sub i16 %cell384, 1
  store i16 %cell385, i16* %address383
  %pntr386 = load i16* %pntr
  %address387 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr386
  %cell388 = load i16* %address387
  %res389 = call i16 @putchar(i16 %cell388)
  %pntr390 = load i16* %pntr
  %pntr391 = add i16 %pntr390, 1
  store i16 %pntr391, i16* %pntr
  %pntr392 = load i16* %pntr
  %address393 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr392
  %cell394 = load i16* %address393
  %cell395 = add i16 %cell394, 1
  store i16 %cell395, i16* %address393
  %pntr396 = load i16* %pntr
  %address397 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr396
  %cell398 = load i16* %address397
  %res399 = call i16 @putchar(i16 %cell398)
  %pntr400 = load i16* %pntr
  %pntr401 = add i16 %pntr400, 1
  store i16 %pntr401, i16* %pntr
  %pntr402 = load i16* %pntr
  %address403 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr402
  %cell404 = load i16* %address403
  %res405 = call i16 @putchar(i16 %cell404)
  br label %end

block42:                                          ; preds = %true
  %pntr43 = load i16* %pntr
  %pntr44 = add i16 %pntr43, 1
  store i16 %pntr44, i16* %pntr
  %pntr45 = load i16* %pntr
  %address46 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr45
  %cell47 = load i16* %address46
  %cell48 = add i16 %cell47, 1
  store i16 %cell48, i16* %address46
  %pntr49 = load i16* %pntr
  %address50 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr49
  %cell51 = load i16* %address50
  %cell52 = add i16 %cell51, 1
  store i16 %cell52, i16* %address50
  %pntr53 = load i16* %pntr
  %address54 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr53
  %cell55 = load i16* %address54
  %cell56 = add i16 %cell55, 1
  store i16 %cell56, i16* %address54
  %pntr57 = load i16* %pntr
  %address58 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr57
  %cell59 = load i16* %address58
  %cell60 = add i16 %cell59, 1
  store i16 %cell60, i16* %address58
  %pntr61 = load i16* %pntr
  %address62 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr61
  %cell63 = load i16* %address62
  %cell64 = add i16 %cell63, 1
  store i16 %cell64, i16* %address62
  %pntr65 = load i16* %pntr
  %address66 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr65
  %cell67 = load i16* %address66
  %cell68 = add i16 %cell67, 1
  store i16 %cell68, i16* %address66
  %pntr69 = load i16* %pntr
  %address70 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr69
  %cell71 = load i16* %address70
  %cell72 = add i16 %cell71, 1
  store i16 %cell72, i16* %address70
  %pntr73 = load i16* %pntr
  %pntr74 = add i16 %pntr73, 1
  store i16 %pntr74, i16* %pntr
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
  %address88 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr87
  %cell89 = load i16* %address88
  %cell90 = add i16 %cell89, 1
  store i16 %cell90, i16* %address88
  %pntr91 = load i16* %pntr
  %address92 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr91
  %cell93 = load i16* %address92
  %cell94 = add i16 %cell93, 1
  store i16 %cell94, i16* %address92
  %pntr95 = load i16* %pntr
  %address96 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr95
  %cell97 = load i16* %address96
  %cell98 = add i16 %cell97, 1
  store i16 %cell98, i16* %address96
  %pntr99 = load i16* %pntr
  %address100 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr99
  %cell101 = load i16* %address100
  %cell102 = add i16 %cell101, 1
  store i16 %cell102, i16* %address100
  %pntr103 = load i16* %pntr
  %address104 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr103
  %cell105 = load i16* %address104
  %cell106 = add i16 %cell105, 1
  store i16 %cell106, i16* %address104
  %pntr107 = load i16* %pntr
  %address108 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr107
  %cell109 = load i16* %address108
  %cell110 = add i16 %cell109, 1
  store i16 %cell110, i16* %address108
  %pntr111 = load i16* %pntr
  %address112 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr111
  %cell113 = load i16* %address112
  %cell114 = add i16 %cell113, 1
  store i16 %cell114, i16* %address112
  %pntr115 = load i16* %pntr
  %pntr116 = add i16 %pntr115, 1
  store i16 %pntr116, i16* %pntr
  %pntr117 = load i16* %pntr
  %address118 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr117
  %cell119 = load i16* %address118
  %cell120 = add i16 %cell119, 1
  store i16 %cell120, i16* %address118
  %pntr121 = load i16* %pntr
  %address122 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr121
  %cell123 = load i16* %address122
  %cell124 = add i16 %cell123, 1
  store i16 %cell124, i16* %address122
  %pntr125 = load i16* %pntr
  %address126 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr125
  %cell127 = load i16* %address126
  %cell128 = add i16 %cell127, 1
  store i16 %cell128, i16* %address126
  %pntr129 = load i16* %pntr
  %pntr130 = add i16 %pntr129, 1
  store i16 %pntr130, i16* %pntr
  %pntr131 = load i16* %pntr
  %address132 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr131
  %cell133 = load i16* %address132
  %cell134 = add i16 %cell133, 1
  store i16 %cell134, i16* %address132
  %pntr135 = load i16* %pntr
  %pntr136 = sub i16 %pntr135, 1
  store i16 %pntr136, i16* %pntr
  %pntr137 = load i16* %pntr
  %pntr138 = sub i16 %pntr137, 1
  store i16 %pntr138, i16* %pntr
  %pntr139 = load i16* %pntr
  %pntr140 = sub i16 %pntr139, 1
  store i16 %pntr140, i16* %pntr
  %pntr141 = load i16* %pntr
  %pntr142 = sub i16 %pntr141, 1
  store i16 %pntr142, i16* %pntr
  %pntr143 = load i16* %pntr
  %address144 = getelementptr inbounds [32767 x i16]* %mem, i16 0, i16 %pntr143
  %cell145 = load i16* %address144
  %cell146 = sub i16 %cell145, 1
  store i16 %cell146, i16* %address144
  br label %test

end:                                              ; preds = %false
  ret void
}

declare i16 @putchar(i16)

declare i16 @getchar()
