<#include "../layout/layout.ftl"/>
<#if !pageTitle?has_content>
    <#assign pageTitle = 'Contact Us'/>
</#if>

<#assign inlineJs>
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
    <script>
        var contactForm = $("#contactform");
        ajaxForm(contactForm, function (data) {
            toastr.success('You message is received, we will get back to you soon');
        });
    </script>
</#assign>

<@layout>
    <section class="parallax-section" data-scrollax-parent="true">
        <div class="bg par-elem " data-bg="/images/bg/contact-us.jpg"
             data-scrollax="properties: { translateY: '30%' }"></div>
        <div class="overlay"></div>
        <div class="bubble-bg"></div>
        <div class="container">
            <div class="section-title center-align">
                <h2><span>Our Contacts</span></h2>
                <div class="breadcrumbs fl-wrap"><a href="/">Home</a> <span>Contacts</span></div>
                <span class="section-separator"></span>
            </div>
        </div>
        <div class="header-sec-link">
            <div class="container"><a href="#sec1" class="custom-scroll-link">Let's Start</a></div>
        </div>
    </section>
    <!-- section end -->
    <!--section -->
    <section id="sec1">
        <div class="container">

            <div class="list-single-main-wrapper fl-wrap">
                <div class="list-single-main-item-title fl-wrap">
                    <h3>Get In Touch</h3>
                </div>
                <div id="contact-form">
                    <div id="message"></div>
                    <form class="custom-form" action="/contact" name="contactform" id="contactform" method="post">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        <fieldset>
                            <label for="name"><i class="fa fa-user-o"></i></label>
                            <input type="text" name="name" id="name" placeholder="Your Name *" required value=""/>
                            <div class="clearfix"></div>
                            <label for="email"><i class="fa fa-envelope-o"></i> </label>
                            <input type="text" name="email" id="email" placeholder="Email Address*" required value=""/>
                            <div class="clearfix"></div>
                            <textarea name="comment" id="comment" required placeholder="Message"></textarea>
                        </fieldset>
                        <br>
                        <div class="g-recaptcha" data-sitekey="${recaptcha_site_key}"></div>
                        <button class="btn  big-btn  color-bg flat-btn" id="submit">
                            Send<i class="fa fa-angle-right"></i>
                        </button>
                    </form>
                </div>
                <!-- contact form  end-->
            </div>
        </div>

    </section>
    <!-- section end -->
</@layout>