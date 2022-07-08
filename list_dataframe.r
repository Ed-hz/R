# factor
x <- factor(c(8, 8, 8, 2, 2, 1, 8, 8, 1, 1, 1))
print(x)
print(levels(x)) # level��������С��̨�ף�level����С����
print(gl(n = 3, k = 5)) # n��level��k��ÿ��level

#�ı�level
x[5] <- 11
print(x) # level��֤׼ȷ�ԣ��������������[NA]
x[5] <- 2
print(x) # ֻ�ܼ���ԭ��level
levels(x) <- c(levels(x), 12, 13)
print(x)
x[c(2, 3, 8)] <- c(12, 12, 13)
print(x)

#level������
choice <- c("�ǳ�ͬ��", "ͬ��", "��ȷ��", "��ͬ��", "�ǳ���ͬ��")
results <- sample(choice, 100, replace = TRUE)# �зŻس�ȡ
fct1 <- factor(results)
fct2 <- ordered(factor(results), levels = choice) # ��choice˳������
print(levels(fct1))
print(levels(fct2))
fct3 <- fct2[(!fct2 %in% "��ȷ��")]
print(length(fct3))
print(levels(fct3)) # levelsûɾ
fct4 <- droplevels(fct3)
print(levels(fct3)) # ɾ��û�˵�level

# list
y <- list("Japan", FALSE, 55)
names(y) <- c("����", "�Ƿ��", "�۸�")
z <- list(
    "a1" = seq(10, 30, by = 3),
    "a2" = month.name, 
    "a3" = matrix(LETTERS[-c(24, 26)], 3, 8),
    "a4" = 13
)
print(y)
print(z)
print(length(z))

# list���Ӽ�
print(z[3])
print(is.list(z[4]))
print(z["a2"])
print(z[c(FALSE, TRUE, FALSE, TRUE)])

print(z[[3]])
print(is.list(z[["a4"]]))#��������ݽṹ
# ֻ����һ��true

print(is.matrix(z$"a3")) # ֻ��������
z$"a2" <- NULL

# dataframe
df1 <- data.frame(
    name = c("����", "����", "����"),
    gender = c("��", "��", "Ů")
    #,stringsAsFactors = FALSE����Ĭ�ϵ�factor
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
print(ndf[c(TRUE, TRUE, FALSE, TRUE), c("c2")]) # ֻȡһ�л���vector 
print(ndf[2:4, c("c2"), drop = FALSE]) # drop��Ϊdataframe
print(ndf["c2"]) # ��Ϊdataframe
print(ndf[["c3"]]) # ԭ���ݽṹ
print(ndf$c2) # ԭ���ݽṹ


