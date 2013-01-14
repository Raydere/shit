def call_block
  puts "ready, go"
  yield
  yield
  puts "game over"
end

call_block { puts "go" }