<<<<<<< HEAD
=======
-- you will have to ensure npm and typescript are installed globally
--
-- sudo apt install nodejs
-- sudo apt install npm
-- sudo npm i -g typescript-language-server; sudo npm i -g typescript

>>>>>>> 36caaf3f076d31b02d47069b83298965bd48600e
return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
<<<<<<< HEAD
   end
=======
    end
>>>>>>> 36caaf3f076d31b02d47069b83298965bd48600e
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    config = function()
      require("mason-lspconfig").setup({
<<<<<<< HEAD
        ensure_installed = {"lua_ls", "jdtls", "tsserver"}
=======
        ensure_installed = {"lua_ls", "tsserver", "jdtls"},
>>>>>>> 36caaf3f076d31b02d47069b83298965bd48600e
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local lspconfig = require("lspconfig")
<<<<<<< HEAD

      lspconfig.lua_ls.setup({})
      lspconfig.jdtls.setup({})
      lspconfig.tsserver.setup({})
    end
  }
}

=======
      
      lspconfig.lua_ls.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.jdtls.setup({})
    end
  }
}
>>>>>>> 36caaf3f076d31b02d47069b83298965bd48600e
