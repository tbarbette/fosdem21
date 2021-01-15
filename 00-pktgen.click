//A very simple pktgen

FromDump(trace.pcap) 
    -> Pad 
    -> EnsureDPDKBuffer 
    -> ReplayUnqueue(LIMIT 10000000, QUICK_CLONE 1) 
    -> ToDPDKDevice(0); 
    
fd :: FromDPDKDevice(0, PAUSE none) -> Discard;

StaticThreadSched(fd 1);

DPDKInfo(11000000);
