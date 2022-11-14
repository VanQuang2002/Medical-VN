<?php require "layout/header.php"; ?>
<?php
require_once('database/config.php');
require_once('database/dbhelper.php');
?>
<!-- END HEADR -->
<link rel="stylesheet" href="./css/member.css">
<main>
    <div class="main_member">
        <div class="member_item">
            <h1>ĐỖ NGỌC SÁNG</h1>
            <p>I'm writing to you in reference to the job position advertised
                MyCV.vn which immediately appealed to me.Since I've been
                interested in your company for a long time, I would like
                to apply today as a Sample position in permanent employment.</p>
        </div>
        <div class="member_item">
            <h1>ĐƯỜNG VĂN QUANG</h1>
            <p>At the moment I'm working as a Sample position at Sample
                company.My most important tasks include familiarizing
                myself with new products, conducting sales talks and transferring orders.</p>
        </div>
        <div class="member_item">
            <h1>ĐỖ TIẾN DŨNG</h1>
            <p>Your job list sounds great! I hope that this will enable me
                to develop personal and professional development opportunities.
                I like your focus and image in this industry very well, so I
                see you as a very interesting employer.I have been following
                your development for a long time in the media and therefore
                believe that I also fit in well with the company.</p>
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