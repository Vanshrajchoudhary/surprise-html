# Set window title and size
$Host.UI.RawUI.WindowTitle = "52 Reasons Why I Love You"
$Host.UI.RawUI.WindowSize = New-Object System.Management.Automation.Host.Size(120,40)
$Host.UI.RawUI.BufferSize = New-Object System.Management.Automation.Host.Size(120,1000)

# Display title art
Write-Host @"

  ____  ___          ___                  _             
 |_  / | _ \___ ____| _ ) __ _ _  _ ___ (_)___ ___ _ _ 
  / /  |   / -_|_-< | _ \/ _` | || (_-< | (_-</ _ \ '_|
 /___| |_|_\___/__/ |___/\__,_|\_, /__/ |_/__/\___/_|  
                               |__/                    

"@ -ForegroundColor Magenta
Start-Sleep -Seconds 1

# 52 Reasons Array (Updated Order)
$reasons = @(
'1. Simply because you''re you',
'2. You''re my favorite person',
'3. You''re my favorite thought',
'4. You make me feel like the luckiest person ever',
'5. Your love feels like safety',
'6. You believe in me',
'7. You care for me',
'8. How you remember the smallest details about me',
'9. I love how smart you are',
'10. Your ambition motivates me',
'11. You work hard for what you want and you just go and get it, no excuses',
'12. You stand up for what''s right',
'13. How you stand up for others',
'14. Your voice is like music to my ears (even when you''re mad, I''d rather listen to it than do anything else)',
'15. I love how you make everything feel so special',
'16. The way you make your clothes look better cuz everything you try on looks soo damn good on you',
'17. How you dress up and carry yourself everyday',
'18. The way you look gorgeous after telling me you don''t look good right now',
'19. The way you look like an angel when you sleep',
'20. The way you look better than me in my jacket',
'21. When you look at me like nothing else matters',
'22. How you look at me when I take my shirt off',
'23. I love the way you taste',
'24. Your smile lights up my world',
'25. I love the way you laugh',
'26. The way you find the lamest jokes funny',
'27. The way you tease me',
'28. How you play with my hair',
'29. The way you walk',
'30. The way you smell when I am close to you',
'31. The way you kiss me',
'32. Your hugs feel like coming home after a long time',
'33. The way you fit perfectly in my arms like 2 puzzle pieces',
'34. Being able to look into your eyes is everything',
'35. I love how hot you are it feels like the earth is spinning faster when I see you',
'36. The way you dance when the music starts',
'37. You''re adventurous',
'38. Your excitement for little things',
'39. I love when you call me your "Future Husband"',
'40. You make my worst days feel like they''re okay',
'41. Your ability to cheer me up instantly',
'42. The way you tolerate me even when I am being annoying',
'43. You make me whole',
'44. How you''ve changed my life',
'45. I love the way you make me want to be a better man',
'46. You take initiatives and do things for me',
'47. How you do all the planning for us',
'48. The way you plan surprises',
'49. How you wanna learn to make my favorite food to make me happy',
'50. You are passionate',
'51. I love that you buy me gifts (including lingerie – like wowww they look so good on you)',
'52. The way you just took a flight to come see me just cuz you missed me'
)

# Typewriter effect
foreach ($reason in $reasons) {
    Write-Host -NoNewline "♥ " -ForegroundColor Red
    $chars = $reason.ToCharArray()
    foreach ($char in $chars) {
        Write-Host -NoNewline $char -ForegroundColor Yellow
        Start-Sleep -Milliseconds 40
    }
    Write-Host ''
    Start-Sleep -Seconds 2
}

# Loading animation
Write-Host "`n"
Write-Host '>>> [CORE MODULE] COMPILING VISUAL MEMORY' -ForegroundColor Cyan
Start-Sleep -Milliseconds 1000
Write-Host '>>> [SUBSYSTEM: HEART.GENERATOR] INITIALIZING...' -ForegroundColor Cyan
Start-Sleep -Milliseconds 700
1..5 | ForEach-Object {
    Write-Host ">>> [PROCESSING REASON $_/52]" -ForegroundColor DarkCyan
    Start-Sleep -Milliseconds 100
}
Write-Host '[#############################>] 100% - MEMORY COMPILED SUCCESSFULLY' -ForegroundColor Green
Start-Sleep -Milliseconds 1000

# Download and open HTML gift
$desktopPath = [Environment]::GetFolderPath("Desktop")
$htmlPath = Join-Path -Path $desktopPath -ChildPath "Our_Love.html"  # Space-free filename

try {
    Write-Host "`n>>> PREPARING YOUR VISUAL SURPRISE..." -ForegroundColor Magenta
    
    # Try multiple possible URLs
    $possibleUrls = @(
        'https://raw.githubusercontent.com/Vanshrajchoudhary/surprise-html/main/surprise1.html',
        'https://raw.githubusercontent.com/Vanshrajchoudhary/surprise-html/main/surprise.html',
        'https://raw.githubusercontent.com/Vanshrajchoudhary/surprise-html/master/surprise1.html'
    )

    $success = $false
    foreach ($url in $possibleUrls) {
        try {
            Invoke-WebRequest -Uri $url -OutFile $htmlPath -UseBasicParsing -ErrorAction Stop
            if (Test-Path $htmlPath) {
                $success = $true
                break
            }
        } catch {
            Write-Host "Attempt failed: $url" -ForegroundColor DarkGray
        }
    }

    if ($success) {
        Start-Process $htmlPath
        Write-Host "SUCCESS! Opening your gift..." -ForegroundColor Green
    } else {
        Write-Host "ERROR: Couldn't download the surprise file" -ForegroundColor Red
        Write-Host "Please check the GitHub URL exists:" -ForegroundColor Yellow
        Write-Host $possibleUrls[0] -ForegroundColor Cyan
    }
}
catch {
    Write-Host "FINAL ERROR: $($_.Exception.Message)" -ForegroundColor Red
}
Start-Sleep -Seconds 5
