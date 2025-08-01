local M = {
  capabilities = {
    textDocument = {
      completion = {
        completionItem = {
          commitCharactersSupport = true,
          deprecatedSupport = true,
          documentationFormat = { 'markdown', 'plaintext' },
          insertReplaceSupport = true,
          insertTextModeSupport = {
            valueSet = { 1 },
          },
          labelDetailsSupport = true,
          preselectSupport = true,
          resolveSupport = {
            properties = { 'documentation', 'detail', 'additionalTextEdits', 'command', 'data' },
          },
          snippetSupport = true,
          tagSupport = {
            valueSet = { 1 },
          },
        },
        completionList = {
          itemDefaults = { 'commitCharacters', 'editRange', 'insertTextFormat', 'insertTextMode', 'data' },
        },
        contextSupport = true,
        insertTextMode = 1,
      },
    },
  },

  settings = {
    gopls = {
      analyses = {
        framepointer = true,
        sigchanyzer = true,
        unreachable = true,
        stdversion = true,
        unusedparams = true,
        unusedwrite = true,
        useany = true,
        nilness = true,
        shadow = true,
        unusedvariable = true,
        modernize = true,
        ST1000 = false,
      },
      codelenses = {
        gc_details = true,
        generate = true,
        regenerate_cgo = true,
        run_govulncheck = true,
        vulncheck = true,
        test = true,
        tidy = true,
        upgrade_dependency = true,
        -- 	vendor = true,
      },
      hints = {
        assignVariableTypes = true,
        compositeLiteralFields = true,
        compositeLiteralTypes = true,
        constantValues = true,
        functionTypeParameters = true,
        parameterNames = true,
        rangeVariableTypes = true,
        compositeLiteralFieldSnippets = true,
        allStructFields = true,
        parameterType = true,
        emptyFields = true,
      },
      staticcheck = true,
      gofumpt = true,
      directoryFilters = { '-.git', '-.vscode', '-.idea', '-.vscode-test', '-node_modules' },
      linksInHover = true,
      semanticTokens = true,
      experimentalPostfixCompletions = true,
      usePlaceholders = false,
    },
  },
}

return M
