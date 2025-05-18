<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container mt-5">
        <div class="card shadow-lg p-4 bg-white rounded">
            <h2 class="text-center mb-4">${user == null ? "Create New User" : "Edit User"}</h2>
            <form action="${user == null ? 'insert' : 'update'}" method="post">
                <input type="hidden" name="id" value="${user != null ? user.id : ''}" />
                
                <div class="mb-3">
                    <label class="form-label">Name:</label>
                    <input type="text" class="form-control" name="name" value="${user != null ? user.name : ''}" required/>
                </div>
                
                <div class="mb-3">
                    <label class="form-label">Email:</label>
                    <input type="email" class="form-control" name="email" value="${user != null ? user.email : ''}" required/>
                </div>
                
                <div class="mb-3">
                    <label class="form-label">Country:</label>
                    <input type="text" class="form-control" name="country" value="${user != null ? user.country : ''}" required/>
                </div>
                
                <div class="d-grid">
                    <button type="submit" class="btn btn-primary">${user == null ? 'Save' : 'Update'}</button>
                </div>
            </form>
            <div class="text-center mt-3">
                <a href="list" class="btn btn-secondary">Back to User List</a>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
