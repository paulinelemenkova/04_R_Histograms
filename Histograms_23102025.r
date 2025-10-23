library(ggplot2)
df <- read.csv("FAOSTAT_India_12.csv")
#head(df)
# Basic histogram
ggplot(df, aes(x=Value)) +
    geom_histogram()
# Change the width of bins
ggplot(df, aes(x=weight)) +
    geom_histogram(binwidth=1)
# Change colors
p<-ggplot(df, aes(x=weight)) +
  geom_histogram(color="black", fill="white")
p

ggplot(df, aes(x=Value, fill=Item, color=Item)) +
    geom_histogram(binwidth = 500, position="identity", alpha=0.5,)

# Calculate means for each group
mean_df <- df %>%
  group_by(Item) %>%
  summarise(mean_value = mean(Value))

# multifacet
p2 <- ggplot(df, aes(Value, fill=Item, color=Item)) +
    geom_histogram(binwidth = 100, linejoin = "round", alpha=.6) +
    facet_wrap(~Item, scales = 'free_x') +
    geom_vline(data = mean_df, aes(xintercept = mean_value, group = Item),
             color = "red", linetype = "dashed", size = 0.5) +
    labs(title = "Histograms with mean lines per facet: agriculture products in India (2000-2023)", x = "Value, kg/ha", y = "Frequency")
p2
