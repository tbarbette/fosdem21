sudo click --dpdk -l 0-0 -- -e 'FromDPDKDevice(0)
        -> MarkIPHeader(14) -> avg :: AverageCounterMP -> EtherMirror
        -> ToDPDKDevice(0); Script(label s, read avg.link_rate, write avg.reset, wait 1s, goto s);'
