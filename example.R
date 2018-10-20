#### 1. dplyr 패키지를 이용하여 갭마인더 데이터에서 다음 요약 통계량을 계산하라 ####
# a. 2007년도 나라별 일인당 국민소득

# 데이터 로드
install.packages('gapminder')
require(dplyr)

gapminder %>% 
  filter(year == 2007) %>% 
  select(year, country, gdpPercap)
  
# b.2007년도 대륙별 일인당 평균수명의 평균과 중앙값

gapminder %>% 
  filter(year == 2007) %>%
  group_by(continent) %>% 
  summarize(mean(lifeExp))  

gapminder %>% 
  filter(year == 2007) %>%
  group_by(continent) %>% 
  summarize(median(lifeExp))