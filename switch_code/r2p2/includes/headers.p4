#define QUERYID_SIZE 32
#define QUEUELEN_SIZE 64

header_type ethernet_t {
    fields {
        dstAddr : 48;
        srcAddr : 48;
        etherType : 16;
    }
}

header_type ipv4_t {
    fields {
        version : 4;
        ihl : 4;
        diffserv : 8;
        totalLen : 16;
        identification : 16;
        flags : 3;
        fragOffset : 13;
        ttl : 8;
        protocol : 8;
        hdrChecksum : 16;
        srcAddr : 32;
        dstAddr: 32;
    }
}

header_type tcp_t {
    fields {
        srcPort : 16;
        dstPort : 16;
        seqNo : 32;
        ackNo : 32;
        dataOffset : 4;
        res : 3;
        ecn : 3;
        ctrl : 6;
        window : 16;
        checksum : 16;
        urgentPtr : 16;
    }
}

header_type udp_t {
    fields {
        srcPort : 16;
        dstPort : 16;
        pkt_length : 16;
        checksum : 16;
    }
}

header_type sq_t {
    fields {
        recir_flag : 8;
        core_idx : 8;
        op_type : 8;
        seq_num : 16;
        qlen1 : 32;
        qlen2 : 32;
        qlen3 : 32;
        client_id : 16;
        req_id : 32;
        pkts_len : 32;
    }
}

header_type recir_t {
    fields {
        round_idx : 8;
    }
}
