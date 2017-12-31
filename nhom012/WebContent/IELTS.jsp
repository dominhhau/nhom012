<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>IELTS</title>
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

    .h3c{
      color:  #556B2F;
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
      


        <h4 clss="h4c">IELTS Listening</h4>
          <ul>
            <li><a href="#">Listening 4.0-5.0</a></li>
            <li><a href="#">Listening 5.0-6.5</a></li>
            <li><a href="#">Listening 6.5-8.0</a></li>
            <li><a href="#">Test</a></li>
          </ul>
        

        <h4 clss="h4c">IELTS Speaking</h4>
          <ul>
            <li><a href="#">Speaking 4.0-5.0</a></li>
            <li><a href="#">Speaking 5.0-6.5</a></li>
            <li><a href="#">Speaking 6.5-8.0</a></li>
            <li><a href="#">Test</a></li>
          </ul>


          <h4 clss="h4c">IELTS Reading</h4>
          <ul>
            <li><a href="#">Reading 4.0-5.0</a></li>
            <li><a href="#">Reading 5.0-6.5</a></li>
            <li><a href="#">Reading 6.5-8.0</a></li>
            <li><a href="#">Test</a></li>
          </ul>
       

         <h4 clss="h4c">IELTS Writing</h4>
          <ul>
            <li><a href="#">Writing 4.0-5.0</a></li>
            <li><a href="#">Writing 5.0-6.5</a></li>
            <li><a href="#">Writing 6.5-8.0</a></li>
            <li><a href="#">Test</a></li>
          </ul>
        

       
      
    </div>





    <div class="col-sm-7 text-justify"> 

    <h3 clss="h3c"> IELTS LISTENING ONLINE</h3>

    <div class="row">
        <div class="col-sm-4">
          <img src="image_IELTS/1.jpg" alt="" width="100%">
          <p>Unit 1 - Identifying letters of the alphabet - tầm quan trọng của nghe bảng chữ cái trong IELTS </p>
        </div>
      <div class="col-sm-4"> 
        <img src="image_IELTS/2.jpg" alt="" width="100%">
        <p>Unit 2 - Common abbreviations - Những từ viết tắt phổ biến trong IELTS </p>    
      </div>

      <div class="col-sm-4"> 
        <img src="image_IELTS/3.jpg" alt="" width="100%">
       <p>Unit 3: Common places in IELTS - Những địa danh thường xuất hiện </p>    
      </div>
    </div>

    <div class="row">
        <div class="col-sm-4">
          <img src="image_IELTS/4.jpg" alt="" width="100%">
          <p>Unit 4: Introduction (Name, Nationality) trong IELTS Listening </p>
        </div>
      <div class="col-sm-4"> 
        <img src="image_IELTS/5.png" alt="" width="100%">
        <p>Unit 5: Cardinal numbers - Số đếm trong IELTS </p>    
      </div>

      <div class="col-sm-4"> 
        <img src="image_IELTS/6.jpg" alt="" width="100%">
       <p>Unit 6: Ordinal number - Số thứ tự trong IELTS </p>    
      </div>
    </div>




    <h3 clss="h3c">IELTS SPEAKING ONLINE</h3>


    <div class="row">
        <div class="col-sm-4">
          <img src="image_IELTS/7.jpg" alt="" width="100%">
          <p>Thang điểm IELTS - Giới thiệu format và cách tính điểm của IELTS Speaking </p>
        </div>
      <div class="col-sm-4"> 
        <img src="image_IELTS/8.jpg" alt="" width="100%">
        <p>Unit 1: Sự khác biệt giữa Spoken vietnames & Spoken English (Mat clark-Ietls speaking)</p>    
      </div>

      <div class="col-sm-4"> 
        <img src="image_IELTS/9.jpg" alt="" width="100%">
       <p>Unit 2: Tiêu chí chấm điểm của Ielts speaking - What is coherence-fluency </p>    
      </div>
    </div>



    <div class="row">
        <div class="col-sm-4">
          <img src="image_IELTS/10.jpg" alt="" width="100%">
          <p>Unit 3: Tiêu chí chám điểm - Lexical resource (Vocab) trong IELTS Speaking </p>
        </div>
      <div class="col-sm-4"> 
        <img src="image_IELTS/11.jpg" alt="" width="100%">
        <p>Unit 4: Tiêu chí chấm điểm Ielts speaking - Grammatical range & accuracy </p>    
      </div>

      <div class="col-sm-4"> 
        <img src="image_IELTS/12.jpg" alt="" width="100%">
       <p>Unit 5: Tiêu chí chấm điểm ietls speaking - Pronunciation </p>    
      </div>
    </div>




 <h3 clss="h3c">IELTS READING ONLINE</h3>

    <div class="row">
        <div class="col-sm-4">
          <img src="image_IELTS/13.jpg" alt="" width="100%">
          <p>Chiến thuật làm bài READING IELTS hiệu quả </p>
        </div>
      <div class="col-sm-4"> 
          <img src="image_IELTS/14.jpg" alt="" width="100%">
        <p>Unit 1: Kĩ năng làm bài Multiple choice </p>    
      </div>

      <div class="col-sm-4"> 
        <img src="image_IELTS/15.jpg" alt="" width="100%">
       <p>Unit 2: Chiến thuật làm bài “Matching information” </p>    
      </div>
    </div>

    <div class="row">
        <div class="col-sm-4">
          <img src="image_IELTS/16.jpg" alt="" width="100%">
          <p>Unit 3: Hướng dẫn làm bài tập </p>
        </div>
      <div class="col-sm-4"> 
        <img src="image_IELTS/17.jpg" alt="" width="100%">
        <p>Unit 4: Chiến thuật làm bài Matching features - Nối đặc điểm </p>    
      </div>

      <div class="col-sm-4"> 
        <img src="image_IELTS/18.jpg" alt="" width="100%">
       <p>Unit 5: Chiến thuật làm bài “Matching headings – Nối chủ đề” </p>    
      </div>
    </div>





    <h3 clss="h3c">IELTS WRITING ONLINE</h3>

    <div class="row">
        <div class="col-sm-4">
         <img src="image_IELTS/19.png" alt="" width="100%">
          <p>Unit 1: Cấu trúc bài Writing Task 1 hoàn chỉnh </p>
        </div>
      <div class="col-sm-4"> 
        <img src="image_IELTS/20.jpg" alt="" width="100%">
        <p>Unit 2: Writing Task 1 - Cách paraphrase đề bài trong Writing Task 1 </p>    
      </div>

      <div class="col-sm-4"> 
        <img src="image_IELTS/21.jpg" alt="" width="100%">
       <p>Unit 3 - Writing task 1 - Các cách nói tăng/giảm trong IELTS Writing Task 1 </p>    
      </div>
    </div>

    <div class="row">
        <div class="col-sm-4">
          <img src="image_IELTS/22.png" alt="" width="100%">
          <p>Unit 4 - Writing task 1 - Cách miêu tả sự tăng/giảm trong IELTS Writing Task 1 </p>
        </div>
      <div class="col-sm-4"> 
        <img src="image_IELTS/23.jpg" alt="" width="100%">
        <p>Unit 5 - Writing task 1 - Câu nhận xét chung trong Task 1 </p>    
      </div>

      <div class="col-sm-4"> 
        <img src="image_IELTS/24.jpg" alt="" width="100%">
       <p>Unit 6 - Writing task 1 - Cách đọc bảng nhiều dữ liệu trong IELTS Writing task 1 </p>    
      </div>
    </div>












 </div>



    <div class="col-sm-3 sidenav">


      <div>
        <h4><a href="">Bài viết gần đây</a></h4>
        
      </div>



      <div>
        <h4><a href="">Vinh danh học viên</a></h4>
      </div>

    
    </div>
  </div>
</div>



    <div class="container">

        <h2><a href="#">BỔ TRỢ KIẾN THỨC</a></h2>
        <ul class="col-botro col-md-4 col-sm-4 col-xs-12">
            <h3><span><a class="hover-black" href="#" title="Tài liệu học IELTS">Tài liệu học IELTS</a></span></h3>
                            <li><a href="#" title="[PDF + Audio full] Download miễn phí bộ IELTS Test builder 1 + 2">[PDF + Audio full] Download miễn phí bộ IELTS Test builder 1 + 2</a></li>
                            <li><a href="#" title="Ebook Barron’s writing for IELTS - Luyện viết IELTS hiệu quả">Ebook Barron’s writing for IELTS - Luyện viết IELTS hiệu quả</a></li>
                            <li><a href="#" title="Sách học từ vựng qua hình ảnh cực chất - The Oxford Picture Dictionary">Sách học từ vựng qua hình ảnh cực chất - The Oxford Picture Dictionary</a></li>
                            <li><a href="#" title="Ebook 101 Bài Test IELTS listening +Answer keys">Ebook 101 Bài Test IELTS listening +Answer keys</a></li>
                            <li><a href="#" title="DOWNLOAD bộ từ vựng 9 chủ đề thường xuất hiện nhất trong IELTS">DOWNLOAD bộ từ vựng 9 chủ đề thường xuất hiện nhất trong IELTS</a></li>
                    </ul>
        <ul class="col-botro col-md-4 col-sm-4 col-xs-12">
            <h3><span><a class="hover-black" href="#" title="Ngữ pháp IELTS">Ngữ pháp IELTS</a></span></h3>
                            <li><a href="#" title="15 Cấu trúc ngữ giúp bạn ghi điểm trong IELTS ">15 Cấu trúc ngữ giúp bạn ghi điểm trong IELTS </a></li>
                            <li><a href="#" title="CÁC MỆNH ĐỀ TRONG CÂU - Ngữ pháp IELTS">CÁC MỆNH ĐỀ TRONG CÂU - Ngữ pháp IELTS</a></li>
                            <li><a href="#" title="Top 20 Great Grammar for Great Writing">Top 20 Great Grammar for Great Writing</a></li>
                            <li><a href="#" title="Ebook ngữ pháp Tiếng Anh căn bản cho người mất gốc">Ebook ngữ pháp Tiếng Anh căn bản cho người mất gốc</a></li>
                            <li><a href="#" title="23 Cụm động từ đi với &#34;Look&#34; trong IELTS ">23 Cụm động từ đi với &#34;Look&#34; trong IELTS </a></li>
                    </ul>

        <ul class="col-botro col-md-4 col-sm-4 col-xs-12">
            <h3><span><a class="hover-black" href="#" title="Từ vựng IELTS">Từ vựng IELTS</a></span></h3>
                            <li><a href="#" title="P4 - Từ vựng IELTS Academic band 8.0">P4 - Từ vựng IELTS Academic band 8.0</a></li>
                            <li><a href="#" title="Từ vựng IELTS speaking + writing band 8.0 - P3">Từ vựng IELTS speaking + writing band 8.0 - P3</a></li>
                            <li><a href="#" title="Từ vựng IELTS HAY cho Speaking + Writing band 8.0 - P2">Từ vựng IELTS HAY cho Speaking + Writing band 8.0 - P2</a></li>
                            <li><a href="#" title="Tổng hợp từ vựng IELTS Speaking band 7.5 cho 10 Topic phổ biến nhất">Tổng hợp từ vựng IELTS Speaking band 7.5 cho 10 Topic phổ biến nhất</a></li>
                            <li><a href="#" title="30 Topic Related Vocabulary for IELTS ">30 Topic Related Vocabulary for IELTS </a></li>
                    </ul>

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