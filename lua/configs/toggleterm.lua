local M = {}

function M.config()
  local status_ok, toggleterm = pcall(require, "toggleterm")
  if status_ok then
    toggleterm.setup(astronvim.user_plugin_opts("plugins.toggleterm", {
      size = 40,
      open_mapping = [[<c-\>]],
      shading_factor = 2,
      direction = "horizontal",
      float_opts = {
        border = "curved",
        highlights = {
          border = "Normal",
          background = "Normal",
        },
      },
    }))
  end
end

return M
