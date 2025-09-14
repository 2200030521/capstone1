<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>FAQ Section</title>
  <style>
    /* General FAQ Styles */
    body {
      background-color: #f1f1f1; /* Added a light gray background color for the body */
    }

.header-image {
  width: 100%;
  height: 200px;
  background-image: url('../Images/faq.jpeg'); /* Replace with correct path */
  background-size: cover;
  background-position: center;
}

    .faq-container {
      max-width: 800px;
      margin: 50px auto;
      font-family: 'Arial', sans-serif;
      padding: 20px;
      background-color: #f8f9fa; /* Background color for the FAQ container */
      border-radius: 10px;
      box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
    }

    .faq-title {
      text-align: center;
      font-size: 2rem;
      color: #007bff;
      margin-bottom: 20px; /* Reduced margin to make space for the back button */
    }

    .back-button {
      display: block;
      margin: 0 auto 30px auto; /* Center the button and add spacing below */
      padding: 10px 20px;
      font-size: 1rem;
      color: #fff;
      background-color: #007bff;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      text-align: center;
      text-decoration: none;
    }

    .back-button:hover {
      background-color: #0056b3;
    }

    /* FAQ Item Styles */
    .faq-item {
      background-color: #fff;
      margin-bottom: 15px;
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
      cursor: pointer;
      transition: all 0.3s ease;
    }

    .faq-item:hover {
      background-color: #e9ecef;
    }

    .faq-question {
      font-size: 1.2rem;
      color: #007bff;
      font-weight: bold;
    }

    .faq-summary {
      font-size: 1rem;
      color: #6c757d;
    }

    .faq-more {
      font-size: 0.875rem;
      color: #007bff;
      text-decoration: underline;
      cursor: pointer;
      display: block;
      margin-top: 10px;
    }

    .faq-more:hover {
      color: #0056b3;
    }

    /* Collapsed Content Styles */
    .faq-answer {
      font-size: 1rem;
      color: #495057;
      padding-top: 10px;
      padding-bottom: 10px;
      border-top: 1px solid #e0e0e0;
      display: none;
    }

    /* Responsive Styles */
    @media (max-width: 767px) {
      .faq-container {
        padding: 15px;
      }

      .faq-item {
        padding: 15px;
      }

      .faq-question {
        font-size: 1rem;
      }
    }
  </style>
