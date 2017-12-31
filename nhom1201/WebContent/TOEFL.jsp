<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>TOEFL</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="bootstrap\css\bootstrap.min.css">
  <script src="bootstrap\jquery\jquery.min.js"></script>
  <script src="bootstrap\js\bootstrap.min.js"></script>
  
  <style>

    
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }

    .carousel-inner img {
      width: 100%;
      margin: auto;
      min-height: 200px;
    }


    /* Modal Content/Box */

    .modal-content {
      background-color: #fefefe;
      margin: 7% auto 15% auto;
      border: 10px solid #888;
      width: 80%;
    }

    @media (max-width: 600px) {
      .carousel-caption {
        display: none;
      }
    }

    #menu ul{
      width:100%;
      padding:0;
      list-style-type:none;
    }

    #menu ul li{
      width:100%;
      height: 40px;
      line-height: 40px;
      padding: 0 1em;
    }
    #menu ul li a{
      text-decoration: none;
      color: #333;
      font-weight: bold;
      display: block;
    }
    #menu ul li:hover{
      background:#CDE2CD;
    }

    .h4c{
      color:  blue;
    }

  </style>
</head>

<body>

    <nav class="navbar navbar-inverse navbar-fixed-top" style="font-size:18px">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>                        
            </button>
            <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-home"></a>
          </div>  
          <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
      
              <li class="active"><a href="Trangchu.jsp">Trang chủ</a></li>
              <li><a href="#ThongTin">Thông Tin</a></li>
              <li><a href="#lienhe">Liên Hệ</a></li>
              <li><a href="#">Thi thử</a> </li>
            </ul>
            
          </div>
        </div>
      </nav>
  <br>
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="img_web/study-without-desire.png" alt="Image">

      </div>

      <div class="item">
        <img src="img_web/Learnig-English-successfully.png" alt="Image">

      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>



</br>

