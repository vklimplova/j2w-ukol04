[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    [#include "_common/head.ftlh"]
</head>
<body>
[#list vizitka]
    [#items as detail]
        <div class="seznam">
            <a href="/detail/${detail?index}">
                <div class="vizitka">
                    <div class="jmeno">${detail.jmeno}</div>
                    <div class="firma">${detail.firma}</div>
                    <div class="udaje">
                        <div class="adresa">
                            <div>${detail.ulice}</div>
                            <div>${detail.obecPsc}</div>
                        </div>
                        <div class="kontakty">
                            [#if detail.email??]
                                <div><i class="las la-at"></i> <span>${detail.email}</span></div>
                            [/#if]
                            [#if detail.telefon??]
                                <div><i class="las la-at"></i> <span>${detail.telefon}</span></div>
                            [/#if]
                            [#if detail.web??]
                                <div><i class="las la-at"></i> <span>${detail.web}</span></div>
                            [/#if]
                        </div>
                    </div>
                </div>
            </a>
        </div>
    [/#items]
[#else]
    <div>
        <em>Momentálně nemáme žádné vizitky k zobrazení.</em>
    </div>
[/#list]
[#-- nová vizitka přes service --]
<a href="/nova">
    <div class="seznam">
    <div class="vizitka vizitka--nova">
        <svg width="100" height="100">
            <rect width="20" height="100" x="40" y="0" fill="white" />
            <rect width="100" height="20" x="0" y="40" fill="white" />
        </svg>
    </div>
        </div>
</a>

</body>
</html>

