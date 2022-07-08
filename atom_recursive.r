# @ �������� ctrl+enter
#install.packages("languageserver")
x <- rep("R", 5)
y <- matrix(1:12, 3, 4)
# ԭ��������ֻ����һ��Ԫ�أ�typeof��������
z <- list(x = 3, y = "t") # �ݹ�����
u <- as.data.frame(y)
# typeof��list
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
print(attr(y, "dimnames")) # �����ʽ�б�

print(attributes(z)) # ֻ��class��length����list
unlist(z)
print(z)

print(attributes(v)) # Ĭ����levels��class����
dim(v) <- c(3, 2)
print(attributes(v)) # ԭ����������dimΪ����\����

a <- list(a = 1:3, b = 4:6)
b <- as.data.frame(x, row.names = NULL)
print(attributes(a))
print(attributes(b))

c <- 1:10
print(is.vector(c, mode = "numeric"))
print(is.vector(a, mode = "list"))

print(is.vector(y, mode = "any")) # any����ԭ���������ݹ����������ʽ
print(is.vector(u, mode = "any"))
print(is.vector(v, mode = "any"))

print(is.atomic(y))
print(is.recursive(u))
print(is.atomic(v))