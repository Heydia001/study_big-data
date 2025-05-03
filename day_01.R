# 2025-05-03

### Vector
a <- c(1, 2, 3, 4, 5)

## 숫자형 벡터
ex_vector1 <- c(-1, 0, 1)
ex_vector1

mode(ex_vector1)
length(ex_vector1)
str(ex_vector1)

d <- c(1, 342, 5425 ,542, 1, 666, 75436 ,1)
length(b)

## 문자형 벡터
b <- c("한글", "영어")

ex_vector3 <- c("hi", "hello")

str(ex_vector3)


## 논리형 벡터
ex_vector4 <- c(TRUE, FALSE, FALSE, TRUE)


### 범주형 자료
ex_vector5 <- c(1, 2, 3, 2, 1)
ex_vector5

cate_vector5 <- factor(ex_vector5,
                       labels=c('apple', 'banana', 'cherry'))

cate_vector5


## 행렬
# 2차원 단위형 데이터 - matrix()
ex_vector6 = c(1,2,3,4,5,6)
matrix(ex_vector6, nrow = 2 ,ncol = 3)
matrix(ex_vector6, nrow = 3 ,ncol = 2)

matrix(ex_vector6, nrow = 3, ncol = 2, byrow = T)

## 배열 - array()
y <- c(1,  2,  3,  4,  5, 6)
array(y, dim = c(2,  2,  3))

## 리스트 - list()
z <- c(1, 2, 3, 4, 5, 6)
list1 <- list(c(1, 2, 3), "hello", 1)
list1

### 데이터 프레임 (가장 중요!)
#   :  데이터 프레임의 각 열에는 변수명이 있어야 한다. data.frame(변수명)
ID <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
SEX <- c('m', 'f','m', 'f','m', 'f','m', 'f','m', 'f')
AGE <- c(50, 30, 20, 10, 70, 35, 94, 24, 65, 60)
AREA <- c("서울", "부산", "대전", "제주", "경기", "서울", "서울", "경기", "인천", "부산")
dataframe_ex <- data.frame(ID, SEX, AGE, AREA)
dataframe_ex

str(dataframe_ex)

----------------------------------------------------------------------------------------
  
### 변수 variable
  # : 변하는 수
  # : 변수는 데이터 분석의 대상 즉 속성
  
a <- 1
b <- 2
c <- 3

a + b
a * b

## 여려 값으로 구성된 변수 생성이 가능
var1 <- c(1, 2, 3, 5, 8)
var1
var2 <- c(1:100)
var2

## seq() 
var3 <- seq(1, 5) # 1~5까지 연속값으로 var3 생성
var3

var4 <- seq(1, 100, by = 2) # 1부터 100까지 2간격으로 연속갓으로 var4 생성
var4

var5 <- seq(0, 200, by = 2)

var1 + var3

## 문자로 된 변수 생성
str1 <- 'a'
str2 <- 'text'
str3 <- 'Hello World !'

str4 <- c('a', 'b', 'c')
str5 <- c('Hello!', 'world', 'is', 'good!')

str4 + str5 # 문자로 된 변수로는 연산할 수 없음

# -------------------------

### 함수(function) : 값을 넣으면 특정한 기능을 수행 후 출력

# 수를 다루는 함수

x <- c(1, 2, 3)
mean(x) # 평균값
max(x)
min(x)

문자를 다루는 함수
str5

paste(str5, collapse = ' ') # 하나의 열로 이어주는 함수
converted_x <- paste(x, collapse = '!')
converted_x

# -------------------------

### package
  # 함수나 변수가 여러개 들어있는 꾸러미
  # 함수를 사용하려면 패키지 설치를 선행해야 함 (패키지 로드라고 함)

install.packages('ggplot2')
library(ggplot2) # 패키지 로드

## ggplot2 함수
x <- c('a', 'a', 'b', 'c')

## 빈도그래프 출력
qplot(x)

## ggplot2 의  mpg 데이터로 그래프 생성
  # : 여러 패키지들은 패키지안의 함수를 사용해볼 수 있게 예제 데이터를 포함하는 경우가 있다.

qplot(data = mpg, x = hwy)
qplot(data = mpg, x = cty)

# x축 drv(구동방식), y축 hwy(고속도로 연비)
qplot(data = mpg, x = drv, y = hwy, geom = 'line')
qplot(data = mpg, x = drv, y = hwy, geom = 'boxplot')
qplot(data = mpg, x = drv, y = hwy, geom = 'boxplot', colour = drv)

# -------------------------

### Data Frame
  #: 행 -> 속성
  #: 열 -> 튜플

english <- c(90, 90, 60, 70)
math <- c(50, 60, 100, 20)

df_midterm <- data.frame(english, math)
df_midterm


# 만약 반을 추가하고 싶은 경우

class <- c(1, 1, 2, 2)
df_midterm <- data.frame(english, math, class)
df_midterm

# 이 학생들의 수학점수 평균
mean(df_midterm$math) # df_midterm의 수학점수 평균 산출
# $ 표시로 접속

## Q1.
product <- c('사과', '딸기', '수박')
price <- c(1800, 1500, 3000)
volume <- c(24, 38, 13)

table_01 <- data.frame(product, price, volume)

mean(table_01$price)
mean(table_01$volume)

# 외부 데이터 불러오기
install.packages('readxl')
library(readxl)

df_exam <- read_excel('excel_exam.xlsx')
df_exam
mean(df_exam$math)
mean(df_exam$english)
mean(df_exam$science)

# 직접 파일경로 지정해서 들고오기
df_exam <- read_excel("C:/Users/makam/OneDrive/Desktop/excel_exam.xlsx")

## 엑셀파일의 첫번째 행이 속성명이 아닐경우
df_exam_no <- read_excel('excel_exam_novar.xlsx', col_names = F)
df_exam_no

## 엑셀파일에 시트트가 여러 개 있는 경우
df_exam_sheet <- read_excel('excel_exam_sheet.xlsx', sheet = 3)
df_exam_sheet

## csv 파일 : 쉼표로 값들이 구분된 파일
          #: 용량이 작음, 다양한 소프트 웨어에서 활용되고 있음
df_csv_exam <- read.csv('csv_exam.csv')
df_csv_exam

# -------------------------

### 데이터 파악

# 데이터 파악 함수
# header(): 데이터의 앞 부분 출력
# tail(): 데이터의 뒷 부분 출력
# View(): viewer창에서 데이터 확인
# dim(): 데이터 차원 출력 / 몇 행, 몇 열인지
# str(): 데이터 속성 출력
# summary(): 요약 통계량 출력

exam <- read.csv('csv_exam.csv')

# head()
head(exam, 5) # 앞에서부터 5행까지 출력

# tail()
tail(exam, 10) # 뒤에서부터 10행까지 출력

# View()
View(exam)

# dim()
dim(exam)

# str()
str(exam)

# summary()
summary(exam)


### mbg 데이터 파익
# 1999년 - 2008sus 미국 EPA 에서 조사 후 발표한 자동차 주요 모델 별 연비 데이터 -> ggplot2에 포함
mpg <- as.data.frame(ggplot2::mpg)
