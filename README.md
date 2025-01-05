# utf8ify
Format Text Using Unicode:


With {utf8ify} you can easily...

1️⃣ 𝗳𝗼𝗿𝗺𝗮𝘁 𝘁𝗲𝘅𝘁 
2️⃣ 𝐟𝐨𝐫𝐦𝐚𝐭 𝐭𝐞𝐱𝐭
3️⃣ 𝘧𝘰𝘳𝘮𝘢𝘵 𝘵𝘦𝘹𝘵
4️⃣ 𝒇𝒐𝒓𝒎𝒂𝒕 𝒕𝒆𝒙𝒕
5️⃣ 𝓯𝓸𝓻𝓶𝓪𝓽 𝓽𝓮𝔁𝓽
6️⃣ 𝖋𝖔𝖗𝖒𝖆𝖙 𝖙𝖊𝖝𝖙

... using UTF8 characters!
😎 🚀

```r
library(utf8ify)
text <- " format text\n"
cat(paste0(
  utf8_number_box(1), utf8_text_bold(text),
  utf8_number_box(2), utf8_text_bold2(text),
  utf8_number_box(3), utf8_text_italic(text),
  utf8_number_box(4), utf8_text_bolditalic(text),
  utf8_number_box(5), utf8_text_cursive(text),
  utf8_number_box(6), utf8_text_gothic(text),
  "... using UTF8 characters!\n",
  utf8_collection()$fav$sunglasses,
  utf8_collection()$fav$rocket
))
```
