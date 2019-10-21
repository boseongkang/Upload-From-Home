code . 치면 vs code 창 열림 

`python -m venv venv ` 

ls 해서 venv 파일 만들어진거 

`$ source ./venv/Scripts/activate` 

`pip list` 하면 버전 두개 뜸 

`pip install jupyter notebook`  

jupyter notebook 해서 주피터 노트북 실행하고 

우측 상단 New 에서 Python3 누르면 창 뜸 거기에 한줄씩 

```python
li = [] 
st = list()
print(type(li))
print(type(st))

location = ['서울', '대전', '광주', '구미']
print(location)
print(type(location))

location[0]

tuple_ex = (1,2)
print(type(tuple_ex))

is_tuple = 1,2
print(is_tuple)
print(type(is_tuple))

x,y = 1,2
print(x)
print(y)

x,y = y,x
print(x)
print(y)

type(range(1))

list(range(10))

list(range(4,9))

list(range(0, -10, -1))

s = 'string'
print('a' in s)
li = [1,2,3,5,1]
print(3 in li)

print('안녕,'+'하세요')
print([1,2]+[5,6])

[0]*5

location = ['서울', '대전', '구미', '광주']
location[0]

location[1]

location[1:3]

r = list(range(30))

len(r)

print(min(r))
print(max(r))

li = [1,2,3,1,2,5,4]
li.count(1)

set_a = {1,2,3}
set_b = {3,6,9}
print(set_a - set_b)
print(set_a | set_b)
print(set_a & set_b)

set_c = {1,1,1}
print(set_c)

list

list_a = [1,2,3,1,1,2]
set_a = set(list_a)
print(set_a)

list(set(list_a))

dict_a = {}
print(type(dict_a))
dict_b = dict()
print(type(dict_b))

phone_book = {'서울' :'02', '경기' :'031'}
phone_book['서울']

dict_a = {1:1, 2:2, 3:3, 1:4}
print(dict_a)

phone_book.keys()

phone_book.values()




```

