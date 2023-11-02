local moo = import "moo.jsonnet";
local ns = "dunedaq.listrev.randomdatalistgenerator";
local s = moo.oschema.schema(ns);

local types = {
    count : s.number("Count", "i4",
                     doc="A count of not too many things"),

    conf: s.record("ConfParams", [
        s.field("send_timeout_ms", self.count, 100, doc="Milliseconds to wait while sending"),
    ], doc="RandomDataListGenerator configuration"),

};

moo.oschema.sort_select(types, ns)
