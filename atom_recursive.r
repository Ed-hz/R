# @ 部分运行 ctrl+enter
#install.packages("languageserver")
x <- rep("R", 5)
y <- matrix(1:12, 3, 4)
# 原子向量，只能有一种元素，typeof就是那种
z <- list(x = 3, y = "t") # 递归向量
u <- as.data.frame(y)
# typeof是list
dimnames(y) <- list(
    c("c1", "c2", "c3"),
    c("r1", "r2", "r3", "r4")
)
v <- gl(3, 2)
names(v) <- letters[1:6]

print(typeof(x))
print(typeof(y))
print(typeof(z))
print(typeof(u))

print(length(x))
print(length(y))
print(length(z))
print(length(u))

print(attributes(y))
print(attr(y, "dimnames")) # 输出方式列表

print(attributes(z)) # 只有class和length就是list
unlist(z)
print(z)

print(attributes(v)) # 默认有levels和class属性
dim(v) <- c(3, 2)
print(attributes(v)) # 原子向量加上dim为矩阵\数组

a <- list(a = 1:3, b = 4:6)
b <- as.data.frame(x, row.names = NULL)
print(attributes(a))
print(attributes(b))

c <- 1:10
print(is.vector(c, mode = "numeric"))
print(is.vector(a, mode = "list"))

print(is.vector(y, mode = "any")) # any包括原子向量，递归向量，表达式
print(is.vector(u, mode = "any"))
print(is.vector(v, mode = "any"))

print(is.atomic(y))
print(is.recursive(u))
print(is.atomic(v))