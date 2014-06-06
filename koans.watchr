def run
  system("clear; ruby path_to_enlightenment.rb")
end
watch('.*\.rb$') { run }
run