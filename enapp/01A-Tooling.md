# Tooling

## Welche zwei Profile sind gemäss Java EE Spezifikation vorgesehen?
1. das Full Profile (beinhaltet alle Spezifikationen)
2. das Web Profile (besteht aus einer Untermenge dieser Spezifikationen)

## Welche Container-Typen werden unterschieden?
* Applet-Container
* Application Client-Container
* Web-Container (Servlet-Container)
* EJB-Container

## Welche Typen von Anwendungs-Komponenten laufen in diesen Container?
* Applets (GUI-Anwendungen, die  normalerweise  im  Browser ausgeführt  werden)
* Application Clients (eigenständige GUI-Applikationen auf den Client-Rechnern)
* JSP und Servlet (stehen für eine ganze Familie von Web-Komponenten)
* EJB (Geschäftslogik in einer transaktionsunterstützen Umgebung)

## Wie wird ein ganz einfaches Servlet geschrieben?
```
@WebServlet(name = "MyServlet")
public class MyServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
        throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE HTML>");
            out.println("<html><head><title>Hello World</title></head>");
            out.println("<body><h1>HELLO WORLD</h1></body></html>");
            out.flush();
        } catch (Exception e) {
            LogManager.getLogger(MyServlet.class).error("exception", e);
        }
    }
}

<servlet>
    <servlet-name>MyServlet</servlet-name>
    <servlet-class>ch.hslu.edu.enapp.eatmemine.servlets.MyServlet</servlet-class>
</servlet>

<servlet-mapping>
    <servlet-name>MyServlet</servlet-name>
    <url-pattern>/MyServletMoved</url-pattern>
</servlet-mapping>
```

## Was beschreibt der `Context Root`?
Unter welcher URL das Modul auf dem Application Server verfügbar ist

## Welche Annotationen gibt es für EJBs?
```
@Stateless          @Local
@Stateful           @Remote
@Singleton          @LocalBean
@MessageDriven
```

## Wie kann ein Session Bean in ein Web-Projekt eingebunden werden?
```
@Inject
private MyStatelessSessionBeanLocal myBean;
```

## Wie werden NamedQueries benutzt um über JPA Daten abzufragen?
```
@Entity
@NamedQueries({
    @NamedQuery(name = "getUsers", query = "SELECT u FROM UserEntity u"),
    @NamedQuery(name = "getUserByName", 
        query = "SELECT u FROM UserEntity u WHERE u.name = :name"),
    @NamedQuery(name = "getUserByEmail", 
        query = "SELECT u FROM UserEntity u WHERE u.email = :email")
})
@Table(name = "user", schema = "eatme", catalog = "")
public class UserEntity {
    //...
}
```

## Wie können mit Mockito Mocks für Unit-Tests generiert werden?
```
@Mock
private EntityManager entityManagerMock;

@Mock
private TypedQuery<ChatmessageEntity> queryMock;

@InjectMocks
private ChatServicessubjectUnderTest;
```

## Wie wird mit JPA ein AttributeConverter implementiert?
```
@Converter
public class PasswordConverter implements AttributeConverter<String, String> {
    @Override
    public String convertToDatabaseColumn(String passwordPlain) { /** */ }
    @Override
    public String convertToEntityAttribute(String passwordHash) { /** */}
}

@Basic
@Column(name = "password", nullable = false, length = 255)
@Convert(converter = PasswordConverter.class)
public String getPassword() {
    return password;
}
```

