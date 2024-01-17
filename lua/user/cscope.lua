local status_ok, cscope_maps = pcall(require, "cscope_maps")
if not status_ok then
  return
end
cscope_maps.setup {
        -- your configuration options here
        disable_maps = false, -- "true" disables default keymaps
        skip_input_prompt = true, -- don't ask for "YES" before jump
        cscope = {
                picker = "telescope",
        }
  }
