<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PDF of TimeTable</title>
</head>
<body>
<!-- Timetable display section -->
<div class="timetable">
  <table>
    <!-- Your timetable rows and columns -->
  </table>
</div>

<!-- Buttons for printing and saving as PDF -->
<button onclick="printTimetable()">Print Timetable</button>
<button id="downloadPdfBtn">Download as PDF</button>

<!-- JS for print and PDF generation -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.4.0/jspdf.umd.min.js"></script>
<script>
  function printTimetable() {
    window.print();  // Print functionality
  }

  document.getElementById('downloadPdfBtn').addEventListener('click', function () {
    var { jsPDF } = window.jspdf;
    var doc = new jsPDF();

    var timetable = document.querySelector('.timetable'); // Target timetable

    doc.html(timetable, {
      callback: function (doc) {
        doc.save('timetable.pdf');  // Save the PDF
      },
      x: 10,
      y: 10
    });
  });
</script>

</body>
</html>