<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>TOIEC</title>
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

    .left-menu{
      color:  #0080ff
    }

    .h2c{
      color:  #556B2F;
    }

    .h3c{
      color:  #483D8B;
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
      


        <h4 class="left-menu">TOIEC Listening</h4>
          <ul>
            <li><a href="#">Level 0-100</a></li>
            <li><a href="#">Level 110-150</a></li>
            <li><a href="#">Level 160-200</a></li>
            <li><a href="#">Test</a></li>
          </ul>


        <h4 class="left-menu">TOIEC Speaking</h4>
          <ul>
            <li><a href="#">Level 0-100</a></li>
            <li><a href="#">Level 110-150</a></li>
            <li><a href="#">Level 160-200</a></li>
            <li><a href="#">Test</a></li>
          </ul>
        

       <h4 class="left-menu"> TOIEC Reading</h4>
          <ul>
            <li><a href="#">Level 0-100</a></li>
            <li><a href="#">Level 110-150</a></li>
            <li><a href="#">Level 160-200</a></li>
            <li><a href="#">Test</a></li>
          </ul>
       

         <h4 class="left-menu">TOIEC Writing</h4>
          <ul>
            <li><a href="#">Level 0-100</a></li>
            <li><a href="#">Level 110-150</a></li>
            <li><a href="#">Level 160-200</a></li>
            <li><a href="#">Test</a></li>
          </ul>
        

       <h4 class="left-menu"> Tài liệu</h4>
          <ul>
            <li><a href="#">Level 250-500</a></li>
            <li><a href="#">Level 500-750</a></li>
            <li><a href="#">Level 750-990</a></li>
          </ul>
        

        
     
      
    </div>





    <div class="col-sm-7 text-justify"> 
      
      <h3 class="h3c">Trọn bộ Tài liệu tự học TOIEC từ A-Z</h3>


      <p>Tài liệu luyện thi TOEIC luôn là công cụ cần thiết để hỗ trợ cho các bạn ôn thi TOEIC đạt kết quả cao nhất. Trong bài viết này sẽ chia sẻ chi tiết và cụ thể hơn cho các bạn đang tự học TOEIC tại nhà những tài liệu hay, quan trọng để giúp các bạn tự tin chinh phục điểm TOEIC cao như mong muốn.</p>

      <p>Những bộ tài liệu này cô sẽ chia làm phần lớn là kiến thức nền tảng và kiến thức TOEIC. Các bạn hãy xem lần lượt theo thứ tự nhé!</p>

      <h2 class="h2c">A.KIẾN THỨC NỀN TẢNG</h2>

      <p>Hãy rèn luyện cho mình kiến thức nền tảng vững chắc. Đó sẽ là bước đệm quan trọng quyết định kết quả ôn thi của chính các em. Kiến thức nền tảng chia làm 3 phần: Pronunciation( Phát âm), Vocabulary (từ vựng) và Grammar (ngữ pháp).</p>

  
      <h3 class="h3c">1. Phát âm</h3>

      <p>Hhiều bạn khi học tiếng Anh hay chú trọng vào từ vựng, ngữ pháp mà bỏ quên đi phần luyện phát âm tiếng Anh. Để tự học pronunciation thực sự sẽ khá khăn nếu như các bạn không có giáo viên giỏi phát âm hướng đẫn, nhưng các bạn vẫn có thể tự luyện phát âm này trên bài giảng youtube chia sẻ rất nhiều nhé!. </p>

      <p>Trước hết về tài liệu phát âm các bạn tham khảo 2 cuốn sách về giọng Anh – Anh và Anh – Mỹ, đây cũng là 2 chất giọng phổ biến các bạn thường thấy và cũng sẽ xuất hiện trong bài thi TOEIC listening.</p>

      <p>Giọng Anh - Mỹ: Đó là cuốn sách American Accent Training. Link tải:  https://goo.gl/bm1BkQ

      <p>Giọng Anh – Anh: đó là English Pronunciation in Use Cuốn sách quá kinh điển phải không các bạn. Bộ English Pronunciation in Use được chia làm 3 cuốn theo trình độ từ cơ bản đến nâng cao. Link tải: https://goo.gl/74vKDh

      Khi luyện Pronunciation các bạn phải đảm bảo nắm chắc phiên âm và phát âm từng âm trong tiếng Anh. Ngoài ra, luyện phát âm tiếng Anh thật phí nếu các em không tham khảo các kênh CNN, BBC, VOA... kết hợp luyện tập với các đoạn speech để nói theo thì khả năng phát âm chuẩn tiếng Anh của các bạn sẽ tăng lên nhanh hơn. Tuỳ theo accent mà các</p>


      <h3 class="h3c">2. Từ vựng</h3>

      <p>Nhiều bạn chia sẻ với cô rằng các em không thích học từ vựng, học trước quên sau và làm sao để nhớ được tự vựng? Tất cả bí quyết ghi nhớ từ vựng cô sẽ chia sẻ khá nhiều, mỗi em hãy lựa chọn cho mình cách học từ vựng phù hợp với bản thân để ghi nhớ. Hãy chịu khó tiếp xúc với từ vựng đó nhiều lần chắc chắn các em sẽ ghi nhớ lâu. Còn về tài liệu học từ vựng TOEIC có rất nhiều, nhưng cô sẽ chỉ chia sẻ tới các em một số cuốn thự sự chất lượng để giảm sự phân vân khi chọn lựa sách cho bản thân, vì vậy các em hãy tham khảo những đầu sách sau:

      English Vocabulary in Use (Elementary – Intermediate – Advanced):  Chắc chắn cuốn sách từ vựng này nhiều bạn biết đến, bởi đây là cuốn từ vựng cung cấp cho người học từ những từ vựng với chủ đề quen thuộc tới từ vựng khó nâng cao hơn. Link tải sách: ​ https://goo.gl/YdA1uh

      600 từ vựng TOEIC căn bản: Đây là cuốn cung cấp các bạn 600 từ vựng TOEIC cho người mới bắt đầu theo chủ đề hay xuất hiện trong bài thi TOEIC.Link tải: https://goo.gl/Aajnba

      3420 Từ vựng TOEIC từ cơ bản – nâng cao flashcards và chia làm 3 phần:</p>
      <ul>
        <li>phần 1: 3420_toeic_flashcards_back_side</li>
        <li>Phần 2: 3420_toeic_flashcards_front_side</li>
        <li>Phần 3: 3420_toeic_vocabulary_words -> tập hợp từ 2 phần trên.</li>
      </ul>

      <h3 class="h3c">3. Ngữ pháp</h3>

      <p>Trong bài thi TOEIC sẽ kiểm tra gần hết kiến thức ngữ pháp tiếng Anh, vì vậy các em không thể học tủ những chủ điểm ngữ pháp được.  Một cuốn sách về ngữ pháp tổng hợp đầy đủ từ A – Z mà cô nghĩ các em nên học để ôn luyện TOEIC đó là English Grammar in Use. Link tải sách: https://goo.gl/DEXrud. Đối với cô đây là cuốn sách rất quan trọng luôn theo sát cô bao năm nay và giúp cô tự cải thiện ngữ pháp tiếng Anh tốt nhất.</p>



      <h2 class="h2c">B.KIẾN THỨC TOIEC</h2>

      <h3 class="h3c">1. TOIEC reading & listening</h3>

      <p>Tại Việt Nam, nhắc đến kỳ thi TOEIC các bạn vẫn quen thuộc với bài thi TOEIC 2 kỹ năng reading và listening với thang điểm cao nhất 990 TOEIC. Về tài liệu TOEIC reading và listening thì cô sẽ chia sẻ sách cho bạn bắt đầu học cơ bản đến nâng cao để các em dễ theo dõi nhé!</p>

      <ul>
        <li>Very Easy Toeic: Link tải sách: DOWNLOAD</li>
        <li> Link tải sách: TẠI ĐÂY</li>
      </ul>


      <p>Cả 2 cuốn sách Very easy TOEIC và TOEIC Starter đều là sách TOEIC khá dễ dành cho người mới bắt đầu học. Người học sẽ dần làm quen với đề thi TOEIC cũng như rèn luyện với kiến thức TOEIC căn bản.</p>
      
      <ul>
      <li> Bộ Big Step 1,2,3:</li>
      </ul>

      <p>Bộ sách này hiện đang có 3 cuốn phân theo kiến thức từ căn bản đến nâng cao cho Level khoảng 400 - 800+ TOEIC. Một điều cô thấy ở bộ sách. Bộ Big Step TOEIC 1, 2, 3 chính là bố cục sách được viết vô cùng dễ hiểu, hệ thống kiến thức từ cơ bản đến nâng cao rõ sàng rất sát với đề thi TOEIC thực nên các bạn sẽ tiếp thu được kiến thức chọn lọc, cần thiết cho kỳ thi TOEIC một cách tốt nhất. Bên cạnh đó, những bài tập, bộ đề TOEIC này được lấy từ đề thi thực TOEIC nên các bạn được cọ sát với đề thi thực trước khi bước vào kỳ thi TOEIC của mình. Link tải sách: DOWNLOAD</p>


      <p>Đây là bộ tài liệu TOEIC dành cho các bạn nào tự học TOEIC rất hiệu quả nhé! 2 cuốn sách này như một lộ trình học TOEIC 30 ngày cung cấp đầy đủ kiến thức, chiến lược làm bài thi TOEIC giúp các bạn chuẩn tốt nhất trước khi bước vào kỳ thi TOEIC.</p>

      <p>Ưu điểm nổi bật về bộ sách Tomato Intensive new TOEIC đó chính là  nội dung khoa và cung cấp cho người học cái nhìn tổng quan chi tiết về cấu trúc đề thi TOEIC như thế nào? Cùng với đó là bộ đề rèn luyện sát với đề thi thực nên các bạn hoàn toàn yên tâm về chất lượng của sách.
      Link tải sách: https://goo.gl/TZpnAw</p>


      <h3 class="h3c">2. TOIEC speaking & writing</h3>

      <p>Bài thi TOEIC speaking + writing thực sự không phổ biến tại Việt Nam và nhiều bạn vẫn còn lạ lẫm về bài thi TOEIC speaking + writing như thế nào? Như các em, trong công việc cũng như tiếng Anh giao tiếp hằng ngày thì speaking và writing chính là 2 kỹ năng các em sử dụng nhiều, nếu chỉ học reading và listening sẽ không thể cải thiện được cho các em 2 kỹ năng về speaking và writing được. Do đó, để tự tin giao tiếp tiếng Anh công việc thành thạo thì TOEIC 4 kỹ năng sẽ là hướng học tốt nhất cho các em. Về tài liệu TOEIC speaking và writing cô sẽ giới thiệu cho các em 3 cuốn sách sau:</p>

      <ul>
        <li>Tomato TOEIC Speaking + Writing</li>
      </ul>

      <p>Đây là bộ sách rèn luyện 2 kỹ năng speaking và writing cực kỳ hiếm của 2  tác giả người Hàn Kim Hyeonju và Lee Boyeong. Đối với bạn nào chưa về hiểu cấu trúc đề thi TOEIC Speaking và writing như thế nào?thì cuốn sách này sẽ giải đáp cho bạn câu hỏi băn khoăn đó!

      Các bài học trong sách được trình bày khoa học và có logic theo cấu trúc bài thi TOEIC, nên người học rèn luyện kiến thức và bài tập bám sát nhất với bài thi TOEIC Speaking writing.

      Link download sách: https://goo.gl/pFVkJ8</p>


      <p>TAGS: tài liệu luyện thi toeic , tài liệu toeic</p>


      <p>Tham khảo:</p>

      <div class="row">
    <div class="col-sm-4">
      <iframe width="100%" src="https://www.youtube.com/embed/Qejo8-epylk?list=PLYS414m_v8oKmTIvXv-IqbX-FeQSxCJYD" frameborder="0" gesture="media" allowfullscreen></iframe>
      <p>Phát âm cùng Dan Hauer</p>
    </div>
    <div class="col-sm-4"> 
      <iframe width="100%" src="https://www.youtube.com/embed/7oOX48NOyTQ?list=PLjPWtACbY0xlKUBEFrZKfALxTS8hHwWEt" frameborder="0" gesture="media" allowfullscreen></iframe>
      <p>English Today</p>    
    </div>

     <div class="col-sm-4"> 
      <iframe width="100%" src="https://www.youtube.com/embed/xZXE0xBfY_g" frameborder="0" gesture="media" allowfullscreen></iframe>
      <p>Hoc tiếng Anh qua nhạc</p>    
    </div>
   
  </div>



      


    </div>



    <div class="col-sm-3 sidenav">


      <div>
        <a href=""><h4>Bài viết gần đây</h4></a>
        
      </div>



      <div>
        <a href=""><h4>Vinh danh học viên</h4></a>
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