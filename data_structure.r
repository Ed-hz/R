# 向量
y <- c(1, 2, 3)
yl <- c(1L, 2L, 3L)
z <- c(y, yl)
print(typeof(y))
print(typeof(yl))
print(typeof(z))

# 一维向量
x <- 7
print(length(x))
print(is.vector(x))

# 全0向量
n_1 <- numeric(8)
n_2 <- integer(8)
n_3 <- double(8)

#seq
x_1 <- seq(from = 2, to = 9)
x_2 <- seq(from = 2, to = 9, by = 3)
x_3 <- seq(from = 2, to = 9, length.out = 7)

#文字向量
a <- c("R", "is", "useful")
print(a == c("R", "is", "unuseful"))
print(a == c("R is useful"))

m <- c(app = 1, baba = 2, cat = 3, 5)
n <- c("a", "b", "c", "d")
names(n) <- c("1", "2", "", "4")
print(m)
print(n)

rm(list = ls())

# 子集
x <- 1:26
names(x) <- LETTERS
print(x[3:8])
print(x[c(3, 3, 3, 4.5)])
print(x[-c(3:9)]) # 负数表示不包括的
# 正负数不能同时出现
y <- c(rep(TRUE, 14), rep(FALSE, 7), rep(TRUE, 5))
z <- x > 18
print(x[y])
print(x[z])

# 二维matrix
a <- matrix(1:12, nrow = 3, ncol = 4)
b <- array(letters[1:24], dim = c(4, 3, 2))
diag(x = 1, nrow = 6)
print(dim(a))
print(dim(b))
print(nrow(a))
print(ncol(a))
print(dim(c(2, 4, 6)))
b <- array(letters[1:24],
    dim = c(4, 3, 2),
    dimnames = list(
        c("r1", "r2", "r3", "r4"),
        c("c1", "c2", "c3"), c("w1", "w2")
    )
)
rownames(b) <- c("rr1", "rr2", "rr3", "rr4")
colnames(b) <- c("cc1", "cc2", "cc3")
dimnames(b) <- list(
    c("r1", "r2", "r3", "r4"),
    c("c1", "c2", "c3"), c("w1", "w2")
)
print(b)
o <- b[c(2, 3), c(-1,-2), 1]
p <- b[c("r2", "r3"), c(FALSE, FALSE, TRUE), "w1"]
print(identical(o, p))
print(is.vector(b[3, , 2])) # 只取一列会变成vector
print(is.matrix(b[3, , 2, drop = FALSE])) # drop仍为matrix









