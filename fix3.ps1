$content = Get-Content "index.html" -Encoding UTF8 -Raw

$content = $content -replace '<p>.+갈비 중심 메뉴.+구.+만족.+는 .+</p>', '<p>돼지갈비 중심 메뉴로 누구나 만족하는 맛</p>'
$content = $content -replace '<p>.+마숯불돼지갈비본점, 검증된 맛과 .+영 .+하.+</p>', '<p>왕가마숯불돼지갈비본점, 검증된 맛과 운영 노하우</p>'
$content = $content -replace '<button class="tab-btn active" data-target="meat">고기.+</button>', '<button class="tab-btn active" data-target="meat">고기류</button>'
$content = $content -replace '<button class="tab-btn" data-target="meal">.+사.+</button>', '<button class="tab-btn" data-target="meal">식사류</button>'
$content = $content -replace '<p>.+툼.+LA갈비.+구워.+깊.+ .+</p>', '<p>두툼한 LA갈비를 참숯에 구워내 깊은 풍미</p>'
$content = $content -replace '<p>부.+러.+갈비.+ 마블링이 .+아.+는 고급 부.+</p>', '<p>부드러운 갈비살, 마블링이 녹아드는 고급 부위</p>'
$content = $content -replace '<p>쫀.+한 .+ 진한 .+골.+수가 .+우.+진 보양.+</p>', '<p>쫀득한 갈비살과 진한 사골육수가 어우러진 보양식</p>'
$content = $content -replace '<h4>.+거지.+곰.+</h4>', '<h4>우거지해장국</h4>'
$content = $content -replace '<p>미꾸.+곱게 갈아 구수.+게 .+인 .+든.+그.+</p>', '<p>미꾸라지를 곱게 갈아 구수하게 끓인 든든한 한그릇</p>'
$content = $content -replace '<p>구수.+장.+채소.+해 마무리로 좋.+ .+식.+</p>', '<p>구수한 된장에 채소를 더해 마무리로 좋은 후식류</p>'
$content = $content -replace '<h2 class="section-title">찾아.+시.+<span>.+/span></h2>', '<h2 class="section-title">찾아오시는 <span>길</span></h2>'
$content = $content -replace 'title=".+마숯불돼지갈비본점"', 'title="왕가마숯불돼지갈비본점"'
$content = $content -replace '<li><span>.+ 주소:</span> 충남 .+진.+당.+33, 1.+/li>', '<li><span>매장 주소:</span> 충남 당진시 원당로 33, 1층</li>'

[System.IO.File]::WriteAllText((Get-Item "index.html").FullName, $content, [System.Text.Encoding]::UTF8)
