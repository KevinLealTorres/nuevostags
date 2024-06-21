package Tags;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.io.StringWriter;

public class UpperCaseTagHandler extends SimpleTagSupport {
    
    @Override
    public void doTag() throws JspException, IOException {
        StringWriter sw = new StringWriter();
        getJspBody().invoke(sw);
        String BodyContent = sw.toString();
        JspWriter out = getJspContext().getOut();
        out.write(BodyContent.toUpperCase());
    }
}
