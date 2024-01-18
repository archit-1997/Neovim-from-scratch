local status_ok, indent_line = pcall(require, "ibl")
if not status_ok then
  return
end

indent_line.setup{}
