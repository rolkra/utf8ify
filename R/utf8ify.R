## utf8_text_bold()
## utf8_collection()
## u$smileys|hands|animals|eatdrink|popular|


# chr <- "⓪"
# utf8ToInt(chr)
# as.hexmode(utf8ToInt(chr))
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
#' as_utf8_text_bold("Hello World")
#' @export
as_utf8_text_bold <- function(text) { as_utf8_text(text, format = "b") }

#' Format text bold (serif) using unicode
#'
#' @param text A text (as string)
#' @return Unicode text
#' @examples
#' as_utf8_text_bold2("Hello World")
#' @export
as_utf8_text_bold2 <- function(text) { as_utf8_text(text, format = "b2") }

#' Format text italic using unicode
#'
#' @param text A text (as string)
#' @return Unicode text
#' @examples
#' as_utf8_text_italic("Hello World")
#' @export
as_utf8_text_italic <- function(text) { as_utf8_text(text, format = "i") }

#' Format text bold and italic using unicode
#'
#' @param text A text (as string)
#' @return Unicode text
#' @examples
#' as_utf8_text_bolditalic("Hello World")
#' @export
as_utf8_text_bolditalic <- function(text) { as_utf8_text(text, format = "bi") }

#' Format text cursive using unicode
#'
#' @param text A text (as string)
#' @return Unicode text
#' @examples
#' as_utf8_text_cursive("Hello World")
#' @export
as_utf8_text_cursive <- function(text) { as_utf8_text(text, format = "c") }

#' Format text gothic using unicode
#'
#' @param text A text (as string)
#' @return Unicode text
#' @examples
#' as_utf8_text_gothic("Hello World")
#' @export
as_utf8_text_gothic <- function(text) { as_utf8_text(text, format = "g") }

#' Format text circled using unicode
#'
#' @param text A text (as string)
#' @return Unicode text
#' @examples
#' as_utf8_text_circled("Hello World")
#' @export
as_utf8_text_circled <- function(text) { as_utf8_text(text, format = "o") }

#as_utf8_number_roman(1)
#as_utf8_number_box(1)

utf8_arrow_right <- function(n = 1) { paste(rep("\U27A1", n), collapse = "") }
utf8_arrow_left  <- function(n = 1) { paste(rep("\U2B05", n), collapse = "") }
utf8_beer        <- function(n = 1) { paste(rep("\U1F37A", n), collapse = "") }
utf8_bulb        <- function(n = 1) { paste(rep("\U1F4A1", n), collapse = "") }
utf8_check       <- function(n = 1) { paste(rep("\U2705", n), collapse = "") }
utf8_clapping    <- function(n = 1) { paste(rep("\U1F44F", n), collapse = "") }
utf8_cross       <- function(n = 1) { paste(rep("\U274C", n), collapse = "") }
utf8_email       <- function(n = 1) { paste(rep("\U1F4E7", n), collapse = "") }
utf8_eyes        <- function(n = 1) { paste(rep("\U1F440", n), collapse = "") }
utf8_face_happy  <- function(n = 1) { paste(rep("\U1F600", n), collapse = "") }
utf8_face_sweat  <- function(n = 1) { paste(rep("\U1F605", n), collapse = "") }
utf8_face_joy    <- function(n = 1) { paste(rep("\U1F602", n), collapse = "") }
utf8_face_think  <- function(n = 1) { paste(rep("\U1F914", n), collapse = "") }
utf8_face_ups    <- function(n = 1) { paste(rep("\U1F92D", n), collapse = "") }  
utf8_face_zipper <- function(n = 1) { paste(rep("\U1F910", n), collapse = "") } 
utf8_face_sunglasses <- function(n = 1) { paste(rep("\U1F60E", n), collapse = "") } 
utf8_face_surprise <- function(n = 1) { paste(rep("\U1F62E", n), collapse = "") }
utf8_finger_right <- function(n = 1) { paste(rep("\U1F449", n), collapse = "") }
utf8_finger_left <- function(n = 1) { paste(rep("\U1F448", n), collapse = "") }
utf8_heart      <- function(n = 1) { paste(rep("\U2665", n), collapse = "") }
utf8_key        <- function(n = 1) { paste(rep("\U1F511", n), collapse = "") }
utf8_money      <- function(n = 1) { paste(rep("\U1F4B0", n), collapse = "") }
utf8_party      <- function(n = 1) { paste(rep("\U1F389", n), collapse = "") }
utf8_poo        <- function(n = 1) { paste(rep("\U1F4A9", n), collapse = "") }
utf8_rocket <- function(n = 1) { paste(rep("\U1F680", n), collapse = "") }
utf8_speech <- function(n = 1) { paste(rep("\U1F4AC", n), collapse = "") }
utf8_star <- function(n = 1) { paste(rep("\U2B50", n), collapse = "") }
utf8_target <- function(n = 1) { paste(rep("\U1F3AF", n), collapse = "") }
utf8_thanks <- function(n = 1) { paste(rep("\U1F64F", n), collapse = "") }
utf8_thumbs_up   <- function(n = 1) { paste(rep("\U1F44D", n), collapse = "") }
utf8_thumbs_down <- function(n = 1) { paste(rep("\U1F44E", n), collapse = "") }
utf8_wink        <- function(n = 1) { paste(rep("\U1F44B", n), collapse = "") }
utf8_100         <- function(n = 1) { paste(rep("\U1F4AF", n), collapse = "") }
