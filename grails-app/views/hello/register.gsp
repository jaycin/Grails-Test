<!doctype html>
<html>
    <head>
        <title><g:if env="development">Login</g:if><g:else>Error</g:else></title>
        <meta name="layout" content="main">
        <g:if env="development"><asset:stylesheet src="errors.css"/></g:if>
    </head>
    <body>
    <div class="col-md-12">
    <div class="col-md-4">
    &nbsp;
    </div>
    <div class="col-md-4 text-center">

      <g:form controller="hello" action="addUser" >
          <div class="form-group">
                      <label>User Name: </label></br>
                      <g:textField required="" name="userName"/><br/>
          </div>
          <div class="form-group">
                                <label>Password: </label></br>
                                <g:field type="password" required="" minLength="5" name="password"/><br/>
          </div>
          <div class="form-group">
                  <label>Money: </label></br>
                  <g:field type="number" required="" name="currencyOnHand"/>
          <div class="form-group">
          <br/>
                  <input type="submit" value="Register"/>
          </div>
       </g:form>
       </div>
       <div class="col-md-4">
           &nbsp;
        </div>
       </div>
    </body>
</html>