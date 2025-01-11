import "@stdlib/ownable";
primitive Int;

struct SampleStruct {
    message: Int;
}

virtual const GLOBAL_CONSTANT: map<Int, Name> = 05;

@name(store_uint)
native storeUint(s: Builder, value: Int, bits: Int): Builder;

message(0x1234) MyMessage {
    data: SampleStruct;
}

fun globalFun(arg: String) {
    let x: Int = 123_123;
}

trait MyTrait {
    const CONST_VAL: Int = 42;
    get fun traitState(): Int {
        return self.CONST_VAL;
    }
}

contract MyContract with MyTrait, Ownable? {
    owner: Address; // comment
    value: Int as uint32 = 1230;
    counters: map<Int, Address> /* Address, "Address" */ ;
    map: map<Int as int16, Int as uint32>;
    b: bounced<MyMessage>;
    c: map<Bool, Cell>;
    a: map<Slice, String>;
    d: StringBuilder;

    init(owner: Address) {
        self.owner = owner;
    }
    bounced(msg: bounced<MyMessage>) {}
    external() {
        let normalId: Int = 0;
        let remainingWhatever: Int = 0;
    }
    receive() {}
    virtual fun overrideMe() {}
}
