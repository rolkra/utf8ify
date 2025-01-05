#' Inspect a Utf8 character
#'
#' @param chr A Utf8 character
#' @return Prints infos int & hex
#' @examples
#' utf8_inspect("❤️")
#' @export

utf8_inspect <- function(chr) {
  
  int <- utf8ToInt(chr)
  hex <- as.hexmode(utf8ToInt(chr))
  
  cat("chr =", chr, "\n")
  cat("int =", int, "\n")
  cat("hex =", as.character(hex), "\n")
}

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
#' utf8_text_circle("Hello World")
#' @export
utf8_text_circle <- function(text) { as_utf8_text(text, format = "o") }

#' Format number boxed using unicode
#'
#' @param num Number
#' @return Unicode text
#' @examples
#' utf8_number_box(123.45)
#' @export

utf8_number_box <- function(num) {

  chr <- as.character(num)
  result = vector("numeric")
  
  for (i in seq_len(nchar(chr))) {
    
    int <- substr(chr, i, i)
    new <- int
    
    if (int == "0") { new <- "\U0030\UFE0F\U20E3" }
    if (int == "1") { new <- "\U0031\UFE0F\U20E3" }  
    if (int == "2") { new <- "\U0032\UFE0F\U20E3" }  
    if (int == "3") { new <- "\U0033\UFE0F\U20E3" }  
    if (int == "4") { new <- "\U0034\UFE0F\U20E3" }  
    if (int == "5") { new <- "\U0035\UFE0F\U20E3" }  
    if (int == "6") { new <- "\U0036\UFE0F\U20E3" }  
    if (int == "7") { new <- "\U0037\UFE0F\U20E3" }  
    if (int == "8") { new <- "\U0038\UFE0F\U20E3" }  
    if (int == "9") { new <- "\U0039\UFE0F\U20E3" }  
    
    result <- c(result, new)
    
  }
  
  paste0(result, collapse = "")
  
} # as_utf8_number_box()

#' Collection of unicode symbols
#'
#' @return List of unicode collections
#' @examples
#' # show complete collection (as list)
#' utf8_collection()
#' 
#' # show fav collection 
#' u <- utf8_collection()
#' unlist(u$fav)
#' 
#' # show single character
#' u$fav$heart
#' @export

utf8_collection <- function() {
  
  result <- list(
    fav = list(
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
    animal = list(
      bee = "\U1F41D",
      bull = "\U1F402",
      cat = "\U1F408",
      cow = "\U1F404",
      dog = "\U1F415",
      dolphin = "\U1F42C",
      fish = "\U1F41F",
      horse = "\U1F40E",
      llama = "\U1F999",
      monkey = "\U1F412",
      pig = "\U1F416",
      rat = "\U1F400",
      rabbit = "\U1F407",
      snake = "\U1F40C",
      tiger = "\U1F405"
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
    ),
    eat = list(
      apple = "\U1F34F",
      cake = "\U1F370",
      cherry = "\U1F352",
      cookie = "\U1F36A",
      fries = "\U1F35F",
      hamburger = "\U1F354",
      lemon = "\U1F34B",
      pizza = "\U1F355",
      plate = "\U1F37D",
      popcorn = "\U1F37F"
    ),
    drink = list(
      beer = "\U1F37A",
      beer2 = "\U1F37B",
      bottle = "\U1F37E",
      coffee = "\U2615",
      cocktail = "\U1F378",
      wine = "\U1F377"
    ),
    list = list(
      arrow_right = "\U27A1",
      circle = "\U25CB",
      check = "\U2714\UFE0F",
      check_box = "\U2705",
      diamond = "\U25C6",
      diamond_blue = "\U1F539",
      diamond_orange = "\U1F538",
      dot_black = "\U26AB",
      dot_blue = "\U1F535",
      dot_green = "\U1F7E2",
      dot_orange = "\U1F7E0",
      dot_red = "\U1F534",
      dot_small = "\U25CF"
    ),
    office = list(
      calendar = "\U1F5D3",
      chart_up = "\U1F4C8",
      chart_down = "\U1F4C9",
      desktop = "\U1F5A5",
      folder = "\U1F4C2",
      laptop = "\U1F4BB",
      paperclip = "\U1F4CE",
      page = "\U1F4C4",
      pen = "\U1F58A",
      printer = "\U1F5A8",
      pushpin = "\U1F4CC",
      pushpin2 = "\U1F4CD",
      scissors = "\U2702",
      trash = "\U1F5D1"
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
    sport = list(
      basketball = "\U1F3C0",
      boxing = "\U1F94A",
      bicycling = "\U1F6B4",
      foodball = "\U1F3C8",
      medal = "\U1F3C5",
      motorcycle = "\U1F3CD",
      runner = "\U1F3C3",
      surfer = "\U1F3C4",
      tennis = "\U1F3BE",
      trophy = "\U1F3C6"
    ),
    travel = list(
      airplane = "\U2708",
      bikycle = "\U1F6B2",
      car = "\U1F697",
      helicopter = "\U1F681",
      luggage = "\U1F9F3",
      metro = "\U1F687",
      rocket = "\U1F680",
      sailboat = "\U26F5",
      scooter = "\U1F6F4",
      ship = "\U1F6A2",
      tractor = "\U1F69C",
      train = "\U1F686"
    )
  ) 
  
  result
  
} # utf8_collection()

#' Block from the UTF8 table
#'
#' @param from Hexcode starting
#' @param to Hexcode end
#' @param show_names Show names of UTF8 characters (TRUE|FALSE)
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

