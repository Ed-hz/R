a <- 7
b <- 99
c <- "8"

print(b / a) 
print(b %% a) # mod
print(b %/% a) # ����
print(abs(-b))
print(a^a)
print(sqrt(b))
print(exp(a))
print(log(b))
print(log(b, base = 8))
print(log2(b))
print(log10(b))
print(as.character(a) != c)
print(as.integer(b))
print(as.double(b))
# ָ��>�˳�>�Ӽ�>�Ƚ�

# ��������
print(x <- 1:5)
print(y <- 3:7)
print(x + y)
print(x + 1)
print(y^x)
print(x == y) # ÿ���Ƚ�
print(identical(x, y)) # ����Ƚ�

z <- rnorm(100)
print(mean(x))
print(sd(x)) # ��׼��
print(sum(x))
print(prod(x)) # �˻�

print(min(x))
print(max(x))
print(range(x)) # ȫ�ࣺmax,min
#�ķ�λ��
print(quantile(x, probs = c(1 / 4, 1 / 2, 3 / 4)))

print(choose(4, 2)) # �����
print(factorial(6)) # �׳�
print(choose(4, 2) * factorial(4)) # ������

print(union(x,y))
print(intersect(x,y))
print(setdiff(x,y))
print(unique(x,y))
print(x %in% y)
        
p <- matrix(1:12, 3, 4)
q <- matrix(8:19, 3, 4)
r <- matrix(100:108, 3, 3)
print(t(p) %*% q)
print(solve(r))
print(det(r))
print(eigen(r)) # ����ֵ��������



