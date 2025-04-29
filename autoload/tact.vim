" Vim autoload file
" Language: Tact
" Maintainer: Novus Nota

""
" Section: Completion options taken from Tact docs
" Docs: https://docs.tact-lang.org
" {{{1
""

" stdlib_functions {{{2
let s:tact_stdlib_functions = {
      \ 'send(SendParameters{': ''
      \ , 'message(MessageParameters{': ''
      \ , 'deploy(DeployParameters{': ''
      \ , 'cashback(': ''
      \ , 'emit(': ''
      \ , 'sendRawMessage(': ''
      \ , 'sendRawMessageReturnForwardFee(': 'Int'
      \
      \ , 'now()': 'Int'
      \ , 'curLt()': 'Int'
      \ , 'blockLt()': 'Int'
      \ , 'sender()': 'Address'
      \ , 'inMsg()': 'Slice'
      \ , 'context()': 'Context'
      \ , 'myAddress()': 'Address'
      \ , 'myCode()': 'Cell'
      \ , 'myStorageDue()': 'Int'
      \ , 'myBalance()': 'Int'
      \ , 'gasConsumed()': 'Int'
      \ , 'nativeReserve(': ''
      \ , 'commit()': ''
      \ , 'getConfigParam(': 'Cell?'
      \
      \ , 'address(': 'Address'
      \ , 'cell(': 'Cell'
      \ , 'slice(': 'Slice'
      \ , 'rawSlice(': 'Slice'
      \ , 'ascii(': 'Int'
      \ , 'crc32(': 'Int'
      \ , 'ton(': 'Int'
      \
      \ , 'beginCell()': 'Builder'
      \ , 'emptyCell()': 'Cell'
      \ , 'emptySlice()': 'Slice'
      \
      \ , 'newAddress(': 'Address'
      \ , 'contractAddress(': 'Address'
      \ , 'contractAddressExt(': 'Address'
      \ , 'contractHash(': 'Int'
      \ , 'forceBasechain(': ''
      \ , 'forceWorkchain(': ''
      \ , 'parseStdAddress(': 'StdAddress'
      \ , 'parseVarAddress(': 'VarAddress'
      \ , 'emptyBasechainAddress()': 'BasechainAddress'
      \ , 'newBasechainAddress(': 'BasechainAddress'
      \ , 'contractBasechainAddress(': 'BasechainAddress'
      \
      \ , 'beginString()': 'StringBuilder'
      \ , 'beginComment()': 'StringBuilder'
      \ , 'beginTailString()': 'StringBuilder'
      \ , 'beginStringFromBuilder(': 'StringBuilder'
      \
      \ , 'require(': ''
      \ , 'dump(': ''
      \ , 'dumpStack()': ''
      \ , 'throw(': ''
      \ , 'throwIf(': ''
      \ , 'throwUnless(': ''
      \
      \ , 'getStorageFee(': 'Int'
      \ , 'getComputeFee(': 'Int'
      \ , 'getSimpleComputeFee(': 'Int'
      \ , 'getForwardFee(': 'Int'
      \ , 'getSimpleForwardFee(': 'Int'
      \ , 'getOriginalFwdFee(': 'Int'
      \ , 'setGasLimit(': ''
      \ , 'acceptMessage()': ''
      \
      \ , 'checkSignature(': 'Bool'
      \ , 'checkDataSignature(': 'Bool'
      \ , 'sha256(': 'Int'
      \ , 'keccak256(': 'Int'
      \
      \ , 'min(': 'Int'
      \ , 'max(': 'Int'
      \ , 'abs(': 'Int'
      \ , 'sign(': 'Int'
      \ , 'sqrt(': 'Int'
      \ , 'divc(': 'Int'
      \ , 'muldivc(': 'Int'
      \ , 'mulShiftRight(': 'Int'
      \ , 'mulShiftRightRound(': 'Int'
      \ , 'mulShiftRightCeil(': 'Int'
      \ , 'log(': 'Int'
      \ , 'log2(': 'Int'
      \ , 'pow(': 'Int'
      \ , 'pow2(': 'Int'
      \
      \ , 'random(': 'Int'
      \ , 'randomInt()': 'Int'
      \ , 'getSeed()': 'Int'
      \ , 'setSeed(': ''
      \ , 'nativePrepareRandom(': ''
      \ , 'nativeRandomize(': ''
      \ , 'nativeRandomizeLt()': ''
      \ , 'nativeRandom()': 'Int'
      \ , 'nativeRandomInterval(': 'Int'
      \
      \ , 'emptyMap()': 'null'
      \ }
" }}}2

let s:tact_globals = {
      \ 'SendPayGasSeparately': 'Int'
      \ , 'SendPayFwdFeesSeparately': 'Int'
      \ , 'SendIgnoreErrors': 'Int'
      \ , 'SendBounceIfActionFail': 'Int'
      \ , 'SendDestroyIfZero': 'Int'
      \ , 'SendDefaultMode': 'Int'
      \ , 'SendRemainingValue': 'Int'
      \ , 'SendRemainingBalance': 'Int'
      \ , 'SendOnlyEstimateFee': 'Int'
      \ , 'SendParameters{': 'SendParameters'
      \ , 'StateInit{': 'StateInit'
      \ , 'Context{': 'Context'
      \ , 'StdAddress{': 'StdAddress'
      \ , 'VarAddress{': 'VarAddress'
      \ , 'SignedBundle{': 'SignedBundle'
      \ , 'BasechainAddress{': 'BasechainAddress'
      \ , 'ReserveExact': 'Int'
      \ , 'ReserveAllExcept': 'Int'
      \ , 'ReserveAtMost': 'Int'
      \ , 'ReserveAddOriginalBalance': 'Int'
      \ , 'ReserveInvertSign': 'Int'
      \ , 'ReserveBounceIfActionFail': 'Int'
      \ , 'TactExitCodeNullReferenceException': 'Int'
      \ , 'TactExitCodeInvalidSerializationPrefix': 'Int'
      \ , 'TactExitCodeInvalidIncomingMessage': 'Int'
      \ , 'TactExitCodeConstraintsError': 'Int'
      \ , 'TactExitCodeAccessDenied': 'Int'
      \ , 'TactExitCodeContractStopped': 'Int'
      \ , 'TactExitCodeInvalidArgument': 'Int'
      \ , 'TactExitCodeContractCodeNotFound': 'Int'
      \ , 'TactExitCodeInvalidStandardAddress': 'Int'
      \ , 'TactExitCodeNotBasechainAddress': 'Int'
      \ }

let s:tact_Map_methods = {
      \ 'get(': ''
      \ , 'set(': ''
      \ , 'replace(': 'Bool'
      \ , 'replaceGet(': ''
      \ , 'del(': 'Bool'
      \ , 'asCell()': 'Cell'
      \ , 'isEmpty(': 'Bool'
      \ , 'exists(': 'Bool'
      \ , 'deepEquals(': 'Bool'
      \ }

let s:tact_Address_methods = {
      \ 'toString()': 'String'
      \ , 'asSlice()': 'Slice'
      \ }

let s:tact_StringBuilder_methods = {
      \ 'append(': ''
      \ , 'concat(': 'StringBuilder'
      \ , 'toString()': 'String'
      \ , 'toCell()': 'Cell'
      \ , 'toSlice()': 'Slice'
      \ }

let s:tact_String_methods = {
      \ 'asComment()': 'Cell'
      \ , 'asSlice()': 'Slice'
      \ , 'hashData()': 'Int'
      \ , 'fromBase64()': 'Slice'
      \ }

let s:tact_Int_methods = {
      \ 'toString()': 'String'
      \ , 'toFloatString(': 'String'
      \ , 'toCoinsString()': 'String'
      \ }

let s:tact_Builder_methods = {
      \ 'endCell()': 'Cell'
      \ , 'storeUint(': 'Builder'
      \ , 'storeInt(': 'Builder'
      \ , 'storeBit(': 'Builder'
      \ , 'storeBool(': 'Builder'
      \ , 'storeBuilder(': 'Builder'
      \ , 'storeSlice(': 'Builder'
      \ , 'storeCoins(': 'Builder'
      \ , 'storeVarUint16(': 'Builder'
      \ , 'storeVarUint32(': 'Builder'
      \ , 'storeVarInt16(': 'Builder'
      \ , 'storeVarInt32(': 'Builder'
      \ , 'storeAddress(': 'Builder'
      \ , 'storeBasechainAddress(': 'Builder'
      \ , 'storeRef(': 'Builder'
      \ , 'storeMaybeRef(': 'Builder'
      \ , 'refs()': 'Int'
      \ , 'bits()': 'Int'
      \ , 'depth()': 'Int'
      \ , 'asSlice()': 'Slice'
      \ , 'asCell()': 'Cell'
      \ }

let s:tact_Cell_methods = {
      \ 'beginParse()': 'Slice'
      \ , 'depth()': 'Int'
      \ , 'computeDataSize()': 'Int'
      \ , 'hash()': 'Int'
      \ , 'asSlice()': 'Slice'
      \ }

let s:tact_Slice_methods = {
      \ 'loadUint(': 'Int'
      \ , 'preloadUint(': 'Int'
      \ , 'loadInt(': 'Int'
      \ , 'preloadInt(': 'Int'
      \ , 'loadBits(': 'Slice'
      \ , 'preloadBits(': 'Slice'
      \ , 'skipBits(': ''
      \ , 'skipLastBits(': ''
      \ , 'loadBool(': 'Bool'
      \ , 'skipBool(': ''
      \ , 'loadBit(': 'Bool'
      \ , 'loadCoins()': 'Int'
      \ , 'skipCoins(': ''
      \ , 'loadVarUint16(': 'Int'
      \ , 'skipVarUint16(': ''
      \ , 'loadVarUint32(': 'Int'
      \ , 'skipVarUint32(': ''
      \ , 'loadVarInt16(': 'Int'
      \ , 'skipVarInt16(': ''
      \ , 'loadVarInt32(': 'Int'
      \ , 'skipVarInt32(': ''
      \ , 'loadAddress(': 'Address'
      \ , 'skipAddress(': ''
      \ , 'loadRef()': 'Cell'
      \ , 'preloadRef()': 'Cell'
      \ , 'skipRef(': ''
      \ , 'loadMaybeRef()': 'Cell?'
      \ , 'preloadMaybeRef()': 'Cell?'
      \ , 'skipMaybeRef(': ''
      \ , 'refs()': 'Int'
      \ , 'bits()': 'Int'
      \ , 'firstBits(': 'Slice'
      \ , 'lastBits(': 'Slice'
      \ , 'depth()': 'Int'
      \ , 'computeDataSize()': 'Int'
      \ , 'empty()': 'Bool'
      \ , 'dataEmpty()': 'Bool'
      \ , 'refsEmpty()': 'Bool'
      \ , 'hash()': 'Int'
      \ , 'hashData()': 'Int'
      \ , 'asCell()': 'Cell'
      \ , 'asString()': 'String'
      \ , 'fromBase64()': 'Slice'
      \ , 'asAddress()': 'Address'
      \ , 'asAddressUnsafe()': 'Address'
      \ }

let s:tact_StateInit_methods = {
      \ 'hasSameBasechainAddress(': 'Bool'
      \ }

let s:tact_Context_methods = {
      \ 'readForwardFee()': 'Int'
      \ }

let s:tact_SignedBundle_methods = {
      \ 'verifySignature(': 'Bool'
      \ }

let s:tact_structure_methods = {
      \ 'toCell()': 'Cell'
      \ , 'toSlice()': 'Slice'
      \ }

let s:tact_stdlib_deploy = [
      \ 'Deployable'
      \ , 'FactoryDeployable'
      \ ]

let s:tact_stdlib_dns = [
      \ 'DNSResolver'
      \ ]

let s:tact_stdlib_ownable = [
      \ 'Ownable'
      \ , 'OwnableTransferable'
      \ ]

let s:tact_stdlib_stoppable = [
      \ 'Stoppable'
      \ , 'Resumable'
      \ ]

let s:tact_stdlib_imports = [
      \ '@stdlib/deploy'
      \ , '@stdlib/ownable'
      \ , '@stdlib/stoppable'
      \ , '@stdlib/dns'
      \ , '@stdlib/config'
      \ , '@stdlib/content'
      \ ]

" ...

" }}}1

""
" Section: Abbreviation options
" {{{1
""

let s:tact_abbrev_native = [
      \ 'a_natfun'
      \ ]

let s:tact_abbrev_function = [
      \ 'a_fun'
      \ , 'a_extfun'
      \ , 'a_mutfun'
      \ ]

let s:tact_abbrev_structure = [
      \ 'a_co'
      \ , 'a_tr'
      \ , 'a_st'
      \ , 'a_me'
      \ ]

let s:tact_abbrev_method = [
      \ 'a_se'
      \ ]

" }}}1

""
" Section: Context-aware options
" {{{1
""

let s:tact_types = [
      \ 'Int', 'Bool', 'Address', 'Slice', 'Cell', 'Builder', 'String', 'StringBuilder'
      \ , 'map<', 'bounced<', 'set<'
      \ ]

