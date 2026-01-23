return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
	  "nvim-neotest/nvim-nio",
      "rcarriga/nvim-dap-ui",
      "mfussenegger/nvim-dap-python",
    },
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")
      local dap_python = require("dap-python")

      require("dapui").setup({
          layouts = {
              {
                  elements = {
                      'scopes',
                      'breakpoints',
                      'stacks',
                      'watches',
                  },
                  size = 65,
                  position = 'left',
              },
              {
                  elements = {
                      'console',
                  },
                  size = 90,
                  position = 'right'
              },
              {
                  elements = {
                      'repl',
                  },
                  size = 17,
                  position = 'bottom',
              },
          },
      })

      dap_python.setup("python3")

      vim.fn.sign_define("DapBreakpoint", {
        text = "",
        texthl = "DiagnosticSignError",
        linehl = "",
        numhl = "",
      })

      vim.fn.sign_define("DapBreakpointRejected", {
        text = "", -- or "❌"
        texthl = "DiagnosticSignError",
        linehl = "",
        numhl = "",
      })

      vim.fn.sign_define("DapStopped", {
        text = "", -- or "→"
        texthl = "DiagnosticSignWarn",
        linehl = "Visual",
        numhl = "DiagnosticSignWarn",
      })

      -- Automatically open/close DAP UI
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end

      local opts = { noremap = true, silent = true }

      -- Toggle breakpoint
      vim.keymap.set("n", "<leader>Br", function()
        dap.toggle_breakpoint()
      end, opts)

      -- Conditional breakpoint
      vim.keymap.set("n", "<leader>BB", function()
        dap.set_breakpoint(vim.fn.input('Breakpoint condition: '))
      end, {desc = 'Conditional breakpoint'})

      -- Continue / Start
      vim.keymap.set("n", "<leader>dc", function()
        dap.continue()
      end, opts)

      -- Step Over
      vim.keymap.set("n", "<leader>do", function()
        dap.step_over()
      end, opts)

      -- Step Into
      vim.keymap.set("n", "<leader>dI", function()
        dap.step_into()
      end, opts)

      -- Step Out
      vim.keymap.set("n", "<leader>dO", function()
        dap.step_out()
      end, opts)
			
      -- Keymap to terminate debugging
	  vim.keymap.set("n", "<leader>dq", function()
	      require("dap").terminate()
      end, opts)

      -- Toggle DAP UI
      vim.keymap.set("n", "<leader>du", function()
        dapui.toggle()
      end, opts)
    end,
  },
}
