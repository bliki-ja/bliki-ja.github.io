objects 
  thread, t:thread
  tool, :Toolkit
  peer, p:Peer, unborn

trace 
  found: a1:run(3) -> 
    thread: 
      run() -> 
        tool: 
           callbackLoop() -> self
           create -> peer
           handleExpose() -> 
             peer: 
               return      
           delete -> peer
