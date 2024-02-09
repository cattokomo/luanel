#!/usr/bin/env -S nelua --script
local nldecl = require("nelua.plugins.nldecl")

xpcall(function()
    print("Generating Lua 5.4 binding...")
    nldecl.generate_bindings_file {
        output_file = "src/internal/lua54.nelua",
        parse_includes = {
            "<lua.h>",
            "<lualib.h>",
            "<lauxlib.h>",
        },
        include_names = {
            "^lua_",
            "^luaopen_",
            "^luaL_",
        },
        include_dirs = { os.getenv("LUA54") },
        output_foot = [[
global LUA_ERRERR: integer <cimport,nodecl>
global LUA_ERRFILE: integer <cimport,nodecl>
global LUA_ERRMEM: integer <cimport,nodecl>
global LUA_ERRRUN: integer <cimport,nodecl>
global LUA_ERRSYNTAX: integer <cimport,nodecl>
global LUA_HOOKCALL: integer <cimport,nodecl>
global LUA_HOOKCOUNT: integer <cimport,nodecl>
global LUA_HOOKLINE: integer <cimport,nodecl>
global LUA_HOOKRET: integer <cimport,nodecl>
global LUA_HOOKTAILCALL: integer <cimport,nodecl>
global LUA_LOADED_TABLE: integer <cimport,nodecl>
global LUA_MASKCALL: integer <cimport,nodecl>
global LUA_MASKCOUNT: integer <cimport,nodecl>
global LUA_MASKLINE: integer <cimport,nodecl>
global LUA_MASKRET: integer <cimport,nodecl>
global LUA_MAXINTEGER: integer <cimport,nodecl>
global LUA_MININTEGER: integer <cimport,nodecl>
global LUA_MINSTACK: integer <cimport,nodecl>
global LUA_MULTRET: integer <cimport,nodecl>
global LUA_NOREF: integer <cimport,nodecl>
global LUA_OK: integer <cimport,nodecl>
global LUA_OPADD: integer <cimport,nodecl>
global LUA_OPBAND: integer <cimport,nodecl>
global LUA_OPBNOT: integer <cimport,nodecl>
global LUA_OPBOR: integer <cimport,nodecl>
global LUA_OPBXOR: integer <cimport,nodecl>
global LUA_OPDIV: integer <cimport,nodecl>
global LUA_OPEQ: integer <cimport,nodecl>
global LUA_OPIDIV: integer <cimport,nodecl>
global LUA_OPLE: integer <cimport,nodecl>
global LUA_OPLT: integer <cimport,nodecl>
global LUA_OPMOD: integer <cimport,nodecl>
global LUA_OPMUL: integer <cimport,nodecl>
global LUA_OPPOW: integer <cimport,nodecl>
global LUA_OPSHL: integer <cimport,nodecl>
global LUA_OPSHR: integer <cimport,nodecl>
global LUA_OPSUB: integer <cimport,nodecl>
global LUA_OPUNM: integer <cimport,nodecl>
global LUA_PRELOAD_TABLE: integer <cimport,nodecl>
global LUA_REFNIL: integer <cimport,nodecl>
global LUA_REGISTRYINDEX: integer <cimport,nodecl>
global LUA_RIDX_GLOBALS: integer <cimport,nodecl>
global LUA_RIDX_MAINTHREAD: integer <cimport,nodecl>
global LUA_TBOOLEAN: integer <cimport,nodecl>
global LUA_TFUNCTION: integer <cimport,nodecl>
global LUA_TLIGHTUSERDATA: integer <cimport,nodecl>
global LUA_TNIL: integer <cimport,nodecl>
global LUA_TNONE: integer <cimport,nodecl>
global LUA_TNUMBER: integer <cimport,nodecl>
global LUA_TSTRING: integer <cimport,nodecl>
global LUA_TTABLE: integer <cimport,nodecl>
global LUA_TTHREAD: integer <cimport,nodecl>
global LUA_TUSERDATA: integer <cimport,nodecl>
global LUA_USE_APICHECK: integer <cimport,nodecl>
global LUA_YIELD: integer <cimport,nodecl>
global LUAL_BUFFERSIZE: integer <cimport,nodecl>
]],
    }
end, function()
    print("Can't find Lua 5.4 header files, skipping...")
end)

