## bookmark 원리

<hr>

**bookmark/admin.py : ** `@admin.register()` 라는 데코레이터(java는 annotation)를 사용하여 `/admin` 사이트에 등록 parameter로 Bookmark를 주었다. 

<hr>

**bookmark/models.py :** Bookmark라는 class (장고에서는 테이블을 클래스로 정의)생성. Bookmark 클래스 안에 title, url, description 이라는 객체들을 생성해주고 저 객체들의 정보를 html을 통해 화면에서 보여줄거다. 

```python
title = models.CharField('TITLE', max_length=100, blank=True)
models.CharField = models라는 클래스 상속받고 CharFiled 라는 타입으로 작성한다.
'TITLE' 이라는설명 ip:8000/admin 입력시 TITLE을 입력받을때 부가 설명, max_length=100 는 최대 길이를 100byte 까지(한글은 3byte), blank=True 는 공백 사용 ok
url = models.URLField('URL', unique=True)
models 클래스 상속받고 URLField 라는 타입으로 작성한다.
'URL' URL 이라고 소개, unique=True URL은 중복되면 안되기에 unique 해야한다. 즉 하나만 존재해야한다는 설정
    
```

models.py 혹은 admin.py 파일에서 테이블(클래스) 신규 생성, 정의 변경을 했다면 

`python manage.py makemigrations` 라는 명령을 터미널에서 1차 수행 후,

`python manage.py migrate` 명령어를 2차적으로 수정해야 가장의 데이터베이스를 변경해서 web에서 보여준다. 

**`ip:8000/admin :`** 이 사이트에서 사이트 하단에 보이는 **BOOKMARK**는 애플리케이션 명이다.`startapp appname bookmark` 라고 입력했을때 bookmark를 대문자로 표시해준거.

**BOOKMARK**아래 **Bookmarks**는 테이블명(클래스명)이다. 첫글자인 B는 대문자로 표시된다. `verbose_name_plural` 의 특성때문에 그렇다.

**+Add** 를 클릭하면 상단에 **Add bookmark**라고 있다. **bookmark**는 객체명이다. **models.py** 파일에 정의한 모델 클래스 이름을 소문자와 공백으로 바꾼것.

<hr>

**mysite/urls.py : **

```python
urlpatterns = [
    path('admin/', admin.site.urls),
    path안에 'admin', 'bookmark' 라고 적힌 아이들은 url 입력시 쳐주는 경로이다. 
    path('bookmark/', BookmarkLV.as_view(), name='index'),
    path('bookmark/<int:pk>/', BookmarkDV.as_view(), name='detail'),
]
```

admin 사이트를 가려면 ip:8000/admin 이라고 입력해야 갈 수 있다는 뜻. bookmark도 마찬가지

<hr>

**bookmark/views.py : **

```python
class BookmarkLV(ListView):
    model = Bookmark

class BookmarkDV(DetailView):
    model = Bookmark
```

Bookmark 테이블(클래스)에서 여러개의 객체를 가져와야해서 ListView사용, 한개의 객체를 가져오려해서 DetailView

**ListView : **상속받는 객체 리스트를 구성하고 **컨텍스트 변수**로 template 에 넘겨준다. **컨텍스트 변수**로 **object_list** 사용, template 파일명을 **모델명 소문자_list.html**형식으로 지정. template 파일명은 default로 **bookmark/bookmark_list.html**로 된다. 

<hr>

**bookmark/templates/bookmark/bookmark_list.html : **

```python
<u1>
        {% for bookmark in object_list %}
        <li>북마크 이름: <a href="{% url 'detail' bookmark.id %}"> {{ bookmark }} </a></li>

        {% endfor %}
</u1>
```

**{% %} : ** 이건 그냥 pycharm에서 HTML5를 사용할때 이렇게 써줘야 하는거 같다.

**object_list : ** **BookmarkLV** 바로 위에 적힌 **bookmark/views.py**안에 있는 클래스명. **bookmark/views.py**에서 넘겨주는 컨텍스트 변수이다. 즉 입력받은 값은 전달해준다고 보면 될듯.

**{{ bookmark }} : **는 템플릿 변수다.이 안에 객체를 호출하면  **`__str__()`** 메소드를 통해 호출한다. **`__str__()`** 이건 **models.py**에 있다. 

```python
   bookmark/models.py
    def __str__(self):
        return self.title
```

호출하려는 객체의 title을 반환받도록 정의했다. self 는 입력받는 함수 즉, **`return self.title`** 은 입력받은 제목을 반환해서 호출하겠다.