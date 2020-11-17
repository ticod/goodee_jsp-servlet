package chap7;

/*
Bean 클래스
getProperty : getSomething() : Object
setProperty : setSomething(Object) : void
=> property = Something : get, set 다음에 오는 이름이 프로퍼티다.
   ** 멤버 변수가 프로퍼티가 아니다. **
=> 게터, 세터
 */

public class Book {

    private String name;
    private String title;
    private String content;

    public Book() {}

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "Book{" +
                "name='" + name + '\'' +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                '}';
    }
}