xpcall(function()
    print("Generating Lua 5.3 binding...")
    nldecl.generate_bindings_file {
        output_file = "src/internal/lua53.nelua",
        parse_includes = {
            "<lua.h>",
            "<lualib.h>",
            "<lauxlib.h>",
        },
        include_names = {
            "^lua_",
            "^luaopen_",
            "^luaL_",
        },
        include_dirs = { os.getenv("LUA53") },
        output_foot = [[
global LUA_ERRERR: integer <cimport,nodecl>
global LUA_ERRFILE: integer <cimport,nodecl>
global LUA_ERRGCMM: integer <cimport,nodecl>
global LUA_ERRMEM: integer <cimport,nodecl>
global LUA_ERRRUN: integer <cimport,nodecl>
global LUA_ERRSYNTAX: integer <cimport,nodecl>
global LUA_HOOKCALL: integer <cimport,nodecl>
global LUA_HOOKCOUNT: integer <cimport,nodecl>
global LUA_HOOKLINE: integer <cimport,nodecl>
global LUA_HOOKRET: integer <cimport,nodecl>
global LUA_HOOKTAILCALL: integer <cimport,nodecl>
global LUA_MASKCALL: integer <cimport,nodecl>
global LUA_MASKCOUNT: integer <cimport,nodecl>
global LUA_MASKLINE: integer <cimport,nodecl>
global LUA_MASKRET: integer <cimport,nodecl>
global LUA_MAXINTEGER: integer <cimport,nodecl>
global LUA_MININTEGER: integer <cimport,nodecl>
global LUA_MINSTACK: integer <cimport,nodecl>
global LUA_MULTRET: integer <cimport,nodecl>
global LUA_NOREF: integer <cimport,nodecl>
global LUA_OK: integer <cimport,nodecl>
global LUA_OPADD: integer <cimport,nodecl>
global LUA_OPBAND: integer <cimport,nodecl>
global LUA_OPBNOT: integer <cimport,nodecl>
global LUA_OPBOR: integer <cimport,nodecl>
global LUA_OPBXOR: integer <cimport,nodecl>
global LUA_OPDIV: integer <cimport,nodecl>
global LUA_OPEQ: integer <cimport,nodecl>
global LUA_OPIDIV: integer <cimport,nodecl>
global LUA_OPLE: integer <cimport,nodecl>
global LUA_OPLT: integer <cimport,nodecl>
global LUA_OPMOD: integer <cimport,nodecl>
global LUA_OPMUL: integer <cimport,nodecl>
global LUA_OPPOW: integer <cimport,nodecl>
global LUA_OPSHL: integer <cimport,nodecl>
global LUA_OPSHR: integer <cimport,nodecl>
global LUA_OPSUB: integer <cimport,nodecl>
global LUA_OPUNM: integer <cimport,nodecl>
global LUA_REFNIL: integer <cimport,nodecl>
global LUA_REGISTRYINDEX: integer <cimport,nodecl>
global LUA_RIDX_GLOBALS: integer <cimport,nodecl>
global LUA_RIDX_MAINTHREAD: integer <cimport,nodecl>
global LUA_TBOOLEAN: integer <cimport,nodecl>
global LUA_TFUNCTION: integer <cimport,nodecl>
global LUA_TLIGHTUSERDATA: integer <cimport,nodecl>
global LUA_TNIL: integer <cimport,nodecl>
global LUA_TNONE: integer <cimport,nodecl>
global LUA_TNUMBER: integer <cimport,nodecl>
global LUA_TSTRING: integer <cimport,nodecl>
global LUA_TTABLE: integer <cimport,nodecl>
global LUA_TTHREAD: integer <cimport,nodecl>
global LUA_TUSERDATA: integer <cimport,nodecl>
global LUA_USE_APICHECK: integer <cimport,nodecl>
global LUA_YIELD: integer <cimport,nodecl>
global LUAL_BUFFERSIZE: integer <cimport,nodecl>
]],
    }
end, function()
    print("Can't find Lua 5.3 header files, skipping...")
end)