<div class="container-fluid text-leftr">    
  <div class="row content">
    <div class="col-sm-2 sidenav" id="menu">
      

         TOEFL PRIMARY
          <ul>
            <li><a href="#">Giới thiệu</a></li>
            <li><a href="#">Hướng dẫn đăng ký dự thi</a></li>
            <li><a href="#">Test sites</a></li>
            <li><a href="#">Lịch thi TOEFL Primary</a></li>
            <li><a href="#">Quy định đối với thí sinh</a></li>
          </ul>


          TOEFL JUNIOR
          <ul>
            <li><a href="#">Giới thiệu</a></li>
            <li><a href="#">Hướng dẫn đăng ký dự thi</a></li>
            <li><a href="#">Test sites</a></li>
            <li><a href="#">Câu hỏi mẫu</a></li>
            <li><a href="#">Lịch thi TOEFL Junior</a></li>
            <li><a href="#">Quy định đối với thí sinh</a></li>
          </ul>



          TOEFL ITP
          <ul>
            <li><a href="#">Giới thiệu</a></li>
            <li><a href="#">Hướng dẫn đăng ký dự thi</a></li>
            <li><a href="#">Test sites</a></li>
            <li><a href="#">Mẫu phiếu điểm TOEFL ITP</a></li>
            <li><a href="#">Lịch thi TOEFL ITP</a></li>
            
          </ul>
       

        TOEFL IBT
          <ul>
            <li><a href="#">Giới thiệu</a></li>
            <li><a href="#">Hướng dẫn đăng ký dự thi</a></li>
            <li><a href="#">TOEFL iBT không khó</a></li>
            <li><a href="#">Test sites</a></li>
            <li><a href="#">Vì sao nên chọn TOEFL iBT?</a></li>
            
            <li><a href="#">Quy định đối với thí sinh</a></li>
            <li><a href="#">FAQs</a></li>
          </ul>
           
    </div>





    <div class="col-sm-7 text-justify"> 
  
      <h3 class="h3c">Giới thiệu bài thi TOEFL Primary</h3>

      <h4 class="h4c">1.Giới thiệu</h4>
      <p>TOEFL Primary là bài thi được Viện Khảo thí Giáo dục Hoa Kỳ (ETS) nghiên cứu và thiết kế dành riêng cho học sinh tiểu học nhằm đánh giá trình độ sử dụng tiếng Anh và nâng cao kỹ năng suy luận cho trẻ ngay từ lúc nhỏ.</p>
      <br/>
      <p>TOEFL Primary mang tính kế thừa và nằm trong hệ thống “Gia đình TOEFL” gồm TOEFL Primary (dành cho học sinh tiểu học), TOEFL Junior (dành cho học sinh phổ thông), TOEFL iBT (dành cho học sinh THPT có định hướng du học), TOEFL ITP (dành cho học sinh THPT để xét tốt nghiệp Tú tài hoặc cử nhân chuyển tiếp.học cao học trong nước) ...</p>

      <p>Sư ra đời của bài thi TOEFL Primary đã hoàn thiện hệ thống bài thi chuẩn quốc tế đánh giá trình độ sử dụng tiếng Anh từ thấp đến cao cho học sinh theo các bậc học khác nhau.</p>
      <img src="image_TOEFL/1.png" alt="">



      <h4 class="h4c">2.Phiếu điểm TOEFL Primary</h4>

      <p>Có giá trị trên toàn cầu, do Viện Khảo thí Giáo dục Hoa Kỳ (ETS) cấp.</p>

      <p>Phản ánh chi tiết và chính xác từng kỹ năng của học sinh thông qua bản mô tả kết quả.</p>

      <p>Đưa ra những khuyến nghị về các bước học tiếp theo nhằm cải thiện khả năng học tiếng Anh của học sinh</p>

      <p>Kết quả TOEFL Primary được đánh giá theo tiêu chuẩn cao nhất về chất lượng, tính công bằng và được quy đổi theo Khung Năng lực Ngoại Ngữ (NLNN) Việt Nam và Khung tham chiếu chung Châu Âu (CEFR).</p>




      <h4 class="h4c">3.Cấu trúc bài thi TOEFL Primary Standard</h4>


      <p>Bài TOEFL Primary Standard có 2 cấp độ:</p>

      <p><i>Bài thi Standard cấp độ 1:</i> Định hướng phát triển ngôn ngữ cho học sinh ngay từ nhỏ, gồm các nội dung:</p>
      <ul>
          <li>Những bối cảnh quen thuộc (trường học, gia đình, các họat động ngoại khóa…)</li>
          <li>Các công thức toán học cơ bản</li>
          <li>Từ vựng cơ bản và những cụm từ thông dụng</li>
          <li>Cách thức yêu cầu và chỉ dẫn ngắn, đơn giản</li>
          <li>Những bài học ngắn, đơn giản liên quan tới những trải nghiệm hàng ngày của trẻ</li>
      </ul>

      <p><i>Bài thi Standard cấp độ 2:</i> Định hướng phát triển kỹ năng giao tiếp cho học sinh tiểu học, gồm các nội dung:</p>

      <ul>
        <li>Những thành ngữ, lời yêu cầu, chỉ dẫn và những cụm từ cơ bản</li>
        <li>Đoạn truyện ngắn hoặc hội thoại đơn giản với chủ đề hàng ngày</li>
        <li>Những từ mới trong các bối cảnh khác nhau</li>
        <li>Những đoạn văn với nội dung phù hợp</li>

      </ul>


      <h4 class="h4c">4.Lợi ích của bài thi TOEFL Primary </h4>

      <p><i>Đối với học sinh tiểu học:</i></p>
      <ul>
        
        <li>Là một công cụ hiệu quả để kiểm tra và đánh giá một cách chính xác trình độ tiếng Anh của học sinh trong các lĩnh vực học thuật và xã hội.</li>
        <li>Đánh giá sự tiến bộ của học sinh trong quá trình trau dồi và phát triển các kỹ năng suy luận theo thời gian.</li>
        <li>Là bước đệm cần thiết trong quá trình phát triển các kỹ năng ngôn ngữ tiếng Anh cho các chương trình học cao hơn như TOEFL Junior, TOEFL iBT, TOEFL ITP…</li>
      </ul>



      <p><i>Đối với nhà trường, cơ sở đào tạo và trung tâm ngoại ngữ:</i></p>


      <ul>
        <li>TOEFL Primary được sử dụng như một công cụ hữu hiệu để sắp xếp học sinh vào những chương trình phù hợp trong quá trình đào tạo tiếng Anh từ thấp đến cao;</li>
        <li>Cung cấp thông tin hữu ích thông qua các kết quả của từng kỹ năng giúp định hướng công tác giảng dạy và học tập theo tiêu chuẩn quốc tế;</li>
        <li>Đánh giá đươc hiệu quả của chương trình giảng dạy, từ đó có thể đưa ra những điều chỉnh hợp lý.</li>

      </ul>


      <h4 class="h4c">5.TOEFL Primary và Lexile</h4>

      <p>Một trong những ưu điểm nổi bật của TOEFL Primary là sự tương thông chặt chẽ với hệ thống Lexile. Lexile là một thư viện sách điện tử với trên 50,000 đầu sách ở nhiều trình độ. Điểm số TOEFL Primary có thể được quy đổi ra điểm Lexile tương ứng, nhờ đó học sinh có thể tìm kiếm và lựa chọn những tài liệu đọc phù hợp với trình độ của bản thân theo các chủ đề khác nhau nhằm trau dồi và phát triển kỹ năng đọc hiểu một cách tối ưu. Như vậy, thông qua TOEFL Primary, học sinh được tiếp cận với Lexile, một công cụ hiệu quả và thú vị để:</p>

      <ul>
        <li>Xây dựng thư viện cá nhân với những danh mục sách ưa thích để luyện tập kỹ năng đọc hiểu;</li>
        <li>Truy cập các cửa hiệu sách trực tuyến để mua sách và tra cứu thông tin.</li>

      </ul>







    




     <div class="row">
    <div class="col-sm-4">
      <img src="image_TOEFL/2.jpg" alt="" width="100%">
      <p>Làm thế nào để học dễ hơn</p>
    </div>
    <div class="col-sm-4"> 
      <img src="image_TOEFL/3.jpg" alt="" width="100%">
      <p>Bí quyết thi tốt TOEFL</p>    
    </div>

     <div class="col-sm-4"> 
      <img src="image_TOEFL/4.jpg" alt="" width="100%">
      <p>Ôn tập hiệu quả</p>    
    </div>
   
  </div>

      
      
   
   </div>



      


  



    <div class="col-sm-3 sidenav">


      <div>
        <h4><a href="#">Bài viết gần đây</a></h4>
        
      </div>



      <div>
        <h4><a href="#">Vinh danh học viên</a></h4>
      </div>

    
    </div>
  </div>
</div>

  



    <footer class="container-fluid text-center" id="lienhe">
      <div class="col-sm-6" style="font-size:16px;text-align:left">
        <p>
          <b>Liên hệ với chúng tôi: </b>
        </p>
        <p> Số điện thoại:
          <i>0969-666-777</i>
        </p>
        <p> Gmail:
          <i> TheNewFuture@gmail.com </i>
        </p>
        <p> Địa chỉ:
          <i> 1 Võ Văn Ngân, phường Linh Chiểu, Quận Thủ Đức </i>
        </p>
      </div>
      <div class="col-sm-6 " style="text-align:right">
        <a href="https://web.facebook.com/?_rdc=1&_rdr">
          <img c src="img_web\facebook.png" alt="facebook" style="width:20%"> </a>
        <a href="https://www.youtube.com/">
          <img src="img_web\youtube.png " alt="youtube" style="width:20%;"> </a>
      </div>
    </footer>

    

    <script>
      // Get the modal
      var modal = document.getElementById('id01');

      // When the user clicks anywhere outside of the modal, close it
      window.onclick = function (event) {
        if (event.target == modal) {
          modal.style.display = "none";
        }
      }


    </script>
</body>

</html>