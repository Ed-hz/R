# factor
x <- factor(c(8, 8, 8, 2, 2, 1, 8, 8, 1, 1, 1))
print(x)
print(levels(x)) # level是数量大小的台阶，level按大小排列
print(gl(n = 3, k = 5)) # n是level，k是每个level

#改变level
x[5] <- 11
print(x) # level保证准确性，加入其他数会变[NA]
x[5] <- 2
print(x) # 只能加入原来level
levels(x) <- c(levels(x), 12, 13)
print(x)
x[c(2, 3, 8)] <- c(12, 12, 13)
print(x)

#level的排序
choice <- c("非常同意", "同意", "不确定", "不同意", "非常不同意")
results <- sample(choice, 100, replace = TRUE)# 有放回抽取
fct1 <- factor(results)
fct2 <- ordered(factor(results), levels = choice) # 按choice顺序排序
print(levels(fct1))
print(levels(fct2))
fct3 <- fct2[(!fct2 %in% "不确定")]
print(length(fct3))
print(levels(fct3)) # levels没删
fct4 <- droplevels(fct3)
print(levels(fct3)) # 删掉没了的level

# list
y <- list("Japan", FALSE, 55)
names(y) <- c("国家", "是否对", "价格")
z <- list(
    "a1" = seq(10, 30, by = 3),
    "a2" = month.name, 
    "a3" = matrix(LETTERS[-c(24, 26)], 3, 8),
    "a4" = 13
)
print(y)
print(z)
print(length(z))

# list的子集
print(z[3])
print(is.list(z[4]))
print(z["a2"])
print(z[c(FALSE, TRUE, FALSE, TRUE)])

print(z[[3]])
print(is.list(z[["a4"]]))#本身的数据结构
# 只能有一个true

print(is.matrix(z$"a3")) # 只能用名字
z$"a2" <- NULL

# dataframe
df1 <- data.frame(
    name = c("张三", "李四", "王五"),
    gender = c("男", "男", "女")
    #,stringsAsFactors = FALSE不是默认的factor
)
print(df1)
print(df1$name)
m <- list(x = 1:5, y = 6:10)
mdf <- as.data.frame(m)
n <- matrix(1:12, 4, 3)
ndf <- as.data.frame(n)
dimnames(ndf) <- list(
    c("r1", "r2", "r3", "r4"),
    c("c1", "c2", "c3")
)
print(ndf) 
print(ndf[c(TRUE, TRUE, FALSE, TRUE), c("c2")]) # 只取一列会变成vector 
print(ndf[2:4, c("c2"), drop = FALSE]) # drop仍为dataframe
print(ndf["c2"]) # 仍为dataframe
print(ndf[["c3"]]) # 原数据结构
print(ndf$c2) # 原数据结构


