# ����
list(c("����", "�Ϻ�"), c(1), "hello world")
function(x, y) {
    x^2 + y^2
}
new.env()

# ����
x <- 66
4 -> y
# Ҳ�ɣ������Ƽ� z = y + x^y
assign("A", 10)
print(mean(c(99, 33, x)), x.rm = TRUE)

for (i in 1:9) {
    name <- paste("z", i, sep = "_")
    assign(name, i:10)
}
rm(list = ls())
# �����о�
# R����Ĭ��һ��һ��ִ�У�����rm������ʧ
# print(ls(all.names = T)) �������ر���
# print(ls.str())��������ϸ��
# browseEnv()Ҳ��

# NULL����Ϊ��, NAȱʧֵ
# NAN, Inf, -Inf��
n <- NULL
print(n)
print(mean(c(99, 33, NA)), na.rm = TRUE)
print(0 / 0)

# ǿ��ת��
m <- 9
n <- "77"
print(as.numeric(n) + m)
print(TRUE + 8)


