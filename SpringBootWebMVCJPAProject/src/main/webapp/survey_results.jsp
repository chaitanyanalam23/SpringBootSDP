<!-- survey_results.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Survey Results</title>
    <style>
        /* Add your CSS styles for the lightbox here */
        .lightbox {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.7);
            z-index: 1;
        }

        .lightbox-content {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            z-index: 2;
        }

        .close-button {
            position: absolute;
            top: 10px;
            right: 10px;
            cursor: pointer;
        }

        /* Style for the container that holds the images */
        .image-container {
            display: flex; /* Display images in a row */
            flex-wrap: wrap; /* Wrap to the next line if there's not enough space */
            justify-content: space-between; /* Space evenly between images */
            max-width: 800px; /* Adjust the max width as needed */
            margin: 0 auto; /* Center the container */
        }

        /* Style for each image */
        .image-clickable {
            width: calc(33.33% - 10px); /* Adjust the width as needed */
            margin-bottom: 10px;
            cursor: pointer;
        }

        /* Style for the lightbox image */
        #lightboxImage {
            max-width: 100%;
            height: auto;
        }
    </style>
</head>
<body>

    <%
        // Retrieve user selections from the form
        String language = request.getParameter("language");
        String movieType = request.getParameter("movieType");

        // Define image URLs and descriptions based on user selections
        String[] englishActionImages = { "images/action1.jpeg", "images/action2.jpg", "images/action3.jpg" };
        String[] englishActionImageDescriptions = { "Description 1 for Action Movie", "Description 2 for Action Movie", "Description 3 for Action Movie" };
        String[] englishRomanceImages = { "images/romance1.jpeg", "images/romance2.jpg", "images/romance3.jpg" };
        String[] englishRomanceImageDescriptions = { "Description 1 for Romance Movie", "Description 2 for Romance Movie", "Description 3 for Romance Movie" };
        
        // Define image URLs and descriptions for Telugu
        String[] teluguActionImages = { "images/taction2.jpeg", "images/taction.jpg", "images/t3.jpeg" ,"images/t4.jpeg"};
        String[] teluguActionImageDescriptions = { "Description 1 for Telugu Action Movie", "Description 2 for Telugu Action Movie", "Description 3 for Telugu Action Movie" ,"Des"};
        String[] teluguRomanceImages = { "images/taction2.jpeg", "images/telugu_romance2.jpg", "images/telugu_romance3.jpg" };
        String[] teluguRomanceImageDescriptions = { "Description 1 for Telugu Romance Movie", "Description 2 for Telugu Romance Movie", "Description 3 for Telugu Romance Movie" };
        
        // Define image URLs and descriptions for Hindi
        String[] hindiActionImages = { "images/hindi_action1.jpeg", "images/hindi_action2.jpg", "images/hindi_action3.jpg" };
        String[] hindiActionImageDescriptions = { "Description 1 for Hindi Action Movie", "Description 2 for Hindi Action Movie", "Description 3 for Hindi Action Movie" };
        String[] hindiRomanceImages = { "images/hindi_romance1.jpeg", "images/hindi_romance2.jpg", "images/hindi_romance3.jpg" };
        String[] hindiRomanceImageDescriptions = { "Description 1 for Hindi Romance Movie", "Description 2 for Hindi Romance Movie", "Description 3 for Hindi Romance Movie" };

        // Initialize the selectedImages and selectedDescriptions arrays based on user selections
        String[] selectedImages = {};
        String[] selectedDescriptions = {};

        if ("english".equalsIgnoreCase(language)) {
            if ("action".equalsIgnoreCase(movieType)) {
                selectedImages = englishActionImages;
                selectedDescriptions = englishActionImageDescriptions;
            } else if ("romance".equalsIgnoreCase(movieType)) {
                selectedImages = englishRomanceImages;
                selectedDescriptions = englishRomanceImageDescriptions;
            }
        } else if ("telugu".equalsIgnoreCase(language)) {
            if ("action".equalsIgnoreCase(movieType)) {
                selectedImages = teluguActionImages;
                selectedDescriptions = teluguActionImageDescriptions;
            } else if ("romance".equalsIgnoreCase(movieType)) {
                selectedImages = teluguRomanceImages;
                selectedDescriptions = teluguRomanceImageDescriptions;
            }
        } else if ("hindi".equalsIgnoreCase(language)) {
            if ("action".equalsIgnoreCase(movieType)) {
                selectedImages = hindiActionImages;
                selectedDescriptions = hindiActionImageDescriptions;
            } else if ("romance".equalsIgnoreCase(movieType)) {
                selectedImages = hindiRomanceImages;
                selectedDescriptions = hindiRomanceImageDescriptions;
            }
        }
    %>

    <!-- Container for images -->
    <div class="image-container">
        <!-- Generate image elements for selected images and add click event listeners -->
        <%
            for (int i = 0; i < selectedImages.length; i++) {
        %>
        <img src="<%= selectedImages[i] %>" alt="Movie Image" class="image-clickable" data-description="<%= selectedDescriptions[i] %>">
        <%
            }
        %>
    </div>

    <!-- Lightbox/modal for displaying image details -->
    <div class="lightbox" id="imageLightbox">
        <div class="lightbox-content">
            <span class="close-button" id="closeLightbox">&times;</span>
            <img src="" alt="Movie Image" id="lightboxImage">
            <p id="imageDescription"></p>
        </div>
    </div>

    <!-- JavaScript for the lightbox/modal functionality -->
    <script>
        // Get the image elements with the "image-clickable" class
        var images = document.getElementsByClassName("image-clickable");

        // Get the lightbox and its components
        var lightbox = document.getElementById("imageLightbox");
        var lightboxImage = document.getElementById("lightboxImage");
        var imageDescription = document.getElementById("imageDescription");
        var closeLightbox = document.getElementById("closeLightbox");

        // Add click event listeners to the image elements
        for (var i = 0; i < images.length; i++) {
            images[i].addEventListener("click", function() {
                lightboxImage.src = this.src;
                imageDescription.textContent = this.getAttribute("data-description");
                lightbox.style.display = "block";
            });
        }

        // Close the lightbox when the close button is clicked
        closeLightbox.addEventListener("click", function() {
            lightbox.style.display = "none";
        });
    </script>
</body>
</html>
