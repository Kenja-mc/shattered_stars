# Read index.toml
# Get every entry that has file = "mods/*"
# Get the text after "mods/"
# Create an entry in dependencies.toml
    # Go to git_shattered_stars/mods/<filename>.toml
    # Add Name Entry
    # Add Filename
    # Add side
    # Check if mode = curseforge and add curseforge entry or modrinth

import toml
import tomlkit

depdency_file = tomlkit.document()

index = toml.load("index.toml")
for k in index["files"]:
    if "mods/" in k["file"]:
        mod_toml = toml.load(str(k["file"]))
        
        mod_table = tomlkit.table()
        # mod_table.add("name", mod_toml["name"])
        # mod_table.add("filename", mod_toml["filename"])
        # mod_table.add("side", mod_toml["side"])

        # if "modrinth" in mod_toml["update"]:
        #     mod_table.add("name", mod_toml["name"])
        #     mod_table.add("filename", mod_toml["filename"])
        #     mod_table.add("side", mod_toml["side"])
        #     mod_table.add("site", "modrinth")
        #     table_name = str(k["file"]).replace("mods/", "").replace(".pw.toml", "")
        #     depdency_file.add(table_name, mod_table)
        if "curseforge" in mod_toml["update"]:
            mod_table.add("name", mod_toml["name"])
            mod_table.add("filename", mod_toml["filename"])
            mod_table.add("side", mod_toml["side"])
            mod_table.add("site", "curseforge")
            table_name = str(k["file"]).replace("mods/", "").replace(".pw.toml", "")
            depdency_file.add(table_name, mod_table)

        # table_name = str(k["file"]).replace("mods/", "").replace(".pw.toml", "")
        # depdency_file.add(table_name, mod_table)

with open("curseforge_mods.toml", mode="wt", encoding="utf-8") as fp:
    tomlkit.dump(depdency_file, fp)

