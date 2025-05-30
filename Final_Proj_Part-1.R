install.packages(c("rvest", "dplyr", "readr"))

library(rvest)
library(dplyr)
library(readr)

scrape_category_news <- function(category_url, category_name, max_articles = 10) 
  {
  root_url <- "https://en.ittefaq.com.bd"
  
  all_articles <- list()
  webpage <- 1
  while (length(all_articles) < max_articles) {
    url <- paste0(category_url, "?webpage=", webpage)
    cat(" Scraping from:", url, "\n")
    
    html <- tryCatch(read_html(url), error = function(e) NULL)
    
    if (is.null(html)) break
    
    links <- html %>%
      html_nodes("a.link_overlay") %>%
      html_attr("href") %>%
      unique()
    
    if (length(links) == 0) break
    
    for (link in links) {
      if (length(all_articles) >= max_articles) break
      full_url <- paste0(root_url, link)
      article_page <- tryCatch(read_html(full_url), error = function(e) NULL)
      if (is.null(article_page)) next
      
      title <- article_page %>%
        html_node("h1") %>%
        html_text(trim = TRUE)
    
      date <- article_page %>%
        html_node(".tts_time") %>%
        html_text(trim = TRUE)
      
      description <- article_page %>%
        html_nodes(".content_detail_content_outer p") %>%
        html_text(trim = TRUE) %>%
        paste(collapse = " ")
      
      if (!is.na(title) && nchar(description) > 50) {
        article <- data.frame(
          date = date,
          title = title,
          description = description,
          category = category_name,
          url = full_url,
          stringsAsFactors = FALSE
        )
        all_articles[[length(all_articles) + 1]] <- article
      }
    }
    webpage <- webpage + 1
    Sys.sleep(1)
  }
  return(bind_rows(all_articles))
}


categories <- list(
  politics = "https://en.ittefaq.com.bd/politics",
  sports = "https://en.ittefaq.com.bd/sports",
  technology = "https://en.ittefaq.com.bd/tech"
)

all_news <- bind_rows(
  lapply(names(categories), function(cat) {
    cat("scraping data:", cat, "\n")
    scrape_category_news(categories[[cat]], cat, max_articles = 10)
  })
)

write_csv(all_news, "news.csv")
table(all_news$category)
View(all_news)
getwd()




install.packages(c("textclean", "tm", "textstem", "tokenizers", "textdata"))
install.packages(c("hunspell"))

library(textclean)
library(tm)
library(textstem)
library(tokenizers)
library(hunspell)
library(dplyr)

preprocess_text <- function(text) {
  text <- tolower(text)
  text <- gsub("http\\S+|www\\S+", "", text)
  text <- gsub("<.*?>", "", text)
  text <- replace_emoji(text)
  text <- replace_emoticon(text)
  text <- replace_contraction(text)
  text <- gsub("\\d+", "", text)
  text <- removePunctuation(text)
  text <- stripWhitespace(text)
  tokens <- unlist(tokenize_words(text))
  tokens <- tokens[!tokens %in% stopwords("en")]
  corrected_tokens <- sapply(tokens, function(word) {
    if (!hunspell_check(word)) {
      suggestions <- hunspell_suggest(word)[[1]]
      if (length(suggestions) > 0) return(suggestions[1])
    }
    return(word)
  }, USE.NAMES = FALSE)
  lemmatized_tokens <- lemmatize_words(corrected_tokens)
  cleaned_text <- paste(lemmatized_tokens, collapse = " ")
  return(cleaned_text)
}

all_news$clean_description <- sapply(all_news$description, preprocess_text)
write_csv(all_news, "news_cleaned.csv")
View(all_news)
