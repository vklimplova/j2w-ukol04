[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
  [#include "_common/head.ftlh"]
</head>
<body>
<h1>Přidejte novou vizitku pomocí formuláře:</h1>
<form action="/nova" method="post" class="vizitka vizitka--nova">
  <svg width="100" height="100">
    <rect width="20" height="100" x="40" y="0" fill="white" />
    <rect width="100" height="20" x="0" y="40" fill="white" />
  </svg>
  <div class="col-md-3">
    <label for="jmeno" class="form-label">Jméno a příjmení</label>
    <input id="jmeno" name="jmeno" class="form-control" type="text"/>
  </div>

  <div class="col-md-2">
    <label for="firma" class="form-label">Firma</label>
    <input id="firma" name="firma" class="form-control" type="text"/>
  </div>

  <div class="col-md-2">
    <label for="ulice" class="form-label">Ulice</label>
    <input id="ulice" name="ulice" class="form-control" type="text"/>
  </div>

  <div class="col-md-2">
    <label for="obecPsc" class="form-label">Obec a PSČ</label>
    <input id="obecPsc" name="obecPsc" class="form-control" type="text"/>
  </div>

  <div class="col-md-2">
    <label for="email" class="form-label">Email</label>
    <input id="email" name="email" class="form-control" type="text"/>
  </div>

  <div class="col-md-2">
    <label for="telefon" class="form-label">Telefonní číslo</label>
    <input id="telefon" name="telefon" class="form-control" type="text"/>
  </div>

  <div class="col-md-2">
    <label for="web" class="form-label">Web</label>
    <input id="web" name="web" class="form-control" type="text"/>
  </div>


  <div class="col-md-1 align-self-end">
    <input type="submit" value="Přidat novou vizitku"/>
  </div>
</form>
</body>
</html>