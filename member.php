<?php require "layout/header.php"; ?>
<?php
require_once('database/config.php');
require_once('database/dbhelper.php');
?>
<!-- END HEADR -->
<link rel="stylesheet" href="./css/member.css">
<main>
    <!-- member -->
    <div class="main_member">
        <div class="member_item">
            <img src="./images/img_member/ngoc_sang.jpg" alt="" class="image">
            <div class="middle">
                <a href="https://www.facebook.com/ngoc.sang2211"  target="_blank">
                    <div class="text">Truy cập</div>
                </a>
            </div>
            <p>2022 <i class="fa-brands fa-facebook"></i> Facebook</p>
            <h1>ĐỖ NGỌC SÁNG</h1>
        </div>
        <div class="member_item">
            <img src="./images/img_member/van_quang.jpg" alt="" class="image">
            <div class="middle">
                <a href="https://vanquang2002.github.io/my-profile/" target="_blank">
                    <div class="text">Truy cập</div>
                </a>
            </div>
            <p>2022 <i class="fa-brands fa-facebook"></i> Facebook</p>
            <h1>ĐƯỜNG VĂN QUANG</h1>
        </div>
        <div class="member_item">
            <img src="./images/img_member/tien_dung.jpg" alt="" class="image">
            <div class="middle">
                <a href="https://www.facebook.com/profile.php?id=100006580607221" target="_blank">
                    <div class="text">Truy cập</div>
                </a>
            </div>
            <p>2022 <i class="fa-brands fa-facebook"></i> Facebook</p>
            <h1>ĐỖ TIẾN DŨNG</h1>
        </div>
    </div>

    <!-- Newsletter -->
    <section class="newsletter section">

        <div class="container">

            <h1 class="title section-title" data-name="Newsletter">Newsletter</h1>

            <div class="form-container-inner">
                <h2 class="title newsletter-title">Liên Hệ Chúng Tôi</h2>
                <p class="newsletter-description">Mọi thắc mắc của bạn sẽ được giải đáp nhanh chóng</p>
                <form action="" class="form">
                    <input class="form-input" type="text" placeholder="Nhập câu hỏi (demo)">
                    <button class="btn form-btn" type="submit">
                        <i class="fa-solid fa-envelope"></i>
                    </button>
                </form>

            </div>

        </div>

    </section>
</main>
<?php require_once('layout/footer.php'); ?>
</div>
</body>

</html>