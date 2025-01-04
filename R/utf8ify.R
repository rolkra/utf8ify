## utf8_text_bold()
## utf8_collection()
## utf8_block(from, to)
## u$smileys|hands|animals|eatdrink|popular|


# chr <- "🏖"
# utf8ToInt(chr)
# as.hexmode(utf8ToInt("✔️"))
# 
# 
# vec <- utf8ToInt("Creepy Alien - R Game")
# vec <- utf8ToInt("ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmnopqrstuvwxyz 0123456789")
# vec
# cat(intToUtf8(vec))

# run ---------------------------------------------------------------------

as_utf8_text <- function(text, format = "b") {
  
  vec <- utf8ToInt(text)
  result = vector("numeric")
  
  for (i in seq_along(vec)) {
    
    int <- vec[i]
    new <- vec[i]
    
    if (int >= 48 & int <= 57 & format == "b2") { new <- int + 120782 - 48 }
    if (int >= 65 & int <= 90 & format == "b2") { new <- int + 119808 - 65 }
    if (int >= 97 & int <= 122 & format == "b2") { new <- int + 119834 - 97 }
    if (int >= 65 & int <= 90 & format == "bi") { new <- int + 119912 - 65 }
    if (int >= 97 & int <= 122 & format == "bi") { new <- int + 119938 - 97 }
    if (int >= 65 & int <= 90 & format == "i") { new <- int + 120328 - 65 }
    if (int >= 97 & int <= 122 & format == "i") { new <- int + 120328 + 26 - 97 }
    if (int >= 65 & int <= 90 & format == "c") { new <- int + 120016 - 65 }
    if (int >= 97 & int <= 122 & format == "c") { new <- int + 120042 - 97 }
    if (int >= 65 & int <= 90 & format == "g") { new <- int + 120172 - 65 }
    if (int >= 97 & int <= 122 & format == "g") { new <- int + 120198 - 97 }
    if (int == 48 & format == "o") { new <- int + 9450 - 48 }
    if (int >= 49 & int <= 57 & format == "o") { new <- int + 9311 - 48 }
    if (int >= 65 & int <= 90 & format == "o") { new <- int + 9398 - 65 }
    if (int >= 97 & int <= 122 & format == "o") { new <- int + 9424 - 97 }
    if (int >= 65 & int <= 90 & format == "b") { new <- int + 120276 - 65 }
    if (int >= 97 & int <= 122 & format == "b") { new <- int + 120302 - 97 }
    if (int >= 48 & int <= 57 & format == "b") { new <- int + 120812 - 48 }
    
    result <- c(result, new)
    
  }
  
  #result
  intToUtf8(result)
}

# text <- "ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmnopqrstuvwxyz 0123456789"
# as_utf8_text(text, format = "s")
# 
# text <- "You can't format text in LinkedIn!"
# cat(paste0("\n",
#            text, "\n",  
#            as_utf8_text(text, format = "b"), "\n",
#            as_utf8_text(text, format = "b2"), "\n",
#            as_utf8_text(text, format = "i"), "\n",
#            as_utf8_text(text, format = "bi"), "\n",
#            as_utf8_text(text, format = "c"), "\n",
#            as_utf8_text(text, format = "g"), "\n",
#            as_utf8_text(text, format = "o"), "\n",
#            "\n... but you can use UTF8 characters!\n",
#            utf8_face_sunglasses(),
#            " and", as_utf8_text(" THIS ", format = "bi"), "is the trick!"
# ))

#' Format text bold (sans) using unicode
#'
#' @param text A text (as string)
#' @return Unicode text
#' @examples
#' utf8_text_bold("Hello World")
#' @export
utf8_text_bold <- function(text) { as_utf8_text(text, format = "b") }

#' Format text bold (serif) using unicode
#'
#' @param text A text (as string)
#' @return Unicode text
#' @examples
#' utf8_text_bold2("Hello World")
#' @export
utf8_text_bold2 <- function(text) { as_utf8_text(text, format = "b2") }

#' Format text italic using unicode
#'
#' @param text A text (as string)
#' @return Unicode text
#' @examples
#' utf8_text_italic("Hello World")
#' @export
utf8_text_italic <- function(text) { as_utf8_text(text, format = "i") }

#' Format text bold and italic using unicode
#'
#' @param text A text (as string)
#' @return Unicode text
#' @examples
#' utf8_text_bolditalic("Hello World")
#' @export
utf8_text_bolditalic <- function(text) { as_utf8_text(text, format = "bi") }

#' Format text cursive using unicode
#'
#' @param text A text (as string)
#' @return Unicode text
#' @examples
#' utf8_text_cursive("Hello World")
#' @export
utf8_text_cursive <- function(text) { as_utf8_text(text, format = "c") }

