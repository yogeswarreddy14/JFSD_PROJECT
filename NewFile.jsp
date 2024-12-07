<%@ page import="java.sql.*, java.io.*, javax.servlet.*, javax.servlet.http.*" %>
<%
    // Database connection details
    String dbURL = "jdbc:mysql://localhost:3306/klu";
    String dbUser = "root"; // Replace with your database username
    String dbPass = "root"; // Replace with your database password

    // Create connection
    Connection conn = null;
    PreparedStatement stmt = null;

    // Handling form data
    String title = request.getParameter("title");
    String description = request.getParameter("description");
    Part filePart = request.getPart("file"); // Retrieves <input type="file" name="file">
    String fileName = filePart.getSubmittedFileName();
    
    // Define a path to save the uploaded file (update the path as per your server setup)
    String uploadPath = getServletContext().getRealPath("") + "uploads";
    File uploadDir = new File(uploadPath);
    if (!uploadDir.exists()) {
        uploadDir.mkdir();
    }

    String filePath = uploadPath + File.separator + fileName;

    try {
        // Save the uploaded file to the server
        InputStream fileContent = filePart.getInputStream();
        File fileToSave = new File(filePath);
        try (FileOutputStream fos = new FileOutputStream(fileToSave)) {
            byte[] buffer = new byte[1024];
            int bytesRead;
            while ((bytesRead = fileContent.read(buffer)) != -1) {
                fos.write(buffer, 0, bytesRead);
            }
        }

        // Save the assignment details to the database
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
        String sql = "INSERT INTO assignments (title, description, file_path) VALUES (?, ?, ?)";
        stmt = conn.prepareStatement(sql);
        stmt.setString(1, title);
        stmt.setString(2, description);
        stmt.setString(3, filePath);

        int rowsInserted = stmt.executeUpdate();

        if (rowsInserted > 0) {
            out.println("<h3>Assignment added successfully!</h3>");
            out.println("<a href='admin.jsp'>Go back to the dashboard</a>");
        } else {
            out.println("<h3>Failed to add the assignment. Please try again.</h3>");
        }
    } catch (Exception e) {
        out.println("<h3>Error: " + e.getMessage() + "</h3>");
        e.printStackTrace();
    } finally {
        if (stmt != null) try { stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
        if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
    }
%>