</head>
<body>

 <div class="../Images/faq.jpeg"></div>

  <div class="faq-container">
    <div class="faq-title">Frequently Asked Questions</div>
   

    <!-- FAQ 1 -->
    <div class="faq-item" onclick="toggleAnswer(this)">
      <div class="faq-question">What is ZeroWasteHub?</div>
      <div class="faq-summary">
        Short & concise version of the answer.
      </div>
      <div class="faq-more">Learn more</div>
      <div class="faq-answer">
         ZeroWasteHub is a platform designed to combat food wastage by connecting food donors with recipient organizations.
      </div>
    </div>

    <!-- FAQ 2 -->
    <div class="faq-item" onclick="toggleAnswer(this)">
      <div class="faq-question">How can I donate food?</div>
      <div class="faq-summary">
        Short & concise version of the answer.
      </div>
      <div class="faq-more">Learn more</div>
      <div class="faq-answer">
         Donating food is easy! Simply sign up as a food donor and we'll connect you with local organizations.
      </div>
    </div>

    <!-- FAQ 3 -->
    <div class="faq-item" onclick="toggleAnswer(this)">
      <div class="faq-question">Who benefits from food donations?</div>
      <div class="faq-summary">
        Short & concise version of the answer.
      </div>
      <div class="faq-more">Learn more</div>
      <div class="faq-answer">
       The platform helps non-profit organizations, shelters, and food banks distribute donated food to those in need.
      </div>
    </div>

    <!-- FAQ 4 -->
    <div class="faq-item" onclick="toggleAnswer(this)">
      <div class="faq-question">Is there a fee to use ZeroWasteHub?</div>
      <div class="faq-summary">
        Short & concise version of the answer.
      </div>
      <div class="faq-more">Learn more</div>
      <div class="faq-answer">
        No, ZeroWasteHub is completely free to use for both food donors and recipient organizations.
      </div>
    </div>

    <!-- FAQ 5 -->
    <div class="faq-item" onclick="toggleAnswer(this)">
      <div class "faq-question">How do I sign up as a food donor?</div>
      <div class="faq-summary">
        Short & concise version of the answer.
      </div>
      <div class="faq-more">Learn more</div>
      <div class="faq-answer">
        To sign up as a food donor, simply fill out our registration form on the website and provide the necessary information about your organization.
      </div>
    </div>

    <!-- FAQ 6 -->
    <div class="faq-item" onclick="toggleAnswer(this)">
      <div class="faq-question">What types of food can be donated?</div>
      <div class="faq-summary">
        Short & concise version of the answer.
      </div>
      <div class="faq-more">Learn more</div>
      <div class="faq-answer">
        You can donate all types of food, including perishable and non-perishable items. However, please ensure that the food is safe for consumption and follows our donation guidelines.
      </div>
    </div>

    <!-- FAQ 7 -->
    <div class="faq-item" onclick="toggleAnswer(this)">
      <div class="faq-question">How are donations matched with recipient organizations?</div>
      <div class="faq-summary">
        Short & concise version of the answer.
      </div>
      <div class="faq-more">Learn more</div>
      <div class="faq-answer">
         Our system automatically matches donations with recipient organizations based on their needs and location.
      </div>
    </div>

    <!-- FAQ 8 -->
    <div class="faq-item" onclick="toggleAnswer(this)">
      <div class="faq-question">Can individuals donate food?</div>
      <div class="faq-summary">
        Short & concise version of the answer.
      </div>
      <div class="faq-more">Learn more</div>
      <div class="faq-answer">
       Yes, individuals can also donate food. Simply sign up as a donor and follow the same process as organizations.
      </div>
    </div>

    <!-- FAQ 9 -->
    <div class="faq-item" onclick="toggleAnswer(this)">
      <div class="faq-question">How do recipient organizations sign up?</div>
      <div class="faq-summary">
        Short & concise version of the answer.
      </div>
      <div class="faq-more">Learn more</div>
      <div class="faq-answer">
        Recipient organizations can sign up by filling out the registration form on our website and providing the necessary information about their organization.
      </div>
    </div>

    <!-- FAQ 10 -->
    <div class="faq-item" onclick="toggleAnswer(this)">
      <div class="faq-question">What safety measures are in place for donated food?</div>
      <div class="faq-summary">
        Short & concise version of the answer.
      </div>
      <div class="faq-more">Learn more</div>
      <div class="faq-answer">
         We ensure that all donated food meets safety guidelines and is handled properly during transportation and distribution.
      </div>
    </div>

    <!-- FAQ 11 -->
    <div class="faq-item" onclick="toggleAnswer(this)">
      <div class="faq-question">Can I track my donations?</div>
      <div class="faq-summary">
        Short & concise version of the answer.
      </div>
      <div class="faq-more">Learn more</div>
      <div class="faq-answer">
        Yes, you can track your donations through your account on our website. You'll receive updates on the status of your donations and their impact.
      </div>
    </div>

    <!-- FAQ 12 -->
    <div class="faq-item" onclick="toggleAnswer(this)">
      <div class="faq-question">How do I contact ZeroWasteHub for support?</div>
      <div class="faq-summary">
        Short & concise version of the answer.
      </div>
      <div class="faq-more">Learn more</div>
      <div class="faq-answer">
        You can contact our support team through the contact form on our website or by emailing support@zerowastehub.com.
      </div>
    </div>
     <a href="home.jsp" class="back-button">Back to Home</a> <!-- Back button added -->
  </div>

  <script>
    function toggleAnswer(faqItem) {
      const answer = faqItem.querySelector('.faq-answer');
      const moreText = faqItem.querySelector('.faq-more');
      const summary = faqItem.querySelector('.faq-summary');
      if (answer.style.display === 'none' || answer.style.display === '') {
        answer.style.display = 'block';
        moreText.style.display = 'none';
        summary.style.display = 'none'; /* Hide the summary when the answer is shown */
      } else {
        answer.style.display = 'none';
        moreText.style.display = 'block';
        summary.style.display = 'block'; /* Show the summary when the answer is hidden */
      }
    }
  </script>

</body>
</html>