" NOTE: Pre-computed the values, because producing them on the fly isn't very convenient in VimScript
let s:tact_native_types = [
      \ 'int257', 'coins', 'remaining', 'bytes32', 'bytes64'
      \ , 'varuint16', 'varuint32', 'varint16', 'varint32'
      \ , 'int1', 'int2', 'int3', 'int4', 'int5', 'int6', 'int7', 'int8'
      \ , 'int9', 'int10', 'int11', 'int12', 'int13', 'int14', 'int15', 'int16'
      \ , 'int17', 'int18', 'int19', 'int20', 'int21', 'int22', 'int23', 'int24'
      \ , 'int25', 'int26', 'int27', 'int28', 'int29', 'int30', 'int31', 'int32'
      \ , 'int33', 'int34', 'int35', 'int36', 'int37', 'int38', 'int39', 'int40'
      \ , 'int41', 'int42', 'int43', 'int44', 'int45', 'int46', 'int47', 'int48'
      \ , 'int49', 'int50', 'int51', 'int52', 'int53', 'int54', 'int55', 'int56'
      \ , 'int57', 'int58', 'int59', 'int60', 'int61', 'int62', 'int63', 'int64'
      \ , 'int65', 'int66', 'int67', 'int68', 'int69', 'int70', 'int71', 'int72'
      \ , 'int73', 'int74', 'int75', 'int76', 'int77', 'int78', 'int79', 'int80'
      \ , 'int81', 'int82', 'int83', 'int84', 'int85', 'int86', 'int87', 'int88'
      \ , 'int89', 'int90', 'int91', 'int92', 'int93', 'int94', 'int95', 'int96'
      \ , 'int97', 'int98', 'int99', 'int100', 'int101', 'int102', 'int103', 'int104'
      \ , 'int105', 'int106', 'int107', 'int108', 'int109', 'int110', 'int111', 'int112'
      \ , 'int113', 'int114', 'int115', 'int116', 'int117', 'int118', 'int119', 'int120'
      \ , 'int121', 'int122', 'int123', 'int124', 'int125', 'int126', 'int127', 'int128'
      \ , 'int129', 'int130', 'int131', 'int132', 'int133', 'int134', 'int135', 'int136'
      \ , 'int137', 'int138', 'int139', 'int140', 'int141', 'int142', 'int143', 'int144'
      \ , 'int145', 'int146', 'int147', 'int148', 'int149', 'int150', 'int151', 'int152'
      \ , 'int153', 'int154', 'int155', 'int156', 'int157', 'int158', 'int159', 'int160'
      \ , 'int161', 'int162', 'int163', 'int164', 'int165', 'int166', 'int167', 'int168'
      \ , 'int169', 'int170', 'int171', 'int172', 'int173', 'int174', 'int175', 'int176'
      \ , 'int177', 'int178', 'int179', 'int180', 'int181', 'int182', 'int183', 'int184'
      \ , 'int185', 'int186', 'int187', 'int188', 'int189', 'int190', 'int191', 'int192'
      \ , 'int193', 'int194', 'int195', 'int196', 'int197', 'int198', 'int199', 'int200'
      \ , 'int201', 'int202', 'int203', 'int204', 'int205', 'int206', 'int207', 'int208'
      \ , 'int209', 'int210', 'int211', 'int212', 'int213', 'int214', 'int215', 'int216'
      \ , 'int217', 'int218', 'int219', 'int220', 'int221', 'int222', 'int223', 'int224'
      \ , 'int225', 'int226', 'int227', 'int228', 'int229', 'int230', 'int231', 'int232'
      \ , 'int233', 'int234', 'int235', 'int236', 'int237', 'int238', 'int239', 'int240'
      \ , 'int241', 'int242', 'int243', 'int244', 'int245', 'int246', 'int247', 'int248'
      \ , 'int249', 'int250', 'int251', 'int252', 'int253', 'int254', 'int255', 'int256'
      \ , 'uint1', 'uint2', 'uint3', 'uint4', 'uint5', 'uint6', 'uint7', 'uint8'
      \ , 'uint9', 'uint10', 'uint11', 'uint12', 'uint13', 'uint14', 'uint15', 'uint16'
      \ , 'uint17', 'uint18', 'uint19', 'uint20', 'uint21', 'uint22', 'uint23', 'uint24'
      \ , 'uint25', 'uint26', 'uint27', 'uint28', 'uint29', 'uint30', 'uint31', 'uint32'
      \ , 'uint33', 'uint34', 'uint35', 'uint36', 'uint37', 'uint38', 'uint39', 'uint40'
      \ , 'uint41', 'uint42', 'uint43', 'uint44', 'uint45', 'uint46', 'uint47', 'uint48'
      \ , 'uint49', 'uint50', 'uint51', 'uint52', 'uint53', 'uint54', 'uint55', 'uint56'
      \ , 'uint57', 'uint58', 'uint59', 'uint60', 'uint61', 'uint62', 'uint63', 'uint64'
      \ , 'uint65', 'uint66', 'uint67', 'uint68', 'uint69', 'uint70', 'uint71', 'uint72'
      \ , 'uint73', 'uint74', 'uint75', 'uint76', 'uint77', 'uint78', 'uint79', 'uint80'
      \ , 'uint81', 'uint82', 'uint83', 'uint84', 'uint85', 'uint86', 'uint87', 'uint88'
      \ , 'uint89', 'uint90', 'uint91', 'uint92', 'uint93', 'uint94', 'uint95', 'uint96'
      \ , 'uint97', 'uint98', 'uint99', 'uint100', 'uint101', 'uint102', 'uint103', 'uint104'
      \ , 'uint105', 'uint106', 'uint107', 'uint108', 'uint109', 'uint110', 'uint111', 'uint112'
      \ , 'uint113', 'uint114', 'uint115', 'uint116', 'uint117', 'uint118', 'uint119', 'uint120'
      \ , 'uint121', 'uint122', 'uint123', 'uint124', 'uint125', 'uint126', 'uint127', 'uint128'
      \ , 'uint129', 'uint130', 'uint131', 'uint132', 'uint133', 'uint134', 'uint135', 'uint136'
      \ , 'uint137', 'uint138', 'uint139', 'uint140', 'uint141', 'uint142', 'uint143', 'uint144'
      \ , 'uint145', 'uint146', 'uint147', 'uint148', 'uint149', 'uint150', 'uint151', 'uint152'
      \ , 'uint153', 'uint154', 'uint155', 'uint156', 'uint157', 'uint158', 'uint159', 'uint160'
      \ , 'uint161', 'uint162', 'uint163', 'uint164', 'uint165', 'uint166', 'uint167', 'uint168'
      \ , 'uint169', 'uint170', 'uint171', 'uint172', 'uint173', 'uint174', 'uint175', 'uint176'
      \ , 'uint177', 'uint178', 'uint179', 'uint180', 'uint181', 'uint182', 'uint183', 'uint184'
      \ , 'uint185', 'uint186', 'uint187', 'uint188', 'uint189', 'uint190', 'uint191', 'uint192'
      \ , 'uint193', 'uint194', 'uint195', 'uint196', 'uint197', 'uint198', 'uint199', 'uint200'
      \ , 'uint201', 'uint202', 'uint203', 'uint204', 'uint205', 'uint206', 'uint207', 'uint208'
      \ , 'uint209', 'uint210', 'uint211', 'uint212', 'uint213', 'uint214', 'uint215', 'uint216'
      \ , 'uint217', 'uint218', 'uint219', 'uint220', 'uint221', 'uint222', 'uint223', 'uint224'
      \ , 'uint225', 'uint226', 'uint227', 'uint228', 'uint229', 'uint230', 'uint231', 'uint232'
      \ , 'uint233', 'uint234', 'uint235', 'uint236', 'uint237', 'uint238', 'uint239', 'uint240'
      \ , 'uint241', 'uint242', 'uint243', 'uint244', 'uint245', 'uint246', 'uint247', 'uint248'
      \ , 'uint249', 'uint250', 'uint251', 'uint252', 'uint253', 'uint254', 'uint255', 'uint256'
      \ ]

" }}}1

""
" Section: Re-usable RegExp parts
" {{{1
""

let s:regexp_type_as = '\%(\<as\s*[a-zA-Z_]\w*\)\?'
let s:regexp_type_literal = '[A-Z]\w*'
let s:regexp_map_no_right_angle_bracket = '\<map\s*<\s*'
      \ . s:regexp_type_literal
      \ . '\s*'
      \ . s:regexp_type_as
      \ . '\s*,\s*'
      \ . s:regexp_type_literal
      \ . '\s*'
      \ . s:regexp_type_as
      \ . '\s*'
let s:regexp_set_no_right_angle_bracket = '\<set\s*<\s*'
      \ . s:regexp_type_literal
      \ . '\s*'
      \ . s:regexp_type_as
      \ . '\s*,\?\s*'
let s:regexp_bounced_no_right_angle_bracket = '\<bounced\s*<\s*' . s:regexp_type_literal . '\s*'
let s:regexp_number_literal = '\%(([\d_]\+)\|(0[xX][\x_]\+)\|(0[oO][\o_]\+)\|(0[bB][01_]\+)\)'

" }}}1

""
" Section: Functions
""

" NOTE: Fallback completion function for self. and UFCS (.) contexts
" Reverts to keyword completion if nothing was found
function! s:DotFallbackComplete(base, extends, structs, messages)
  let l:compl = []

  " all the options for the types
  let l:options = keys(s:tact_Slice_methods)
        \ + keys(s:tact_Cell_methods)
        \ + keys(s:tact_Builder_methods)
        \ + keys(s:tact_Int_methods)
        \ + keys(s:tact_String_methods)
        \ + keys(s:tact_StringBuilder_methods)
        \ + keys(s:tact_StateInit_methods)
        \ + keys(s:tact_Context_methods)
        \ + keys(s:tact_SignedBundle_methods)

  " find fields from structs
  for item in values(a:structs)
    for field in keys(item)
      if field =~ '\V' . a:base
        call add(l:compl, item)
      endif
    endfor
  endfor

  " find fields from messages
  for item in values(a:messages)
    for field in keys(item)
      if field =~ '\V' . a:base
        call add(l:compl, item)
      endif
    endfor
  endfor

  " find type matches
  for item in l:options
    if substitute(item, '()\?$', '', '') =~ '\V' . a:base
      call add(l:compl, item)
    endif
  endfor

  " find extends function matches
  for item in keys(a:extends)
    if item =~ '\V' . a:base
      call add(l:compl, item + '(')
    endif
  endfor

  " revert to keyword completion if nothing was found
  if empty(l:compl)
    silent! call feedkeys("\<C-x>\<C-n>", 'n')
  endif

  " return possible matches or [] if none
  return l:compl
endfunction

" NOTE: Main fallback completion function
" Used when there are no matches using any heuristic applied in the main one
" Tries to do syntax-based completion first, then fallbacks to keywords
function! s:FallbackComplete(findstart, base)
  " saving all the current matches
  let l:syntaxcompletions = syntaxcomplete#Complete(a:findstart, a:base)

  " revert to keyword completion if nothing was found
  if empty(l:syntaxcompletions)
    silent! call feedkeys("\<C-x>\<C-n>", 'n')
  endif

  " return possible matches or [] if none
  return l:syntaxcompletions
endfunction

" NOTE: Error report function
function! s:ErrorMsg(msg) abort
  execute 'normal! \<Esc>'
  echohl ErrorMsg
  echomsg a:msg
  echohl None
endfunction

" NOTE: Line trim function
" Used to get rid of // and /* */ comments at the end of lines (as well as their inline placement)
function! s:TrimLine(line)
  return substitute(substitute(trim(substitute(a:line, '//.*$', '', '')), '/\*.*\*/', '', 'g'), '\s*/\*.*$', '', '')
endfunction

" NOTE: Function for scanning definitions before the current line inside the functions or methods of traits and contracts,
" and for determining if the cursor position is inside the body of the current function/method or not.
" Returns
" [] -- when some error happened
" [0, i] -- when the cursor position is not inside the body of this function/method
" [1, i, {'name': ['types']}] -- when cursor position is inside, the dictionary holds all the variable definitions
" where i is the latest checked position (a:current_lnum)
" Experimental: [2, '}'] -- completion suggestion
function! s:ScanBodyForDefinitions(cursor_lnum, current_lnum, end_lnum, function_name, function_start)
  " {{{2
  " keep the current view
  let l:winview = winsaveview()

  " list of definitions
  let l:definitions_found = {} " {'name': [types]}

  " move to the start, then to the {
  keepjumps exe "normal " . a:function_start . "G"
  keepjumps normal ^
  keepjumps normal f{

  " trying to find ending } and ignoring strings in the process
  let l:function_end = searchpair('{', '', '}', 'Wn')
  " returned line number, or 0 and -1
  " W -> doesn't Wrap around the end of the file
  " n -> doesn't move the cursor

  " didn't find it
  if l:function_end <= 0
    " if cursor point is on this line, then suggest }
    "if a:cursor_lnum == l:local_lnum
    "  return []
    "endif

    " otherwise -- error
    call winrestview(l:winview)
    call s:ErrorMsg('No closing } found for the ' . a:function_name . ' defined on line ' . a:function_start)
    return []
  endif

  " cursor point is either before or after the function body
  if a:cursor_lnum < a:function_start || a:cursor_lnum > l:function_end
    call winrestview(l:winview)
    return [0, l:function_end]
  endif

  " parse definitions
  " while l:local_lnum < l:function_end && l:local_lnum <= a:end_lnum
  " keep the line number to set it to the final line of the function body
  let l:local_lnum = a:function_start
  while l:local_lnum <= l:function_end
    " advance
    let l:local_lnum += 1
    if l:local_lnum > a:end_lnum
      call winrestview(l:winview)
      call s:ErrorMsg('No closing } found for the ' . a:function_name . ' defined on line ' . a:function_start)
      return []
    endif
    let l:buf_line = s:TrimLine(getline(l:local_lnum))

    " parse a definition
    let l:definition_name_arr = []
    silent! call substitute(l:buf_line, '^let\s\+\(\w\+\)\s*\%(:\|=\)', '\=add(l:definition_name_arr,submatch(1))', '')

    " skip if not matched
    if empty(l:definition_name_arr)
      continue
    endif

    " extract type from the let declaration
    let l:definition_type_arr = s:RecognizeTypeAsList(l:buf_line, '', '\%(;\|=.\{-};\?\)$')
    if empty(l:definition_type_arr)
      " No type provided, lets just skip the definition
      continue
      " call winrestview(l:winview)
      " call s:ErrorMsg('Invalid type syntax on line ' . l:local_lnum)
      " return []
    endif

    let l:definition_parsed_type_arr = s:ParseTypeIntoList(l:local_lnum, l:definition_name_arr[0], trim(l:definition_type_arr[0]))
    if empty(l:definition_parsed_type_arr)
      call winrestview(l:winview)
      return [] " already errored in the function above
    endif

    " store result
    let l:definitions_found[l:definition_name_arr[0]] = l:definition_parsed_type_arr
  endwhile

  " restore view
  call winrestview(l:winview)

  " produce definitions
  if empty(l:definitions_found)
    return [0, l:function_end]
  else
    return [1, l:function_end, l:definitions_found]
  endif

  " ----------------------------------------
  " Previous approach, temporarily archived.
  "   may be improved by actually parsing all statement blocks
  "   or rather -- simply looking for {, } else {, } catch {, } until ()) " and correctly counting {} pairs,
  "   although that approach would be too brittle and inflexible
  " ----------------------------------------

  " " we're way past the cursor point
  " if a:cursor_lnum < l:local_lnum
  " return [0, l:local_lnum]
  " endif

  " " still have a body to parse
  " let l:need_closing_braces = 1
  " let l:definitions_found = {} " {'name': [types]}

  " " start the parsing
  " while l:need_closing_braces != 0
  " " advance
  " let l:local_lnum += 1
  " if l:local_lnum > a:end_lnum
  " call s:ErrorMsg('No closing } found for the ' . a:function_name . ' defined on line ' . a:function_start)
  " return []
  " endif
  " let l:buf_line = s:TrimLine(getline(l:local_lnum))

  " " skip empty
  " if empty(l:buf_line)
  " continue
  " endif

  " " add a brace
  " if l:buf_line =~# '}$'
  " let l:need_closing_braces -= 1
  " continue
  " endif

  " " if cursor is on this line, then we found our context
  " if a:cursor_lnum == l:local_lnum
  " return [1, l:local_lnum, l:definitions_found]
  " endif

  " " parse a definition
  " let l:definition_name_arr = []
  " silent! call substitute(l:buf_line, '^let\s\+\(\w\+\)\s*:', '\=add(l:definition_name_arr,submatch(1))', '')

  " " skip if not matched
  " if empty(l:definition_name_arr)
  " continue
  " endif

  " " extract type
  " let l:definition_type_arr = s:RecognizeTypeAsList(l:buf_line, '', '\%(=.\{-}\)\?;$')
  " if empty(l:definition_type_arr)
  " call s:ErrorMsg('Invalid type syntax on line ' . l:local_lnum)
  " return []
  " endif

  " let l:definition_parsed_type_arr = s:ParseTypeIntoList(l:local_lnum, l:definition_name_arr[0], trim(l:definition_type_arr[0]))
  " if empty(l:definition_parsed_type_arr)
  " return [] " already errored in the function above
  " endif

  " " store result
  " let l:definitions_found[l:definition_name_arr[0]] = l:definition_parsed_type_arr
  " endwhile

  " " no context found, return regardless
  " return [0, l:local_lnum]
  " }}}2
endfunction

" NOTE: Function for parsing up to one parameter in special methods (receive, external, bounced)
" This function is NOT used for parsing init() parameters.
" Returns an empty array when there is any error
function! s:ParseSpecialParamIntoList(special_fun_name, str, lnum)
  " {{{2
  let l:err_msg_prefix = 'Invalid syntax of ' . a:special_fun_name . '() on line ' . a:lnum
  let l:bounced_msg = '. It must have only one parameter.'
  let l:receive_external_msg = '. It can have at max 1 argument or a string literal as the internal message.'

  " try to parse the single parameter
  let l:special_param_arr = []
  silent! call substitute(a:str,
        \ '^' . a:special_fun_name . '\s*(\(\s*\w\+\s*:.\{-}\))',
        \ '\=add(l:special_param_arr,submatch(1))',
        \ '')

  " try parsing the param right away
  if !empty(l:special_param_arr)
    let l:special_param_split = split(l:special_param_arr[0], ':')
    if len(l:special_param_split) != 2
      " display an error message
      if a:special_fun_name ==# 'bounced'
        call s:ErrorMsg(l:err_msg_prefix . l:bounced_msg)
      else
        call s:ErrorMsg(l:err_msg_prefix . l:receive_external_msg)
      endif

      " and exit
      return []
    endif

    let l:special_param_name = trim(l:special_param_split[0])
    let l:special_param_type_parsed = s:ParseTypeIntoList(a:lnum, l:special_param_name, trim(l:special_param_split[1]))

    if empty(l:special_param_type_parsed)
      " already errored before
      return []
    endif

    let l:res = {}
    let l:res[l:special_param_name] = l:special_param_type_parsed

    " return the only param found
    return [l:res]
  endif

  " bounced() must have a parameter declared
  if a:special_fun_name ==# 'bounced'
    call s:ErrorMsg(l:err_msg_prefix . l:bounced_msg)
    return []
  endif

  " receive() and external() may have a string literal or no parameters declared
  if a:str =~# '^' . a:special_fun_name . '\s*(\s*".\{-}"\s*)'
        \ || a:str =~# '^' . a:special_fun_name . '\s*(\s*)'
    " everything is correct, it's just that there are no params
    return [{}]
  endif

  " receive() and external() may also have a constant string identifier
  if a:str =~# '^' . a:special_fun_name . '\s*(\s*.\{-}\s*)'
    silent! call substitute(a:str,
          \ '^' . a:special_fun_name . '\s*(\(\s*\w\+\s*\))',
          \ '\=add(l:special_param_arr,submatch(1))',
          \ '')
    if !empty(l:special_param_arr)
      let l:special_param_name = trim(l:special_param_arr[0])
      let l:special_param_type_parsed = ['String']

      let l:res = {}
      let l:res[l:special_param_name] = l:special_param_type_parsed

      " return the only param found
      return [l:res]
    endif
  endif

  " display an error message
  if a:special_fun_name ==# 'bounced'
    call s:ErrorMsg(l:err_msg_prefix . l:bounced_msg)
  else
    call s:ErrorMsg(l:err_msg_prefix . l:receive_external_msg)
  endif

  " and exit
  return []

  " }}}2
endfunction

" NOTE: Helper function for recognizing types
" Assumes str, regexp_start and regexp_end params to be passed trimmed already
function! s:RecognizeTypeAsList(str, regexp_start, regexp_end)
  let l:result_arr = []

  " match map
  silent! call substitute(a:str,
        \ a:regexp_start . ':\s*\(' . s:regexp_map_no_right_angle_bracket . '\)>\s*' . s:regexp_type_as . '\s*' . a:regexp_end,
        \ '\=add(l:result_arr,submatch(1))',
        \ '')
  if !empty(l:result_arr)
    return l:result_arr
  endif

  " match set
  silent! call substitute(a:str,
        \ a:regexp_start . ':\s*\(' . s:regexp_set_no_right_angle_bracket . '\)>\s*' . s:regexp_type_as . '\s*' . a:regexp_end,
        \ '\=add(l:result_arr,submatch(1))',
        \ '')
  if !empty(l:result_arr)
    return l:result_arr
  endif

  " match bounced
  silent! call substitute(a:str,
        \ a:regexp_start . ':\s*\(' . s:regexp_bounced_no_right_angle_bracket . '\)>\s*' . s:regexp_type_as . '\s*' . a:regexp_end,
        \ '\=add(l:result_arr,submatch(1))',
        \ '')
  if !empty(l:result_arr)
    return l:result_arr
  endif

  " match generic type
  silent! call substitute(a:str,
        \ a:regexp_start . ':\s*\(' . s:regexp_type_literal . '?\?\)\s*' . s:regexp_type_as . '\s*' . a:regexp_end,
        \ '\=add(l:result_arr,submatch(1))',
        \ '')

  " produce results regardless
  return l:result_arr
endfunction

" NOTE: Helper function for parsing nested types in : contexts
" Used for parsing any declarations, throws errors upon failure, returning empty lists
"
" Assumes that name and type params are being passed trimmed already
" Also assumes that map/bounced types are passed without the right angle bracket
function! s:ParseTypeIntoList(lnum, name, type) abort
  " {{{2
  if empty(a:type)
    call s:ErrorMsg('Empty type declaration for ' . a:name . ' on line ' . a:lnum)
    return []
  endif

  " bounced
  if a:type =~# '^bounced\>'
    " can split by <
    let l:split_by_left_angle_bracket = split(a:type, '<')
    if len(l:split_by_left_angle_bracket) != 2
      call s:ErrorMsg('Invalid syntax of bounced type for ' . a:name . ' on line ' . a:lnum)
      return []
    endif

    let l:compound_name = trim(l:split_by_left_angle_bracket[0])
    let l:type_name = substitute(trim(l:split_by_left_angle_bracket[1]), '^\(\w\+?\?\).*', '\1', '')

    " if any of values is empty -- report error
    if empty(l:compound_name) || empty(l:type_name)
      call s:ErrorMsg('Invalid syntax of bounced type for ' . a:name . ' on line ' . a:lnum)
      return []
    endif

    return [l:compound_name, l:type_name]
  endif

  " set
  if a:type =~# '^set\>'
    " can split by <
    let l:split_by_left_angle_bracket = split(a:type, '<')
    if len(l:split_by_left_angle_bracket) != 2
      call s:ErrorMsg('Invalid syntax of set type for ' . a:name . ' on line ' . a:lnum)
      return []
    endif

    let l:compound_name = trim(l:split_by_left_angle_bracket[0])
    let l:type_name = substitute(trim(l:split_by_left_angle_bracket[1]), '^\(\w\+?\?\).*', '\1', '')

    " if any of values is empty -- report error
    if empty(l:compound_name) || empty(l:type_name)
      call s:ErrorMsg('Invalid syntax of set type for ' . a:name . ' on line ' . a:lnum)
      return []
    endif

    return [l:compound_name, l:type_name]
  endif

  " map
  if a:type =~# '^map\>'
    " can split by ,
    let l:split_compound_by_comma = split(a:type, ',')
    if len(l:split_compound_by_comma) != 2
      call s:ErrorMsg('Invalid syntax of map type for ' . a:name . ' on line ' . a:lnum)
      return []
    endif

    " can split the left part of ,-split by <
    let l:split_by_left_angle_bracket = split(trim(l:split_compound_by_comma[0]), '<')
    if len(l:split_by_left_angle_bracket) != 2
      call s:ErrorMsg('Invalid syntax of map type for ' . a:name . ' on line ' . a:lnum)
      return []
    endif

    let l:compound_name = trim(l:split_by_left_angle_bracket[0])
    let l:key_type = substitute(trim(l:split_by_left_angle_bracket[1]), '^\(\w\+?\?\).*', '\1', '')
    let l:value_type = substitute(trim(l:split_compound_by_comma[1]), '^\(\w\+?\?\).*', '\1', '')

    " if any of values is empty -- report error
    if empty(l:compound_name) || empty(l:key_type) || empty(l:value_type)
      call s:ErrorMsg('Invalid syntax of map type for ' . a:name . ' on line ' . a:lnum)
      return []
    endif

    return [l:compound_name, l:key_type, l:value_type]
  endif

  " not a map/set/bounced type
  return [substitute(a:type, '^\(\w\+?\?\).*', '\1', '')]
  " }}}2
endfunction

" NOTE: Helper function for getting all completion options for the given type array
" Returns an array of possible options, which then have to be filtered by the current word being completed
function! s:GetTypeCompletionOptions(type_arr, messages, structs, extends_functions, extends_functions_returns)
  " {{{2
  " nothing to parse
  if len(a:type_arr) == 0
    return []
  endif

  " must be a map<type, type>
  if len(a:type_arr) == 3
    if a:type_arr[0] !=# 'map'
      return []
    endif
    let l:options = keys(s:tact_Map_methods)

    for item in keys(a:extends_functions)
      if has_key(a:extends_functions[item]['self'], 'map')
        call add(l:options, item + '(')
      endif
    endfor

    return l:options
  endif

  " must be a set<type>
  if len(a:type_arr) == 2 && a:type_arr[0] ==# 'set'
    let l:options = []
    " NOTE: set type doesn't have any methods, yet
    return l:options
  endif

  " must be a bounced<msg type>
  if len(a:type_arr) == 2
    if a:type_arr[0] !=# 'bounced'
      return []
    endif
    let l:options = []

    " message
    if has_key(a:messages, a:type_arr[1])
      " fields
      call extend(l:options, keys(a:messages[a:type_arr[1]]))
      call extend(l:options, keys(s:tact_structure_methods))
    endif

    " extension methods
    for item in keys(a:extends_functions)
      if has_key(a:extends_functions[item]['self'], a:type_arr[1])
        call add(l:options, item + '(')
      endif
    endfor

    return l:options
  endif

  " std types and messages/structs
  if len(a:type_arr) == 1
    " special struct
    if a:type_arr[0] ==# '__context__'
      return ['bounced', 'sender', 'value', 'raw']
    endif

    " collecting options
    let l:options = []

    " std types
    if a:type_arr[0] ==# 'Slice'
      call extend(l:options, keys(s:tact_Slice_methods))
    elseif a:type_arr[0] ==# 'Cell'
      call extend(l:options, keys(s:tact_Cell_methods))
    elseif a:type_arr[0] ==# 'Builder'
      call extend(l:options, keys(s:tact_Builder_methods))
    elseif a:type_arr[0] ==# 'Int'
      call extend(l:options, keys(s:tact_Int_methods))
    elseif a:type_arr[0] ==# 'String'
      call extend(l:options, keys(s:tact_String_methods))
    elseif a:type_arr[0] ==# 'StringBuilder'
      call extend(l:options, keys(s:tact_StringBuilder_methods))
    elseif a:type_arr[0] ==# 'Address'
      call extend(l:options, keys(s:tact_Address_methods))
    elseif a:type_arr[0] ==# 'StateInit'
      call extend(l:options, keys(s:tact_StateInit_methods))
    elseif a:type_arr[0] ==# 'Context'
      call extend(l:options, keys(s:tact_Context_methods))
    elseif a:type_arr[0] ==# 'SignedBundle'
      call extend(l:options, keys(s:tact_SignedBundle_methods))
    endif

    " message
    if has_key(a:messages, a:type_arr[0])
      " fields
      call extend(l:options, keys(a:messages[a:type_arr[0]]))
      call extend(l:options, keys(s:tact_structure_methods))
    endif

    " struct
    if has_key(a:structs, a:type_arr[0])
      " fields
      call extend(l:options, keys(a:structs[a:type_arr[0]]))
      call extend(l:options, keys(s:tact_structure_methods))
    endif

    " extension methods
    for item in keys(a:extends_functions)
      if has_key(a:extends_functions[item]['self'], a:type_arr[0])
        call add(l:options, item + '(')
      endif
    endfor

    return l:options
  endif

  " invalid a:type_arr size
  return []
  " }}}2
endfunction

" NOTE: Main completion function
" If findstart = 1, then the function must return the column where the base
" (the word to be completed) starts.
"
" If findstart is 0, then a:base is the word to be completed, and the
" function must return a list with the possible completions.
"
" See ":help complete-functions"
" for the exact specification of similar functions.
function! tact#Complete(findstart, base) abort
  " {{{1

  ""
  " Section: basics setup
  " {{{2
  ""

  " re-using built-in syntaxcomplete function result for the simple case
  if a:findstart
    return syntaxcomplete#Complete(a:findstart, a:base)
  endif

  " getting line and column
  let l:lnum = line('.')
  let l:line = getline('.')
  let l:col = col('.')

  " getting current line up and including cursor position
  let l:line_until_col = strpart(l:line, 0, l:col - 1)

  " }}}2

  ""
  " Section: native types (as ...)
  " {{{2
  ""

  if l:line_until_col =~# '\<as\>\s\+\w*$'
    let l:compl = []

    for item in s:tact_native_types
      if item =~ '\V' . a:base
        call add(l:compl, item)
      endif
    endfor

    if empty(l:compl)
      return s:FallbackComplete(a:findstart, a:base)
    endif

    return l:compl
  endif

  " }}}2

  ""
  " Section: traits composition (with ...)
  " {{{2
  ""

  if l:line_until_col =~# '\<with\>\s\+\%(\w*?\?\s*,\?\s*\)*$'
    let l:traits=[] | %s/^\s*trait\s\+\(\w\+\)/\=add(l:traits,submatch(1))/ne
    let l:imports=[] | %s/^\s*import\s\+"\(.\+\)"/\=add(l:imports,submatch(1))/ne
    let l:current_line_trait=[] | s/^\s*trait\s\+\(\w\+\)/\=add(l:current_line_trait,submatch(1))/ne

    " not adding the current trait name
    if !empty(l:current_line_trait)
      let l:idx = index(l:traits, l:current_line_trait[0])
      if l:idx >= 0
        call remove(l:traits, l:idx)
      endif
    endif

    " adding current @stdlib imports
    for item in l:imports
      if item =~# '@stdlib/deploy'
        call extend(l:traits, s:tact_stdlib_deploy)
      endif
      if item =~# '@stdlib/dns'
        call extend(l:traits, s:tact_stdlib_dns)
      endif
      if item =~# '@stdlib/ownable'
        call extend(l:traits, s:tact_stdlib_ownable)
      endif
      if item =~# '@stdlib/stoppable'
        call extend(l:traits, s:tact_stdlib_stoppable)
        call extend(l:traits, s:tact_stdlib_ownable)
      endif
    endfor

    " forming trait completion list
    let l:compl = []
    for item in l:traits
      if item =~ '\V' . a:base
        call add(l:compl, item)
      endif
    endfor

    " giving the list of possible options even if it's empty
    return l:compl
  endif

  " }}}2

  ""
  " Section: import completion
  " {{{2
  ""

  if l:line_until_col =~# '^\s*import\s\+"'
    let l:current_import=[] | s/^\s*import\s\+"\(.*\)"\?\s*;\?/\=add(l:current_import,submatch(1))/ne

    if empty(l:current_import)
      return []
    endif

    let l:import_name = l:current_import[0]
    let l:quote_idx = stridx(l:current_import[0], '"')

    if l:quote_idx != -1
      let l:import_name = slice(l:current_import[0], 0, l:quote_idx)
    endif

    " local file completion
    if l:import_name =~# '^\./'
      silent! call feedkeys("\<C-x>\<C-f>", 'n')
      return []
    endif

    " forming import completion list
    let l:compl = []

    for item in s:tact_stdlib_imports
      if item =~ '\V' . l:import_name
        if l:import_name =~# '^@stdlib/'
          call add(l:compl, join(split(item, '\%(@s\?t\?d\?l\?i\?b\?/\?\)'), ''))
        elseif l:import_name =~# '^@$'
          call add(l:compl, item[1:])
        else
          call add(l:compl, item)
        endif
      endif
    endfor

    " giving the list of possible options even if it's empty
    return l:compl
  endif

  " }}}2

  ""
  " Section: context detection and entities parsing
  " {{{2
  ""

  " enabling lazyredraw for the current buffer only
  setlocal lazyredraw

  " storing parsed data
  let l:buf_messages = {} " {'name': {'field name': ['types']}}
  let l:buf_structs = {} " {'name': {'field name': ['types']}}

  let l:buf_global_constants = {} " {'name': ['types']}

  let l:buf_extends_functions = {} " {'name': {'param name': ['types']}
  let l:buf_extends_functions_returns = {} " {'name': ['return types']}

  let l:buf_native_functions = {} " {'name': {'param name': ['types']}
  let l:buf_native_functions_returns = {} " {'name': ['return types']}

  let l:buf_global_functions = {} " {'name': {'param name': ['types']}
  let l:buf_global_functions_returns = {} " {'name': ['return types']}

  let l:buf_trait_fields = {} " {'name': {'field name': ['types']}}
  let l:buf_trait_methods = {} " {'name': {'method name': {'param name': ['types']}}}
  let l:buf_trait_methods_returns = {} " {'name': {'method name': ['return types']}}

  let l:buf_contract_fields = {} " {'name': {'field name': ['types']}}
  let l:buf_contract_methods = {} " {'name': {'method name': {'param name': ['types']}}}
  let l:buf_contract_methods_returns = {} " {'name': {'method name': ['return types']}}

  " relative to the current cursor line from which auto-completion has been triggered
  let l:buf_is_trait_context = 0
  let l:buf_trait_name = ''
  let l:buf_is_contract_context = 0
  let l:buf_contract_name = ''
  let l:buf_is_function_context = 0 " global or in contract/trait
  let l:buf_function_name = ''
  let l:buf_function_type = '' " global, method, extend, special
  let l:buf_function_definitions_before_current_line = {} " {'name': ['types']}

  " reading & parsing current file
  let l:buf_contents = getline(1, '$')
  " let l:buf_contents = readfile(expand('%'))
  let l:buf_i = 1
  let l:buf_last = len(l:buf_contents)

  " for every line
  while l:buf_i <= l:buf_last
    " get line contents after trimming
    let l:buf_line = s:TrimLine(l:buf_contents[l:buf_i - 1])

    " skip empty lines
    if empty(l:buf_line)
      let l:buf_i += 1
      continue
    endif

    " skip imports, they're checked before
    if l:buf_line =~# '^import\s\+"'
      let l:buf_i += 1
      continue
    endif

    " skip asm arrangements
    if l:buf_line =~# '^asm\s\+\%((\%(\s\+\|->\|[a-zA-Z_][a-zA-Z0-9_]*\|[0-9]*\)*)\)\?'
      let l:buf_i += 1
      continue
    endif

    " message
    if l:buf_line =~# '^message\s\+\%(([0-9A-Za-z]\+)\)\?\s*\w\+\s*{'
      " {{{3

      " if it's the line under cursor
      if l:buf_line == l:buf_i
        " stop all the following parsing
        break
      endif

      " extract name
      let l:message_name_arr = []
      silent! call substitute(l:buf_line,
            \ '^message\s\+' . s:regexp_number_literal . '\?\s*\(' . s:regexp_type_literal . '\)',
            \ '\=add(l:message_name_arr,submatch(1))',
            \ '')

      if empty(l:message_name_arr)
        call s:ErrorMsg('Parse error of the message name or numeric value on line ' . l:buf_i . '. Check that name is present and starts with a capital letter.')
        return []
      endif

      " store message with empty fields for now
      let l:buf_messages[l:message_name_arr[0]] = {}

      " if the body closes already -- advance
      if l:buf_line =~# '}$'
        let l:buf_i += 1
        continue
      endif

      " scan the whole message
      let l:need_closing_braces = 1
      while l:need_closing_braces != 0
        " advance
        let l:buf_i += 1
        if l:buf_i > l:buf_last
          call s:ErrorMsg('No closing } found for the message ' . l:message_name_arr[0])
          return []
        endif
        let l:buf_line = s:TrimLine(l:buf_contents[l:buf_i - 1])

        if empty(l:buf_line)
          continue
        endif

        if l:buf_line =~# '}$'
          let l:need_closing_braces -= 1
          continue
        endif

        " skip checking the current cursor line
        if l:buf_i == l:lnum
          continue
        endif

        " checking the field name validity
        let l:message_field_name_arr = []
        silent! call substitute(l:buf_line, '^\(\w\+\)\s*:', '\=add(l:message_field_name_arr,submatch(1))', '')

        " checking the field type validity
        let l:message_field_type_arr = s:RecognizeTypeAsList(l:buf_line, '', ';$')

        " if either is still empty -- syntax error
        if empty(l:message_field_name_arr) || empty(l:message_field_type_arr)
          call s:ErrorMsg('Invalid syntax on line ' . l:buf_i . '. This may indicate a lack of closing }, incorrect field syntax or invalid type.')
          return []
        endif

        " parse the type
        let l:parsed_field_list = s:ParseTypeIntoList(l:buf_i, l:message_field_name_arr[0], trim(l:message_field_type_arr[0]))

        if empty(l:parsed_field_list)
          return []
        endif

        " store the field
        let l:buf_messages[l:message_name_arr[0]][l:message_field_name_arr[0]] = l:parsed_field_list
      endwhile

      " advance
      let l:buf_i += 1
      continue
      " }}}3
    endif

    " struct
    if l:buf_line =~# '^struct\s\+\w\+\s*{'
      "{{{3

      " if it's the line under cursor
      if l:buf_line == l:buf_i
        " stop all the following parsing
        break
      endif

      " extract name
      let l:struct_name_arr = []
      silent! call substitute(l:buf_line, '^struct\s\+\(' . s:regexp_type_literal . '\)', '\=add(l:struct_name_arr,submatch(1))', '')

      if empty(l:struct_name_arr)
        call s:ErrorMsg('Parse error of the struct name on line ' . l:buf_i . '. Check that it is present and starts with a capital letter.')
        return []
      endif

      " store struct with empty fields for now
      let l:buf_structs[l:struct_name_arr[0]] = {}

      " if the body closes already -- advance
      if l:buf_line =~# '}$'
        let l:buf_i += 1
        continue
      endif

      " scan the whole struct
      let l:need_closing_braces = 1
      while l:need_closing_braces != 0
        " advance
        let l:buf_i += 1
        if l:buf_i > l:buf_last
          call s:ErrorMsg('No closing } found for the struct ' . l:struct_name_arr[0])
          return []
        endif
        let l:buf_line = s:TrimLine(l:buf_contents[l:buf_i - 1])

        if empty(l:buf_line)
          continue
        endif

        if l:buf_line =~# '}$'
          let l:need_closing_braces -= 1
          continue
        endif

        " skip checking the current cursor line
        if l:buf_i == l:lnum
          continue
        endif

        " checking the field name validity
        let l:struct_field_name_arr = []
        silent! call substitute(l:buf_line, '^\(\w\+\)\s*:', '\=add(l:struct_field_name_arr,submatch(1))', '')

        " checking the field type validity
        let l:struct_field_type_arr = s:RecognizeTypeAsList(l:buf_line, '', ';\?$')

        " if either is still empty -- syntax error
        if empty(l:struct_field_name_arr) || empty(l:struct_field_type_arr)
          call s:ErrorMsg('Invalid syntax on line ' . l:buf_i . '. This may indicate a lack of closing }, incorrect field syntax or invalid type.')
          return []
        endif

        " parse the type
        let l:parsed_field_list = s:ParseTypeIntoList(l:buf_i, l:struct_field_name_arr[0], trim(l:struct_field_type_arr[0]))

        if empty(l:parsed_field_list)
          return []
        endif

        " store the field
        let l:buf_structs[l:struct_name_arr[0]][l:struct_field_name_arr[0]] = l:parsed_field_list
      endwhile

      " advance
      let l:buf_i += 1
      continue
      " }}}3
    endif

    " global constants
    if l:buf_line =~# '\<const\s\+\w\+\s*:.\{-};$'
      " {{{3
      " skip if if's the line under cursor
      if l:buf_i == l:lnum
        let l:buf_i += 1
        continue
      endif

      " extract name
      let l:const_name_arr = []

      silent! call substitute(l:buf_line, '\(\w\+\)\s*:.\{-};$', '\=add(l:const_name_arr,submatch(1))', '')
      if empty(l:const_name_arr)
        call s:ErrorMsg('No name of the global constant on line ' . l:buf_i)
        return []
      endif

      let l:const_name = trim(l:const_name_arr[0])

      " extract type
      let l:const_type_arr = s:RecognizeTypeAsList(l:buf_line, '', '\%(=.\{-}\)\?;$')
      if empty(l:const_type_arr)
        call s:ErrorMsg('Invalid type syntax on line ' . l:buf_i)
        return []
      endif

      let l:const_parsed_type_arr = s:ParseTypeIntoList(l:buf_i, l:const_name, trim(l:const_type_arr[0]))
      if empty(l:const_parsed_type_arr)
        return [] " already errored in the function above
      endif

      " store result
      let l:buf_global_constants[l:const_name] = l:const_parsed_type_arr

      " advance
      let l:buf_i += 1
      continue
      " }}}3
    endif

    " native function
    if l:buf_line =~# '^@name(.\{-})'
      " {{{3

      " if it's the line under cursor
      if l:buf_line == l:buf_i
        " stop all the following parsing
        break
      endif

      " advance
      let l:buf_i += 1
      if l:buf_i > l:buf_last
        call s:ErrorMsg('No native mapping follow-up for the @name after line ' . (l:buf_i - 1))
        return []
      endif
      let l:buf_line = s:TrimLine(l:buf_contents[l:buf_i - 1])

      " skip if if's the line under cursor
      if l:buf_i == l:lnum
        let l:buf_i += 1
        continue
      endif

      " should NOT be a getter function
      let l:prohibited_getter_arr = []
      silent! call substitute(l:buf_line, '^.\{-}\(\<get\>\).\{-}(', '\=add(l:prohibited_getter_arr,submatch(1))', '')

      if !empty(l:prohibited_getter_arr)
        call s:ErrorMsg('Prohibited get modifier for the native function on line ' . l:buf_i)
        return []
      endif

      " getting the name
      let l:native_name_arr = []
      silent! call substitute(l:buf_line, '\<native\s\+\(\w\+\)\s*(.\{-}).\{-};$', '\=add(l:native_name_arr,submatch(1))', '')

      if empty(l:native_name_arr)
        call s:ErrorMsg('No name of the native function on line ' . l:buf_i)
        return []
      endif

      " getting all the params
      let l:native_params_parsed = {}
      let l:native_params_chunk_arr = []
      silent! call substitute(l:buf_line, '(\(.\{-}\)).\{-};$', '\=add(l:native_params_chunk_arr,submatch(1))', '')

      if !empty(l:native_params_chunk_arr)
        let l:split_by_commas = split(l:native_params_chunk_arr[0], ',')

        for param in l:split_by_commas
          let l:split_by_colons = split(param, ':')
          if len(l:split_by_colons) != 2
            call s:ErrorMsg('Invalid syntax of native function parameters on line ' . l:buf_i)
            return []
          endif

          let l:parsed_name = trim(l:split_by_colons[0])
          let l:parsed_type = trim(l:split_by_colons[1])
          let l:parsed_list = s:ParseTypeIntoList(l:buf_i, l:parsed_name, l:parsed_type)

          if empty(l:parsed_list)
            return []
          endif

          let l:native_params_parsed[l:parsed_name] = l:parsed_list
        endfor
      endif

      " getting some return value
      let l:native_return_parsed = []
      let l:native_return_arr = s:RecognizeTypeAsList(l:buf_line, ')\s*', ';$')

      if !empty(l:native_return_arr)
        let l:parsed_return_list = s:ParseTypeIntoList(l:buf_i, 'return type', trim(l:native_return_arr[0]))

        if empty(l:parsed_return_list)
          return []
        endif

        let l:native_return_parsed = l:parsed_return_list
      endif

      " checking if it's an extension function
      let l:extends_modifier_check_arr = []
      silent! call substitute(l:buf_line, '^.\{-}\(\<extends\>\).\{-}(', '\=add(l:extends_modifier_check_arr,submatch(1))', '')
      let l:extends_parameter_check_arr = []
      silent! call substitute(l:buf_line, '(\s*\(self\)\s*:.\{-}).\{-};$', '\=add(l:extends_parameter_check_arr,submatch(1))', '')

      if empty(l:extends_modifier_check_arr)
        " not an extends function, store in native ones
        let l:buf_native_functions[l:native_name_arr[0]] = l:native_params_parsed
        let l:buf_native_functions_returns[l:native_name_arr[0]] = l:native_return_parsed
      else
        if empty(l:extends_parameter_check_arr)
          call s:ErrorMsg('Invalid use of extends modifier: first parameter is not named self on line ' . l:buf_i)
          return []
        endif

        " extends function, store in extends
        let l:buf_extends_functions[l:native_name_arr[0]] = l:native_params_parsed
        let l:buf_extends_functions_returns[l:native_name_arr[0]] = l:native_return_parsed
      endif

      " advance
      let l:buf_i += 1
      continue
      " }}}3
    endif

    " global function
    if l:buf_line =~# '\<fun\s\+\w\+\s*(.\{-}).\{-}{\%(.\{-}}\s*\)\?$'
      " {{{3

      " skip if if's the line under cursor
      if l:buf_i == l:lnum
        let l:buf_i += 1
        continue
      endif

      " should NOT be a getter function
      let l:prohibited_getter_arr = []
      silent! call substitute(l:buf_line, '^.\{-}\(\<get\>\).\{-}(', '\=add(l:prohibited_getter_arr,submatch(1))', '')

      if !empty(l:prohibited_getter_arr)
        call s:ErrorMsg('Prohibited get modifier for the global function on line ' . l:buf_i)
        return []
      endif

      " getting the name
      let l:function_name_arr = []
      silent! call substitute(l:buf_line, '\<fun\s\+\(\w\+\)\s*(.\{-}).\{-}{.\{-}$', '\=add(l:function_name_arr,submatch(1))', '')

      if empty(l:function_name_arr)
        call s:ErrorMsg('Invalid syntax of the global function on line ' . l:buf_i . '. Perhaps, the name is missing.')
        return []
      endif

      " getting all the params
      let l:function_params_parsed = {}
      let l:function_params_chunk_arr = []
      silent! call substitute(l:buf_line, '(\(.\{-}\)).\{-}{.\{-}$', '\=add(l:function_params_chunk_arr,submatch(1))', '')

      if !empty(l:function_params_chunk_arr)
        let l:split_by_commas = split(l:function_params_chunk_arr[0], ',')

        for param in l:split_by_commas
          if empty(trim(param))
            continue
          endif

          let l:split_by_colons = split(param, ':')
          if len(l:split_by_colons) != 2
            call s:ErrorMsg('Invalid syntax of global function parameters on line ' . l:buf_i)
            return []
          endif

          let l:parsed_name = trim(l:split_by_colons[0])
          let l:parsed_type = trim(l:split_by_colons[1])
          let l:parsed_list = s:ParseTypeIntoList(l:buf_i, l:parsed_name, l:parsed_type)

          if empty(l:parsed_list)
            return []
          endif

          let l:function_params_parsed[l:parsed_name] = l:parsed_list
        endfor
      endif

      " getting some return value
      let l:function_return_parsed = []
      let l:function_return_arr = s:RecognizeTypeAsList(l:buf_line, ')\s*', '{$')

      if !empty(l:function_return_arr)
        let l:parsed_return_list = s:ParseTypeIntoList(l:buf_i, 'return type', trim(l:function_return_arr[0]))

        if empty(l:parsed_return_list)
          return []
        endif

        let l:function_return_parsed = l:parsed_return_list
      endif

      " checking if it's an extension function
      let l:extends_modifier_check_arr = []
      silent! call substitute(l:buf_line, '^.\{-}\(\<extends\>\).\{-}(', '\=add(l:extends_modifier_check_arr,submatch(1))', '')
      let l:extends_parameter_check_arr = []
      silent! call substitute(l:buf_line, '(\s*\(self\)\s*:.\{-}).\{-}{$', '\=add(l:extends_parameter_check_arr,submatch(1))', '')

      if empty(l:extends_modifier_check_arr)
        " not an extends function, store in global ones
        let l:buf_global_functions[l:function_name_arr[0]] = l:function_params_parsed
        let l:buf_global_functions_returns[l:function_name_arr[0]] = l:function_return_parsed
      else
        if empty(l:extends_parameter_check_arr)
          call s:ErrorMsg('Invalid use of extends modifier: first parameter is not named self on line ' . l:buf_i)
          return []
        endif

        " extends function, store in extends
        let l:buf_extends_functions[l:function_name_arr[0]] = l:function_params_parsed
        let l:buf_extends_functions_returns[l:function_name_arr[0]] = l:function_return_parsed
      endif

      " if it already ends, skip it
      if l:buf_line =~# '}$'
        let l:buf_i += 1
        continue
      endif

      " scan the whole body
      let l:scanned_body = s:ScanBodyForDefinitions(l:lnum, l:buf_i, l:buf_last, l:function_name_arr[0], l:buf_i)

      " encountered an error, displayed it before
      if empty(l:scanned_body)
        return []
      endif

      " no context detected, advance
      if l:scanned_body[0] == 0
        let l:buf_i = l:scanned_body[1] + 1
        continue
      endif

      " unknown error
      if l:scanned_body[0] != 1 || len(l:scanned_body) != 3
        call s:ErrorMsg('Internal parsing error for global function ' . l:function_name_arr[0])
        return []
      endif

      " set the context, if not already
      if l:buf_is_function_context == 0
        let l:buf_is_function_context = 1
        let l:buf_function_name = l:function_name_arr[0]
        let l:buf_function_definitions_before_current_line = l:scanned_body[2] " found definitions

        " set the additional context
        if has_key(l:buf_extends_functions, l:buf_function_name)
          let l:buf_function_type = 'extend'
        else
          let l:buf_function_type = 'global'
        endif
      endif

      " advance
      let l:buf_i = l:scanned_body[1] + 1
      continue

      " }}}3
    endif

    " trait
    if l:buf_line =~# '^\%(@interface\s*(.\{-})\s*\)\?trait\s\+\w\+'
      " {{{3

      " if it's the line under cursor
      if l:buf_line == l:buf_i
        " stop all the following parsing
        break
      endif

      " parse the name
      let l:trait_name_arr = []
      silent! call substitute(l:buf_line, '^\%(@interface\s*(.\{-})\s*\)\?trait\s\+\(\w\+\)', '\=add(l:trait_name_arr,submatch(1))', '')

      if empty(l:trait_name_arr)
        call s:ErrorMsg('Parse error of the trait name on line ' . l:buf_i)
        return []
      endif

      " store the name
      let l:buf_trait_fields[l:trait_name_arr[0]] = {}
      let l:buf_trait_methods[l:trait_name_arr[0]] = {}
      let l:buf_trait_methods_returns[l:trait_name_arr[0]] = {}

      " scan the whole thing
      let l:need_closing_braces = 1
      let l:need_break = 0
      while l:need_closing_braces != 0
      " {{{4
        " advance
        let l:buf_i += 1
        if l:buf_i > l:buf_last
          call s:ErrorMsg('No closing } found for the trait ' . l:trait_name_arr[0])
          return []
        endif
        let l:buf_line = s:TrimLine(l:buf_contents[l:buf_i - 1])

        " skip empty
        if empty(l:buf_line)
          if l:buf_i == l:lnum && l:buf_is_trait_context == 0
            let l:buf_is_trait_context = 1
            let l:buf_trait_name = l:trait_name_arr[0]
          endif
          continue
        endif

        " prohibit use of init() in a trait
        if l:buf_line =~# '^init\s*('
          call s:ErrorMsg('Prohibited init() specification for the trait ' . l:trait_name_arr[0] . ' on line ' . l:buf_i)
          return []
        endif

        " if cursor is on this line
        if l:buf_i == l:lnum
          " if it's not the field definition
          if l:buf_line !~# '^\%(const\s\+\)\?\w\+\s*:'
            " remember context
            if l:buf_is_trait_context == 0
              let l:buf_is_trait_context = 1
              let l:buf_trait_name = l:trait_name_arr[0]
            endif

            " stop parsing
            let l:need_break = 1
            break
          endif

          " check for the braces
          if l:buf_line =~# '}$'
            let l:need_closing_braces -= 1
          endif

          " it is the incomplete field definition, so skip it and move to the next line
          continue
        endif

        " parsing a field
        if l:buf_line =~# '^\%(const\s\+\)\?\w\+\s*:'
          " extract name
          let l:field_name_arr = []
          silent! call substitute(l:buf_line, '^\%(const\s\+\)\?\(\w\+\)\s*:', '\=add(l:field_name_arr,submatch(1))', '')
          if empty(l:field_name_arr)
            call s:ErrorMsg('Unknown parsing error on line ' . l:buf_i)
            return []
          endif

          " extract type
          let l:field_type_arr = s:RecognizeTypeAsList(l:buf_line, '', '\%(=.\{-}\)\?;$')
          if empty(l:field_type_arr)
            call s:ErrorMsg('Invalid type syntax on line ' . l:buf_i)
            return []
          endif

          let l:field_parsed_type_arr = s:ParseTypeIntoList(l:buf_i, l:field_name_arr[0], trim(l:field_type_arr[0]))
          if empty(l:field_parsed_type_arr)
            return [] " already errored in the function above
          endif

          " store the field
          let l:buf_trait_fields[l:trait_name_arr[0]][l:field_name_arr[0]] = l:field_parsed_type_arr

          " advance
          continue
        endif

        " receive()
        if l:buf_line =~# '^receive\s*('
          " if there is a brace right away
          if l:buf_line =~# '}$'
            " move to the next line
            continue
          endif

          let l:special_param_arr = s:ParseSpecialParamIntoList('receive', l:buf_line, l:buf_i)
          if empty(l:special_param_arr)
            " error happened, and error message has been already displayed
            return []
          endif

          " scan the whole body
          let l:scanned_body = s:ScanBodyForDefinitions(l:lnum, l:buf_i, l:buf_last, 'receive', l:buf_i)

          " encountered an error, displayed it before
          if empty(l:scanned_body)
            return []
          endif

          " no context detected, simply advance
          if l:scanned_body[0] == 0
            let l:buf_i = l:scanned_body[1]
            continue
          endif

          " unknown error
          if l:scanned_body[0] != 1 || len(l:scanned_body) != 3
            call s:ErrorMsg('Internal parsing error for special method receive, defined on line ' . l:buf_i)
            return []
          endif

          " set the context, if not already
          if l:buf_is_function_context == 0
            let l:buf_is_function_context = 1
            let l:buf_function_name = 'receive'
            let l:buf_function_type = 'special'
            let l:buf_function_definitions_before_current_line = l:scanned_body[2] " found definitions

            " adding function params here
            for [key, value] in items(l:special_param_arr[0])
              if has_key(l:scanned_body[2], key)
                continue
              endif
              let l:buf_function_definitions_before_current_line[key] = value
            endfor

            " adding trait context here as well
            if l:buf_is_trait_context == 0
              let l:buf_is_trait_context = 1
              let l:buf_trait_name = l:trait_name_arr[0]
            endif
          endif

          " advance
          let l:buf_i = l:scanned_body[1]
          continue
        endif

        " external()
        if l:buf_line =~# '^external\s*('
          " if there is a brace right away
          if l:buf_line =~# '}$'
            " move to the next line
            continue
          endif

          let l:special_param_arr = s:ParseSpecialParamIntoList('external', l:buf_line, l:buf_i)
          if empty(l:special_param_arr)
            " error happened, and error message has been already displayed
            return []
          endif

          " scan the whole body
          let l:scanned_body = s:ScanBodyForDefinitions(l:lnum, l:buf_i, l:buf_last, 'external', l:buf_i)

          " encountered an error, displayed it before
          if empty(l:scanned_body)
            return []
          endif

          " no context detected, simply advance
          if l:scanned_body[0] == 0
            let l:buf_i = l:scanned_body[1]
            continue
          endif

          " unknown error
          if l:scanned_body[0] != 1 || len(l:scanned_body) != 3
            call s:ErrorMsg('Internal parsing error for special method external, defined on line ' . l:buf_i)
            return []
          endif

          " set the context, if not already
          if l:buf_is_function_context == 0
            let l:buf_is_function_context = 1
            let l:buf_function_name = 'external'
            let l:buf_function_type = 'special'
            let l:buf_function_definitions_before_current_line = l:scanned_body[2] " found definitions

            " adding function params here
            for [key, value] in items(l:special_param_arr[0])
              if has_key(l:scanned_body[2], key)
                continue
              endif
              let l:buf_function_definitions_before_current_line[key] = value
            endfor

            " adding trait context here as well
            if l:buf_is_trait_context == 0
              let l:buf_is_trait_context = 1
              let l:buf_trait_name = l:trait_name_arr[0]
            endif
          endif

          " advance
          let l:buf_i = l:scanned_body[1]
          continue
        endif

        " bounced()
        if l:buf_line =~# '^bounced\s*('
          " if there is a brace right away
          if l:buf_line =~# '}$'
            " move to the next line
            continue
          endif

          let l:special_param_arr = s:ParseSpecialParamIntoList('bounced', l:buf_line, l:buf_i)
          if empty(l:special_param_arr)
            " error happened, and error message has been already displayed
            return []
          endif

          " scan the whole body
          let l:scanned_body = s:ScanBodyForDefinitions(l:lnum, l:buf_i, l:buf_last, 'bounced', l:buf_i)

          " encountered an error, displayed it before
          if empty(l:scanned_body)
            return []
          endif

          " no context detected, simply advance
          if l:scanned_body[0] == 0
            let l:buf_i = l:scanned_body[1]
            continue
          endif

          " unknown error
          if l:scanned_body[0] != 1 || len(l:scanned_body) != 3
            call s:ErrorMsg('Internal parsing error for special method bounced, defined on line ' . l:buf_i)
            return []
          endif

          " set the context, if not already
          if l:buf_is_function_context == 0
            let l:buf_is_function_context = 1
            let l:buf_function_name = 'bounced'
            let l:buf_function_type = 'special'
            let l:buf_function_definitions_before_current_line = l:scanned_body[2] " found definitions

            " adding function params here
            for [key, value] in items(l:special_param_arr[0])
              if has_key(l:scanned_body[2], key)
                continue
              endif
              let l:buf_function_definitions_before_current_line[key] = value
            endfor

            " adding trait context here as well
            if l:buf_is_trait_context == 0
              let l:buf_is_trait_context = 1
              let l:buf_trait_name = l:trait_name_arr[0]
            endif
          endif

          " advance
          let l:buf_i = l:scanned_body[1]
          continue
        endif
      " }}}4

        " parse a regular method
        if l:buf_line =~# '^.\{-}\<fun\s\+\w\+(.\{-}).\{-}{'
          " prohibiting extends methods
          let l:prohibited_extends_arr = []
          silent! call substitute(l:buf_line, '^.\{-}\(\<extends\>\).\{-}(', '\=add(l:prohibited_extends_arr,submatch(1))', '')

          if !empty(l:prohibited_extends_arr)
            call s:ErrorMsg('Prohibited extends modifier for the trait function on line ' . l:buf_i)
            return []
          endif

          " find (and skip) the getter functions
          let l:is_getter_function = 0
          let l:getter_function_arr = []
          silent! call substitute(l:buf_line, '^.\{-}\(\<get\>\).\{-}(', '\=add(l:getter_function_arr,submatch(1))', '')

          if !empty(l:getter_function_arr)
            let l:is_getter_function = 1
          endif

          " getting the name
          let l:function_name_arr = []
          silent! call substitute(l:buf_line, '\<fun\s\+\(\w\+\)\s*(.\{-}).\{-}{.\{-}$', '\=add(l:function_name_arr,submatch(1))', '')

          if empty(l:function_name_arr)
            call s:ErrorMsg('Invalid syntax of the trait function on line ' . l:buf_i . '. Perhaps, the name is missing.')
            return []
          endif

          " getting all the params
          let l:function_params_parsed = {}
          let l:function_params_chunk_arr = []
          silent! call substitute(l:buf_line, '(\(.\{-}\)).\{-}{.\{-}$', '\=add(l:function_params_chunk_arr,submatch(1))', '')

          if !empty(l:function_params_chunk_arr)
            let l:split_by_commas = split(l:function_params_chunk_arr[0], ',')

            for param in l:split_by_commas
              if empty(trim(param))
                continue
              endif

              let l:split_by_colons = split(param, ':')
              if len(l:split_by_colons) != 2
                call s:ErrorMsg('Invalid syntax of trait function parameters on line ' . l:buf_i)
                return []
              endif

              let l:parsed_name = trim(l:split_by_colons[0])
              let l:parsed_type = trim(l:split_by_colons[1])
              let l:parsed_list = s:ParseTypeIntoList(l:buf_i, l:parsed_name, l:parsed_type)

              if empty(l:parsed_list)
                return []
              endif

              let l:function_params_parsed[l:parsed_name] = l:parsed_list
            endfor
          endif

          " getting some return value
          let l:function_return_parsed = []
          let l:function_return_arr = s:RecognizeTypeAsList(l:buf_line, ')\s*', '{$')

          if !empty(l:function_return_arr)
            let l:parsed_return_list = s:ParseTypeIntoList(l:buf_i, 'return type', trim(l:function_return_arr[0]))

            if empty(l:parsed_return_list)
              return []
            endif

            let l:function_return_parsed = l:parsed_return_list
          endif

          " store gathered results if not a getter function
          if l:is_getter_function == 0
            let l:buf_trait_methods[l:trait_name_arr[0]][l:function_name_arr[0]] = l:function_params_parsed
            let l:buf_trait_methods_returns[l:trait_name_arr[0]][l:function_name_arr[0]] = l:function_return_parsed
          endif

          " if it already ends, skip the body
          if l:buf_line =~# '}$'
            continue
          endif

          " scan the whole body
          let l:scanned_body = s:ScanBodyForDefinitions(l:lnum, l:buf_i, l:buf_last, l:function_name_arr[0], l:buf_i)

          " encountered an error, displayed it before
          if empty(l:scanned_body)
            return []
          endif

          " no context detected, advance
          if l:scanned_body[0] == 0
            let l:buf_i = l:scanned_body[1]
            continue
          endif

          " unknown error
          if l:scanned_body[0] != 1 || len(l:scanned_body) != 3
            call s:ErrorMsg('Internal parsing error for trait function ' . l:function_name_arr[0])
            return []
          endif

          " set the context, if not already (and if it's not a getter function)
          if l:buf_is_function_context == 0 && l:is_getter_function == 0
            let l:buf_is_function_context = 1
            let l:buf_function_type = 'method'
            let l:buf_function_name = l:function_name_arr[0]
            let l:buf_function_definitions_before_current_line = l:scanned_body[2] " found definitions

            " adding function params
            for [key, value] in items(l:function_params_parsed)
              if has_key(l:scanned_body[2], key)
                continue
              endif
              let l:buf_function_definitions_before_current_line[key] = value
            endfor

            " trait sub-context
            if l:buf_is_trait_context == 0
              let l:buf_is_trait_context = 1
              let l:buf_trait_name = l:trait_name_arr[0]
            endif
          endif

          " advance
          let l:buf_i = l:scanned_body[1]
          continue
        endif

        " add a brace
        if l:buf_line =~# '}$'
          let l:need_closing_braces -= 1
          continue
        endif

        " NOTE: don't call the parse error
        " call s:ErrorMsg('Invalid syntax in the trait ' . l:trait_name_arr[0] . ' on line ' . l:buf_i)
        " return []
      endwhile

      " stop parsing the rest of the trait
      if l:need_break
        break
      endif

      " advance
      let l:buf_i += 1
      continue
      " }}}3
    endif

    " contract
    if l:buf_line =~# '^\%(@interface\s*(.\{-})\s*\)\?contract\s\+\w\+'
      " {{{3

      " if it's the line under cursor
      if l:buf_line == l:buf_i
        " stop all the following parsing
        break
      endif

      " parse the name
      let l:contract_name_arr = []
      silent! call substitute(l:buf_line, '^\%(@interface\s*(.\{-})\s*\)\?contract\s\+\(\w\+\)', '\=add(l:contract_name_arr,submatch(1))', '')

      if empty(l:contract_name_arr)
        call s:ErrorMsg('Parse error of the contract name on line ' . l:buf_i)
        return []
      endif

      " store the name
      let l:buf_contract_fields[l:contract_name_arr[0]] = {}
      let l:buf_contract_methods[l:contract_name_arr[0]] = {}
      let l:buf_contract_methods_returns[l:contract_name_arr[0]] = {}

      " scan the whole thing
      let l:need_closing_braces = 1
      let l:need_break = 0
      while l:need_closing_braces != 0
        " {{{4
        " advance
        let l:buf_i += 1
        if l:buf_i > l:buf_last
          call s:ErrorMsg('No closing } found for the contract ' . l:contract_name_arr[0])
          return []
        endif
        let l:buf_line = s:TrimLine(l:buf_contents[l:buf_i - 1])

        " skip empty
        if empty(l:buf_line)
          if l:buf_i == l:lnum && l:buf_is_contract_context == 0
            let l:buf_is_contract_context = 1
            let l:buf_contract_name = l:contract_name_arr[0]
          endif
          continue
        endif

        " if cursor is on this line
        if l:buf_i == l:lnum
          " if it's not the field definition
          if l:buf_line !~# '^\%(const\s\+\)\?\w\+\s*:'
            " remember context
            if l:buf_is_contract_context == 0
              let l:buf_is_contract_context = 1
              let l:buf_contract_name = l:contract_name_arr[0]
            endif

            " stop parsing
            let l:need_break = 1
            break
          endif

          " check for the braces
          if l:buf_line =~# '}$'
            let l:need_closing_braces -= 1
          endif

          " it is the incomplete field definition, so skip it and move to the next line
          continue
        endif

        " TODO: can try add parsing for contract parameters on the same line
        "       but: a) it's not a frequent case and b) this is a very brittle
        "       parsing-ish approach, and I'd better just either rewrite this
        "       as a top-down parser generated from the grammar.gg definition
        "       or simply leave things as is for the time being.
        "
        "       if anything — there's a smarter LS that supports way more edge-cases.
        "       see: https://github.com/tact-lang/tact-language-server

        " parsing a field
        if l:buf_line =~# '^\%(const\s\+\)\?\w\+\s*:'
          " extract name
          let l:field_name_arr = []
          silent! call substitute(l:buf_line, '^\%(const\s\+\)\?\(\w\+\)\s*:', '\=add(l:field_name_arr,submatch(1))', '')
          if empty(l:field_name_arr)
            call s:ErrorMsg('Unknown parsing error on line ' . l:buf_i)
            return []
          endif

          " extract type
          let l:field_type_arr = s:RecognizeTypeAsList(l:buf_line, '', '\%(=.\{-}\)\?;$')
          if empty(l:field_type_arr)
            call s:ErrorMsg('Invalid type syntax on line ' . l:buf_i)
            return []
          endif

          let l:field_parsed_type_arr = s:ParseTypeIntoList(l:buf_i, l:field_name_arr[0], trim(l:field_type_arr[0]))
          if empty(l:field_parsed_type_arr)
            return [] " already errored in the function above
          endif

          " store the field
          let l:buf_contract_fields[l:contract_name_arr[0]][l:field_name_arr[0]] = l:field_parsed_type_arr

          " advance
          continue
        endif

        " receive()
        if l:buf_line =~# '^receive\s*('
          " if there is a brace right away
          if l:buf_line =~# '}$'
            " move to the next line
            continue
          endif

          let l:special_param_arr = s:ParseSpecialParamIntoList('receive', l:buf_line, l:buf_i)
          if empty(l:special_param_arr)
            " error happened, and error message has been already displayed
            return []
          endif

          " scan the whole body
          let l:scanned_body = s:ScanBodyForDefinitions(l:lnum, l:buf_i, l:buf_last, 'receive', l:buf_i)

          " encountered an error, displayed it before
          if empty(l:scanned_body)
            return []
          endif

          " no context detected, simply advance
          if l:scanned_body[0] == 0
            let l:buf_i = l:scanned_body[1]
            continue
          endif

          " unknown error
          if l:scanned_body[0] != 1 || len(l:scanned_body) != 3
            call s:ErrorMsg('Internal parsing error for special method receive, defined on line ' . l:buf_i)
            return []
          endif

          " set the context, if not already
          if l:buf_is_function_context == 0
            let l:buf_is_function_context = 1
            let l:buf_function_name = 'receive'
            let l:buf_function_type = 'special'
            let l:buf_function_definitions_before_current_line = l:scanned_body[2] " found definitions

            " adding function params here
            for [key, value] in items(l:special_param_arr[0])
              if has_key(l:scanned_body[2], key)
                continue
              endif
              let l:buf_function_definitions_before_current_line[key] = value
            endfor

            " adding contract context here as well
            if l:buf_is_contract_context == 0
              let l:buf_is_contract_context = 1
              let l:buf_contract_name = l:contract_name_arr[0]
            endif
          endif

          " advance
          let l:buf_i = l:scanned_body[1]
          continue
        endif

        " external()
        if l:buf_line =~# '^external\s*('
          " if there is a brace right away
          if l:buf_line =~# '}$'
            " move to the next line
            continue
          endif

          let l:special_param_arr = s:ParseSpecialParamIntoList('external', l:buf_line, l:buf_i)
          if empty(l:special_param_arr)
            " error happened, and error message has been already displayed
            return []
          endif

          " scan the whole body
          let l:scanned_body = s:ScanBodyForDefinitions(l:lnum, l:buf_i, l:buf_last, 'external', l:buf_i)

          " encountered an error, displayed it before
          if empty(l:scanned_body)
            return []
          endif

          " no context detected, simply advance
          if l:scanned_body[0] == 0
            let l:buf_i = l:scanned_body[1]
            continue
          endif

          " unknown error
          if l:scanned_body[0] != 1 || len(l:scanned_body) != 3
            call s:ErrorMsg('Internal parsing error for special method external, defined on line ' . l:buf_i)
            return []
          endif

          " set the context, if not already
          if l:buf_is_function_context == 0
            let l:buf_is_function_context = 1
            let l:buf_function_name = 'external'
            let l:buf_function_type = 'special'
            let l:buf_function_definitions_before_current_line = l:scanned_body[2] " found definitions

            " adding function params here
            for [key, value] in items(l:special_param_arr[0])
              if has_key(l:scanned_body[2], key)
                continue
              endif
              let l:buf_function_definitions_before_current_line[key] = value
            endfor

            " adding contract context here as well
            if l:buf_is_contract_context == 0
              let l:buf_is_contract_context = 1
              let l:buf_contract_name = l:contract_name_arr[0]
            endif
          endif

          " advance
          let l:buf_i = l:scanned_body[1]
          continue
        endif

        " bounced()
        if l:buf_line =~# '^bounced\s*('
          " if there is a brace right away
          if l:buf_line =~# '}$'
            " move to the next line
            continue
          endif

          let l:special_param_arr = s:ParseSpecialParamIntoList('bounced', l:buf_line, l:buf_i)
          if empty(l:special_param_arr)
            " error happened, and error message has been already displayed
            return []
          endif

          " scan the whole body
          let l:scanned_body = s:ScanBodyForDefinitions(l:lnum, l:buf_i, l:buf_last, 'bounced', l:buf_i)

          " encountered an error, displayed it before
          if empty(l:scanned_body)
            return []
          endif

          " no context detected, simply advance
          if l:scanned_body[0] == 0
            let l:buf_i = l:scanned_body[1]
            continue
          endif

          " unknown error
          if l:scanned_body[0] != 1 || len(l:scanned_body) != 3
            call s:ErrorMsg('Internal parsing error for special method bounced, defined on line ' . l:buf_i)
            return []
          endif

          " set the context, if not already
          if l:buf_is_function_context == 0
            let l:buf_is_function_context = 1
            let l:buf_function_name = 'bounced'
            let l:buf_function_type = 'special'
            let l:buf_function_definitions_before_current_line = l:scanned_body[2] " found definitions

            " adding function params here
            for [key, value] in items(l:special_param_arr[0])
              if has_key(l:scanned_body[2], key)
                continue
              endif
              let l:buf_function_definitions_before_current_line[key] = value
            endfor

            " adding contract context here as well
            if l:buf_is_contract_context == 0
              let l:buf_is_contract_context = 1
              let l:buf_contract_name = l:contract_name_arr[0]
            endif
          endif

          " advance
          let l:buf_i = l:scanned_body[1]
          continue
        endif
        " }}}4

        " init()
        if l:buf_line =~# '^init\s*('
          " if there is a brace right away
          if l:buf_line =~# '}$'
            " move to the next line
            continue
          endif

          " parsing all params
          let l:function_params_parsed = {}
          let l:function_params_chunk_arr = []
          silent! call substitute(l:buf_line, '(\(.\{-}\)).\{-}{.\{-}$', '\=add(l:function_params_chunk_arr,submatch(1))', '')

          if !empty(l:function_params_chunk_arr)
            let l:split_by_commas = split(l:function_params_chunk_arr[0], ',')

            for param in l:split_by_commas
              if empty(trim(param))
                continue
              endif

              let l:split_by_colons = split(param, ':')
              if len(l:split_by_colons) != 2
                call s:ErrorMsg('Invalid syntax of contract init() parameters on line ' . l:buf_i)
                return []
              endif

              let l:parsed_name = trim(l:split_by_colons[0])
              let l:parsed_type = trim(l:split_by_colons[1])
              let l:parsed_list = s:ParseTypeIntoList(l:buf_i, l:parsed_name, l:parsed_type)

              if empty(l:parsed_list)
                " already errored above
                return []
              endif

              let l:function_params_parsed[l:parsed_name] = l:parsed_list
            endfor
          endif

          " scan the whole body
          let l:scanned_body = s:ScanBodyForDefinitions(l:lnum, l:buf_i, l:buf_last, 'init', l:buf_i)

          " encountered an error, displayed it before
          if empty(l:scanned_body)
            return []
          endif

          " no context detected, simply advance
          if l:scanned_body[0] == 0
            let l:buf_i = l:scanned_body[1]
            continue
          endif

          " unknown error
          if l:scanned_body[0] != 1 || len(l:scanned_body) != 3
            call s:ErrorMsg('Internal parsing error for init(), defined on line ' . l:buf_i)
            return []
          endif

          " set the context, if not already
          if l:buf_is_function_context == 0
            let l:buf_is_function_context = 1
            let l:buf_function_name = 'init'
            let l:buf_function_type = 'special'
            let l:buf_function_definitions_before_current_line = l:scanned_body[2] " found definitions

            " adding function params
            for [key, value] in items(l:function_params_parsed)
              if has_key(l:scanned_body[2], key)
                continue
              endif
              let l:buf_function_definitions_before_current_line[key] = value
            endfor

            " adding contract context here as well
            if l:buf_is_contract_context == 0
              let l:buf_is_contract_context = 1
              let l:buf_contract_name = l:contract_name_arr[0]
            endif
          endif

          " advance
          let l:buf_i = l:scanned_body[1]
          continue
        endif

        " parse a regular method
        if l:buf_line =~# '^.\{-}\<fun\s\+\w\+(.\{-}).\{-}{'
          " prohibiting extends methods
          let l:prohibited_extends_arr = []
          silent! call substitute(l:buf_line, '^.\{-}\(\<extends\>\).\{-}(', '\=add(l:prohibited_extends_arr,submatch(1))', '')

          if !empty(l:prohibited_extends_arr)
            call s:ErrorMsg('Prohibited extends modifier for the contract function on line ' . l:buf_i)
            return []
          endif

          " find (and skip) the getter functions
          let l:is_getter_function = 0
          let l:getter_function_arr = []
          silent! call substitute(l:buf_line, '^.\{-}\(\<get\>\).\{-}(', '\=add(l:getter_function_arr,submatch(1))', '')

          if !empty(l:getter_function_arr)
            let l:is_getter_function = 1
          endif

          " getting the name
          let l:function_name_arr = []
          silent! call substitute(l:buf_line, '\<fun\s\+\(\w\+\)\s*(.\{-}).\{-}{.\{-}$', '\=add(l:function_name_arr,submatch(1))', '')

          if empty(l:function_name_arr)
            call s:ErrorMsg('Invalid syntax of the contract function on line ' . l:buf_i . '. Perhaps, the name is missing.')
            return []
          endif

          " getting all the params
          let l:function_params_parsed = {}
          let l:function_params_chunk_arr = []
          silent! call substitute(l:buf_line, '(\(.\{-}\)).\{-}{.\{-}$', '\=add(l:function_params_chunk_arr,submatch(1))', '')

          if !empty(l:function_params_chunk_arr)
            let l:split_by_commas = split(l:function_params_chunk_arr[0], ',')

            for param in l:split_by_commas
              if empty(trim(param))
                continue
              endif

              let l:split_by_colons = split(param, ':')
              if len(l:split_by_colons) != 2
                call s:ErrorMsg('Invalid syntax of contract function parameters on line ' . l:buf_i)
                return []
              endif

              let l:parsed_name = trim(l:split_by_colons[0])
              let l:parsed_type = trim(l:split_by_colons[1])
              let l:parsed_list = s:ParseTypeIntoList(l:buf_i, l:parsed_name, l:parsed_type)

              if empty(l:parsed_list)
                return []
              endif

              let l:function_params_parsed[l:parsed_name] = l:parsed_list
            endfor
          endif

          " getting some return value
          let l:function_return_parsed = []
          let l:function_return_arr = s:RecognizeTypeAsList(l:buf_line, ')\s*', '{$')

          if !empty(l:function_return_arr)
            let l:parsed_return_list = s:ParseTypeIntoList(l:buf_i, 'return type', trim(l:function_return_arr[0]))

            if empty(l:parsed_return_list)
              return []
            endif

            let l:function_return_parsed = l:parsed_return_list
          endif

          " store gathered results, if it's not a getter
          if l:is_getter_function == 0
            let l:buf_contract_methods[l:contract_name_arr[0]][l:function_name_arr[0]] = l:function_params_parsed
            let l:buf_contract_methods_returns[l:contract_name_arr[0]][l:function_name_arr[0]] = l:function_return_parsed
          endif

          " if it already ends, skip the body
          if l:buf_line =~# '}$'
            continue
          endif

          " scan the whole body
          let l:scanned_body = s:ScanBodyForDefinitions(l:lnum, l:buf_i, l:buf_last, l:function_name_arr[0], l:buf_i)

          " encountered an error, displayed it before
          if empty(l:scanned_body)
            return []
          endif

          " no context detected, advance
          if l:scanned_body[0] == 0
            let l:buf_i = l:scanned_body[1]
            continue
          endif

          " unknown error
          if l:scanned_body[0] != 1 || len(l:scanned_body) != 3
            call s:ErrorMsg('Internal parsing error for contract function ' . l:function_name_arr[0])
            return []
          endif

          " set the context, if not already (and if it's not a getter function)
          if l:buf_is_function_context == 0 && l:is_getter_function == 0
            let l:buf_is_function_context = 1
            let l:buf_function_type = 'method'
            let l:buf_function_name = l:function_name_arr[0]
            let l:buf_function_definitions_before_current_line = l:scanned_body[2] " found definitions

            " adding function params
            for [key, value] in items(l:function_params_parsed)
              if has_key(l:scanned_body[2], key)
                continue
              endif
              let l:buf_function_definitions_before_current_line[key] = value
            endfor

            " contract sub-context
            if l:buf_is_contract_context == 0
              let l:buf_is_contract_context = 1
              let l:buf_contract_name = l:contract_name_arr[0]
            endif
          endif

          " advance
          let l:buf_i = l:scanned_body[1]
          continue
        endif

        " add a brace
        if l:buf_line =~# '}$'
          let l:need_closing_braces -= 1
          continue
        endif

        " NOTE: don't call the parse error
        " call s:ErrorMsg('Invalid syntax in the contract ' . l:contract_name_arr[0] . ' on line ' . l:buf_i)
        " return []
      endwhile

      " stop parsing the rest of the contract
      if l:need_break
        break
      endif

      " advance
      let l:buf_i += 1
      continue
      " }}}3
    endif

    " nothing matched, go to the next line
    let l:buf_i += 1
  endwhile

  " NOTE: (debug) checking the current parsed results:
  " return {'me': l:buf_messages, 'st': l:buf_structs}
  " return l:buf_global_constants
  " return { 'n': l:buf_native_functions, 'n_ret': l:buf_native_functions_returns, 'e': l:buf_extends_functions, 'e_ret': l:buf_extends_functions_returns}
  "" global functions:
  " return {'g': l:buf_global_functions,
  "       \ 'g_ret': l:buf_global_functions_returns,
  "       \ 'f_ctx': l:buf_is_function_context,
  "       \ 'f_def': l:buf_function_definitions_before_current_line,
  "       \ 'f_n': l:buf_function_name,
  "       \ 'f_t': l:buf_function_type}
  "" trait:
  " return {'t_n': l:buf_trait_name,
  "       \ 't_f': l:buf_trait_fields,
  "       \ 't_m': l:buf_trait_methods,
  "       \ 't_mr': l:buf_trait_methods_returns,
  "       \ 't_ctx': l:buf_is_trait_context,
  "       \ 'f_ctx': l:buf_is_function_context,
  "       \ 'f_def': l:buf_function_definitions_before_current_line,
  "       \ 'f_n': l:buf_function_name,
  "       \ 'f_t': l:buf_function_type}
  "" contract:
  " return {'c_n': l:buf_contract_name,
  "       \ 'c_f': l:buf_contract_fields,
  "       \ 'c_m': l:buf_contract_methods,
  "       \ 'c_mr': l:buf_contract_methods_returns,
  "       \ 'c_ctx': l:buf_is_contract_context,
  "       \ 'f_ctx': l:buf_is_function_context,
  "       \ 'f_def': l:buf_function_definitions_before_current_line,
  "       \ 'f_n': l:buf_function_name,
  "       \ 'f_t': l:buf_function_type}
  "" everything, using :PP for readability
  "return {
  "      \ '_msg': l:buf_messages, '_stt': l:buf_structs, '_const': l:buf_global_constants,
  "      \ '_glob': l:buf_global_functions, '_glob_ret': l:buf_global_functions_returns,
  "      \ '_nat': l:buf_native_functions, '_nat_ret': l:buf_native_functions_returns,
  "      \ '_ext': l:buf_extends_functions, '_ext_ret': l:buf_extends_functions_returns,
  "      \ 'c_ctx': l:buf_is_contract_context,
  "      \ 'f_ctx': l:buf_is_function_context,
  "      \ 't_ctx': l:buf_is_trait_context,
  "      \ 'c_n': l:buf_contract_name, 'c_f': l:buf_contract_fields,
  "      \ 'c_m': l:buf_contract_methods, 'c_mr': l:buf_contract_methods_returns,
  "      \ 'f_n': l:buf_function_name, 'f_t': l:buf_function_type,
  "      \ 't_n': l:buf_trait_name, 't_f': l:buf_trait_fields,
  "      \ 't_m': l:buf_trait_methods, 't_mr': l:buf_trait_methods_returns,
  "      \ 'f_def': l:buf_function_definitions_before_current_line,
  "      \ }

  " }}}2

  ""
  " Section: colon completion context (: ...)
  " {{{2
  ""

  if l:buf_is_function_context == 0 && l:line_until_col =~# ':.\{-}$'
    let l:options = s:tact_types + keys(l:buf_structs) + keys(l:buf_messages)
    let l:compl = []

    for item in l:options
      if item =~ '\V' . a:base
        call add(l:compl, item)
      endif
    endfor

    if empty(l:compl)
      return s:FallbackComplete(a:findstart, a:base)
    endif

    return l:compl
  endif

  " }}}2

  ""
  " Section: self. invocations
  " {{{2
  ""

  " in-contract/in-trait
  if l:buf_is_function_context == 1
        \ && l:line_until_col =~# '\<self\..*$'
        \ && (l:buf_function_type ==# 'method' || l:buf_function_type ==# 'special')
    let l:options = []
    let l:compl = []

    " basic self usage
    if l:line_until_col =~# '\<self\.\w*$'
      " trait or contract
      if l:buf_is_trait_context == 1
        call extend(l:options, keys(l:buf_trait_fields[l:buf_trait_name]))
        call extend(l:options, keys(l:buf_trait_methods[l:buf_trait_name]))
      elseif l:buf_is_contract_context == 1
        call extend(l:options, keys(l:buf_contract_fields[l:buf_contract_name]))
        call extend(l:options, keys(l:buf_contract_methods[l:buf_contract_name]))
      endif

      " contextuals
      call extend(l:options, ['context()', 'reply(', 'readForwardFee()'])

    " nested self.method usage
    elseif l:line_until_col =~# '\<self\.\w\+(.\{-})\.\w*$'
      let l:returns = {}
      let l:type_arr = []

      " trait or contract
      if l:buf_is_trait_context == 1
        let l:returns = l:buf_trait_methods_returns[l:buf_trait_name]
      elseif l:buf_is_contract_context == 1
        let l:returns = l:buf_contract_methods_returns[l:buf_contract_name]
      endif

      let l:method_name_arr = []
      silent! call substitute(l:buf_line, '\<self\.\(\w\+\)(.\{-})\.\w*$', '\=add(l:method_name_arr,submatch(1))', '')

      if !empty(l:method_name_arr)
        " a method
        if has_key(l:returns, l:method_name_arr[0])
          call extend(l:type_arr, l:returns[l:method_name_arr[0]])

        " context()
        elseif l:method_name_arr[0] ==# 'context'
          let l:type_arr = ['__context__'] " denotes a special built-in Context structure

        " readForwardFee()
        elseif l:method_name_arr[0] ==# 'readForwardFee'
          let l:type_arr = ['Int']
        endif
      endif

      " get all the options
      let l:options = s:GetTypeCompletionOptions(l:type_arr,
            \ l:buf_messages,
            \ l:buf_structs,
            \ l:buf_extends_functions,
            \ l:buf_extends_functions_returns)

    " nested self.field usage
    elseif l:line_until_col =~# '\<self\.\w\+\.\w*$'
      let l:fields = {}

      " trait or contract
      if l:buf_is_trait_context == 1
        let l:fields = l:buf_trait_fields[l:buf_trait_name]
      elseif l:buf_is_contract_context == 1
        let l:fields = l:buf_contract_fields[l:buf_contract_name]
      endif

      let l:field_name_arr = []
      silent! call substitute(l:buf_line, '\<self\.\(\w\+\)\.\w*$', '\=add(l:field_name_arr,submatch(1))', '')

      if !empty(l:field_name_arr) && has_key(l:fields, l:field_name_arr[0])
        let l:options = s:GetTypeCompletionOptions(l:fields[l:field_name_arr[0]],
              \ l:buf_messages,
              \ l:buf_structs,
              \ l:buf_extends_functions,
              \ l:buf_extends_functions_returns)
      endif
    endif

    " fill the list
    for item in l:options
      if item =~ '\V' . a:base
        call add(l:compl, item)
      endif
    endfor

    " fallback to default if no results matched
    if empty(l:compl)
      return s:FallbackComplete(a:findstart, a:base)
    endif

    " return matched results
    return l:compl
  endif

  " in extends function
  if l:buf_is_function_context == 1
        \ && l:line_until_col =~# '\<self\.\w*$'
        \ && l:buf_function_type ==# 'extend'
    " if there are some issues, fallback to default completion
    if empty(l:buf_function_name)
          \ || !has_key(l:buf_extends_functions, l:buf_function_name)
          \ || !has_key(l:buf_extends_functions[l:buf_function_name], 'self')
          \ || empty(l:buf_extends_functions[l:buf_function_name]['self'])
      return s:FallbackComplete(a:findstart, a:base)
    endif

    " parse options
    let l:options = s:GetTypeCompletionOptions(l:buf_extends_functions[l:buf_function_name]['self'],
          \ l:buf_messages,
          \ l:buf_structs,
          \ l:buf_extends_functions,
          \ l:buf_extends_functions_returns)
    let l:compl = []

    " fill the list
    for item in l:options
      if item =~ '\V' . a:base
        call add(l:compl, item)
      endif
    endfor

    " fallback to default if no results matched
    if empty(l:compl)
      return s:FallbackComplete(a:findstart, a:base)
    endif

    " return matched results
    return l:compl
  endif

  " in global function
  if l:buf_is_function_context == 1
        \ && l:line_until_col =~# '\<self\.\w*$'
        \ && l:buf_function_type ==# 'global'
    " if there are some issues, fallback to default completion
    if empty(l:buf_function_name)
          \ || !has_key(l:buf_global_functions, l:buf_function_name)
          \ || !has_key(l:buf_global_functions[l:buf_function_name], 'self')
          \ || empty(l:buf_global_functions[l:buf_function_name]['self'])
      return s:FallbackComplete(a:findstart, a:base)
    endif

    " parse options
    let l:options = s:GetTypeCompletionOptions(l:buf_global_functions[l:buf_function_name]['self'],
          \ l:buf_messages,
          \ l:buf_structs,
          \ l:buf_extends_functions,
          \ l:buf_extends_functions_returns)
    let l:compl = []

    " fill the list
    for item in l:options
      if item =~ '\V' . a:base
        call add(l:compl, item)
      endif
    endfor

    " fallback to default if no results matched
    if empty(l:compl)
      return s:FallbackComplete(a:findstart, a:base)
    endif

    " return matched results
    return l:compl
  endif

  " longer chains of nested self. calls
  if l:buf_is_function_context == 1 && l:line_until_col =~# '\<self\..\{-}\.\w*$'
    return s:DotFallbackComplete(a:base, l:buf_extends_functions, l:buf_structs, l:buf_messages)
  endif

  " }}}2

  ""
  " Section: UFCS
  " {{{2
  ""

  " string literal
  if l:buf_is_function_context == 1 && l:line_until_col =~# '".\{-}"\.\w*$'
    " {{{3
    let l:compl = []

    " checking string methods
    for item in keys(s:tact_String_methods)
      if item =~ '\V' . a:base
        call add(l:compl, item)
      endif
    endfor

    " checking all extends functions
    for [key, value] in items(l:buf_extends_functions)
      if key =~ '\V' . a:base && value ==# 'self' && l:buf_extends_functions[key]['self'][0] ==# 'String'
        call add(l:compl, key)
      endif
    endfor

    return l:compl
    " }}}3
  endif

  " number literal
  if l:buf_is_function_context == 1 && l:line_until_col =~# s:regexp_number_literal . '\.\w*$'
    " {{{3
    let l:compl = []

    " checking methods
    for item in keys(s:tact_Int_methods)
      if item =~ '\V' . a:base
        call add(l:compl, item)
      endif
    endfor

    " checking all extends functions
    for [key, value] in items(l:buf_extends_functions)
      if key =~ '\V' . a:base && value ==# 'self' && l:buf_extends_functions[key]['self'][0] ==# 'Int'
        call add(l:compl, key)
      endif
    endfor

    return l:compl
    " }}}3
  endif

  " single non-function identifier
  if l:buf_is_function_context == 1 && l:line_until_col =~# '\W*\<\w\+\.\w*$'
    " {{{3
    let l:identifier_name_arr = []
    silent! call substitute(l:buf_line, '\(\w\+\)\.\w*$', '\=add(l:identifier_name_arr,submatch(1))', '')

    if empty(l:identifier_name_arr)
      return s:FallbackComplete(a:findstart, a:base)
    endif

    " static method completion options
    let l:static_compl = []

    " static methods of structs
    for item in keys(l:buf_structs)
      if item ==# l:identifier_name_arr[0]
        call add(l:static_compl, 'fromCell(')
        call add(l:static_compl, 'fromSlice(')
      endif
    endfor

    " static methods of structs
    for item in keys(l:buf_messages)
      if item ==# l:identifier_name_arr[0]
        call add(l:static_compl, 'fromCell(')
        call add(l:static_compl, 'fromSlice(')
        call add(l:static_compl, 'opcode()')
      endif
    endfor

    " completion list
    let l:compl = []

    " match on the static methods
    for item in l:static_compl
      if item =~ '\V' . a:base
        call add(l:compl, item)
      endif
    endfor

    " if any were found, let's show them
    if !empty(l:type_arr)
      return l:compl
    endif

    " if none were found, let's try to infer the type
    " type to find completions for
    let l:type_arr = []

    " function params or defined variables
    for [key, value] in items(l:buf_function_definitions_before_current_line)
      if key ==# l:identifier_name_arr[0]
        call extend(l:type_arr, value)
        break
      endif
    endfor

    " global constants
    if empty(l:type_arr) && has_key(l:buf_global_constants, l:identifier_name_arr[0])
      call extend(l:type_arr, l:buf_global_constants[l:identifier_name_arr[0]])
    endif

    " if none found or there's no return type
    if empty(l:type_arr)
      return []
    endif

    " once we get a type, find a list of options for it
    let l:options = s:GetTypeCompletionOptions(l:type_arr,
          \ l:buf_messages,
          \ l:buf_structs,
          \ l:buf_extends_functions,
          \ l:buf_extends_functions_returns)

    " fill the list of matching options
    for item in l:options
      if item =~ '\V' . a:base
        call add(l:compl, item)
      endif
    endfor

    " if no results matched, fallback to defaults
    if empty(l:compl)
      return s:FallbackComplete(a:findstart, a:base)
    endif

    " return matched results
    return l:compl
    " }}}3
  endif

  " single function result
  if l:buf_is_function_context == 1 && l:line_until_col =~# '\W*\<\w\+(.\{-})\.\w*$'
    " {{{3
    let l:identifier_name_arr = []
    silent! call substitute(l:buf_line, '\(\w\+\)(.\{-})\.\w*$', '\=add(l:identifier_name_arr,submatch(1))', '')

    if empty(l:identifier_name_arr)
      return s:FallbackComplete(a:findstart, a:base)
    endif

    " type to find completions for
    let l:type_arr = []

    " native function call
    if has_key(l:buf_native_functions, l:identifier_name_arr[0])
          \ && has_key(l:buf_native_functions_returns, l:identifier_name_arr[0])
      call extend(l:type_arr, l:buf_native_functions_returns[l:identifier_name_arr[0]])
    endif

    " global function call
    if has_key(l:buf_global_functions, l:identifier_name_arr[0])
          \ && has_key(l:buf_global_functions_returns, l:identifier_name_arr[0])
      call extend(l:type_arr, l:buf_global_functions_returns[l:identifier_name_arr[0]])
    endif

    " stdlib function call
    for [key, value] in items(s:tact_stdlib_functions)
      if substitute(key, '()\?$', '', '') ==# l:identifier_name_arr[0]
        let l:type_arr = [value]
        break
      endif
    endfor

    " if none found or there's no return type
    if empty(l:type_arr)
      return []
    endif

    " once we get a type, find a list of options for it
    let l:options = s:GetTypeCompletionOptions(l:type_arr,
          \ l:buf_messages,
          \ l:buf_structs,
          \ l:buf_extends_functions,
          \ l:buf_extends_functions_returns)
    let l:compl = []

    " fill the list of matching options
    for item in l:options
      if item =~ '\V' . a:base
        call add(l:compl, item)
      endif
    endfor

    " if no results matched, fallback to defaults
    if empty(l:compl)
      return s:FallbackComplete(a:findstart, a:base)
    endif

    " return matched results
    return l:compl
    " }}}3
  endif

  " multiple identifiers or functions, any UFCS contexts
  if l:buf_is_function_context == 1 && l:line_until_col =~# '\.\w*$'
    return s:DotFallbackComplete(a:base, l:buf_extends_functions, l:buf_structs, l:buf_messages)
  endif

  " end-of-line dot placement style
  if l:buf_is_function_context == 1 && l:lnum > 1 && s:TrimLine(getline(l:lnum - 1)) =~# '.$'
    return s:DotFallbackComplete(a:base, l:buf_extends_functions, l:buf_structs, l:buf_messages)
  endif

  " }}}2

  ""
  " Section: remaining function contexts
  " {{{2
  ""

  if l:buf_is_function_context == 1
    let l:options = keys(s:tact_globals)
      \ + keys(s:tact_stdlib_functions)
      \ + keys(l:buf_global_constants)
      \ + keys(l:buf_global_functions)
      \ + keys(l:buf_native_functions)
      \ + keys(l:buf_structs)
      \ + keys(l:buf_messages)
      \ + keys(l:buf_function_definitions_before_current_line)

    if l:buf_function_type ==# 'global'
      " add params from the corresponding global function
      " call extend(l:options, keys(l:buf_global_functions[l:buf_function_name]))
      " NOTE: params were already added to l:buf_function_definitions_before_current_line

    elseif l:buf_function_type ==# 'extend'
      " add params from the corresponding extend function
      " call extend(l:options, keys(l:buf_extends_functions[l:buf_function_name]))
      " NOTE: params were already added to l:buf_function_definitions_before_current_line

    elseif l:buf_function_type ==# 'method'
      " add context-related things for contracts and traits
      call add(l:options, 'context()')
      call add(l:options, 'self')
    endif

    if !exists('g:tact_disable_abbreviations')
      call extend(l:options, s:tact_abbrev_method)
    endif

    let l:compl = []
    for item in l:options
      if item =~ '\V' . a:base
        call add(l:compl, item)
      endif
    endfor

    if empty(l:compl)
      return s:FallbackComplete(a:findstart, a:base)
    endif

    return l:compl
  endif

  " }}}2

  ""
  " Section: abbreviations for contract/traits
  " {{{2
  ""

  if l:buf_is_trait_context == 1 || l:buf_is_contract_context == 1
    let l:compl = []

    if !exists('g:tact_disable_abbreviations')
      for item in s:tact_abbrev_function
        if item =~ '\V' . a:base
          call add(l:compl, item)
        endif
      endfor
    endif

    if empty(l:compl)
      return s:FallbackComplete(a:findstart, a:base)
    endif

    " reusing all the syntaxmatches alongside abbreviations
    return l:compl + syntaxcomplete#Complete(a:findstart, a:base)
  endif

  " }}}2

  ""
  " Section: global abbreviations
  " {{{2
  ""

  let l:compl = []

  if !exists('g:tact_disable_abbreviations')
    for item in s:tact_abbrev_native
      if item =~ '\V' . a:base
        call add(l:compl, item)
      endif
    endfor

    for item in s:tact_abbrev_structure
      if item =~ '\V' . a:base
        call add(l:compl, item)
      endif
    endfor

    for item in s:tact_abbrev_function
      if item =~ '\V' . a:base
        call add(l:compl, item)
      endif
    endfor
  endif

  if empty(l:compl)
    return s:FallbackComplete(a:findstart, a:base)
  endif

  " reusing all the syntaxmatches alongside abbreviations
  return l:compl + syntaxcomplete#Complete(a:findstart, a:base)

  " }}}2

  " }}}1
endfunction