#' Format text gothic using unicode
#'
#' @param text A text (as string)
#' @return Unicode text
#' @examples
#' utf8_text_gothic("Hello World")
#' @export
utf8_text_gothic <- function(text) { as_utf8_text(text, format = "g") }

#' Format text circled using unicode
#'
#' @param text A text (as string)
#' @return Unicode text
#' @examples
#' utf8_text_circled("Hello World")
#' @export
utf8_text_circled <- function(text) { as_utf8_text(text, format = "o") }

#as_utf8_number_roman(1)
#as_utf8_number_box(1)

#' Collection of unicode symbols
#'
#' @param text A text (as string)
#' @return Unicode text
#' @examples
#' utf8_collection()
#' @export

utf8_collection <- function() {
  
  result <- list(
    popular = list(
      arrow_right = "\U27A1", arrow_left = "\U2B05",
      beer = "\U1F37A", bulb = "\U1F4A1", 
      check = "\U2714\UFE0F", clapping = "\U1F44F", coffee = "\U2615", cross = "\U274C",
      email = "\U1F4E7", eyes = "\U1F440", fire = "\U1F525",
      point_right ="\U1F449", point_left = "\U1F448",
      happy = "\U1F600", heart = "\U2764\UFE0F", joy = "\U1F602", key = "\U1F511",
      money = "\U1F4B0", onehundret = "\U1F4AF", party = "\U1F389", poo = "\U1F4A9",
      question = "\U2753",
      surprise = "\U1F62E", sweat = "\U1F605", rocket = "\U1F680", speech = "\U1F4AC", 
      star = "\U2B50", sunglasses = "\U1F60E",
      target = "\U1F3AF", thanks = "\U1F64F", think = "\U1F914",
      thumbs_up = "\U1F44D", thumbs_down = "\U1F44E", ups = "\U1F92D",
      wink = "\U1F44B", zipper = "\U1F910"
    ),
    smiley = list(
      happy = "\U1F600",
      joy = "\U1F602",
      sunglasses = "\U1F60E", 
      surprise = "\U1F62E",
      sweat = "\U1F605",
      think = "\U1F914",
      ups = "\U1F92D",  
      zipper = "\U1F910"
    ),
    person = list(
      woman = "\U1F469",
      man = "\U1F468",
      girl = "\U1F467",
      boy = "\U1F466",
      couple_fm = "\U1F46B",
      couple_mm = "\U1F46C",
      couple_ff = "\U1F46D",
      family = "\U1F46A",
      older_woman = "\U1F475",
      older_man = "\U1F474"
    ),
    celebrate = list(
      present = "\U1F381",
      cake = "\U1F382",
      party_popper = "\U1F389",
      balloon = "\U1F388",
      pumpkin = "\U1F383",
      xmas_tree = "\U1F384",
      santa = "\U1F385",
      fireworks = "\U1F386",
      graduation = "\U1F393"
    ),
    animal = list(
      bee = "\U1F41D",
      bull = "\U1F402",
      cat = "\U1F408",
      cow = "\U1F404",
      dog = "\U1F415",
      dolphin = "\U1F42C",
      fish = "\U1F41F",
      horse = "\U1F40E",
      monkey = "\U1F412",
      pig = "\U1F416",
      rat = "\U1F400",
      rabbit = "\U1F407",
      snake = "\U1F40C",
      tiger = "\U1F405"
    ),
    clock = list(
      clock_01 = "\U1F550",
      clock_02 = "\U1F551",
      clock_03 = "\U1F552",
      clock_04 = "\U1F553",
      clock_05 = "\U1F554",
      clock_06 = "\U1F555",
      clock_07 = "\U1F556",
      clock_08 = "\U1F557",
      clock_09 = "\U1F558",
      clock_10 = "\U1F559",
      clock_11 = "\U1F55A",
      clock_12 = "\U1F55B"
    )
  ) 
  
  result
  
} # utf8_collection()

utf8_collection

#' Block from the UTF8 table
#'
#' @param from Hexcode starting
#' @param to Hexcode end
#' @return Vector of UTF8 characters
#' @examples
#' utf8_block(from ="0x1F600", to="0x1F64F")
#' @export

utf8_block <- function(from ="0x1F600", to="0x1F64F", show_names = FALSE)  {

  #from <- strtoi("0x3040")
  #to <- strtoi("0x409F")
  seq <- seq(from, to)
  hex <- paste0("0x", toupper(as.hexmode(seq)))
  
  result <- vector()
  for (i in from:to) {
    result <- c(result, intToUtf8(i))  
  }
  if(show_names) { names(result) <- hex }
  result
} # utf8_block