xpcall(function()
    print("Generating Lua 5.2 binding...")
    nldecl.generate_bindings_file {
        output_file = "src/internal/lua52.nelua",
        parse_includes = {
            "<lua.h>",
            "<lualib.h>",
            "<lauxlib.h>",
        },
        include_names = {
            "^lua_",
            "^luaopen_",
            "^luaL_",
        },
        include_dirs = { os.getenv("LUA52") },
        output_foot = [[
global LUA_ERRERR: integer <cimport,nodecl>
global LUA_ERRFILE: integer <cimport,nodecl>
global LUA_ERRGCMM: integer <cimport,nodecl>
global LUA_ERRMEM: integer <cimport,nodecl>
global LUA_ERRRUN: integer <cimport,nodecl>
global LUA_ERRSYNTAX: integer <cimport,nodecl>
global LUA_HOOKCALL: integer <cimport,nodecl>
global LUA_HOOKCOUNT: integer <cimport,nodecl>
global LUA_HOOKLINE: integer <cimport,nodecl>
global LUA_HOOKRET: integer <cimport,nodecl>
global LUA_HOOKTAILCALL: integer <cimport,nodecl>
global LUA_MASKCALL: integer <cimport,nodecl>
global LUA_MASKCOUNT: integer <cimport,nodecl>
global LUA_MASKLINE: integer <cimport,nodecl>
global LUA_MASKRET: integer <cimport,nodecl>
global LUA_MINSTACK: integer <cimport,nodecl>
global LUA_MULTRET: integer <cimport,nodecl>
global LUA_NOREF: integer <cimport,nodecl>
global LUA_OK: integer <cimport,nodecl>
global LUA_OPADD: integer <cimport,nodecl>
global LUA_OPDIV: integer <cimport,nodecl>
global LUA_OPEQ: integer <cimport,nodecl>
global LUA_OPLE: integer <cimport,nodecl>
global LUA_OPLT: integer <cimport,nodecl>
global LUA_OPMOD: integer <cimport,nodecl>
global LUA_OPMUL: integer <cimport,nodecl>
global LUA_OPPOW: integer <cimport,nodecl>
global LUA_OPSUB: integer <cimport,nodecl>
global LUA_OPUNM: integer <cimport,nodecl>
global LUA_REFNIL: integer <cimport,nodecl>
global LUA_REGISTRYINDEX: integer <cimport,nodecl>
global LUA_RIDX_GLOBALS: integer <cimport,nodecl>
global LUA_RIDX_MAINTHREAD: integer <cimport,nodecl>
global LUA_TBOOLEAN: integer <cimport,nodecl>
global LUA_TFUNCTION: integer <cimport,nodecl>
global LUA_TLIGHTUSERDATA: integer <cimport,nodecl>
global LUA_TNIL: integer <cimport,nodecl>
global LUA_TNONE: integer <cimport,nodecl>
global LUA_TNUMBER: integer <cimport,nodecl>
global LUA_TSTRING: integer <cimport,nodecl>
global LUA_TTABLE: integer <cimport,nodecl>
global LUA_TTHREAD: integer <cimport,nodecl>
global LUA_TUSERDATA: integer <cimport,nodecl>
global LUA_USE_APICHECK: integer <cimport,nodecl>
global LUA_YIELD: integer <cimport,nodecl>
global LUAL_BUFFERSIZE: integer <cimport,nodecl>
]],
    }
end, function()
    print("Can't find Lua 5.2 header files, skipping...")
end)

xpcall(function()
    print("Generating Lua 5.1 binding...")
    nldecl.generate_bindings_file {
        output_file = "src/internal/lua51.nelua",
        parse_includes = {
            "<lua.h>",
            "<lualib.h>",
            "<lauxlib.h>",
        },
        include_names = {
            "^lua_",
            "^luaopen_",
            "^luaL_",
        },
        include_dirs = { os.getenv("LUA51") },
        output_foot = [[
global LUA_ENVIRONINDEX: integer <cimport,nodecl>
global LUA_ERRERR: integer <cimport,nodecl>
global LUA_ERRFILE: integer <cimport,nodecl>
global LUA_ERRMEM: integer <cimport,nodecl>
global LUA_ERRRUN: integer <cimport,nodecl>
global LUA_ERRSYNTAX: integer <cimport,nodecl>
global LUA_GLOBALSINDEX: integer <cimport,nodecl>
global LUA_HOOKCOUNT: integer <cimport,nodecl>
global LUA_HOOKLINE: integer <cimport,nodecl>
global LUA_HOOKRET: integer <cimport,nodecl>
global LUA_MASKCALL: integer <cimport,nodecl>
global LUA_MASKCOUNT: integer <cimport,nodecl>
global LUA_MASKLINE: integer <cimport,nodecl>
global LUA_MASKRET: integer <cimport,nodecl>
global LUA_MINSTACK: integer <cimport,nodecl>
global LUA_MULTRET: integer <cimport,nodecl>
global LUA_NOREF: integer <cimport,nodecl>
global LUA_REFNIL: integer <cimport,nodecl>
global LUA_REGISTRYINDEX: integer <cimport,nodecl>
global LUA_YIELD: integer <cimport,nodecl>
]],
    }
end, function()
    print("Can't find Lua 5.1 header files, skipping...")
end)


print("Successfully generated Lua bindings!")
