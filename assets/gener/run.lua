-- We assume that we've written
-- os.execute("clear")
--
-- log = require("log")
--
-- somewhere before this.

f=require('f')
s=require('s') 
d=require('d') 
html=require('html')

dir=f.scriptPath() 
d.getDicts(dir)    

searcheableEntries={'website','websiteArsPublica'}

fileIn=''
templKey='_tl.tex'
files = io.popen('ls '..dir)
     for filename in files:lines() do
        if filename:endswith(templKey) then 
            -- local newFN=html.makeNewFile(filename)  
            -- for d,Dict in pairs(dicts) do -- go throug dictionaries alphabetically --get names only
            --     local testString = filename:gsub(templKey,'')
            --     -- local dictName=Dict[1]
            --     if dictName:endswith'_.tex' or dictName:endswith(testString..'.tex') then
            --         html.parseHtml(newFN, Dict[2])
            --     end
            -- end
                    html.parseHtml(filename)
        end
    end

html.reloadChrome()

lin="  % % fdsdf"
-- print(lin:startswith(' '))
-- print( string.find(lin, "^%s*%%") == nil)
---- end
----


