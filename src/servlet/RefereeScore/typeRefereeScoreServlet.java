package servlet.RefereeScore;

import cn.RefereeScore.personalTypeRefereeScore;
import com.fasterxml.jackson.databind.ObjectMapper;
import domain.RefereeScore.personalTypeRefereeScoreSql;
import org.junit.Test;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/typeRefereeScoreServlet")
public class typeRefereeScoreServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        personalTypeRefereeScoreSql info=new personalTypeRefereeScoreSql();
//        List<personalTypeRefereeScore> Info=info.PInfoFindtypeRefereeScore1();

        ObjectMapper mapper=new ObjectMapper();
//        mapper.writeValue(response.getOutputStream(),Info);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        this.doPost(request,response);
    }

    @Test
    public  void test()
    {
        personalTypeRefereeScoreSql info=new personalTypeRefereeScoreSql();
//        List<personalTypeRefereeScore> Info=info.PInfoFindtypeRefereeScore1();

//        System.out.println(Info);
    }
}
