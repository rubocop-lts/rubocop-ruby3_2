# Load from a "rakelib" directory is automatic!
# Adding our custom directory of tasks as a rakelib directory makes them available.
rakelib = "lib/rubocop/ruby3_1/rakelib"
Rake.add_rakelib(rakelib)
