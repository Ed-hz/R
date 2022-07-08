# 对象
list(c("北京", "上海"), c(1), "hello world")
function(x, y) {
    x^2 + y^2
}
new.env()

# 变量
x <- 66
4 -> y
# 也可，但不推荐 z = y + x^y
assign("A", 10)
print(mean(c(99, 33, x)), x.rm = TRUE)

for (i in 1:9) {
    name <- paste("z", i, sep = "_")
    assign(name, i:10)
}
rm(list = ls())
# 变量列举
# R语言默认一条一条执行，除非rm不会消失
# print(ls(all.names = T)) 包括隐藏变量
# print(ls.str())变量更多细节
# browseEnv()也可

# NULL变量为空, NA缺失值
# NAN, Inf, -Inf数
n <- NULL
print(n)
print(mean(c(99, 33, NA)), na.rm = TRUE)
print(0 / 0)

# 强制转化
m <- 9
n <- "77"
print(as.numeric(n) + m)
print(TRUE + 8)


