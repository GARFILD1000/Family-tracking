<#macro login path buttonText>
    <form  action="${path}" method="post" >

        <div class="form-group">
            <label for="username">Логин</label>
            <input type="text" class="form-control" id="username" placeholder="Username"
                   name="username">
        </div>
        <div class="form-group">
            <label for="password">Пароль</label>
            <input type="password" class="form-control" id="password" placeholder="Password"
                   name="password">
        </div>
        <div class="form-actions">
            <button type="submit" class="btn btn-primary">${buttonText}</button>
        </div>
    </form>
</#macro>