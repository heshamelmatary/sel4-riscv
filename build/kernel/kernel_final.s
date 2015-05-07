	.file	"kernel_final.c"
	.section	.rodata
	.align	2
.LC0:
	.string	"./api/types_gen.h"
	.align	2
.LC1:
	.string	"(msgLabel & ~0xfffff) == 0"
	.align	2
.LC2:
	.string	"(msgCapsUnwrapped & ~0x7) == 0"
	.align	2
.LC3:
	.string	"(msgExtraCaps & ~0x3) == 0"
	.align	2
.LC4:
	.string	"(msgLength & ~0x7f) == 0"
	.text
	.align	2
	.type	message_info_new, @function
message_info_new:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	zero,-20(s0)
	lw	a4,-36(s0)
	li	a5,-1048576
	and	a5,a4,a5
	beqz	a5,.L2
	lui	a5,%hi(__FUNCTION__.1495)
	add	a3,a5,%lo(__FUNCTION__.1495)
	li	a2,20
	lui	a5,%hi(.LC0)
	add	a1,a5,%lo(.LC0)
	lui	a5,%hi(.LC1)
	add	a0,a5,%lo(.LC1)
	call	_assert_fail
.L2:
	lw	a4,-20(s0)
	lw	a5,-36(s0)
	sll	a5,a5,12
	or	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-40(s0)
	and	a5,a5,-8
	beqz	a5,.L3
	lui	a5,%hi(__FUNCTION__.1495)
	add	a3,a5,%lo(__FUNCTION__.1495)
	li	a2,23
	lui	a5,%hi(.LC0)
	add	a1,a5,%lo(.LC0)
	lui	a5,%hi(.LC2)
	add	a0,a5,%lo(.LC2)
	call	_assert_fail
.L3:
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	and	a5,a5,7
	sll	a5,a5,9
	or	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-44(s0)
	and	a5,a5,-4
	beqz	a5,.L4
	lui	a5,%hi(__FUNCTION__.1495)
	add	a3,a5,%lo(__FUNCTION__.1495)
	li	a2,26
	lui	a5,%hi(.LC0)
	add	a1,a5,%lo(.LC0)
	lui	a5,%hi(.LC3)
	add	a0,a5,%lo(.LC3)
	call	_assert_fail
.L4:
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	and	a5,a5,3
	sll	a5,a5,7
	or	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-48(s0)
	and	a5,a5,-128
	beqz	a5,.L5
	lui	a5,%hi(__FUNCTION__.1495)
	add	a3,a5,%lo(__FUNCTION__.1495)
	li	a2,29
	lui	a5,%hi(.LC0)
	add	a1,a5,%lo(.LC0)
	lui	a5,%hi(.LC4)
	add	a0,a5,%lo(.LC4)
	call	_assert_fail
.L5:
	lw	a4,-20(s0)
	lw	a5,-48(s0)
	and	a5,a5,127
	or	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	message_info_new, .-message_info_new
	.align	2
	.type	message_info_get_msgLabel, @function
message_info_get_msgLabel:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	srl	a5,a5,12
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	message_info_get_msgLabel, .-message_info_get_msgLabel
	.align	2
	.type	message_info_get_msgCapsUnwrapped, @function
message_info_get_msgCapsUnwrapped:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a4,-20(s0)
	li	a5,4096
	add	a5,a5,-512
	and	a5,a4,a5
	srl	a5,a5,9
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	message_info_get_msgCapsUnwrapped, .-message_info_get_msgCapsUnwrapped
	.section	.rodata
	.align	2
.LC5:
	.string	"((~0xe00 >> 9) & v) == 0"
	.text
	.align	2
	.type	message_info_set_msgCapsUnwrapped, @function
message_info_set_msgCapsUnwrapped:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	and	a5,a5,-8
	beqz	a5,.L12
	lui	a5,%hi(__FUNCTION__.1506)
	add	a3,a5,%lo(__FUNCTION__.1506)
	li	a2,48
	lui	a5,%hi(.LC0)
	add	a1,a5,%lo(.LC0)
	lui	a5,%hi(.LC5)
	add	a0,a5,%lo(.LC5)
	call	_assert_fail
.L12:
	lw	a4,-20(s0)
	li	a5,-4096
	add	a5,a5,511
	and	a5,a4,a5
	sw	a5,-20(s0)
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	sll	a3,a5,9
	li	a5,4096
	add	a5,a5,-512
	and	a5,a3,a5
	or	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	message_info_set_msgCapsUnwrapped, .-message_info_set_msgCapsUnwrapped
	.align	2
	.type	message_info_get_msgExtraCaps, @function
message_info_get_msgExtraCaps:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	and	a5,a5,384
	srl	a5,a5,7
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	message_info_get_msgExtraCaps, .-message_info_get_msgExtraCaps
	.section	.rodata
	.align	2
.LC6:
	.string	"((~0x180 >> 7) & v) == 0"
	.text
	.align	2
	.type	message_info_set_msgExtraCaps, @function
message_info_set_msgExtraCaps:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	and	a5,a5,-4
	beqz	a5,.L17
	lui	a5,%hi(__FUNCTION__.1514)
	add	a3,a5,%lo(__FUNCTION__.1514)
	li	a2,62
	lui	a5,%hi(.LC0)
	add	a1,a5,%lo(.LC0)
	lui	a5,%hi(.LC6)
	add	a0,a5,%lo(.LC6)
	call	_assert_fail
.L17:
	lw	a5,-20(s0)
	and	a5,a5,-385
	sw	a5,-20(s0)
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	sll	a5,a5,7
	and	a5,a5,384
	or	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	message_info_set_msgExtraCaps, .-message_info_set_msgExtraCaps
	.align	2
	.type	message_info_get_msgLength, @function
message_info_get_msgLength:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	and	a5,a5,127
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	message_info_get_msgLength, .-message_info_get_msgLength
	.section	.rodata
	.align	2
.LC7:
	.string	"((~0x7f >> 0) & v) == 0"
	.text
	.align	2
	.type	message_info_set_msgLength, @function
message_info_set_msgLength:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	and	a5,a5,-128
	beqz	a5,.L22
	lui	a5,%hi(__FUNCTION__.1522)
	add	a3,a5,%lo(__FUNCTION__.1522)
	li	a2,76
	lui	a5,%hi(.LC0)
	add	a1,a5,%lo(.LC0)
	lui	a5,%hi(.LC7)
	add	a0,a5,%lo(.LC7)
	call	_assert_fail
.L22:
	lw	a5,-20(s0)
	and	a5,a5,-128
	sw	a5,-20(s0)
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	and	a5,a5,127
	or	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	message_info_set_msgLength, .-message_info_set_msgLength
	.section	.rodata
	.align	2
.LC8:
	.string	"(capAllowGrant & ~0x1) == 0"
	.align	2
.LC9:
	.string	"(capAllowRead & ~0x1) == 0"
	.align	2
.LC10:
	.string	"(capAllowWrite & ~0x1) == 0"
	.text
	.align	2
	.type	cap_rights_new, @function
cap_rights_new:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	zero,-20(s0)
	lw	a5,-36(s0)
	and	a5,a5,-2
	beqz	a5,.L25
	lui	a5,%hi(__FUNCTION__.1532)
	add	a3,a5,%lo(__FUNCTION__.1532)
	li	a2,94
	lui	a5,%hi(.LC0)
	add	a1,a5,%lo(.LC0)
	lui	a5,%hi(.LC8)
	add	a0,a5,%lo(.LC8)
	call	_assert_fail
.L25:
	lw	a4,-20(s0)
	lw	a5,-36(s0)
	and	a5,a5,1
	sll	a5,a5,2
	or	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-40(s0)
	and	a5,a5,-2
	beqz	a5,.L26
	lui	a5,%hi(__FUNCTION__.1532)
	add	a3,a5,%lo(__FUNCTION__.1532)
	li	a2,97
	lui	a5,%hi(.LC0)
	add	a1,a5,%lo(.LC0)
	lui	a5,%hi(.LC9)
	add	a0,a5,%lo(.LC9)
	call	_assert_fail
.L26:
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	and	a5,a5,1
	sll	a5,a5,1
	or	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-44(s0)
	and	a5,a5,-2
	beqz	a5,.L27
	lui	a5,%hi(__FUNCTION__.1532)
	add	a3,a5,%lo(__FUNCTION__.1532)
	li	a2,100
	lui	a5,%hi(.LC0)
	add	a1,a5,%lo(.LC0)
	lui	a5,%hi(.LC10)
	add	a0,a5,%lo(.LC10)
	call	_assert_fail
.L27:
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	and	a5,a5,1
	or	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_rights_new, .-cap_rights_new
	.align	2
	.type	cap_rights_get_capAllowGrant, @function
cap_rights_get_capAllowGrant:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	and	a5,a5,4
	srl	a5,a5,2
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_rights_get_capAllowGrant, .-cap_rights_get_capAllowGrant
	.align	2
	.type	cap_rights_get_capAllowRead, @function
cap_rights_get_capAllowRead:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	and	a5,a5,2
	srl	a5,a5,1
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_rights_get_capAllowRead, .-cap_rights_get_capAllowRead
	.align	2
	.type	cap_rights_get_capAllowWrite, @function
cap_rights_get_capAllowWrite:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	and	a5,a5,1
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_rights_get_capAllowWrite, .-cap_rights_get_capAllowWrite
	.align	2
	.type	rightsFromWord, @function
rightsFromWord:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	mv	a0,a5
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	rightsFromWord, .-rightsFromWord
	.align	2
	.type	capTransferFromWords, @function
capTransferFromWords:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a5,-40(s0)
	lw	a5,0(a5)
	sw	a5,-28(s0)
	lw	a5,-40(s0)
	add	a5,a5,4
	lw	a5,0(a5)
	sw	a5,-24(s0)
	lw	a5,-40(s0)
	add	a5,a5,8
	lw	a5,0(a5)
	sw	a5,-20(s0)
	lw	a5,-36(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
	lw	a4,-24(s0)
	sw	a4,4(a5)
	lw	a4,-20(s0)
	sw	a4,8(a5)
	lw	a0,-36(s0)
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	capTransferFromWords, .-capTransferFromWords
	.align	2
	.type	messageInfoFromWord, @function
messageInfoFromWord:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	lw	a0,-24(s0)
	call	message_info_get_msgLength
	sw	a0,-20(s0)
	lw	a4,-20(s0)
	li	a5,120
	bleu	a4,a5,.L40
	li	a1,120
	lw	a0,-24(s0)
	call	message_info_set_msgLength
	mv	a5,a0
	sw	a5,-24(s0)
.L40:
	lw	a5,-24(s0)
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	messageInfoFromWord, .-messageInfoFromWord
	.align	2
	.type	wordFromMessageInfo, @function
wordFromMessageInfo:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	wordFromMessageInfo, .-wordFromMessageInfo
	.align	2
	.type	async_endpoint_ptr_get_aepBoundTCB, @function
async_endpoint_ptr_get_aepBoundTCB:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a5,12(a5)
	and	a5,a5,-16
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	async_endpoint_ptr_get_aepBoundTCB, .-async_endpoint_ptr_get_aepBoundTCB
	.section	.rodata
	.align	2
.LC11:
	.string	"./arch/object/structures_gen.h"
	.align	2
.LC12:
	.string	"((~0xfffffff0 << 0) & v) == 0"
	.text
	.align	2
	.type	async_endpoint_ptr_set_aepBoundTCB, @function
async_endpoint_ptr_set_aepBoundTCB:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	and	a5,a5,15
	beqz	a5,.L47
	lui	a5,%hi(__FUNCTION__.1655)
	add	a3,a5,%lo(__FUNCTION__.1655)
	li	a2,26
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC12)
	add	a0,a5,%lo(.LC12)
	call	_assert_fail
.L47:
	lw	a5,-20(s0)
	lw	a5,12(a5)
	and	a4,a5,15
	lw	a5,-20(s0)
	sw	a4,12(a5)
	lw	a5,-20(s0)
	lw	a4,12(a5)
	lw	a5,-24(s0)
	and	a5,a5,-16
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,12(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	async_endpoint_ptr_set_aepBoundTCB, .-async_endpoint_ptr_set_aepBoundTCB
	.align	2
	.type	async_endpoint_ptr_get_aepMsgIdentifier, @function
async_endpoint_ptr_get_aepMsgIdentifier:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a5,8(a5)
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	async_endpoint_ptr_get_aepMsgIdentifier, .-async_endpoint_ptr_get_aepMsgIdentifier
	.align	2
	.type	async_endpoint_ptr_set_aepMsgIdentifier, @function
async_endpoint_ptr_set_aepMsgIdentifier:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-20(s0)
	sw	zero,8(a5)
	lw	a5,-20(s0)
	lw	a4,8(a5)
	lw	a5,-24(s0)
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,8(a5)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	async_endpoint_ptr_set_aepMsgIdentifier, .-async_endpoint_ptr_set_aepMsgIdentifier
	.align	2
	.type	async_endpoint_ptr_get_aepQueue_head, @function
async_endpoint_ptr_get_aepQueue_head:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a5,4(a5)
	and	a5,a5,-16
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	async_endpoint_ptr_get_aepQueue_head, .-async_endpoint_ptr_get_aepQueue_head
	.align	2
	.type	async_endpoint_ptr_set_aepQueue_head, @function
async_endpoint_ptr_set_aepQueue_head:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	and	a5,a5,15
	beqz	a5,.L54
	lui	a5,%hi(__FUNCTION__.1671)
	add	a3,a5,%lo(__FUNCTION__.1671)
	li	a2,52
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC12)
	add	a0,a5,%lo(.LC12)
	call	_assert_fail
.L54:
	lw	a5,-20(s0)
	lw	a5,4(a5)
	and	a4,a5,15
	lw	a5,-20(s0)
	sw	a4,4(a5)
	lw	a5,-20(s0)
	lw	a4,4(a5)
	lw	a5,-24(s0)
	and	a5,a5,-16
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,4(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	async_endpoint_ptr_set_aepQueue_head, .-async_endpoint_ptr_set_aepQueue_head
	.align	2
	.type	async_endpoint_ptr_get_aepQueue_tail, @function
async_endpoint_ptr_get_aepQueue_tail:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	and	a5,a5,-16
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	async_endpoint_ptr_get_aepQueue_tail, .-async_endpoint_ptr_get_aepQueue_tail
	.align	2
	.type	async_endpoint_ptr_set_aepQueue_tail, @function
async_endpoint_ptr_set_aepQueue_tail:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	and	a5,a5,15
	beqz	a5,.L58
	lui	a5,%hi(__FUNCTION__.1679)
	add	a3,a5,%lo(__FUNCTION__.1679)
	li	a2,65
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC12)
	add	a0,a5,%lo(.LC12)
	call	_assert_fail
.L58:
	lw	a5,-20(s0)
	lw	a5,0(a5)
	and	a4,a5,15
	lw	a5,-20(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	lw	a4,0(a5)
	lw	a5,-24(s0)
	and	a5,a5,-16
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,0(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	async_endpoint_ptr_set_aepQueue_tail, .-async_endpoint_ptr_set_aepQueue_tail
	.align	2
	.type	async_endpoint_ptr_get_state, @function
async_endpoint_ptr_get_state:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	and	a5,a5,3
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	async_endpoint_ptr_get_state, .-async_endpoint_ptr_get_state
	.section	.rodata
	.align	2
.LC13:
	.string	"((~0x3 >> 0) & v) == 0"
	.text
	.align	2
	.type	async_endpoint_ptr_set_state, @function
async_endpoint_ptr_set_state:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	and	a5,a5,-4
	beqz	a5,.L62
	lui	a5,%hi(__FUNCTION__.1687)
	add	a3,a5,%lo(__FUNCTION__.1687)
	li	a2,78
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC13)
	add	a0,a5,%lo(.LC13)
	call	_assert_fail
.L62:
	lw	a5,-20(s0)
	lw	a5,0(a5)
	and	a4,a5,-4
	lw	a5,-20(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	lw	a4,0(a5)
	lw	a5,-24(s0)
	and	a5,a5,3
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,0(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	async_endpoint_ptr_set_state, .-async_endpoint_ptr_set_state
	.align	2
	.type	endpoint_ptr_get_epQueue_head, @function
endpoint_ptr_get_epQueue_head:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a5,4(a5)
	and	a5,a5,-16
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	endpoint_ptr_get_epQueue_head, .-endpoint_ptr_get_epQueue_head
	.align	2
	.type	endpoint_ptr_set_epQueue_head, @function
endpoint_ptr_set_epQueue_head:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	and	a5,a5,15
	beqz	a5,.L66
	lui	a5,%hi(__FUNCTION__.1698)
	add	a3,a5,%lo(__FUNCTION__.1698)
	li	a2,96
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC12)
	add	a0,a5,%lo(.LC12)
	call	_assert_fail
.L66:
	lw	a5,-20(s0)
	lw	a5,4(a5)
	and	a4,a5,15
	lw	a5,-20(s0)
	sw	a4,4(a5)
	lw	a5,-20(s0)
	lw	a4,4(a5)
	lw	a5,-24(s0)
	and	a5,a5,-16
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,4(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	endpoint_ptr_set_epQueue_head, .-endpoint_ptr_set_epQueue_head
	.align	2
	.type	endpoint_ptr_get_epQueue_tail, @function
endpoint_ptr_get_epQueue_tail:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	and	a5,a5,-16
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	endpoint_ptr_get_epQueue_tail, .-endpoint_ptr_get_epQueue_tail
	.align	2
	.type	endpoint_ptr_set_epQueue_tail, @function
endpoint_ptr_set_epQueue_tail:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	and	a5,a5,15
	beqz	a5,.L70
	lui	a5,%hi(__FUNCTION__.1706)
	add	a3,a5,%lo(__FUNCTION__.1706)
	li	a2,109
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC12)
	add	a0,a5,%lo(.LC12)
	call	_assert_fail
.L70:
	lw	a5,-20(s0)
	lw	a5,0(a5)
	and	a4,a5,15
	lw	a5,-20(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	lw	a4,0(a5)
	lw	a5,-24(s0)
	and	a5,a5,-16
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,0(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	endpoint_ptr_set_epQueue_tail, .-endpoint_ptr_set_epQueue_tail
	.align	2
	.type	endpoint_ptr_get_state, @function
endpoint_ptr_get_state:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	and	a5,a5,3
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	endpoint_ptr_get_state, .-endpoint_ptr_get_state
	.align	2
	.type	endpoint_ptr_set_state, @function
endpoint_ptr_set_state:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	and	a5,a5,-4
	beqz	a5,.L74
	lui	a5,%hi(__FUNCTION__.1714)
	add	a3,a5,%lo(__FUNCTION__.1714)
	li	a2,122
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC13)
	add	a0,a5,%lo(.LC13)
	call	_assert_fail
.L74:
	lw	a5,-20(s0)
	lw	a5,0(a5)
	and	a4,a5,-4
	lw	a5,-20(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	lw	a4,0(a5)
	lw	a5,-24(s0)
	and	a5,a5,3
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,0(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	endpoint_ptr_set_state, .-endpoint_ptr_set_state
	.align	2
	.type	cnode_capdata_get_guard, @function
cnode_capdata_get_guard:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a4,-20(s0)
	li	a5,67108864
	add	a5,a5,-256
	and	a5,a4,a5
	srl	a5,a5,8
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	cnode_capdata_get_guard, .-cnode_capdata_get_guard
	.align	2
	.type	cnode_capdata_get_guardSize, @function
cnode_capdata_get_guardSize:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	and	a5,a5,248
	srl	a5,a5,3
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	cnode_capdata_get_guardSize, .-cnode_capdata_get_guardSize
	.align	2
	.type	thread_state_ptr_get_blockingIPCBadge, @function
thread_state_ptr_get_blockingIPCBadge:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a5,8(a5)
	srl	a5,a5,4
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	thread_state_ptr_get_blockingIPCBadge, .-thread_state_ptr_get_blockingIPCBadge
	.align	2
	.type	thread_state_ptr_set_blockingIPCBadge, @function
thread_state_ptr_set_blockingIPCBadge:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-20(s0)
	lw	a5,8(a5)
	and	a4,a5,15
	lw	a5,-20(s0)
	sw	a4,8(a5)
	lw	a5,-20(s0)
	lw	a4,8(a5)
	lw	a5,-24(s0)
	sll	a5,a5,4
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,8(a5)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	thread_state_ptr_set_blockingIPCBadge, .-thread_state_ptr_set_blockingIPCBadge
	.align	2
	.type	thread_state_ptr_get_blockingIPCCanGrant, @function
thread_state_ptr_get_blockingIPCCanGrant:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a5,8(a5)
	and	a5,a5,8
	srl	a5,a5,3
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	thread_state_ptr_get_blockingIPCCanGrant, .-thread_state_ptr_get_blockingIPCCanGrant
	.section	.rodata
	.align	2
.LC14:
	.string	"((~0x8 >> 3) & v) == 0"
	.text
	.align	2
	.type	thread_state_ptr_set_blockingIPCCanGrant, @function
thread_state_ptr_set_blockingIPCCanGrant:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	and	a5,a5,-2
	beqz	a5,.L85
	lui	a5,%hi(__FUNCTION__.1745)
	add	a3,a5,%lo(__FUNCTION__.1745)
	li	a2,173
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC14)
	add	a0,a5,%lo(.LC14)
	call	_assert_fail
.L85:
	lw	a5,-20(s0)
	lw	a5,8(a5)
	and	a4,a5,-9
	lw	a5,-20(s0)
	sw	a4,8(a5)
	lw	a5,-20(s0)
	lw	a4,8(a5)
	lw	a5,-24(s0)
	sll	a5,a5,3
	and	a5,a5,8
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,8(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	thread_state_ptr_set_blockingIPCCanGrant, .-thread_state_ptr_set_blockingIPCCanGrant
	.align	2
	.type	thread_state_ptr_get_blockingIPCIsCall, @function
thread_state_ptr_get_blockingIPCIsCall:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a5,8(a5)
	and	a5,a5,4
	srl	a5,a5,2
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	thread_state_ptr_get_blockingIPCIsCall, .-thread_state_ptr_get_blockingIPCIsCall
	.section	.rodata
	.align	2
.LC15:
	.string	"((~0x4 >> 2) & v) == 0"
	.text
	.align	2
	.type	thread_state_ptr_set_blockingIPCIsCall, @function
thread_state_ptr_set_blockingIPCIsCall:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	and	a5,a5,-2
	beqz	a5,.L89
	lui	a5,%hi(__FUNCTION__.1753)
	add	a3,a5,%lo(__FUNCTION__.1753)
	li	a2,186
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC15)
	add	a0,a5,%lo(.LC15)
	call	_assert_fail
.L89:
	lw	a5,-20(s0)
	lw	a5,8(a5)
	and	a4,a5,-5
	lw	a5,-20(s0)
	sw	a4,8(a5)
	lw	a5,-20(s0)
	lw	a4,8(a5)
	lw	a5,-24(s0)
	sll	a5,a5,2
	and	a5,a5,4
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,8(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	thread_state_ptr_set_blockingIPCIsCall, .-thread_state_ptr_set_blockingIPCIsCall
	.align	2
	.type	thread_state_get_blockingIPCDiminishCaps, @function
thread_state_get_blockingIPCDiminishCaps:
	add	sp,sp,-16
	sw	s0,12(sp)
	sw	s1,8(sp)
	add	s0,sp,16
	mv	s1,a0
	lw	a5,8(s1)
	and	a5,a5,1
	mv	a0,a5
	lw	s0,12(sp)
	lw	s1,8(sp)
	add	sp,sp,16
	jr	ra
	.size	thread_state_get_blockingIPCDiminishCaps, .-thread_state_get_blockingIPCDiminishCaps
	.section	.rodata
	.align	2
.LC16:
	.string	"((~0x1 >> 0) & v) == 0"
	.text
	.align	2
	.type	thread_state_ptr_set_blockingIPCDiminishCaps, @function
thread_state_ptr_set_blockingIPCDiminishCaps:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	and	a5,a5,-2
	beqz	a5,.L93
	lui	a5,%hi(__FUNCTION__.1761)
	add	a3,a5,%lo(__FUNCTION__.1761)
	li	a2,199
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC16)
	add	a0,a5,%lo(.LC16)
	call	_assert_fail
.L93:
	lw	a5,-20(s0)
	lw	a5,8(a5)
	and	a4,a5,-2
	lw	a5,-20(s0)
	sw	a4,8(a5)
	lw	a5,-20(s0)
	lw	a4,8(a5)
	lw	a5,-24(s0)
	and	a5,a5,1
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,8(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	thread_state_ptr_set_blockingIPCDiminishCaps, .-thread_state_ptr_set_blockingIPCDiminishCaps
	.align	2
	.type	thread_state_get_tcbQueued, @function
thread_state_get_tcbQueued:
	add	sp,sp,-16
	sw	s0,12(sp)
	sw	s1,8(sp)
	add	s0,sp,16
	mv	s1,a0
	lw	a5,4(s1)
	and	a5,a5,1
	mv	a0,a5
	lw	s0,12(sp)
	lw	s1,8(sp)
	add	sp,sp,16
	jr	ra
	.size	thread_state_get_tcbQueued, .-thread_state_get_tcbQueued
	.align	2
	.type	thread_state_ptr_set_tcbQueued, @function
thread_state_ptr_set_tcbQueued:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	and	a5,a5,-2
	beqz	a5,.L97
	lui	a5,%hi(__FUNCTION__.1769)
	add	a3,a5,%lo(__FUNCTION__.1769)
	li	a2,212
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC16)
	add	a0,a5,%lo(.LC16)
	call	_assert_fail
.L97:
	lw	a5,-20(s0)
	lw	a5,4(a5)
	and	a4,a5,-2
	lw	a5,-20(s0)
	sw	a4,4(a5)
	lw	a5,-20(s0)
	lw	a4,4(a5)
	lw	a5,-24(s0)
	and	a5,a5,1
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,4(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	thread_state_ptr_set_tcbQueued, .-thread_state_ptr_set_tcbQueued
	.align	2
	.type	thread_state_ptr_get_blockingIPCEndpoint, @function
thread_state_ptr_get_blockingIPCEndpoint:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	and	a5,a5,-16
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	thread_state_ptr_get_blockingIPCEndpoint, .-thread_state_ptr_get_blockingIPCEndpoint
	.align	2
	.type	thread_state_ptr_set_blockingIPCEndpoint, @function
thread_state_ptr_set_blockingIPCEndpoint:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	and	a5,a5,15
	beqz	a5,.L101
	lui	a5,%hi(__FUNCTION__.1777)
	add	a3,a5,%lo(__FUNCTION__.1777)
	li	a2,225
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC12)
	add	a0,a5,%lo(.LC12)
	call	_assert_fail
.L101:
	lw	a5,-20(s0)
	lw	a5,0(a5)
	and	a4,a5,15
	lw	a5,-20(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	lw	a4,0(a5)
	lw	a5,-24(s0)
	and	a5,a5,-16
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,0(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	thread_state_ptr_set_blockingIPCEndpoint, .-thread_state_ptr_set_blockingIPCEndpoint
	.align	2
	.type	thread_state_get_tsType, @function
thread_state_get_tsType:
	add	sp,sp,-16
	sw	s0,12(sp)
	sw	s1,8(sp)
	add	s0,sp,16
	mv	s1,a0
	lw	a5,0(s1)
	and	a5,a5,15
	mv	a0,a5
	lw	s0,12(sp)
	lw	s1,8(sp)
	add	sp,sp,16
	jr	ra
	.size	thread_state_get_tsType, .-thread_state_get_tsType
	.align	2
	.type	thread_state_ptr_get_tsType, @function
thread_state_ptr_get_tsType:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	and	a5,a5,15
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	thread_state_ptr_get_tsType, .-thread_state_ptr_get_tsType
	.section	.rodata
	.align	2
.LC17:
	.string	"((~0xf >> 0) & v) == 0"
	.text
	.align	2
	.type	thread_state_ptr_set_tsType, @function
thread_state_ptr_set_tsType:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	and	a5,a5,-16
	beqz	a5,.L107
	lui	a5,%hi(__FUNCTION__.1788)
	add	a3,a5,%lo(__FUNCTION__.1788)
	li	a2,243
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC17)
	add	a0,a5,%lo(.LC17)
	call	_assert_fail
.L107:
	lw	a5,-20(s0)
	lw	a5,0(a5)
	and	a4,a5,-16
	lw	a5,-20(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	lw	a4,0(a5)
	lw	a5,-24(s0)
	and	a5,a5,15
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,0(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	thread_state_ptr_set_tsType, .-thread_state_ptr_set_tsType
	.section	.rodata
	.align	2
.LC18:
	.string	"(cdtRight_ & ~0x7ffffff) == 0"
	.align	2
.LC19:
	.string	"(cdtDepth & ~0x1f) == 0"
	.align	2
.LC20:
	.string	"(cdtLeft_ & ~0x7ffffff) == 0"
	.align	2
.LC21:
	.string	"(cdtLevel & ~0x1f) == 0"
	.text
	.align	2
	.type	mdb_node_new, @function
mdb_node_new:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	lw	a4,-36(s0)
	li	a5,-134217728
	and	a5,a4,a5
	beqz	a5,.L109
	lui	a5,%hi(__FUNCTION__.1799)
	add	a3,a5,%lo(__FUNCTION__.1799)
	li	a2,261
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC18)
	add	a0,a5,%lo(.LC18)
	call	_assert_fail
.L109:
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	sll	a5,a5,5
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-40(s0)
	and	a5,a5,-32
	beqz	a5,.L110
	lui	a5,%hi(__FUNCTION__.1799)
	add	a3,a5,%lo(__FUNCTION__.1799)
	li	a2,264
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC19)
	add	a0,a5,%lo(.LC19)
	call	_assert_fail
.L110:
	lw	a4,-28(s0)
	lw	a5,-40(s0)
	and	a5,a5,31
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a4,-44(s0)
	li	a5,-134217728
	and	a5,a4,a5
	beqz	a5,.L111
	lui	a5,%hi(__FUNCTION__.1799)
	add	a3,a5,%lo(__FUNCTION__.1799)
	li	a2,267
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC20)
	add	a0,a5,%lo(.LC20)
	call	_assert_fail
.L111:
	lw	a4,-32(s0)
	lw	a5,-44(s0)
	sll	a5,a5,5
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-48(s0)
	and	a5,a5,-32
	beqz	a5,.L112
	lui	a5,%hi(__FUNCTION__.1799)
	add	a3,a5,%lo(__FUNCTION__.1799)
	li	a2,270
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC21)
	add	a0,a5,%lo(.LC21)
	call	_assert_fail
.L112:
	lw	a4,-32(s0)
	lw	a5,-48(s0)
	and	a5,a5,31
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	mdb_node_new, .-mdb_node_new
	.align	2
	.type	mdb_node_get_cdtRight_, @function
mdb_node_get_cdtRight_:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-20(s0)
	srl	a5,a5,5
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	mdb_node_get_cdtRight_, .-mdb_node_get_cdtRight_
	.align	2
	.type	mdb_node_ptr_set_cdtRight_, @function
mdb_node_ptr_set_cdtRight_:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-20(s0)
	lw	a5,4(a5)
	and	a4,a5,31
	lw	a5,-20(s0)
	sw	a4,4(a5)
	lw	a5,-20(s0)
	lw	a4,4(a5)
	lw	a5,-24(s0)
	sll	a5,a5,5
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,4(a5)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	mdb_node_ptr_set_cdtRight_, .-mdb_node_ptr_set_cdtRight_
	.align	2
	.type	mdb_node_get_cdtDepth, @function
mdb_node_get_cdtDepth:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-20(s0)
	and	a5,a5,31
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	mdb_node_get_cdtDepth, .-mdb_node_get_cdtDepth
	.align	2
	.type	mdb_node_get_cdtLeft_, @function
mdb_node_get_cdtLeft_:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	srl	a5,a5,5
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	mdb_node_get_cdtLeft_, .-mdb_node_get_cdtLeft_
	.align	2
	.type	mdb_node_ptr_set_cdtLeft_, @function
mdb_node_ptr_set_cdtLeft_:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	and	a4,a5,31
	lw	a5,-20(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	lw	a4,0(a5)
	lw	a5,-24(s0)
	sll	a5,a5,5
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,0(a5)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	mdb_node_ptr_set_cdtLeft_, .-mdb_node_ptr_set_cdtLeft_
	.align	2
	.type	mdb_node_get_cdtLevel, @function
mdb_node_get_cdtLevel:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a5,a5,31
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	mdb_node_get_cdtLevel, .-mdb_node_get_cdtLevel
	.section	.rodata
	.align	2
.LC22:
	.string	"((~0x1f >> 0) & v) == 0"
	.text
	.align	2
	.type	mdb_node_ptr_set_cdtLevel, @function
mdb_node_ptr_set_cdtLevel:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	and	a5,a5,-32
	beqz	a5,.L125
	lui	a5,%hi(__FUNCTION__.1826)
	add	a3,a5,%lo(__FUNCTION__.1826)
	li	a2,315
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC22)
	add	a0,a5,%lo(.LC22)
	call	_assert_fail
.L125:
	lw	a5,-20(s0)
	lw	a5,0(a5)
	and	a4,a5,-32
	lw	a5,-20(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	lw	a4,0(a5)
	lw	a5,-24(s0)
	and	a5,a5,31
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,0(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	mdb_node_ptr_set_cdtLevel, .-mdb_node_ptr_set_cdtLevel
	.align	2
	.type	fault_get_faultType, @function
fault_get_faultType:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a5,a5,7
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	fault_get_faultType, .-fault_get_faultType
	.align	2
	.type	fault_ptr_get_faultType, @function
fault_ptr_get_faultType:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	and	a5,a5,7
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	fault_ptr_get_faultType, .-fault_ptr_get_faultType
	.align	2
	.type	fault_null_fault_ptr_new, @function
fault_null_fault_ptr_new:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	sw	zero,0(a5)
	lw	a5,-20(s0)
	sw	zero,4(a5)
	lw	a5,-20(s0)
	lw	a4,0(a5)
	lw	a5,-20(s0)
	sw	a4,0(a5)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	fault_null_fault_ptr_new, .-fault_null_fault_ptr_new
	.section	.rodata
	.align	2
.LC23:
	.string	"(inReceivePhase & ~0x1) == 0"
	.text
	.align	2
	.type	fault_cap_fault_new, @function
fault_cap_fault_new:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-40(s0)
	and	a5,a5,-2
	beqz	a5,.L132
	lui	a5,%hi(__FUNCTION__.1852)
	add	a3,a5,%lo(__FUNCTION__.1852)
	li	a2,363
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC23)
	add	a0,a5,%lo(.LC23)
	call	_assert_fail
.L132:
	lw	a4,-32(s0)
	lw	a5,-40(s0)
	sll	a5,a5,31
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	or	a5,a5,1
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	fault_cap_fault_new, .-fault_cap_fault_new
	.section	.rodata
	.align	2
.LC24:
	.string	"((fault.words[0] >> 0) & 0x7) == fault_cap_fault"
	.text
	.align	2
	.type	fault_cap_fault_get_address, @function
fault_cap_fault_get_address:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,7
	li	a5,1
	beq	a4,a5,.L135
	lui	a5,%hi(__FUNCTION__.1856)
	add	a3,a5,%lo(__FUNCTION__.1856)
	li	a2,375
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC24)
	add	a0,a5,%lo(.LC24)
	call	_assert_fail
.L135:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	fault_cap_fault_get_address, .-fault_cap_fault_get_address
	.align	2
	.type	fault_cap_fault_get_inReceivePhase, @function
fault_cap_fault_get_inReceivePhase:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,7
	li	a5,1
	beq	a4,a5,.L138
	lui	a5,%hi(__FUNCTION__.1860)
	add	a3,a5,%lo(__FUNCTION__.1860)
	li	a2,383
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC24)
	add	a0,a5,%lo(.LC24)
	call	_assert_fail
.L138:
	lw	a5,-24(s0)
	srl	a5,a5,31
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	fault_cap_fault_get_inReceivePhase, .-fault_cap_fault_get_inReceivePhase
	.section	.rodata
	.align	2
.LC25:
	.string	"((fault.words[0] >> 0) & 0x7) == fault_vm_fault"
	.text
	.align	2
	.type	fault_vm_fault_get_address, @function
fault_vm_fault_get_address:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,7
	li	a5,2
	beq	a4,a5,.L141
	lui	a5,%hi(__FUNCTION__.1864)
	add	a3,a5,%lo(__FUNCTION__.1864)
	li	a2,391
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC25)
	add	a0,a5,%lo(.LC25)
	call	_assert_fail
.L141:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	fault_vm_fault_get_address, .-fault_vm_fault_get_address
	.align	2
	.type	fault_vm_fault_get_FSR, @function
fault_vm_fault_get_FSR:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,7
	li	a5,2
	beq	a4,a5,.L144
	lui	a5,%hi(__FUNCTION__.1868)
	add	a3,a5,%lo(__FUNCTION__.1868)
	li	a2,399
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC25)
	add	a0,a5,%lo(.LC25)
	call	_assert_fail
.L144:
	lw	a5,-24(s0)
	srl	a5,a5,18
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	fault_vm_fault_get_FSR, .-fault_vm_fault_get_FSR
	.align	2
	.type	fault_vm_fault_get_instructionFault, @function
fault_vm_fault_get_instructionFault:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,7
	li	a5,2
	beq	a4,a5,.L147
	lui	a5,%hi(__FUNCTION__.1872)
	add	a3,a5,%lo(__FUNCTION__.1872)
	li	a2,407
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC25)
	add	a0,a5,%lo(.LC25)
	call	_assert_fail
.L147:
	lw	a4,-24(s0)
	li	a5,131072
	and	a5,a4,a5
	srl	a5,a5,17
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	fault_vm_fault_get_instructionFault, .-fault_vm_fault_get_instructionFault
	.align	2
	.type	fault_unknown_syscall_new, @function
fault_unknown_syscall_new:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-32(s0)
	or	a5,a5,3
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	fault_unknown_syscall_new, .-fault_unknown_syscall_new
	.section	.rodata
	.align	2
.LC26:
	.string	"((fault.words[0] >> 0) & 0x7) == fault_unknown_syscall"
	.text
	.align	2
	.type	fault_unknown_syscall_get_syscallNumber, @function
fault_unknown_syscall_get_syscallNumber:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,7
	li	a5,3
	beq	a4,a5,.L152
	lui	a5,%hi(__FUNCTION__.1881)
	add	a3,a5,%lo(__FUNCTION__.1881)
	li	a2,430
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC26)
	add	a0,a5,%lo(.LC26)
	call	_assert_fail
.L152:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	fault_unknown_syscall_get_syscallNumber, .-fault_unknown_syscall_get_syscallNumber
	.section	.rodata
	.align	2
.LC27:
	.string	"(code & ~0x1fffffff) == 0"
	.text
	.align	2
	.type	fault_user_exception_new, @function
fault_user_exception_new:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a4,-40(s0)
	li	a5,-536870912
	and	a5,a4,a5
	beqz	a5,.L155
	lui	a5,%hi(__FUNCTION__.1887)
	add	a3,a5,%lo(__FUNCTION__.1887)
	li	a2,444
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC27)
	add	a0,a5,%lo(.LC27)
	call	_assert_fail
.L155:
	lw	a4,-32(s0)
	lw	a5,-40(s0)
	sll	a5,a5,3
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	or	a5,a5,4
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	fault_user_exception_new, .-fault_user_exception_new
	.section	.rodata
	.align	2
.LC28:
	.string	"((fault.words[0] >> 0) & 0x7) == fault_user_exception"
	.text
	.align	2
	.type	fault_user_exception_get_number, @function
fault_user_exception_get_number:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,7
	li	a5,4
	beq	a4,a5,.L158
	lui	a5,%hi(__FUNCTION__.1891)
	add	a3,a5,%lo(__FUNCTION__.1891)
	li	a2,456
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC28)
	add	a0,a5,%lo(.LC28)
	call	_assert_fail
.L158:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	fault_user_exception_get_number, .-fault_user_exception_get_number
	.align	2
	.type	fault_user_exception_get_code, @function
fault_user_exception_get_code:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,7
	li	a5,4
	beq	a4,a5,.L161
	lui	a5,%hi(__FUNCTION__.1895)
	add	a3,a5,%lo(__FUNCTION__.1895)
	li	a2,464
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC28)
	add	a0,a5,%lo(.LC28)
	call	_assert_fail
.L161:
	lw	a5,-24(s0)
	srl	a5,a5,3
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	fault_user_exception_get_code, .-fault_user_exception_get_code
	.align	2
	.type	cap_get_capType, @function
cap_get_capType:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,14
	li	a5,14
	beq	a4,a5,.L164
	lw	a5,-24(s0)
	and	a5,a5,15
	j	.L165
.L164:
	lw	a5,-24(s0)
	and	a5,a5,255
.L165:
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_get_capType, .-cap_get_capType
	.align	2
	.type	cap_null_cap_new, @function
cap_null_cap_new:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	lw	a5,-32(s0)
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_null_cap_new, .-cap_null_cap_new
	.section	.rodata
	.align	2
.LC29:
	.string	"(capDeviceMemory & ~0x1) == 0"
	.align	2
.LC30:
	.string	"(capBlockSize & ~0x1f) == 0"
	.align	2
.LC31:
	.string	"(capPtr & ~0xfffffff0) == 0"
	.text
	.align	2
	.type	cap_untyped_cap_new, @function
cap_untyped_cap_new:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	lw	a5,-36(s0)
	and	a5,a5,-2
	beqz	a5,.L169
	lui	a5,%hi(__FUNCTION__.1938)
	add	a3,a5,%lo(__FUNCTION__.1938)
	li	a2,534
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC29)
	add	a0,a5,%lo(.LC29)
	call	_assert_fail
.L169:
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	and	a5,a5,1
	sll	a5,a5,5
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-40(s0)
	and	a5,a5,-32
	beqz	a5,.L170
	lui	a5,%hi(__FUNCTION__.1938)
	add	a3,a5,%lo(__FUNCTION__.1938)
	li	a2,537
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC30)
	add	a0,a5,%lo(.LC30)
	call	_assert_fail
.L170:
	lw	a4,-28(s0)
	lw	a5,-40(s0)
	and	a5,a5,31
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-44(s0)
	and	a5,a5,15
	beqz	a5,.L171
	lui	a5,%hi(__FUNCTION__.1938)
	add	a3,a5,%lo(__FUNCTION__.1938)
	li	a2,540
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC31)
	add	a0,a5,%lo(.LC31)
	call	_assert_fail
.L171:
	lw	a4,-32(s0)
	lw	a5,-44(s0)
	and	a5,a5,-16
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	or	a5,a5,2
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_untyped_cap_new, .-cap_untyped_cap_new
	.section	.rodata
	.align	2
.LC32:
	.string	"((cap.words[0] >> 0) & 0xf) == cap_untyped_cap"
	.text
	.align	2
	.type	cap_untyped_cap_get_capDeviceMemory, @function
cap_untyped_cap_get_capDeviceMemory:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,2
	beq	a4,a5,.L174
	lui	a5,%hi(__FUNCTION__.1942)
	add	a3,a5,%lo(__FUNCTION__.1942)
	li	a2,552
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC32)
	add	a0,a5,%lo(.LC32)
	call	_assert_fail
.L174:
	lw	a5,-20(s0)
	and	a5,a5,32
	srl	a5,a5,5
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_untyped_cap_get_capDeviceMemory, .-cap_untyped_cap_get_capDeviceMemory
	.align	2
	.type	cap_untyped_cap_get_capBlockSize, @function
cap_untyped_cap_get_capBlockSize:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,2
	beq	a4,a5,.L177
	lui	a5,%hi(__FUNCTION__.1946)
	add	a3,a5,%lo(__FUNCTION__.1946)
	li	a2,560
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC32)
	add	a0,a5,%lo(.LC32)
	call	_assert_fail
.L177:
	lw	a5,-20(s0)
	and	a5,a5,31
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_untyped_cap_get_capBlockSize, .-cap_untyped_cap_get_capBlockSize
	.section	.rodata
	.align	2
.LC33:
	.string	"((cap_ptr->words[0] >> 0) & 0xf) == cap_untyped_cap"
	.text
	.align	2
	.type	cap_untyped_cap_ptr_get_capBlockSize, @function
cap_untyped_cap_ptr_get_capBlockSize:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	and	a4,a5,15
	li	a5,2
	beq	a4,a5,.L180
	lui	a5,%hi(__FUNCTION__.1950)
	add	a3,a5,%lo(__FUNCTION__.1950)
	li	a2,568
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC33)
	add	a0,a5,%lo(.LC33)
	call	_assert_fail
.L180:
	lw	a5,-20(s0)
	lw	a5,4(a5)
	and	a5,a5,31
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_untyped_cap_ptr_get_capBlockSize, .-cap_untyped_cap_ptr_get_capBlockSize
	.align	2
	.type	cap_untyped_cap_get_capPtr, @function
cap_untyped_cap_get_capPtr:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,2
	beq	a4,a5,.L183
	lui	a5,%hi(__FUNCTION__.1954)
	add	a3,a5,%lo(__FUNCTION__.1954)
	li	a2,576
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC32)
	add	a0,a5,%lo(.LC32)
	call	_assert_fail
.L183:
	lw	a5,-24(s0)
	and	a5,a5,-16
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_untyped_cap_get_capPtr, .-cap_untyped_cap_get_capPtr
	.section	.rodata
	.align	2
.LC34:
	.string	"(capEPBadge & ~0xfffffff) == 0"
	.align	2
.LC35:
	.string	"(capCanGrant & ~0x1) == 0"
	.align	2
.LC36:
	.string	"(capCanSend & ~0x1) == 0"
	.align	2
.LC37:
	.string	"(capCanReceive & ~0x1) == 0"
	.align	2
.LC38:
	.string	"(capEPPtr & ~0xfffffff0) == 0"
	.text
	.align	2
	.type	cap_endpoint_cap_new, @function
cap_endpoint_cap_new:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	lw	a4,-36(s0)
	li	a5,-268435456
	and	a5,a4,a5
	beqz	a5,.L186
	lui	a5,%hi(__FUNCTION__.1963)
	add	a3,a5,%lo(__FUNCTION__.1963)
	li	a2,589
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC34)
	add	a0,a5,%lo(.LC34)
	call	_assert_fail
.L186:
	lw	a4,-32(s0)
	lw	a5,-36(s0)
	sll	a5,a5,4
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-40(s0)
	and	a5,a5,-2
	beqz	a5,.L187
	lui	a5,%hi(__FUNCTION__.1963)
	add	a3,a5,%lo(__FUNCTION__.1963)
	li	a2,592
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC35)
	add	a0,a5,%lo(.LC35)
	call	_assert_fail
.L187:
	lw	a4,-28(s0)
	lw	a5,-40(s0)
	and	a5,a5,1
	sll	a5,a5,2
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-44(s0)
	and	a5,a5,-2
	beqz	a5,.L188
	lui	a5,%hi(__FUNCTION__.1963)
	add	a3,a5,%lo(__FUNCTION__.1963)
	li	a2,595
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC36)
	add	a0,a5,%lo(.LC36)
	call	_assert_fail
.L188:
	lw	a4,-28(s0)
	lw	a5,-44(s0)
	and	a5,a5,1
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-48(s0)
	and	a5,a5,-2
	beqz	a5,.L189
	lui	a5,%hi(__FUNCTION__.1963)
	add	a3,a5,%lo(__FUNCTION__.1963)
	li	a2,598
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC37)
	add	a0,a5,%lo(.LC37)
	call	_assert_fail
.L189:
	lw	a4,-28(s0)
	lw	a5,-48(s0)
	and	a5,a5,1
	sll	a5,a5,1
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-52(s0)
	and	a5,a5,15
	beqz	a5,.L190
	lui	a5,%hi(__FUNCTION__.1963)
	add	a3,a5,%lo(__FUNCTION__.1963)
	li	a2,601
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC38)
	add	a0,a5,%lo(.LC38)
	call	_assert_fail
.L190:
	lw	a4,-28(s0)
	lw	a5,-52(s0)
	and	a5,a5,-16
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-32(s0)
	or	a5,a5,4
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	cap_endpoint_cap_new, .-cap_endpoint_cap_new
	.section	.rodata
	.align	2
.LC39:
	.string	"((cap.words[0] >> 0) & 0xf) == cap_endpoint_cap"
	.text
	.align	2
	.type	cap_endpoint_cap_get_capEPPtr, @function
cap_endpoint_cap_get_capEPPtr:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,4
	beq	a4,a5,.L193
	lui	a5,%hi(__FUNCTION__.1967)
	add	a3,a5,%lo(__FUNCTION__.1967)
	li	a2,613
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC39)
	add	a0,a5,%lo(.LC39)
	call	_assert_fail
.L193:
	lw	a5,-20(s0)
	and	a5,a5,-16
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_endpoint_cap_get_capEPPtr, .-cap_endpoint_cap_get_capEPPtr
	.align	2
	.type	cap_endpoint_cap_get_capCanGrant, @function
cap_endpoint_cap_get_capCanGrant:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,4
	beq	a4,a5,.L196
	lui	a5,%hi(__FUNCTION__.1971)
	add	a3,a5,%lo(__FUNCTION__.1971)
	li	a2,621
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC39)
	add	a0,a5,%lo(.LC39)
	call	_assert_fail
.L196:
	lw	a5,-20(s0)
	and	a5,a5,4
	srl	a5,a5,2
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_endpoint_cap_get_capCanGrant, .-cap_endpoint_cap_get_capCanGrant
	.align	2
	.type	cap_endpoint_cap_set_capCanGrant, @function
cap_endpoint_cap_set_capCanGrant:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	lw	a5,-40(s0)
	and	a4,a5,15
	li	a5,4
	beq	a4,a5,.L199
	lui	a5,%hi(__FUNCTION__.1976)
	add	a3,a5,%lo(__FUNCTION__.1976)
	li	a2,629
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC39)
	add	a0,a5,%lo(.LC39)
	call	_assert_fail
.L199:
	lw	a5,-44(s0)
	and	a5,a5,-2
	beqz	a5,.L200
	lui	a5,%hi(__FUNCTION__.1976)
	add	a3,a5,%lo(__FUNCTION__.1976)
	li	a2,631
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC15)
	add	a0,a5,%lo(.LC15)
	call	_assert_fail
.L200:
	lw	a5,-36(s0)
	and	a5,a5,-5
	sw	a5,-36(s0)
	lw	a4,-36(s0)
	lw	a5,-44(s0)
	sll	a5,a5,2
	and	a5,a5,4
	or	a5,a4,a5
	sw	a5,-36(s0)
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_endpoint_cap_set_capCanGrant, .-cap_endpoint_cap_set_capCanGrant
	.align	2
	.type	cap_endpoint_cap_get_capCanReceive, @function
cap_endpoint_cap_get_capCanReceive:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,4
	beq	a4,a5,.L203
	lui	a5,%hi(__FUNCTION__.1980)
	add	a3,a5,%lo(__FUNCTION__.1980)
	li	a2,641
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC39)
	add	a0,a5,%lo(.LC39)
	call	_assert_fail
.L203:
	lw	a5,-20(s0)
	and	a5,a5,2
	srl	a5,a5,1
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_endpoint_cap_get_capCanReceive, .-cap_endpoint_cap_get_capCanReceive
	.section	.rodata
	.align	2
.LC40:
	.string	"((~0x2 >> 1) & v) == 0"
	.text
	.align	2
	.type	cap_endpoint_cap_set_capCanReceive, @function
cap_endpoint_cap_set_capCanReceive:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	lw	a5,-40(s0)
	and	a4,a5,15
	li	a5,4
	beq	a4,a5,.L206
	lui	a5,%hi(__FUNCTION__.1985)
	add	a3,a5,%lo(__FUNCTION__.1985)
	li	a2,649
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC39)
	add	a0,a5,%lo(.LC39)
	call	_assert_fail
.L206:
	lw	a5,-44(s0)
	and	a5,a5,-2
	beqz	a5,.L207
	lui	a5,%hi(__FUNCTION__.1985)
	add	a3,a5,%lo(__FUNCTION__.1985)
	li	a2,651
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC40)
	add	a0,a5,%lo(.LC40)
	call	_assert_fail
.L207:
	lw	a5,-36(s0)
	and	a5,a5,-3
	sw	a5,-36(s0)
	lw	a4,-36(s0)
	lw	a5,-44(s0)
	sll	a5,a5,1
	and	a5,a5,2
	or	a5,a4,a5
	sw	a5,-36(s0)
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_endpoint_cap_set_capCanReceive, .-cap_endpoint_cap_set_capCanReceive
	.align	2
	.type	cap_endpoint_cap_get_capCanSend, @function
cap_endpoint_cap_get_capCanSend:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,4
	beq	a4,a5,.L210
	lui	a5,%hi(__FUNCTION__.1989)
	add	a3,a5,%lo(__FUNCTION__.1989)
	li	a2,661
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC39)
	add	a0,a5,%lo(.LC39)
	call	_assert_fail
.L210:
	lw	a5,-20(s0)
	and	a5,a5,1
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_endpoint_cap_get_capCanSend, .-cap_endpoint_cap_get_capCanSend
	.align	2
	.type	cap_endpoint_cap_set_capCanSend, @function
cap_endpoint_cap_set_capCanSend:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	lw	a5,-40(s0)
	and	a4,a5,15
	li	a5,4
	beq	a4,a5,.L213
	lui	a5,%hi(__FUNCTION__.1994)
	add	a3,a5,%lo(__FUNCTION__.1994)
	li	a2,669
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC39)
	add	a0,a5,%lo(.LC39)
	call	_assert_fail
.L213:
	lw	a5,-44(s0)
	and	a5,a5,-2
	beqz	a5,.L214
	lui	a5,%hi(__FUNCTION__.1994)
	add	a3,a5,%lo(__FUNCTION__.1994)
	li	a2,671
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC16)
	add	a0,a5,%lo(.LC16)
	call	_assert_fail
.L214:
	lw	a5,-36(s0)
	and	a5,a5,-2
	sw	a5,-36(s0)
	lw	a4,-36(s0)
	lw	a5,-44(s0)
	and	a5,a5,1
	or	a5,a4,a5
	sw	a5,-36(s0)
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_endpoint_cap_set_capCanSend, .-cap_endpoint_cap_set_capCanSend
	.align	2
	.type	cap_endpoint_cap_get_capEPBadge, @function
cap_endpoint_cap_get_capEPBadge:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,4
	beq	a4,a5,.L217
	lui	a5,%hi(__FUNCTION__.1998)
	add	a3,a5,%lo(__FUNCTION__.1998)
	li	a2,681
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC39)
	add	a0,a5,%lo(.LC39)
	call	_assert_fail
.L217:
	lw	a5,-24(s0)
	srl	a5,a5,4
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_endpoint_cap_get_capEPBadge, .-cap_endpoint_cap_get_capEPBadge
	.align	2
	.type	cap_endpoint_cap_set_capEPBadge, @function
cap_endpoint_cap_set_capEPBadge:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	lw	a5,-40(s0)
	and	a4,a5,15
	li	a5,4
	beq	a4,a5,.L220
	lui	a5,%hi(__FUNCTION__.2003)
	add	a3,a5,%lo(__FUNCTION__.2003)
	li	a2,689
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC39)
	add	a0,a5,%lo(.LC39)
	call	_assert_fail
.L220:
	lw	a5,-40(s0)
	and	a5,a5,15
	sw	a5,-40(s0)
	lw	a4,-40(s0)
	lw	a5,-44(s0)
	sll	a5,a5,4
	or	a5,a4,a5
	sw	a5,-40(s0)
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_endpoint_cap_set_capEPBadge, .-cap_endpoint_cap_set_capEPBadge
	.section	.rodata
	.align	2
.LC41:
	.string	"(capAEPBadge & ~0xfffffff) == 0"
	.align	2
.LC42:
	.string	"(capAEPCanReceive & ~0x1) == 0"
	.align	2
.LC43:
	.string	"(capAEPCanSend & ~0x1) == 0"
	.align	2
.LC44:
	.string	"(capAEPPtr & ~0xfffffff0) == 0"
	.text
	.align	2
	.type	cap_async_endpoint_cap_new, @function
cap_async_endpoint_cap_new:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	lw	a4,-36(s0)
	li	a5,-268435456
	and	a5,a4,a5
	beqz	a5,.L223
	lui	a5,%hi(__FUNCTION__.2011)
	add	a3,a5,%lo(__FUNCTION__.2011)
	li	a2,706
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC41)
	add	a0,a5,%lo(.LC41)
	call	_assert_fail
.L223:
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	sll	a5,a5,4
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-40(s0)
	and	a5,a5,-2
	beqz	a5,.L224
	lui	a5,%hi(__FUNCTION__.2011)
	add	a3,a5,%lo(__FUNCTION__.2011)
	li	a2,709
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC42)
	add	a0,a5,%lo(.LC42)
	call	_assert_fail
.L224:
	lw	a4,-28(s0)
	lw	a5,-40(s0)
	and	a5,a5,1
	sll	a5,a5,1
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-44(s0)
	and	a5,a5,-2
	beqz	a5,.L225
	lui	a5,%hi(__FUNCTION__.2011)
	add	a3,a5,%lo(__FUNCTION__.2011)
	li	a2,712
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC43)
	add	a0,a5,%lo(.LC43)
	call	_assert_fail
.L225:
	lw	a4,-28(s0)
	lw	a5,-44(s0)
	and	a5,a5,1
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-48(s0)
	and	a5,a5,15
	beqz	a5,.L226
	lui	a5,%hi(__FUNCTION__.2011)
	add	a3,a5,%lo(__FUNCTION__.2011)
	li	a2,715
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC44)
	add	a0,a5,%lo(.LC44)
	call	_assert_fail
.L226:
	lw	a4,-32(s0)
	lw	a5,-48(s0)
	and	a5,a5,-16
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	or	a5,a5,6
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_async_endpoint_cap_new, .-cap_async_endpoint_cap_new
	.section	.rodata
	.align	2
.LC45:
	.string	"((cap.words[0] >> 0) & 0xf) == cap_async_endpoint_cap"
	.text
	.align	2
	.type	cap_async_endpoint_cap_get_capAEPBadge, @function
cap_async_endpoint_cap_get_capAEPBadge:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,6
	beq	a4,a5,.L229
	lui	a5,%hi(__FUNCTION__.2015)
	add	a3,a5,%lo(__FUNCTION__.2015)
	li	a2,727
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC45)
	add	a0,a5,%lo(.LC45)
	call	_assert_fail
.L229:
	lw	a5,-20(s0)
	srl	a5,a5,4
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_async_endpoint_cap_get_capAEPBadge, .-cap_async_endpoint_cap_get_capAEPBadge
	.align	2
	.type	cap_async_endpoint_cap_set_capAEPBadge, @function
cap_async_endpoint_cap_set_capAEPBadge:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	lw	a5,-40(s0)
	and	a4,a5,15
	li	a5,6
	beq	a4,a5,.L232
	lui	a5,%hi(__FUNCTION__.2020)
	add	a3,a5,%lo(__FUNCTION__.2020)
	li	a2,735
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC45)
	add	a0,a5,%lo(.LC45)
	call	_assert_fail
.L232:
	lw	a5,-36(s0)
	and	a5,a5,15
	sw	a5,-36(s0)
	lw	a4,-36(s0)
	lw	a5,-44(s0)
	sll	a5,a5,4
	or	a5,a4,a5
	sw	a5,-36(s0)
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_async_endpoint_cap_set_capAEPBadge, .-cap_async_endpoint_cap_set_capAEPBadge
	.align	2
	.type	cap_async_endpoint_cap_get_capAEPCanReceive, @function
cap_async_endpoint_cap_get_capAEPCanReceive:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,6
	beq	a4,a5,.L235
	lui	a5,%hi(__FUNCTION__.2024)
	add	a3,a5,%lo(__FUNCTION__.2024)
	li	a2,747
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC45)
	add	a0,a5,%lo(.LC45)
	call	_assert_fail
.L235:
	lw	a5,-20(s0)
	and	a5,a5,2
	srl	a5,a5,1
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_async_endpoint_cap_get_capAEPCanReceive, .-cap_async_endpoint_cap_get_capAEPCanReceive
	.align	2
	.type	cap_async_endpoint_cap_set_capAEPCanReceive, @function
cap_async_endpoint_cap_set_capAEPCanReceive:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	lw	a5,-40(s0)
	and	a4,a5,15
	li	a5,6
	beq	a4,a5,.L238
	lui	a5,%hi(__FUNCTION__.2029)
	add	a3,a5,%lo(__FUNCTION__.2029)
	li	a2,755
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC45)
	add	a0,a5,%lo(.LC45)
	call	_assert_fail
.L238:
	lw	a5,-44(s0)
	and	a5,a5,-2
	beqz	a5,.L239
	lui	a5,%hi(__FUNCTION__.2029)
	add	a3,a5,%lo(__FUNCTION__.2029)
	li	a2,757
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC40)
	add	a0,a5,%lo(.LC40)
	call	_assert_fail
.L239:
	lw	a5,-36(s0)
	and	a5,a5,-3
	sw	a5,-36(s0)
	lw	a4,-36(s0)
	lw	a5,-44(s0)
	sll	a5,a5,1
	and	a5,a5,2
	or	a5,a4,a5
	sw	a5,-36(s0)
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_async_endpoint_cap_set_capAEPCanReceive, .-cap_async_endpoint_cap_set_capAEPCanReceive
	.align	2
	.type	cap_async_endpoint_cap_get_capAEPCanSend, @function
cap_async_endpoint_cap_get_capAEPCanSend:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,6
	beq	a4,a5,.L242
	lui	a5,%hi(__FUNCTION__.2033)
	add	a3,a5,%lo(__FUNCTION__.2033)
	li	a2,767
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC45)
	add	a0,a5,%lo(.LC45)
	call	_assert_fail
.L242:
	lw	a5,-20(s0)
	and	a5,a5,1
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_async_endpoint_cap_get_capAEPCanSend, .-cap_async_endpoint_cap_get_capAEPCanSend
	.align	2
	.type	cap_async_endpoint_cap_set_capAEPCanSend, @function
cap_async_endpoint_cap_set_capAEPCanSend:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	lw	a5,-40(s0)
	and	a4,a5,15
	li	a5,6
	beq	a4,a5,.L245
	lui	a5,%hi(__FUNCTION__.2038)
	add	a3,a5,%lo(__FUNCTION__.2038)
	li	a2,775
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC45)
	add	a0,a5,%lo(.LC45)
	call	_assert_fail
.L245:
	lw	a5,-44(s0)
	and	a5,a5,-2
	beqz	a5,.L246
	lui	a5,%hi(__FUNCTION__.2038)
	add	a3,a5,%lo(__FUNCTION__.2038)
	li	a2,777
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC16)
	add	a0,a5,%lo(.LC16)
	call	_assert_fail
.L246:
	lw	a5,-36(s0)
	and	a5,a5,-2
	sw	a5,-36(s0)
	lw	a4,-36(s0)
	lw	a5,-44(s0)
	and	a5,a5,1
	or	a5,a4,a5
	sw	a5,-36(s0)
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_async_endpoint_cap_set_capAEPCanSend, .-cap_async_endpoint_cap_set_capAEPCanSend
	.align	2
	.type	cap_async_endpoint_cap_get_capAEPPtr, @function
cap_async_endpoint_cap_get_capAEPPtr:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,6
	beq	a4,a5,.L249
	lui	a5,%hi(__FUNCTION__.2042)
	add	a3,a5,%lo(__FUNCTION__.2042)
	li	a2,787
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC45)
	add	a0,a5,%lo(.LC45)
	call	_assert_fail
.L249:
	lw	a5,-24(s0)
	and	a5,a5,-16
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_async_endpoint_cap_get_capAEPPtr, .-cap_async_endpoint_cap_get_capAEPPtr
	.section	.rodata
	.align	2
.LC46:
	.string	"(capInCDT & ~0x1) == 0"
	.align	2
.LC47:
	.string	"(capReplyMaster & ~0x1) == 0"
	.align	2
.LC48:
	.string	"(capTCBPtr & ~0xffffffe0) == 0"
	.text
	.align	2
	.type	cap_reply_cap_new, @function
cap_reply_cap_new:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	lw	a5,-36(s0)
	and	a5,a5,-2
	beqz	a5,.L252
	lui	a5,%hi(__FUNCTION__.2049)
	add	a3,a5,%lo(__FUNCTION__.2049)
	li	a2,800
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC46)
	add	a0,a5,%lo(.LC46)
	call	_assert_fail
.L252:
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	and	a5,a5,1
	sll	a5,a5,1
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-40(s0)
	and	a5,a5,-2
	beqz	a5,.L253
	lui	a5,%hi(__FUNCTION__.2049)
	add	a3,a5,%lo(__FUNCTION__.2049)
	li	a2,803
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC47)
	add	a0,a5,%lo(.LC47)
	call	_assert_fail
.L253:
	lw	a4,-28(s0)
	lw	a5,-40(s0)
	and	a5,a5,1
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-44(s0)
	and	a5,a5,31
	beqz	a5,.L254
	lui	a5,%hi(__FUNCTION__.2049)
	add	a3,a5,%lo(__FUNCTION__.2049)
	li	a2,806
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC48)
	add	a0,a5,%lo(.LC48)
	call	_assert_fail
.L254:
	lw	a4,-32(s0)
	lw	a5,-44(s0)
	and	a5,a5,-32
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	or	a5,a5,8
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_reply_cap_new, .-cap_reply_cap_new
	.section	.rodata
	.align	2
.LC49:
	.string	"((cap.words[0] >> 0) & 0xf) == cap_reply_cap"
	.text
	.align	2
	.type	cap_reply_cap_get_capInCDT, @function
cap_reply_cap_get_capInCDT:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,8
	beq	a4,a5,.L257
	lui	a5,%hi(__FUNCTION__.2053)
	add	a3,a5,%lo(__FUNCTION__.2053)
	li	a2,818
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC49)
	add	a0,a5,%lo(.LC49)
	call	_assert_fail
.L257:
	lw	a5,-20(s0)
	and	a5,a5,2
	srl	a5,a5,1
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_reply_cap_get_capInCDT, .-cap_reply_cap_get_capInCDT
	.section	.rodata
	.align	2
.LC50:
	.string	"((cap_ptr->words[0] >> 0) & 0xf) == cap_reply_cap"
	.text
	.align	2
	.type	cap_reply_cap_ptr_set_capInCDT, @function
cap_reply_cap_ptr_set_capInCDT:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	and	a4,a5,15
	li	a5,8
	beq	a4,a5,.L260
	lui	a5,%hi(__FUNCTION__.2058)
	add	a3,a5,%lo(__FUNCTION__.2058)
	li	a2,827
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC50)
	add	a0,a5,%lo(.LC50)
	call	_assert_fail
.L260:
	lw	a5,-24(s0)
	and	a5,a5,-2
	beqz	a5,.L261
	lui	a5,%hi(__FUNCTION__.2058)
	add	a3,a5,%lo(__FUNCTION__.2058)
	li	a2,830
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC40)
	add	a0,a5,%lo(.LC40)
	call	_assert_fail
.L261:
	lw	a5,-20(s0)
	lw	a5,4(a5)
	and	a4,a5,-3
	lw	a5,-20(s0)
	sw	a4,4(a5)
	lw	a5,-20(s0)
	lw	a4,4(a5)
	lw	a5,-24(s0)
	sll	a5,a5,1
	and	a5,a5,2
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,4(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_reply_cap_ptr_set_capInCDT, .-cap_reply_cap_ptr_set_capInCDT
	.align	2
	.type	cap_reply_cap_get_capReplyMaster, @function
cap_reply_cap_get_capReplyMaster:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,8
	beq	a4,a5,.L263
	lui	a5,%hi(__FUNCTION__.2062)
	add	a3,a5,%lo(__FUNCTION__.2062)
	li	a2,839
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC49)
	add	a0,a5,%lo(.LC49)
	call	_assert_fail
.L263:
	lw	a5,-20(s0)
	and	a5,a5,1
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_reply_cap_get_capReplyMaster, .-cap_reply_cap_get_capReplyMaster
	.align	2
	.type	cap_reply_cap_get_capTCBPtr, @function
cap_reply_cap_get_capTCBPtr:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,8
	beq	a4,a5,.L266
	lui	a5,%hi(__FUNCTION__.2066)
	add	a3,a5,%lo(__FUNCTION__.2066)
	li	a2,847
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC49)
	add	a0,a5,%lo(.LC49)
	call	_assert_fail
.L266:
	lw	a5,-24(s0)
	and	a5,a5,-32
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_reply_cap_get_capTCBPtr, .-cap_reply_cap_get_capTCBPtr
	.section	.rodata
	.align	2
.LC51:
	.string	"((~0xffffffe0 << 0) & v) == 0"
	.text
	.align	2
	.type	cap_reply_cap_ptr_set_capTCBPtr, @function
cap_reply_cap_ptr_set_capTCBPtr:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	and	a4,a5,15
	li	a5,8
	beq	a4,a5,.L269
	lui	a5,%hi(__FUNCTION__.2071)
	add	a3,a5,%lo(__FUNCTION__.2071)
	li	a2,856
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC50)
	add	a0,a5,%lo(.LC50)
	call	_assert_fail
.L269:
	lw	a5,-24(s0)
	and	a5,a5,31
	beqz	a5,.L270
	lui	a5,%hi(__FUNCTION__.2071)
	add	a3,a5,%lo(__FUNCTION__.2071)
	li	a2,859
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC51)
	add	a0,a5,%lo(.LC51)
	call	_assert_fail
.L270:
	lw	a5,-20(s0)
	lw	a5,0(a5)
	and	a4,a5,31
	lw	a5,-20(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	lw	a4,0(a5)
	lw	a5,-24(s0)
	and	a5,a5,-32
	or	a4,a4,a5
	lw	a5,-20(s0)
	sw	a4,0(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_reply_cap_ptr_set_capTCBPtr, .-cap_reply_cap_ptr_set_capTCBPtr
	.section	.rodata
	.align	2
.LC52:
	.string	"(capCNodeRadix & ~0x1f) == 0"
	.align	2
.LC53:
	.string	"(capCNodeGuardSize & ~0x1f) == 0"
	.align	2
.LC54:
	.string	"(capCNodeGuard & ~0x3ffff) == 0"
	.align	2
.LC55:
	.string	"(capCNodePtr & ~0xffffffe0) == 0"
	.text
	.align	2
	.type	cap_cnode_cap_new, @function
cap_cnode_cap_new:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	lw	a5,-36(s0)
	and	a5,a5,-32
	beqz	a5,.L272
	lui	a5,%hi(__FUNCTION__.2079)
	add	a3,a5,%lo(__FUNCTION__.2079)
	li	a2,873
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC52)
	add	a0,a5,%lo(.LC52)
	call	_assert_fail
.L272:
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	and	a5,a5,31
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-40(s0)
	and	a5,a5,-32
	beqz	a5,.L273
	lui	a5,%hi(__FUNCTION__.2079)
	add	a3,a5,%lo(__FUNCTION__.2079)
	li	a2,876
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC53)
	add	a0,a5,%lo(.LC53)
	call	_assert_fail
.L273:
	lw	a4,-28(s0)
	lw	a5,-40(s0)
	sll	a5,a5,27
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a4,-44(s0)
	li	a5,-262144
	and	a5,a4,a5
	beqz	a5,.L274
	lui	a5,%hi(__FUNCTION__.2079)
	add	a3,a5,%lo(__FUNCTION__.2079)
	li	a2,879
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC54)
	add	a0,a5,%lo(.LC54)
	call	_assert_fail
.L274:
	lw	a4,-28(s0)
	lw	a3,-44(s0)
	li	a5,262144
	add	a5,a5,-1
	and	a5,a3,a5
	sll	a5,a5,5
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-48(s0)
	and	a5,a5,31
	beqz	a5,.L275
	lui	a5,%hi(__FUNCTION__.2079)
	add	a3,a5,%lo(__FUNCTION__.2079)
	li	a2,882
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC55)
	add	a0,a5,%lo(.LC55)
	call	_assert_fail
.L275:
	lw	a4,-32(s0)
	lw	a5,-48(s0)
	and	a5,a5,-32
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	or	a5,a5,10
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_cnode_cap_new, .-cap_cnode_cap_new
	.section	.rodata
	.align	2
.LC56:
	.string	"((cap.words[0] >> 0) & 0xf) == cap_cnode_cap"
	.text
	.align	2
	.type	cap_cnode_cap_get_capCNodeGuardSize, @function
cap_cnode_cap_get_capCNodeGuardSize:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,10
	beq	a4,a5,.L278
	lui	a5,%hi(__FUNCTION__.2083)
	add	a3,a5,%lo(__FUNCTION__.2083)
	li	a2,894
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC56)
	add	a0,a5,%lo(.LC56)
	call	_assert_fail
.L278:
	lw	a5,-20(s0)
	srl	a5,a5,27
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_cnode_cap_get_capCNodeGuardSize, .-cap_cnode_cap_get_capCNodeGuardSize
	.align	2
	.type	cap_cnode_cap_set_capCNodeGuardSize, @function
cap_cnode_cap_set_capCNodeGuardSize:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	lw	a5,-40(s0)
	and	a4,a5,15
	li	a5,10
	beq	a4,a5,.L281
	lui	a5,%hi(__FUNCTION__.2088)
	add	a3,a5,%lo(__FUNCTION__.2088)
	li	a2,902
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC56)
	add	a0,a5,%lo(.LC56)
	call	_assert_fail
.L281:
	lw	a4,-36(s0)
	li	a5,134217728
	add	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-36(s0)
	lw	a4,-36(s0)
	lw	a5,-44(s0)
	sll	a5,a5,27
	or	a5,a4,a5
	sw	a5,-36(s0)
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_cnode_cap_set_capCNodeGuardSize, .-cap_cnode_cap_set_capCNodeGuardSize
	.section	.rodata
	.align	2
.LC57:
	.string	"((~0x7fffe0 >> 5) & v) == 0"
	.text
	.align	2
	.type	cap_cnode_cap_set_capCNodeGuard, @function
cap_cnode_cap_set_capCNodeGuard:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	lw	a5,-40(s0)
	and	a4,a5,15
	li	a5,10
	beq	a4,a5,.L284
	lui	a5,%hi(__FUNCTION__.2093)
	add	a3,a5,%lo(__FUNCTION__.2093)
	li	a2,914
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC56)
	add	a0,a5,%lo(.LC56)
	call	_assert_fail
.L284:
	lw	a4,-44(s0)
	li	a5,-262144
	and	a5,a4,a5
	beqz	a5,.L285
	lui	a5,%hi(__FUNCTION__.2093)
	add	a3,a5,%lo(__FUNCTION__.2093)
	li	a2,916
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC57)
	add	a0,a5,%lo(.LC57)
	call	_assert_fail
.L285:
	lw	a4,-36(s0)
	li	a5,-8388608
	add	a5,a5,31
	and	a5,a4,a5
	sw	a5,-36(s0)
	lw	a4,-36(s0)
	lw	a5,-44(s0)
	sll	a3,a5,5
	li	a5,8388608
	add	a5,a5,-32
	and	a5,a3,a5
	or	a5,a4,a5
	sw	a5,-36(s0)
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_cnode_cap_set_capCNodeGuard, .-cap_cnode_cap_set_capCNodeGuard
	.align	2
	.type	cap_cnode_cap_get_capCNodeRadix, @function
cap_cnode_cap_get_capCNodeRadix:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,10
	beq	a4,a5,.L288
	lui	a5,%hi(__FUNCTION__.2097)
	add	a3,a5,%lo(__FUNCTION__.2097)
	li	a2,926
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC56)
	add	a0,a5,%lo(.LC56)
	call	_assert_fail
.L288:
	lw	a5,-20(s0)
	and	a5,a5,31
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_cnode_cap_get_capCNodeRadix, .-cap_cnode_cap_get_capCNodeRadix
	.align	2
	.type	cap_cnode_cap_get_capCNodePtr, @function
cap_cnode_cap_get_capCNodePtr:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,10
	beq	a4,a5,.L291
	lui	a5,%hi(__FUNCTION__.2101)
	add	a3,a5,%lo(__FUNCTION__.2101)
	li	a2,934
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC56)
	add	a0,a5,%lo(.LC56)
	call	_assert_fail
.L291:
	lw	a5,-24(s0)
	and	a5,a5,-32
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_cnode_cap_get_capCNodePtr, .-cap_cnode_cap_get_capCNodePtr
	.section	.rodata
	.align	2
.LC58:
	.string	"(capTCBPtr & ~0xfffffff0) == 0"
	.text
	.align	2
	.type	cap_thread_cap_new, @function
cap_thread_cap_new:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	lw	a5,-36(s0)
	and	a5,a5,15
	beqz	a5,.L294
	lui	a5,%hi(__FUNCTION__.2106)
	add	a3,a5,%lo(__FUNCTION__.2106)
	li	a2,947
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC58)
	add	a0,a5,%lo(.LC58)
	call	_assert_fail
.L294:
	lw	a4,-32(s0)
	lw	a5,-36(s0)
	and	a5,a5,-16
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	or	a5,a5,12
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_thread_cap_new, .-cap_thread_cap_new
	.section	.rodata
	.align	2
.LC59:
	.string	"((cap.words[0] >> 0) & 0xf) == cap_thread_cap"
	.text
	.align	2
	.type	cap_thread_cap_get_capTCBPtr, @function
cap_thread_cap_get_capTCBPtr:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,12
	beq	a4,a5,.L297
	lui	a5,%hi(__FUNCTION__.2110)
	add	a3,a5,%lo(__FUNCTION__.2110)
	li	a2,959
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC59)
	add	a0,a5,%lo(.LC59)
	call	_assert_fail
.L297:
	lw	a5,-24(s0)
	and	a5,a5,-16
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_thread_cap_get_capTCBPtr, .-cap_thread_cap_get_capTCBPtr
	.section	.rodata
	.align	2
.LC60:
	.string	"((cap.words[0] >> 0) & 0xf) == cap_frame_cap"
	.text
	.align	2
	.type	cap_frame_cap_get_capFMappedObjectHigh, @function
cap_frame_cap_get_capFMappedObjectHigh:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,1
	beq	a4,a5,.L300
	lui	a5,%hi(__FUNCTION__.2114)
	add	a3,a5,%lo(__FUNCTION__.2114)
	li	a2,967
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC60)
	add	a0,a5,%lo(.LC60)
	call	_assert_fail
.L300:
	lw	a5,-20(s0)
	srl	a5,a5,12
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_frame_cap_get_capFMappedObjectHigh, .-cap_frame_cap_get_capFMappedObjectHigh
	.align	2
	.type	cap_frame_cap_get_capFMappedIndex, @function
cap_frame_cap_get_capFMappedIndex:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,1
	beq	a4,a5,.L303
	lui	a5,%hi(__FUNCTION__.2128)
	add	a3,a5,%lo(__FUNCTION__.2128)
	li	a2,1000
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC60)
	add	a0,a5,%lo(.LC60)
	call	_assert_fail
.L303:
	lw	a4,-20(s0)
	li	a5,4096
	add	a5,a5,-1
	and	a5,a4,a5
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_frame_cap_get_capFMappedIndex, .-cap_frame_cap_get_capFMappedIndex
	.align	2
	.type	cap_frame_cap_get_capFSize, @function
cap_frame_cap_get_capFSize:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,1
	beq	a4,a5,.L306
	lui	a5,%hi(__FUNCTION__.2132)
	add	a3,a5,%lo(__FUNCTION__.2132)
	li	a2,1008
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC60)
	add	a0,a5,%lo(.LC60)
	call	_assert_fail
.L306:
	lw	a5,-24(s0)
	srl	a5,a5,29
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_frame_cap_get_capFSize, .-cap_frame_cap_get_capFSize
	.align	2
	.type	cap_frame_cap_get_capFMappedObjectLow, @function
cap_frame_cap_get_capFMappedObjectLow:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,1
	beq	a4,a5,.L309
	lui	a5,%hi(__FUNCTION__.2136)
	add	a3,a5,%lo(__FUNCTION__.2136)
	li	a2,1016
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC60)
	add	a0,a5,%lo(.LC60)
	call	_assert_fail
.L309:
	lw	a4,-24(s0)
	li	a5,50331648
	and	a5,a4,a5
	srl	a5,a5,24
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_frame_cap_get_capFMappedObjectLow, .-cap_frame_cap_get_capFMappedObjectLow
	.align	2
	.type	cap_frame_cap_get_capFBasePtr, @function
cap_frame_cap_get_capFBasePtr:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,1
	beq	a4,a5,.L312
	lui	a5,%hi(__FUNCTION__.2150)
	add	a3,a5,%lo(__FUNCTION__.2150)
	li	a2,1049
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC60)
	add	a0,a5,%lo(.LC60)
	call	_assert_fail
.L312:
	lw	a4,-24(s0)
	li	a5,16777216
	add	a5,a5,-16
	and	a5,a4,a5
	sll	a5,a5,8
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_frame_cap_get_capFBasePtr, .-cap_frame_cap_get_capFBasePtr
	.section	.rodata
	.align	2
.LC61:
	.string	"((cap.words[0] >> 0) & 0xf) == cap_page_table_cap"
	.text
	.align	2
	.type	cap_page_table_cap_get_capPTMappedObject, @function
cap_page_table_cap_get_capPTMappedObject:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,3
	beq	a4,a5,.L315
	lui	a5,%hi(__FUNCTION__.2154)
	add	a3,a5,%lo(__FUNCTION__.2154)
	li	a2,1057
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC61)
	add	a0,a5,%lo(.LC61)
	call	_assert_fail
.L315:
	lw	a4,-20(s0)
	li	a5,-4096
	and	a5,a4,a5
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_page_table_cap_get_capPTMappedObject, .-cap_page_table_cap_get_capPTMappedObject
	.align	2
	.type	cap_page_table_cap_get_capPTMappedIndex, @function
cap_page_table_cap_get_capPTMappedIndex:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,3
	beq	a4,a5,.L318
	lui	a5,%hi(__FUNCTION__.2158)
	add	a3,a5,%lo(__FUNCTION__.2158)
	li	a2,1065
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC61)
	add	a0,a5,%lo(.LC61)
	call	_assert_fail
.L318:
	lw	a4,-20(s0)
	li	a5,4096
	add	a5,a5,-1
	and	a5,a4,a5
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_page_table_cap_get_capPTMappedIndex, .-cap_page_table_cap_get_capPTMappedIndex
	.align	2
	.type	cap_page_table_cap_get_capPTBasePtr, @function
cap_page_table_cap_get_capPTBasePtr:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,3
	beq	a4,a5,.L321
	lui	a5,%hi(__FUNCTION__.2162)
	add	a3,a5,%lo(__FUNCTION__.2162)
	li	a2,1073
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC61)
	add	a0,a5,%lo(.LC61)
	call	_assert_fail
.L321:
	lw	a5,-24(s0)
	and	a5,a5,-1024
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_page_table_cap_get_capPTBasePtr, .-cap_page_table_cap_get_capPTBasePtr
	.section	.rodata
	.align	2
.LC62:
	.string	"((cap.words[0] >> 0) & 0xf) == cap_page_directory_cap"
	.text
	.align	2
	.type	cap_page_directory_cap_get_capPDBasePtr, @function
cap_page_directory_cap_get_capPDBasePtr:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,15
	li	a5,5
	beq	a4,a5,.L324
	lui	a5,%hi(__FUNCTION__.2166)
	add	a3,a5,%lo(__FUNCTION__.2166)
	li	a2,1081
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC62)
	add	a0,a5,%lo(.LC62)
	call	_assert_fail
.L324:
	lw	a4,-24(s0)
	li	a5,-16384
	and	a5,a4,a5
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_page_directory_cap_get_capPDBasePtr, .-cap_page_directory_cap_get_capPDBasePtr
	.section	.rodata
	.align	2
.LC63:
	.string	"(capIRQ & ~0xff) == 0"
	.text
	.align	2
	.type	cap_irq_handler_cap_new, @function
cap_irq_handler_cap_new:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	lw	a5,-36(s0)
	and	a5,a5,-256
	beqz	a5,.L327
	lui	a5,%hi(__FUNCTION__.2171)
	add	a3,a5,%lo(__FUNCTION__.2171)
	li	a2,1094
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC63)
	add	a0,a5,%lo(.LC63)
	call	_assert_fail
.L327:
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	and	a5,a5,255
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-32(s0)
	or	a5,a5,30
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_irq_handler_cap_new, .-cap_irq_handler_cap_new
	.section	.rodata
	.align	2
.LC64:
	.string	"((cap.words[0] >> 0) & 0xff) == cap_irq_handler_cap"
	.text
	.align	2
	.type	cap_irq_handler_cap_get_capIRQ, @function
cap_irq_handler_cap_get_capIRQ:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,255
	li	a5,30
	beq	a4,a5,.L330
	lui	a5,%hi(__FUNCTION__.2175)
	add	a3,a5,%lo(__FUNCTION__.2175)
	li	a2,1106
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC64)
	add	a0,a5,%lo(.LC64)
	call	_assert_fail
.L330:
	lw	a5,-20(s0)
	and	a5,a5,255
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_irq_handler_cap_get_capIRQ, .-cap_irq_handler_cap_get_capIRQ
	.section	.rodata
	.align	2
.LC65:
	.string	"(capZombieType & ~0x3f) == 0"
	.text
	.align	2
	.type	cap_zombie_cap_new, @function
cap_zombie_cap_new:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-40(s0)
	and	a5,a5,-64
	beqz	a5,.L333
	lui	a5,%hi(__FUNCTION__.2181)
	add	a3,a5,%lo(__FUNCTION__.2181)
	li	a2,1120
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC65)
	add	a0,a5,%lo(.LC65)
	call	_assert_fail
.L333:
	lw	a4,-32(s0)
	lw	a5,-40(s0)
	and	a5,a5,63
	sll	a5,a5,8
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	or	a5,a5,46
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_zombie_cap_new, .-cap_zombie_cap_new
	.section	.rodata
	.align	2
.LC66:
	.string	"((cap.words[0] >> 0) & 0xff) == cap_zombie_cap"
	.text
	.align	2
	.type	cap_zombie_cap_get_capZombieID, @function
cap_zombie_cap_get_capZombieID:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,255
	li	a5,46
	beq	a4,a5,.L336
	lui	a5,%hi(__FUNCTION__.2185)
	add	a3,a5,%lo(__FUNCTION__.2185)
	li	a2,1132
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC66)
	add	a0,a5,%lo(.LC66)
	call	_assert_fail
.L336:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_zombie_cap_get_capZombieID, .-cap_zombie_cap_get_capZombieID
	.align	2
	.type	cap_zombie_cap_set_capZombieID, @function
cap_zombie_cap_set_capZombieID:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	lw	a5,-40(s0)
	and	a4,a5,255
	li	a5,46
	beq	a4,a5,.L339
	lui	a5,%hi(__FUNCTION__.2190)
	add	a3,a5,%lo(__FUNCTION__.2190)
	li	a2,1140
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC66)
	add	a0,a5,%lo(.LC66)
	call	_assert_fail
.L339:
	sw	zero,-36(s0)
	lw	a4,-36(s0)
	lw	a5,-44(s0)
	or	a5,a4,a5
	sw	a5,-36(s0)
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_zombie_cap_set_capZombieID, .-cap_zombie_cap_set_capZombieID
	.align	2
	.type	cap_zombie_cap_get_capZombieType, @function
cap_zombie_cap_get_capZombieType:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-24(s0)
	and	a4,a5,255
	li	a5,46
	beq	a4,a5,.L342
	lui	a5,%hi(__FUNCTION__.2194)
	add	a3,a5,%lo(__FUNCTION__.2194)
	li	a2,1152
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC66)
	add	a0,a5,%lo(.LC66)
	call	_assert_fail
.L342:
	lw	a4,-24(s0)
	li	a5,16384
	add	a5,a5,-256
	and	a5,a4,a5
	srl	a5,a5,8
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_zombie_cap_get_capZombieType, .-cap_zombie_cap_get_capZombieType
	.align	2
	.type	cap_domain_cap_new, @function
cap_domain_cap_new:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	lw	a5,-32(s0)
	or	a5,a5,62
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_domain_cap_new, .-cap_domain_cap_new
	.align	2
	.type	lookup_fault_invalid_root_new, @function
lookup_fault_invalid_root_new:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	lw	a5,-32(s0)
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	lookup_fault_invalid_root_new, .-lookup_fault_invalid_root_new
	.section	.rodata
	.align	2
.LC67:
	.string	"(bitsLeft & ~0x3f) == 0"
	.text
	.align	2
	.type	lookup_fault_missing_capability_new, @function
lookup_fault_missing_capability_new:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	lw	a5,-36(s0)
	and	a5,a5,-64
	beqz	a5,.L349
	lui	a5,%hi(__FUNCTION__.2239)
	add	a3,a5,%lo(__FUNCTION__.2239)
	li	a2,1243
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC67)
	add	a0,a5,%lo(.LC67)
	call	_assert_fail
.L349:
	lw	a4,-32(s0)
	lw	a5,-36(s0)
	sll	a5,a5,2
	and	a5,a5,255
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	or	a5,a5,1
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	lookup_fault_missing_capability_new, .-lookup_fault_missing_capability_new
	.section	.rodata
	.align	2
.LC68:
	.string	"(bitsFound & ~0x3f) == 0"
	.text
	.align	2
	.type	lookup_fault_depth_mismatch_new, @function
lookup_fault_depth_mismatch_new:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	lw	a5,-36(s0)
	and	a5,a5,-64
	beqz	a5,.L352
	lui	a5,%hi(__FUNCTION__.2245)
	add	a3,a5,%lo(__FUNCTION__.2245)
	li	a2,1260
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC68)
	add	a0,a5,%lo(.LC68)
	call	_assert_fail
.L352:
	lw	a4,-32(s0)
	lw	a5,-36(s0)
	and	a5,a5,63
	sll	a5,a5,8
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-40(s0)
	and	a5,a5,-64
	beqz	a5,.L353
	lui	a5,%hi(__FUNCTION__.2245)
	add	a3,a5,%lo(__FUNCTION__.2245)
	li	a2,1263
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC67)
	add	a0,a5,%lo(.LC67)
	call	_assert_fail
.L353:
	lw	a4,-32(s0)
	lw	a5,-40(s0)
	sll	a5,a5,2
	and	a5,a5,255
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	or	a5,a5,2
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	lookup_fault_depth_mismatch_new, .-lookup_fault_depth_mismatch_new
	.align	2
	.type	lookup_fault_guard_mismatch_new, @function
lookup_fault_guard_mismatch_new:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-40(s0)
	and	a5,a5,-64
	beqz	a5,.L356
	lui	a5,%hi(__FUNCTION__.2252)
	add	a3,a5,%lo(__FUNCTION__.2252)
	li	a2,1281
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC67)
	add	a0,a5,%lo(.LC67)
	call	_assert_fail
.L356:
	lw	a4,-32(s0)
	lw	a5,-40(s0)
	and	a5,a5,63
	sll	a5,a5,8
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-44(s0)
	and	a5,a5,-64
	beqz	a5,.L357
	lui	a5,%hi(__FUNCTION__.2252)
	add	a3,a5,%lo(__FUNCTION__.2252)
	li	a2,1284
	lui	a5,%hi(.LC11)
	add	a1,a5,%lo(.LC11)
	lui	a5,%hi(.LC68)
	add	a0,a5,%lo(.LC68)
	call	_assert_fail
.L357:
	lw	a4,-32(s0)
	lw	a5,-44(s0)
	sll	a5,a5,2
	and	a5,a5,255
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	or	a5,a5,3
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	lookup_fault_guard_mismatch_new, .-lookup_fault_guard_mismatch_new
	.section	.rodata
	.align	2
.LC69:
	.string	"/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/machine/hardware.h"
	.align	2
.LC70:
	.string	"Invalid page size"
	.text
	.align	2
	.type	pageBitsForSize, @function
pageBitsForSize:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	li	a4,1
	beq	a5,a4,.L361
	li	a4,1
	bltu	a5,a4,.L362
	li	a4,2
	beq	a5,a4,.L363
	li	a4,3
	beq	a5,a4,.L364
	j	.L366
.L362:
	li	a5,12
	j	.L365
.L361:
	li	a5,16
	j	.L365
.L363:
	li	a5,20
	j	.L365
.L364:
	li	a5,24
	j	.L365
.L366:
	lui	a5,%hi(__func__.2276)
	add	a3,a5,%lo(__func__.2276)
	li	a2,64
	lui	a5,%hi(.LC69)
	add	a1,a5,%lo(.LC69)
	lui	a5,%hi(.LC70)
	add	a0,a5,%lo(.LC70)
	call	_fail
.L365:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	pageBitsForSize, .-pageBitsForSize
	.align	2
	.type	Arch_initContext, @function
Arch_initContext:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	Arch_initContext, .-Arch_initContext
	.align	2
	.type	sanitiseRegister, @function
sanitiseRegister:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	mv	a5,zero
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	sanitiseRegister, .-sanitiseRegister
	.align	2
	.type	cap_frame_cap_get_capFMappedObject, @function
cap_frame_cap_get_capFMappedObject:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_frame_cap_get_capFMappedObjectHigh
	mv	a5,a0
	sll	s1,a5,12
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_frame_cap_get_capFMappedObjectLow
	mv	a5,a0
	sll	a5,a5,10
	add	a5,s1,a5
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	lw	s1,20(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_frame_cap_get_capFMappedObject, .-cap_frame_cap_get_capFMappedObject
	.section	.rodata
	.align	2
.LC71:
	.string	"/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/object/structures.h"
	.align	2
.LC72:
	.string	"!\"Unknown cap type\""
	.text
	.align	2
	.type	cap_get_archCapSizeBits, @function
cap_get_archCapSizeBits:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_capType
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	li	a4,3
	beq	a5,a4,.L374
	li	a4,5
	beq	a5,a4,.L375
	li	a4,1
	bne	a5,a4,.L378
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_frame_cap_get_capFSize
	mv	a5,a0
	mv	a0,a5
	call	pageBitsForSize
	mv	a5,a0
	j	.L377
.L374:
	li	a5,10
	j	.L377
.L375:
	li	a5,14
	j	.L377
.L378:
	lui	a5,%hi(__FUNCTION__.2382)
	add	a3,a5,%lo(__FUNCTION__.2382)
	li	a2,139
	lui	a5,%hi(.LC71)
	add	a1,a5,%lo(.LC71)
	lui	a5,%hi(.LC72)
	add	a0,a5,%lo(.LC72)
	call	_assert_fail
.L377:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_get_archCapSizeBits, .-cap_get_archCapSizeBits
	.align	2
	.type	cap_get_archCapPtr, @function
cap_get_archCapPtr:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_capType
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	li	a4,3
	beq	a5,a4,.L381
	li	a4,5
	beq	a5,a4,.L382
	li	a4,1
	bne	a5,a4,.L385
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_frame_cap_get_capFBasePtr
	mv	a5,a0
	j	.L384
.L381:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_page_table_cap_get_capPTBasePtr
	mv	a5,a0
	j	.L384
.L382:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_page_directory_cap_get_capPDBasePtr
	mv	a5,a0
	j	.L384
.L385:
	lui	a5,%hi(__FUNCTION__.2391)
	add	a3,a5,%lo(__FUNCTION__.2391)
	li	a2,166
	lui	a5,%hi(.LC71)
	add	a1,a5,%lo(.LC71)
	lui	a5,%hi(.LC72)
	add	a0,a5,%lo(.LC72)
	call	_assert_fail
.L384:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_get_archCapPtr, .-cap_get_archCapPtr
	.align	2
	.type	cap_zombie_cap_get_capZombieBits, @function
cap_zombie_cap_get_capZombieBits:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_zombie_cap_get_capZombieType
	sw	a0,-20(s0)
	lw	a4,-20(s0)
	li	a5,32
	bne	a4,a5,.L387
	li	a5,4
	j	.L388
.L387:
	lw	a5,-20(s0)
	and	a5,a5,31
.L388:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_zombie_cap_get_capZombieBits, .-cap_zombie_cap_get_capZombieBits
	.align	2
	.type	Zombie_new, @function
Zombie_new:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s2,36(sp)
	sw	s3,32(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	lw	a4,-40(s0)
	li	a5,32
	bne	a4,a5,.L390
	li	a5,31
	sw	a5,-20(s0)
	j	.L391
.L390:
	lw	a5,-40(s0)
	add	a5,a5,1
	li	a4,1
	sll	a5,a4,a5
	add	a5,a5,-1
	sw	a5,-20(s0)
.L391:
	lw	a4,-44(s0)
	lw	a5,-36(s0)
	xor	a4,a4,a5
	lw	a5,-20(s0)
	and	a4,a4,a5
	lw	a5,-44(s0)
	xor	a5,a4,a5
	lw	a1,-40(s0)
	mv	a0,a5
	call	cap_zombie_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-28(s0)
	sw	a5,-24(s0)
	mv	a4,zero
	lw	a4,-28(s0)
	mv	a5,zero
	lw	a5,-24(s0)
	mv	s2,a4
	mv	s3,a5
	mv	a4,s2
	mv	a5,s3
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s2,36(sp)
	lw	s3,32(sp)
	add	sp,sp,48
	jr	ra
	.size	Zombie_new, .-Zombie_new
	.align	2
	.type	cap_zombie_cap_get_capZombieNumber, @function
cap_zombie_cap_get_capZombieNumber:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_zombie_cap_get_capZombieBits
	sw	a0,-20(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_zombie_cap_get_capZombieID
	mv	a3,a0
	lw	a5,-20(s0)
	add	a5,a5,1
	li	a4,1
	sll	a5,a4,a5
	add	a5,a5,-1
	and	a5,a3,a5
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_zombie_cap_get_capZombieNumber, .-cap_zombie_cap_get_capZombieNumber
	.align	2
	.type	cap_zombie_cap_get_capZombiePtr, @function
cap_zombie_cap_get_capZombiePtr:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_zombie_cap_get_capZombieBits
	sw	a0,-20(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_zombie_cap_get_capZombieID
	mv	a3,a0
	lw	a5,-20(s0)
	add	a5,a5,1
	li	a4,1
	sll	a5,a4,a5
	sub	a5,zero,a5
	and	a5,a3,a5
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_zombie_cap_get_capZombiePtr, .-cap_zombie_cap_get_capZombiePtr
	.align	2
	.type	cap_zombie_cap_set_capZombieNumber, @function
cap_zombie_cap_set_capZombieNumber:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s2,36(sp)
	sw	s3,32(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_zombie_cap_get_capZombieBits
	sw	a0,-20(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_zombie_cap_get_capZombieID
	mv	a3,a0
	lw	a5,-20(s0)
	add	a5,a5,1
	li	a4,1
	sll	a5,a4,a5
	sub	a5,zero,a5
	and	a5,a3,a5
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	add	a5,a5,1
	li	a4,1
	sll	a5,a4,a5
	add	a4,a5,-1
	lw	a5,-44(s0)
	and	a4,a4,a5
	lw	a5,-24(s0)
	or	a5,a4,a5
	mv	a2,a5
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_zombie_cap_set_capZombieID
	mv	a4,a0
	mv	a5,a1
	sw	a4,-32(s0)
	sw	a5,-28(s0)
	mv	a4,zero
	lw	a4,-32(s0)
	mv	a5,zero
	lw	a5,-28(s0)
	mv	s2,a4
	mv	s3,a5
	mv	a4,s2
	mv	a5,s3
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s2,36(sp)
	lw	s3,32(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_zombie_cap_set_capZombieNumber, .-cap_zombie_cap_set_capZombieNumber
	.align	2
	.type	mdb_node_get_cdtLeft, @function
mdb_node_get_cdtLeft:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	mdb_node_get_cdtLeft_
	mv	a5,a0
	sll	a5,a5,2
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	beqz	a5,.L400
	lw	a4,-20(s0)
	li	a5,-536870912
	or	a5,a4,a5
	j	.L402
.L400:
	mv	a5,zero
.L402:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	mdb_node_get_cdtLeft, .-mdb_node_get_cdtLeft
	.align	2
	.type	mdb_node_get_cdtRight, @function
mdb_node_get_cdtRight:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	mdb_node_get_cdtRight_
	mv	a5,a0
	sll	a5,a5,2
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	beqz	a5,.L404
	lw	a4,-20(s0)
	li	a5,-536870912
	or	a5,a4,a5
	j	.L406
.L404:
	mv	a5,zero
.L406:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	mdb_node_get_cdtRight, .-mdb_node_get_cdtRight
	.section	.rodata
	.align	2
.LC73:
	.string	"/home/hesham/MSc-York/seL4/seL4test/kernel/include/object/structures.h"
	.align	2
.LC74:
	.string	"(cte & MASK(2)) == 0"
	.text
	.align	2
	.type	mdb_node_ptr_set_cdtLeft, @function
mdb_node_ptr_set_cdtLeft:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	and	a5,a5,3
	beqz	a5,.L408
	lui	a5,%hi(__FUNCTION__.2440)
	add	a3,a5,%lo(__FUNCTION__.2440)
	li	a2,173
	lui	a5,%hi(.LC73)
	add	a1,a5,%lo(.LC73)
	lui	a5,%hi(.LC74)
	add	a0,a5,%lo(.LC74)
	call	_assert_fail
.L408:
	lw	a4,-24(s0)
	li	a5,536870912
	add	a5,a5,-1
	and	a5,a4,a5
	srl	a5,a5,2
	mv	a1,a5
	lw	a0,-20(s0)
	call	mdb_node_ptr_set_cdtLeft_
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	mdb_node_ptr_set_cdtLeft, .-mdb_node_ptr_set_cdtLeft
	.align	2
	.type	mdb_node_ptr_set_cdtRight, @function
mdb_node_ptr_set_cdtRight:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	and	a5,a5,3
	beqz	a5,.L410
	lui	a5,%hi(__FUNCTION__.2445)
	add	a3,a5,%lo(__FUNCTION__.2445)
	li	a2,179
	lui	a5,%hi(.LC73)
	add	a1,a5,%lo(.LC73)
	lui	a5,%hi(.LC74)
	add	a0,a5,%lo(.LC74)
	call	_assert_fail
.L410:
	lw	a4,-24(s0)
	li	a5,536870912
	add	a5,a5,-1
	and	a5,a4,a5
	srl	a5,a5,2
	mv	a1,a5
	lw	a0,-20(s0)
	call	mdb_node_ptr_set_cdtRight_
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	mdb_node_ptr_set_cdtRight, .-mdb_node_ptr_set_cdtRight
	.align	2
	.type	isArchCap, @function
isArchCap:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_get_capType
	mv	a5,a0
	and	a5,a5,1
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	isArchCap, .-isArchCap
	.align	2
	.type	cap_get_capSizeBits, @function
cap_get_capSizeBits:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_capType
	sw	a0,-20(s0)
	lw	a4,-20(s0)
	li	a5,62
	bgtu	a4,a5,.L414
	lw	a5,-20(s0)
	sll	a4,a5,2
	lui	a5,%hi(.L416)
	add	a5,a5,%lo(.L416)
	add	a5,a4,a5
	lw	a5,0(a5)
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L416:
	.word	.L415
	.word	.L414
	.word	.L417
	.word	.L414
	.word	.L418
	.word	.L414
	.word	.L419
	.word	.L414
	.word	.L420
	.word	.L414
	.word	.L421
	.word	.L414
	.word	.L422
	.word	.L414
	.word	.L423
	.word	.L414
	.word	.L414
	.word	.L414
	.word	.L414
	.word	.L414
	.word	.L414
	.word	.L414
	.word	.L414
	.word	.L414
	.word	.L414
	.word	.L414
	.word	.L414
	.word	.L414
	.word	.L414
	.word	.L414
	.word	.L424
	.word	.L414
	.word	.L414
	.word	.L414
	.word	.L414
	.word	.L414
	.word	.L414
	.word	.L414
	.word	.L414
	.word	.L414
	.word	.L414
	.word	.L414
	.word	.L414
	.word	.L414
	.word	.L414
	.word	.L414
	.word	.L425
	.word	.L414
	.word	.L414
	.word	.L414
	.word	.L414
	.word	.L414
	.word	.L414
	.word	.L414
	.word	.L414
	.word	.L414
	.word	.L414
	.word	.L414
	.word	.L414
	.word	.L414
	.word	.L414
	.word	.L414
	.word	.L426
	.text
.L417:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_untyped_cap_get_capBlockSize
	mv	a5,a0
	j	.L427
.L418:
	li	a5,4
	j	.L427
.L419:
	li	a5,4
	j	.L427
.L421:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_cnode_cap_get_capCNodeRadix
	mv	a5,a0
	add	a5,a5,4
	j	.L427
.L422:
	li	a5,9
	j	.L427
.L425:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_zombie_cap_get_capZombieType
	sw	a0,-24(s0)
	lw	a4,-24(s0)
	li	a5,32
	bne	a4,a5,.L428
	li	a5,9
	j	.L427
.L428:
	lw	a5,-24(s0)
	and	a5,a5,31
	add	a5,a5,4
	j	.L427
.L415:
	mv	a5,zero
	j	.L427
.L426:
	mv	a5,zero
	j	.L427
.L420:
	mv	a5,zero
	j	.L427
.L423:
	mv	a5,zero
	j	.L427
.L424:
	mv	a5,zero
	j	.L427
.L414:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_archCapSizeBits
	mv	a5,a0
.L427:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_get_capSizeBits, .-cap_get_capSizeBits
	.align	2
	.type	cap_get_capPtr, @function
cap_get_capPtr:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_capType
	sw	a0,-20(s0)
	lw	a4,-20(s0)
	li	a5,62
	bgtu	a4,a5,.L430
	lw	a5,-20(s0)
	sll	a4,a5,2
	lui	a5,%hi(.L432)
	add	a5,a5,%lo(.L432)
	add	a5,a4,a5
	lw	a5,0(a5)
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L432:
	.word	.L430
	.word	.L430
	.word	.L431
	.word	.L430
	.word	.L433
	.word	.L430
	.word	.L434
	.word	.L430
	.word	.L435
	.word	.L430
	.word	.L436
	.word	.L430
	.word	.L437
	.word	.L430
	.word	.L438
	.word	.L430
	.word	.L430
	.word	.L430
	.word	.L430
	.word	.L430
	.word	.L430
	.word	.L430
	.word	.L430
	.word	.L430
	.word	.L430
	.word	.L430
	.word	.L430
	.word	.L430
	.word	.L430
	.word	.L430
	.word	.L439
	.word	.L430
	.word	.L430
	.word	.L430
	.word	.L430
	.word	.L430
	.word	.L430
	.word	.L430
	.word	.L430
	.word	.L430
	.word	.L430
	.word	.L430
	.word	.L430
	.word	.L430
	.word	.L430
	.word	.L430
	.word	.L440
	.word	.L430
	.word	.L430
	.word	.L430
	.word	.L430
	.word	.L430
	.word	.L430
	.word	.L430
	.word	.L430
	.word	.L430
	.word	.L430
	.word	.L430
	.word	.L430
	.word	.L430
	.word	.L430
	.word	.L430
	.word	.L441
	.text
.L431:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_untyped_cap_get_capPtr
	mv	a5,a0
	j	.L442
.L433:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_endpoint_cap_get_capEPPtr
	mv	a5,a0
	j	.L442
.L434:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_async_endpoint_cap_get_capAEPPtr
	mv	a5,a0
	j	.L442
.L436:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_cnode_cap_get_capCNodePtr
	mv	a5,a0
	j	.L442
.L437:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_thread_cap_get_capTCBPtr
	mv	a5,a0
	and	a5,a5,-512
	j	.L442
.L440:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_zombie_cap_get_capZombiePtr
	mv	a5,a0
	j	.L442
.L441:
	mv	a5,zero
	j	.L442
.L435:
	mv	a5,zero
	j	.L442
.L438:
	mv	a5,zero
	j	.L442
.L439:
	mv	a5,zero
	j	.L442
.L430:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_archCapPtr
	mv	a5,a0
.L442:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_get_capPtr, .-cap_get_capPtr
	.align	2
	.type	cap_get_capBadge, @function
cap_get_capBadge:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_get_capType
	mv	a5,a0
	li	a4,4
	beq	a5,a4,.L445
	li	a4,6
	beq	a5,a4,.L446
	j	.L448
.L445:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_endpoint_cap_get_capEPBadge
	mv	a5,a0
	j	.L447
.L446:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_async_endpoint_cap_get_capAEPBadge
	mv	a5,a0
	j	.L447
.L448:
	mv	a5,zero
.L447:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_get_capBadge, .-cap_get_capBadge
	.section	.rodata
	.align	2
.LC75:
	.string	"/home/hesham/MSc-York/seL4/seL4test/kernel/include/arch/riscv/arch/object/capspace.h"
	.text
	.align	2
	.type	cap_get_capSpaceType, @function
cap_get_capSpaceType:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_capType
	sw	a0,-20(s0)
	lw	a4,-20(s0)
	li	a5,62
	bgtu	a4,a5,.L450
	lw	a5,-20(s0)
	sll	a4,a5,2
	lui	a5,%hi(.L452)
	add	a5,a5,%lo(.L452)
	add	a5,a4,a5
	lw	a5,0(a5)
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L452:
	.word	.L450
	.word	.L451
	.word	.L453
	.word	.L451
	.word	.L451
	.word	.L451
	.word	.L451
	.word	.L450
	.word	.L454
	.word	.L450
	.word	.L451
	.word	.L450
	.word	.L451
	.word	.L450
	.word	.L455
	.word	.L450
	.word	.L450
	.word	.L450
	.word	.L450
	.word	.L450
	.word	.L450
	.word	.L450
	.word	.L450
	.word	.L450
	.word	.L450
	.word	.L450
	.word	.L450
	.word	.L450
	.word	.L450
	.word	.L450
	.word	.L456
	.word	.L450
	.word	.L450
	.word	.L450
	.word	.L450
	.word	.L450
	.word	.L450
	.word	.L450
	.word	.L450
	.word	.L450
	.word	.L450
	.word	.L450
	.word	.L450
	.word	.L450
	.word	.L450
	.word	.L450
	.word	.L451
	.word	.L450
	.word	.L450
	.word	.L450
	.word	.L450
	.word	.L450
	.word	.L450
	.word	.L450
	.word	.L450
	.word	.L450
	.word	.L450
	.word	.L450
	.word	.L450
	.word	.L450
	.word	.L450
	.word	.L450
	.word	.L457
	.text
.L451:
	li	a5,1
	j	.L458
.L453:
	mv	a5,zero
	j	.L458
.L454:
	li	a5,2
	j	.L458
.L455:
	li	a5,3
	j	.L458
.L456:
	li	a5,3
	j	.L458
.L457:
	li	a5,4
	j	.L458
.L450:
	lui	a5,%hi(__FUNCTION__.2542)
	add	a3,a5,%lo(__FUNCTION__.2542)
	li	a2,56
	lui	a5,%hi(.LC75)
	add	a1,a5,%lo(.LC75)
	lui	a5,%hi(.LC72)
	add	a0,a5,%lo(.LC72)
	call	_assert_fail
.L458:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_get_capSpaceType, .-cap_get_capSpaceType
	.align	2
	.type	cap_get_capSpacePtr, @function
cap_get_capSpacePtr:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_capType
	sw	a0,-20(s0)
	lw	a4,-20(s0)
	li	a5,62
	bgtu	a4,a5,.L460
	lw	a5,-20(s0)
	sll	a4,a5,2
	lui	a5,%hi(.L462)
	add	a5,a5,%lo(.L462)
	add	a5,a4,a5
	lw	a5,0(a5)
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L462:
	.word	.L460
	.word	.L461
	.word	.L461
	.word	.L461
	.word	.L461
	.word	.L461
	.word	.L461
	.word	.L460
	.word	.L463
	.word	.L460
	.word	.L461
	.word	.L460
	.word	.L461
	.word	.L460
	.word	.L464
	.word	.L460
	.word	.L460
	.word	.L460
	.word	.L460
	.word	.L460
	.word	.L460
	.word	.L460
	.word	.L460
	.word	.L460
	.word	.L460
	.word	.L460
	.word	.L460
	.word	.L460
	.word	.L460
	.word	.L460
	.word	.L465
	.word	.L460
	.word	.L460
	.word	.L460
	.word	.L460
	.word	.L460
	.word	.L460
	.word	.L460
	.word	.L460
	.word	.L460
	.word	.L460
	.word	.L460
	.word	.L460
	.word	.L460
	.word	.L460
	.word	.L460
	.word	.L461
	.word	.L460
	.word	.L460
	.word	.L460
	.word	.L460
	.word	.L460
	.word	.L460
	.word	.L460
	.word	.L460
	.word	.L460
	.word	.L460
	.word	.L460
	.word	.L460
	.word	.L460
	.word	.L460
	.word	.L460
	.word	.L466
	.text
.L461:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_capPtr
	mv	a5,a0
	j	.L467
.L463:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_reply_cap_get_capTCBPtr
	mv	a5,a0
	j	.L467
.L464:
	mv	a5,zero
	j	.L467
.L465:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_irq_handler_cap_get_capIRQ
	mv	a5,a0
	j	.L467
.L466:
	mv	a5,zero
	j	.L467
.L460:
	lui	a5,%hi(__FUNCTION__.2561)
	add	a3,a5,%lo(__FUNCTION__.2561)
	li	a2,92
	lui	a5,%hi(.LC75)
	add	a1,a5,%lo(.LC75)
	lui	a5,%hi(.LC72)
	add	a0,a5,%lo(.LC72)
	call	_assert_fail
.L467:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_get_capSpacePtr, .-cap_get_capSpacePtr
	.align	2
	.type	cap_get_capSpaceSize, @function
cap_get_capSpaceSize:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_capType
	sw	a0,-20(s0)
	lw	a4,-20(s0)
	li	a5,62
	bgtu	a4,a5,.L469
	lw	a5,-20(s0)
	sll	a4,a5,2
	lui	a5,%hi(.L471)
	add	a5,a5,%lo(.L471)
	add	a5,a4,a5
	lw	a5,0(a5)
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L471:
	.word	.L469
	.word	.L470
	.word	.L470
	.word	.L470
	.word	.L470
	.word	.L470
	.word	.L470
	.word	.L469
	.word	.L472
	.word	.L469
	.word	.L470
	.word	.L469
	.word	.L470
	.word	.L469
	.word	.L473
	.word	.L469
	.word	.L469
	.word	.L469
	.word	.L469
	.word	.L469
	.word	.L469
	.word	.L469
	.word	.L469
	.word	.L469
	.word	.L469
	.word	.L469
	.word	.L469
	.word	.L469
	.word	.L469
	.word	.L469
	.word	.L474
	.word	.L469
	.word	.L469
	.word	.L469
	.word	.L469
	.word	.L469
	.word	.L469
	.word	.L469
	.word	.L469
	.word	.L469
	.word	.L469
	.word	.L469
	.word	.L469
	.word	.L469
	.word	.L469
	.word	.L469
	.word	.L470
	.word	.L469
	.word	.L469
	.word	.L469
	.word	.L469
	.word	.L469
	.word	.L469
	.word	.L469
	.word	.L469
	.word	.L469
	.word	.L469
	.word	.L469
	.word	.L469
	.word	.L469
	.word	.L469
	.word	.L469
	.word	.L475
	.text
.L470:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_capSizeBits
	mv	a4,a0
	li	a5,1
	sll	a5,a5,a4
	j	.L476
.L472:
	li	a5,1
	j	.L476
.L473:
	li	a5,255
	j	.L476
.L474:
	li	a5,1
	j	.L476
.L475:
	li	a5,1
	j	.L476
.L469:
	lui	a5,%hi(__FUNCTION__.2580)
	add	a3,a5,%lo(__FUNCTION__.2580)
	li	a2,128
	lui	a5,%hi(.LC75)
	add	a1,a5,%lo(.LC75)
	lui	a5,%hi(.LC72)
	add	a0,a5,%lo(.LC72)
	call	_assert_fail
.L476:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cap_get_capSpaceSize, .-cap_get_capSpaceSize
	.section	.rodata
	.align	2
.LC76:
	.string	"Unknown frame size"
	.text
	.align	2
	.type	cap_get_capExtraComp, @function
cap_get_capExtraComp:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_get_capType
	mv	a5,a0
	li	a4,1
	beq	a5,a4,.L479
	li	a4,3
	beq	a5,a4,.L480
	j	.L487
.L479:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_frame_cap_get_capFMappedObject
	mv	a5,a0
	bnez	a5,.L481
	mv	a5,zero
	j	.L482
.L481:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_frame_cap_get_capFSize
	mv	a5,a0
	li	a4,1
	bleu	a5,a4,.L484
	li	a4,3
	bgtu	a5,a4,.L483
	j	.L488
.L484:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_frame_cap_get_capFMappedIndex
	mv	a5,a0
	sll	s1,a5,2
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_frame_cap_get_capFMappedObject
	mv	a5,a0
	add	a5,s1,a5
	j	.L482
.L488:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_frame_cap_get_capFMappedIndex
	mv	a5,a0
	sll	s1,a5,2
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_frame_cap_get_capFMappedObject
	mv	a5,a0
	add	a5,s1,a5
	j	.L482
.L483:
	lui	a5,%hi(__func__.2590)
	add	a3,a5,%lo(__func__.2590)
	li	a2,150
	lui	a5,%hi(.LC75)
	add	a1,a5,%lo(.LC75)
	lui	a5,%hi(.LC76)
	add	a0,a5,%lo(.LC76)
	call	_fail
.L480:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_page_table_cap_get_capPTMappedObject
	mv	a5,a0
	bnez	a5,.L486
	mv	a5,zero
	j	.L482
.L486:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_page_table_cap_get_capPTMappedIndex
	mv	a5,a0
	sll	s1,a5,2
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_page_table_cap_get_capPTMappedObject
	mv	a5,a0
	add	a5,s1,a5
	j	.L482
.L487:
	mv	a5,zero
.L482:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	lw	s1,20(sp)
	add	sp,sp,32
	jr	ra
	.size	cap_get_capExtraComp, .-cap_get_capExtraComp
	.align	2
	.type	cte_depth_bits_type, @function
cte_depth_bits_type:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	li	a4,1
	beq	a5,a4,.L491
	li	a4,3
	bne	a5,a4,.L493
.L491:
	li	a5,1
	j	.L492
.L493:
	li	a5,5
.L492:
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	cte_depth_bits_type, .-cte_depth_bits_type
	.align	2
	.type	cte_depth_bits_cap, @function
cte_depth_bits_cap:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_get_capType
	mv	a5,a0
	mv	a0,a5
	call	cte_depth_bits_type
	mv	a5,a0
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cte_depth_bits_cap, .-cte_depth_bits_cap
	.align	2
	.type	clearMemory, @function
clearMemory:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	li	a4,1
	lw	a5,-24(s0)
	sll	a5,a4,a5
	mv	a1,a5
	lw	a0,-20(s0)
	call	memzero
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	clearMemory, .-clearMemory
	.comm	platform_interrupt_t,4,4
	.align	2
	.type	setRegister, @function
setRegister:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	sll	a5,a5,2
	add	a5,a4,a5
	lw	a4,-28(s0)
	sw	a4,0(a5)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	setRegister, .-setRegister
	.align	2
	.type	getRegister, @function
getRegister:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	sll	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	getRegister, .-getRegister
	.align	2
	.type	setInterruptMode, @function
setInterruptMode:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	setInterruptMode, .-setInterruptMode
	.align	2
	.type	pptr_to_paddr, @function
pptr_to_paddr:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a4,-20(s0)
	li	a5,-1879048192
	add	a5,a4,a5
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	pptr_to_paddr, .-pptr_to_paddr
	.align	2
	.type	inKernelWindow, @function
inKernelWindow:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a0,-36(s0)
	call	pptr_to_paddr
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	bgez	a5,.L504
	lw	a4,-20(s0)
	li	a5,-1880096768
	bgeu	a4,a5,.L504
	li	a5,1
	j	.L505
.L504:
	mv	a5,zero
.L505:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	inKernelWindow, .-inKernelWindow
	.section	.rodata
	.align	2
.LC77:
	.string	"/home/hesham/MSc-York/seL4/seL4test/kernel/include/api/syscall.h"
	.align	2
.LC78:
	.string	"ipc_buffer != NULL"
	.text
	.align	2
	.type	getSyscallArg, @function
getSyscallArg:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a4,-20(s0)
	li	a5,3
	bgtu	a4,a5,.L508
	lui	a5,%hi(ksCurThread)
	lw	a3,%lo(ksCurThread)(a5)
	lui	a5,%hi(msgRegisters)
	lw	a4,-20(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(msgRegisters)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a1,a5
	mv	a0,a3
	call	getRegister
	mv	a5,a0
	j	.L509
.L508:
	lw	a5,-24(s0)
	bnez	a5,.L510
	lui	a5,%hi(__FUNCTION__.3194)
	add	a3,a5,%lo(__FUNCTION__.3194)
	li	a2,33
	lui	a5,%hi(.LC77)
	add	a1,a5,%lo(.LC77)
	lui	a5,%hi(.LC78)
	add	a0,a5,%lo(.LC78)
	call	_assert_fail
.L510:
	lw	a5,-20(s0)
	add	a5,a5,1
	sll	a5,a5,2
	lw	a4,-24(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
.L509:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	getSyscallArg, .-getSyscallArg
	.section	.rodata
	.align	2
.LC79:
	.string	"/home/hesham/MSc-York/seL4/seL4test/kernel/include/kernel/thread.h"
	.align	2
.LC80:
	.string	"dom == 0"
	.text
	.align	2
	.type	ready_queues_index, @function
ready_queues_index:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-20(s0)
	beqz	a5,.L512
	lui	a5,%hi(__FUNCTION__.3475)
	add	a3,a5,%lo(__FUNCTION__.3475)
	li	a2,24
	lui	a5,%hi(.LC79)
	add	a1,a5,%lo(.LC79)
	lui	a5,%hi(.LC80)
	add	a0,a5,%lo(.LC80)
	call	_assert_fail
.L512:
	lw	a5,-24(s0)
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	ready_queues_index, .-ready_queues_index
	.align	2
	.type	prio_to_l1index, @function
prio_to_l1index:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	srl	a5,a5,5
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	prio_to_l1index, .-prio_to_l1index
	.align	2
	.type	l1index_to_prio, @function
l1index_to_prio:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	sll	a5,a5,5
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	l1index_to_prio, .-l1index_to_prio
	.section	.rodata
	.align	2
.LC81:
	.string	"Spurious interrupt"
	.text
	.align	2
	.globl	handleInterruptEntry
	.type	handleInterruptEntry, @function
handleInterruptEntry:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	call	getActiveIRQ
	sw	a0,-20(s0)
	lw	a4,-20(s0)
	li	a5,255
	beq	a4,a5,.L519
	lw	a0,-20(s0)
	call	handleInterrupt
	j	.L520
.L519:
	lui	a5,%hi(.LC81)
	add	a0,a5,%lo(.LC81)
	call	puts
	call	handleSpuriousIRQ
.L520:
	call	schedule
	call	activateThread
	mv	a5,zero
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	handleInterruptEntry, .-handleInterruptEntry
	.section	.rodata
	.align	2
.LC82:
	.string	"Debug halt syscall from user thread 0x%x\n"
	.align	2
.LC83:
	.string	"Debug snapshot syscall from user thread 0x%x\n"
	.text
	.align	2
	.globl	handleUnknownSyscall
	.type	handleUnknownSyscall, @function
handleUnknownSyscall:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-52(s0)
	lw	a4,-52(s0)
	li	a5,-10
	bne	a4,a5,.L523
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,18
	mv	a0,a5
	call	getRegister
	mv	a5,a0
	and	a5,a5,0xff
	mv	a0,a5
	call	qemu_uart_putchar
	mv	a5,zero
	j	.L524
.L523:
	lw	a4,-52(s0)
	li	a5,-11
	bne	a4,a5,.L525
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a1,a5
	lui	a5,%hi(.LC82)
	add	a0,a5,%lo(.LC82)
	call	printf
	call	halt
.L525:
	lw	a4,-52(s0)
	li	a5,-13
	bne	a4,a5,.L526
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a1,a5
	lui	a5,%hi(.LC83)
	add	a0,a5,%lo(.LC83)
	call	printf
	call	capDL
	mv	a5,zero
	j	.L524
.L526:
	lw	a4,-52(s0)
	li	a5,-12
	bne	a4,a5,.L527
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,18
	mv	a0,a5
	call	getRegister
	sw	a0,-20(s0)
	lui	a5,%hi(ksCurThread)
	lw	a4,%lo(ksCurThread)(a5)
	add	a5,s0,-40
	lw	a2,-20(s0)
	mv	a1,a4
	mv	a0,a5
	call	lookupCapAndSlot
	lw	a0,-36(s0)
	lw	a1,-32(s0)
	call	cap_get_capType
	sw	a0,-24(s0)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	lw	a2,-24(s0)
	li	a1,18
	mv	a0,a5
	call	setRegister
	mv	a5,zero
	j	.L524
.L527:
	lw	a0,-52(s0)
	call	fault_unknown_syscall_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_fault)
	sw	a4,%lo(current_fault)(a3)
	add	a3,a3,%lo(current_fault)
	sw	a5,4(a3)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	handleFault
	call	schedule
	call	activateThread
	mv	a5,zero
.L524:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	handleUnknownSyscall, .-handleUnknownSyscall
	.align	2
	.globl	handleUserLevelFault
	.type	handleUserLevelFault, @function
handleUserLevelFault:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	fault_user_exception_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_fault)
	sw	a4,%lo(current_fault)(a3)
	add	a3,a3,%lo(current_fault)
	sw	a5,4(a3)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	handleFault
	call	schedule
	call	activateThread
	mv	a5,zero
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	handleUserLevelFault, .-handleUserLevelFault
	.align	2
	.globl	handleVMFaultEvent
	.type	handleVMFaultEvent, @function
handleVMFaultEvent:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	lw	a1,-36(s0)
	mv	a0,a5
	call	handleVMFault
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	beqz	a5,.L531
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	handleFault
.L531:
	call	schedule
	call	activateThread
	mv	a5,zero
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	handleVMFaultEvent, .-handleVMFaultEvent
	.section	.rodata
	.align	2
.LC84:
	.string	"\033[0m\033[30;1m<<\033[0m\033[32mseL4\033[0m\033[30;1m [%s/%d T%x @%x]: "
	.align	2
.LC85:
	.string	"Invocation of invalid cap #%d."
	.align	2
.LC86:
	.string	">>\033[0m"
	.align	2
.LC87:
	.string	"Lookup of extra caps failed."
	.text
	.align	2
	.type	handleInvocation, @function
handleInvocation:
	add	sp,sp,-112
	sw	ra,108(sp)
	sw	s0,104(sp)
	sw	s1,100(sp)
	add	s0,sp,112
	sw	a0,-68(s0)
	sw	a1,-72(s0)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	sw	a5,-24(s0)
	li	a1,19
	lw	a0,-24(s0)
	call	getRegister
	mv	a5,a0
	mv	a0,a5
	call	messageInfoFromWord
	mv	a5,a0
	sw	a5,-40(s0)
	li	a1,18
	lw	a0,-24(s0)
	call	getRegister
	sw	a0,-28(s0)
	add	a5,s0,-56
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	lookupCapAndSlot
	lw	a5,-56(s0)
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L534
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,190
	lui	a5,%hi(__func__.3575)
	add	a1,a5,%lo(__func__.3575)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lw	a5,-28(s0)
	mv	a1,a5
	lui	a5,%hi(.LC85)
	add	a0,a5,%lo(.LC85)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	mv	a1,zero
	lw	a0,-28(s0)
	call	fault_cap_fault_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_fault)
	sw	a4,%lo(current_fault)(a3)
	add	a3,a3,%lo(current_fault)
	sw	a5,4(a3)
	lw	a5,-72(s0)
	beqz	a5,.L535
	lw	a0,-24(s0)
	call	handleFault
.L535:
	mv	a5,zero
	j	.L545
.L534:
	lw	a1,-24(s0)
	mv	a0,zero
	call	lookupIPCBuffer
	sw	a0,-32(s0)
	lw	a2,-40(s0)
	lw	a1,-32(s0)
	lw	a0,-24(s0)
	call	lookupExtraCaps
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L537
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,205
	lui	a5,%hi(__func__.3575)
	add	a1,a5,%lo(__func__.3575)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC87)
	add	a0,a5,%lo(.LC87)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lw	a5,-72(s0)
	beqz	a5,.L538
	lw	a0,-24(s0)
	call	handleFault
.L538:
	mv	a5,zero
	j	.L545
.L537:
	lw	a0,-40(s0)
	call	message_info_get_msgLength
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	sltu	a5,a5,5
	xor	a5,a5,1
	and	a5,a5,0xff
	beqz	a5,.L539
	lw	a5,-32(s0)
	seqz	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L539
	li	a5,4
	sw	a5,-20(s0)
.L539:
	lw	a0,-40(s0)
	call	message_info_get_msgLabel
	lw	a3,-44(s0)
	lui	a5,%hi(current_extra_caps)
	lw	a4,%lo(current_extra_caps)(a5)
	sw	a4,-96(s0)
	add	a4,a5,%lo(current_extra_caps)
	lw	a4,4(a4)
	sw	a4,-92(s0)
	add	a5,a5,%lo(current_extra_caps)
	lw	a5,8(a5)
	sw	a5,-88(s0)
	add	a4,s0,-96
	lw	a5,-32(s0)
	sw	a5,4(sp)
	lw	a5,-68(s0)
	sw	a5,0(sp)
	lw	a7,-72(s0)
	mv	a6,a4
	lw	a4,-52(s0)
	lw	a5,-48(s0)
	lw	a2,-28(s0)
	lw	a1,-20(s0)
	call	decodeInvocation
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	add	a5,a5,-4
	seqz	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L540
	lw	a5,-36(s0)
	j	.L545
.L540:
	lw	a5,-36(s0)
	add	a5,a5,-3
	seqz	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L541
	lw	a5,-68(s0)
	beqz	a5,.L542
	lw	a0,-24(s0)
	call	replyFromKernel_error
.L542:
	mv	a5,zero
	j	.L545
.L541:
	lw	a5,-24(s0)
	lw	a4,128(a5)
	sw	a4,-96(s0)
	lw	a4,132(a5)
	sw	a4,-92(s0)
	lw	a5,136(a5)
	sw	a5,-88(s0)
	add	a5,s0,-96
	mv	a0,a5
	call	thread_state_get_tsType
	mv	a5,a0
	add	a5,a5,-2
	seqz	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L543
	lw	a5,-68(s0)
	beqz	a5,.L544
	lw	a0,-24(s0)
	call	replyFromKernel_success_empty
.L544:
	li	a1,1
	lw	a0,-24(s0)
	call	setThreadState
.L543:
	mv	a5,zero
.L545:
	mv	a0,a5
	lw	ra,108(sp)
	lw	s0,104(sp)
	lw	s1,100(sp)
	add	sp,sp,112
	jr	ra
	.size	handleInvocation, .-handleInvocation
	.section	.rodata
	.align	2
.LC88:
	.string	"/home/hesham/MSc-York/seL4/seL4test/kernel/src/api/syscall.c"
	.align	2
.LC89:
	.string	"caller != ksCurThread"
	.align	2
.LC90:
	.string	"Attempted reply operation when no reply cap present."
	.align	2
.LC91:
	.string	"handleReply: invalid caller cap"
	.text
	.align	2
	.type	handleReply, @function
handleReply:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	add	s0,sp,32
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	and	a5,a5,-512
	add	a5,a5,48
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	lw	a4,0(a5)
	sw	a4,-32(s0)
	lw	a5,4(a5)
	sw	a5,-28(s0)
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	cap_get_capType
	mv	a5,a0
	beqz	a5,.L548
	li	a4,8
	beq	a5,a4,.L549
	j	.L551
.L549:
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	cap_reply_cap_get_capReplyMaster
	mv	a5,a0
	bnez	a5,.L555
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	cap_reply_cap_get_capTCBPtr
	mv	a5,a0
	sw	a5,-24(s0)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	lw	a4,-24(s0)
	bne	a4,a5,.L552
	lui	a5,%hi(__FUNCTION__.3584)
	add	a3,a5,%lo(__FUNCTION__.3584)
	li	a2,262
	lui	a5,%hi(.LC88)
	add	a1,a5,%lo(.LC88)
	lui	a5,%hi(.LC89)
	add	a0,a5,%lo(.LC89)
	call	_assert_fail
.L552:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	lw	a2,-20(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	doReplyTransfer
	j	.L546
.L548:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,269
	lui	a5,%hi(__func__.3586)
	add	a1,a5,%lo(__func__.3586)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC90)
	add	a0,a5,%lo(.LC90)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	j	.L546
.L555:
	nop
.L551:
	lui	a5,%hi(__func__.3586)
	add	a3,a5,%lo(__func__.3586)
	li	a2,276
	lui	a5,%hi(.LC88)
	add	a1,a5,%lo(.LC88)
	lui	a5,%hi(.LC91)
	add	a0,a5,%lo(.LC91)
	call	_fail
.L546:
	lw	ra,28(sp)
	lw	s0,24(sp)
	lw	s1,20(sp)
	add	sp,sp,32
	jr	ra
	.size	handleReply, .-handleReply
	.align	2
	.type	handleWait, @function
handleWait:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-52(s0)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	deleteCallerCap
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,18
	mv	a0,a5
	call	getRegister
	sw	a0,-20(s0)
	lui	a5,%hi(ksCurThread)
	lw	a4,%lo(ksCurThread)(a5)
	add	a5,s0,-40
	lw	a2,-20(s0)
	mv	a1,a4
	mv	a0,a5
	call	lookupCap
	lw	a5,-40(s0)
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L557
	li	a1,1
	lw	a0,-20(s0)
	call	fault_cap_fault_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_fault)
	sw	a4,%lo(current_fault)(a3)
	add	a3,a3,%lo(current_fault)
	sw	a5,4(a3)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	handleFault
	j	.L556
.L557:
	lw	a0,-36(s0)
	lw	a1,-32(s0)
	call	cap_get_capType
	mv	a5,a0
	li	a4,4
	beq	a5,a4,.L560
	li	a4,6
	beq	a5,a4,.L561
	j	.L569
.L560:
	lw	a0,-36(s0)
	lw	a1,-32(s0)
	call	cap_endpoint_cap_get_capCanReceive
	mv	a5,a0
	seqz	a5,a5
	and	a5,a5,0xff
	bnez	a5,.L562
	lw	a5,-52(s0)
	seqz	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L563
.L562:
	mv	a0,zero
	call	lookup_fault_missing_capability_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_lookup_fault)
	sw	a4,%lo(current_lookup_fault)(a3)
	add	a3,a3,%lo(current_lookup_fault)
	sw	a5,4(a3)
	li	a1,1
	lw	a0,-20(s0)
	call	fault_cap_fault_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_fault)
	sw	a4,%lo(current_fault)(a3)
	add	a3,a3,%lo(current_fault)
	sw	a5,4(a3)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	handleFault
	j	.L556
.L563:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	lw	a1,-36(s0)
	lw	a2,-32(s0)
	mv	a0,a5
	call	receiveIPC
	j	.L556
.L561:
	lw	a0,-36(s0)
	lw	a1,-32(s0)
	call	cap_async_endpoint_cap_get_capAEPPtr
	mv	a5,a0
	sw	a5,-24(s0)
	lw	a0,-24(s0)
	call	async_endpoint_ptr_get_aepBoundTCB
	mv	a5,a0
	sw	a5,-28(s0)
	lw	a0,-36(s0)
	lw	a1,-32(s0)
	call	cap_async_endpoint_cap_get_capAEPCanReceive
	mv	a5,a0
	seqz	a5,a5
	and	a5,a5,0xff
	bnez	a5,.L565
	lw	a5,-28(s0)
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L566
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	lw	a4,-28(s0)
	sub	a5,a4,a5
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L566
	li	a5,1
	j	.L567
.L566:
	mv	a5,zero
.L567:
	beqz	a5,.L568
.L565:
	mv	a0,zero
	call	lookup_fault_missing_capability_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_lookup_fault)
	sw	a4,%lo(current_lookup_fault)(a3)
	add	a3,a3,%lo(current_lookup_fault)
	sw	a5,4(a3)
	li	a1,1
	lw	a0,-20(s0)
	call	fault_cap_fault_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_fault)
	sw	a4,%lo(current_fault)(a3)
	add	a3,a3,%lo(current_fault)
	sw	a5,4(a3)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	handleFault
	j	.L556
.L568:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	lw	a3,-52(s0)
	lw	a1,-36(s0)
	lw	a2,-32(s0)
	mv	a0,a5
	call	receiveAsyncIPC
	j	.L556
.L569:
	mv	a0,zero
	call	lookup_fault_missing_capability_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_lookup_fault)
	sw	a4,%lo(current_lookup_fault)(a3)
	add	a3,a3,%lo(current_lookup_fault)
	sw	a5,4(a3)
	li	a1,1
	lw	a0,-20(s0)
	call	fault_cap_fault_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_fault)
	sw	a4,%lo(current_fault)(a3)
	add	a3,a3,%lo(current_fault)
	sw	a5,4(a3)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	handleFault
	nop
.L556:
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	handleWait, .-handleWait
	.align	2
	.type	handleYield, @function
handleYield:
	add	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	add	s0,sp,16
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	tcbSchedDequeue
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	tcbSchedAppend
	call	rescheduleRequired
	nop
	lw	ra,12(sp)
	lw	s0,8(sp)
	add	sp,sp,16
	jr	ra
	.size	handleYield, .-handleYield
	.section	.rodata
	.align	2
.LC92:
	.string	"Invalid syscall"
	.text
	.align	2
	.globl	handleSyscall
	.type	handleSyscall, @function
handleSyscall:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	add	a5,a5,8
	li	a4,7
	bgtu	a5,a4,.L572
	sll	a4,a5,2
	lui	a5,%hi(.L574)
	add	a5,a5,%lo(.L574)
	add	a5,a4,a5
	lw	a5,0(a5)
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L574:
	.word	.L573
	.word	.L575
	.word	.L576
	.word	.L577
	.word	.L578
	.word	.L579
	.word	.L580
	.word	.L581
	.text
.L579:
	li	a1,1
	mv	a0,zero
	call	handleInvocation
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L587
	call	getActiveIRQ
	sw	a0,-24(s0)
	lw	a4,-24(s0)
	li	a5,255
	beq	a4,a5,.L587
	lw	a0,-24(s0)
	call	handleInterrupt
	j	.L587
.L578:
	mv	a1,zero
	mv	a0,zero
	call	handleInvocation
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L588
	call	getActiveIRQ
	sw	a0,-24(s0)
	lw	a4,-24(s0)
	li	a5,255
	beq	a4,a5,.L588
	lw	a0,-24(s0)
	call	handleInterrupt
	j	.L588
.L581:
	li	a1,1
	li	a0,1
	call	handleInvocation
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L589
	call	getActiveIRQ
	sw	a0,-24(s0)
	lw	a4,-24(s0)
	li	a5,255
	beq	a4,a5,.L589
	lw	a0,-24(s0)
	call	handleInterrupt
	j	.L589
.L577:
	li	a0,1
	call	handleWait
	j	.L583
.L576:
	call	handleReply
	j	.L583
.L580:
	call	handleReply
	li	a0,1
	call	handleWait
	j	.L583
.L573:
	mv	a0,zero
	call	handleWait
	j	.L583
.L575:
	call	handleYield
	j	.L583
.L572:
	lui	a5,%hi(__func__.3617)
	add	a3,a5,%lo(__func__.3617)
	li	a2,400
	lui	a5,%hi(.LC88)
	add	a1,a5,%lo(.LC88)
	lui	a5,%hi(.LC92)
	add	a0,a5,%lo(.LC92)
	call	_fail
.L587:
	nop
	j	.L583
.L588:
	nop
	j	.L583
.L589:
	nop
.L583:
	call	schedule
	call	activateThread
	mv	a5,zero
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	handleSyscall, .-handleSyscall
	.align	2
	.globl	handleFaultReply
	.type	handleFaultReply, @function
handleFaultReply:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	mv	a5,zero
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	handleFaultReply, .-handleFaultReply
	.align	2
	.type	is_reg_empty, @function
is_reg_empty:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	seqz	a5,a5
	and	a5,a5,0xff
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	is_reg_empty, .-is_reg_empty
	.align	2
	.globl	tohost_exit
	.type	tohost_exit, @function
tohost_exit:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	sll	a5,a5,1
	or	a5,a5,1
 #APP
# 926 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c" 1
	csrw tohost, a5
# 0 "" 2
 #NO_APP
.L595:
	j	.L595
	.size	tohost_exit, .-tohost_exit
	.comm	magic_mem,64,64
	.align	2
	.type	handle_frontend_syscall, @function
handle_frontend_syscall:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	lw	a3,-36(s0)
	mv	t5,a3
	sra	a3,a3,31
	mv	t6,a3
	lui	a3,%hi(magic_mem)
	sw	t5,%lo(magic_mem)(a3)
	sw	t6,%lo(magic_mem+4)(a3)
	lw	a3,-40(s0)
	mv	t3,a3
	sra	a3,a3,31
	mv	t4,a3
	lui	a3,%hi(magic_mem)
	add	a3,a3,%lo(magic_mem)
	sw	t3,8(a3)
	sw	t4,12(a3)
	lw	a3,-44(s0)
	mv	t1,a3
	sra	a3,a3,31
	mv	t2,a3
	lui	a3,%hi(magic_mem)
	add	a3,a3,%lo(magic_mem)
	sw	t1,16(a3)
	sw	t2,20(a3)
	lw	a3,-48(s0)
	mv	a6,a3
	sra	a3,a3,31
	mv	a7,a3
	lui	a3,%hi(magic_mem)
	add	a3,a3,%lo(magic_mem)
	sw	a6,24(a3)
	sw	a7,28(a3)
	fence rw,rw
	lui	a3,%hi(magic_mem)
	add	a3,a3,%lo(magic_mem)
	mv	a4,a3
	sra	a3,a3,31
	mv	a5,a3
 #APP
# 1029 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c" 1
	csrw tohost, a4
# 0 "" 2
 #NO_APP
	nop
.L597:
	mv	a5,zero
 #APP
# 1030 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c" 1
	csrrw a5, fromhost, a5
# 0 "" 2
 #NO_APP
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	beqz	a5,.L597
	lui	a5,%hi(magic_mem)
	lw	a4,%lo(magic_mem)(a5)
	lw	a5,%lo(magic_mem+4)(a5)
	mv	a5,a4
	mv	a0,a5
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	handle_frontend_syscall, .-handle_frontend_syscall
	.local	counters
	.comm	counters,72,4
	.local	counter_names
	.comm	counter_names,72,4
	.section	.rodata
	.align	2
.LC93:
	.string	"cycle"
	.align	2
.LC94:
	.string	"instret"
	.align	2
.LC95:
	.string	"uarch0"
	.align	2
.LC96:
	.string	"uarch1"
	.align	2
.LC97:
	.string	"uarch2"
	.align	2
.LC98:
	.string	"uarch3"
	.align	2
.LC99:
	.string	"uarch4"
	.align	2
.LC100:
	.string	"uarch5"
	.align	2
.LC101:
	.string	"uarch6"
	.align	2
.LC102:
	.string	"uarch7"
	.align	2
.LC103:
	.string	"uarch8"
	.align	2
.LC104:
	.string	"uarch9"
	.align	2
.LC105:
	.string	"uarch10"
	.align	2
.LC106:
	.string	"uarch11"
	.align	2
.LC107:
	.string	"uarch12"
	.align	2
.LC108:
	.string	"uarch13"
	.align	2
.LC109:
	.string	"uarch14"
	.align	2
.LC110:
	.string	"uarch15"
	.text
	.align	2
	.type	handle_stats, @function
handle_stats:
	add	sp,sp,-112
	sw	s0,108(sp)
	add	s0,sp,112
	sw	a0,-100(s0)
	lw	a5,-100(s0)
	beqz	a5,.L600
 #APP
# 1048 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c" 1
	csrrs a0, stats, 1
# 0 "" 2
 #NO_APP
.L600:
	sw	zero,-92(s0)
.L601:
	lw	a4,-92(s0)
	li	a5,17
	bgt	a4,a5,.L601
 #APP
# 1056 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c" 1
	csrr a0, cycle
# 0 "" 2
 #NO_APP
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-100(s0)
	bnez	a5,.L602
	lui	a5,%hi(counters)
	lw	a4,-92(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(counters)
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a4,-20(s0)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	lui	a5,%hi(counter_names)
	lw	a4,-92(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(counter_names)
	add	a5,a4,a5
	lui	a4,%hi(.LC93)
	add	a4,a4,%lo(.LC93)
	sw	a4,0(a5)
.L602:
	lw	a5,-92(s0)
	add	a4,a5,1
	sw	a4,-92(s0)
	lui	a3,%hi(counters)
	sll	a4,a5,2
	add	a5,a3,%lo(counters)
	add	a5,a4,a5
	lw	a4,-20(s0)
	sw	a4,0(a5)
.L603:
	lw	a4,-92(s0)
	li	a5,17
	bgt	a4,a5,.L603
 #APP
# 1056 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c" 1
	csrr a0, instret
# 0 "" 2
 #NO_APP
	mv	a5,a0
	sw	a5,-24(s0)
	lw	a5,-100(s0)
	bnez	a5,.L604
	lui	a5,%hi(counters)
	lw	a4,-92(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(counters)
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a4,-24(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
	lui	a5,%hi(counter_names)
	lw	a4,-92(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(counter_names)
	add	a5,a4,a5
	lui	a4,%hi(.LC94)
	add	a4,a4,%lo(.LC94)
	sw	a4,0(a5)
.L604:
	lw	a5,-92(s0)
	add	a4,a5,1
	sw	a4,-92(s0)
	lui	a3,%hi(counters)
	sll	a4,a5,2
	add	a5,a3,%lo(counters)
	add	a5,a4,a5
	lw	a4,-24(s0)
	sw	a4,0(a5)
.L605:
	lw	a4,-92(s0)
	li	a5,17
	bgt	a4,a5,.L605
 #APP
# 1057 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c" 1
	csrr a0, uarch0
# 0 "" 2
 #NO_APP
	mv	a5,a0
	sw	a5,-28(s0)
	lw	a5,-100(s0)
	bnez	a5,.L606
	lui	a5,%hi(counters)
	lw	a4,-92(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(counters)
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a4,-28(s0)
	sub	a5,a4,a5
	sw	a5,-28(s0)
	lui	a5,%hi(counter_names)
	lw	a4,-92(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(counter_names)
	add	a5,a4,a5
	lui	a4,%hi(.LC95)
	add	a4,a4,%lo(.LC95)
	sw	a4,0(a5)
.L606:
	lw	a5,-92(s0)
	add	a4,a5,1
	sw	a4,-92(s0)
	lui	a3,%hi(counters)
	sll	a4,a5,2
	add	a5,a3,%lo(counters)
	add	a5,a4,a5
	lw	a4,-28(s0)
	sw	a4,0(a5)
.L607:
	lw	a4,-92(s0)
	li	a5,17
	bgt	a4,a5,.L607
 #APP
# 1057 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c" 1
	csrr a0, uarch1
# 0 "" 2
 #NO_APP
	mv	a5,a0
	sw	a5,-32(s0)
	lw	a5,-100(s0)
	bnez	a5,.L608
	lui	a5,%hi(counters)
	lw	a4,-92(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(counters)
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a4,-32(s0)
	sub	a5,a4,a5
	sw	a5,-32(s0)
	lui	a5,%hi(counter_names)
	lw	a4,-92(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(counter_names)
	add	a5,a4,a5
	lui	a4,%hi(.LC96)
	add	a4,a4,%lo(.LC96)
	sw	a4,0(a5)
.L608:
	lw	a5,-92(s0)
	add	a4,a5,1
	sw	a4,-92(s0)
	lui	a3,%hi(counters)
	sll	a4,a5,2
	add	a5,a3,%lo(counters)
	add	a5,a4,a5
	lw	a4,-32(s0)
	sw	a4,0(a5)
.L609:
	lw	a4,-92(s0)
	li	a5,17
	bgt	a4,a5,.L609
 #APP
# 1057 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c" 1
	csrr a0, uarch2
# 0 "" 2
 #NO_APP
	mv	a5,a0
	sw	a5,-36(s0)
	lw	a5,-100(s0)
	bnez	a5,.L610
	lui	a5,%hi(counters)
	lw	a4,-92(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(counters)
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a4,-36(s0)
	sub	a5,a4,a5
	sw	a5,-36(s0)
	lui	a5,%hi(counter_names)
	lw	a4,-92(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(counter_names)
	add	a5,a4,a5
	lui	a4,%hi(.LC97)
	add	a4,a4,%lo(.LC97)
	sw	a4,0(a5)
.L610:
	lw	a5,-92(s0)
	add	a4,a5,1
	sw	a4,-92(s0)
	lui	a3,%hi(counters)
	sll	a4,a5,2
	add	a5,a3,%lo(counters)
	add	a5,a4,a5
	lw	a4,-36(s0)
	sw	a4,0(a5)
.L611:
	lw	a4,-92(s0)
	li	a5,17
	bgt	a4,a5,.L611
 #APP
# 1057 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c" 1
	csrr a0, uarch3
# 0 "" 2
 #NO_APP
	mv	a5,a0
	sw	a5,-40(s0)
	lw	a5,-100(s0)
	bnez	a5,.L612
	lui	a5,%hi(counters)
	lw	a4,-92(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(counters)
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a4,-40(s0)
	sub	a5,a4,a5
	sw	a5,-40(s0)
	lui	a5,%hi(counter_names)
	lw	a4,-92(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(counter_names)
	add	a5,a4,a5
	lui	a4,%hi(.LC98)
	add	a4,a4,%lo(.LC98)
	sw	a4,0(a5)
.L612:
	lw	a5,-92(s0)
	add	a4,a5,1
	sw	a4,-92(s0)
	lui	a3,%hi(counters)
	sll	a4,a5,2
	add	a5,a3,%lo(counters)
	add	a5,a4,a5
	lw	a4,-40(s0)
	sw	a4,0(a5)
.L613:
	lw	a4,-92(s0)
	li	a5,17
	bgt	a4,a5,.L613
 #APP
# 1058 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c" 1
	csrr a0, uarch4
# 0 "" 2
 #NO_APP
	mv	a5,a0
	sw	a5,-44(s0)
	lw	a5,-100(s0)
	bnez	a5,.L614
	lui	a5,%hi(counters)
	lw	a4,-92(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(counters)
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a4,-44(s0)
	sub	a5,a4,a5
	sw	a5,-44(s0)
	lui	a5,%hi(counter_names)
	lw	a4,-92(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(counter_names)
	add	a5,a4,a5
	lui	a4,%hi(.LC99)
	add	a4,a4,%lo(.LC99)
	sw	a4,0(a5)
.L614:
	lw	a5,-92(s0)
	add	a4,a5,1
	sw	a4,-92(s0)
	lui	a3,%hi(counters)
	sll	a4,a5,2
	add	a5,a3,%lo(counters)
	add	a5,a4,a5
	lw	a4,-44(s0)
	sw	a4,0(a5)
.L615:
	lw	a4,-92(s0)
	li	a5,17
	bgt	a4,a5,.L615
 #APP
# 1058 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c" 1
	csrr a0, uarch5
# 0 "" 2
 #NO_APP
	mv	a5,a0
	sw	a5,-48(s0)
	lw	a5,-100(s0)
	bnez	a5,.L616
	lui	a5,%hi(counters)
	lw	a4,-92(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(counters)
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a4,-48(s0)
	sub	a5,a4,a5
	sw	a5,-48(s0)
	lui	a5,%hi(counter_names)
	lw	a4,-92(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(counter_names)
	add	a5,a4,a5
	lui	a4,%hi(.LC100)
	add	a4,a4,%lo(.LC100)
	sw	a4,0(a5)
.L616:
	lw	a5,-92(s0)
	add	a4,a5,1
	sw	a4,-92(s0)
	lui	a3,%hi(counters)
	sll	a4,a5,2
	add	a5,a3,%lo(counters)
	add	a5,a4,a5
	lw	a4,-48(s0)
	sw	a4,0(a5)
.L617:
	lw	a4,-92(s0)
	li	a5,17
	bgt	a4,a5,.L617
 #APP
# 1058 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c" 1
	csrr a0, uarch6
# 0 "" 2
 #NO_APP
	mv	a5,a0
	sw	a5,-52(s0)
	lw	a5,-100(s0)
	bnez	a5,.L618
	lui	a5,%hi(counters)
	lw	a4,-92(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(counters)
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a4,-52(s0)
	sub	a5,a4,a5
	sw	a5,-52(s0)
	lui	a5,%hi(counter_names)
	lw	a4,-92(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(counter_names)
	add	a5,a4,a5
	lui	a4,%hi(.LC101)
	add	a4,a4,%lo(.LC101)
	sw	a4,0(a5)
.L618:
	lw	a5,-92(s0)
	add	a4,a5,1
	sw	a4,-92(s0)
	lui	a3,%hi(counters)
	sll	a4,a5,2
	add	a5,a3,%lo(counters)
	add	a5,a4,a5
	lw	a4,-52(s0)
	sw	a4,0(a5)
.L619:
	lw	a4,-92(s0)
	li	a5,17
	bgt	a4,a5,.L619
 #APP
# 1058 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c" 1
	csrr a0, uarch7
# 0 "" 2
 #NO_APP
	mv	a5,a0
	sw	a5,-56(s0)
	lw	a5,-100(s0)
	bnez	a5,.L620
	lui	a5,%hi(counters)
	lw	a4,-92(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(counters)
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a4,-56(s0)
	sub	a5,a4,a5
	sw	a5,-56(s0)
	lui	a5,%hi(counter_names)
	lw	a4,-92(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(counter_names)
	add	a5,a4,a5
	lui	a4,%hi(.LC102)
	add	a4,a4,%lo(.LC102)
	sw	a4,0(a5)
.L620:
	lw	a5,-92(s0)
	add	a4,a5,1
	sw	a4,-92(s0)
	lui	a3,%hi(counters)
	sll	a4,a5,2
	add	a5,a3,%lo(counters)
	add	a5,a4,a5
	lw	a4,-56(s0)
	sw	a4,0(a5)
.L621:
	lw	a4,-92(s0)
	li	a5,17
	bgt	a4,a5,.L621
 #APP
# 1059 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c" 1
	csrr a0, uarch8
# 0 "" 2
 #NO_APP
	mv	a5,a0
	sw	a5,-60(s0)
	lw	a5,-100(s0)
	bnez	a5,.L622
	lui	a5,%hi(counters)
	lw	a4,-92(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(counters)
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a4,-60(s0)
	sub	a5,a4,a5
	sw	a5,-60(s0)
	lui	a5,%hi(counter_names)
	lw	a4,-92(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(counter_names)
	add	a5,a4,a5
	lui	a4,%hi(.LC103)
	add	a4,a4,%lo(.LC103)
	sw	a4,0(a5)
.L622:
	lw	a5,-92(s0)
	add	a4,a5,1
	sw	a4,-92(s0)
	lui	a3,%hi(counters)
	sll	a4,a5,2
	add	a5,a3,%lo(counters)
	add	a5,a4,a5
	lw	a4,-60(s0)
	sw	a4,0(a5)
.L623:
	lw	a4,-92(s0)
	li	a5,17
	bgt	a4,a5,.L623
 #APP
# 1059 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c" 1
	csrr a0, uarch9
# 0 "" 2
 #NO_APP
	mv	a5,a0
	sw	a5,-64(s0)
	lw	a5,-100(s0)
	bnez	a5,.L624
	lui	a5,%hi(counters)
	lw	a4,-92(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(counters)
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a4,-64(s0)
	sub	a5,a4,a5
	sw	a5,-64(s0)
	lui	a5,%hi(counter_names)
	lw	a4,-92(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(counter_names)
	add	a5,a4,a5
	lui	a4,%hi(.LC104)
	add	a4,a4,%lo(.LC104)
	sw	a4,0(a5)
.L624:
	lw	a5,-92(s0)
	add	a4,a5,1
	sw	a4,-92(s0)
	lui	a3,%hi(counters)
	sll	a4,a5,2
	add	a5,a3,%lo(counters)
	add	a5,a4,a5
	lw	a4,-64(s0)
	sw	a4,0(a5)
.L625:
	lw	a4,-92(s0)
	li	a5,17
	bgt	a4,a5,.L625
 #APP
# 1059 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c" 1
	csrr a0, uarch10
# 0 "" 2
 #NO_APP
	mv	a5,a0
	sw	a5,-68(s0)
	lw	a5,-100(s0)
	bnez	a5,.L626
	lui	a5,%hi(counters)
	lw	a4,-92(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(counters)
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a4,-68(s0)
	sub	a5,a4,a5
	sw	a5,-68(s0)
	lui	a5,%hi(counter_names)
	lw	a4,-92(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(counter_names)
	add	a5,a4,a5
	lui	a4,%hi(.LC105)
	add	a4,a4,%lo(.LC105)
	sw	a4,0(a5)
.L626:
	lw	a5,-92(s0)
	add	a4,a5,1
	sw	a4,-92(s0)
	lui	a3,%hi(counters)
	sll	a4,a5,2
	add	a5,a3,%lo(counters)
	add	a5,a4,a5
	lw	a4,-68(s0)
	sw	a4,0(a5)
.L627:
	lw	a4,-92(s0)
	li	a5,17
	bgt	a4,a5,.L627
 #APP
# 1059 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c" 1
	csrr a0, uarch11
# 0 "" 2
 #NO_APP
	mv	a5,a0
	sw	a5,-72(s0)
	lw	a5,-100(s0)
	bnez	a5,.L628
	lui	a5,%hi(counters)
	lw	a4,-92(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(counters)
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a4,-72(s0)
	sub	a5,a4,a5
	sw	a5,-72(s0)
	lui	a5,%hi(counter_names)
	lw	a4,-92(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(counter_names)
	add	a5,a4,a5
	lui	a4,%hi(.LC106)
	add	a4,a4,%lo(.LC106)
	sw	a4,0(a5)
.L628:
	lw	a5,-92(s0)
	add	a4,a5,1
	sw	a4,-92(s0)
	lui	a3,%hi(counters)
	sll	a4,a5,2
	add	a5,a3,%lo(counters)
	add	a5,a4,a5
	lw	a4,-72(s0)
	sw	a4,0(a5)
.L629:
	lw	a4,-92(s0)
	li	a5,17
	bgt	a4,a5,.L629
 #APP
# 1060 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c" 1
	csrr a0, uarch12
# 0 "" 2
 #NO_APP
	mv	a5,a0
	sw	a5,-76(s0)
	lw	a5,-100(s0)
	bnez	a5,.L630
	lui	a5,%hi(counters)
	lw	a4,-92(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(counters)
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a4,-76(s0)
	sub	a5,a4,a5
	sw	a5,-76(s0)
	lui	a5,%hi(counter_names)
	lw	a4,-92(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(counter_names)
	add	a5,a4,a5
	lui	a4,%hi(.LC107)
	add	a4,a4,%lo(.LC107)
	sw	a4,0(a5)
.L630:
	lw	a5,-92(s0)
	add	a4,a5,1
	sw	a4,-92(s0)
	lui	a3,%hi(counters)
	sll	a4,a5,2
	add	a5,a3,%lo(counters)
	add	a5,a4,a5
	lw	a4,-76(s0)
	sw	a4,0(a5)
.L631:
	lw	a4,-92(s0)
	li	a5,17
	bgt	a4,a5,.L631
 #APP
# 1060 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c" 1
	csrr a0, uarch13
# 0 "" 2
 #NO_APP
	mv	a5,a0
	sw	a5,-80(s0)
	lw	a5,-100(s0)
	bnez	a5,.L632
	lui	a5,%hi(counters)
	lw	a4,-92(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(counters)
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a4,-80(s0)
	sub	a5,a4,a5
	sw	a5,-80(s0)
	lui	a5,%hi(counter_names)
	lw	a4,-92(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(counter_names)
	add	a5,a4,a5
	lui	a4,%hi(.LC108)
	add	a4,a4,%lo(.LC108)
	sw	a4,0(a5)
.L632:
	lw	a5,-92(s0)
	add	a4,a5,1
	sw	a4,-92(s0)
	lui	a3,%hi(counters)
	sll	a4,a5,2
	add	a5,a3,%lo(counters)
	add	a5,a4,a5
	lw	a4,-80(s0)
	sw	a4,0(a5)
.L633:
	lw	a4,-92(s0)
	li	a5,17
	bgt	a4,a5,.L633
 #APP
# 1060 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c" 1
	csrr a0, uarch14
# 0 "" 2
 #NO_APP
	mv	a5,a0
	sw	a5,-84(s0)
	lw	a5,-100(s0)
	bnez	a5,.L634
	lui	a5,%hi(counters)
	lw	a4,-92(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(counters)
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a4,-84(s0)
	sub	a5,a4,a5
	sw	a5,-84(s0)
	lui	a5,%hi(counter_names)
	lw	a4,-92(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(counter_names)
	add	a5,a4,a5
	lui	a4,%hi(.LC109)
	add	a4,a4,%lo(.LC109)
	sw	a4,0(a5)
.L634:
	lw	a5,-92(s0)
	add	a4,a5,1
	sw	a4,-92(s0)
	lui	a3,%hi(counters)
	sll	a4,a5,2
	add	a5,a3,%lo(counters)
	add	a5,a4,a5
	lw	a4,-84(s0)
	sw	a4,0(a5)
.L635:
	lw	a4,-92(s0)
	li	a5,17
	bgt	a4,a5,.L635
 #APP
# 1060 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c" 1
	csrr a0, uarch15
# 0 "" 2
 #NO_APP
	mv	a5,a0
	sw	a5,-88(s0)
	lw	a5,-100(s0)
	bnez	a5,.L636
	lui	a5,%hi(counters)
	lw	a4,-92(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(counters)
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a4,-88(s0)
	sub	a5,a4,a5
	sw	a5,-88(s0)
	lui	a5,%hi(counter_names)
	lw	a4,-92(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(counter_names)
	add	a5,a4,a5
	lui	a4,%hi(.LC110)
	add	a4,a4,%lo(.LC110)
	sw	a4,0(a5)
.L636:
	lw	a5,-92(s0)
	add	a4,a5,1
	sw	a4,-92(s0)
	lui	a3,%hi(counters)
	sll	a4,a5,2
	add	a5,a3,%lo(counters)
	add	a5,a4,a5
	lw	a4,-88(s0)
	sw	a4,0(a5)
	lw	a5,-100(s0)
	bnez	a5,.L637
 #APP
# 1063 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c" 1
	csrrc a0, stats, 1
# 0 "" 2
 #NO_APP
.L637:
	mv	a5,zero
	mv	a0,a5
	lw	s0,108(sp)
	add	sp,sp,112
	jr	ra
	.size	handle_stats, .-handle_stats
	.align	2
	.globl	handle_trap
	.type	handle_trap, @function
handle_trap:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s2,36(sp)
	sw	s3,32(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
 #APP
# 1070 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c" 1
	jal a5, 1f; csrr a0, stats; 1:
# 0 "" 2
 #NO_APP
	sw	a5,-24(s0)
	sw	zero,-20(s0)
	lw	a4,-36(s0)
	li	a5,2
	bne	a4,a5,.L640
	lw	a5,-40(s0)
	lw	a4,0(a5)
	lw	a5,-24(s0)
	lw	a5,0(a5)
	and	a4,a4,a5
	lw	a5,-24(s0)
	lw	a5,0(a5)
	beq	a4,a5,.L641
.L640:
	lw	a5,-44(s0)
	add	a5,a5,136
	lw	a4,0(a5)
	lw	a5,4(a5)
	li	a3,93
	bne	a4,a3,.L642
	bnez	a5,.L642
	lw	a5,-44(s0)
	add	a5,a5,80
	lw	a4,0(a5)
	lw	a5,4(a5)
	mv	a5,a4
	mv	a0,a5
	call	tohost_exit
	j	.L641
.L642:
	lw	a5,-44(s0)
	add	a5,a5,136
	lw	a4,0(a5)
	lw	a5,4(a5)
	li	a3,1234
	bne	a4,a3,.L643
	bnez	a5,.L643
	lw	a5,-44(s0)
	add	a5,a5,80
	lw	a4,0(a5)
	lw	a5,4(a5)
	mv	a5,a4
	mv	a0,a5
	call	handle_stats
	sw	a0,-20(s0)
	j	.L641
.L643:
	lw	a5,-44(s0)
	add	a5,a5,136
	lw	a4,0(a5)
	lw	a5,4(a5)
	mv	a0,a4
	lw	a5,-44(s0)
	add	a5,a5,80
	lw	a4,0(a5)
	lw	a5,4(a5)
	mv	a1,a4
	lw	a5,-44(s0)
	add	a5,a5,88
	lw	a4,0(a5)
	lw	a5,4(a5)
	mv	a2,a4
	lw	a5,-44(s0)
	add	a5,a5,96
	lw	a4,0(a5)
	lw	a5,4(a5)
	mv	a5,a4
	mv	a3,a5
	call	handle_frontend_syscall
	sw	a0,-20(s0)
.L641:
	lw	a5,-44(s0)
	add	a4,a5,80
	lw	a5,-20(s0)
	mv	s2,a5
	sra	a5,a5,31
	mv	s3,a5
	sw	s2,0(a4)
	sw	s3,4(a4)
	lw	a5,-40(s0)
	add	a5,a5,4
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s2,36(sp)
	lw	s3,32(sp)
	add	sp,sp,48
	jr	ra
	.size	handle_trap, .-handle_trap
	.align	2
	.type	syscall, @function
syscall:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	lw	a7,-20(s0)
	lw	a0,-24(s0)
	lw	a1,-28(s0)
	lw	a2,-32(s0)
 #APP
# 1095 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c" 1
	scall
# 0 "" 2
 #NO_APP
	mv	a5,a0
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	syscall, .-syscall
	.align	2
	.globl	printstr
	.type	printstr, @function
printstr:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	li	a3,20
	mv	a2,a5
	li	a1,1
	li	a0,64
	call	syscall
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	printstr, .-printstr
	.align	2
	.type	cputchar, @function
cputchar:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	nop
.L649:
	lw	a1,-36(s0)
	mv	a2,a1
	mv	a3,zero
	and	a4,a2,255
	and	a5,a3,0
	or	a6,a4,0
	li	a1,16842752
	or	a7,a5,a1
 #APP
# 1178 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c" 1
	csrrw a1, tohost, a6
# 0 "" 2
 #NO_APP
	sw	a1,-20(s0)
	lw	a1,-20(s0)
	bnez	a1,.L649
	nop
.L650:
	mv	a5,zero
 #APP
# 1179 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c" 1
	csrrw a5, fromhost, a5
# 0 "" 2
 #NO_APP
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	beqz	a5,.L650
	nop
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	cputchar, .-cputchar
	.align	2
	.type	cputstring, @function
cputstring:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	j	.L652
.L653:
	lw	a5,-20(s0)
	add	a4,a5,1
	sw	a4,-20(s0)
	lbu	a5,0(a5)
	mv	a0,a5
	call	cputchar
.L652:
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	bnez	a5,.L653
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cputstring, .-cputstring
	.align	2
	.type	terminate, @function
terminate:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	nop
.L655:
	lw	a5,-36(s0)
 #APP
# 1190 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c" 1
	csrrw a5, tohost, a5
# 0 "" 2
 #NO_APP
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	bnez	a5,.L655
.L656:
	j	.L656
	.size	terminate, .-terminate
	.comm	l1pt,4096,4096
	.comm	l2pt,4096,4096
	.comm	l3pt,4096,4096
	.comm	user_mapping,16,4
	.comm	freelist_nodes,16,4
	.comm	freelist_head,4,4
	.comm	freelist_tail,4,4
	.section	.boot.text,"ax",@progbits
	.align	2
	.type	insert_region_excluded, @function
insert_region_excluded:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	sw	a2,-32(s0)
	sw	a3,-28(s0)
	nop
	mv	a0,a4
	mv	a1,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	insert_region_excluded, .-insert_region_excluded
	.align	2
	.type	init_freemem, @function
init_freemem:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	init_freemem, .-init_freemem
	.align	2
	.type	init_irqs, @function
init_irqs:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	init_irqs, .-init_irqs
	.align	2
	.type	create_it_frame_cap, @function
create_it_frame_cap:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	nop
	mv	a0,a4
	mv	a1,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	create_it_frame_cap, .-create_it_frame_cap
	.align	2
	.globl	create_unmapped_it_frame_cap
	.type	create_unmapped_it_frame_cap, @function
create_unmapped_it_frame_cap:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	nop
	mv	a0,a4
	mv	a1,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	create_unmapped_it_frame_cap, .-create_unmapped_it_frame_cap
	.align	2
	.globl	create_mapped_it_frame_cap
	.type	create_mapped_it_frame_cap, @function
create_mapped_it_frame_cap:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	sw	a5,-40(s0)
	nop
	mv	a0,a4
	mv	a1,a5
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	create_mapped_it_frame_cap, .-create_mapped_it_frame_cap
	.align	2
	.type	create_it_page_table_cap, @function
create_it_page_table_cap:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	nop
	mv	a0,a4
	mv	a1,a5
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	create_it_page_table_cap, .-create_it_page_table_cap
	.align	2
	.type	create_device_frames, @function
create_device_frames:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	li	a5,1
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	create_device_frames, .-create_device_frames
	.align	2
	.type	init_cpu, @function
init_cpu:
	add	sp,sp,-16
	sw	s0,12(sp)
	add	s0,sp,16
	nop
	lw	s0,12(sp)
	add	sp,sp,16
	jr	ra
	.size	init_cpu, .-init_cpu
	.align	2
	.type	init_plat, @function
init_plat:
	add	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	add	s0,sp,16
	call	initIRQController
	call	initTimer
	call	initL2Cache
	nop
	lw	ra,12(sp)
	lw	s0,8(sp)
	add	sp,sp,16
	jr	ra
	.size	init_plat, .-init_plat
	.align	2
	.type	try_init_kernel, @function
try_init_kernel:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	call	map_kernel_window
	li	a5,1
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	try_init_kernel, .-try_init_kernel
	.text
	.align	2
	.globl	vm_boot
	.type	vm_boot, @function
vm_boot:
	add	sp,sp,-2032
	sw	s0,2028(sp)
	add	s0,sp,2032
	li	t1,8192
	add	t1,t1,224
	sub	sp,sp,t1
	li	a5,-12288
	add	a3,s0,-16
	add	a5,a3,a5
	sw	a0,1868(a5)
	li	a5,-12288
	add	a4,s0,-16
	add	a5,a4,a5
	sw	a1,1864(a5)
	nop
.L671:
 #APP
# 1304 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c" 1
	csrr a5, hartid
# 0 "" 2
 #NO_APP
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	bnez	a5,.L671
	sw	zero,-24(s0)
	lui	a5,%hi(l1pt)
	add	a5,a5,%lo(l1pt)
 #APP
# 1312 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c" 1
	csrw sptbr, a5
# 0 "" 2
 #NO_APP
	li	a5,2013462528
	add	a5,a5,128
 #APP
# 1313 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c" 1
	csrrs a5, mstatus, a5
# 0 "" 2
 #NO_APP
	sw	a5,-28(s0)
	li	a5,7864320
	add	a5,a5,768
 #APP
# 1314 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c" 1
	csrrc a5, mstatus, a5
# 0 "" 2
 #NO_APP
	sw	a5,-32(s0)
	li	a5,2097152
 #APP
# 1315 "/home/hesham/MSc-York/seL4/seL4test/kernel/src/arch/riscv/kernel/boot.c" 1
	csrrs a5, mstatus, a5
# 0 "" 2
 #NO_APP
	sw	a5,-36(s0)
	li	a5,-12288
	add	a3,s0,-16
	add	a5,a3,a5
	li	a4,-12288
	add	a3,s0,-16
	add	a4,a3,a4
	lw	a4,1868(a4)
	sw	a4,2012(a5)
	nop
	li	t1,8192
	add	t1,t1,224
	add	sp,sp,t1
	lw	s0,2028(sp)
	add	sp,sp,2032
	jr	ra
	.size	vm_boot, .-vm_boot
	.section	.rodata
	.align	2
.LC111:
	.string	"Entered the kernel \n"
	.section	.boot.text
	.align	2
	.globl	init_kernel
	.type	init_kernel, @function
init_kernel:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	lui	a5,%hi(init_kernel)
	add	a5,a5,%lo(init_kernel)
	li	a1,1337
	mv	a0,a5
	call	vm_boot
	lui	a5,%hi(.LC111)
	add	a0,a5,%lo(.LC111)
	call	printstr
	mv	a0,zero
	call	terminate
.L673:
	j	.L673
	.size	init_kernel, .-init_kernel
	.text
	.align	2
	.globl	Arch_switchToThread
	.type	Arch_switchToThread, @function
Arch_switchToThread:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	Arch_switchToThread, .-Arch_switchToThread
	.section	.boot.text
	.align	2
	.globl	Arch_configureIdleThread
	.type	Arch_configureIdleThread, @function
Arch_configureIdleThread:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	Arch_configureIdleThread, .-Arch_configureIdleThread
	.text
	.align	2
	.globl	Arch_switchToIdleThread
	.type	Arch_switchToIdleThread, @function
Arch_switchToIdleThread:
	add	sp,sp,-16
	sw	s0,12(sp)
	add	s0,sp,16
	nop
	lw	s0,12(sp)
	add	sp,sp,16
	jr	ra
	.size	Arch_switchToIdleThread, .-Arch_switchToIdleThread
	.align	2
	.globl	Arch_activateIdleThread
	.type	Arch_activateIdleThread, @function
Arch_activateIdleThread:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	Arch_activateIdleThread, .-Arch_activateIdleThread
	.globl	riscv_kernel_stack
	.section	.bss.aligned,"aw",@nobits
	.align	12
	.type	riscv_kernel_stack, @object
	.size	riscv_kernel_stack, 4096
riscv_kernel_stack:
	.zero	4096
	.text
	.align	2
	.type	APFromVMRights, @function
APFromVMRights:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	mv	a5,zero
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	APFromVMRights, .-APFromVMRights
	.section	.boot.text
	.align	2
	.globl	map_it_pt_cap
	.type	map_it_pt_cap, @function
map_it_pt_cap:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	map_it_pt_cap, .-map_it_pt_cap
	.align	2
	.globl	map_kernel_frame
	.type	map_kernel_frame, @function
map_kernel_frame:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	map_kernel_frame, .-map_kernel_frame
	.align	2
	.globl	map_kernel_window
	.type	map_kernel_window, @function
map_kernel_window:
	add	sp,sp,-16
	sw	s0,12(sp)
	add	s0,sp,16
	nop
	lw	s0,12(sp)
	add	sp,sp,16
	jr	ra
	.size	map_kernel_window, .-map_kernel_window
	.align	2
	.globl	activate_global_pd
	.type	activate_global_pd, @function
activate_global_pd:
	add	sp,sp,-16
	sw	s0,12(sp)
	add	s0,sp,16
	nop
	lw	s0,12(sp)
	add	sp,sp,16
	jr	ra
	.size	activate_global_pd, .-activate_global_pd
	.align	2
	.globl	write_it_asid_pool
	.type	write_it_asid_pool, @function
write_it_asid_pool:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	sw	a2,-32(s0)
	sw	a3,-28(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	write_it_asid_pool, .-write_it_asid_pool
	.text
	.align	2
	.globl	copyGlobalMappings
	.type	copyGlobalMappings, @function
copyGlobalMappings:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	copyGlobalMappings, .-copyGlobalMappings
	.align	2
	.globl	lookupIPCBuffer
	.type	lookupIPCBuffer, @function
lookupIPCBuffer:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	nop
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	lookupIPCBuffer, .-lookupIPCBuffer
	.align	2
	.globl	lookupPTSlot
	.type	lookupPTSlot, @function
lookupPTSlot:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	nop
	lw	a0,-20(s0)
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	lookupPTSlot, .-lookupPTSlot
	.align	2
	.type	lookupPTSlot_nofail, @function
lookupPTSlot_nofail:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	nop
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	lookupPTSlot_nofail, .-lookupPTSlot_nofail
	.align	2
	.globl	lookupPDSlot
	.type	lookupPDSlot, @function
lookupPDSlot:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	nop
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	lookupPDSlot, .-lookupPDSlot
	.align	2
	.globl	handleVMFault
	.type	handleVMFault, @function
handleVMFault:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	nop
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	handleVMFault, .-handleVMFault
	.align	2
	.globl	pageTableMapped
	.type	pageTableMapped, @function
pageTableMapped:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	nop
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	pageTableMapped, .-pageTableMapped
	.align	2
	.globl	unmapPageTable
	.type	unmapPageTable, @function
unmapPageTable:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	unmapPageTable, .-unmapPageTable
	.align	2
	.type	pte_pte_invalid_new, @function
pte_pte_invalid_new:
	add	sp,sp,-16
	sw	s0,12(sp)
	add	s0,sp,16
	nop
	mv	a0,a5
	lw	s0,12(sp)
	add	sp,sp,16
	jr	ra
	.size	pte_pte_invalid_new, .-pte_pte_invalid_new
	.align	2
	.globl	unmapPage
	.type	unmapPage, @function
unmapPage:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	unmapPage, .-unmapPage
	.align	2
	.globl	setVMRoot
	.type	setVMRoot, @function
setVMRoot:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	setVMRoot, .-setVMRoot
	.align	2
	.type	setVMRootForFlush, @function
setVMRootForFlush:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	nop
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	setVMRootForFlush, .-setVMRootForFlush
	.align	2
	.globl	isValidVTableRoot
	.type	isValidVTableRoot, @function
isValidVTableRoot:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	nop
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	isValidVTableRoot, .-isValidVTableRoot
	.align	2
	.globl	checkValidIPCBuffer
	.type	checkValidIPCBuffer, @function
checkValidIPCBuffer:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-28(s0)
	sw	a2,-24(s0)
	nop
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	checkValidIPCBuffer, .-checkValidIPCBuffer
	.align	2
	.globl	maskVMRights
	.type	maskVMRights, @function
maskVMRights:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	nop
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	maskVMRights, .-maskVMRights
	.align	2
	.globl	flushPage
	.type	flushPage, @function
flushPage:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	flushPage, .-flushPage
	.align	2
	.globl	flushTable
	.type	flushTable, @function
flushTable:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	flushTable, .-flushTable
	.align	2
	.globl	flushSpace
	.type	flushSpace, @function
flushSpace:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	flushSpace, .-flushSpace
	.align	2
	.globl	invalidateTLBByASID
	.type	invalidateTLBByASID, @function
invalidateTLBByASID:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	invalidateTLBByASID, .-invalidateTLBByASID
	.align	2
	.type	makeUserPTE, @function
makeUserPTE:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	nop
	mv	a0,a5
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	makeUserPTE, .-makeUserPTE
	.align	2
	.type	makeUserPDE, @function
makeUserPDE:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	sw	a5,-40(s0)
	sw	a6,-44(s0)
	nop
	mv	a0,a5
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	makeUserPDE, .-makeUserPDE
	.align	2
	.type	decodeRISCVPageTableInvocation, @function
decodeRISCVPageTableInvocation:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-36(s0)
	sw	a4,-32(s0)
	sw	a6,-40(s0)
	nop
	mv	a0,a5
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	decodeRISCVPageTableInvocation, .-decodeRISCVPageTableInvocation
	.align	2
	.type	createSafeMappingEntries_PTE, @function
createSafeMappingEntries_PTE:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	sw	a5,-40(s0)
	sw	a6,-44(s0)
	nop
	lw	a0,-20(s0)
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	createSafeMappingEntries_PTE, .-createSafeMappingEntries_PTE
	.align	2
	.type	createSafeMappingEntries_PDE, @function
createSafeMappingEntries_PDE:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	sw	a5,-40(s0)
	sw	a6,-44(s0)
	nop
	lw	a0,-20(s0)
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	createSafeMappingEntries_PDE, .-createSafeMappingEntries_PDE
	.align	2
	.type	decodeRISCVFrameInvocation, @function
decodeRISCVFrameInvocation:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-36(s0)
	sw	a4,-32(s0)
	sw	a6,-40(s0)
	nop
	mv	a0,a5
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	decodeRISCVFrameInvocation, .-decodeRISCVFrameInvocation
	.local	default_resolve_ret_t
	.comm	default_resolve_ret_t,12,4
	.align	2
	.type	resolveVAddr, @function
resolveVAddr:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	nop
	lw	a0,-20(s0)
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	resolveVAddr, .-resolveVAddr
	.align	2
	.type	decodeRISCVPageDirectoryInvocation, @function
decodeRISCVPageDirectoryInvocation:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	sw	a7,-44(s0)
	li	a5,3
	mv	a0,a5
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	decodeRISCVPageDirectoryInvocation, .-decodeRISCVPageDirectoryInvocation
	.align	2
	.globl	decodeRISCVMMUInvocation
	.type	decodeRISCVMMUInvocation, @function
decodeRISCVMMUInvocation:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	sw	a7,-44(s0)
	nop
	mv	a0,a5
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	decodeRISCVMMUInvocation, .-decodeRISCVMMUInvocation
	.align	2
	.globl	performPageTableInvocationUnmap
	.type	performPageTableInvocationUnmap, @function
performPageTableInvocationUnmap:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	sw	a2,-28(s0)
	nop
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	performPageTableInvocationUnmap, .-performPageTableInvocationUnmap
	.align	2
	.type	performPageGetAddress, @function
performPageGetAddress:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	performPageGetAddress, .-performPageGetAddress
	.align	2
	.type	pteCheckIfMapped, @function
pteCheckIfMapped:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	pteCheckIfMapped, .-pteCheckIfMapped
	.align	2
	.type	pdeCheckIfMapped, @function
pdeCheckIfMapped:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	pdeCheckIfMapped, .-pdeCheckIfMapped
	.align	2
	.globl	performPageInvocationMapPTE
	.type	performPageInvocationMapPTE, @function
performPageInvocationMapPTE:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	nop
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	performPageInvocationMapPTE, .-performPageInvocationMapPTE
	.align	2
	.globl	performPageInvocationMapPDE
	.type	performPageInvocationMapPDE, @function
performPageInvocationMapPDE:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	nop
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	performPageInvocationMapPDE, .-performPageInvocationMapPDE
	.align	2
	.globl	performPageInvocationRemapPTE
	.type	performPageInvocationRemapPTE, @function
performPageInvocationRemapPTE:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	mv	a5,zero
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	performPageInvocationRemapPTE, .-performPageInvocationRemapPTE
	.align	2
	.globl	performPageInvocationRemapPDE
	.type	performPageInvocationRemapPDE, @function
performPageInvocationRemapPDE:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	mv	a5,zero
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	performPageInvocationRemapPDE, .-performPageInvocationRemapPDE
	.align	2
	.globl	performPageInvocationUnmap
	.type	performPageInvocationUnmap, @function
performPageInvocationUnmap:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	sw	a2,-28(s0)
	mv	a5,zero
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	performPageInvocationUnmap, .-performPageInvocationUnmap
	.align	2
	.globl	performASIDControlInvocation
	.type	performASIDControlInvocation, @function
performASIDControlInvocation:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	mv	a5,zero
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	performASIDControlInvocation, .-performASIDControlInvocation
	.align	2
	.globl	doFlush
	.type	doFlush, @function
doFlush:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	doFlush, .-doFlush
	.align	2
	.type	performPageFlush, @function
performPageFlush:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	sw	a5,-40(s0)
	mv	a5,zero
	mv	a0,a5
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	performPageFlush, .-performPageFlush
	.align	2
	.type	performPDFlush, @function
performPDFlush:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	sw	a5,-40(s0)
	mv	a5,zero
	mv	a0,a5
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	performPDFlush, .-performPDFlush
	.align	2
	.globl	kernelPrefetchAbort
	.type	kernelPrefetchAbort, @function
kernelPrefetchAbort:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	kernelPrefetchAbort, .-kernelPrefetchAbort
	.align	2
	.globl	kernelDataAbort
	.type	kernelDataAbort, @function
kernelDataAbort:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	kernelDataAbort, .-kernelDataAbort
	.align	2
	.type	getDecodedChar, @function
getDecodedChar:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	getDecodedChar, .-getDecodedChar
	.align	2
	.type	putEncodedChar, @function
putEncodedChar:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	mv	a5,a0
	sb	a5,-17(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	putEncodedChar, .-putEncodedChar
	.align	2
	.type	getArg32, @function
getArg32:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	getArg32, .-getArg32
	.align	2
	.type	sendWord, @function
sendWord:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	sendWord, .-sendWord
	.align	2
	.type	getMDBParent, @function
getMDBParent:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	getMDBParent, .-getMDBParent
	.align	2
	.type	sendPD, @function
sendPD:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	sendPD, .-sendPD
	.align	2
	.type	sendPT, @function
sendPT:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	sendPT, .-sendPT
	.align	2
	.type	sendASIDPool, @function
sendASIDPool:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	sendASIDPool, .-sendASIDPool
	.align	2
	.type	sendRunqueues, @function
sendRunqueues:
	add	sp,sp,-16
	sw	s0,12(sp)
	add	s0,sp,16
	nop
	lw	s0,12(sp)
	add	sp,sp,16
	jr	ra
	.size	sendRunqueues, .-sendRunqueues
	.align	2
	.type	sendEPQueue, @function
sendEPQueue:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	sendEPQueue, .-sendEPQueue
	.align	2
	.type	sendCNode, @function
sendCNode:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	sendCNode, .-sendCNode
	.align	2
	.type	sendIRQNode, @function
sendIRQNode:
	add	sp,sp,-16
	sw	s0,12(sp)
	add	s0,sp,16
	nop
	lw	s0,12(sp)
	add	sp,sp,16
	jr	ra
	.size	sendIRQNode, .-sendIRQNode
	.align	2
	.type	sendVersion, @function
sendVersion:
	add	sp,sp,-16
	sw	s0,12(sp)
	add	s0,sp,16
	nop
	lw	s0,12(sp)
	add	sp,sp,16
	jr	ra
	.size	sendVersion, .-sendVersion
	.align	2
	.globl	capDL
	.type	capDL, @function
capDL:
	add	sp,sp,-16
	sw	s0,12(sp)
	add	s0,sp,16
	nop
	lw	s0,12(sp)
	add	sp,sp,16
	jr	ra
	.size	capDL, .-capDL
	.align	2
	.globl	debug_init
	.type	debug_init, @function
debug_init:
	add	sp,sp,-16
	sw	s0,12(sp)
	add	s0,sp,16
	nop
	lw	s0,12(sp)
	add	sp,sp,16
	jr	ra
	.size	debug_init, .-debug_init
	.align	2
	.globl	software_breakpoint
	.type	software_breakpoint, @function
software_breakpoint:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	software_breakpoint, .-software_breakpoint
	.align	2
	.globl	breakpoint_multiplexer
	.type	breakpoint_multiplexer, @function
breakpoint_multiplexer:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	breakpoint_multiplexer, .-breakpoint_multiplexer
	.align	2
	.globl	set_breakpoint
	.type	set_breakpoint, @function
set_breakpoint:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	mv	a5,zero
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	set_breakpoint, .-set_breakpoint
	.align	2
	.globl	clear_breakpoint
	.type	clear_breakpoint, @function
clear_breakpoint:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	clear_breakpoint, .-clear_breakpoint
	.comm	catch_handler,4,4
	.align	2
	.globl	set_catch_handler
	.type	set_catch_handler, @function
set_catch_handler:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	set_catch_handler, .-set_catch_handler
	.align	2
	.globl	catch_vector
	.type	catch_vector, @function
catch_vector:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	catch_vector, .-catch_vector
	.align	2
	.globl	uncatch_vector
	.type	uncatch_vector, @function
uncatch_vector:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	uncatch_vector, .-uncatch_vector
	.align	2
	.globl	getRestartPC
	.type	getRestartPC, @function
getRestartPC:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	getRestartPC, .-getRestartPC
	.align	2
	.globl	setNextPC
	.type	setNextPC, @function
setNextPC:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	setNextPC, .-setNextPC
	.globl	msgRegisters
	.section	.rodata
	.align	2
	.type	msgRegisters, @object
	.size	msgRegisters, 16
msgRegisters:
	.word	20
	.word	21
	.word	22
	.word	23
	.globl	frameRegisters
	.align	2
	.type	frameRegisters, @object
	.size	frameRegisters, 28
frameRegisters:
	.word	18
	.word	19
	.word	20
	.word	21
	.word	22
	.word	23
	.word	24
	.globl	gpRegisters
	.align	2
	.type	gpRegisters, @object
	.size	gpRegisters, 28
gpRegisters:
	.word	18
	.word	19
	.word	20
	.word	21
	.word	22
	.word	23
	.word	24
	.globl	exceptionMessage
	.section	.sdata,"aw",@progbits
	.align	2
	.type	exceptionMessage, @object
	.size	exceptionMessage, 4
exceptionMessage:
	.word	14
	.globl	syscallMessage
	.section	.rodata
	.align	2
	.type	syscallMessage, @object
	.size	syscallMessage, 36
syscallMessage:
	.word	18
	.word	19
	.word	20
	.word	21
	.word	22
	.word	23
	.word	24
	.word	25
	.word	14
	.text
	.align	2
	.globl	Arch_decodeInterruptControl
	.type	Arch_decodeInterruptControl, @function
Arch_decodeInterruptControl:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	li	a5,3
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	Arch_decodeInterruptControl, .-Arch_decodeInterruptControl
	.align	2
	.globl	Arch_deriveCap
	.type	Arch_deriveCap, @function
Arch_deriveCap:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-32(s0)
	sw	a3,-28(s0)
	nop
	lw	a0,-20(s0)
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	Arch_deriveCap, .-Arch_deriveCap
	.align	2
	.globl	Arch_updateCapData
	.type	Arch_updateCapData, @function
Arch_updateCapData:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-48(s0)
	sw	a3,-44(s0)
	lw	a5,-48(s0)
	sw	a5,-24(s0)
	lw	a5,-44(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	Arch_updateCapData, .-Arch_updateCapData
	.align	2
	.globl	Arch_maskCapRights
	.type	Arch_maskCapRights, @function
Arch_maskCapRights:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-44(s0)
	sw	a2,-40(s0)
	lw	a5,-44(s0)
	sw	a5,-24(s0)
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	Arch_maskCapRights, .-Arch_maskCapRights
	.align	2
	.globl	Arch_finaliseCap
	.type	Arch_finaliseCap, @function
Arch_finaliseCap:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s2,36(sp)
	sw	s3,32(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	s2,a4
	mv	s3,a5
	mv	a4,s2
	mv	a5,s3
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s2,36(sp)
	lw	s3,32(sp)
	add	sp,sp,48
	jr	ra
	.size	Arch_finaliseCap, .-Arch_finaliseCap
	.align	2
	.type	resetMemMapping, @function
resetMemMapping:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	resetMemMapping, .-resetMemMapping
	.align	2
	.globl	Arch_recycleCap
	.type	Arch_recycleCap, @function
Arch_recycleCap:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s2,36(sp)
	sw	s3,32(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-44(s0)
	sw	a2,-40(s0)
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	s2,a4
	mv	s3,a5
	mv	a4,s2
	mv	a5,s3
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s2,36(sp)
	lw	s3,32(sp)
	add	sp,sp,48
	jr	ra
	.size	Arch_recycleCap, .-Arch_recycleCap
	.align	2
	.globl	Arch_hasRecycleRights
	.type	Arch_hasRecycleRights, @function
Arch_hasRecycleRights:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	li	a5,1
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	Arch_hasRecycleRights, .-Arch_hasRecycleRights
	.align	2
	.globl	Arch_sameRegionAs
	.type	Arch_sameRegionAs, @function
Arch_sameRegionAs:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	sw	a2,-32(s0)
	sw	a3,-28(s0)
	mv	a5,zero
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	Arch_sameRegionAs, .-Arch_sameRegionAs
	.align	2
	.globl	Arch_sameObjectAs
	.type	Arch_sameObjectAs, @function
Arch_sameObjectAs:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	sw	a2,-32(s0)
	sw	a3,-28(s0)
	mv	a5,zero
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	Arch_sameObjectAs, .-Arch_sameObjectAs
	.align	2
	.globl	Arch_getObjectSize
	.type	Arch_getObjectSize, @function
Arch_getObjectSize:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	mv	a5,zero
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	Arch_getObjectSize, .-Arch_getObjectSize
	.align	2
	.globl	Arch_createObject
	.type	Arch_createObject, @function
Arch_createObject:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	nop
	mv	a0,a4
	mv	a1,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	Arch_createObject, .-Arch_createObject
	.align	2
	.globl	Arch_decodeInvocation
	.type	Arch_decodeInvocation, @function
Arch_decodeInvocation:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	mv	ra,a6
	sw	a7,-44(s0)
	lw	a5,0(ra)
	sw	a5,-64(s0)
	lw	a5,4(ra)
	sw	a5,-60(s0)
	lw	a5,8(ra)
	sw	a5,-56(s0)
	add	a5,s0,-64
	lw	a7,-44(s0)
	mv	a6,a5
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	decodeRISCVMMUInvocation
	mv	a5,a0
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	Arch_decodeInvocation, .-Arch_decodeInvocation
	.align	2
	.globl	Arch_prepareThreadDelete
	.type	Arch_prepareThreadDelete, @function
Arch_prepareThreadDelete:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	Arch_prepareThreadDelete, .-Arch_prepareThreadDelete
	.align	2
	.globl	Arch_isFrameType
	.type	Arch_isFrameType, @function
Arch_isFrameType:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	Arch_isFrameType, .-Arch_isFrameType
	.align	2
	.globl	setMRs_fault
	.type	setMRs_fault, @function
setMRs_fault:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	mv	a5,zero
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	setMRs_fault, .-setMRs_fault
	.align	2
	.globl	setMRs_syscall_error
	.type	setMRs_syscall_error, @function
setMRs_syscall_error:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	mv	a5,zero
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	setMRs_syscall_error, .-setMRs_syscall_error
	.align	2
	.globl	Arch_decodeTransfer
	.type	Arch_decodeTransfer, @function
Arch_decodeTransfer:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	mv	a5,zero
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	Arch_decodeTransfer, .-Arch_decodeTransfer
	.align	2
	.globl	Arch_performTransfer
	.type	Arch_performTransfer, @function
Arch_performTransfer:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	mv	a5,zero
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	Arch_performTransfer, .-Arch_performTransfer
	.align	2
	.globl	Arch_leaveVMAsyncTransfer
	.type	Arch_leaveVMAsyncTransfer, @function
Arch_leaveVMAsyncTransfer:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	Arch_leaveVMAsyncTransfer, .-Arch_leaveVMAsyncTransfer
	.section	.rodata
	.align	2
.LC112:
	.string	"seL4 called fail at %s:%u in function %s, saying \"%s\"\n"
	.text
	.align	2
	.globl	_fail
	.type	_fail, @function
_fail:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	lw	a4,-20(s0)
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lui	a5,%hi(.LC112)
	add	a0,a5,%lo(.LC112)
	call	printf
	call	halt
	.size	_fail, .-_fail
	.section	.rodata
	.align	2
.LC113:
	.string	"seL4 failed assertion '%s' at %s:%u in function %s\n"
	.text
	.align	2
	.globl	_assert_fail
	.type	_assert_fail, @function
_assert_fail:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	lw	a4,-32(s0)
	lw	a3,-28(s0)
	lw	a2,-24(s0)
	lw	a1,-20(s0)
	lui	a5,%hi(.LC113)
	add	a0,a5,%lo(.LC113)
	call	printf
	call	halt
	.size	_assert_fail, .-_assert_fail
	.comm	current_lookup_fault,8,4
	.comm	current_fault,8,4
	.comm	current_syscall_error,28,4
	.globl	ndks_boot
	.section	.boot.data,"aw",@progbits
	.align	2
	.type	ndks_boot, @object
	.size	ndks_boot, 28
ndks_boot:
	.zero	28
	.section	.rodata
	.align	2
.LC114:
	.string	"Assertion failed: reg.start <= reg.end\n"
	.section	.boot.text
	.align	2
	.globl	insert_region
	.type	insert_region, @function
insert_region:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	bleu	a4,a5,.L805
	lui	a5,%hi(.LC114)
	add	a0,a5,%lo(.LC114)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L799
.L805:
	nop
.L799:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	is_reg_empty
	mv	a5,a0
	beqz	a5,.L800
	li	a5,1
	j	.L801
.L800:
	sw	zero,-20(s0)
	j	.L802
.L804:
	lui	a5,%hi(ndks_boot)
	lw	a4,-20(s0)
	sll	a4,a4,3
	add	a5,a5,%lo(ndks_boot)
	add	a5,a4,a5
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	is_reg_empty
	mv	a5,a0
	beqz	a5,.L803
	lui	a5,%hi(ndks_boot)
	lw	a4,-20(s0)
	sll	a4,a4,3
	add	a5,a5,%lo(ndks_boot)
	add	a5,a4,a5
	lw	a4,-40(s0)
	sw	a4,0(a5)
	lw	a4,-36(s0)
	sw	a4,4(a5)
	li	a5,1
	j	.L801
.L803:
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L802:
	lw	a4,-20(s0)
	li	a5,1
	bleu	a4,a5,.L804
	mv	a5,zero
.L801:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	insert_region, .-insert_region
	.align	2
	.type	reg_size, @function
reg_size:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	reg_size, .-reg_size
	.section	.rodata
	.align	2
.LC115:
	.string	"Kernel init failing: not enough memory"
	.align	2
.LC116:
	.string	"alloc_region(): wasted 0x%x bytes due to alignment, try to increase MAX_NUM_FREEMEM_REG\n"
	.section	.boot.text
	.align	2
	.globl	alloc_region
	.type	alloc_region, @function
alloc_region:
	add	sp,sp,-96
	sw	ra,92(sp)
	sw	s0,88(sp)
	sw	s1,84(sp)
	add	s0,sp,96
	sw	a0,-84(s0)
	sw	zero,-24(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	sw	zero,-40(s0)
	sw	zero,-36(s0)
	sw	zero,-48(s0)
	sw	zero,-44(s0)
	sw	zero,-20(s0)
	j	.L809
.L816:
	lui	a5,%hi(ndks_boot)
	lw	a4,-20(s0)
	sll	a4,a4,3
	add	a5,a5,%lo(ndks_boot)
	add	a5,a4,a5
	lw	a5,0(a5)
	add	a4,a5,-1
	lw	a5,-84(s0)
	srl	a5,a4,a5
	add	a4,a5,1
	lw	a5,-84(s0)
	sll	a4,a4,a5
	lui	a5,%hi(ndks_boot)
	lw	a3,-20(s0)
	sll	a3,a3,3
	add	a5,a5,%lo(ndks_boot)
	add	a5,a3,a5
	lw	a5,0(a5)
	sub	a4,a4,a5
	lui	a3,%hi(ndks_boot)
	lw	a5,-20(s0)
	add	a3,a3,%lo(ndks_boot)
	sll	a5,a5,3
	add	a5,a3,a5
	lw	a3,4(a5)
	lui	a2,%hi(ndks_boot)
	lw	a5,-20(s0)
	add	a2,a2,%lo(ndks_boot)
	sll	a5,a5,3
	add	a5,a2,a5
	lw	a2,4(a5)
	lw	a5,-84(s0)
	srl	a2,a2,a5
	lw	a5,-84(s0)
	sll	a5,a2,a5
	sub	a5,a3,a5
	bgeu	a4,a5,.L810
	lui	a5,%hi(ndks_boot)
	lw	a4,-20(s0)
	sll	a4,a4,3
	add	a5,a5,%lo(ndks_boot)
	add	a5,a4,a5
	lw	a5,0(a5)
	add	a4,a5,-1
	lw	a5,-84(s0)
	srl	a5,a4,a5
	add	a4,a5,1
	lw	a5,-84(s0)
	sll	a5,a4,a5
	sw	a5,-56(s0)
	lw	a4,-56(s0)
	li	a3,1
	lw	a5,-84(s0)
	sll	a5,a3,a5
	add	a5,a4,a5
	sw	a5,-52(s0)
	j	.L811
.L810:
	lui	a4,%hi(ndks_boot)
	lw	a5,-20(s0)
	add	a4,a4,%lo(ndks_boot)
	sll	a5,a5,3
	add	a5,a4,a5
	lw	a4,4(a5)
	lw	a5,-84(s0)
	srl	a4,a4,a5
	lw	a5,-84(s0)
	sll	a5,a4,a5
	sw	a5,-52(s0)
	lw	a4,-52(s0)
	li	a3,1
	lw	a5,-84(s0)
	sll	a5,a3,a5
	sub	a5,a4,a5
	sw	a5,-56(s0)
.L811:
	lw	a4,-52(s0)
	lw	a5,-56(s0)
	bleu	a4,a5,.L812
	lw	a4,-56(s0)
	lui	a5,%hi(ndks_boot)
	lw	a3,-20(s0)
	sll	a3,a3,3
	add	a5,a5,%lo(ndks_boot)
	add	a5,a3,a5
	lw	a5,0(a5)
	bltu	a4,a5,.L812
	lw	a4,-52(s0)
	lui	a3,%hi(ndks_boot)
	lw	a5,-20(s0)
	add	a3,a3,%lo(ndks_boot)
	sll	a5,a5,3
	add	a5,a3,a5
	lw	a5,4(a5)
	bgtu	a4,a5,.L812
	lw	a4,-56(s0)
	lui	a5,%hi(ndks_boot)
	lw	a3,-20(s0)
	sll	a3,a3,3
	add	a5,a5,%lo(ndks_boot)
	add	a5,a3,a5
	lw	a5,0(a5)
	sub	a4,a4,a5
	lui	a3,%hi(ndks_boot)
	lw	a5,-20(s0)
	add	a3,a3,%lo(ndks_boot)
	sll	a5,a5,3
	add	a5,a3,a5
	lw	a3,4(a5)
	lw	a5,-52(s0)
	sub	a5,a3,a5
	bgeu	a4,a5,.L813
	lui	a5,%hi(ndks_boot)
	lw	a4,-20(s0)
	sll	a4,a4,3
	add	a5,a5,%lo(ndks_boot)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-64(s0)
	lw	a5,-56(s0)
	sw	a5,-60(s0)
	lw	a5,-52(s0)
	sw	a5,-72(s0)
	lui	a4,%hi(ndks_boot)
	lw	a5,-20(s0)
	add	a4,a4,%lo(ndks_boot)
	sll	a5,a5,3
	add	a5,a4,a5
	lw	a5,4(a5)
	sw	a5,-68(s0)
	j	.L814
.L813:
	lui	a5,%hi(ndks_boot)
	lw	a4,-20(s0)
	sll	a4,a4,3
	add	a5,a5,%lo(ndks_boot)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-72(s0)
	lw	a5,-56(s0)
	sw	a5,-68(s0)
	lw	a5,-52(s0)
	sw	a5,-64(s0)
	lui	a4,%hi(ndks_boot)
	lw	a5,-20(s0)
	add	a4,a4,%lo(ndks_boot)
	sll	a5,a5,3
	add	a5,a4,a5
	lw	a5,4(a5)
	sw	a5,-60(s0)
.L814:
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	is_reg_empty
	mv	a5,a0
	bnez	a5,.L815
	lw	a0,-64(s0)
	lw	a1,-60(s0)
	call	reg_size
	mv	s1,a0
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	reg_size
	mv	a5,a0
	bltu	s1,a5,.L815
	lw	a0,-64(s0)
	lw	a1,-60(s0)
	call	reg_size
	mv	s1,a0
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	reg_size
	mv	a5,a0
	bne	s1,a5,.L812
	lw	a0,-72(s0)
	lw	a1,-68(s0)
	call	reg_size
	mv	s1,a0
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	reg_size
	mv	a5,a0
	bgeu	s1,a5,.L812
.L815:
	lw	a5,-56(s0)
	sw	a5,-32(s0)
	lw	a5,-52(s0)
	sw	a5,-28(s0)
	lw	a5,-64(s0)
	sw	a5,-40(s0)
	lw	a5,-60(s0)
	sw	a5,-36(s0)
	lw	a5,-72(s0)
	sw	a5,-48(s0)
	lw	a5,-68(s0)
	sw	a5,-44(s0)
	lw	a5,-20(s0)
	sw	a5,-24(s0)
.L812:
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L809:
	lw	a4,-20(s0)
	li	a5,1
	bleu	a4,a5,.L816
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	is_reg_empty
	mv	a5,a0
	beqz	a5,.L817
	lui	a5,%hi(.LC115)
	add	a0,a5,%lo(.LC115)
	call	puts
	mv	a5,zero
	j	.L820
.L817:
	lui	a5,%hi(ndks_boot)
	lw	a4,-24(s0)
	sll	a4,a4,3
	add	a5,a5,%lo(ndks_boot)
	add	a5,a4,a5
	sw	zero,0(a5)
	lui	a4,%hi(ndks_boot)
	lw	a5,-24(s0)
	add	a4,a4,%lo(ndks_boot)
	sll	a5,a5,3
	add	a5,a4,a5
	sw	zero,4(a5)
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	insert_region
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	insert_region
	mv	a5,a0
	bnez	a5,.L819
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	sub	a5,a4,a5
	mv	a1,a5
	lui	a5,%hi(.LC116)
	add	a0,a5,%lo(.LC116)
	call	printf
.L819:
	lw	a5,-32(s0)
.L820:
	mv	a0,a5
	lw	ra,92(sp)
	lw	s0,88(sp)
	lw	s1,84(sp)
	add	sp,sp,96
	jr	ra
	.size	alloc_region, .-alloc_region
	.align	2
	.globl	write_slot
	.type	write_slot, @function
write_slot:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-28(s0)
	sw	a2,-24(s0)
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
	lw	a4,-24(s0)
	sw	a4,4(a5)
	lw	a1,-20(s0)
	mv	a0,zero
	call	cdtInsert
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	write_slot, .-write_slot
	.section	.rodata
	.align	2
.LC117:
	.string	"Kernel init failing: could not create root cnode"
	.section	.boot.text
	.align	2
	.globl	create_root_cnode
	.type	create_root_cnode, @function
create_root_cnode:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s2,36(sp)
	sw	s3,32(sp)
	add	s0,sp,48
	lui	a5,%hi(ndks_boot)
	add	a5,a5,%lo(ndks_boot)
	li	a4,65536
	sw	a4,24(a5)
	li	a0,20
	call	alloc_region
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	bnez	a5,.L823
	lui	a5,%hi(.LC117)
	add	a0,a5,%lo(.LC117)
	call	puts
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-28(s0)
	sw	a5,-24(s0)
	j	.L825
.L823:
	lw	a5,-20(s0)
	li	a1,1048576
	mv	a0,a5
	call	memzero
	lw	a3,-20(s0)
	mv	a2,zero
	li	a1,16
	li	a0,16
	call	cap_cnode_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-36(s0)
	sw	a5,-32(s0)
	lw	a5,-20(s0)
	add	a5,a5,32
	lw	a1,-36(s0)
	lw	a2,-32(s0)
	mv	a0,a5
	call	write_slot
	lw	a5,-36(s0)
	sw	a5,-28(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
.L825:
	mv	a4,zero
	lw	a4,-28(s0)
	mv	a5,zero
	lw	a5,-24(s0)
	mv	s2,a4
	mv	s3,a5
	mv	a4,s2
	mv	a5,s3
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s2,36(sp)
	lw	s3,32(sp)
	add	sp,sp,48
	jr	ra
	.size	create_root_cnode, .-create_root_cnode
	.section	.rodata
	.align	2
.LC118:
	.string	"Kernel init failing: could not create irq cnode"
	.section	.boot.text
	.align	2
	.globl	create_irq_cnode
	.type	create_irq_cnode, @function
create_irq_cnode:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	li	a0,12
	call	alloc_region
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	bnez	a5,.L827
	lui	a5,%hi(.LC118)
	add	a0,a5,%lo(.LC118)
	call	puts
	mv	a5,zero
	j	.L828
.L827:
	lw	a5,-20(s0)
	li	a1,4096
	mv	a0,a5
	call	memzero
	lw	a4,-20(s0)
	lui	a5,%hi(intStateIRQNode)
	sw	a4,%lo(intStateIRQNode)(a5)
	li	a5,1
.L828:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	create_irq_cnode, .-create_irq_cnode
	.section	.rodata
	.align	2
.LC119:
	.string	"Assertion failed: ksDomScheduleLength > 0\n"
	.align	2
.LC120:
	.string	"Assertion failed: ksDomSchedule[i].domain < 1\n"
	.align	2
.LC121:
	.string	"Assertion failed: ksDomSchedule[i].length > 0\n"
	.section	.boot.text
	.align	2
	.globl	create_domain_cap
	.type	create_domain_cap, @function
create_domain_cap:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	li	a5,1
	bnez	a5,.L838
	lui	a5,%hi(.LC119)
	add	a0,a5,%lo(.LC119)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L831
.L838:
	nop
.L831:
	sw	zero,-20(s0)
	j	.L832
.L837:
	lui	a5,%hi(ksDomSchedule)
	lw	a4,-20(s0)
	sll	a4,a4,3
	add	a5,a5,%lo(ksDomSchedule)
	add	a5,a4,a5
	lw	a5,0(a5)
	beqz	a5,.L839
	lui	a5,%hi(.LC120)
	add	a0,a5,%lo(.LC120)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L834
.L839:
	nop
.L834:
	li	a5,1
	bnez	a5,.L840
	lui	a5,%hi(.LC121)
	add	a0,a5,%lo(.LC121)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L836
.L840:
	nop
.L836:
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L832:
	li	a5,1
	lw	a4,-20(s0)
	bltu	a4,a5,.L837
	call	cap_domain_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-28(s0)
	sw	a5,-24(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_capPtr
	mv	a5,a0
	add	a5,a5,176
	lw	a1,-28(s0)
	lw	a2,-24(s0)
	mv	a0,a5
	call	write_slot
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	create_domain_cap, .-create_domain_cap
	.section	.rodata
	.align	2
.LC122:
	.string	"Kernel init failing: could not create ipc buffer frame"
	.section	.boot.text
	.align	2
	.globl	create_ipcbuf_frame
	.type	create_ipcbuf_frame, @function
create_ipcbuf_frame:
	add	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s2,68(sp)
	sw	s3,64(sp)
	add	s0,sp,80
	sw	a0,-56(s0)
	sw	a1,-52(s0)
	sw	a2,-64(s0)
	sw	a3,-60(s0)
	sw	a4,-68(s0)
	li	a0,12
	call	alloc_region
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	bnez	a5,.L842
	lui	a5,%hi(.LC122)
	add	a0,a5,%lo(.LC122)
	call	puts
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-28(s0)
	sw	a5,-24(s0)
	j	.L844
.L842:
	lw	a5,-20(s0)
	li	a1,12
	mv	a0,a5
	call	clearMemory
	mv	a5,zero
	mv	a4,zero
	lw	a3,-68(s0)
	lw	a2,-20(s0)
	lw	a0,-64(s0)
	lw	a1,-60(s0)
	call	create_mapped_it_frame_cap
	mv	a4,a0
	mv	a5,a1
	sw	a4,-36(s0)
	sw	a5,-32(s0)
	lw	a0,-56(s0)
	lw	a1,-52(s0)
	call	cap_get_capPtr
	mv	a5,a0
	add	a5,a5,144
	lw	a1,-36(s0)
	lw	a2,-32(s0)
	mv	a0,a5
	call	write_slot
	lw	a5,-36(s0)
	sw	a5,-28(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
.L844:
	mv	a4,zero
	lw	a4,-28(s0)
	mv	a5,zero
	lw	a5,-24(s0)
	mv	s2,a4
	mv	s3,a5
	mv	a4,s2
	mv	a5,s3
	mv	a0,a4
	mv	a1,a5
	lw	ra,76(sp)
	lw	s0,72(sp)
	lw	s2,68(sp)
	lw	s3,64(sp)
	add	sp,sp,80
	jr	ra
	.size	create_ipcbuf_frame, .-create_ipcbuf_frame
	.align	2
	.globl	create_bi_frame_cap
	.type	create_bi_frame_cap, @function
create_bi_frame_cap:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-48(s0)
	sw	a3,-44(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	mv	a5,zero
	mv	a4,zero
	lw	a3,-56(s0)
	lw	a2,-52(s0)
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	create_mapped_it_frame_cap
	mv	a4,a0
	mv	a5,a1
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_capPtr
	mv	a5,a0
	add	a5,a5,112
	lw	a1,-24(s0)
	lw	a2,-20(s0)
	mv	a0,a5
	call	write_slot
	nop
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	create_bi_frame_cap, .-create_bi_frame_cap
	.section	.rodata
	.align	2
.LC123:
	.string	"Kernel init failed: could not allocate bootinfo frame"
	.section	.boot.text
	.align	2
	.globl	allocate_bi_frame
	.type	allocate_bi_frame, @function
allocate_bi_frame:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	li	a0,12
	call	alloc_region
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	bnez	a5,.L847
	lui	a5,%hi(.LC123)
	add	a0,a5,%lo(.LC123)
	call	puts
	mv	a5,zero
	j	.L848
.L847:
	lw	a5,-20(s0)
	li	a1,12
	mv	a0,a5
	call	clearMemory
	lw	a4,-20(s0)
	lui	a5,%hi(ndks_boot)
	add	a5,a5,%lo(ndks_boot)
	sw	a4,16(a5)
	lui	a5,%hi(ndks_boot)
	add	a5,a5,%lo(ndks_boot)
	li	a4,12
	sw	a4,20(a5)
	lw	a5,-20(s0)
	lw	a4,-36(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	lw	a4,-40(s0)
	sw	a4,4(a5)
	lw	a5,-20(s0)
	sw	zero,8(a5)
	lw	a5,-20(s0)
	lw	a4,-44(s0)
	sw	a4,12(a5)
	lw	a4,-20(s0)
	li	a5,4096
	add	a5,a4,a5
	li	a4,16
	sb	a4,-24(a5)
	lw	a3,-20(s0)
	lui	a5,%hi(ksDomScheduleIdx)
	lw	a4,%lo(ksDomScheduleIdx)(a5)
	lui	a5,%hi(ksDomSchedule)
	sll	a4,a4,3
	add	a5,a5,%lo(ksDomSchedule)
	add	a5,a4,a5
	lw	a4,0(a5)
	li	a5,4096
	add	a5,a3,a5
	sw	a4,-20(a5)
	lw	a5,-20(s0)
.L848:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	allocate_bi_frame, .-allocate_bi_frame
	.section	.rodata
	.align	2
.LC124:
	.string	"Kernel init failed: ran out of cap slots"
	.section	.boot.text
	.align	2
	.globl	provide_cap
	.type	provide_cap, @function
provide_cap:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	sw	a2,-32(s0)
	sw	a3,-28(s0)
	lui	a5,%hi(ndks_boot)
	add	a5,a5,%lo(ndks_boot)
	lw	a4,20(a5)
	lui	a5,%hi(ndks_boot)
	add	a5,a5,%lo(ndks_boot)
	lw	a5,24(a5)
	bltu	a4,a5,.L850
	lui	a5,%hi(.LC124)
	add	a0,a5,%lo(.LC124)
	call	puts
	mv	a5,zero
	j	.L851
.L850:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_get_capPtr
	mv	a4,a0
	lui	a5,%hi(ndks_boot)
	add	a5,a5,%lo(ndks_boot)
	lw	a5,20(a5)
	sll	a5,a5,4
	add	a5,a4,a5
	lw	a1,-32(s0)
	lw	a2,-28(s0)
	mv	a0,a5
	call	write_slot
	lui	a5,%hi(ndks_boot)
	add	a5,a5,%lo(ndks_boot)
	lw	a5,20(a5)
	add	a4,a5,1
	lui	a5,%hi(ndks_boot)
	add	a5,a5,%lo(ndks_boot)
	sw	a4,20(a5)
	li	a5,1
.L851:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	provide_cap, .-provide_cap
	.align	2
	.globl	create_frames_of_region
	.type	create_frames_of_region, @function
create_frames_of_region:
	add	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	add	s0,sp,80
	sw	a0,-52(s0)
	sw	a1,-60(s0)
	sw	a2,-56(s0)
	sw	a3,-68(s0)
	sw	a4,-64(s0)
	sw	a5,-76(s0)
	sw	a6,-72(s0)
	sw	a7,-80(s0)
	lui	a5,%hi(ndks_boot)
	add	a5,a5,%lo(ndks_boot)
	lw	a5,20(a5)
	sw	a5,-24(s0)
	lw	a5,-76(s0)
	sw	a5,-20(s0)
	j	.L853
.L858:
	lw	a5,-80(s0)
	beqz	a5,.L854
	lw	a5,0(s0)
	lw	a4,-20(s0)
	sub	a4,a4,a5
	li	a5,-1879048192
	add	a3,a4,a5
	mv	a5,zero
	mv	a4,zero
	lw	a2,-20(s0)
	lw	a0,-68(s0)
	lw	a1,-64(s0)
	call	create_mapped_it_frame_cap
	mv	a4,a0
	mv	a5,a1
	sw	a4,-36(s0)
	sw	a5,-32(s0)
	j	.L855
.L854:
	mv	a1,zero
	lw	a0,-20(s0)
	call	create_unmapped_it_frame_cap
	mv	a4,a0
	mv	a5,a1
	sw	a4,-36(s0)
	sw	a5,-32(s0)
.L855:
	lw	a2,-36(s0)
	lw	a3,-32(s0)
	lw	a0,-60(s0)
	lw	a1,-56(s0)
	call	provide_cap
	mv	a5,a0
	bnez	a5,.L856
	lw	a5,-52(s0)
	sw	zero,0(a5)
	lw	a5,-52(s0)
	sw	zero,4(a5)
	lw	a5,-52(s0)
	sw	zero,8(a5)
	j	.L852
.L856:
	lw	a4,-20(s0)
	li	a5,4096
	add	a5,a4,a5
	sw	a5,-20(s0)
.L853:
	lw	a4,-72(s0)
	lw	a5,-20(s0)
	bgtu	a4,a5,.L858
	lui	a5,%hi(ndks_boot)
	add	a5,a5,%lo(ndks_boot)
	lw	a5,20(a5)
	sw	a5,-28(s0)
	lw	a5,-52(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	lw	a5,-52(s0)
	lw	a4,-28(s0)
	sw	a4,4(a5)
	lw	a5,-52(s0)
	li	a4,1
	sw	a4,8(a5)
.L852:
	lw	a0,-52(s0)
	lw	ra,76(sp)
	lw	s0,72(sp)
	add	sp,sp,80
	jr	ra
	.size	create_frames_of_region, .-create_frames_of_region
	.section	.rodata
	.align	2
.LC125:
	.string	"Kernel init failed: Unable to allocate tcb for idle thread"
	.section	.boot.text
	.align	2
	.globl	create_idle_thread
	.type	create_idle_thread, @function
create_idle_thread:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	li	a0,9
	call	alloc_region
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	bnez	a5,.L861
	lui	a5,%hi(.LC125)
	add	a0,a5,%lo(.LC125)
	call	puts
	mv	a5,zero
	j	.L862
.L861:
	lw	a5,-20(s0)
	li	a1,512
	mv	a0,a5
	call	memzero
	lw	a5,-20(s0)
	add	a5,a5,256
	mv	a4,a5
	lui	a5,%hi(ksIdleThread)
	sw	a4,%lo(ksIdleThread)(a5)
	lui	a5,%hi(ksIdleThread)
	lw	a5,%lo(ksIdleThread)(a5)
	mv	a0,a5
	call	configureIdleThread
	li	a5,1
.L862:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	create_idle_thread, .-create_idle_thread
	.section	.rodata
	.align	2
.LC126:
	.string	"Kernel init failed: Unable to allocate tcb for initial thread"
	.align	2
.LC127:
	.string	"Failed to derive copy of IPC Buffer"
	.align	2
.LC128:
	.string	"Assertion failed: ksCurDomain < 1 && ksDomainTime > 0\n"
	.section	.boot.text
	.align	2
	.globl	create_initial_thread
	.type	create_initial_thread, @function
create_initial_thread:
	add	sp,sp,-96
	sw	ra,76(sp)
	sw	s0,72(sp)
	add	s0,sp,80
	sw	a0,-56(s0)
	sw	a1,-52(s0)
	sw	a2,-64(s0)
	sw	a3,-60(s0)
	sw	a4,-68(s0)
	sw	a5,-72(s0)
	sw	a6,-76(s0)
	sw	a7,12(s0)
	li	a0,9
	call	alloc_region
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	bnez	a5,.L864
	lui	a5,%hi(.LC126)
	add	a0,a5,%lo(.LC126)
	call	puts
	mv	a5,zero
	j	.L869
.L864:
	lw	a5,-20(s0)
	li	a1,512
	mv	a0,a5
	call	memzero
	lw	a5,-20(s0)
	add	a5,a5,256
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	li	a4,1
	sw	a4,168(a5)
	lw	a5,-24(s0)
	mv	a0,a5
	call	Arch_initContext
	lw	a0,-56(s0)
	lw	a1,-52(s0)
	call	cap_get_capPtr
	mv	a5,a0
	add	a4,a5,144
	add	a5,s0,-44
	lw	a2,12(s0)
	lw	a3,16(s0)
	mv	a1,a4
	mv	a0,a5
	call	deriveCap
	lw	a5,-44(s0)
	beqz	a5,.L866
	lui	a5,%hi(.LC127)
	add	a0,a5,%lo(.LC127)
	call	puts
	mv	a5,zero
	j	.L869
.L866:
	lw	a0,-56(s0)
	lw	a1,-52(s0)
	call	cap_get_capPtr
	mv	a5,a0
	add	a5,a5,32
	lw	a4,-20(s0)
	mv	a3,a4
	mv	a2,a5
	lw	a0,-56(s0)
	lw	a1,-52(s0)
	call	cteInsert
	lw	a0,-56(s0)
	lw	a1,-52(s0)
	call	cap_get_capPtr
	mv	a5,a0
	add	a4,a5,48
	lw	a5,-20(s0)
	add	a5,a5,16
	mv	a3,a5
	mv	a2,a4
	lw	a0,-64(s0)
	lw	a1,-60(s0)
	call	cteInsert
	lw	a0,-56(s0)
	lw	a1,-52(s0)
	call	cap_get_capPtr
	mv	a5,a0
	add	a4,a5,144
	lw	a5,-20(s0)
	add	a5,a5,64
	mv	a3,a5
	mv	a2,a4
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cteInsert
	lw	a5,-24(s0)
	lw	a4,-76(s0)
	sw	a4,176(a5)
	lw	a2,-72(s0)
	li	a1,18
	lw	a0,-24(s0)
	call	setRegister
	lw	a1,-68(s0)
	lw	a0,-24(s0)
	call	setNextPC
	lw	a5,-24(s0)
	li	a4,255
	sw	a4,164(a5)
	lw	a0,-24(s0)
	call	setupReplyMaster
	li	a1,1
	lw	a0,-24(s0)
	call	setThreadState
	lui	a5,%hi(ksSchedulerAction)
	sw	zero,%lo(ksSchedulerAction)(a5)
	lui	a5,%hi(ksIdleThread)
	lw	a4,%lo(ksIdleThread)(a5)
	lui	a5,%hi(ksCurThread)
	sw	a4,%lo(ksCurThread)(a5)
	lui	a5,%hi(ksDomScheduleIdx)
	lw	a4,%lo(ksDomScheduleIdx)(a5)
	lui	a5,%hi(ksDomSchedule)
	sll	a4,a4,3
	add	a5,a5,%lo(ksDomSchedule)
	add	a5,a4,a5
	lw	a4,0(a5)
	lui	a5,%hi(ksCurDomain)
	sw	a4,%lo(ksCurDomain)(a5)
	li	a4,1
	lui	a5,%hi(ksDomainTime)
	sw	a4,%lo(ksDomainTime)(a5)
	lui	a5,%hi(ksCurDomain)
	lw	a5,%lo(ksCurDomain)(a5)
	bnez	a5,.L867
	lui	a5,%hi(ksDomainTime)
	lw	a5,%lo(ksDomainTime)(a5)
	bnez	a5,.L870
.L867:
	lui	a5,%hi(.LC128)
	add	a0,a5,%lo(.LC128)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L868
.L870:
	nop
.L868:
	lw	a0,-24(s0)
	call	switchToThread
	lw	a5,-24(s0)
	mv	a0,a5
	call	cap_thread_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-32(s0)
	sw	a5,-28(s0)
	lw	a0,-56(s0)
	lw	a1,-52(s0)
	call	cap_get_capPtr
	mv	a5,a0
	add	a5,a5,16
	lw	a1,-32(s0)
	lw	a2,-28(s0)
	mv	a0,a5
	call	write_slot
	li	a5,1
.L869:
	mv	a0,a5
	lw	ra,76(sp)
	lw	s0,72(sp)
	add	sp,sp,96
	jr	ra
	.size	create_initial_thread, .-create_initial_thread
	.section	.rodata
	.align	2
.LC129:
	.string	"Kernel init: Too many untyped regions for boot info"
	.section	.boot.text
	.align	2
	.type	provide_untyped_cap, @function
provide_untyped_cap:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	add	s0,sp,64
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	lui	a5,%hi(ndks_boot)
	add	a5,a5,%lo(ndks_boot)
	lw	a4,20(a5)
	lw	a5,-56(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
	lw	a4,-24(s0)
	li	a5,799
	bgtu	a4,a5,.L872
	lui	a5,%hi(ndks_boot)
	add	a5,a5,%lo(ndks_boot)
	lw	s1,16(a5)
	lw	a5,-48(s0)
	mv	a0,a5
	call	pptr_to_paddr
	mv	a4,a0
	lw	a5,-24(s0)
	add	a5,a5,16
	sll	a5,a5,2
	add	a5,s1,a5
	sw	a4,8(a5)
	lui	a5,%hi(ndks_boot)
	add	a5,a5,%lo(ndks_boot)
	lw	a3,16(a5)
	lw	a5,-52(s0)
	and	a4,a5,0xff
	lw	a5,-24(s0)
	add	a5,a3,a5
	li	a3,4096
	add	a5,a3,a5
	sb	a4,-824(a5)
	lw	a2,-48(s0)
	lw	a1,-52(s0)
	lw	a0,-44(s0)
	call	cap_untyped_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-32(s0)
	sw	a5,-28(s0)
	lw	a2,-32(s0)
	lw	a3,-28(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	provide_cap
	sw	a0,-20(s0)
	j	.L873
.L872:
	lui	a5,%hi(.LC129)
	add	a0,a5,%lo(.LC129)
	call	puts
	li	a5,1
	sw	a5,-20(s0)
.L873:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s1,52(sp)
	add	sp,sp,64
	jr	ra
	.size	provide_untyped_cap, .-provide_untyped_cap
	.globl	__clzsi2
	.align	2
	.type	boot_clz, @function
boot_clz:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a0,-20(s0)
	call	__clzsi2
	mv	a5,a0
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	boot_clz, .-boot_clz
	.globl	__ctzsi2
	.align	2
	.type	boot_ctz, @function
boot_ctz:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a0,-20(s0)
	call	__ctzsi2
	mv	a5,a0
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	boot_ctz, .-boot_ctz
	.section	.rodata
	.align	2
.LC130:
	.string	"Assertion failed: size_bits >= (8 * sizeof(word_t)) / 8\n"
	.section	.boot.text
	.align	2
	.globl	create_untypeds_for_region
	.type	create_untypeds_for_region, @function
create_untypeds_for_region:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	sw	a3,-52(s0)
	sw	a4,-48(s0)
	sw	a5,-56(s0)
	j	.L880
.L887:
	lw	a5,-44(s0)
	bnez	a5,.L881
	lw	a4,-52(s0)
	li	a5,-268435456
	bne	a4,a5,.L881
	lw	a4,-52(s0)
	li	a5,4096
	add	a5,a4,a5
	sw	a5,-52(s0)
.L881:
	lw	a4,-48(s0)
	lw	a5,-52(s0)
	sub	a5,a4,a5
	mv	a0,a5
	call	boot_clz
	mv	a4,a0
	li	a5,31
	sub	a5,a5,a4
	sw	a5,-20(s0)
	lw	a5,-52(s0)
	mv	a0,a5
	call	boot_ctz
	sw	a0,-24(s0)
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	bgeu	a4,a5,.L882
	lw	a5,-24(s0)
	sw	a5,-20(s0)
.L882:
	lw	a4,-20(s0)
	li	a5,3
	bgtu	a4,a5,.L888
	lui	a5,%hi(.LC130)
	add	a0,a5,%lo(.LC130)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L884
.L888:
	nop
.L884:
	lw	a3,-52(s0)
	lw	a5,-56(s0)
	lw	a4,-20(s0)
	lw	a2,-44(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	provide_untyped_cap
	mv	a5,a0
	bnez	a5,.L885
	mv	a5,zero
	j	.L886
.L885:
	lw	a4,-52(s0)
	li	a3,1
	lw	a5,-20(s0)
	sll	a5,a3,a5
	add	a5,a4,a5
	sw	a5,-52(s0)
.L880:
	lw	a0,-52(s0)
	lw	a1,-48(s0)
	call	is_reg_empty
	mv	a5,a0
	beqz	a5,.L887
	li	a5,1
.L886:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	create_untypeds_for_region, .-create_untypeds_for_region
	.align	2
	.globl	create_untypeds
	.type	create_untypeds, @function
create_untypeds:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-56(s0)
	sw	a1,-52(s0)
	sw	a2,-64(s0)
	sw	a3,-60(s0)
	lui	a5,%hi(ndks_boot)
	add	a5,a5,%lo(ndks_boot)
	lw	a5,20(a5)
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	lw	a3,-64(s0)
	lw	a4,-60(s0)
	mv	a2,zero
	lw	a0,-56(s0)
	lw	a1,-52(s0)
	call	create_untypeds_for_region
	mv	a5,a0
	bnez	a5,.L890
	mv	a5,zero
	j	.L895
.L890:
	sw	zero,-20(s0)
	j	.L892
.L894:
	lui	a5,%hi(ndks_boot)
	lw	a4,-20(s0)
	sll	a4,a4,3
	add	a5,a5,%lo(ndks_boot)
	add	a5,a4,a5
	lw	a4,0(a5)
	sw	a4,-36(s0)
	lw	a5,4(a5)
	sw	a5,-32(s0)
	lui	a5,%hi(ndks_boot)
	lw	a4,-20(s0)
	sll	a4,a4,3
	add	a5,a5,%lo(ndks_boot)
	add	a5,a4,a5
	sw	zero,0(a5)
	lui	a4,%hi(ndks_boot)
	lw	a5,-20(s0)
	add	a4,a4,%lo(ndks_boot)
	sll	a5,a5,3
	add	a5,a4,a5
	sw	zero,4(a5)
	lw	a5,-24(s0)
	lw	a3,-36(s0)
	lw	a4,-32(s0)
	mv	a2,zero
	lw	a0,-56(s0)
	lw	a1,-52(s0)
	call	create_untypeds_for_region
	mv	a5,a0
	bnez	a5,.L893
	mv	a5,zero
	j	.L895
.L893:
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L892:
	lw	a4,-20(s0)
	li	a5,1
	bleu	a4,a5,.L894
	lui	a5,%hi(ndks_boot)
	add	a5,a5,%lo(ndks_boot)
	lw	a5,20(a5)
	sw	a5,-28(s0)
	lui	a5,%hi(ndks_boot)
	add	a5,a5,%lo(ndks_boot)
	lw	a5,16(a5)
	lw	a4,-24(s0)
	sw	a4,56(a5)
	lw	a4,-28(s0)
	sw	a4,60(a5)
	li	a5,1
.L895:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	create_untypeds, .-create_untypeds
	.align	2
	.globl	bi_finalise
	.type	bi_finalise, @function
bi_finalise:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	lui	a5,%hi(ndks_boot)
	add	a5,a5,%lo(ndks_boot)
	lw	a5,20(a5)
	sw	a5,-20(s0)
	lui	a5,%hi(ndks_boot)
	add	a5,a5,%lo(ndks_boot)
	lw	a5,24(a5)
	sw	a5,-24(s0)
	lui	a5,%hi(ndks_boot)
	add	a5,a5,%lo(ndks_boot)
	lw	a5,16(a5)
	lw	a4,-20(s0)
	sw	a4,16(a5)
	lw	a4,-24(s0)
	sw	a4,20(a5)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	bi_finalise, .-bi_finalise
	.text
	.align	2
	.type	compare, @function
compare:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	beq	a4,a5,.L898
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	ble	a4,a5,.L899
	li	a5,1
	j	.L902
.L899:
	li	a5,-1
	j	.L902
.L898:
	mv	a5,zero
.L902:
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	compare, .-compare
	.align	2
	.type	capsEqual, @function
capsEqual:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	sw	a2,-32(s0)
	sw	a3,-28(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_get_capSpaceType
	mv	s1,a0
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	cap_get_capSpaceType
	mv	a5,a0
	bne	s1,a5,.L904
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_get_capSpacePtr
	mv	a5,a0
	mv	s1,a5
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	cap_get_capSpacePtr
	mv	a5,a0
	bne	s1,a5,.L904
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_get_capSpaceSize
	mv	s1,a0
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	cap_get_capSpaceSize
	mv	a5,a0
	bne	s1,a5,.L904
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_get_capBadge
	mv	s1,a0
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	cap_get_capBadge
	mv	a5,a0
	bne	s1,a5,.L904
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_get_capExtraComp
	mv	s1,a0
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	cap_get_capExtraComp
	mv	a5,a0
	bne	s1,a5,.L904
	li	a5,1
	j	.L905
.L904:
	mv	a5,zero
.L905:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	lw	s1,20(sp)
	add	sp,sp,32
	jr	ra
	.size	capsEqual, .-capsEqual
	.align	2
	.type	_compSpace, @function
_compSpace:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	lw	a5,-36(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpaceType
	mv	a5,a0
	lw	a1,-40(s0)
	mv	a0,a5
	call	compare
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	beqz	a5,.L908
	lw	a5,-20(s0)
	j	.L909
.L908:
	lw	a5,-36(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpacePtr
	mv	a5,a0
	mv	a4,a5
	lw	a5,-44(s0)
	mv	a1,a5
	mv	a0,a4
	call	compare
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	beqz	a5,.L910
	lw	a5,-20(s0)
	j	.L909
.L910:
	lw	a5,-36(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpaceSize
	mv	a5,a0
	mv	a4,a5
	lw	a5,-48(s0)
	mv	a1,a5
	mv	a0,a4
	call	compare
	mv	a5,a0
	sub	a5,zero,a5
.L909:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	_compSpace, .-_compSpace
	.align	2
	.type	_compBadge, @function
_compBadge:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	_compSpace
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	beqz	a5,.L912
	lw	a5,-20(s0)
	j	.L913
.L912:
	lw	a5,-36(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capBadge
	mv	a5,a0
	mv	a4,a5
	lw	a5,-52(s0)
	mv	a1,a5
	mv	a0,a4
	call	compare
	mv	a5,a0
.L913:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	_compBadge, .-_compBadge
	.align	2
	.type	_compDepth, @function
_compDepth:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	lw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	_compBadge
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	beqz	a5,.L915
	lw	a5,-20(s0)
	j	.L916
.L915:
	lw	a5,-36(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtDepth
	mv	a5,a0
	mv	a4,a5
	lw	a5,-56(s0)
	mv	a1,a5
	mv	a0,a4
	call	compare
	mv	a5,a0
.L916:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	_compDepth, .-_compDepth
	.align	2
	.type	_compExtra, @function
_compExtra:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	sw	a6,-60(s0)
	lw	a5,-56(s0)
	lw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	_compDepth
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	beqz	a5,.L918
	lw	a5,-20(s0)
	j	.L919
.L918:
	lw	a5,-36(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capExtraComp
	mv	a5,a0
	mv	a4,a5
	lw	a5,-60(s0)
	mv	a1,a5
	mv	a0,a4
	call	compare
	mv	a5,a0
.L919:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	_compExtra, .-_compExtra
	.align	2
	.type	compExtra, @function
compExtra:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a5,-40(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpaceType
	mv	s1,a0
	lw	a5,-40(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpacePtr
	mv	a5,a0
	mv	s2,a5
	lw	a5,-40(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpaceSize
	mv	s3,a0
	lw	a5,-40(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capBadge
	mv	s4,a0
	lw	a5,-40(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtDepth
	mv	s5,a0
	lw	a5,-40(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capExtraComp
	mv	a5,a0
	mv	a6,a5
	mv	a5,s5
	mv	a4,s4
	mv	a3,s3
	mv	a2,s2
	mv	a1,s1
	lw	a0,-36(s0)
	call	_compExtra
	mv	a5,a0
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	lw	s2,32(sp)
	lw	s3,28(sp)
	lw	s4,24(sp)
	lw	s5,20(sp)
	add	sp,sp,48
	jr	ra
	.size	compExtra, .-compExtra
	.align	2
	.type	_compSlot, @function
_compSlot:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	sw	a6,-60(s0)
	sw	a7,-64(s0)
	lw	a6,-60(s0)
	lw	a5,-56(s0)
	lw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	_compExtra
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	beqz	a5,.L923
	lw	a5,-20(s0)
	j	.L924
.L923:
	lw	a5,-36(s0)
	lw	a4,-64(s0)
	mv	a1,a4
	mv	a0,a5
	call	compare
	mv	a5,a0
.L924:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	_compSlot, .-_compSlot
	.align	2
	.type	compSlot, @function
compSlot:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a5,-40(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpaceType
	mv	s1,a0
	lw	a5,-40(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpacePtr
	mv	a5,a0
	mv	s2,a5
	lw	a5,-40(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpaceSize
	mv	s3,a0
	lw	a5,-40(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capBadge
	mv	s4,a0
	lw	a5,-40(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtDepth
	mv	s5,a0
	lw	a5,-40(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capExtraComp
	mv	a5,a0
	lw	a7,-40(s0)
	mv	a6,a5
	mv	a5,s5
	mv	a4,s4
	mv	a3,s3
	mv	a2,s2
	mv	a1,s1
	lw	a0,-36(s0)
	call	_compSlot
	mv	a5,a0
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	lw	s2,32(sp)
	lw	s3,28(sp)
	lw	s4,24(sp)
	lw	s5,20(sp)
	add	sp,sp,48
	jr	ra
	.size	compSlot, .-compSlot
	.align	2
	.globl	cdtCapFindWithExtra
	.type	cdtCapFindWithExtra, @function
cdtCapFindWithExtra:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_capSpaceType
	mv	s1,a0
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_capSpacePtr
	mv	a5,a0
	mv	s2,a5
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_capSpaceSize
	mv	s3,a0
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_capBadge
	mv	s4,a0
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cte_depth_bits_cap
	mv	a5,a0
	mv	a4,a5
	mv	a3,s4
	mv	a2,s3
	mv	a1,s2
	mv	a0,s1
	call	cdtFindWithExtra
	mv	a5,a0
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	lw	s2,32(sp)
	lw	s3,28(sp)
	lw	s4,24(sp)
	add	sp,sp,48
	jr	ra
	.size	cdtCapFindWithExtra, .-cdtCapFindWithExtra
	.section	.rodata
	.align	2
.LC131:
	.string	"/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/cdt.c"
	.align	2
.LC132:
	.string	"Cannot be equal here"
	.text
	.align	2
	.globl	cdtFindWithExtra
	.type	cdtFindWithExtra, @function
cdtFindWithExtra:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	zero,-20(s0)
	j	.L930
.L939:
	lui	a5,%hi(ksRootCTE)
	lw	a5,%lo(ksRootCTE)(a5)
	sw	a5,-24(s0)
.L938:
	lw	a5,-24(s0)
	sw	a5,-32(s0)
	lw	a3,-44(s0)
	lw	a2,-40(s0)
	lw	a1,-36(s0)
	lw	a0,-32(s0)
	call	_compSpace
	sw	a0,-28(s0)
	lw	a5,-28(s0)
	bnez	a5,.L931
	lw	a5,-32(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capExtraComp
	mv	a5,a0
	beqz	a5,.L932
	lw	a5,-32(s0)
	j	.L933
.L932:
	li	a6,-1
	lw	a5,-20(s0)
	lw	a4,-48(s0)
	lw	a3,-44(s0)
	lw	a2,-40(s0)
	lw	a1,-36(s0)
	lw	a0,-32(s0)
	call	_compExtra
	sw	a0,-28(s0)
.L931:
	lw	a5,-28(s0)
	beqz	a5,.L935
	li	a4,1
	beq	a5,a4,.L936
	li	a4,-1
	bne	a5,a4,.L934
	lw	a5,-32(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtRight
	mv	a5,a0
	sw	a5,-24(s0)
	j	.L934
.L936:
	lw	a5,-32(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLeft
	mv	a5,a0
	sw	a5,-24(s0)
	j	.L934
.L935:
	lui	a5,%hi(__func__.4911)
	add	a3,a5,%lo(__func__.4911)
	li	a2,144
	lui	a5,%hi(.LC131)
	add	a1,a5,%lo(.LC131)
	lui	a5,%hi(.LC132)
	add	a0,a5,%lo(.LC132)
	call	_fail
.L934:
	lw	a5,-24(s0)
	bnez	a5,.L938
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L930:
	li	a4,1
	lw	a5,-52(s0)
	sll	a4,a4,a5
	lw	a5,-20(s0)
	bgtu	a4,a5,.L939
	mv	a5,zero
.L933:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	cdtFindWithExtra, .-cdtFindWithExtra
	.align	2
	.globl	cdtFindAtDepth
	.type	cdtFindAtDepth, @function
cdtFindAtDepth:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	lui	a5,%hi(ksRootCTE)
	lw	a5,%lo(ksRootCTE)(a5)
	sw	a5,-20(s0)
.L946:
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	lw	a6,-52(s0)
	lw	a5,-56(s0)
	lw	a4,-48(s0)
	lw	a3,-44(s0)
	lw	a2,-40(s0)
	lw	a1,-36(s0)
	lw	a0,-24(s0)
	call	_compExtra
	mv	a5,a0
	beqz	a5,.L942
	li	a4,1
	beq	a5,a4,.L943
	li	a4,-1
	bne	a5,a4,.L941
	lw	a5,-24(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtRight
	mv	a5,a0
	sw	a5,-20(s0)
	j	.L941
.L943:
	lw	a5,-24(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLeft
	mv	a5,a0
	sw	a5,-20(s0)
	j	.L941
.L942:
	lw	a5,-24(s0)
	j	.L945
.L941:
	lw	a5,-20(s0)
	bnez	a5,.L946
	mv	a5,zero
.L945:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	cdtFindAtDepth, .-cdtFindAtDepth
	.align	2
	.globl	cdtFind
	.type	cdtFind, @function
cdtFind:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	sw	zero,-20(s0)
	j	.L948
.L951:
	lw	a5,-20(s0)
	lw	a4,-52(s0)
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	cdtFindAtDepth
	sw	a0,-24(s0)
	lw	a5,-24(s0)
	beqz	a5,.L949
	lw	a5,-24(s0)
	j	.L950
.L949:
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L948:
	li	a4,1
	lw	a5,-56(s0)
	sll	a4,a4,a5
	lw	a5,-20(s0)
	bgtu	a4,a5,.L951
	mv	a5,zero
.L950:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	cdtFind, .-cdtFind
	.align	2
	.globl	cdtIsFinal
	.type	cdtIsFinal, @function
cdtIsFinal:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a0,-36(s0)
	call	aaTraverseForward
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	beqz	a5,.L953
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	lw	a2,0(a4)
	lw	a3,4(a4)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	sameObjectAs
	mv	a5,a0
	beqz	a5,.L953
	mv	a5,zero
	j	.L954
.L953:
	lw	a0,-36(s0)
	call	aaTraverseBackward
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	beqz	a5,.L955
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	lw	a2,0(a4)
	lw	a3,4(a4)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	sameObjectAs
	mv	a5,a0
	beqz	a5,.L955
	mv	a5,zero
	j	.L954
.L955:
	li	a5,1
.L954:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cdtIsFinal, .-cdtIsFinal
	.section	.rodata
	.align	2
.LC133:
	.string	"Assertion failed: !\"Should never actually find this node as it has zero size\"\n"
	.text
	.align	2
	.globl	cdtFindInRange
	.type	cdtFindInRange, @function
cdtFindInRange:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	lui	a5,%hi(ksRootCTE)
	lw	a5,%lo(ksRootCTE)(a5)
	sw	a5,-20(s0)
.L962:
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	lw	a4,-40(s0)
	lw	a5,-44(s0)
	add	a5,a4,a5
	add	a5,a5,-1
	mv	a3,zero
	mv	a2,a5
	lw	a1,-36(s0)
	lw	a0,-24(s0)
	call	_compSpace
	sw	a0,-28(s0)
	lw	a4,-28(s0)
	li	a5,-1
	bne	a4,a5,.L957
	lw	a5,-24(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpaceType
	mv	a4,a0
	lw	a5,-36(s0)
	bne	a4,a5,.L958
	lw	a5,-24(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpacePtr
	mv	a5,a0
	mv	a3,a5
	lw	a4,-40(s0)
	lw	a5,-44(s0)
	add	a5,a4,a5
	bgeu	a3,a5,.L958
	lw	a5,-24(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpacePtr
	mv	a5,a0
	mv	s1,a5
	lw	a5,-24(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpaceSize
	mv	a5,a0
	add	a4,s1,a5
	lw	a5,-40(s0)
	bleu	a4,a5,.L958
	lw	a5,-24(s0)
	j	.L959
.L958:
	lw	a5,-24(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtRight
	mv	a5,a0
	sw	a5,-20(s0)
	j	.L960
.L957:
	lw	a4,-28(s0)
	li	a5,1
	bne	a4,a5,.L961
	lw	a5,-24(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLeft
	mv	a5,a0
	sw	a5,-20(s0)
	j	.L960
.L961:
	lui	a5,%hi(.LC133)
	add	a0,a5,%lo(.LC133)
	call	cputstring
	li	a0,3
	call	terminate
.L960:
	lw	a5,-20(s0)
	bnez	a5,.L962
	mv	a5,zero
.L959:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	add	sp,sp,48
	jr	ra
	.size	cdtFindInRange, .-cdtFindInRange
	.align	2
	.type	isCDTParentOf, @function
isCDTParentOf:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	lw	a2,0(a4)
	lw	a3,4(a4)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	sameRegionAs
	mv	a5,a0
	bnez	a5,.L964
	mv	a5,zero
	j	.L965
.L964:
	lw	a5,-36(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capBadge
	sw	a0,-20(s0)
	lw	a5,-40(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capBadge
	sw	a0,-24(s0)
	lw	a5,-20(s0)
	bnez	a5,.L966
	lw	a5,-24(s0)
	beqz	a5,.L966
	li	a5,1
	j	.L965
.L966:
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	beq	a4,a5,.L967
	mv	a5,zero
	j	.L965
.L967:
	li	a5,1
.L965:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	isCDTParentOf, .-isCDTParentOf
	.align	2
	.type	_cdtFindBadgedChild, @function
_cdtFindBadgedChild:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-52(s0)
	lw	a5,-52(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpaceType
	sw	a0,-28(s0)
	lw	a5,-52(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpacePtr
	mv	a5,a0
	sw	a5,-32(s0)
	lw	a5,-52(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpaceSize
	sw	a0,-36(s0)
	lw	a5,-52(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capBadge
	sw	a0,-40(s0)
	lui	a5,%hi(ksRootCTE)
	lw	a5,%lo(ksRootCTE)(a5)
	sw	a5,-24(s0)
	sw	zero,-20(s0)
.L974:
	lw	a5,-24(s0)
	sw	a5,-44(s0)
	lw	a5,-52(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cte_depth_bits_cap
	mv	a4,a0
	li	a5,1
	sll	a5,a5,a4
	lw	a4,-40(s0)
	lw	a3,-36(s0)
	lw	a2,-32(s0)
	lw	a1,-28(s0)
	lw	a0,-44(s0)
	call	_compDepth
	sw	a0,-48(s0)
	lw	a4,-48(s0)
	li	a5,-1
	bne	a4,a5,.L969
	lw	a5,-20(s0)
	beqz	a5,.L970
	lw	a1,-20(s0)
	lw	a0,-44(s0)
	call	compExtra
	mv	a4,a0
	li	a5,1
	bne	a4,a5,.L971
.L970:
	lw	a5,-44(s0)
	sw	a5,-20(s0)
.L971:
	lw	a5,-44(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtRight
	mv	a5,a0
	sw	a5,-24(s0)
	j	.L972
.L969:
	lw	a4,-48(s0)
	li	a5,1
	bne	a4,a5,.L973
	lw	a5,-44(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLeft
	mv	a5,a0
	sw	a5,-24(s0)
	j	.L972
.L973:
	lui	a5,%hi(.LC133)
	add	a0,a5,%lo(.LC133)
	call	cputstring
	li	a0,3
	call	terminate
.L972:
	lw	a5,-24(s0)
	bnez	a5,.L974
	lw	a5,-20(s0)
	beqz	a5,.L975
	lw	a1,-52(s0)
	lw	a0,-20(s0)
	call	compExtra
	mv	a4,a0
	li	a5,1
	bne	a4,a5,.L975
	lw	a1,-20(s0)
	lw	a0,-52(s0)
	call	isCDTParentOf
	mv	a5,a0
	bnez	a5,.L976
.L975:
	mv	a5,zero
	j	.L977
.L976:
	lw	a5,-20(s0)
.L977:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	_cdtFindBadgedChild, .-_cdtFindBadgedChild
	.align	2
	.type	_cdtFindChild, @function
_cdtFindChild:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-52(s0)
	lw	a5,-52(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpaceType
	sw	a0,-28(s0)
	lw	a5,-52(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpacePtr
	mv	a5,a0
	sw	a5,-32(s0)
	lw	a5,-52(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpaceSize
	sw	a0,-36(s0)
	lui	a5,%hi(ksRootCTE)
	lw	a5,%lo(ksRootCTE)(a5)
	sw	a5,-24(s0)
	sw	zero,-20(s0)
.L984:
	lw	a5,-24(s0)
	sw	a5,-40(s0)
	lw	a4,-32(s0)
	lw	a5,-36(s0)
	add	a5,a4,a5
	add	a5,a5,-1
	mv	a3,zero
	mv	a2,a5
	lw	a1,-28(s0)
	lw	a0,-40(s0)
	call	_compSpace
	sw	a0,-44(s0)
	lw	a4,-44(s0)
	li	a5,-1
	bne	a4,a5,.L979
	lw	a5,-20(s0)
	beqz	a5,.L980
	lw	a1,-20(s0)
	lw	a0,-40(s0)
	call	compExtra
	mv	a4,a0
	li	a5,1
	bne	a4,a5,.L981
.L980:
	lw	a5,-40(s0)
	sw	a5,-20(s0)
.L981:
	lw	a5,-40(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtRight
	mv	a5,a0
	sw	a5,-24(s0)
	j	.L982
.L979:
	lw	a4,-44(s0)
	li	a5,1
	bne	a4,a5,.L983
	lw	a5,-40(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLeft
	mv	a5,a0
	sw	a5,-24(s0)
	j	.L982
.L983:
	lui	a5,%hi(.LC133)
	add	a0,a5,%lo(.LC133)
	call	cputstring
	li	a0,3
	call	terminate
.L982:
	lw	a5,-24(s0)
	bnez	a5,.L984
	lw	a5,-20(s0)
	beqz	a5,.L985
	lw	a1,-52(s0)
	lw	a0,-20(s0)
	call	compExtra
	mv	a4,a0
	li	a5,1
	bne	a4,a5,.L985
	lw	a4,-20(s0)
	lw	a5,-52(s0)
	lw	a2,0(a4)
	lw	a3,4(a4)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	sameRegionAs
	mv	a5,a0
	bnez	a5,.L986
.L985:
	mv	a5,zero
	j	.L987
.L986:
	lw	a5,-20(s0)
.L987:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	_cdtFindChild, .-_cdtFindChild
	.align	2
	.globl	cdtFindChild
	.type	cdtFindChild, @function
cdtFindChild:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpaceType
	mv	a5,a0
	bnez	a5,.L989
	lw	a5,-36(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpacePtr
	mv	a5,a0
	mv	s1,a5
	lw	a5,-36(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpaceSize
	mv	a5,a0
	mv	a2,a5
	mv	a1,s1
	li	a0,1
	call	cdtFindInRange
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	beqz	a5,.L989
	lw	a5,-20(s0)
	j	.L990
.L989:
	lw	a5,-36(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capBadge
	mv	a5,a0
	beqz	a5,.L991
	lw	a0,-36(s0)
	call	_cdtFindBadgedChild
	mv	a5,a0
	j	.L990
.L991:
	lw	a0,-36(s0)
	call	_cdtFindChild
	mv	a5,a0
.L990:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	add	sp,sp,48
	jr	ra
	.size	cdtFindChild, .-cdtFindChild
	.align	2
	.type	cdtInsertTree, @function
cdtInsertTree:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lui	a5,%hi(ksRootCTE)
	lw	a5,%lo(ksRootCTE)(a5)
	lw	a1,-20(s0)
	mv	a0,a5
	call	aaInsert
	mv	a4,a0
	lui	a5,%hi(ksRootCTE)
	sw	a4,%lo(ksRootCTE)(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cdtInsertTree, .-cdtInsertTree
	.section	.rodata
	.align	2
.LC134:
	.string	"Assertion failed: cap_get_capType(newSlot->cap) != cap_null_cap\n"
	.align	2
.LC135:
	.string	"Assertion failed: !parentSlot || cap_get_capType(parentSlot->cap) != cap_null_cap\n"
	.text
	.align	2
	.globl	cdtInsert
	.type	cdtInsert, @function
cdtInsert:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a5,-40(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	bnez	a5,.L1000
	lui	a5,%hi(.LC134)
	add	a0,a5,%lo(.LC134)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L995
.L1000:
	nop
.L995:
	lw	a5,-36(s0)
	beqz	a5,.L996
	lw	a5,-36(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	bnez	a5,.L996
	lui	a5,%hi(.LC135)
	add	a0,a5,%lo(.LC135)
	call	cputstring
	li	a0,3
	call	terminate
.L996:
	lw	a5,-36(s0)
	beqz	a5,.L997
	lw	a5,-36(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpaceType
	mv	s1,a0
	lw	a5,-40(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpaceType
	mv	a5,a0
	beq	s1,a5,.L998
.L997:
	sw	zero,-20(s0)
	j	.L999
.L998:
	lw	a5,-36(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtDepth
	mv	a5,a0
	add	a5,a5,1
	sw	a5,-20(s0)
	lw	a5,-40(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cte_depth_bits_cap
	mv	a4,a0
	li	a5,1
	sll	a4,a5,a4
	lw	a5,-20(s0)
	bne	a4,a5,.L999
	lw	a5,-20(s0)
	add	a5,a5,-1
	sw	a5,-20(s0)
.L999:
	lw	s1,-40(s0)
	mv	a3,zero
	mv	a2,zero
	lw	a1,-20(s0)
	mv	a0,zero
	call	mdb_node_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,8(s1)
	sw	a5,12(s1)
	lw	a0,-40(s0)
	call	cdtInsertTree
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	add	sp,sp,48
	jr	ra
	.size	cdtInsert, .-cdtInsert
	.section	.rodata
	.align	2
.LC136:
	.string	"Assertion failed: cap_get_capType(slot->cap) != cap_null_cap\n"
	.text
	.align	2
	.globl	cdtRemove
	.type	cdtRemove, @function
cdtRemove:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	bnez	a5,.L1004
	lui	a5,%hi(.LC136)
	add	a0,a5,%lo(.LC136)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L1003
.L1004:
	nop
.L1003:
	lui	a5,%hi(ksRootCTE)
	lw	a5,%lo(ksRootCTE)(a5)
	lw	a2,-20(s0)
	mv	a1,a5
	mv	a0,zero
	call	aaRemove
	mv	a4,a0
	lui	a5,%hi(ksRootCTE)
	sw	a4,%lo(ksRootCTE)(a5)
	lw	s1,-20(s0)
	mv	a3,zero
	mv	a2,zero
	mv	a1,zero
	mv	a0,zero
	call	mdb_node_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,8(s1)
	sw	a5,12(s1)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	lw	s1,20(sp)
	add	sp,sp,32
	jr	ra
	.size	cdtRemove, .-cdtRemove
	.section	.rodata
	.align	2
.LC137:
	.string	"Assertion failed: cap_get_capType(oldSlot->cap) != cap_null_cap\n"
	.text
	.align	2
	.globl	cdtMove
	.type	cdtMove, @function
cdtMove:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-20(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	bnez	a5,.L1010
	lui	a5,%hi(.LC137)
	add	a0,a5,%lo(.LC137)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L1007
.L1010:
	nop
.L1007:
	lw	a5,-24(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	bnez	a5,.L1011
	lui	a5,%hi(.LC134)
	add	a0,a5,%lo(.LC134)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L1009
.L1011:
	nop
.L1009:
	lui	a5,%hi(ksRootCTE)
	lw	a5,%lo(ksRootCTE)(a5)
	lw	a2,-20(s0)
	mv	a1,a5
	mv	a0,zero
	call	aaRemove
	mv	a4,a0
	lui	a5,%hi(ksRootCTE)
	sw	a4,%lo(ksRootCTE)(a5)
	lw	a5,-20(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtDepth
	mv	a5,a0
	lw	s1,-24(s0)
	mv	a3,zero
	mv	a2,zero
	mv	a1,a5
	mv	a0,zero
	call	mdb_node_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,8(s1)
	sw	a5,12(s1)
	lw	s1,-20(s0)
	mv	a3,zero
	mv	a2,zero
	mv	a1,zero
	mv	a0,zero
	call	mdb_node_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,8(s1)
	sw	a5,12(s1)
	lui	a5,%hi(ksRootCTE)
	lw	a5,%lo(ksRootCTE)(a5)
	lw	a1,-24(s0)
	mv	a0,a5
	call	aaInsert
	mv	a4,a0
	lui	a5,%hi(ksRootCTE)
	sw	a4,%lo(ksRootCTE)(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	lw	s1,20(sp)
	add	sp,sp,32
	jr	ra
	.size	cdtMove, .-cdtMove
	.align	2
	.globl	cdtUpdate
	.type	cdtUpdate, @function
cdtUpdate:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-28(s0)
	sw	a2,-24(s0)
	lw	a5,-20(s0)
	lw	a2,-28(s0)
	lw	a3,-24(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	capsEqual
	mv	a5,a0
	beqz	a5,.L1013
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
	lw	a4,-24(s0)
	sw	a4,4(a5)
	j	.L1015
.L1013:
	lui	a5,%hi(ksRootCTE)
	lw	a5,%lo(ksRootCTE)(a5)
	lw	a2,-20(s0)
	mv	a1,a5
	mv	a0,zero
	call	aaRemove
	mv	a4,a0
	lui	a5,%hi(ksRootCTE)
	sw	a4,%lo(ksRootCTE)(a5)
	lw	a5,-20(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtDepth
	mv	a5,a0
	lw	s1,-20(s0)
	mv	a3,zero
	mv	a2,zero
	mv	a1,a5
	mv	a0,zero
	call	mdb_node_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,8(s1)
	sw	a5,12(s1)
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
	lw	a4,-24(s0)
	sw	a4,4(a5)
	lui	a5,%hi(ksRootCTE)
	lw	a5,%lo(ksRootCTE)(a5)
	lw	a1,-20(s0)
	mv	a0,a5
	call	aaInsert
	mv	a4,a0
	lui	a5,%hi(ksRootCTE)
	sw	a4,%lo(ksRootCTE)(a5)
.L1015:
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	lw	s1,20(sp)
	add	sp,sp,32
	jr	ra
	.size	cdtUpdate, .-cdtUpdate
	.section	.rodata
	.align	2
.LC138:
	.string	"Assertion failed: slot1 != slot2\n"
	.text
	.align	2
	.globl	cdtSwap
	.type	cdtSwap, @function
cdtSwap:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	add	s0,sp,64
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	sw	a3,-52(s0)
	sw	a4,-48(s0)
	sw	a5,-56(s0)
	lw	a4,-44(s0)
	lw	a5,-56(s0)
	bne	a4,a5,.L1023
	lui	a5,%hi(.LC138)
	add	a0,a5,%lo(.LC138)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L1018
.L1023:
	nop
.L1018:
	lw	a5,-44(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	beqz	a5,.L1019
	lui	a5,%hi(ksRootCTE)
	lw	a5,%lo(ksRootCTE)(a5)
	lw	a2,-44(s0)
	mv	a1,a5
	mv	a0,zero
	call	aaRemove
	mv	a4,a0
	lui	a5,%hi(ksRootCTE)
	sw	a4,%lo(ksRootCTE)(a5)
.L1019:
	lw	a5,-56(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	beqz	a5,.L1020
	lui	a5,%hi(ksRootCTE)
	lw	a5,%lo(ksRootCTE)(a5)
	lw	a2,-56(s0)
	mv	a1,a5
	mv	a0,zero
	call	aaRemove
	mv	a4,a0
	lui	a5,%hi(ksRootCTE)
	sw	a4,%lo(ksRootCTE)(a5)
.L1020:
	lw	a5,-44(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtDepth
	sw	a0,-20(s0)
	lw	a5,-56(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtDepth
	sw	a0,-24(s0)
	lw	s1,-44(s0)
	mv	a3,zero
	mv	a2,zero
	lw	a1,-24(s0)
	mv	a0,zero
	call	mdb_node_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,8(s1)
	sw	a5,12(s1)
	lw	s1,-56(s0)
	mv	a3,zero
	mv	a2,zero
	lw	a1,-20(s0)
	mv	a0,zero
	call	mdb_node_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,8(s1)
	sw	a5,12(s1)
	lw	a5,-44(s0)
	lw	a4,-52(s0)
	sw	a4,0(a5)
	lw	a4,-48(s0)
	sw	a4,4(a5)
	lw	a5,-56(s0)
	lw	a4,-40(s0)
	sw	a4,0(a5)
	lw	a4,-36(s0)
	sw	a4,4(a5)
	lw	a5,-44(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	beqz	a5,.L1021
	lui	a5,%hi(ksRootCTE)
	lw	a5,%lo(ksRootCTE)(a5)
	lw	a1,-44(s0)
	mv	a0,a5
	call	aaInsert
	mv	a4,a0
	lui	a5,%hi(ksRootCTE)
	sw	a4,%lo(ksRootCTE)(a5)
.L1021:
	lw	a5,-56(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	beqz	a5,.L1024
	lui	a5,%hi(ksRootCTE)
	lw	a5,%lo(ksRootCTE)(a5)
	lw	a1,-56(s0)
	mv	a0,a5
	call	aaInsert
	mv	a4,a0
	lui	a5,%hi(ksRootCTE)
	sw	a4,%lo(ksRootCTE)(a5)
.L1024:
	nop
	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s1,52(sp)
	add	sp,sp,64
	jr	ra
	.size	cdtSwap, .-cdtSwap
	.align	2
	.type	aaSucc, @function
aaSucc:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLeft
	mv	a5,a0
	sw	a5,-20(s0)
	j	.L1026
.L1027:
	lw	a5,-20(s0)
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLeft
	mv	a5,a0
	sw	a5,-20(s0)
.L1026:
	lw	a5,-20(s0)
	bnez	a5,.L1027
	lw	a5,-36(s0)
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	aaSucc, .-aaSucc
	.align	2
	.type	aaPred, @function
aaPred:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtRight
	mv	a5,a0
	sw	a5,-20(s0)
	j	.L1030
.L1031:
	lw	a5,-20(s0)
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtRight
	mv	a5,a0
	sw	a5,-20(s0)
.L1030:
	lw	a5,-20(s0)
	bnez	a5,.L1031
	lw	a5,-36(s0)
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	aaPred, .-aaPred
	.align	2
	.type	aaParent, @function
aaParent:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	zero,-20(s0)
	lui	a5,%hi(ksRootCTE)
	lw	a5,%lo(ksRootCTE)(a5)
	sw	a5,-24(s0)
	j	.L1034
.L1039:
	lw	a5,-24(s0)
	sw	a5,-20(s0)
	lw	a1,-36(s0)
	lw	a0,-20(s0)
	call	compSlot
	mv	a5,a0
	beqz	a5,.L1035
	li	a4,1
	beq	a5,a4,.L1036
	li	a4,-1
	beq	a5,a4,.L1037
	j	.L1034
.L1037:
	lw	a5,-20(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtRight
	mv	a5,a0
	sw	a5,-24(s0)
	j	.L1034
.L1036:
	lw	a5,-20(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLeft
	mv	a5,a0
	sw	a5,-24(s0)
	j	.L1034
.L1035:
	lw	a5,-20(s0)
	j	.L1038
.L1034:
	lw	a4,-24(s0)
	lw	a5,-36(s0)
	bne	a4,a5,.L1039
	lw	a5,-20(s0)
.L1038:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	aaParent, .-aaParent
	.align	2
	.type	aaTraverseBackward, @function
aaTraverseBackward:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLeft
	mv	a5,a0
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	beqz	a5,.L1041
	lw	a0,-24(s0)
	call	aaPred
	mv	a5,a0
	j	.L1042
.L1041:
	lw	a0,-36(s0)
	call	aaParent
	sw	a0,-20(s0)
	j	.L1043
.L1045:
	lw	a5,-20(s0)
	sw	a5,-36(s0)
	lw	a0,-20(s0)
	call	aaParent
	sw	a0,-20(s0)
.L1043:
	lw	a5,-20(s0)
	beqz	a5,.L1044
	lw	a5,-20(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtRight
	mv	a5,a0
	mv	a4,a5
	lw	a5,-36(s0)
	bne	a4,a5,.L1045
.L1044:
	lw	a5,-20(s0)
.L1042:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	aaTraverseBackward, .-aaTraverseBackward
	.align	2
	.type	aaTraverseForward, @function
aaTraverseForward:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtRight
	mv	a5,a0
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	beqz	a5,.L1047
	lw	a0,-24(s0)
	call	aaSucc
	mv	a5,a0
	j	.L1048
.L1047:
	lw	a0,-36(s0)
	call	aaParent
	sw	a0,-20(s0)
	j	.L1049
.L1051:
	lw	a5,-20(s0)
	sw	a5,-36(s0)
	lw	a0,-20(s0)
	call	aaParent
	sw	a0,-20(s0)
.L1049:
	lw	a5,-20(s0)
	beqz	a5,.L1050
	lw	a5,-20(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLeft
	mv	a5,a0
	mv	a4,a5
	lw	a5,-36(s0)
	bne	a4,a5,.L1051
.L1050:
	lw	a5,-20(s0)
.L1048:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	aaTraverseForward, .-aaTraverseForward
	.align	2
	.type	aaLevel, @function
aaLevel:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	bnez	a5,.L1053
	mv	a5,zero
	j	.L1054
.L1053:
	lw	a5,-20(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLevel
	mv	a5,a0
.L1054:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	aaLevel, .-aaLevel
	.align	2
	.type	min, @function
min:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	ble	a5,a4,.L1057
	mv	a5,a4
.L1057:
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	min, .-min
	.section	.rodata
	.align	2
.LC139:
	.string	"inserting null CTE"
	.align	2
.LC140:
	.string	"Assertion failed: newSlot != rootSlot\n"
	.align	2
.LC141:
	.string	"Inserting duplicate"
	.text
	.align	2
	.type	aaInsert, @function
aaInsert:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a5,-40(s0)
	bnez	a5,.L1059
	lui	a5,%hi(__func__.5097)
	add	a3,a5,%lo(__func__.5097)
	li	a2,556
	lui	a5,%hi(.LC131)
	add	a1,a5,%lo(.LC131)
	lui	a5,%hi(.LC139)
	add	a0,a5,%lo(.LC139)
	call	_fail
.L1059:
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	bne	a4,a5,.L1069
	lui	a5,%hi(.LC140)
	add	a0,a5,%lo(.LC140)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L1061
.L1069:
	nop
.L1061:
	lw	a5,-36(s0)
	bnez	a5,.L1062
	lw	a5,-40(s0)
	add	a5,a5,8
	li	a1,1
	mv	a0,a5
	call	mdb_node_ptr_set_cdtLevel
	lw	a5,-40(s0)
	j	.L1063
.L1062:
	lw	a1,-36(s0)
	lw	a0,-40(s0)
	call	compSlot
	mv	a5,a0
	li	a4,-1
	beq	a5,a4,.L1065
	li	a4,1
	bne	a5,a4,.L1068
	lw	a5,-36(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtRight
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a1,-40(s0)
	lw	a0,-20(s0)
	call	aaInsert
	sw	a0,-20(s0)
	lw	a5,-36(s0)
	add	a5,a5,8
	lw	a4,-20(s0)
	mv	a1,a4
	mv	a0,a5
	call	mdb_node_ptr_set_cdtRight
	j	.L1067
.L1065:
	lw	a5,-36(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLeft
	mv	a5,a0
	sw	a5,-24(s0)
	lw	a1,-40(s0)
	lw	a0,-24(s0)
	call	aaInsert
	sw	a0,-24(s0)
	lw	a5,-36(s0)
	add	a5,a5,8
	lw	a4,-24(s0)
	mv	a1,a4
	mv	a0,a5
	call	mdb_node_ptr_set_cdtLeft
	j	.L1067
.L1068:
	lui	a5,%hi(__func__.5097)
	add	a3,a5,%lo(__func__.5097)
	li	a2,581
	lui	a5,%hi(.LC131)
	add	a1,a5,%lo(.LC131)
	lui	a5,%hi(.LC141)
	add	a0,a5,%lo(.LC141)
	call	_fail
.L1067:
	lw	a0,-36(s0)
	call	aaSkew
	sw	a0,-36(s0)
	lw	a0,-36(s0)
	call	aaSplit
	sw	a0,-36(s0)
	lw	a5,-36(s0)
.L1063:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	aaInsert, .-aaInsert
	.section	.rodata
	.align	2
.LC142:
	.string	"removing null"
	.align	2
.LC143:
	.string	"removing from null"
	.text
	.align	2
	.type	aaRemove, @function
aaRemove:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	lw	a5,-44(s0)
	bnez	a5,.L1071
	lui	a5,%hi(__func__.5110)
	add	a3,a5,%lo(__func__.5110)
	li	a2,596
	lui	a5,%hi(.LC131)
	add	a1,a5,%lo(.LC131)
	lui	a5,%hi(.LC142)
	add	a0,a5,%lo(.LC142)
	call	_fail
.L1071:
	lw	a5,-40(s0)
	bnez	a5,.L1072
	lui	a5,%hi(__func__.5110)
	add	a3,a5,%lo(__func__.5110)
	li	a2,599
	lui	a5,%hi(.LC131)
	add	a1,a5,%lo(.LC131)
	lui	a5,%hi(.LC143)
	add	a0,a5,%lo(.LC143)
	call	_fail
.L1072:
	lw	a1,-40(s0)
	lw	a0,-44(s0)
	call	compSlot
	mv	a5,a0
	li	a4,-1
	beq	a5,a4,.L1074
	li	a4,1
	bne	a5,a4,.L1078
	lw	a5,-40(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtRight
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a2,-44(s0)
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	aaRemove
	sw	a0,-20(s0)
	lw	a5,-40(s0)
	add	a5,a5,8
	lw	a4,-20(s0)
	mv	a1,a4
	mv	a0,a5
	call	mdb_node_ptr_set_cdtRight
	j	.L1076
.L1074:
	lw	a5,-40(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLeft
	mv	a5,a0
	sw	a5,-24(s0)
	lw	a2,-44(s0)
	lw	a1,-24(s0)
	lw	a0,-36(s0)
	call	aaRemove
	sw	a0,-24(s0)
	lw	a5,-40(s0)
	add	a5,a5,8
	lw	a4,-24(s0)
	mv	a1,a4
	mv	a0,a5
	call	mdb_node_ptr_set_cdtLeft
	j	.L1076
.L1078:
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	aaRemoveNode
	sw	a0,-40(s0)
.L1076:
	lw	a0,-40(s0)
	call	aaRebalance
	sw	a0,-40(s0)
	lw	a5,-40(s0)
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	aaRemove, .-aaRemove
	.align	2
	.type	aaRemoveNode, @function
aaRemoveNode:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	add	s0,sp,64
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	lw	a5,-56(s0)
	lw	a4,8(a5)
	sw	a4,-40(s0)
	lw	a5,12(a5)
	sw	a5,-36(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	mdb_node_get_cdtLeft
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	mdb_node_get_cdtRight
	mv	a5,a0
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	beqz	a5,.L1080
	lw	a0,-20(s0)
	call	aaPred
	sw	a0,-28(s0)
	lw	a2,-28(s0)
	lw	a1,-20(s0)
	li	a0,1
	call	aaRemove
	sw	a0,-20(s0)
	lw	a5,-28(s0)
	add	s1,a5,8
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	mdb_node_get_cdtLevel
	mv	a5,a0
	mv	a1,a5
	mv	a0,s1
	call	mdb_node_ptr_set_cdtLevel
	lw	a5,-28(s0)
	add	s1,a5,8
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	mdb_node_get_cdtRight
	mv	a5,a0
	mv	a1,a5
	mv	a0,s1
	call	mdb_node_ptr_set_cdtRight
	lw	a5,-28(s0)
	add	a5,a5,8
	lw	a4,-20(s0)
	mv	a1,a4
	mv	a0,a5
	call	mdb_node_ptr_set_cdtLeft
	lw	a5,-28(s0)
	j	.L1083
.L1080:
	lw	a5,-24(s0)
	beqz	a5,.L1082
	lw	a0,-24(s0)
	call	aaSucc
	sw	a0,-32(s0)
	lw	a2,-32(s0)
	lw	a1,-24(s0)
	li	a0,1
	call	aaRemove
	sw	a0,-24(s0)
	lw	a5,-32(s0)
	add	s1,a5,8
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	mdb_node_get_cdtLevel
	mv	a5,a0
	mv	a1,a5
	mv	a0,s1
	call	mdb_node_ptr_set_cdtLevel
	lw	a5,-32(s0)
	add	a5,a5,8
	lw	a4,-24(s0)
	mv	a1,a4
	mv	a0,a5
	call	mdb_node_ptr_set_cdtRight
	lw	a5,-32(s0)
	add	a5,a5,8
	mv	a1,zero
	mv	a0,a5
	call	mdb_node_ptr_set_cdtLeft
	lw	a5,-32(s0)
	j	.L1083
.L1082:
	mv	a5,zero
.L1083:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s1,52(sp)
	add	sp,sp,64
	jr	ra
	.size	aaRemoveNode, .-aaRemoveNode
	.align	2
	.type	aaRebalance, @function
aaRebalance:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	bnez	a5,.L1085
	mv	a5,zero
	j	.L1086
.L1085:
	lw	a0,-36(s0)
	call	aaDecLevel
	sw	a0,-36(s0)
	lw	a0,-36(s0)
	call	aaSkew
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtRight
	mv	a5,a0
	mv	a0,a5
	call	aaSkew
	sw	a0,-20(s0)
	lw	a5,-36(s0)
	add	a5,a5,8
	lw	a4,-20(s0)
	mv	a1,a4
	mv	a0,a5
	call	mdb_node_ptr_set_cdtRight
	lw	a5,-20(s0)
	beqz	a5,.L1087
	lw	a5,-20(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtRight
	mv	a5,a0
	mv	a0,a5
	call	aaSkew
	sw	a0,-24(s0)
	lw	a5,-20(s0)
	add	a5,a5,8
	lw	a4,-24(s0)
	mv	a1,a4
	mv	a0,a5
	call	mdb_node_ptr_set_cdtRight
.L1087:
	lw	a0,-36(s0)
	call	aaSplit
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtRight
	mv	a5,a0
	mv	a0,a5
	call	aaSplit
	sw	a0,-20(s0)
	lw	a5,-36(s0)
	add	a5,a5,8
	lw	a4,-20(s0)
	mv	a1,a4
	mv	a0,a5
	call	mdb_node_ptr_set_cdtRight
	lw	a5,-36(s0)
.L1086:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	aaRebalance, .-aaRebalance
	.align	2
	.type	aaDecLevel, @function
aaDecLevel:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	bnez	a5,.L1089
	mv	a5,zero
	j	.L1090
.L1089:
	lw	a5,-36(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLeft
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-36(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtRight
	mv	a5,a0
	sw	a5,-24(s0)
	lw	a0,-20(s0)
	call	aaLevel
	mv	s1,a0
	lw	a0,-24(s0)
	call	aaLevel
	mv	a5,a0
	mv	a1,a5
	mv	a0,s1
	call	min
	mv	a5,a0
	add	a5,a5,1
	sw	a5,-28(s0)
	lw	a5,-36(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLevel
	mv	a4,a0
	lw	a5,-28(s0)
	bleu	a4,a5,.L1091
	lw	a5,-36(s0)
	add	a5,a5,8
	lw	a4,-28(s0)
	mv	a1,a4
	mv	a0,a5
	call	mdb_node_ptr_set_cdtLevel
	lw	a5,-24(s0)
	beqz	a5,.L1091
	lw	a5,-24(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLevel
	mv	a4,a0
	lw	a5,-28(s0)
	bleu	a4,a5,.L1091
	lw	a5,-24(s0)
	add	a5,a5,8
	lw	a4,-28(s0)
	mv	a1,a4
	mv	a0,a5
	call	mdb_node_ptr_set_cdtLevel
.L1091:
	lw	a5,-36(s0)
.L1090:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	add	sp,sp,48
	jr	ra
	.size	aaDecLevel, .-aaDecLevel
	.section	.rodata
	.align	2
.LC144:
	.string	"Assertion failed: mdb_node_get_cdtLevel(right->cteMDBNode) == level\n"
	.text
	.align	2
	.type	aaSplit, @function
aaSplit:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	bnez	a5,.L1093
	mv	a5,zero
	j	.L1094
.L1093:
	lw	a5,-36(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtRight
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	beqz	a5,.L1095
	lw	a5,-20(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtRight
	mv	a5,a0
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	beqz	a5,.L1095
	lw	a5,-36(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLevel
	mv	s1,a0
	lw	a5,-24(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLevel
	mv	a5,a0
	bne	s1,a5,.L1095
	lw	a5,-36(s0)
	add	s1,a5,8
	lw	a5,-20(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLeft
	mv	a5,a0
	mv	a1,a5
	mv	a0,s1
	call	mdb_node_ptr_set_cdtRight
	lw	a5,-20(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLevel
	mv	a5,a0
	add	a5,a5,1
	sw	a5,-28(s0)
	lw	a5,-20(s0)
	add	a5,a5,8
	lw	a4,-28(s0)
	mv	a1,a4
	mv	a0,a5
	call	mdb_node_ptr_set_cdtLevel
	lw	a5,-20(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLevel
	mv	a4,a0
	lw	a5,-28(s0)
	beq	a4,a5,.L1098
	lui	a5,%hi(.LC144)
	add	a0,a5,%lo(.LC144)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L1097
.L1098:
	nop
.L1097:
	lw	a5,-20(s0)
	add	a5,a5,8
	lw	a4,-36(s0)
	mv	a1,a4
	mv	a0,a5
	call	mdb_node_ptr_set_cdtLeft
	lw	a5,-20(s0)
	j	.L1094
.L1095:
	lw	a5,-36(s0)
.L1094:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	add	sp,sp,48
	jr	ra
	.size	aaSplit, .-aaSplit
	.align	2
	.type	aaSkew, @function
aaSkew:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	bnez	a5,.L1100
	mv	a5,zero
	j	.L1101
.L1100:
	lw	a5,-36(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLeft
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	beqz	a5,.L1102
	lw	a5,-20(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLevel
	mv	s1,a0
	lw	a5,-36(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLevel
	mv	a5,a0
	bne	s1,a5,.L1102
	lw	a5,-36(s0)
	add	s1,a5,8
	lw	a5,-20(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtRight
	mv	a5,a0
	mv	a1,a5
	mv	a0,s1
	call	mdb_node_ptr_set_cdtLeft
	lw	a5,-20(s0)
	add	a5,a5,8
	lw	a4,-36(s0)
	mv	a1,a4
	mv	a0,a5
	call	mdb_node_ptr_set_cdtRight
	lw	a5,-20(s0)
	j	.L1101
.L1102:
	lw	a5,-36(s0)
.L1101:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	add	sp,sp,48
	jr	ra
	.size	aaSkew, .-aaSkew
	.section	.rodata
	.align	2
.LC145:
	.string	"NullCap"
	.align	2
.LC146:
	.string	"Untyped"
	.align	2
.LC147:
	.string	"Endpoint"
	.align	2
.LC148:
	.string	"AsyncEndpoint"
	.align	2
.LC149:
	.string	"Reply"
	.align	2
.LC150:
	.string	"CNode"
	.align	2
.LC151:
	.string	"Thread"
	.align	2
.LC152:
	.string	"?"
	.text
	.align	2
	.type	printCap, @function
printCap:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_get_capType
	mv	a5,a0
	li	a4,12
	bgtu	a5,a4,.L1104
	sll	a4,a5,2
	lui	a5,%hi(.L1106)
	add	a5,a5,%lo(.L1106)
	add	a5,a4,a5
	lw	a5,0(a5)
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L1106:
	.word	.L1105
	.word	.L1104
	.word	.L1107
	.word	.L1104
	.word	.L1108
	.word	.L1104
	.word	.L1109
	.word	.L1104
	.word	.L1110
	.word	.L1104
	.word	.L1111
	.word	.L1104
	.word	.L1112
	.text
.L1105:
	lui	a5,%hi(.LC145)
	add	a5,a5,%lo(.LC145)
	j	.L1113
.L1107:
	lui	a5,%hi(.LC146)
	add	a5,a5,%lo(.LC146)
	j	.L1113
.L1108:
	lui	a5,%hi(.LC147)
	add	a5,a5,%lo(.LC147)
	j	.L1113
.L1109:
	lui	a5,%hi(.LC148)
	add	a5,a5,%lo(.LC148)
	j	.L1113
.L1110:
	lui	a5,%hi(.LC149)
	add	a5,a5,%lo(.LC149)
	j	.L1113
.L1111:
	lui	a5,%hi(.LC150)
	add	a5,a5,%lo(.LC150)
	j	.L1113
.L1112:
	lui	a5,%hi(.LC151)
	add	a5,a5,%lo(.LC151)
	j	.L1113
.L1104:
	lui	a5,%hi(.LC152)
	add	a5,a5,%lo(.LC152)
.L1113:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	printCap, .-printCap
	.section	.rodata
	.align	2
.LC153:
	.string	"%s [NULL]@0x%x"
	.align	2
.LC154:
	.string	"%s [%d %s(%d) { addr = 0x%x, size = 0x%x } left: 0x%x right: 0x%x badge: %d depth: %d extra: 0x%x]@0x%x\n"
	.text
	.align	2
	.globl	printCTE
	.type	printCTE, @function
printCTE:
	add	sp,sp,-96
	sw	ra,92(sp)
	sw	s0,88(sp)
	sw	s1,84(sp)
	sw	s2,80(sp)
	sw	s3,76(sp)
	sw	s4,72(sp)
	sw	s5,68(sp)
	sw	s6,64(sp)
	sw	s7,60(sp)
	sw	s8,56(sp)
	sw	s9,52(sp)
	add	s0,sp,96
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	lw	a5,-56(s0)
	bnez	a5,.L1115
	lw	a2,-56(s0)
	lw	a1,-52(s0)
	lui	a5,%hi(.LC153)
	add	a0,a5,%lo(.LC153)
	call	printf
	j	.L1123
.L1115:
	lw	a5,-56(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLevel
	mv	s6,a0
	lw	a5,-56(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	printCap
	mv	s7,a0
	lw	a5,-56(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	s8,a0
	lw	a5,-56(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	beqz	a5,.L1117
	lw	a5,-56(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpacePtr
	mv	a5,a0
	mv	s4,a5
	j	.L1118
.L1117:
	mv	s4,zero
.L1118:
	lw	a5,-56(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	beqz	a5,.L1119
	lw	a5,-56(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capSpaceSize
	mv	s5,a0
	j	.L1120
.L1119:
	mv	s5,zero
.L1120:
	lw	a5,-56(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtLeft
	mv	s9,a0
	lw	a5,-56(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtRight
	mv	s1,a0
	lw	a5,-56(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capBadge
	mv	s2,a0
	lw	a5,-56(s0)
	lw	a0,8(a5)
	lw	a1,12(a5)
	call	mdb_node_get_cdtDepth
	mv	s3,a0
	lw	a5,-56(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	beqz	a5,.L1121
	lw	a5,-56(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capExtraComp
	mv	a4,a0
	j	.L1122
.L1121:
	mv	a4,zero
.L1122:
	lw	a5,-56(s0)
	sw	a5,16(sp)
	sw	a4,12(sp)
	sw	s3,8(sp)
	sw	s2,4(sp)
	sw	s1,0(sp)
	mv	a7,s9
	mv	a6,s5
	mv	a5,s4
	mv	a4,s8
	mv	a3,s7
	mv	a2,s6
	lw	a1,-52(s0)
	lui	a0,%hi(.LC154)
	add	a0,a0,%lo(.LC154)
	call	printf
.L1123:
	nop
	lw	ra,92(sp)
	lw	s0,88(sp)
	lw	s1,84(sp)
	lw	s2,80(sp)
	lw	s3,76(sp)
	lw	s4,72(sp)
	lw	s5,68(sp)
	lw	s6,64(sp)
	lw	s7,60(sp)
	lw	s8,56(sp)
	lw	s9,52(sp)
	add	sp,sp,96
	jr	ra
	.size	printCTE, .-printCTE
	.align	2
	.globl	lookupCap
	.type	lookupCap, @function
lookupCap:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	lw	a1,-60(s0)
	lw	a0,-56(s0)
	call	lookupSlot
	mv	a4,a0
	mv	a5,a1
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L1125
	lw	a5,-24(s0)
	sw	a5,-36(s0)
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-32(s0)
	sw	a5,-28(s0)
	lw	a5,-52(s0)
	lw	a4,-36(s0)
	sw	a4,0(a5)
	lw	a4,-32(s0)
	sw	a4,4(a5)
	lw	a4,-28(s0)
	sw	a4,8(a5)
	j	.L1124
.L1125:
	sw	zero,-36(s0)
	lw	a5,-20(s0)
	lw	a4,0(a5)
	sw	a4,-32(s0)
	lw	a5,4(a5)
	sw	a5,-28(s0)
	lw	a5,-52(s0)
	lw	a4,-36(s0)
	sw	a4,0(a5)
	lw	a4,-32(s0)
	sw	a4,4(a5)
	lw	a4,-28(s0)
	sw	a4,8(a5)
.L1124:
	lw	a0,-52(s0)
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	lookupCap, .-lookupCap
	.align	2
	.globl	lookupCapAndSlot
	.type	lookupCapAndSlot, @function
lookupCapAndSlot:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	lw	a1,-60(s0)
	lw	a0,-56(s0)
	call	lookupSlot
	mv	a4,a0
	mv	a5,a1
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L1129
	lw	a5,-24(s0)
	sw	a5,-40(s0)
	sw	zero,-28(s0)
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-36(s0)
	sw	a5,-32(s0)
	lw	a5,-52(s0)
	lw	a4,-40(s0)
	sw	a4,0(a5)
	lw	a4,-36(s0)
	sw	a4,4(a5)
	lw	a4,-32(s0)
	sw	a4,8(a5)
	lw	a4,-28(s0)
	sw	a4,12(a5)
	j	.L1128
.L1129:
	sw	zero,-40(s0)
	lw	a5,-20(s0)
	sw	a5,-28(s0)
	lw	a5,-20(s0)
	lw	a4,0(a5)
	sw	a4,-36(s0)
	lw	a5,4(a5)
	sw	a5,-32(s0)
	lw	a5,-52(s0)
	lw	a4,-40(s0)
	sw	a4,0(a5)
	lw	a4,-36(s0)
	sw	a4,4(a5)
	lw	a4,-32(s0)
	sw	a4,8(a5)
	lw	a4,-28(s0)
	sw	a4,12(a5)
.L1128:
	lw	a0,-52(s0)
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	lookupCapAndSlot, .-lookupCapAndSlot
	.align	2
	.globl	lookupSlot
	.type	lookupSlot, @function
lookupSlot:
	add	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s2,68(sp)
	sw	s3,64(sp)
	add	s0,sp,80
	sw	a0,-68(s0)
	sw	a1,-72(s0)
	lw	a5,-68(s0)
	and	a5,a5,-512
	lw	a4,0(a5)
	sw	a4,-32(s0)
	lw	a5,4(a5)
	sw	a5,-28(s0)
	add	a5,s0,-44
	li	a4,32
	lw	a3,-72(s0)
	lw	a1,-32(s0)
	lw	a2,-28(s0)
	mv	a0,a5
	call	resolveAddressBits
	lw	a5,-44(s0)
	sw	a5,-52(s0)
	lw	a5,-40(s0)
	sw	a5,-48(s0)
	lw	a5,-52(s0)
	sw	a5,-24(s0)
	lw	a5,-48(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	s2,a4
	mv	s3,a5
	mv	a4,s2
	mv	a5,s3
	mv	a0,a4
	mv	a1,a5
	lw	ra,76(sp)
	lw	s0,72(sp)
	lw	s2,68(sp)
	lw	s3,64(sp)
	add	sp,sp,80
	jr	ra
	.size	lookupSlot, .-lookupSlot
	.align	2
	.globl	lookupSlotForCNodeOp
	.type	lookupSlotForCNodeOp, @function
lookupSlotForCNodeOp:
	add	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s2,68(sp)
	sw	s3,64(sp)
	add	s0,sp,80
	sw	a0,-52(s0)
	sw	a1,-60(s0)
	sw	a2,-56(s0)
	sw	a3,-64(s0)
	sw	a4,-68(s0)
	sw	zero,-40(s0)
	lw	a0,-60(s0)
	lw	a1,-56(s0)
	call	cap_get_capType
	mv	a5,a0
	add	a5,a5,-10
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L1135
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,6
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	lw	a4,-52(s0)
	sw	a4,20(a5)
	call	lookup_fault_invalid_root_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_lookup_fault)
	sw	a4,%lo(current_lookup_fault)(a3)
	add	a3,a3,%lo(current_lookup_fault)
	sw	a5,4(a3)
	li	a5,3
	sw	a5,-44(s0)
	lw	a5,-44(s0)
	sw	a5,-24(s0)
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	j	.L1141
.L1135:
	lw	a5,-68(s0)
	seqz	a5,a5
	and	a5,a5,0xff
	bnez	a5,.L1137
	lw	a5,-68(s0)
	sltu	a5,a5,33
	xor	a5,a5,1
	and	a5,a5,0xff
	beqz	a5,.L1138
.L1137:
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,4
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,1
	sw	a4,8(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,32
	sw	a4,12(a5)
	li	a5,3
	sw	a5,-44(s0)
	lw	a5,-44(s0)
	sw	a5,-24(s0)
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	j	.L1141
.L1138:
	add	a5,s0,-36
	lw	a4,-68(s0)
	lw	a3,-64(s0)
	lw	a1,-60(s0)
	lw	a2,-56(s0)
	mv	a0,a5
	call	resolveAddressBits
	lw	a5,-36(s0)
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L1139
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,6
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	lw	a4,-52(s0)
	sw	a4,20(a5)
	li	a5,3
	sw	a5,-44(s0)
	lw	a5,-44(s0)
	sw	a5,-24(s0)
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	j	.L1141
.L1139:
	lw	a5,-28(s0)
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L1140
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,6
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	lw	a4,-52(s0)
	sw	a4,20(a5)
	lw	a5,-28(s0)
	mv	a1,a5
	mv	a0,zero
	call	lookup_fault_depth_mismatch_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_lookup_fault)
	sw	a4,%lo(current_lookup_fault)(a3)
	add	a3,a3,%lo(current_lookup_fault)
	sw	a5,4(a3)
	li	a5,3
	sw	a5,-44(s0)
	lw	a5,-44(s0)
	sw	a5,-24(s0)
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	j	.L1141
.L1140:
	lw	a5,-32(s0)
	sw	a5,-40(s0)
	sw	zero,-44(s0)
	lw	a5,-44(s0)
	sw	a5,-24(s0)
	lw	a5,-40(s0)
	sw	a5,-20(s0)
.L1141:
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	s2,a4
	mv	s3,a5
	mv	a4,s2
	mv	a5,s3
	mv	a0,a4
	mv	a1,a5
	lw	ra,76(sp)
	lw	s0,72(sp)
	lw	s2,68(sp)
	lw	s3,64(sp)
	add	sp,sp,80
	jr	ra
	.size	lookupSlotForCNodeOp, .-lookupSlotForCNodeOp
	.align	2
	.globl	lookupSourceSlot
	.type	lookupSourceSlot, @function
lookupSourceSlot:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s2,36(sp)
	sw	s3,32(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	lw	a4,-48(s0)
	lw	a3,-44(s0)
	lw	a1,-40(s0)
	lw	a2,-36(s0)
	li	a0,1
	call	lookupSlotForCNodeOp
	mv	a4,a0
	mv	a5,a1
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	s2,a4
	mv	s3,a5
	mv	a4,s2
	mv	a5,s3
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s2,36(sp)
	lw	s3,32(sp)
	add	sp,sp,48
	jr	ra
	.size	lookupSourceSlot, .-lookupSourceSlot
	.align	2
	.globl	lookupTargetSlot
	.type	lookupTargetSlot, @function
lookupTargetSlot:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s2,36(sp)
	sw	s3,32(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	lw	a4,-48(s0)
	lw	a3,-44(s0)
	lw	a1,-40(s0)
	lw	a2,-36(s0)
	mv	a0,zero
	call	lookupSlotForCNodeOp
	mv	a4,a0
	mv	a5,a1
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	s2,a4
	mv	s3,a5
	mv	a4,s2
	mv	a5,s3
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s2,36(sp)
	lw	s3,32(sp)
	add	sp,sp,48
	jr	ra
	.size	lookupTargetSlot, .-lookupTargetSlot
	.align	2
	.globl	lookupPivotSlot
	.type	lookupPivotSlot, @function
lookupPivotSlot:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s2,36(sp)
	sw	s3,32(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	lw	a4,-48(s0)
	lw	a3,-44(s0)
	lw	a1,-40(s0)
	lw	a2,-36(s0)
	li	a0,1
	call	lookupSlotForCNodeOp
	mv	a4,a0
	mv	a5,a1
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	s2,a4
	mv	s3,a5
	mv	a4,s2
	mv	a5,s3
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s2,36(sp)
	lw	s3,32(sp)
	add	sp,sp,48
	jr	ra
	.size	lookupPivotSlot, .-lookupPivotSlot
	.section	.rodata
	.align	2
.LC155:
	.string	"Assertion failed: levelBits != 0\n"
	.text
	.align	2
	.globl	resolveAddressBits
	.type	resolveAddressBits, @function
resolveAddressBits:
	add	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	add	s0,sp,80
	sw	a0,-52(s0)
	sw	a1,-60(s0)
	sw	a2,-56(s0)
	sw	a3,-64(s0)
	sw	a4,-68(s0)
	lw	a5,-68(s0)
	sw	a5,-40(s0)
	sw	zero,-44(s0)
	lw	a0,-60(s0)
	lw	a1,-56(s0)
	call	cap_get_capType
	mv	a5,a0
	add	a5,a5,-10
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L1149
	call	lookup_fault_invalid_root_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_lookup_fault)
	sw	a4,%lo(current_lookup_fault)(a3)
	add	a3,a3,%lo(current_lookup_fault)
	sw	a5,4(a3)
	li	a5,2
	sw	a5,-48(s0)
	lw	a5,-52(s0)
	lw	a4,-48(s0)
	sw	a4,0(a5)
	lw	a4,-44(s0)
	sw	a4,4(a5)
	lw	a4,-40(s0)
	sw	a4,8(a5)
	j	.L1148
.L1149:
	lw	a0,-60(s0)
	lw	a1,-56(s0)
	call	cap_cnode_cap_get_capCNodeGuardSize
	sw	a0,-20(s0)
	lw	a4,-20(s0)
	lw	a5,-68(s0)
	sltu	a5,a5,a4
	and	a5,a5,0xff
	beqz	a5,.L1151
	lw	a2,-20(s0)
	lw	a1,-68(s0)
	mv	a0,zero
	call	lookup_fault_guard_mismatch_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_lookup_fault)
	sw	a4,%lo(current_lookup_fault)(a3)
	add	a3,a3,%lo(current_lookup_fault)
	sw	a5,4(a3)
	li	a5,2
	sw	a5,-48(s0)
	lw	a5,-52(s0)
	lw	a4,-48(s0)
	sw	a4,0(a5)
	lw	a4,-44(s0)
	sw	a4,4(a5)
	lw	a4,-40(s0)
	sw	a4,8(a5)
	j	.L1148
.L1151:
	lw	a4,-68(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	sw	a5,-68(s0)
.L1157:
	lw	a0,-60(s0)
	lw	a1,-56(s0)
	call	cap_cnode_cap_get_capCNodeRadix
	sw	a0,-24(s0)
	lw	a5,-24(s0)
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	bnez	a5,.L1159
	lui	a5,%hi(.LC155)
	add	a0,a5,%lo(.LC155)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L1153
.L1159:
	nop
.L1153:
	lw	a4,-28(s0)
	lw	a5,-68(s0)
	sltu	a5,a5,a4
	and	a5,a5,0xff
	beqz	a5,.L1154
	lw	a1,-68(s0)
	lw	a0,-28(s0)
	call	lookup_fault_depth_mismatch_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_lookup_fault)
	sw	a4,%lo(current_lookup_fault)(a3)
	add	a3,a3,%lo(current_lookup_fault)
	sw	a5,4(a3)
	li	a5,2
	sw	a5,-48(s0)
	lw	a5,-52(s0)
	lw	a4,-48(s0)
	sw	a4,0(a5)
	lw	a4,-44(s0)
	sw	a4,4(a5)
	lw	a4,-40(s0)
	sw	a4,8(a5)
	j	.L1148
.L1154:
	lw	a4,-68(s0)
	lw	a5,-28(s0)
	sub	a5,a4,a5
	lw	a4,-64(s0)
	srl	a4,a4,a5
	li	a3,1
	lw	a5,-24(s0)
	sll	a5,a3,a5
	add	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sll	s1,a5,4
	lw	a0,-60(s0)
	lw	a1,-56(s0)
	call	cap_cnode_cap_get_capCNodePtr
	mv	a5,a0
	add	a5,s1,a5
	sw	a5,-36(s0)
	lw	a4,-68(s0)
	lw	a5,-28(s0)
	sltu	a5,a5,a4
	xor	a5,a5,1
	and	a5,a5,0xff
	beqz	a5,.L1155
	sw	zero,-48(s0)
	lw	a5,-36(s0)
	sw	a5,-44(s0)
	sw	zero,-40(s0)
	lw	a5,-52(s0)
	lw	a4,-48(s0)
	sw	a4,0(a5)
	lw	a4,-44(s0)
	sw	a4,4(a5)
	lw	a4,-40(s0)
	sw	a4,8(a5)
	j	.L1148
.L1155:
	lw	a4,-68(s0)
	lw	a5,-28(s0)
	sub	a5,a4,a5
	sw	a5,-68(s0)
	lw	a5,-36(s0)
	lw	a4,0(a5)
	sw	a4,-60(s0)
	lw	a5,4(a5)
	sw	a5,-56(s0)
	lw	a0,-60(s0)
	lw	a1,-56(s0)
	call	cap_get_capType
	mv	a5,a0
	add	a5,a5,-10
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L1157
	sw	zero,-48(s0)
	lw	a5,-36(s0)
	sw	a5,-44(s0)
	lw	a5,-68(s0)
	sw	a5,-40(s0)
	lw	a5,-52(s0)
	lw	a4,-48(s0)
	sw	a4,0(a5)
	lw	a4,-44(s0)
	sw	a4,4(a5)
	lw	a4,-40(s0)
	sw	a4,8(a5)
.L1148:
	lw	a0,-52(s0)
	lw	ra,76(sp)
	lw	s0,72(sp)
	lw	s1,68(sp)
	add	sp,sp,80
	jr	ra
	.size	resolveAddressBits, .-resolveAddressBits
	.align	2
	.globl	handleFault
	.type	handleFault, @function
handleFault:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lui	a5,%hi(current_fault)
	lw	a4,%lo(current_fault)(a5)
	sw	a4,-28(s0)
	add	a5,a5,%lo(current_fault)
	lw	a5,4(a5)
	sw	a5,-24(s0)
	lw	a0,-36(s0)
	call	sendFaultIPC
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	beqz	a5,.L1162
	lw	a1,-28(s0)
	lw	a2,-24(s0)
	lw	a0,-36(s0)
	call	handleDoubleFault
.L1162:
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	handleFault, .-handleFault
	.align	2
	.globl	sendFaultIPC
	.type	sendFaultIPC, @function
sendFaultIPC:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	add	s0,sp,64
	sw	a0,-52(s0)
	lui	a5,%hi(current_lookup_fault)
	lw	a4,%lo(current_lookup_fault)(a5)
	sw	a4,-48(s0)
	add	a5,a5,%lo(current_lookup_fault)
	lw	a5,4(a5)
	sw	a5,-44(s0)
	lw	a5,-52(s0)
	lw	a5,172(a5)
	sw	a5,-20(s0)
	add	a5,s0,-40
	lw	a2,-20(s0)
	lw	a1,-52(s0)
	mv	a0,a5
	call	lookupCap
	lw	a5,-40(s0)
	beqz	a5,.L1164
	mv	a1,zero
	lw	a0,-20(s0)
	call	fault_cap_fault_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_fault)
	sw	a4,%lo(current_fault)(a3)
	add	a3,a3,%lo(current_fault)
	sw	a5,4(a3)
	li	a5,1
	j	.L1168
.L1164:
	lw	a5,-36(s0)
	sw	a5,-28(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a0,-28(s0)
	lw	a1,-24(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,4
	bne	a4,a5,.L1166
	lw	a0,-28(s0)
	lw	a1,-24(s0)
	call	cap_endpoint_cap_get_capCanSend
	mv	a5,a0
	beqz	a5,.L1166
	lw	a0,-28(s0)
	lw	a1,-24(s0)
	call	cap_endpoint_cap_get_capCanGrant
	mv	a5,a0
	beqz	a5,.L1166
	lw	a5,-52(s0)
	lui	a4,%hi(current_fault)
	lw	a3,%lo(current_fault)(a4)
	sw	a3,144(a5)
	add	a4,a4,%lo(current_fault)
	lw	a4,4(a4)
	sw	a4,148(a5)
	lui	a5,%hi(current_fault)
	lw	a0,%lo(current_fault)(a5)
	add	a5,a5,%lo(current_fault)
	lw	a1,4(a5)
	call	fault_get_faultType
	mv	a4,a0
	li	a5,1
	bne	a4,a5,.L1167
	lw	a5,-52(s0)
	lw	a4,-48(s0)
	sw	a4,152(a5)
	lw	a4,-44(s0)
	sw	a4,156(a5)
.L1167:
	lw	a0,-28(s0)
	lw	a1,-24(s0)
	call	cap_endpoint_cap_get_capEPBadge
	mv	s1,a0
	lw	a0,-28(s0)
	lw	a1,-24(s0)
	call	cap_endpoint_cap_get_capEPPtr
	mv	a5,a0
	lw	a4,-52(s0)
	li	a3,1
	mv	a2,s1
	mv	a1,zero
	li	a0,1
	call	sendIPC
	mv	a5,zero
	j	.L1168
.L1166:
	mv	a1,zero
	lw	a0,-20(s0)
	call	fault_cap_fault_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_fault)
	sw	a4,%lo(current_fault)(a3)
	add	a3,a3,%lo(current_fault)
	sw	a5,4(a3)
	mv	a0,zero
	call	lookup_fault_missing_capability_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_lookup_fault)
	sw	a4,%lo(current_lookup_fault)(a3)
	add	a3,a3,%lo(current_lookup_fault)
	sw	a5,4(a3)
	li	a5,1
.L1168:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s1,52(sp)
	add	sp,sp,64
	jr	ra
	.size	sendFaultIPC, .-sendFaultIPC
	.section	.rodata
	.align	2
.LC156:
	.string	"null fault"
	.align	2
.LC157:
	.string	"receive"
	.align	2
.LC158:
	.string	"send"
	.align	2
.LC159:
	.string	"cap fault in %s phase at address 0x%x"
	.align	2
.LC160:
	.string	"code"
	.align	2
.LC161:
	.string	"data"
	.align	2
.LC162:
	.string	"vm fault on %s at address 0x%x with status 0x%x"
	.align	2
.LC163:
	.string	"unknown syscall 0x%x"
	.align	2
.LC164:
	.string	"user exception 0x%x code 0x%x"
	.align	2
.LC165:
	.string	"unknown fault"
	.text
	.align	2
	.type	print_fault, @function
print_fault:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	fault_get_faultType
	mv	a5,a0
	li	a4,4
	bgtu	a5,a4,.L1170
	sll	a4,a5,2
	lui	a5,%hi(.L1172)
	add	a5,a5,%lo(.L1172)
	add	a5,a4,a5
	lw	a5,0(a5)
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L1172:
	.word	.L1171
	.word	.L1173
	.word	.L1174
	.word	.L1175
	.word	.L1176
	.text
.L1171:
	lui	a5,%hi(.LC156)
	add	a0,a5,%lo(.LC156)
	call	printf
	j	.L1177
.L1173:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	fault_cap_fault_get_inReceivePhase
	mv	a5,a0
	beqz	a5,.L1178
	lui	a5,%hi(.LC157)
	add	s1,a5,%lo(.LC157)
	j	.L1179
.L1178:
	lui	a5,%hi(.LC158)
	add	s1,a5,%lo(.LC158)
.L1179:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	fault_cap_fault_get_address
	mv	a5,a0
	mv	a2,a5
	mv	a1,s1
	lui	a5,%hi(.LC159)
	add	a0,a5,%lo(.LC159)
	call	printf
	j	.L1177
.L1174:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	fault_vm_fault_get_instructionFault
	mv	a5,a0
	beqz	a5,.L1180
	lui	a5,%hi(.LC160)
	add	s1,a5,%lo(.LC160)
	j	.L1181
.L1180:
	lui	a5,%hi(.LC161)
	add	s1,a5,%lo(.LC161)
.L1181:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	fault_vm_fault_get_address
	mv	s2,a0
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	fault_vm_fault_get_FSR
	mv	a5,a0
	mv	a3,a5
	mv	a2,s2
	mv	a1,s1
	lui	a5,%hi(.LC162)
	add	a0,a5,%lo(.LC162)
	call	printf
	j	.L1177
.L1175:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	fault_unknown_syscall_get_syscallNumber
	mv	a5,a0
	mv	a1,a5
	lui	a5,%hi(.LC163)
	add	a0,a5,%lo(.LC163)
	call	printf
	j	.L1177
.L1176:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	fault_user_exception_get_number
	mv	s1,a0
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	fault_user_exception_get_code
	mv	a5,a0
	mv	a2,a5
	mv	a1,s1
	lui	a5,%hi(.LC164)
	add	a0,a5,%lo(.LC164)
	call	printf
	j	.L1177
.L1170:
	lui	a5,%hi(.LC165)
	add	a0,a5,%lo(.LC165)
	call	printf
	nop
.L1177:
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	lw	s1,20(sp)
	lw	s2,16(sp)
	add	sp,sp,32
	jr	ra
	.size	print_fault, .-print_fault
	.section	.rodata
	.align	2
.LC166:
	.string	"Caught "
	.align	2
.LC167:
	.string	"\nwhile trying to handle:"
	.align	2
.LC168:
	.string	"\nin thread 0x%x "
	.align	2
.LC169:
	.string	"at address 0x%x\n"
	.text
	.align	2
	.globl	handleDoubleFault
	.type	handleDoubleFault, @function
handleDoubleFault:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-44(s0)
	sw	a2,-40(s0)
	lui	a5,%hi(current_fault)
	lw	a4,%lo(current_fault)(a5)
	sw	a4,-24(s0)
	add	a5,a5,%lo(current_fault)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	lui	a5,%hi(.LC166)
	add	a0,a5,%lo(.LC166)
	call	printf
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	print_fault
	lui	a5,%hi(.LC167)
	add	a0,a5,%lo(.LC167)
	call	puts
	lw	a0,-44(s0)
	lw	a1,-40(s0)
	call	print_fault
	lw	a5,-36(s0)
	mv	a1,a5
	lui	a5,%hi(.LC168)
	add	a0,a5,%lo(.LC168)
	call	printf
	lw	a0,-36(s0)
	call	getRestartPC
	mv	a5,a0
	mv	a1,a5
	lui	a5,%hi(.LC169)
	add	a0,a5,%lo(.LC169)
	call	printf
	mv	a1,zero
	lw	a0,-36(s0)
	call	setThreadState
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	handleDoubleFault, .-handleDoubleFault
	.align	2
	.type	isBlocked, @function
isBlocked:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a4,128(a5)
	sw	a4,-48(s0)
	lw	a4,132(a5)
	sw	a4,-44(s0)
	lw	a5,136(a5)
	sw	a5,-40(s0)
	add	a5,s0,-48
	mv	a0,a5
	call	thread_state_get_tsType
	mv	a5,a0
	beqz	a5,.L1185
	add	a4,a5,-3
	li	a5,3
	bgtu	a4,a5,.L1184
.L1185:
	li	a5,1
	j	.L1186
.L1184:
	mv	a5,zero
.L1186:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	isBlocked, .-isBlocked
	.align	2
	.type	isRunnable, @function
isRunnable:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a4,128(a5)
	sw	a4,-48(s0)
	lw	a4,132(a5)
	sw	a4,-44(s0)
	lw	a5,136(a5)
	sw	a5,-40(s0)
	add	a5,s0,-48
	mv	a0,a5
	call	thread_state_get_tsType
	mv	a5,a0
	li	a4,1
	bltu	a5,a4,.L1188
	li	a4,2
	bleu	a5,a4,.L1189
	li	a4,7
	bne	a5,a4,.L1188
.L1189:
	li	a5,1
	j	.L1190
.L1188:
	mv	a5,zero
.L1190:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	isRunnable, .-isRunnable
	.section	.boot.text
	.align	2
	.globl	configureIdleThread
	.type	configureIdleThread, @function
configureIdleThread:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a0,-20(s0)
	call	Arch_configureIdleThread
	li	a1,8
	lw	a0,-20(s0)
	call	setThreadState
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	configureIdleThread, .-configureIdleThread
	.section	.rodata
	.align	2
.LC170:
	.string	"/home/hesham/MSc-York/seL4/seL4test/kernel/src/kernel/thread.c"
	.align	2
.LC171:
	.string	"Current thread is blocked"
	.text
	.align	2
	.globl	activateThread
	.type	activateThread, @function
activateThread:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	lw	a4,128(a5)
	sw	a4,-48(s0)
	lw	a4,132(a5)
	sw	a4,-44(s0)
	lw	a5,136(a5)
	sw	a5,-40(s0)
	add	a5,s0,-48
	mv	a0,a5
	call	thread_state_get_tsType
	mv	a5,a0
	li	a4,2
	beq	a5,a4,.L1194
	li	a4,2
	bgtu	a5,a4,.L1195
	li	a4,1
	beq	a5,a4,.L1199
	j	.L1193
.L1195:
	li	a4,7
	beq	a5,a4,.L1199
	li	a4,8
	beq	a5,a4,.L1200
	j	.L1193
.L1194:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	sw	a0,-20(s0)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	lw	a1,-20(s0)
	mv	a0,a5
	call	setNextPC
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,1
	mv	a0,a5
	call	setThreadState
	j	.L1198
.L1193:
	lui	a5,%hi(__func__.5279)
	add	a3,a5,%lo(__func__.5279)
	li	a2,89
	lui	a5,%hi(.LC170)
	add	a1,a5,%lo(.LC170)
	lui	a5,%hi(.LC171)
	add	a0,a5,%lo(.LC171)
	call	_fail
.L1199:
	nop
	j	.L1198
.L1200:
	nop
.L1198:
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	activateThread, .-activateThread
	.align	2
	.globl	suspend
	.type	suspend, @function
suspend:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a0,-20(s0)
	call	ipcCancel
	lw	a0,-20(s0)
	call	deleteCallerCap
	mv	a1,zero
	lw	a0,-20(s0)
	call	setThreadState
	lw	a0,-20(s0)
	call	tcbSchedDequeue
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	suspend, .-suspend
	.align	2
	.globl	restart
	.type	restart, @function
restart:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a0,-20(s0)
	call	isBlocked
	mv	a5,a0
	beqz	a5,.L1204
	lw	a0,-20(s0)
	call	ipcCancel
	lw	a0,-20(s0)
	call	setupReplyMaster
	li	a1,2
	lw	a0,-20(s0)
	call	setThreadState
	lw	a0,-20(s0)
	call	tcbSchedEnqueue
	lw	a0,-20(s0)
	call	switchIfRequiredTo
.L1204:
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	restart, .-restart
	.align	2
	.globl	doIPCTransfer
	.type	doIPCTransfer, @function
doIPCTransfer:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	a5,-56(s0)
	lw	a1,-52(s0)
	li	a0,1
	call	lookupIPCBuffer
	sw	a0,-20(s0)
	lw	a5,-36(s0)
	lw	a0,144(a5)
	lw	a1,148(a5)
	call	fault_get_faultType
	mv	a5,a0
	seqz	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L1206
	lw	a1,-36(s0)
	mv	a0,zero
	call	lookupIPCBuffer
	sw	a0,-24(s0)
	lw	a7,-56(s0)
	lw	a6,-20(s0)
	lw	a5,-52(s0)
	lw	a4,-48(s0)
	lw	a3,-44(s0)
	lw	a2,-40(s0)
	lw	a1,-24(s0)
	lw	a0,-36(s0)
	call	doNormalTransfer
	j	.L1208
.L1206:
	lw	a3,-20(s0)
	lw	a2,-52(s0)
	lw	a1,-36(s0)
	lw	a0,-44(s0)
	call	doFaultTransfer
.L1208:
	nop
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	doIPCTransfer, .-doIPCTransfer
	.section	.rodata
	.align	2
.LC172:
	.string	"Assertion failed: thread_state_get_tsType(receiver->tcbState) == ThreadState_BlockedOnReply\n"
	.align	2
.LC173:
	.string	"Assertion failed: cap_get_capType(replySlot->cap) == cap_reply_cap\n"
	.align	2
.LC174:
	.string	"Assertion failed: cap_reply_cap_get_capInCDT(replySlot->cap)\n"
	.text
	.align	2
	.globl	doReplyTransfer
	.type	doReplyTransfer, @function
doReplyTransfer:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	add	s0,sp,64
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	lw	a5,-40(s0)
	lw	a4,128(a5)
	sw	a4,-64(s0)
	lw	a4,132(a5)
	sw	a4,-60(s0)
	lw	a5,136(a5)
	sw	a5,-56(s0)
	add	a5,s0,-64
	mv	a0,a5
	call	thread_state_get_tsType
	mv	a4,a0
	li	a5,5
	beq	a4,a5,.L1221
	lui	a5,%hi(.LC172)
	add	a0,a5,%lo(.LC172)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L1211
.L1221:
	nop
.L1211:
	lw	a5,-40(s0)
	lw	a0,144(a5)
	lw	a1,148(a5)
	call	fault_get_faultType
	mv	a5,a0
	seqz	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L1212
	mv	a5,zero
	lw	a4,-40(s0)
	li	a3,1
	mv	a2,zero
	mv	a1,zero
	lw	a0,-36(s0)
	call	doIPCTransfer
	li	a1,1
	lw	a0,-40(s0)
	call	setThreadState
	lw	a0,-40(s0)
	call	attemptSwitchTo
	j	.L1213
.L1212:
	lw	a1,-36(s0)
	lw	a0,-40(s0)
	call	handleFaultReply
	sw	a0,-20(s0)
	lw	a5,-40(s0)
	add	a5,a5,144
	mv	a0,a5
	call	fault_null_fault_ptr_new
	lw	a5,-20(s0)
	beqz	a5,.L1214
	li	a1,2
	lw	a0,-40(s0)
	call	setThreadState
	lw	a0,-40(s0)
	call	attemptSwitchTo
	j	.L1213
.L1214:
	mv	a1,zero
	lw	a0,-40(s0)
	call	setThreadState
.L1213:
	lw	a5,-44(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_reply_cap_get_capInCDT
	mv	a5,a0
	beqz	a5,.L1215
	lw	a5,-40(s0)
	and	a5,a5,-512
	add	a5,a5,32
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a4,a0
	li	a5,8
	beq	a4,a5,.L1222
	lui	a5,%hi(.LC173)
	add	a0,a5,%lo(.LC173)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L1217
.L1222:
	nop
.L1217:
	lw	a5,-24(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_reply_cap_get_capInCDT
	mv	a5,a0
	bnez	a5,.L1223
	lui	a5,%hi(.LC174)
	add	a0,a5,%lo(.LC174)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L1219
.L1223:
	nop
.L1219:
	lw	a0,-24(s0)
	call	cdtRemove
	lw	a0,-44(s0)
	call	cdtRemove
	lw	s1,-44(s0)
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,0(s1)
	sw	a5,4(s1)
	lw	s1,-24(s0)
	mv	a2,zero
	li	a1,1
	mv	a0,zero
	call	cap_reply_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,0(s1)
	sw	a5,4(s1)
	j	.L1224
.L1215:
	lw	a0,-36(s0)
	call	deleteCallerCap
.L1224:
	nop
	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s1,52(sp)
	add	sp,sp,64
	jr	ra
	.size	doReplyTransfer, .-doReplyTransfer
	.align	2
	.globl	doNormalTransfer
	.type	doNormalTransfer, @function
doNormalTransfer:
	add	sp,sp,-96
	sw	ra,92(sp)
	sw	s0,88(sp)
	add	s0,sp,96
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	sw	a4,-68(s0)
	sw	a5,-72(s0)
	sw	a6,-76(s0)
	sw	a7,-80(s0)
	li	a1,19
	lw	a0,-52(s0)
	call	getRegister
	mv	a5,a0
	mv	a0,a5
	call	messageInfoFromWord
	mv	a5,a0
	sw	a5,-28(s0)
	lw	a5,-68(s0)
	beqz	a5,.L1226
	lw	a2,-28(s0)
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	lookupExtraCaps
	sw	a0,-20(s0)
	lui	a5,%hi(current_extra_caps)
	lw	a4,%lo(current_extra_caps)(a5)
	sw	a4,-40(s0)
	add	a4,a5,%lo(current_extra_caps)
	lw	a4,4(a4)
	sw	a4,-36(s0)
	add	a5,a5,%lo(current_extra_caps)
	lw	a5,8(a5)
	sw	a5,-32(s0)
	lw	a5,-20(s0)
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L1228
	sw	zero,-40(s0)
	j	.L1228
.L1226:
	lui	a5,%hi(current_extra_caps)
	lw	a4,%lo(current_extra_caps)(a5)
	sw	a4,-40(s0)
	add	a4,a5,%lo(current_extra_caps)
	lw	a4,4(a4)
	sw	a4,-36(s0)
	add	a5,a5,%lo(current_extra_caps)
	lw	a5,8(a5)
	sw	a5,-32(s0)
	sw	zero,-40(s0)
.L1228:
	lw	a0,-28(s0)
	call	message_info_get_msgLength
	mv	a5,a0
	mv	a4,a5
	lw	a3,-76(s0)
	lw	a2,-72(s0)
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	copyMRs
	sw	a0,-24(s0)
	lw	a5,-40(s0)
	sw	a5,-96(s0)
	lw	a5,-36(s0)
	sw	a5,-92(s0)
	lw	a5,-32(s0)
	sw	a5,-88(s0)
	add	a1,s0,-96
	lw	a5,-80(s0)
	lw	a4,-76(s0)
	lw	a3,-72(s0)
	lw	a2,-60(s0)
	lw	a0,-28(s0)
	call	transferCaps
	mv	a5,a0
	sw	a5,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-28(s0)
	call	message_info_set_msgLength
	mv	a5,a0
	sw	a5,-28(s0)
	lw	a0,-28(s0)
	call	wordFromMessageInfo
	mv	a5,a0
	mv	a2,a5
	li	a1,19
	lw	a0,-72(s0)
	call	setRegister
	lw	a2,-64(s0)
	li	a1,18
	lw	a0,-72(s0)
	call	setRegister
	nop
	lw	ra,92(sp)
	lw	s0,88(sp)
	add	sp,sp,96
	jr	ra
	.size	doNormalTransfer, .-doNormalTransfer
	.align	2
	.globl	doFaultTransfer
	.type	doFaultTransfer, @function
doFaultTransfer:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	lw	a2,-48(s0)
	lw	a1,-44(s0)
	lw	a0,-40(s0)
	call	setMRs_fault
	sw	a0,-20(s0)
	lw	a5,-40(s0)
	lw	a0,144(a5)
	lw	a1,148(a5)
	call	fault_get_faultType
	mv	a5,a0
	lw	a3,-20(s0)
	mv	a2,zero
	mv	a1,zero
	mv	a0,a5
	call	message_info_new
	mv	a5,a0
	sw	a5,-24(s0)
	lw	a0,-24(s0)
	call	wordFromMessageInfo
	mv	a5,a0
	mv	a2,a5
	li	a1,19
	lw	a0,-44(s0)
	call	setRegister
	lw	a2,-36(s0)
	li	a1,18
	lw	a0,-44(s0)
	call	setRegister
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	doFaultTransfer, .-doFaultTransfer
	.align	2
	.type	transferCaps, @function
transferCaps:
	add	sp,sp,-112
	sw	ra,108(sp)
	sw	s0,104(sp)
	sw	s1,100(sp)
	add	s0,sp,112
	sw	a0,-68(s0)
	mv	s1,a1
	sw	a2,-72(s0)
	sw	a3,-76(s0)
	sw	a4,-80(s0)
	sw	a5,-84(s0)
	mv	a1,zero
	lw	a0,-68(s0)
	call	message_info_set_msgExtraCaps
	mv	a5,a0
	sw	a5,-68(s0)
	mv	a1,zero
	lw	a0,-68(s0)
	call	message_info_set_msgCapsUnwrapped
	mv	a5,a0
	sw	a5,-68(s0)
	lw	a5,0(s1)
	seqz	a5,a5
	and	a5,a5,0xff
	bnez	a5,.L1231
	lw	a5,-80(s0)
	seqz	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L1232
.L1231:
	lw	a5,-68(s0)
	j	.L1233
.L1232:
	lw	a1,-80(s0)
	lw	a0,-76(s0)
	call	getReceiveSlots
	sw	a0,-24(s0)
	sw	zero,-20(s0)
	j	.L1234
.L1244:
	lw	a5,-20(s0)
	sll	a5,a5,2
	add	a5,s1,a5
	lw	a5,0(a5)
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	lw	a4,0(a5)
	sw	a4,-44(s0)
	lw	a5,4(a5)
	sw	a5,-40(s0)
	lw	a0,-44(s0)
	lw	a1,-40(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,4
	bne	a4,a5,.L1235
	lw	a0,-44(s0)
	lw	a1,-40(s0)
	call	cap_endpoint_cap_get_capEPPtr
	mv	a5,a0
	mv	a4,a5
	lw	a5,-72(s0)
	bne	a4,a5,.L1235
	lw	a0,-44(s0)
	lw	a1,-40(s0)
	call	cap_endpoint_cap_get_capEPBadge
	mv	a5,a0
	lw	a2,-20(s0)
	mv	a1,a5
	lw	a0,-80(s0)
	call	setExtraBadge
	lw	a0,-68(s0)
	call	message_info_get_msgCapsUnwrapped
	mv	a3,a0
	li	a4,1
	lw	a5,-20(s0)
	sll	a5,a4,a5
	or	a5,a3,a5
	mv	a1,a5
	lw	a0,-68(s0)
	call	message_info_set_msgCapsUnwrapped
	mv	a5,a0
	sw	a5,-68(s0)
	j	.L1236
.L1235:
	lw	a5,-24(s0)
	beqz	a5,.L1245
	lw	a5,-84(s0)
	beqz	a5,.L1239
	mv	a2,zero
	li	a1,1
	li	a0,1
	call	cap_rights_new
	mv	a5,a0
	lw	a1,-44(s0)
	lw	a2,-40(s0)
	mv	a0,a5
	call	maskCapRights
	mv	a4,a0
	mv	a5,a1
	sw	a4,-36(s0)
	sw	a5,-32(s0)
	add	a5,s0,-56
	lw	a2,-36(s0)
	lw	a3,-32(s0)
	lw	a1,-28(s0)
	mv	a0,a5
	call	deriveCap
	j	.L1240
.L1239:
	add	a5,s0,-112
	lw	a2,-44(s0)
	lw	a3,-40(s0)
	lw	a1,-28(s0)
	mv	a0,a5
	call	deriveCap
	lw	a5,-112(s0)
	sw	a5,-56(s0)
	lw	a5,-108(s0)
	sw	a5,-52(s0)
	lw	a5,-104(s0)
	sw	a5,-48(s0)
.L1240:
	lw	a5,-56(s0)
	bnez	a5,.L1246
	lw	a0,-52(s0)
	lw	a1,-48(s0)
	call	cap_get_capType
	mv	a5,a0
	beqz	a5,.L1247
	lw	a3,-24(s0)
	lw	a2,-28(s0)
	lw	a0,-52(s0)
	lw	a1,-48(s0)
	call	cteInsert
	sw	zero,-24(s0)
.L1236:
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L1234:
	lw	a4,-20(s0)
	li	a5,2
	bgtu	a4,a5,.L1243
	lw	a5,-20(s0)
	sll	a5,a5,2
	add	a5,s1,a5
	lw	a5,0(a5)
	bnez	a5,.L1244
	j	.L1243
.L1245:
	nop
	j	.L1243
.L1246:
	nop
	j	.L1243
.L1247:
	nop
.L1243:
	lw	a1,-20(s0)
	lw	a0,-68(s0)
	call	message_info_set_msgExtraCaps
	mv	a5,a0
.L1233:
	mv	a0,a5
	lw	ra,108(sp)
	lw	s0,104(sp)
	lw	s1,100(sp)
	add	sp,sp,112
	jr	ra
	.size	transferCaps, .-transferCaps
	.align	2
	.globl	doPollFailedTransfer
	.type	doPollFailedTransfer, @function
doPollFailedTransfer:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	mv	a2,zero
	li	a1,18
	lw	a0,-20(s0)
	call	setRegister
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	doPollFailedTransfer, .-doPollFailedTransfer
	.align	2
	.type	nextDomain, @function
nextDomain:
	add	sp,sp,-16
	sw	s0,12(sp)
	add	s0,sp,16
	lui	a5,%hi(ksDomScheduleIdx)
	lw	a5,%lo(ksDomScheduleIdx)(a5)
	add	a4,a5,1
	lui	a5,%hi(ksDomScheduleIdx)
	sw	a4,%lo(ksDomScheduleIdx)(a5)
	lui	a5,%hi(ksDomScheduleIdx)
	lw	a4,%lo(ksDomScheduleIdx)(a5)
	li	a5,1
	bltu	a4,a5,.L1250
	lui	a5,%hi(ksDomScheduleIdx)
	sw	zero,%lo(ksDomScheduleIdx)(a5)
.L1250:
	lui	a5,%hi(ksWorkUnitsCompleted)
	sw	zero,%lo(ksWorkUnitsCompleted)(a5)
	lui	a5,%hi(ksDomScheduleIdx)
	lw	a4,%lo(ksDomScheduleIdx)(a5)
	lui	a5,%hi(ksDomSchedule)
	sll	a4,a4,3
	add	a5,a5,%lo(ksDomSchedule)
	add	a5,a4,a5
	lw	a4,0(a5)
	lui	a5,%hi(ksCurDomain)
	sw	a4,%lo(ksCurDomain)(a5)
	li	a4,1
	lui	a5,%hi(ksDomainTime)
	sw	a4,%lo(ksDomainTime)(a5)
	nop
	lw	s0,12(sp)
	add	sp,sp,16
	jr	ra
	.size	nextDomain, .-nextDomain
	.align	2
	.globl	schedule
	.type	schedule, @function
schedule:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	lui	a5,%hi(ksSchedulerAction)
	lw	a5,%lo(ksSchedulerAction)(a5)
	sw	a5,-20(s0)
	lw	a4,-20(s0)
	li	a5,-1
	bne	a4,a5,.L1252
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	isRunnable
	mv	a5,a0
	beqz	a5,.L1256
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	tcbSchedEnqueue
.L1256:
	call	chooseThread
	lui	a5,%hi(ksSchedulerAction)
	sw	zero,%lo(ksSchedulerAction)(a5)
	j	.L1257
.L1252:
	lw	a5,-20(s0)
	beqz	a5,.L1257
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	isRunnable
	mv	a5,a0
	beqz	a5,.L1255
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	tcbSchedEnqueue
.L1255:
	lui	a5,%hi(ksSchedulerAction)
	lw	a5,%lo(ksSchedulerAction)(a5)
	mv	a0,a5
	call	switchToThread
	lui	a5,%hi(ksSchedulerAction)
	sw	zero,%lo(ksSchedulerAction)(a5)
.L1257:
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	schedule, .-schedule
	.section	.rodata
	.align	2
.LC175:
	.string	"Assertion failed: thread\n"
	.align	2
.LC176:
	.string	"Assertion failed: isRunnable(thread)\n"
	.text
	.align	2
	.globl	chooseThread
	.type	chooseThread, @function
chooseThread:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	zero,-20(s0)
	lui	a5,%hi(ksReadyQueuesL1Bitmap)
	lw	a4,-20(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(ksReadyQueuesL1Bitmap)
	add	a5,a4,a5
	lw	a5,0(a5)
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L1259
	lui	a5,%hi(ksReadyQueuesL1Bitmap)
	lw	a4,-20(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(ksReadyQueuesL1Bitmap)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a0,a5
	call	__clzsi2
	mv	a5,a0
	mv	a4,a5
	li	a5,31
	sub	a5,a5,a4
	sw	a5,-24(s0)
	lui	a3,%hi(ksReadyQueuesL2Bitmap)
	lw	a4,-20(s0)
	mv	a5,a4
	sll	a5,a5,3
	add	a5,a5,a4
	lw	a4,-24(s0)
	add	a5,a5,a4
	sll	a4,a5,2
	add	a5,a3,%lo(ksReadyQueuesL2Bitmap)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a0,a5
	call	__clzsi2
	mv	a5,a0
	mv	a4,a5
	li	a5,31
	sub	a5,a5,a4
	sw	a5,-28(s0)
	lw	a0,-24(s0)
	call	l1index_to_prio
	mv	a4,a0
	lw	a5,-28(s0)
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a1,-32(s0)
	lw	a0,-20(s0)
	call	ready_queues_index
	mv	a4,a0
	lui	a5,%hi(ksReadyQueues)
	sll	a4,a4,3
	add	a5,a5,%lo(ksReadyQueues)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	bnez	a5,.L1265
	lui	a5,%hi(.LC175)
	add	a0,a5,%lo(.LC175)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L1261
.L1265:
	nop
.L1261:
	lw	a0,-36(s0)
	call	isRunnable
	mv	a5,a0
	bnez	a5,.L1266
	lui	a5,%hi(.LC176)
	add	a0,a5,%lo(.LC176)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L1263
.L1266:
	nop
.L1263:
	lw	a0,-36(s0)
	call	switchToThread
	j	.L1258
.L1259:
	call	switchToIdleThread
.L1258:
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	chooseThread, .-chooseThread
	.align	2
	.globl	switchToThread
	.type	switchToThread, @function
switchToThread:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a0,-20(s0)
	call	Arch_switchToThread
	lw	a0,-20(s0)
	call	tcbSchedDequeue
	lui	a5,%hi(ksCurThread)
	lw	a4,-20(s0)
	sw	a4,%lo(ksCurThread)(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	switchToThread, .-switchToThread
	.align	2
	.globl	switchToIdleThread
	.type	switchToIdleThread, @function
switchToIdleThread:
	add	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	add	s0,sp,16
	call	Arch_switchToIdleThread
	lui	a5,%hi(ksIdleThread)
	lw	a4,%lo(ksIdleThread)(a5)
	lui	a5,%hi(ksCurThread)
	sw	a4,%lo(ksCurThread)(a5)
	nop
	lw	ra,12(sp)
	lw	s0,8(sp)
	add	sp,sp,16
	jr	ra
	.size	switchToIdleThread, .-switchToIdleThread
	.align	2
	.globl	setDomain
	.type	setDomain, @function
setDomain:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a0,-20(s0)
	call	tcbSchedDequeue
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,160(a5)
	lw	a0,-20(s0)
	call	isRunnable
	mv	a5,a0
	beqz	a5,.L1270
	lw	a0,-20(s0)
	call	tcbSchedEnqueue
.L1270:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	lw	a4,-20(s0)
	bne	a4,a5,.L1272
	call	rescheduleRequired
.L1272:
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	setDomain, .-setDomain
	.align	2
	.globl	setPriority
	.type	setPriority, @function
setPriority:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a0,-20(s0)
	call	tcbSchedDequeue
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,164(a5)
	lw	a0,-20(s0)
	call	isRunnable
	mv	a5,a0
	beqz	a5,.L1274
	lw	a0,-20(s0)
	call	tcbSchedEnqueue
.L1274:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	lw	a4,-20(s0)
	bne	a4,a5,.L1276
	call	rescheduleRequired
.L1276:
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	setPriority, .-setPriority
	.align	2
	.type	possibleSwitchTo, @function
possibleSwitchTo:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	lw	a5,164(a5)
	sw	a5,-20(s0)
	lw	a5,-36(s0)
	lw	a5,164(a5)
	sw	a5,-24(s0)
	lui	a5,%hi(ksSchedulerAction)
	lw	a5,%lo(ksSchedulerAction)(a5)
	sw	a5,-28(s0)
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	bgtu	a4,a5,.L1278
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	bne	a4,a5,.L1279
	lw	a5,-40(s0)
	beqz	a5,.L1279
.L1278:
	lw	a5,-28(s0)
	bnez	a5,.L1279
	lui	a5,%hi(ksSchedulerAction)
	lw	a4,-36(s0)
	sw	a4,%lo(ksSchedulerAction)(a5)
	j	.L1280
.L1279:
	lw	a0,-36(s0)
	call	tcbSchedEnqueue
.L1280:
	lw	a5,-28(s0)
	beqz	a5,.L1282
	lw	a4,-28(s0)
	li	a5,-1
	beq	a4,a5,.L1282
	call	rescheduleRequired
.L1282:
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	possibleSwitchTo, .-possibleSwitchTo
	.align	2
	.globl	attemptSwitchTo
	.type	attemptSwitchTo, @function
attemptSwitchTo:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	li	a1,1
	lw	a0,-20(s0)
	call	possibleSwitchTo
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	attemptSwitchTo, .-attemptSwitchTo
	.align	2
	.globl	switchIfRequiredTo
	.type	switchIfRequiredTo, @function
switchIfRequiredTo:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	mv	a1,zero
	lw	a0,-20(s0)
	call	possibleSwitchTo
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	switchIfRequiredTo, .-switchIfRequiredTo
	.align	2
	.globl	setThreadState
	.type	setThreadState, @function
setThreadState:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-20(s0)
	add	a5,a5,128
	lw	a1,-24(s0)
	mv	a0,a5
	call	thread_state_ptr_set_tsType
	lw	a0,-20(s0)
	call	scheduleTCB
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	setThreadState, .-setThreadState
	.align	2
	.globl	scheduleTCB
	.type	scheduleTCB, @function
scheduleTCB:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	lw	a4,-20(s0)
	bne	a4,a5,.L1288
	lui	a5,%hi(ksSchedulerAction)
	lw	a5,%lo(ksSchedulerAction)(a5)
	bnez	a5,.L1288
	lw	a0,-20(s0)
	call	isRunnable
	mv	a5,a0
	bnez	a5,.L1288
	call	rescheduleRequired
.L1288:
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	scheduleTCB, .-scheduleTCB
	.align	2
	.globl	timerTick
	.type	timerTick, @function
timerTick:
	add	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	add	s0,sp,16
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	isRunnable
	mv	a5,a0
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L1292
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	lw	a4,168(a5)
	li	a5,1
	bleu	a4,a5,.L1291
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	lw	a4,168(a5)
	add	a4,a4,-1
	sw	a4,168(a5)
	j	.L1292
.L1291:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a4,1
	sw	a4,168(a5)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	tcbSchedAppend
	call	rescheduleRequired
.L1292:
	nop
	lw	ra,12(sp)
	lw	s0,8(sp)
	add	sp,sp,16
	jr	ra
	.size	timerTick, .-timerTick
	.align	2
	.globl	rescheduleRequired
	.type	rescheduleRequired, @function
rescheduleRequired:
	add	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	add	s0,sp,16
	lui	a5,%hi(ksSchedulerAction)
	lw	a5,%lo(ksSchedulerAction)(a5)
	beqz	a5,.L1294
	lui	a5,%hi(ksSchedulerAction)
	lw	a4,%lo(ksSchedulerAction)(a5)
	li	a5,-1
	beq	a4,a5,.L1294
	lui	a5,%hi(ksSchedulerAction)
	lw	a5,%lo(ksSchedulerAction)(a5)
	mv	a0,a5
	call	tcbSchedEnqueue
.L1294:
	lui	a5,%hi(ksSchedulerAction)
	li	a4,-1
	sw	a4,%lo(ksSchedulerAction)(a5)
	nop
	lw	ra,12(sp)
	lw	s0,8(sp)
	add	sp,sp,16
	jr	ra
	.size	rescheduleRequired, .-rescheduleRequired
	.align	2
	.type	print_string, @function
print_string:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	zero,-20(s0)
	j	.L1296
.L1297:
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	mv	a0,a5
	call	qemu_uart_putchar
	lw	a5,-36(s0)
	add	a5,a5,1
	sw	a5,-36(s0)
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L1296:
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	bnez	a5,.L1297
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	print_string, .-print_string
	.align	2
	.type	xdiv, @function
xdiv:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	li	a4,10
	beq	a5,a4,.L1301
	li	a4,16
	bne	a5,a4,.L1304
	lw	a5,-20(s0)
	srl	a5,a5,4
	j	.L1303
.L1301:
	lw	a4,-20(s0)
	li	a5,10
	divu	a5,a4,a5
	j	.L1303
.L1304:
	mv	a5,zero
.L1303:
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	xdiv, .-xdiv
	.align	2
	.type	xmod, @function
xmod:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	li	a4,10
	beq	a5,a4,.L1307
	li	a4,16
	bne	a5,a4,.L1310
	lw	a5,-20(s0)
	and	a5,a5,15
	j	.L1309
.L1307:
	lw	a4,-20(s0)
	li	a5,10
	remu	a5,a4,a5
	j	.L1309
.L1310:
	mv	a5,zero
.L1309:
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	xmod, .-xmod
	.align	2
	.globl	print_unsigned_long
	.type	print_unsigned_long, @function
print_unsigned_long:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	lw	a4,-56(s0)
	li	a5,10
	beq	a4,a5,.L1312
	lw	a4,-56(s0)
	li	a5,16
	beq	a4,a5,.L1312
	mv	a5,zero
	j	.L1321
.L1312:
	lw	a5,-52(s0)
	bnez	a5,.L1314
	li	a0,48
	call	qemu_uart_putchar
	li	a5,1
	j	.L1321
.L1314:
	sw	zero,-20(s0)
	j	.L1315
.L1318:
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	xmod
	sw	a0,-28(s0)
	lw	a4,-28(s0)
	li	a5,9
	bleu	a4,a5,.L1316
	lw	a5,-28(s0)
	and	a5,a5,0xff
	add	a5,a5,87
	and	a4,a5,0xff
	lw	a5,-20(s0)
	add	a3,s0,-16
	add	a5,a3,a5
	sb	a4,-24(a5)
	j	.L1317
.L1316:
	lw	a5,-28(s0)
	and	a5,a5,0xff
	add	a5,a5,48
	and	a4,a5,0xff
	lw	a5,-20(s0)
	add	a3,s0,-16
	add	a5,a3,a5
	sb	a4,-24(a5)
.L1317:
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	xdiv
	sw	a0,-52(s0)
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L1315:
	lw	a5,-52(s0)
	bnez	a5,.L1318
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	j	.L1319
.L1320:
	lw	a5,-24(s0)
	add	a5,a5,-1
	add	a4,s0,-16
	add	a5,a4,a5
	lbu	a5,-24(a5)
	mv	a0,a5
	call	qemu_uart_putchar
	lw	a5,-24(s0)
	add	a5,a5,-1
	sw	a5,-24(s0)
.L1319:
	lw	a5,-24(s0)
	bnez	a5,.L1320
	lw	a5,-20(s0)
.L1321:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	print_unsigned_long, .-print_unsigned_long
	.align	2
	.type	print_unsigned_long_long, @function
print_unsigned_long_long:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	sw	zero,-20(s0)
	li	a3,-268435456
	sw	a3,-24(s0)
	lw	a2,-44(s0)
	li	a3,16
	beq	a2,a3,.L1323
	mv	a5,zero
	j	.L1324
.L1323:
	lw	a3,-36(s0)
	srl	a4,a3,0
	mv	a5,zero
	sw	a4,-28(s0)
	lw	a5,-40(s0)
	sw	a5,-32(s0)
	lw	a5,-28(s0)
	beqz	a5,.L1325
	lw	a1,-44(s0)
	lw	a0,-28(s0)
	call	print_unsigned_long
	mv	a4,a0
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	j	.L1326
.L1327:
	li	a0,48
	call	qemu_uart_putchar
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	srl	a5,a5,4
	sw	a5,-24(s0)
.L1326:
	lw	a4,-24(s0)
	lw	a5,-32(s0)
	and	a5,a4,a5
	beqz	a5,.L1327
.L1325:
	lw	a1,-44(s0)
	lw	a0,-32(s0)
	call	print_unsigned_long
	mv	a4,a0
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	lw	a5,-20(s0)
.L1324:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	print_unsigned_long_long, .-print_unsigned_long_long
	.section	.rodata
	.align	2
.LC177:
	.string	"(nil)"
	.align	2
.LC178:
	.string	"0x"
	.text
	.align	2
	.type	vprintf, @function
vprintf:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	lw	a5,-52(s0)
	bnez	a5,.L1329
	mv	a5,zero
	j	.L1330
.L1329:
	sw	zero,-20(s0)
	sw	zero,-24(s0)
	j	.L1331
.L1349:
	lw	a5,-24(s0)
	beqz	a5,.L1332
	lw	a5,-52(s0)
	lbu	a5,0(a5)
	li	a4,112
	beq	a5,a4,.L1334
	li	a4,112
	bgt	a5,a4,.L1335
	li	a4,100
	beq	a5,a4,.L1336
	li	a4,108
	beq	a5,a4,.L1337
	li	a4,37
	beq	a5,a4,.L1338
	j	.L1333
.L1335:
	li	a4,117
	beq	a5,a4,.L1339
	li	a4,120
	beq	a5,a4,.L1340
	li	a4,115
	beq	a5,a4,.L1341
	j	.L1333
.L1338:
	li	a0,37
	call	qemu_uart_putchar
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
	lw	a5,-52(s0)
	add	a5,a5,1
	sw	a5,-52(s0)
	j	.L1342
.L1336:
	lw	a5,-56(s0)
	add	a4,a5,4
	sw	a4,-56(s0)
	lw	a5,0(a5)
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	bgez	a5,.L1343
	li	a0,45
	call	qemu_uart_putchar
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
	lw	a5,-28(s0)
	sub	a5,zero,a5
	sw	a5,-28(s0)
.L1343:
	lw	a5,-28(s0)
	li	a1,10
	mv	a0,a5
	call	print_unsigned_long
	mv	a4,a0
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	lw	a5,-52(s0)
	add	a5,a5,1
	sw	a5,-52(s0)
	j	.L1342
.L1339:
	lw	a5,-56(s0)
	add	a4,a5,4
	sw	a4,-56(s0)
	lw	a5,0(a5)
	li	a1,10
	mv	a0,a5
	call	print_unsigned_long
	mv	a4,a0
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	lw	a5,-52(s0)
	add	a5,a5,1
	sw	a5,-52(s0)
	j	.L1342
.L1340:
	lw	a5,-56(s0)
	add	a4,a5,4
	sw	a4,-56(s0)
	lw	a5,0(a5)
	li	a1,16
	mv	a0,a5
	call	print_unsigned_long
	mv	a4,a0
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	lw	a5,-52(s0)
	add	a5,a5,1
	sw	a5,-52(s0)
	j	.L1342
.L1334:
	lw	a5,-56(s0)
	add	a4,a5,4
	sw	a4,-56(s0)
	lw	a5,0(a5)
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	bnez	a5,.L1344
	lui	a5,%hi(.LC177)
	add	a0,a5,%lo(.LC177)
	call	print_string
	mv	a4,a0
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	j	.L1345
.L1344:
	lui	a5,%hi(.LC178)
	add	a0,a5,%lo(.LC178)
	call	print_string
	mv	a4,a0
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	li	a1,16
	lw	a0,-32(s0)
	call	print_unsigned_long
	mv	a4,a0
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
.L1345:
	lw	a5,-52(s0)
	add	a5,a5,1
	sw	a5,-52(s0)
	j	.L1342
.L1341:
	lw	a5,-56(s0)
	add	a4,a5,4
	sw	a4,-56(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	print_string
	mv	a4,a0
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	lw	a5,-52(s0)
	add	a5,a5,1
	sw	a5,-52(s0)
	j	.L1342
.L1337:
	lw	a5,-52(s0)
	add	a5,a5,1
	lbu	a4,0(a5)
	li	a5,108
	bne	a4,a5,.L1346
	lw	a5,-52(s0)
	add	a5,a5,2
	lbu	a4,0(a5)
	li	a5,120
	bne	a4,a5,.L1346
	lw	a5,-56(s0)
	add	a5,a5,7
	and	a5,a5,-8
	add	a4,a5,8
	sw	a4,-56(s0)
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	li	a2,16
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	print_unsigned_long_long
	mv	a4,a0
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
.L1346:
	lw	a5,-52(s0)
	add	a5,a5,3
	sw	a5,-52(s0)
	j	.L1342
.L1333:
	lw	a5,-52(s0)
	add	a5,a5,1
	sw	a5,-52(s0)
	nop
.L1342:
	sw	zero,-24(s0)
	j	.L1331
.L1332:
	lw	a5,-52(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,37
	bne	a4,a5,.L1350
	li	a5,1
	sw	a5,-24(s0)
	lw	a5,-52(s0)
	add	a5,a5,1
	sw	a5,-52(s0)
	j	.L1331
.L1350:
	lw	a5,-52(s0)
	lbu	a5,0(a5)
	mv	a0,a5
	call	qemu_uart_putchar
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
	lw	a5,-52(s0)
	add	a5,a5,1
	sw	a5,-52(s0)
	nop
.L1331:
	lw	a5,-52(s0)
	lbu	a5,0(a5)
	bnez	a5,.L1349
	lw	a5,-20(s0)
.L1330:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	vprintf, .-vprintf
	.align	2
	.globl	printf
	.type	printf, @function
printf:
	add	sp,sp,-80
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,4(s0)
	sw	a2,8(s0)
	sw	a3,12(s0)
	sw	a4,16(s0)
	sw	a5,20(s0)
	sw	a6,24(s0)
	sw	a7,28(s0)
	add	a5,s0,32
	add	a5,a5,-28
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	vprintf
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,80
	jr	ra
	.size	printf, .-printf
	.align	2
	.globl	puts
	.type	puts, @function
puts:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	j	.L1354
.L1355:
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	mv	a0,a5
	call	qemu_uart_putchar
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L1354:
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	bnez	a5,.L1355
	li	a0,10
	call	qemu_uart_putchar
	mv	a5,zero
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	puts, .-puts
	.align	2
	.globl	preemptionPoint
	.type	preemptionPoint, @function
preemptionPoint:
	add	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	add	s0,sp,16
	lui	a5,%hi(ksWorkUnitsCompleted)
	lw	a5,%lo(ksWorkUnitsCompleted)(a5)
	add	a4,a5,1
	lui	a5,%hi(ksWorkUnitsCompleted)
	sw	a4,%lo(ksWorkUnitsCompleted)(a5)
	lui	a5,%hi(ksWorkUnitsCompleted)
	lw	a4,%lo(ksWorkUnitsCompleted)(a5)
	li	a5,99
	bleu	a4,a5,.L1358
	lui	a5,%hi(ksWorkUnitsCompleted)
	sw	zero,%lo(ksWorkUnitsCompleted)(a5)
	call	isIRQPending
	mv	a5,a0
	beqz	a5,.L1358
	li	a5,4
	j	.L1359
.L1358:
	mv	a5,zero
.L1359:
	mv	a0,a5
	lw	ra,12(sp)
	lw	s0,8(sp)
	add	sp,sp,16
	jr	ra
	.size	preemptionPoint, .-preemptionPoint
	.comm	ksReadyQueues,2048,4
	.comm	ksReadyQueuesL1Bitmap,4,4
	.comm	ksReadyQueuesL2Bitmap,36,4
	.comm	ksCurThread,4,4
	.comm	ksIdleThread,4,4
	.comm	ksSchedulerAction,4,4
	.comm	ksWorkUnitsCompleted,4,4
	.comm	ksRootCTE,4,4
	.comm	intStateIRQTable,256,4
	.comm	intStateIRQNode,4,4
	.comm	ksCurDomain,4,4
	.comm	ksDomainTime,4,4
	.comm	ksDomScheduleIdx,4,4
	.align	2
	.type	aep_ptr_get_queue, @function
aep_ptr_get_queue:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s2,36(sp)
	sw	s3,32(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a0,-36(s0)
	call	async_endpoint_ptr_get_aepQueue_head
	mv	a5,a0
	sw	a5,-32(s0)
	lw	a0,-36(s0)
	call	async_endpoint_ptr_get_aepQueue_tail
	mv	a5,a0
	sw	a5,-28(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	s2,a4
	mv	s3,a5
	mv	a4,s2
	mv	a5,s3
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s2,36(sp)
	lw	s3,32(sp)
	add	sp,sp,48
	jr	ra
	.size	aep_ptr_get_queue, .-aep_ptr_get_queue
	.align	2
	.type	aep_ptr_set_queue, @function
aep_ptr_set_queue:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-28(s0)
	sw	a2,-24(s0)
	lw	a5,-28(s0)
	mv	a1,a5
	lw	a0,-20(s0)
	call	async_endpoint_ptr_set_aepQueue_head
	lw	a5,-24(s0)
	mv	a1,a5
	lw	a0,-20(s0)
	call	async_endpoint_ptr_set_aepQueue_tail
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	aep_ptr_set_queue, .-aep_ptr_set_queue
	.align	2
	.type	aep_set_active, @function
aep_set_active:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	li	a1,2
	lw	a0,-20(s0)
	call	async_endpoint_ptr_set_state
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	async_endpoint_ptr_set_aepMsgIdentifier
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	aep_set_active, .-aep_set_active
	.section	.rodata
	.align	2
.LC179:
	.string	"Assertion failed: dest\n"
	.text
	.align	2
	.globl	sendAsyncIPC
	.type	sendAsyncIPC, @function
sendAsyncIPC:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	lw	a0,-52(s0)
	call	async_endpoint_ptr_get_state
	mv	a5,a0
	li	a4,1
	beq	a5,a4,.L1366
	li	a4,1
	bltu	a5,a4,.L1367
	li	a4,2
	beq	a5,a4,.L1368
	j	.L1378
.L1367:
	lw	a0,-52(s0)
	call	async_endpoint_ptr_get_aepBoundTCB
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	beqz	a5,.L1369
	lw	a5,-20(s0)
	add	a5,a5,128
	mv	a0,a5
	call	thread_state_ptr_get_tsType
	mv	a4,a0
	li	a5,3
	bne	a4,a5,.L1370
	lw	a0,-20(s0)
	call	ipcCancel
	li	a1,1
	lw	a0,-20(s0)
	call	setThreadState
	lw	a2,-56(s0)
	li	a1,18
	lw	a0,-20(s0)
	call	setRegister
	lw	a0,-20(s0)
	call	attemptSwitchTo
	j	.L1365
.L1370:
	lw	a5,-20(s0)
	add	a5,a5,128
	mv	a0,a5
	call	thread_state_ptr_get_tsType
	mv	a4,a0
	li	a5,7
	bne	a4,a5,.L1372
	li	a1,1
	lw	a0,-20(s0)
	call	setThreadState
	lw	a2,-56(s0)
	li	a1,18
	lw	a0,-20(s0)
	call	setRegister
	mv	a2,zero
	li	a1,19
	lw	a0,-20(s0)
	call	setRegister
	lw	a0,-20(s0)
	call	Arch_leaveVMAsyncTransfer
	lw	a0,-20(s0)
	call	attemptSwitchTo
	j	.L1365
.L1372:
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	aep_set_active
	j	.L1365
.L1369:
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	aep_set_active
	j	.L1365
.L1366:
	lw	a0,-52(s0)
	call	aep_ptr_get_queue
	mv	a4,a0
	mv	a5,a1
	sw	a4,-36(s0)
	sw	a5,-32(s0)
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	bnez	a5,.L1377
	lui	a5,%hi(.LC179)
	add	a0,a5,%lo(.LC179)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L1375
.L1377:
	nop
.L1375:
	lw	a1,-36(s0)
	lw	a2,-32(s0)
	lw	a0,-24(s0)
	call	tcbEPDequeue
	mv	a4,a0
	mv	a5,a1
	sw	a4,-36(s0)
	sw	a5,-32(s0)
	lw	a1,-36(s0)
	lw	a2,-32(s0)
	lw	a0,-52(s0)
	call	aep_ptr_set_queue
	lw	a5,-36(s0)
	bnez	a5,.L1376
	mv	a1,zero
	lw	a0,-52(s0)
	call	async_endpoint_ptr_set_state
.L1376:
	li	a1,1
	lw	a0,-24(s0)
	call	setThreadState
	lw	a2,-56(s0)
	li	a1,18
	lw	a0,-24(s0)
	call	setRegister
	lw	a0,-24(s0)
	call	switchIfRequiredTo
	nop
	j	.L1365
.L1368:
	lw	a0,-52(s0)
	call	async_endpoint_ptr_get_aepMsgIdentifier
	sw	a0,-28(s0)
	lw	a4,-28(s0)
	lw	a5,-56(s0)
	or	a5,a4,a5
	sw	a5,-28(s0)
	lw	a1,-28(s0)
	lw	a0,-52(s0)
	call	async_endpoint_ptr_set_aepMsgIdentifier
	nop
.L1365:
.L1378:
	nop
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	sendAsyncIPC, .-sendAsyncIPC
	.align	2
	.globl	receiveAsyncIPC
	.type	receiveAsyncIPC, @function
receiveAsyncIPC:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-44(s0)
	sw	a2,-40(s0)
	sw	a3,-48(s0)
	lw	a0,-44(s0)
	lw	a1,-40(s0)
	call	cap_async_endpoint_cap_get_capAEPPtr
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a0,-20(s0)
	call	async_endpoint_ptr_get_state
	mv	a5,a0
	li	a4,1
	bleu	a5,a4,.L1381
	li	a4,2
	beq	a5,a4,.L1382
	j	.L1385
.L1381:
	lw	a5,-48(s0)
	beqz	a5,.L1383
	lw	a5,-36(s0)
	add	a5,a5,128
	li	a1,6
	mv	a0,a5
	call	thread_state_ptr_set_tsType
	lw	a5,-36(s0)
	add	a5,a5,128
	lw	a4,-20(s0)
	mv	a1,a4
	mv	a0,a5
	call	thread_state_ptr_set_blockingIPCEndpoint
	lw	a0,-36(s0)
	call	scheduleTCB
	lw	a0,-20(s0)
	call	aep_ptr_get_queue
	mv	a4,a0
	mv	a5,a1
	sw	a4,-28(s0)
	sw	a5,-24(s0)
	lw	a1,-28(s0)
	lw	a2,-24(s0)
	lw	a0,-36(s0)
	call	tcbEPAppend
	mv	a4,a0
	mv	a5,a1
	sw	a4,-28(s0)
	sw	a5,-24(s0)
	li	a1,1
	lw	a0,-20(s0)
	call	async_endpoint_ptr_set_state
	lw	a1,-28(s0)
	lw	a2,-24(s0)
	lw	a0,-20(s0)
	call	aep_ptr_set_queue
	j	.L1380
.L1383:
	lw	a0,-36(s0)
	call	doPollFailedTransfer
	nop
	j	.L1380
.L1382:
	lw	a0,-20(s0)
	call	async_endpoint_ptr_get_aepMsgIdentifier
	mv	a5,a0
	mv	a2,a5
	li	a1,18
	lw	a0,-36(s0)
	call	setRegister
	mv	a1,zero
	lw	a0,-20(s0)
	call	async_endpoint_ptr_set_state
	nop
.L1380:
.L1385:
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	receiveAsyncIPC, .-receiveAsyncIPC
	.align	2
	.globl	aepCancelAll
	.type	aepCancelAll, @function
aepCancelAll:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a0,-36(s0)
	call	async_endpoint_ptr_get_state
	mv	a4,a0
	li	a5,1
	bne	a4,a5,.L1390
	lw	a0,-36(s0)
	call	async_endpoint_ptr_get_aepQueue_head
	mv	a5,a0
	sw	a5,-20(s0)
	mv	a1,zero
	lw	a0,-36(s0)
	call	async_endpoint_ptr_set_state
	mv	a1,zero
	lw	a0,-36(s0)
	call	async_endpoint_ptr_set_aepQueue_head
	mv	a1,zero
	lw	a0,-36(s0)
	call	async_endpoint_ptr_set_aepQueue_tail
	j	.L1388
.L1389:
	li	a1,2
	lw	a0,-20(s0)
	call	setThreadState
	lw	a0,-20(s0)
	call	tcbSchedEnqueue
	lw	a5,-20(s0)
	lw	a5,188(a5)
	sw	a5,-20(s0)
.L1388:
	lw	a5,-20(s0)
	bnez	a5,.L1389
	call	rescheduleRequired
.L1390:
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	aepCancelAll, .-aepCancelAll
	.section	.rodata
	.align	2
.LC180:
	.string	"Assertion failed: async_endpoint_ptr_get_state(aepptr) == AEPState_Waiting\n"
	.text
	.align	2
	.globl	asyncIPCCancel
	.type	asyncIPCCancel, @function
asyncIPCCancel:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a0,-40(s0)
	call	async_endpoint_ptr_get_state
	mv	a4,a0
	li	a5,1
	beq	a4,a5,.L1395
	lui	a5,%hi(.LC180)
	add	a0,a5,%lo(.LC180)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L1393
.L1395:
	nop
.L1393:
	lw	a0,-40(s0)
	call	aep_ptr_get_queue
	mv	a4,a0
	mv	a5,a1
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	lw	a1,-24(s0)
	lw	a2,-20(s0)
	lw	a0,-36(s0)
	call	tcbEPDequeue
	mv	a4,a0
	mv	a5,a1
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	lw	a1,-24(s0)
	lw	a2,-20(s0)
	lw	a0,-40(s0)
	call	aep_ptr_set_queue
	lw	a5,-24(s0)
	bnez	a5,.L1394
	mv	a1,zero
	lw	a0,-40(s0)
	call	async_endpoint_ptr_set_state
.L1394:
	mv	a1,zero
	lw	a0,-36(s0)
	call	setThreadState
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	asyncIPCCancel, .-asyncIPCCancel
	.section	.rodata
	.align	2
.LC181:
	.string	"/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/asyncendpoint.c"
	.align	2
.LC182:
	.string	"tried to complete async ipc with inactive AEP"
	.text
	.align	2
	.globl	completeAsyncIPC
	.type	completeAsyncIPC, @function
completeAsyncIPC:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a5,-40(s0)
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L1397
	lw	a0,-36(s0)
	call	async_endpoint_ptr_get_state
	mv	a5,a0
	add	a5,a5,-2
	seqz	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L1397
	mv	a1,zero
	lw	a0,-36(s0)
	call	async_endpoint_ptr_set_state
	lw	a0,-36(s0)
	call	async_endpoint_ptr_get_aepMsgIdentifier
	sw	a0,-20(s0)
	lw	a2,-20(s0)
	li	a1,18
	lw	a0,-40(s0)
	call	setRegister
	j	.L1398
.L1397:
	lui	a5,%hi(__func__.5559)
	add	a3,a5,%lo(__func__.5559)
	li	a2,207
	lui	a5,%hi(.LC181)
	add	a1,a5,%lo(.LC181)
	lui	a5,%hi(.LC182)
	add	a0,a5,%lo(.LC182)
	call	_fail
.L1398:
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	completeAsyncIPC, .-completeAsyncIPC
	.align	2
	.globl	unbindAsyncEndpoint
	.type	unbindAsyncEndpoint, @function
unbindAsyncEndpoint:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	lw	a5,140(a5)
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	beqz	a5,.L1401
	mv	a1,zero
	lw	a0,-20(s0)
	call	async_endpoint_ptr_set_aepBoundTCB
	lw	a5,-36(s0)
	sw	zero,140(a5)
.L1401:
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	unbindAsyncEndpoint, .-unbindAsyncEndpoint
	.align	2
	.globl	bindAsyncEndpoint
	.type	bindAsyncEndpoint, @function
bindAsyncEndpoint:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-20(s0)
	mv	a1,a5
	lw	a0,-24(s0)
	call	async_endpoint_ptr_set_aepBoundTCB
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,140(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	bindAsyncEndpoint, .-bindAsyncEndpoint
	.section	.rodata
	.align	2
.LC183:
	.string	"Assertion failed: cap_get_capType(cap) == cap_cnode_cap\n"
	.align	2
.LC184:
	.string	"CNodeCap: Illegal Operation attempted."
	.align	2
.LC185:
	.string	"CNode operation: Truncated message."
	.align	2
.LC186:
	.string	"CNode operation: Target slot invalid."
	.align	2
.LC187:
	.string	"CNode Copy/Mint/Move/Mutate: Truncated message."
	.align	2
.LC188:
	.string	"CNode Copy/Mint/Move/Mutate: Destination not empty."
	.align	2
.LC189:
	.string	"CNode Copy/Mint/Move/Mutate: Invalid source slot."
	.align	2
.LC190:
	.string	"CNode Copy/Mint/Move/Mutate: Source slot invalid or empty."
	.align	2
.LC191:
	.string	"Truncated message for CNode Copy operation."
	.align	2
.LC192:
	.string	"Error deriving cap for CNode Copy operation."
	.align	2
.LC193:
	.string	"CNode Mint: Truncated message."
	.align	2
.LC194:
	.string	"Error deriving cap for CNode Mint operation."
	.align	2
.LC195:
	.string	"CNode Mutate: Truncated message."
	.align	2
.LC196:
	.string	"Assertion failed: 0\n"
	.align	2
.LC197:
	.string	"CNode Copy/Mint/Move/Mutate: Mutated cap would be invalid."
	.align	2
.LC198:
	.string	"CNode SaveCaller: Destination slot not empty."
	.align	2
.LC199:
	.string	"CNode Recycle: Target cap invalid."
	.align	2
.LC200:
	.string	"CNode Rotate: Pivot slot the same as source or dest slot."
	.align	2
.LC201:
	.string	"CNode Rotate: Source cap invalid."
	.align	2
.LC202:
	.string	"CNode Rotate: Pivot cap invalid."
	.text
	.align	2
	.globl	decodeCNodeInvocation
	.type	decodeCNodeInvocation, @function
decodeCNodeInvocation:
	add	sp,sp,-224
	sw	ra,220(sp)
	sw	s0,216(sp)
	sw	s1,212(sp)
	add	s0,sp,224
	sw	a0,-180(s0)
	sw	a1,-184(s0)
	sw	a2,-192(s0)
	sw	a3,-188(s0)
	mv	s1,a4
	sw	a5,-196(s0)
	lw	a0,-192(s0)
	lw	a1,-188(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,10
	beq	a4,a5,.L1452
	lui	a5,%hi(.LC183)
	add	a0,a5,%lo(.LC183)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L1405
.L1452:
	nop
.L1405:
	lw	a4,-180(s0)
	li	a5,13
	bleu	a4,a5,.L1406
	lw	a4,-180(s0)
	li	a5,22
	bleu	a4,a5,.L1407
.L1406:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,54
	lui	a5,%hi(__func__.5595)
	add	a1,a5,%lo(__func__.5595)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC184)
	add	a0,a5,%lo(.LC184)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
	j	.L1451
.L1407:
	lw	a4,-184(s0)
	li	a5,1
	bgtu	a4,a5,.L1409
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,60
	lui	a5,%hi(__func__.5595)
	add	a1,a5,%lo(__func__.5595)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC185)
	add	a0,a5,%lo(.LC185)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,7
	sw	a4,24(a5)
	li	a5,3
	j	.L1451
.L1409:
	lw	a1,-196(s0)
	mv	a0,zero
	call	getSyscallArg
	sw	a0,-24(s0)
	lw	a1,-196(s0)
	li	a0,1
	call	getSyscallArg
	sw	a0,-28(s0)
	lw	a3,-28(s0)
	lw	a2,-24(s0)
	lw	a0,-192(s0)
	lw	a1,-188(s0)
	call	lookupTargetSlot
	mv	a4,a0
	mv	a5,a1
	sw	a4,-100(s0)
	sw	a5,-96(s0)
	lw	a5,-100(s0)
	beqz	a5,.L1410
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,69
	lui	a5,%hi(__func__.5595)
	add	a1,a5,%lo(__func__.5595)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC186)
	add	a0,a5,%lo(.LC186)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lw	a5,-100(s0)
	j	.L1451
.L1410:
	lw	a5,-96(s0)
	sw	a5,-32(s0)
	lw	a4,-180(s0)
	li	a5,16
	bleu	a4,a5,.L1411
	lw	a4,-180(s0)
	li	a5,20
	bgtu	a4,a5,.L1411
	lw	a4,-184(s0)
	li	a5,3
	bleu	a4,a5,.L1412
	lw	a5,0(s1)
	bnez	a5,.L1413
.L1412:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,84
	lui	a5,%hi(__func__.5595)
	add	a1,a5,%lo(__func__.5595)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC187)
	add	a0,a5,%lo(.LC187)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,7
	sw	a4,24(a5)
	li	a5,3
	j	.L1451
.L1413:
	lw	a1,-196(s0)
	li	a0,2
	call	getSyscallArg
	sw	a0,-36(s0)
	lw	a1,-196(s0)
	li	a0,3
	call	getSyscallArg
	sw	a0,-40(s0)
	lw	a5,0(s1)
	lw	a4,0(a5)
	sw	a4,-112(s0)
	lw	a5,4(a5)
	sw	a5,-108(s0)
	lw	a0,-32(s0)
	call	ensureEmptySlot
	sw	a0,-44(s0)
	lw	a5,-44(s0)
	beqz	a5,.L1415
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,95
	lui	a5,%hi(__func__.5595)
	add	a1,a5,%lo(__func__.5595)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC188)
	add	a0,a5,%lo(.LC188)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lw	a5,-44(s0)
	j	.L1451
.L1415:
	lw	a3,-40(s0)
	lw	a2,-36(s0)
	lw	a0,-112(s0)
	lw	a1,-108(s0)
	call	lookupSourceSlot
	mv	a4,a0
	mv	a5,a1
	sw	a4,-100(s0)
	sw	a5,-96(s0)
	lw	a5,-100(s0)
	beqz	a5,.L1416
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,101
	lui	a5,%hi(__func__.5595)
	add	a1,a5,%lo(__func__.5595)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC189)
	add	a0,a5,%lo(.LC189)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lw	a5,-100(s0)
	j	.L1451
.L1416:
	lw	a5,-96(s0)
	sw	a5,-48(s0)
	lw	a5,-48(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	bnez	a5,.L1417
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,107
	lui	a5,%hi(__func__.5595)
	add	a1,a5,%lo(__func__.5595)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC190)
	add	a0,a5,%lo(.LC190)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,6
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,1
	sw	a4,20(a5)
	lw	a0,-40(s0)
	call	lookup_fault_missing_capability_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_lookup_fault)
	sw	a4,%lo(current_lookup_fault)(a3)
	add	a3,a3,%lo(current_lookup_fault)
	sw	a5,4(a3)
	li	a5,3
	j	.L1451
.L1417:
	lw	a5,-180(s0)
	li	a4,18
	beq	a5,a4,.L1419
	li	a4,18
	bgtu	a5,a4,.L1420
	li	a4,17
	beq	a5,a4,.L1421
	j	.L1418
.L1420:
	li	a4,19
	beq	a5,a4,.L1422
	li	a4,20
	beq	a5,a4,.L1423
	j	.L1418
.L1421:
	lw	a4,-184(s0)
	li	a5,4
	bgtu	a4,a5,.L1424
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,119
	lui	a5,%hi(__func__.5595)
	add	a1,a5,%lo(__func__.5595)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC191)
	add	a0,a5,%lo(.LC191)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,7
	sw	a4,24(a5)
	li	a5,3
	j	.L1451
.L1424:
	lw	a1,-196(s0)
	li	a0,4
	call	getSyscallArg
	mv	a5,a0
	mv	a0,a5
	call	rightsFromWord
	mv	a5,a0
	sw	a5,-104(s0)
	lw	a5,-48(s0)
	lw	a1,0(a5)
	lw	a2,4(a5)
	lw	a0,-104(s0)
	call	maskCapRights
	mv	a4,a0
	mv	a5,a1
	sw	a4,-140(s0)
	sw	a5,-136(s0)
	add	a5,s0,-132
	lw	a2,-140(s0)
	lw	a3,-136(s0)
	lw	a1,-48(s0)
	mv	a0,a5
	call	deriveCap
	lw	a5,-132(s0)
	beqz	a5,.L1425
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,128
	lui	a5,%hi(__func__.5595)
	add	a1,a5,%lo(__func__.5595)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC192)
	add	a0,a5,%lo(.LC192)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lw	a5,-132(s0)
	j	.L1451
.L1425:
	lw	a5,-128(s0)
	sw	a5,-120(s0)
	lw	a5,-124(s0)
	sw	a5,-116(s0)
	sw	zero,-20(s0)
	j	.L1426
.L1419:
	lw	a4,-184(s0)
	li	a5,5
	bgtu	a4,a5,.L1427
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,138
	lui	a5,%hi(__func__.5595)
	add	a1,a5,%lo(__func__.5595)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC193)
	add	a0,a5,%lo(.LC193)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,7
	sw	a4,24(a5)
	li	a5,3
	j	.L1451
.L1427:
	lw	a1,-196(s0)
	li	a0,4
	call	getSyscallArg
	mv	a5,a0
	mv	a0,a5
	call	rightsFromWord
	mv	a5,a0
	sw	a5,-104(s0)
	lw	a1,-196(s0)
	li	a0,5
	call	getSyscallArg
	sw	a0,-52(s0)
	lw	a5,-48(s0)
	lw	a1,0(a5)
	lw	a2,4(a5)
	lw	a0,-104(s0)
	call	maskCapRights
	mv	a4,a0
	mv	a5,a1
	sw	a4,-140(s0)
	sw	a5,-136(s0)
	lw	a2,-140(s0)
	lw	a3,-136(s0)
	lw	a1,-52(s0)
	mv	a0,zero
	call	updateCapData
	mv	a4,a0
	mv	a5,a1
	sw	a4,-92(s0)
	sw	a5,-88(s0)
	add	a5,s0,-224
	lw	a2,-92(s0)
	lw	a3,-88(s0)
	lw	a1,-48(s0)
	mv	a0,a5
	call	deriveCap
	lw	a5,-224(s0)
	sw	a5,-132(s0)
	lw	a5,-220(s0)
	sw	a5,-128(s0)
	lw	a5,-216(s0)
	sw	a5,-124(s0)
	lw	a5,-132(s0)
	beqz	a5,.L1428
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,149
	lui	a5,%hi(__func__.5595)
	add	a1,a5,%lo(__func__.5595)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC194)
	add	a0,a5,%lo(.LC194)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lw	a5,-132(s0)
	j	.L1451
.L1428:
	lw	a5,-128(s0)
	sw	a5,-120(s0)
	lw	a5,-124(s0)
	sw	a5,-116(s0)
	sw	zero,-20(s0)
	j	.L1426
.L1422:
	lw	a5,-48(s0)
	lw	a4,0(a5)
	sw	a4,-120(s0)
	lw	a5,4(a5)
	sw	a5,-116(s0)
	li	a5,1
	sw	a5,-20(s0)
	j	.L1426
.L1423:
	lw	a4,-184(s0)
	li	a5,4
	bgtu	a4,a5,.L1429
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,165
	lui	a5,%hi(__func__.5595)
	add	a1,a5,%lo(__func__.5595)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC195)
	add	a0,a5,%lo(.LC195)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,7
	sw	a4,24(a5)
	li	a5,3
	j	.L1451
.L1429:
	lw	a1,-196(s0)
	li	a0,4
	call	getSyscallArg
	sw	a0,-52(s0)
	lw	a5,-48(s0)
	lw	a2,0(a5)
	lw	a3,4(a5)
	lw	a1,-52(s0)
	li	a0,1
	call	updateCapData
	mv	a4,a0
	mv	a5,a1
	sw	a4,-120(s0)
	sw	a5,-116(s0)
	li	a5,1
	sw	a5,-20(s0)
	j	.L1426
.L1418:
	lui	a5,%hi(.LC196)
	add	a0,a5,%lo(.LC196)
	call	cputstring
	li	a0,3
	call	terminate
	mv	a5,zero
	j	.L1451
.L1426:
	lw	a0,-120(s0)
	lw	a1,-116(s0)
	call	cap_get_capType
	mv	a5,a0
	bnez	a5,.L1430
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,182
	lui	a5,%hi(__func__.5595)
	add	a1,a5,%lo(__func__.5595)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC197)
	add	a0,a5,%lo(.LC197)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
	j	.L1451
.L1430:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a5,-20(s0)
	beqz	a5,.L1431
	lw	a3,-32(s0)
	lw	a2,-48(s0)
	lw	a0,-120(s0)
	lw	a1,-116(s0)
	call	invokeCNodeMove
	mv	a5,a0
	j	.L1451
.L1431:
	lw	a3,-32(s0)
	lw	a2,-48(s0)
	lw	a0,-120(s0)
	lw	a1,-116(s0)
	call	invokeCNodeInsert
	mv	a5,a0
	j	.L1451
.L1411:
	lw	a4,-180(s0)
	li	a5,14
	bne	a4,a5,.L1432
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a0,-32(s0)
	call	invokeCNodeRevoke
	mv	a5,a0
	j	.L1451
.L1432:
	lw	a4,-180(s0)
	li	a5,15
	bne	a4,a5,.L1433
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a0,-32(s0)
	call	invokeCNodeDelete
	mv	a5,a0
	j	.L1451
.L1433:
	lw	a4,-180(s0)
	li	a5,22
	bne	a4,a5,.L1434
	lw	a0,-32(s0)
	call	ensureEmptySlot
	sw	a0,-44(s0)
	lw	a5,-44(s0)
	beqz	a5,.L1435
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,208
	lui	a5,%hi(__func__.5595)
	add	a1,a5,%lo(__func__.5595)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC198)
	add	a0,a5,%lo(.LC198)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lw	a5,-44(s0)
	j	.L1451
.L1435:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a0,-32(s0)
	call	invokeCNodeSaveCaller
	mv	a5,a0
	j	.L1451
.L1434:
	lw	a4,-180(s0)
	li	a5,16
	bne	a4,a5,.L1436
	lw	a5,-32(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	hasRecycleRights
	mv	a5,a0
	bnez	a5,.L1437
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,218
	lui	a5,%hi(__func__.5595)
	add	a1,a5,%lo(__func__.5595)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC199)
	add	a0,a5,%lo(.LC199)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
	j	.L1451
.L1437:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a0,-32(s0)
	call	invokeCNodeRecycle
	mv	a5,a0
	j	.L1451
.L1436:
	lw	a4,-180(s0)
	li	a5,21
	bne	a4,a5,.L1438
	lw	a4,-184(s0)
	li	a5,7
	bleu	a4,a5,.L1439
	lw	a5,0(s1)
	beqz	a5,.L1439
	lw	a5,4(s1)
	bnez	a5,.L1440
.L1439:
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,7
	sw	a4,24(a5)
	li	a5,3
	j	.L1451
.L1440:
	lw	a1,-196(s0)
	li	a0,2
	call	getSyscallArg
	sw	a0,-56(s0)
	lw	a1,-196(s0)
	li	a0,3
	call	getSyscallArg
	sw	a0,-60(s0)
	lw	a1,-196(s0)
	li	a0,4
	call	getSyscallArg
	sw	a0,-64(s0)
	lw	a1,-196(s0)
	li	a0,5
	call	getSyscallArg
	sw	a0,-68(s0)
	lw	a1,-196(s0)
	li	a0,6
	call	getSyscallArg
	sw	a0,-72(s0)
	lw	a1,-196(s0)
	li	a0,7
	call	getSyscallArg
	sw	a0,-76(s0)
	lw	a5,0(s1)
	lw	a4,0(a5)
	sw	a4,-148(s0)
	lw	a5,4(a5)
	sw	a5,-144(s0)
	lw	a5,4(s1)
	lw	a4,0(a5)
	sw	a4,-156(s0)
	lw	a5,4(a5)
	sw	a5,-152(s0)
	lw	a3,-76(s0)
	lw	a2,-72(s0)
	lw	a0,-156(s0)
	lw	a1,-152(s0)
	call	lookupSourceSlot
	mv	a4,a0
	mv	a5,a1
	sw	a4,-100(s0)
	sw	a5,-96(s0)
	lw	a5,-100(s0)
	beqz	a5,.L1442
	lw	a5,-100(s0)
	j	.L1451
.L1442:
	lw	a5,-96(s0)
	sw	a5,-80(s0)
	lw	a3,-64(s0)
	lw	a2,-60(s0)
	lw	a0,-148(s0)
	lw	a1,-144(s0)
	call	lookupPivotSlot
	mv	a4,a0
	mv	a5,a1
	sw	a4,-100(s0)
	sw	a5,-96(s0)
	lw	a5,-100(s0)
	beqz	a5,.L1443
	lw	a5,-100(s0)
	j	.L1451
.L1443:
	lw	a5,-96(s0)
	sw	a5,-84(s0)
	lw	a4,-84(s0)
	lw	a5,-80(s0)
	beq	a4,a5,.L1444
	lw	a4,-84(s0)
	lw	a5,-32(s0)
	bne	a4,a5,.L1445
.L1444:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,260
	lui	a5,%hi(__func__.5595)
	add	a1,a5,%lo(__func__.5595)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC200)
	add	a0,a5,%lo(.LC200)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
	j	.L1451
.L1445:
	lw	a4,-80(s0)
	lw	a5,-32(s0)
	beq	a4,a5,.L1446
	lw	a0,-32(s0)
	call	ensureEmptySlot
	sw	a0,-44(s0)
	lw	a5,-44(s0)
	beqz	a5,.L1446
	lw	a5,-44(s0)
	j	.L1451
.L1446:
	lw	a5,-80(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	bnez	a5,.L1447
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,6
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,1
	sw	a4,20(a5)
	lw	a0,-76(s0)
	call	lookup_fault_missing_capability_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_lookup_fault)
	sw	a4,%lo(current_lookup_fault)(a3)
	add	a3,a3,%lo(current_lookup_fault)
	sw	a5,4(a3)
	li	a5,3
	j	.L1451
.L1447:
	lw	a5,-84(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	bnez	a5,.L1448
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,6
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	sw	zero,20(a5)
	lw	a0,-64(s0)
	call	lookup_fault_missing_capability_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_lookup_fault)
	sw	a4,%lo(current_lookup_fault)(a3)
	add	a3,a3,%lo(current_lookup_fault)
	sw	a5,4(a3)
	li	a5,3
	j	.L1451
.L1448:
	lw	a5,-80(s0)
	lw	a2,0(a5)
	lw	a3,4(a5)
	lw	a1,-68(s0)
	li	a0,1
	call	updateCapData
	mv	a4,a0
	mv	a5,a1
	sw	a4,-164(s0)
	sw	a5,-160(s0)
	lw	a5,-84(s0)
	lw	a2,0(a5)
	lw	a3,4(a5)
	lw	a1,-56(s0)
	li	a0,1
	call	updateCapData
	mv	a4,a0
	mv	a5,a1
	sw	a4,-172(s0)
	sw	a5,-168(s0)
	lw	a0,-164(s0)
	lw	a1,-160(s0)
	call	cap_get_capType
	mv	a5,a0
	bnez	a5,.L1449
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,290
	lui	a5,%hi(__func__.5595)
	add	a1,a5,%lo(__func__.5595)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC201)
	add	a0,a5,%lo(.LC201)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
	j	.L1451
.L1449:
	lw	a0,-172(s0)
	lw	a1,-168(s0)
	call	cap_get_capType
	mv	a5,a0
	bnez	a5,.L1450
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,296
	lui	a5,%hi(__func__.5595)
	add	a1,a5,%lo(__func__.5595)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC202)
	add	a0,a5,%lo(.LC202)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
	j	.L1451
.L1450:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a6,-32(s0)
	lw	a5,-84(s0)
	lw	a4,-80(s0)
	lw	a2,-172(s0)
	lw	a3,-168(s0)
	lw	a0,-164(s0)
	lw	a1,-160(s0)
	call	invokeCNodeRotate
	mv	a5,a0
	j	.L1451
.L1438:
	mv	a5,zero
.L1451:
	mv	a0,a5
	lw	ra,220(sp)
	lw	s0,216(sp)
	lw	s1,212(sp)
	add	sp,sp,224
	jr	ra
	.size	decodeCNodeInvocation, .-decodeCNodeInvocation
	.align	2
	.globl	invokeCNodeRevoke
	.type	invokeCNodeRevoke, @function
invokeCNodeRevoke:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a0,-20(s0)
	call	cteRevoke
	mv	a5,a0
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	invokeCNodeRevoke, .-invokeCNodeRevoke
	.align	2
	.globl	invokeCNodeDelete
	.type	invokeCNodeDelete, @function
invokeCNodeDelete:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	li	a1,1
	lw	a0,-20(s0)
	call	cteDelete
	mv	a5,a0
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	invokeCNodeDelete, .-invokeCNodeDelete
	.align	2
	.globl	invokeCNodeRecycle
	.type	invokeCNodeRecycle, @function
invokeCNodeRecycle:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a0,-20(s0)
	call	cteRecycle
	mv	a5,a0
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	invokeCNodeRecycle, .-invokeCNodeRecycle
	.align	2
	.globl	invokeCNodeInsert
	.type	invokeCNodeInsert, @function
invokeCNodeInsert:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cteInsert
	mv	a5,zero
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	invokeCNodeInsert, .-invokeCNodeInsert
	.align	2
	.globl	invokeCNodeMove
	.type	invokeCNodeMove, @function
invokeCNodeMove:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cteMove
	mv	a5,zero
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	invokeCNodeMove, .-invokeCNodeMove
	.align	2
	.globl	invokeCNodeRotate
	.type	invokeCNodeRotate, @function
invokeCNodeRotate:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	sw	a2,-32(s0)
	sw	a3,-28(s0)
	sw	a4,-36(s0)
	sw	a5,-40(s0)
	sw	a6,-44(s0)
	lw	a4,-36(s0)
	lw	a5,-44(s0)
	bne	a4,a5,.L1464
	lw	a5,-40(s0)
	lw	a3,-32(s0)
	lw	a4,-28(s0)
	lw	a2,-36(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cdtSwap
	j	.L1465
.L1464:
	lw	a3,-44(s0)
	lw	a2,-40(s0)
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	cteMove
	lw	a3,-40(s0)
	lw	a2,-36(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cteMove
.L1465:
	mv	a5,zero
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	invokeCNodeRotate, .-invokeCNodeRotate
	.section	.rodata
	.align	2
.LC203:
	.string	"CNode SaveCaller: Reply cap not present."
	.align	2
.LC204:
	.string	"/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/cnode.c"
	.align	2
.LC205:
	.string	"caller capability must be null or reply"
	.text
	.align	2
	.globl	invokeCNodeSaveCaller
	.type	invokeCNodeSaveCaller, @function
invokeCNodeSaveCaller:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	add	s0,sp,64
	sw	a0,-52(s0)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	and	a5,a5,-512
	add	a5,a5,48
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	lw	a4,0(a5)
	sw	a4,-36(s0)
	lw	a5,4(a5)
	sw	a5,-32(s0)
	lw	a0,-36(s0)
	lw	a1,-32(s0)
	call	cap_get_capType
	mv	a5,a0
	beqz	a5,.L1469
	li	a4,8
	beq	a5,a4,.L1470
	j	.L1473
.L1469:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,368
	lui	a5,%hi(__func__.5657)
	add	a1,a5,%lo(__func__.5657)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC203)
	add	a0,a5,%lo(.LC203)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	j	.L1471
.L1470:
	lw	a0,-36(s0)
	lw	a1,-32(s0)
	call	cap_reply_cap_get_capTCBPtr
	mv	a5,a0
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	and	a5,a5,-512
	add	a5,a5,32
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	li	a1,1
	mv	a0,a5
	call	cap_reply_cap_ptr_set_capInCDT
	lw	a5,-28(s0)
	lw	a4,-24(s0)
	mv	a1,a4
	mv	a0,a5
	call	cap_reply_cap_ptr_set_capTCBPtr
	lw	a1,-28(s0)
	mv	a0,zero
	call	cdtInsert
	add	a5,s0,-36
	li	a1,1
	mv	a0,a5
	call	cap_reply_cap_ptr_set_capInCDT
	lw	a5,-52(s0)
	lw	a4,-36(s0)
	sw	a4,0(a5)
	lw	a4,-32(s0)
	sw	a4,4(a5)
	lw	s1,-20(s0)
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,0(s1)
	sw	a5,4(s1)
	lw	a1,-52(s0)
	lw	a0,-28(s0)
	call	cdtInsert
	j	.L1471
.L1473:
	lui	a5,%hi(__func__.5657)
	add	a3,a5,%lo(__func__.5657)
	li	a2,390
	lui	a5,%hi(.LC204)
	add	a1,a5,%lo(.LC204)
	lui	a5,%hi(.LC205)
	add	a0,a5,%lo(.LC205)
	call	_fail
.L1471:
	mv	a5,zero
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s1,52(sp)
	add	sp,sp,64
	jr	ra
	.size	invokeCNodeSaveCaller, .-invokeCNodeSaveCaller
	.section	.rodata
	.align	2
.LC206:
	.string	"Assertion failed: cap_get_capType(destSlot->cap) == cap_null_cap\n"
	.text
	.align	2
	.globl	cteInsert
	.type	cteInsert, @function
cteInsert:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	lw	a5,-32(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	beqz	a5,.L1477
	lui	a5,%hi(.LC206)
	add	a0,a5,%lo(.LC206)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L1476
.L1477:
	nop
.L1476:
	lw	a5,-32(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	lw	a4,-20(s0)
	sw	a4,4(a5)
	lw	a1,-32(s0)
	lw	a0,-28(s0)
	call	cdtInsert
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	cteInsert, .-cteInsert
	.align	2
	.globl	cteMove
	.type	cteMove, @function
cteMove:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	lw	a5,-32(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	beqz	a5,.L1481
	lui	a5,%hi(.LC206)
	add	a0,a5,%lo(.LC206)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L1480
.L1481:
	nop
.L1480:
	lw	a5,-32(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	lw	a4,-20(s0)
	sw	a4,4(a5)
	lw	a1,-32(s0)
	lw	a0,-28(s0)
	call	cdtMove
	lw	s1,-28(s0)
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,0(s1)
	sw	a5,4(s1)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	lw	s1,20(sp)
	add	sp,sp,32
	jr	ra
	.size	cteMove, .-cteMove
	.align	2
	.globl	capSwapForDelete
	.type	capSwapForDelete, @function
capSwapForDelete:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	beq	a4,a5,.L1485
	lw	a5,-36(s0)
	lw	a4,0(a5)
	sw	a4,-24(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	lw	a5,-40(s0)
	lw	a4,0(a5)
	sw	a4,-32(s0)
	lw	a5,4(a5)
	sw	a5,-28(s0)
	lw	a5,-40(s0)
	lw	a3,-32(s0)
	lw	a4,-28(s0)
	lw	a2,-36(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cdtSwap
	j	.L1482
.L1485:
	nop
.L1482:
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	capSwapForDelete, .-capSwapForDelete
	.align	2
	.globl	cteRevoke
	.type	cteRevoke, @function
cteRevoke:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	bnez	a5,.L1487
	mv	a5,zero
	j	.L1488
.L1487:
	lw	a0,-36(s0)
	call	cdtFindChild
	sw	a0,-20(s0)
	j	.L1489
.L1492:
	li	a1,1
	lw	a0,-20(s0)
	call	cteDelete
	sw	a0,-24(s0)
	lw	a5,-24(s0)
	beqz	a5,.L1490
	lw	a5,-24(s0)
	j	.L1488
.L1490:
	call	preemptionPoint
	sw	a0,-24(s0)
	lw	a5,-24(s0)
	beqz	a5,.L1491
	lw	a5,-24(s0)
	j	.L1488
.L1491:
	lw	a0,-36(s0)
	call	cdtFindChild
	sw	a0,-20(s0)
.L1489:
	lw	a5,-20(s0)
	bnez	a5,.L1492
	mv	a5,zero
.L1488:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cteRevoke, .-cteRevoke
	.align	2
	.globl	cteDelete
	.type	cteDelete, @function
cteDelete:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	add	a5,s0,-28
	lw	a2,-40(s0)
	lw	a1,-36(s0)
	mv	a0,a5
	call	finaliseSlot
	lw	a5,-28(s0)
	beqz	a5,.L1494
	lw	a5,-28(s0)
	j	.L1498
.L1494:
	lw	a5,-40(s0)
	bnez	a5,.L1496
	lw	a5,-24(s0)
	beqz	a5,.L1497
.L1496:
	lw	a5,-20(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	emptySlot
.L1497:
	mv	a5,zero
.L1498:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cteDelete, .-cteDelete
	.align	2
	.type	emptySlot, @function
emptySlot:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-20(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	beqz	a5,.L1501
	lw	a0,-20(s0)
	call	cdtRemove
	lw	s1,-20(s0)
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,0(s1)
	sw	a5,4(s1)
	lw	a4,-24(s0)
	li	a5,255
	beq	a4,a5,.L1501
	lw	a0,-24(s0)
	call	deletedIRQHandler
.L1501:
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	lw	s1,20(sp)
	add	sp,sp,32
	jr	ra
	.size	emptySlot, .-emptySlot
	.section	.rodata
	.align	2
.LC207:
	.string	"finaliseCap should only return Zombie or NullCap"
	.text
	.align	2
	.type	capRemovable, @function
capRemovable:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_capType
	mv	a5,a0
	beqz	a5,.L1504
	li	a4,46
	beq	a5,a4,.L1505
	j	.L1510
.L1504:
	li	a5,1
	j	.L1506
.L1505:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_zombie_cap_get_capZombieNumber
	sw	a0,-20(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_zombie_cap_get_capZombiePtr
	mv	a5,a0
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	beqz	a5,.L1507
	lw	a4,-20(s0)
	li	a5,1
	bne	a4,a5,.L1508
	lw	a4,-44(s0)
	lw	a5,-24(s0)
	bne	a4,a5,.L1508
.L1507:
	li	a5,1
	j	.L1509
.L1508:
	mv	a5,zero
.L1509:
	j	.L1506
.L1510:
	lui	a5,%hi(__func__.5707)
	add	a3,a5,%lo(__func__.5707)
	li	a2,498
	lui	a5,%hi(.LC204)
	add	a1,a5,%lo(.LC204)
	lui	a5,%hi(.LC207)
	add	a0,a5,%lo(.LC207)
	call	_fail
.L1506:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	capRemovable, .-capRemovable
	.align	2
	.type	capCyclicZombie, @function
capCyclicZombie:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	sw	a2,-28(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,46
	bne	a4,a5,.L1512
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_zombie_cap_get_capZombiePtr
	mv	a5,a0
	mv	a4,a5
	lw	a5,-28(s0)
	bne	a4,a5,.L1512
	li	a5,1
	j	.L1513
.L1512:
	mv	a5,zero
.L1513:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	capCyclicZombie, .-capCyclicZombie
	.align	2
	.type	finaliseSlot, @function
finaliseSlot:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	j	.L1516
.L1525:
	lw	a5,-56(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a4,a0
	li	a5,46
	beq	a4,a5,.L1517
	lw	a0,-56(s0)
	call	cdtIsFinal
	mv	a5,a0
	beqz	a5,.L1518
.L1517:
	li	a5,1
	j	.L1519
.L1518:
	mv	a5,zero
.L1519:
	sw	a5,-20(s0)
	add	a0,s0,-36
	lw	a5,-56(s0)
	mv	a4,zero
	lw	a3,-20(s0)
	lw	a1,0(a5)
	lw	a2,4(a5)
	call	finaliseCap
	lw	a2,-56(s0)
	lw	a0,-36(s0)
	lw	a1,-32(s0)
	call	capRemovable
	mv	a5,a0
	beqz	a5,.L1520
	sw	zero,-48(s0)
	li	a5,1
	sw	a5,-44(s0)
	lw	a5,-28(s0)
	sw	a5,-40(s0)
	lw	a5,-52(s0)
	lw	a4,-48(s0)
	sw	a4,0(a5)
	lw	a4,-44(s0)
	sw	a4,4(a5)
	lw	a4,-40(s0)
	sw	a4,8(a5)
	j	.L1515
.L1520:
	lw	a5,-56(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a4,a0
	li	a5,46
	beq	a4,a5,.L1522
	lw	a1,-36(s0)
	lw	a2,-32(s0)
	lw	a0,-56(s0)
	call	cdtUpdate
.L1522:
	lw	a5,-60(s0)
	bnez	a5,.L1523
	lw	a2,-56(s0)
	lw	a0,-36(s0)
	lw	a1,-32(s0)
	call	capCyclicZombie
	mv	a5,a0
	beqz	a5,.L1523
	sw	zero,-48(s0)
	sw	zero,-44(s0)
	lw	a5,-28(s0)
	sw	a5,-40(s0)
	lw	a5,-52(s0)
	lw	a4,-48(s0)
	sw	a4,0(a5)
	lw	a4,-44(s0)
	sw	a4,4(a5)
	lw	a4,-40(s0)
	sw	a4,8(a5)
	j	.L1515
.L1523:
	lw	a1,-60(s0)
	lw	a0,-56(s0)
	call	reduceZombie
	sw	a0,-24(s0)
	lw	a5,-24(s0)
	beqz	a5,.L1524
	lw	a5,-24(s0)
	sw	a5,-48(s0)
	sw	zero,-44(s0)
	li	a5,255
	sw	a5,-40(s0)
	lw	a5,-52(s0)
	lw	a4,-48(s0)
	sw	a4,0(a5)
	lw	a4,-44(s0)
	sw	a4,4(a5)
	lw	a4,-40(s0)
	sw	a4,8(a5)
	j	.L1515
.L1524:
	call	preemptionPoint
	sw	a0,-24(s0)
	lw	a5,-24(s0)
	beqz	a5,.L1516
	lw	a5,-24(s0)
	sw	a5,-48(s0)
	sw	zero,-44(s0)
	li	a5,255
	sw	a5,-40(s0)
	lw	a5,-52(s0)
	lw	a4,-48(s0)
	sw	a4,0(a5)
	lw	a4,-44(s0)
	sw	a4,4(a5)
	lw	a4,-40(s0)
	sw	a4,8(a5)
	j	.L1515
.L1516:
	lw	a5,-56(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	bnez	a5,.L1525
	sw	zero,-48(s0)
	li	a5,1
	sw	a5,-44(s0)
	li	a5,255
	sw	a5,-40(s0)
	lw	a5,-52(s0)
	lw	a4,-48(s0)
	sw	a4,0(a5)
	lw	a4,-44(s0)
	sw	a4,4(a5)
	lw	a4,-40(s0)
	sw	a4,8(a5)
.L1515:
	lw	a0,-52(s0)
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	finaliseSlot, .-finaliseSlot
	.section	.rodata
	.align	2
.LC208:
	.string	"Assertion failed: cap_get_capType(slot->cap) == cap_zombie_cap\n"
	.align	2
.LC209:
	.string	"Assertion failed: n > 0\n"
	.align	2
.LC210:
	.string	"Assertion failed: cap_get_capType(endSlot->cap) == cap_null_cap\n"
	.align	2
.LC211:
	.string	"Assertion failed: ptr2 == slot && ptr != slot\n"
	.align	2
.LC212:
	.string	"Expected recursion to result in Zombie."
	.align	2
.LC213:
	.string	"Assertion failed: ptr != slot\n"
	.align	2
.LC214:
	.string	"Assertion failed: ptr != ((cte_t *)(cap_zombie_cap_get_capZombiePtr(ptr->cap)))\n"
	.text
	.align	2
	.type	reduceZombie, @function
reduceZombie:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	add	s0,sp,64
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	lw	a5,-52(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a4,a0
	li	a5,46
	beq	a4,a5,.L1550
	lui	a5,%hi(.LC208)
	add	a0,a5,%lo(.LC208)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L1529
.L1550:
	nop
.L1529:
	lw	a5,-52(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_zombie_cap_get_capZombiePtr
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-52(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_zombie_cap_get_capZombieNumber
	sw	a0,-24(s0)
	lw	a5,-52(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_zombie_cap_get_capZombieType
	sw	a0,-28(s0)
	lw	a5,-24(s0)
	bnez	a5,.L1551
	lui	a5,%hi(.LC209)
	add	a0,a5,%lo(.LC209)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L1531
.L1551:
	nop
.L1531:
	lw	a5,-56(s0)
	beqz	a5,.L1532
	lw	a4,-24(s0)
	li	a5,268435456
	add	a5,a5,-1
	add	a5,a4,a5
	sll	a5,a5,4
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
	mv	a1,zero
	lw	a0,-32(s0)
	call	cteDelete
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	beqz	a5,.L1533
	lw	a5,-36(s0)
	j	.L1534
.L1533:
	lw	a5,-52(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	beqz	a5,.L1552
	li	a4,46
	bne	a5,a4,.L1549
	lw	a5,-52(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_zombie_cap_get_capZombiePtr
	mv	a5,a0
	sw	a5,-40(s0)
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	bne	a4,a5,.L1539
	lw	a5,-52(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_zombie_cap_get_capZombieNumber
	mv	a4,a0
	lw	a5,-24(s0)
	bne	a4,a5,.L1539
	lw	a5,-52(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_zombie_cap_get_capZombieType
	mv	a4,a0
	lw	a5,-28(s0)
	bne	a4,a5,.L1539
	lw	a5,-32(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	beqz	a5,.L1553
	lui	a5,%hi(.LC210)
	add	a0,a5,%lo(.LC210)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L1541
.L1553:
	nop
.L1541:
	lw	a5,-24(s0)
	add	a4,a5,-1
	lw	s1,-52(s0)
	lw	a5,-52(s0)
	mv	a2,a4
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_zombie_cap_set_capZombieNumber
	mv	a4,a0
	mv	a5,a1
	sw	a4,0(s1)
	sw	a5,4(s1)
	j	.L1542
.L1539:
	lw	a4,-40(s0)
	lw	a5,-52(s0)
	bne	a4,a5,.L1543
	lw	a4,-20(s0)
	lw	a5,-52(s0)
	bne	a4,a5,.L1554
.L1543:
	lui	a5,%hi(.LC211)
	add	a0,a5,%lo(.LC211)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L1544
.L1554:
	nop
.L1542:
	j	.L1544
.L1549:
	lui	a5,%hi(__func__.5741)
	add	a3,a5,%lo(__func__.5741)
	li	a2,616
	lui	a5,%hi(.LC204)
	add	a1,a5,%lo(.LC204)
	lui	a5,%hi(.LC212)
	add	a0,a5,%lo(.LC212)
	call	_fail
.L1532:
	lw	a4,-20(s0)
	lw	a5,-52(s0)
	bne	a4,a5,.L1555
	lui	a5,%hi(.LC213)
	add	a0,a5,%lo(.LC213)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L1546
.L1555:
	nop
.L1546:
	lw	a5,-20(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a4,a0
	li	a5,46
	bne	a4,a5,.L1547
	lw	a5,-20(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_zombie_cap_get_capZombiePtr
	mv	a5,a0
	mv	a4,a5
	lw	a5,-20(s0)
	bne	a4,a5,.L1556
	lui	a5,%hi(.LC214)
	add	a0,a5,%lo(.LC214)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L1547
.L1556:
	nop
.L1547:
	lw	a1,-52(s0)
	lw	a0,-20(s0)
	call	capSwapForDelete
	j	.L1544
.L1552:
	nop
.L1544:
	mv	a5,zero
.L1534:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s1,52(sp)
	add	sp,sp,64
	jr	ra
	.size	reduceZombie, .-reduceZombie
	.section	.rodata
	.align	2
.LC215:
	.string	"Assertion failed: capRemovable(fc_ret.remainder, slot) && fc_ret.irq == irqInvalid\n"
	.text
	.align	2
	.globl	cteDeleteOne
	.type	cteDeleteOne, @function
cteDeleteOne:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	beqz	a5,.L1561
	lw	a0,-36(s0)
	call	cdtIsFinal
	sw	a0,-20(s0)
	add	a0,s0,-32
	lw	a5,-36(s0)
	li	a4,1
	lw	a3,-20(s0)
	lw	a1,0(a5)
	lw	a2,4(a5)
	call	finaliseCap
	lw	a2,-36(s0)
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	capRemovable
	mv	a5,a0
	beqz	a5,.L1559
	lw	a4,-24(s0)
	li	a5,255
	beq	a4,a5,.L1562
.L1559:
	lui	a5,%hi(.LC215)
	add	a0,a5,%lo(.LC215)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L1560
.L1562:
	nop
.L1560:
	li	a1,255
	lw	a0,-36(s0)
	call	emptySlot
.L1561:
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	cteDeleteOne, .-cteDeleteOne
	.align	2
	.globl	cteRecycle
	.type	cteRecycle, @function
cteRecycle:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-52(s0)
	lw	a0,-52(s0)
	call	cteRevoke
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	beqz	a5,.L1564
	lw	a5,-20(s0)
	j	.L1568
.L1564:
	add	a5,s0,-36
	li	a2,1
	lw	a1,-52(s0)
	mv	a0,a5
	call	finaliseSlot
	lw	a5,-36(s0)
	beqz	a5,.L1566
	lw	a5,-36(s0)
	j	.L1568
.L1566:
	lw	a5,-52(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	beqz	a5,.L1567
	lw	a0,-52(s0)
	call	cdtIsFinal
	sw	a0,-24(s0)
	lw	a5,-52(s0)
	lw	a1,0(a5)
	lw	a2,4(a5)
	lw	a0,-24(s0)
	call	recycleCap
	mv	a4,a0
	mv	a5,a1
	sw	a4,-44(s0)
	sw	a5,-40(s0)
	lw	a1,-44(s0)
	lw	a2,-40(s0)
	lw	a0,-52(s0)
	call	cdtUpdate
.L1567:
	mv	a5,zero
.L1568:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	cteRecycle, .-cteRecycle
	.align	2
	.globl	insertNewCap
	.type	insertNewCap, @function
insertNewCap:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-32(s0)
	sw	a3,-28(s0)
	lw	a5,-24(s0)
	lw	a4,-32(s0)
	sw	a4,0(a5)
	lw	a4,-28(s0)
	sw	a4,4(a5)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	cdtInsert
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	insertNewCap, .-insertNewCap
	.align	2
	.globl	setupReplyMaster
	.type	setupReplyMaster, @function
setupReplyMaster:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	and	a5,a5,-512
	add	a5,a5,32
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	bnez	a5,.L1572
	lw	s1,-20(s0)
	mv	a2,zero
	li	a1,1
	mv	a0,zero
	call	cap_reply_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,0(s1)
	sw	a5,4(s1)
.L1572:
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	add	sp,sp,48
	jr	ra
	.size	setupReplyMaster, .-setupReplyMaster
	.align	2
	.globl	ensureEmptySlot
	.type	ensureEmptySlot, @function
ensureEmptySlot:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	beqz	a5,.L1574
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,8
	sw	a4,24(a5)
	li	a5,3
	j	.L1575
.L1574:
	mv	a5,zero
.L1575:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	ensureEmptySlot, .-ensureEmptySlot
	.align	2
	.globl	slotCapLongRunningDelete
	.type	slotCapLongRunningDelete, @function
slotCapLongRunningDelete:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	bnez	a5,.L1577
	mv	a5,zero
	j	.L1578
.L1577:
	lw	a0,-20(s0)
	call	cdtIsFinal
	mv	a5,a0
	bnez	a5,.L1579
	mv	a5,zero
	j	.L1578
.L1579:
	lw	a5,-20(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	li	a4,12
	beq	a5,a4,.L1581
	li	a4,46
	beq	a5,a4,.L1581
	li	a4,10
	bne	a5,a4,.L1582
.L1581:
	li	a5,1
	j	.L1578
.L1582:
	mv	a5,zero
.L1578:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	slotCapLongRunningDelete, .-slotCapLongRunningDelete
	.align	2
	.globl	getReceiveSlots
	.type	getReceiveSlots, @function
getReceiveSlots:
	add	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	add	s0,sp,80
	sw	a0,-68(s0)
	sw	a1,-72(s0)
	lw	a5,-72(s0)
	bnez	a5,.L1584
	mv	a5,zero
	j	.L1589
.L1584:
	add	a5,s0,-36
	lw	a1,-72(s0)
	mv	a0,a5
	call	loadCapTransfer
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	add	a5,s0,-48
	lw	a2,-20(s0)
	lw	a1,-68(s0)
	mv	a0,a5
	call	lookupCap
	lw	a5,-48(s0)
	beqz	a5,.L1586
	mv	a5,zero
	j	.L1589
.L1586:
	lw	a5,-44(s0)
	sw	a5,-64(s0)
	lw	a5,-40(s0)
	sw	a5,-60(s0)
	lw	a5,-32(s0)
	lw	a4,-28(s0)
	mv	a3,a4
	mv	a2,a5
	lw	a0,-64(s0)
	lw	a1,-60(s0)
	call	lookupTargetSlot
	mv	a4,a0
	mv	a5,a1
	sw	a4,-56(s0)
	sw	a5,-52(s0)
	lw	a5,-56(s0)
	beqz	a5,.L1587
	mv	a5,zero
	j	.L1589
.L1587:
	lw	a5,-52(s0)
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a5,a0
	beqz	a5,.L1588
	mv	a5,zero
	j	.L1589
.L1588:
	lw	a5,-24(s0)
.L1589:
	mv	a0,a5
	lw	ra,76(sp)
	lw	s0,72(sp)
	add	sp,sp,80
	jr	ra
	.size	getReceiveSlots, .-getReceiveSlots
	.align	2
	.globl	loadCapTransfer
	.type	loadCapTransfer, @function
loadCapTransfer:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	li	a5,125
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	sll	a5,a5,2
	lw	a4,-40(s0)
	add	a4,a4,a5
	lw	a5,-36(s0)
	mv	a1,a4
	mv	a0,a5
	call	capTransferFromWords
	lw	a0,-36(s0)
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	loadCapTransfer, .-loadCapTransfer
	.align	2
	.type	ep_ptr_get_queue, @function
ep_ptr_get_queue:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s2,36(sp)
	sw	s3,32(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a0,-36(s0)
	call	endpoint_ptr_get_epQueue_head
	mv	a5,a0
	sw	a5,-32(s0)
	lw	a0,-36(s0)
	call	endpoint_ptr_get_epQueue_tail
	mv	a5,a0
	sw	a5,-28(s0)
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	s2,a4
	mv	s3,a5
	mv	a4,s2
	mv	a5,s3
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s2,36(sp)
	lw	s3,32(sp)
	add	sp,sp,48
	jr	ra
	.size	ep_ptr_get_queue, .-ep_ptr_get_queue
	.align	2
	.type	ep_ptr_set_queue, @function
ep_ptr_set_queue:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-28(s0)
	sw	a2,-24(s0)
	lw	a5,-28(s0)
	mv	a1,a5
	lw	a0,-20(s0)
	call	endpoint_ptr_set_epQueue_head
	lw	a5,-24(s0)
	mv	a1,a5
	lw	a0,-20(s0)
	call	endpoint_ptr_set_epQueue_tail
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	ep_ptr_set_queue, .-ep_ptr_set_queue
	.align	2
	.globl	sendIPC
	.type	sendIPC, @function
sendIPC:
	add	sp,sp,-96
	sw	ra,92(sp)
	sw	s0,88(sp)
	add	s0,sp,96
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	sw	a4,-68(s0)
	sw	a5,-72(s0)
	lw	a0,-72(s0)
	call	endpoint_ptr_get_state
	mv	a5,a0
	li	a4,1
	bleu	a5,a4,.L1597
	li	a4,2
	beq	a5,a4,.L1598
	j	.L1609
.L1597:
	lw	a5,-52(s0)
	beqz	a5,.L1606
	lw	a5,-68(s0)
	add	a5,a5,128
	li	a1,4
	mv	a0,a5
	call	thread_state_ptr_set_tsType
	lw	a5,-68(s0)
	add	a5,a5,128
	lw	a4,-72(s0)
	mv	a1,a4
	mv	a0,a5
	call	thread_state_ptr_set_blockingIPCEndpoint
	lw	a5,-68(s0)
	add	a5,a5,128
	lw	a1,-60(s0)
	mv	a0,a5
	call	thread_state_ptr_set_blockingIPCBadge
	lw	a5,-68(s0)
	add	a5,a5,128
	lw	a1,-64(s0)
	mv	a0,a5
	call	thread_state_ptr_set_blockingIPCCanGrant
	lw	a5,-68(s0)
	add	a5,a5,128
	lw	a1,-56(s0)
	mv	a0,a5
	call	thread_state_ptr_set_blockingIPCIsCall
	lw	a0,-68(s0)
	call	scheduleTCB
	lw	a0,-72(s0)
	call	ep_ptr_get_queue
	mv	a4,a0
	mv	a5,a1
	sw	a4,-32(s0)
	sw	a5,-28(s0)
	lw	a1,-32(s0)
	lw	a2,-28(s0)
	lw	a0,-68(s0)
	call	tcbEPAppend
	mv	a4,a0
	mv	a5,a1
	sw	a4,-32(s0)
	sw	a5,-28(s0)
	li	a1,1
	lw	a0,-72(s0)
	call	endpoint_ptr_set_state
	lw	a1,-32(s0)
	lw	a2,-28(s0)
	lw	a0,-72(s0)
	call	ep_ptr_set_queue
	j	.L1606
.L1598:
	lw	a0,-72(s0)
	call	ep_ptr_get_queue
	mv	a4,a0
	mv	a5,a1
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	bnez	a5,.L1607
	lui	a5,%hi(.LC179)
	add	a0,a5,%lo(.LC179)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L1601
.L1607:
	nop
.L1601:
	lw	a1,-40(s0)
	lw	a2,-36(s0)
	lw	a0,-20(s0)
	call	tcbEPDequeue
	mv	a4,a0
	mv	a5,a1
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	lw	a1,-40(s0)
	lw	a2,-36(s0)
	lw	a0,-72(s0)
	call	ep_ptr_set_queue
	lw	a5,-40(s0)
	bnez	a5,.L1602
	mv	a1,zero
	lw	a0,-72(s0)
	call	endpoint_ptr_set_state
.L1602:
	lw	a5,-20(s0)
	lw	a4,128(a5)
	sw	a4,-96(s0)
	lw	a4,132(a5)
	sw	a4,-92(s0)
	lw	a5,136(a5)
	sw	a5,-88(s0)
	add	a5,s0,-96
	mv	a0,a5
	call	thread_state_get_blockingIPCDiminishCaps
	sw	a0,-24(s0)
	lw	a5,-24(s0)
	lw	a4,-20(s0)
	lw	a3,-64(s0)
	lw	a2,-60(s0)
	lw	a1,-72(s0)
	lw	a0,-68(s0)
	call	doIPCTransfer
	li	a1,1
	lw	a0,-20(s0)
	call	setThreadState
	lw	a0,-20(s0)
	call	attemptSwitchTo
	lw	a5,-56(s0)
	bnez	a5,.L1603
	lw	a5,-68(s0)
	add	a5,a5,144
	mv	a0,a5
	call	fault_ptr_get_faultType
	mv	a5,a0
	beqz	a5,.L1608
.L1603:
	lw	a5,-64(s0)
	beqz	a5,.L1605
	lw	a5,-24(s0)
	bnez	a5,.L1605
	lw	a1,-20(s0)
	lw	a0,-68(s0)
	call	setupCallerCap
	j	.L1604
.L1605:
	mv	a1,zero
	lw	a0,-68(s0)
	call	setThreadState
.L1604:
	nop
	j	.L1608
.L1606:
	nop
	j	.L1609
.L1608:
	nop
.L1609:
	nop
	lw	ra,92(sp)
	lw	s0,88(sp)
	add	sp,sp,96
	jr	ra
	.size	sendIPC, .-sendIPC
	.section	.rodata
	.align	2
.LC216:
	.string	"Assertion failed: cap_get_capType(cap) == cap_endpoint_cap\n"
	.align	2
.LC217:
	.string	"Assertion failed: sender\n"
	.text
	.align	2
	.globl	receiveIPC
	.type	receiveIPC, @function
receiveIPC:
	add	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	add	s0,sp,80
	sw	a0,-68(s0)
	sw	a1,-76(s0)
	sw	a2,-72(s0)
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,4
	beq	a4,a5,.L1625
	lui	a5,%hi(.LC216)
	add	a0,a5,%lo(.LC216)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L1612
.L1625:
	nop
.L1612:
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_endpoint_cap_get_capEPPtr
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_endpoint_cap_get_capCanSend
	mv	a5,a0
	seqz	a5,a5
	and	a5,a5,0xff
	sw	a5,-24(s0)
	lw	a5,-68(s0)
	lw	a5,140(a5)
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	beqz	a5,.L1613
	lw	a0,-28(s0)
	call	async_endpoint_ptr_get_state
	mv	a4,a0
	li	a5,2
	bne	a4,a5,.L1613
	lw	a1,-68(s0)
	lw	a0,-28(s0)
	call	completeAsyncIPC
	j	.L1614
.L1613:
	lw	a0,-20(s0)
	call	endpoint_ptr_get_state
	mv	a5,a0
	li	a4,1
	beq	a5,a4,.L1615
	li	a4,1
	bltu	a5,a4,.L1616
	li	a4,2
	beq	a5,a4,.L1616
	j	.L1627
.L1616:
	lw	a5,-68(s0)
	add	a5,a5,128
	li	a1,3
	mv	a0,a5
	call	thread_state_ptr_set_tsType
	lw	a5,-68(s0)
	add	a5,a5,128
	lw	a4,-20(s0)
	mv	a1,a4
	mv	a0,a5
	call	thread_state_ptr_set_blockingIPCEndpoint
	lw	a5,-68(s0)
	add	a5,a5,128
	lw	a1,-24(s0)
	mv	a0,a5
	call	thread_state_ptr_set_blockingIPCDiminishCaps
	lw	a0,-68(s0)
	call	scheduleTCB
	lw	a0,-20(s0)
	call	ep_ptr_get_queue
	mv	a4,a0
	mv	a5,a1
	sw	a4,-52(s0)
	sw	a5,-48(s0)
	lw	a1,-52(s0)
	lw	a2,-48(s0)
	lw	a0,-68(s0)
	call	tcbEPAppend
	mv	a4,a0
	mv	a5,a1
	sw	a4,-52(s0)
	sw	a5,-48(s0)
	li	a1,2
	lw	a0,-20(s0)
	call	endpoint_ptr_set_state
	lw	a1,-52(s0)
	lw	a2,-48(s0)
	lw	a0,-20(s0)
	call	ep_ptr_set_queue
	nop
	j	.L1614
.L1615:
	lw	a0,-20(s0)
	call	ep_ptr_get_queue
	mv	a4,a0
	mv	a5,a1
	sw	a4,-60(s0)
	sw	a5,-56(s0)
	lw	a5,-60(s0)
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	bnez	a5,.L1626
	lui	a5,%hi(.LC217)
	add	a0,a5,%lo(.LC217)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L1618
.L1626:
	nop
.L1618:
	lw	a1,-60(s0)
	lw	a2,-56(s0)
	lw	a0,-32(s0)
	call	tcbEPDequeue
	mv	a4,a0
	mv	a5,a1
	sw	a4,-60(s0)
	sw	a5,-56(s0)
	lw	a1,-60(s0)
	lw	a2,-56(s0)
	lw	a0,-20(s0)
	call	ep_ptr_set_queue
	lw	a5,-60(s0)
	bnez	a5,.L1619
	mv	a1,zero
	lw	a0,-20(s0)
	call	endpoint_ptr_set_state
.L1619:
	lw	a5,-32(s0)
	add	a5,a5,128
	mv	a0,a5
	call	thread_state_ptr_get_blockingIPCBadge
	sw	a0,-36(s0)
	lw	a5,-32(s0)
	add	a5,a5,128
	mv	a0,a5
	call	thread_state_ptr_get_blockingIPCCanGrant
	sw	a0,-40(s0)
	lw	a5,-24(s0)
	lw	a4,-68(s0)
	lw	a3,-40(s0)
	lw	a2,-36(s0)
	lw	a1,-20(s0)
	lw	a0,-32(s0)
	call	doIPCTransfer
	lw	a5,-32(s0)
	add	a5,a5,128
	mv	a0,a5
	call	thread_state_ptr_get_blockingIPCIsCall
	sw	a0,-44(s0)
	lw	a5,-44(s0)
	bnez	a5,.L1620
	lw	a5,-32(s0)
	lw	a0,144(a5)
	lw	a1,148(a5)
	call	fault_get_faultType
	mv	a5,a0
	beqz	a5,.L1621
.L1620:
	lw	a5,-40(s0)
	beqz	a5,.L1622
	lw	a5,-24(s0)
	bnez	a5,.L1622
	lw	a1,-68(s0)
	lw	a0,-32(s0)
	call	setupCallerCap
	j	.L1624
.L1622:
	mv	a1,zero
	lw	a0,-32(s0)
	call	setThreadState
	j	.L1624
.L1621:
	li	a1,1
	lw	a0,-32(s0)
	call	setThreadState
	lw	a0,-32(s0)
	call	switchIfRequiredTo
.L1624:
	nop
.L1614:
.L1627:
	nop
	lw	ra,76(sp)
	lw	s0,72(sp)
	add	sp,sp,80
	jr	ra
	.size	receiveIPC, .-receiveIPC
	.align	2
	.globl	replyFromKernel_error
	.type	replyFromKernel_error, @function
replyFromKernel_error:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a1,-36(s0)
	li	a0,1
	call	lookupIPCBuffer
	sw	a0,-20(s0)
	mv	a2,zero
	li	a1,18
	lw	a0,-36(s0)
	call	setRegister
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	setMRs_syscall_error
	sw	a0,-24(s0)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	lw	a5,24(a5)
	lw	a3,-24(s0)
	mv	a2,zero
	mv	a1,zero
	mv	a0,a5
	call	message_info_new
	mv	a5,a0
	mv	a0,a5
	call	wordFromMessageInfo
	mv	a5,a0
	mv	a2,a5
	li	a1,19
	lw	a0,-36(s0)
	call	setRegister
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	replyFromKernel_error, .-replyFromKernel_error
	.align	2
	.globl	replyFromKernel_success_empty
	.type	replyFromKernel_success_empty, @function
replyFromKernel_success_empty:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	mv	a2,zero
	li	a1,18
	lw	a0,-20(s0)
	call	setRegister
	mv	a3,zero
	mv	a2,zero
	mv	a1,zero
	mv	a0,zero
	call	message_info_new
	mv	a5,a0
	mv	a0,a5
	call	wordFromMessageInfo
	mv	a5,a0
	mv	a2,a5
	li	a1,19
	lw	a0,-20(s0)
	call	setRegister
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	replyFromKernel_success_empty, .-replyFromKernel_success_empty
	.section	.rodata
	.align	2
.LC218:
	.string	"Assertion failed: endpoint_ptr_get_state(epptr) != EPState_Idle\n"
	.align	2
.LC219:
	.string	"Assertion failed: cap_get_capType(slot->cap) == cap_reply_cap\n"
	.align	2
.LC220:
	.string	"Assertion failed: callerTCB || !cap_reply_cap_get_capInCDT(slot->cap)\n"
	.align	2
.LC221:
	.string	"Assertion failed: callerTCB == tptr\n"
	.align	2
.LC222:
	.string	"Assertion failed: ((tcb_t *)(cap_reply_cap_get_capTCBPtr(callerCap->cap))) == tptr\n"
	.text
	.align	2
	.globl	ipcCancel
	.type	ipcCancel, @function
ipcCancel:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	add	s0,sp,64
	sw	a0,-52(s0)
	lw	a5,-52(s0)
	add	a5,a5,128
	sw	a5,-24(s0)
	lw	a0,-24(s0)
	call	thread_state_ptr_get_tsType
	mv	a5,a0
	li	a4,5
	beq	a5,a4,.L1632
	li	a4,5
	bgtu	a5,a4,.L1633
	li	a4,3
	bltu	a5,a4,.L1650
	j	.L1649
.L1633:
	li	a4,6
	beq	a5,a4,.L1635
	j	.L1650
.L1649:
	lw	a0,-24(s0)
	call	thread_state_ptr_get_blockingIPCEndpoint
	mv	a5,a0
	sw	a5,-28(s0)
	lw	a0,-28(s0)
	call	endpoint_ptr_get_state
	mv	a5,a0
	bnez	a5,.L1651
	lui	a5,%hi(.LC218)
	add	a0,a5,%lo(.LC218)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L1637
.L1651:
	nop
.L1637:
	lw	a0,-28(s0)
	call	ep_ptr_get_queue
	mv	a4,a0
	mv	a5,a1
	sw	a4,-44(s0)
	sw	a5,-40(s0)
	lw	a1,-44(s0)
	lw	a2,-40(s0)
	lw	a0,-52(s0)
	call	tcbEPDequeue
	mv	a4,a0
	mv	a5,a1
	sw	a4,-44(s0)
	sw	a5,-40(s0)
	lw	a1,-44(s0)
	lw	a2,-40(s0)
	lw	a0,-28(s0)
	call	ep_ptr_set_queue
	lw	a5,-44(s0)
	bnez	a5,.L1638
	mv	a1,zero
	lw	a0,-28(s0)
	call	endpoint_ptr_set_state
.L1638:
	mv	a1,zero
	lw	a0,-52(s0)
	call	setThreadState
	nop
	j	.L1631
.L1635:
	lw	a0,-24(s0)
	call	thread_state_ptr_get_blockingIPCEndpoint
	mv	a5,a0
	mv	a1,a5
	lw	a0,-52(s0)
	call	asyncIPCCancel
	j	.L1631
.L1632:
	lw	a5,-52(s0)
	add	a5,a5,144
	mv	a0,a5
	call	fault_null_fault_ptr_new
	lw	a5,-52(s0)
	and	a5,a5,-512
	add	a5,a5,32
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a4,a0
	li	a5,8
	beq	a4,a5,.L1652
	lui	a5,%hi(.LC219)
	add	a0,a5,%lo(.LC219)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L1640
.L1652:
	nop
.L1640:
	lw	a5,-32(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_reply_cap_get_capTCBPtr
	mv	a5,a0
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	bnez	a5,.L1641
	lw	a5,-32(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_reply_cap_get_capInCDT
	mv	a5,a0
	beqz	a5,.L1641
	lui	a5,%hi(.LC220)
	add	a0,a5,%lo(.LC220)
	call	cputstring
	li	a0,3
	call	terminate
.L1641:
	lw	a5,-36(s0)
	beqz	a5,.L1653
	lw	a5,-32(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_reply_cap_get_capInCDT
	mv	a5,a0
	beqz	a5,.L1643
	lw	a4,-36(s0)
	lw	a5,-52(s0)
	beq	a4,a5,.L1654
	lui	a5,%hi(.LC221)
	add	a0,a5,%lo(.LC221)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L1645
.L1654:
	nop
.L1645:
	lw	a0,-32(s0)
	call	cdtFindChild
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	beqz	a5,.L1646
	lw	a0,-20(s0)
	call	cdtRemove
.L1646:
	lw	a0,-32(s0)
	call	cdtRemove
	j	.L1647
.L1643:
	lw	a5,-36(s0)
	and	a5,a5,-512
	add	a5,a5,48
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_reply_cap_get_capTCBPtr
	mv	a5,a0
	mv	a4,a5
	lw	a5,-52(s0)
	beq	a4,a5,.L1655
	lui	a5,%hi(.LC222)
	add	a0,a5,%lo(.LC222)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L1647
.L1655:
	nop
.L1647:
	lw	s1,-20(s0)
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,0(s1)
	sw	a5,4(s1)
	lw	a5,-32(s0)
	mv	a1,zero
	mv	a0,a5
	call	cap_reply_cap_ptr_set_capTCBPtr
	lw	a5,-32(s0)
	mv	a1,zero
	mv	a0,a5
	call	cap_reply_cap_ptr_set_capInCDT
.L1653:
	nop
.L1631:
.L1650:
	nop
	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s1,52(sp)
	add	sp,sp,64
	jr	ra
	.size	ipcCancel, .-ipcCancel
	.align	2
	.globl	epCancelAll
	.type	epCancelAll, @function
epCancelAll:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a0,-36(s0)
	call	endpoint_ptr_get_state
	mv	a5,a0
	beqz	a5,.L1662
	lw	a0,-36(s0)
	call	endpoint_ptr_get_epQueue_head
	mv	a5,a0
	sw	a5,-20(s0)
	mv	a1,zero
	lw	a0,-36(s0)
	call	endpoint_ptr_set_state
	mv	a1,zero
	lw	a0,-36(s0)
	call	endpoint_ptr_set_epQueue_head
	mv	a1,zero
	lw	a0,-36(s0)
	call	endpoint_ptr_set_epQueue_tail
	j	.L1660
.L1661:
	li	a1,2
	lw	a0,-20(s0)
	call	setThreadState
	lw	a0,-20(s0)
	call	tcbSchedEnqueue
	lw	a5,-20(s0)
	lw	a5,188(a5)
	sw	a5,-20(s0)
.L1660:
	lw	a5,-20(s0)
	bnez	a5,.L1661
	call	rescheduleRequired
	j	.L1659
.L1662:
	nop
.L1659:
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	epCancelAll, .-epCancelAll
	.section	.rodata
	.align	2
.LC223:
	.string	"/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/endpoint.c"
	.align	2
.LC224:
	.string	"invalid EP state"
	.text
	.align	2
	.globl	epCancelBadgedSends
	.type	epCancelBadgedSends, @function
epCancelBadgedSends:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	lw	a0,-52(s0)
	call	endpoint_ptr_get_state
	mv	a5,a0
	li	a4,1
	beq	a5,a4,.L1665
	li	a4,1
	bltu	a5,a4,.L1673
	li	a4,2
	beq	a5,a4,.L1673
	j	.L1672
.L1665:
	lw	a0,-52(s0)
	call	ep_ptr_get_queue
	mv	a4,a0
	mv	a5,a1
	sw	a4,-36(s0)
	sw	a5,-32(s0)
	mv	a1,zero
	lw	a0,-52(s0)
	call	endpoint_ptr_set_state
	mv	a1,zero
	lw	a0,-52(s0)
	call	endpoint_ptr_set_epQueue_head
	mv	a1,zero
	lw	a0,-52(s0)
	call	endpoint_ptr_set_epQueue_tail
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	j	.L1668
.L1670:
	lw	a5,-20(s0)
	add	a5,a5,128
	mv	a0,a5
	call	thread_state_ptr_get_blockingIPCBadge
	sw	a0,-24(s0)
	lw	a5,-20(s0)
	lw	a5,188(a5)
	sw	a5,-28(s0)
	lw	a4,-24(s0)
	lw	a5,-56(s0)
	bne	a4,a5,.L1669
	li	a1,2
	lw	a0,-20(s0)
	call	setThreadState
	lw	a0,-20(s0)
	call	tcbSchedEnqueue
	lw	a1,-36(s0)
	lw	a2,-32(s0)
	lw	a0,-20(s0)
	call	tcbEPDequeue
	mv	a4,a0
	mv	a5,a1
	sw	a4,-36(s0)
	sw	a5,-32(s0)
.L1669:
	lw	a5,-28(s0)
	sw	a5,-20(s0)
.L1668:
	lw	a5,-20(s0)
	bnez	a5,.L1670
	lw	a1,-36(s0)
	lw	a2,-32(s0)
	lw	a0,-52(s0)
	call	ep_ptr_set_queue
	lw	a5,-36(s0)
	beqz	a5,.L1671
	li	a1,1
	lw	a0,-52(s0)
	call	endpoint_ptr_set_state
.L1671:
	call	rescheduleRequired
	nop
	j	.L1667
.L1672:
	lui	a5,%hi(__func__.5887)
	add	a3,a5,%lo(__func__.5887)
	li	a2,365
	lui	a5,%hi(.LC223)
	add	a1,a5,%lo(.LC223)
	lui	a5,%hi(.LC224)
	add	a0,a5,%lo(.LC224)
	call	_fail
.L1673:
	nop
.L1667:
	nop
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	epCancelBadgedSends, .-epCancelBadgedSends
	.section	.rodata
	.align	2
.LC225:
	.string	"IRQControl: Illegal operation."
	.text
	.align	2
	.globl	decodeIRQControlInvocation
	.type	decodeIRQControlInvocation, @function
decodeIRQControlInvocation:
	add	sp,sp,-96
	sw	ra,92(sp)
	sw	s0,88(sp)
	sw	s1,84(sp)
	add	s0,sp,96
	sw	a0,-68(s0)
	sw	a1,-72(s0)
	sw	a2,-76(s0)
	mv	s1,a3
	sw	a4,-80(s0)
	lw	a4,-68(s0)
	li	a5,23
	bne	a4,a5,.L1675
	lw	a4,-72(s0)
	li	a5,2
	bleu	a4,a5,.L1676
	lw	a5,0(s1)
	bnez	a5,.L1677
.L1676:
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,7
	sw	a4,24(a5)
	li	a5,3
	j	.L1683
.L1677:
	lw	a1,-80(s0)
	mv	a0,zero
	call	getSyscallArg
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	lw	a1,-80(s0)
	li	a0,1
	call	getSyscallArg
	sw	a0,-28(s0)
	lw	a1,-80(s0)
	li	a0,2
	call	getSyscallArg
	sw	a0,-32(s0)
	lw	a5,0(s1)
	lw	a4,0(a5)
	sw	a4,-48(s0)
	lw	a5,4(a5)
	sw	a5,-44(s0)
	lw	a4,-20(s0)
	li	a5,63
	bleu	a4,a5,.L1679
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,4
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	sw	zero,8(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,63
	sw	a4,12(a5)
	li	a5,3
	j	.L1683
.L1679:
	lw	a0,-24(s0)
	call	isIRQActive
	mv	a5,a0
	beqz	a5,.L1680
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,9
	sw	a4,24(a5)
	li	a5,3
	j	.L1683
.L1680:
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	lookupTargetSlot
	mv	a4,a0
	mv	a5,a1
	sw	a4,-56(s0)
	sw	a5,-52(s0)
	lw	a5,-56(s0)
	beqz	a5,.L1681
	lw	a5,-56(s0)
	j	.L1683
.L1681:
	lw	a5,-52(s0)
	sw	a5,-36(s0)
	lw	a0,-36(s0)
	call	ensureEmptySlot
	sw	a0,-40(s0)
	lw	a5,-40(s0)
	beqz	a5,.L1682
	lw	a5,-40(s0)
	j	.L1683
.L1682:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a2,-76(s0)
	lw	a1,-36(s0)
	lw	a0,-24(s0)
	call	invokeIRQControl
	mv	a5,a0
	j	.L1683
.L1675:
	lw	a4,-68(s0)
	li	a5,24
	bne	a4,a5,.L1684
	lw	a5,0(s1)
	sw	a5,-96(s0)
	lw	a5,4(s1)
	sw	a5,-92(s0)
	lw	a5,8(s1)
	sw	a5,-88(s0)
	add	a5,s0,-96
	mv	a1,a5
	lw	a0,-72(s0)
	call	Arch_decodeInterruptControl
	mv	a5,a0
	j	.L1683
.L1684:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,77
	lui	a5,%hi(__func__.5903)
	add	a1,a5,%lo(__func__.5903)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC225)
	add	a0,a5,%lo(.LC225)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
.L1683:
	mv	a0,a5
	lw	ra,92(sp)
	lw	s0,88(sp)
	lw	s1,84(sp)
	add	sp,sp,96
	jr	ra
	.size	decodeIRQControlInvocation, .-decodeIRQControlInvocation
	.align	2
	.globl	invokeIRQControl
	.type	invokeIRQControl, @function
invokeIRQControl:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	lw	a1,-36(s0)
	li	a0,1
	call	setIRQState
	lw	a0,-36(s0)
	call	cap_irq_handler_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	lw	a3,-40(s0)
	lw	a2,-44(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cteInsert
	mv	a5,zero
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	invokeIRQControl, .-invokeIRQControl
	.section	.rodata
	.align	2
.LC226:
	.string	"IRQSetHandler: provided cap is not an async endpoint capability."
	.align	2
.LC227:
	.string	"IRQSetHandler: caller does not have send rights on the endpoint."
	.align	2
.LC228:
	.string	"IRQSetMode: Not enough arguments"
	.align	2
.LC229:
	.string	"IRQHandler: Illegal operation."
	.text
	.align	2
	.globl	decodeIRQHandlerInvocation
	.type	decodeIRQHandlerInvocation, @function
decodeIRQHandlerInvocation:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	add	s0,sp,64
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	mv	s1,a3
	sw	a4,-64(s0)
	lw	a5,-52(s0)
	li	a4,26
	beq	a5,a4,.L1689
	li	a4,26
	bgtu	a5,a4,.L1690
	li	a4,25
	beq	a5,a4,.L1691
	j	.L1688
.L1690:
	li	a4,27
	beq	a5,a4,.L1692
	li	a4,28
	beq	a5,a4,.L1693
	j	.L1688
.L1691:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a0,-60(s0)
	call	invokeIRQHandler_AckIRQ
	mv	a5,zero
	j	.L1694
.L1689:
	lw	a5,0(s1)
	bnez	a5,.L1695
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,7
	sw	a4,24(a5)
	li	a5,3
	j	.L1694
.L1695:
	lw	a5,0(s1)
	lw	a4,0(a5)
	sw	a4,-36(s0)
	lw	a5,4(a5)
	sw	a5,-32(s0)
	lw	a5,0(s1)
	sw	a5,-20(s0)
	lw	a0,-36(s0)
	lw	a1,-32(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,6
	bne	a4,a5,.L1697
	lw	a0,-36(s0)
	lw	a1,-32(s0)
	call	cap_async_endpoint_cap_get_capAEPCanSend
	mv	a5,a0
	bnez	a5,.L1698
.L1697:
	lw	a0,-36(s0)
	lw	a1,-32(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,6
	beq	a4,a5,.L1699
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,116
	lui	a5,%hi(__func__.5920)
	add	a1,a5,%lo(__func__.5920)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC226)
	add	a0,a5,%lo(.LC226)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	j	.L1700
.L1699:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,118
	lui	a5,%hi(__func__.5920)
	add	a1,a5,%lo(__func__.5920)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC227)
	add	a0,a5,%lo(.LC227)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
.L1700:
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,2
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	sw	zero,4(a5)
	li	a5,3
	j	.L1694
.L1698:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a3,-20(s0)
	lw	a1,-36(s0)
	lw	a2,-32(s0)
	lw	a0,-60(s0)
	call	invokeIRQHandler_SetIRQHandler
	mv	a5,zero
	j	.L1694
.L1692:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a0,-60(s0)
	call	invokeIRQHandler_ClearIRQHandler
	mv	a5,zero
	j	.L1694
.L1693:
	lw	a4,-56(s0)
	li	a5,1
	bgtu	a4,a5,.L1701
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,138
	lui	a5,%hi(__func__.5920)
	add	a1,a5,%lo(__func__.5920)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lw	a1,-56(s0)
	lui	a5,%hi(.LC228)
	add	a0,a5,%lo(.LC228)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,7
	sw	a4,24(a5)
	li	a5,3
	j	.L1694
.L1701:
	lw	a1,-64(s0)
	mv	a0,zero
	call	getSyscallArg
	sw	a0,-24(s0)
	lw	a1,-64(s0)
	li	a0,1
	call	getSyscallArg
	sw	a0,-28(s0)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a5,-24(s0)
	snez	a5,a5
	and	a5,a5,0xff
	mv	a4,a5
	lw	a5,-28(s0)
	snez	a5,a5
	and	a5,a5,0xff
	mv	a2,a5
	mv	a1,a4
	lw	a0,-60(s0)
	call	invokeIRQHandler_SetMode
	mv	a5,zero
	j	.L1694
.L1688:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,151
	lui	a5,%hi(__func__.5920)
	add	a1,a5,%lo(__func__.5920)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC229)
	add	a0,a5,%lo(.LC229)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
.L1694:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s1,52(sp)
	add	sp,sp,64
	jr	ra
	.size	decodeIRQHandlerInvocation, .-decodeIRQHandlerInvocation
	.align	2
	.globl	invokeIRQHandler_AckIRQ
	.type	invokeIRQHandler_AckIRQ, @function
invokeIRQHandler_AckIRQ:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a1,-20(s0)
	mv	a0,zero
	call	maskInterrupt
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	invokeIRQHandler_AckIRQ, .-invokeIRQHandler_AckIRQ
	.align	2
	.globl	invokeIRQHandler_SetMode
	.type	invokeIRQHandler_SetMode, @function
invokeIRQHandler_SetMode:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	setInterruptMode
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	invokeIRQHandler_SetMode, .-invokeIRQHandler_SetMode
	.align	2
	.globl	invokeIRQHandler_SetIRQHandler
	.type	invokeIRQHandler_SetIRQHandler, @function
invokeIRQHandler_SetIRQHandler:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-44(s0)
	sw	a2,-40(s0)
	sw	a3,-48(s0)
	lui	a5,%hi(intStateIRQNode)
	lw	a4,%lo(intStateIRQNode)(a5)
	lw	a5,-36(s0)
	sll	a5,a5,4
	add	a5,a4,a5
	sw	a5,-20(s0)
	lw	a0,-20(s0)
	call	cteDeleteOne
	lw	a3,-20(s0)
	lw	a2,-48(s0)
	lw	a0,-44(s0)
	lw	a1,-40(s0)
	call	cteInsert
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	invokeIRQHandler_SetIRQHandler, .-invokeIRQHandler_SetIRQHandler
	.align	2
	.globl	invokeIRQHandler_ClearIRQHandler
	.type	invokeIRQHandler_ClearIRQHandler, @function
invokeIRQHandler_ClearIRQHandler:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lui	a5,%hi(intStateIRQNode)
	lw	a4,%lo(intStateIRQNode)(a5)
	lw	a5,-36(s0)
	sll	a5,a5,4
	add	a5,a4,a5
	sw	a5,-20(s0)
	lw	a0,-20(s0)
	call	cteDeleteOne
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	invokeIRQHandler_ClearIRQHandler, .-invokeIRQHandler_ClearIRQHandler
	.section	.rodata
	.align	2
.LC230:
	.string	"IRQ %d"
	.text
	.align	2
	.globl	deletingIRQHandler
	.type	deletingIRQHandler, @function
deletingIRQHandler:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,192
	lui	a5,%hi(__func__.5948)
	add	a1,a5,%lo(__func__.5948)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lw	a1,-36(s0)
	lui	a5,%hi(.LC230)
	add	a0,a5,%lo(.LC230)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(intStateIRQNode)
	lw	a4,%lo(intStateIRQNode)(a5)
	lw	a5,-36(s0)
	sll	a5,a5,4
	add	a5,a4,a5
	sw	a5,-20(s0)
	lw	a0,-20(s0)
	call	cteDeleteOne
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	add	sp,sp,48
	jr	ra
	.size	deletingIRQHandler, .-deletingIRQHandler
	.align	2
	.globl	deletedIRQHandler
	.type	deletedIRQHandler, @function
deletedIRQHandler:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a1,-20(s0)
	mv	a0,zero
	call	setIRQState
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	deletedIRQHandler, .-deletedIRQHandler
	.section	.rodata
	.align	2
.LC231:
	.string	"Undelivered IRQ: %d\n"
	.align	2
.LC232:
	.string	"Received disabled IRQ: %d\n"
	.align	2
.LC233:
	.string	"/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/interrupt.c"
	.align	2
.LC234:
	.string	"Invalid IRQ state"
	.text
	.align	2
	.globl	handleInterrupt
	.type	handleInterrupt, @function
handleInterrupt:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lui	a5,%hi(intStateIRQTable)
	lw	a4,-36(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(intStateIRQTable)
	add	a5,a4,a5
	lw	a5,0(a5)
	li	a4,1
	beq	a5,a4,.L1710
	li	a4,1
	bltu	a5,a4,.L1711
	li	a4,2
	beq	a5,a4,.L1712
	li	a4,3
	beq	a5,a4,.L1713
	j	.L1717
.L1710:
	lui	a5,%hi(intStateIRQNode)
	lw	a4,%lo(intStateIRQNode)(a5)
	lw	a5,-36(s0)
	sll	a5,a5,4
	add	a5,a4,a5
	lw	a4,0(a5)
	sw	a4,-24(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,6
	bne	a4,a5,.L1714
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_async_endpoint_cap_get_capAEPCanSend
	mv	a5,a0
	beqz	a5,.L1714
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_async_endpoint_cap_get_capAEPPtr
	mv	a5,a0
	mv	s1,a5
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_async_endpoint_cap_get_capAEPBadge
	mv	a5,a0
	mv	a1,a5
	mv	a0,s1
	call	sendAsyncIPC
	j	.L1715
.L1714:
	lw	a5,-36(s0)
	mv	a1,a5
	lui	a5,%hi(.LC231)
	add	a0,a5,%lo(.LC231)
	call	printf
.L1715:
	lw	a1,-36(s0)
	li	a0,1
	call	maskInterrupt
	nop
	j	.L1716
.L1712:
	call	timerTick
	call	resetTimer
	j	.L1716
.L1713:
	lw	a0,-36(s0)
	call	handleReservedIRQ
	j	.L1716
.L1711:
	lw	a1,-36(s0)
	li	a0,1
	call	maskInterrupt
	lw	a5,-36(s0)
	mv	a1,a5
	lui	a5,%hi(.LC232)
	add	a0,a5,%lo(.LC232)
	call	printf
	j	.L1716
.L1717:
	lui	a5,%hi(__func__.5962)
	add	a3,a5,%lo(__func__.5962)
	li	a2,248
	lui	a5,%hi(.LC233)
	add	a1,a5,%lo(.LC233)
	lui	a5,%hi(.LC234)
	add	a0,a5,%lo(.LC234)
	call	_fail
.L1716:
	lw	a0,-36(s0)
	call	ackInterrupt
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	add	sp,sp,48
	jr	ra
	.size	handleInterrupt, .-handleInterrupt
	.align	2
	.globl	isIRQActive
	.type	isIRQActive, @function
isIRQActive:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lui	a5,%hi(intStateIRQTable)
	lw	a4,-20(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(intStateIRQTable)
	add	a5,a4,a5
	lw	a5,0(a5)
	snez	a5,a5
	and	a5,a5,0xff
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	isIRQActive, .-isIRQActive
	.align	2
	.globl	setIRQState
	.type	setIRQState, @function
setIRQState:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lui	a5,%hi(intStateIRQTable)
	lw	a4,-24(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(intStateIRQTable)
	add	a5,a4,a5
	lw	a4,-20(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	seqz	a5,a5
	and	a5,a5,0xff
	lw	a1,-24(s0)
	mv	a0,a5
	call	maskInterrupt
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	setIRQState, .-setIRQState
	.section	.rodata
	.align	2
.LC235:
	.string	"/home/hesham/MSc-York/seL4/seL4test/kernel/src/object/objecttype.c"
	.align	2
.LC236:
	.string	"Invalid object type"
	.text
	.align	2
	.globl	getObjectSize
	.type	getObjectSize, @function
getObjectSize:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a4,-20(s0)
	li	a5,4
	bleu	a4,a5,.L1722
	lw	a0,-20(s0)
	call	Arch_getObjectSize
	mv	a5,a0
	j	.L1723
.L1722:
	lw	a4,-20(s0)
	li	a5,4
	bgtu	a4,a5,.L1724
	lw	a5,-20(s0)
	sll	a4,a5,2
	lui	a5,%hi(.L1726)
	add	a5,a5,%lo(.L1726)
	add	a5,a4,a5
	lw	a5,0(a5)
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L1726:
	.word	.L1725
	.word	.L1727
	.word	.L1728
	.word	.L1729
	.word	.L1730
	.text
.L1727:
	li	a5,9
	j	.L1723
.L1728:
	li	a5,4
	j	.L1723
.L1729:
	li	a5,4
	j	.L1723
.L1730:
	lw	a5,-24(s0)
	add	a5,a5,4
	j	.L1723
.L1725:
	lw	a5,-24(s0)
	j	.L1723
.L1724:
	lui	a5,%hi(__func__.5980)
	add	a3,a5,%lo(__func__.5980)
	li	a2,50
	lui	a5,%hi(.LC235)
	add	a1,a5,%lo(.LC235)
	lui	a5,%hi(.LC236)
	add	a0,a5,%lo(.LC236)
	call	_fail
.L1723:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	getObjectSize, .-getObjectSize
	.align	2
	.globl	deriveCap
	.type	deriveCap, @function
deriveCap:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-48(s0)
	sw	a3,-44(s0)
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	isArchCap
	mv	a5,a0
	beqz	a5,.L1732
	lw	a5,-36(s0)
	lw	a2,-48(s0)
	lw	a3,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	Arch_deriveCap
	j	.L1731
.L1732:
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_get_capType
	mv	a5,a0
	li	a4,14
	beq	a5,a4,.L1735
	li	a4,46
	beq	a5,a4,.L1736
	li	a4,8
	beq	a5,a4,.L1737
	j	.L1740
.L1736:
	sw	zero,-28(s0)
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	j	.L1738
.L1735:
	sw	zero,-28(s0)
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	j	.L1738
.L1737:
	sw	zero,-28(s0)
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	j	.L1738
.L1740:
	sw	zero,-28(s0)
	lw	a5,-48(s0)
	sw	a5,-24(s0)
	lw	a5,-44(s0)
	sw	a5,-20(s0)
.L1738:
	lw	a5,-36(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
	lw	a4,-24(s0)
	sw	a4,4(a5)
	lw	a4,-20(s0)
	sw	a4,8(a5)
.L1731:
	lw	a0,-36(s0)
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	deriveCap, .-deriveCap
	.section	.rodata
	.align	2
.LC237:
	.string	"Assertion failed: cap_reply_cap_get_capInCDT(cap)\n"
	.align	2
.LC238:
	.string	"finaliseCap: failed to finalise immediately."
	.align	2
.LC239:
	.string	"Assertion failed: !cap_reply_cap_get_capInCDT(replySlot->cap)\n"
	.align	2
.LC240:
	.string	"Assertion failed: cap_reply_cap_get_capTCBPtr(replySlot->cap) == 0\n"
	.text
	.align	2
	.globl	finaliseCap
	.type	finaliseCap, @function
finaliseCap:
	add	sp,sp,-96
	sw	ra,92(sp)
	sw	s0,88(sp)
	sw	s1,84(sp)
	sw	s2,80(sp)
	add	s0,sp,96
	sw	a0,-68(s0)
	sw	a1,-76(s0)
	sw	a2,-72(s0)
	sw	a3,-80(s0)
	sw	a4,-84(s0)
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	isArchCap
	mv	a5,a0
	beqz	a5,.L1742
	lw	a2,-80(s0)
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	Arch_finaliseCap
	mv	a4,a0
	mv	a5,a1
	sw	a4,-60(s0)
	sw	a5,-56(s0)
	li	a5,255
	sw	a5,-52(s0)
	lw	a5,-68(s0)
	lw	a4,-60(s0)
	sw	a4,0(a5)
	lw	a4,-56(s0)
	sw	a4,4(a5)
	lw	a4,-52(s0)
	sw	a4,8(a5)
	j	.L1741
.L1742:
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_get_capType
	mv	a5,a0
	li	a4,6
	beq	a5,a4,.L1745
	li	a4,6
	bgtu	a5,a4,.L1746
	beqz	a5,.L1747
	li	a4,4
	beq	a5,a4,.L1748
	j	.L1744
.L1746:
	li	a4,8
	beq	a5,a4,.L1749
	li	a4,62
	beq	a5,a4,.L1747
	j	.L1744
.L1748:
	lw	a5,-80(s0)
	beqz	a5,.L1750
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_endpoint_cap_get_capEPPtr
	mv	a5,a0
	mv	a0,a5
	call	epCancelAll
.L1750:
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-60(s0)
	sw	a5,-56(s0)
	li	a5,255
	sw	a5,-52(s0)
	lw	a5,-68(s0)
	lw	a4,-60(s0)
	sw	a4,0(a5)
	lw	a4,-56(s0)
	sw	a4,4(a5)
	lw	a4,-52(s0)
	sw	a4,8(a5)
	j	.L1741
.L1745:
	lw	a5,-80(s0)
	beqz	a5,.L1751
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_async_endpoint_cap_get_capAEPPtr
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a0,-20(s0)
	call	async_endpoint_ptr_get_aepBoundTCB
	mv	a5,a0
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	beqz	a5,.L1752
	lw	a0,-24(s0)
	call	unbindAsyncEndpoint
.L1752:
	lw	a0,-20(s0)
	call	aepCancelAll
.L1751:
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-60(s0)
	sw	a5,-56(s0)
	li	a5,255
	sw	a5,-52(s0)
	lw	a5,-68(s0)
	lw	a4,-60(s0)
	sw	a4,0(a5)
	lw	a4,-56(s0)
	sw	a4,4(a5)
	lw	a4,-52(s0)
	sw	a4,8(a5)
	j	.L1741
.L1749:
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_reply_cap_get_capInCDT
	mv	a5,a0
	bnez	a5,.L1771
	lui	a5,%hi(.LC237)
	add	a0,a5,%lo(.LC237)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L1754
.L1771:
	nop
.L1754:
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_reply_cap_get_capTCBPtr
	mv	a5,a0
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	and	a5,a5,-512
	add	a5,a5,32
	sw	a5,-32(s0)
	lw	s1,-32(s0)
	mv	a2,zero
	li	a1,1
	mv	a0,zero
	call	cap_reply_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,0(s1)
	sw	a5,4(s1)
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-60(s0)
	sw	a5,-56(s0)
	li	a5,255
	sw	a5,-52(s0)
	lw	a5,-68(s0)
	lw	a4,-60(s0)
	sw	a4,0(a5)
	lw	a4,-56(s0)
	sw	a4,4(a5)
	lw	a4,-52(s0)
	sw	a4,8(a5)
	j	.L1741
.L1747:
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-60(s0)
	sw	a5,-56(s0)
	li	a5,255
	sw	a5,-52(s0)
	lw	a5,-68(s0)
	lw	a4,-60(s0)
	sw	a4,0(a5)
	lw	a4,-56(s0)
	sw	a4,4(a5)
	lw	a4,-52(s0)
	sw	a4,8(a5)
	j	.L1741
.L1744:
	lw	a5,-84(s0)
	beqz	a5,.L1755
	lui	a5,%hi(__func__.6007)
	add	a3,a5,%lo(__func__.6007)
	li	a2,144
	lui	a5,%hi(.LC235)
	add	a1,a5,%lo(.LC235)
	lui	a5,%hi(.LC238)
	add	a0,a5,%lo(.LC238)
	call	_fail
.L1755:
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_get_capType
	mv	a5,a0
	li	a4,12
	beq	a5,a4,.L1757
	li	a4,12
	bgtu	a5,a4,.L1758
	li	a4,10
	beq	a5,a4,.L1759
	j	.L1756
.L1758:
	li	a4,30
	beq	a5,a4,.L1760
	li	a4,46
	beq	a5,a4,.L1761
	j	.L1756
.L1759:
	lw	a5,-80(s0)
	beqz	a5,.L1772
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_cnode_cap_get_capCNodeRadix
	mv	a4,a0
	li	a5,1
	sll	a5,a5,a4
	mv	s1,a5
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_cnode_cap_get_capCNodeRadix
	mv	s2,a0
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_cnode_cap_get_capCNodePtr
	mv	a5,a0
	mv	a2,a5
	mv	a1,s2
	mv	a0,s1
	call	Zombie_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-60(s0)
	sw	a5,-56(s0)
	li	a5,255
	sw	a5,-52(s0)
	lw	a5,-68(s0)
	lw	a4,-60(s0)
	sw	a4,0(a5)
	lw	a4,-56(s0)
	sw	a4,4(a5)
	lw	a4,-52(s0)
	sw	a4,8(a5)
	j	.L1741
.L1757:
	lw	a5,-80(s0)
	beqz	a5,.L1773
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_thread_cap_get_capTCBPtr
	mv	a5,a0
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	and	a5,a5,-512
	sw	a5,-40(s0)
	lw	a0,-36(s0)
	call	unbindAsyncEndpoint
	lw	a0,-36(s0)
	call	suspend
	lw	a5,-36(s0)
	and	a5,a5,-512
	add	a5,a5,32
	sw	a5,-44(s0)
	lw	a5,-44(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a4,a0
	li	a5,8
	bne	a4,a5,.L1764
	lw	a5,-44(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_reply_cap_get_capInCDT
	mv	a5,a0
	beqz	a5,.L1774
	lui	a5,%hi(.LC239)
	add	a0,a5,%lo(.LC239)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L1766
.L1774:
	nop
.L1766:
	lw	a5,-44(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_reply_cap_get_capTCBPtr
	mv	a5,a0
	beqz	a5,.L1775
	lui	a5,%hi(.LC240)
	add	a0,a5,%lo(.LC240)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L1768
.L1775:
	nop
.L1768:
	lw	s1,-44(s0)
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,0(s1)
	sw	a5,4(s1)
.L1764:
	lw	a0,-36(s0)
	call	Arch_prepareThreadDelete
	lw	a5,-40(s0)
	mv	a2,a5
	li	a1,32
	li	a0,5
	call	Zombie_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-60(s0)
	sw	a5,-56(s0)
	li	a5,255
	sw	a5,-52(s0)
	lw	a5,-68(s0)
	lw	a4,-60(s0)
	sw	a4,0(a5)
	lw	a4,-56(s0)
	sw	a4,4(a5)
	lw	a4,-52(s0)
	sw	a4,8(a5)
	j	.L1741
.L1761:
	lw	a5,-76(s0)
	sw	a5,-60(s0)
	lw	a5,-72(s0)
	sw	a5,-56(s0)
	li	a5,255
	sw	a5,-52(s0)
	lw	a5,-68(s0)
	lw	a4,-60(s0)
	sw	a4,0(a5)
	lw	a4,-56(s0)
	sw	a4,4(a5)
	lw	a4,-52(s0)
	sw	a4,8(a5)
	j	.L1741
.L1760:
	lw	a5,-80(s0)
	beqz	a5,.L1776
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_irq_handler_cap_get_capIRQ
	sw	a0,-48(s0)
	lw	a0,-48(s0)
	call	deletingIRQHandler
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-60(s0)
	sw	a5,-56(s0)
	lw	a5,-48(s0)
	sw	a5,-52(s0)
	lw	a5,-68(s0)
	lw	a4,-60(s0)
	sw	a4,0(a5)
	lw	a4,-56(s0)
	sw	a4,4(a5)
	lw	a4,-52(s0)
	sw	a4,8(a5)
	j	.L1741
.L1772:
	nop
	j	.L1756
.L1773:
	nop
	j	.L1756
.L1776:
	nop
.L1756:
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-60(s0)
	sw	a5,-56(s0)
	li	a5,255
	sw	a5,-52(s0)
	lw	a5,-68(s0)
	lw	a4,-60(s0)
	sw	a4,0(a5)
	lw	a4,-56(s0)
	sw	a4,4(a5)
	lw	a4,-52(s0)
	sw	a4,8(a5)
.L1741:
	lw	a0,-68(s0)
	lw	ra,92(sp)
	lw	s0,88(sp)
	lw	s1,84(sp)
	lw	s2,80(sp)
	add	sp,sp,96
	jr	ra
	.size	finaliseCap, .-finaliseCap
	.section	.rodata
	.align	2
.LC241:
	.string	"recycleCap: can't reconstruct Null"
	.align	2
.LC242:
	.string	"Assertion failed: ts == ThreadState_Inactive || ts != ThreadState_IdleThreadState\n"
	.align	2
.LC243:
	.string	"Assertion failed: !thread_state_get_tcbQueued(tcb->tcbState)\n"
	.align	2
.LC244:
	.string	"Assertion failed: tcb->boundAsyncEndpoint == ((void *)0)\n"
	.text
	.align	2
	.globl	recycleCap
	.type	recycleCap, @function
recycleCap:
	add	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s2,68(sp)
	sw	s3,64(sp)
	add	s0,sp,80
	sw	a0,-52(s0)
	sw	a1,-60(s0)
	sw	a2,-56(s0)
	lw	a0,-60(s0)
	lw	a1,-56(s0)
	call	isArchCap
	mv	a5,a0
	beqz	a5,.L1778
	lw	a1,-60(s0)
	lw	a2,-56(s0)
	lw	a0,-52(s0)
	call	Arch_recycleCap
	mv	a4,a0
	mv	a5,a1
	sw	a4,-44(s0)
	sw	a5,-40(s0)
	j	.L1779
.L1778:
	lw	a0,-60(s0)
	lw	a1,-56(s0)
	call	cap_get_capType
	mv	a5,a0
	li	a4,10
	beq	a5,a4,.L1781
	li	a4,10
	bgtu	a5,a4,.L1782
	beqz	a5,.L1783
	li	a4,4
	beq	a5,a4,.L1784
	j	.L1780
.L1782:
	li	a4,46
	beq	a5,a4,.L1785
	li	a4,62
	beq	a5,a4,.L1786
	li	a4,12
	beq	a5,a4,.L1787
	j	.L1780
.L1783:
	lui	a5,%hi(__func__.6024)
	add	a3,a5,%lo(__func__.6024)
	li	a2,223
	lui	a5,%hi(.LC235)
	add	a1,a5,%lo(.LC235)
	lui	a5,%hi(.LC241)
	add	a0,a5,%lo(.LC241)
	call	_fail
.L1786:
	lw	a5,-60(s0)
	sw	a5,-44(s0)
	lw	a5,-56(s0)
	sw	a5,-40(s0)
	j	.L1779
.L1781:
	lw	a5,-60(s0)
	sw	a5,-44(s0)
	lw	a5,-56(s0)
	sw	a5,-40(s0)
	j	.L1779
.L1787:
	lw	a5,-60(s0)
	sw	a5,-44(s0)
	lw	a5,-56(s0)
	sw	a5,-40(s0)
	j	.L1779
.L1785:
	lw	a0,-60(s0)
	lw	a1,-56(s0)
	call	cap_zombie_cap_get_capZombieType
	sw	a0,-20(s0)
	lw	a4,-20(s0)
	li	a5,32
	bne	a4,a5,.L1788
	lw	a0,-60(s0)
	lw	a1,-56(s0)
	call	cap_zombie_cap_get_capZombiePtr
	mv	a5,a0
	add	a5,a5,256
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	lw	a4,128(a5)
	sw	a4,-80(s0)
	lw	a4,132(a5)
	sw	a4,-76(s0)
	lw	a5,136(a5)
	sw	a5,-72(s0)
	add	a5,s0,-80
	mv	a0,a5
	call	thread_state_get_tsType
	sw	a0,-28(s0)
	lw	a5,-28(s0)
	beqz	a5,.L1789
	lw	a4,-28(s0)
	li	a5,8
	bne	a4,a5,.L1789
	lui	a5,%hi(.LC242)
	add	a0,a5,%lo(.LC242)
	call	cputstring
	li	a0,3
	call	terminate
.L1789:
	lw	a5,-24(s0)
	lw	a4,128(a5)
	sw	a4,-80(s0)
	lw	a4,132(a5)
	sw	a4,-76(s0)
	lw	a5,136(a5)
	sw	a5,-72(s0)
	add	a5,s0,-80
	mv	a0,a5
	call	thread_state_get_tcbQueued
	mv	a5,a0
	beqz	a5,.L1795
	lui	a5,%hi(.LC243)
	add	a0,a5,%lo(.LC243)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L1791
.L1795:
	nop
.L1791:
	lw	a5,-24(s0)
	lw	a5,140(a5)
	beqz	a5,.L1796
	lui	a5,%hi(.LC244)
	add	a0,a5,%lo(.LC244)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L1793
.L1796:
	nop
.L1793:
	li	a1,196
	lw	a0,-24(s0)
	call	memzero
	lw	a5,-24(s0)
	mv	a0,a5
	call	Arch_initContext
	lw	a5,-24(s0)
	li	a4,1
	sw	a4,168(a5)
	lui	a5,%hi(ksCurDomain)
	lw	a4,%lo(ksCurDomain)(a5)
	lw	a5,-24(s0)
	sw	a4,160(a5)
	lw	a5,-24(s0)
	mv	a0,a5
	call	cap_thread_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-44(s0)
	sw	a5,-40(s0)
	j	.L1779
.L1788:
	lw	a0,-60(s0)
	lw	a1,-56(s0)
	call	cap_zombie_cap_get_capZombiePtr
	mv	a5,a0
	mv	a3,a5
	mv	a2,zero
	mv	a1,zero
	lw	a0,-20(s0)
	call	cap_cnode_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-44(s0)
	sw	a5,-40(s0)
	j	.L1779
.L1784:
	lw	a0,-60(s0)
	lw	a1,-56(s0)
	call	cap_endpoint_cap_get_capEPBadge
	sw	a0,-32(s0)
	lw	a5,-32(s0)
	beqz	a5,.L1794
	lw	a0,-60(s0)
	lw	a1,-56(s0)
	call	cap_endpoint_cap_get_capEPPtr
	mv	a5,a0
	sw	a5,-36(s0)
	lw	a1,-32(s0)
	lw	a0,-36(s0)
	call	epCancelBadgedSends
.L1794:
	lw	a5,-60(s0)
	sw	a5,-44(s0)
	lw	a5,-56(s0)
	sw	a5,-40(s0)
	j	.L1779
.L1780:
	lw	a5,-60(s0)
	sw	a5,-44(s0)
	lw	a5,-56(s0)
	sw	a5,-40(s0)
.L1779:
	mv	a4,zero
	lw	a4,-44(s0)
	mv	a5,zero
	lw	a5,-40(s0)
	mv	s2,a4
	mv	s3,a5
	mv	a4,s2
	mv	a5,s3
	mv	a0,a4
	mv	a1,a5
	lw	ra,76(sp)
	lw	s0,72(sp)
	lw	s2,68(sp)
	lw	s3,64(sp)
	add	sp,sp,80
	jr	ra
	.size	recycleCap, .-recycleCap
	.align	2
	.globl	hasRecycleRights
	.type	hasRecycleRights, @function
hasRecycleRights:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_get_capType
	mv	a5,a0
	li	a4,4
	beq	a5,a4,.L1799
	li	a4,4
	bgtu	a5,a4,.L1800
	beqz	a5,.L1801
	j	.L1798
.L1800:
	li	a4,6
	beq	a5,a4,.L1802
	li	a4,62
	bne	a5,a4,.L1798
.L1801:
	mv	a5,zero
	j	.L1803
.L1799:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_endpoint_cap_get_capCanSend
	mv	a5,a0
	beqz	a5,.L1804
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_endpoint_cap_get_capCanReceive
	mv	a5,a0
	beqz	a5,.L1804
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_endpoint_cap_get_capCanGrant
	mv	a5,a0
	beqz	a5,.L1804
	li	a5,1
	j	.L1805
.L1804:
	mv	a5,zero
.L1805:
	j	.L1803
.L1802:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_async_endpoint_cap_get_capAEPCanSend
	mv	a5,a0
	beqz	a5,.L1806
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_async_endpoint_cap_get_capAEPCanReceive
	mv	a5,a0
	beqz	a5,.L1806
	li	a5,1
	j	.L1807
.L1806:
	mv	a5,zero
.L1807:
	j	.L1803
.L1798:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	isArchCap
	mv	a5,a0
	beqz	a5,.L1808
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	Arch_hasRecycleRights
	mv	a5,a0
	j	.L1803
.L1808:
	li	a5,1
.L1803:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	hasRecycleRights, .-hasRecycleRights
	.align	2
	.globl	sameRegionAs
	.type	sameRegionAs, @function
sameRegionAs:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-48(s0)
	sw	a3,-44(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_capType
	mv	a5,a0
	li	a4,62
	bgtu	a5,a4,.L1810
	sll	a4,a5,2
	lui	a5,%hi(.L1812)
	add	a5,a5,%lo(.L1812)
	add	a5,a4,a5
	lw	a5,0(a5)
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L1812:
	.word	.L1810
	.word	.L1810
	.word	.L1811
	.word	.L1810
	.word	.L1813
	.word	.L1810
	.word	.L1814
	.word	.L1810
	.word	.L1815
	.word	.L1810
	.word	.L1816
	.word	.L1810
	.word	.L1817
	.word	.L1810
	.word	.L1818
	.word	.L1810
	.word	.L1810
	.word	.L1810
	.word	.L1810
	.word	.L1810
	.word	.L1810
	.word	.L1810
	.word	.L1810
	.word	.L1810
	.word	.L1810
	.word	.L1810
	.word	.L1810
	.word	.L1810
	.word	.L1810
	.word	.L1810
	.word	.L1819
	.word	.L1810
	.word	.L1810
	.word	.L1810
	.word	.L1810
	.word	.L1810
	.word	.L1810
	.word	.L1810
	.word	.L1810
	.word	.L1810
	.word	.L1810
	.word	.L1810
	.word	.L1810
	.word	.L1810
	.word	.L1810
	.word	.L1810
	.word	.L1810
	.word	.L1810
	.word	.L1810
	.word	.L1810
	.word	.L1810
	.word	.L1810
	.word	.L1810
	.word	.L1810
	.word	.L1810
	.word	.L1810
	.word	.L1810
	.word	.L1810
	.word	.L1810
	.word	.L1810
	.word	.L1810
	.word	.L1810
	.word	.L1820
	.text
.L1811:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_untyped_cap_get_capPtr
	sw	a0,-20(s0)
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_get_capPtr
	mv	a5,a0
	sw	a5,-24(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_untyped_cap_get_capBlockSize
	mv	a4,a0
	li	a5,1
	sll	a4,a5,a4
	lw	a5,-20(s0)
	add	a5,a4,a5
	add	a5,a5,-1
	sw	a5,-28(s0)
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_get_capSizeBits
	mv	a4,a0
	li	a5,1
	sll	a4,a5,a4
	lw	a5,-24(s0)
	add	a5,a4,a5
	add	a5,a5,-1
	sw	a5,-32(s0)
	lw	a5,-24(s0)
	beqz	a5,.L1821
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	bgtu	a4,a5,.L1821
	lw	a4,-32(s0)
	lw	a5,-28(s0)
	bgtu	a4,a5,.L1821
	lw	a4,-24(s0)
	lw	a5,-32(s0)
	bgtu	a4,a5,.L1821
	li	a5,1
	j	.L1822
.L1821:
	mv	a5,zero
.L1822:
	j	.L1823
.L1813:
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,4
	bne	a4,a5,.L1837
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_endpoint_cap_get_capEPPtr
	mv	s1,a0
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_endpoint_cap_get_capEPPtr
	mv	a5,a0
	sub	a5,s1,a5
	seqz	a5,a5
	and	a5,a5,0xff
	j	.L1823
.L1814:
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,6
	bne	a4,a5,.L1838
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_async_endpoint_cap_get_capAEPPtr
	mv	s1,a0
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_async_endpoint_cap_get_capAEPPtr
	mv	a5,a0
	sub	a5,s1,a5
	seqz	a5,a5
	and	a5,a5,0xff
	j	.L1823
.L1816:
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,10
	bne	a4,a5,.L1839
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_cnode_cap_get_capCNodePtr
	mv	s1,a0
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_cnode_cap_get_capCNodePtr
	mv	a5,a0
	bne	s1,a5,.L1828
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_cnode_cap_get_capCNodeRadix
	mv	s1,a0
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_cnode_cap_get_capCNodeRadix
	mv	a5,a0
	bne	s1,a5,.L1828
	li	a5,1
	j	.L1829
.L1828:
	mv	a5,zero
.L1829:
	j	.L1823
.L1817:
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,12
	bne	a4,a5,.L1840
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_thread_cap_get_capTCBPtr
	mv	s1,a0
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_thread_cap_get_capTCBPtr
	mv	a5,a0
	sub	a5,s1,a5
	seqz	a5,a5
	and	a5,a5,0xff
	j	.L1823
.L1815:
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,8
	bne	a4,a5,.L1841
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_reply_cap_get_capTCBPtr
	mv	s1,a0
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_reply_cap_get_capTCBPtr
	mv	a5,a0
	sub	a5,s1,a5
	seqz	a5,a5
	and	a5,a5,0xff
	j	.L1823
.L1820:
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,62
	bne	a4,a5,.L1842
	li	a5,1
	j	.L1823
.L1818:
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,14
	beq	a4,a5,.L1833
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,30
	bne	a4,a5,.L1843
.L1833:
	li	a5,1
	j	.L1823
.L1819:
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,30
	bne	a4,a5,.L1844
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_irq_handler_cap_get_capIRQ
	mv	s1,a0
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_irq_handler_cap_get_capIRQ
	mv	a5,a0
	sub	a5,s1,a5
	seqz	a5,a5
	and	a5,a5,0xff
	j	.L1823
.L1810:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	isArchCap
	mv	a5,a0
	beqz	a5,.L1845
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	isArchCap
	mv	a5,a0
	beqz	a5,.L1845
	lw	a2,-48(s0)
	lw	a3,-44(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	Arch_sameRegionAs
	mv	a5,a0
	j	.L1823
.L1837:
	nop
	j	.L1825
.L1838:
	nop
	j	.L1825
.L1839:
	nop
	j	.L1825
.L1840:
	nop
	j	.L1825
.L1841:
	nop
	j	.L1825
.L1842:
	nop
	j	.L1825
.L1843:
	nop
	j	.L1825
.L1844:
	nop
	j	.L1825
.L1845:
	nop
.L1825:
	mv	a5,zero
.L1823:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	add	sp,sp,48
	jr	ra
	.size	sameRegionAs, .-sameRegionAs
	.align	2
	.globl	sameObjectAs
	.type	sameObjectAs, @function
sameObjectAs:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	sw	a2,-32(s0)
	sw	a3,-28(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,2
	bne	a4,a5,.L1847
	mv	a5,zero
	j	.L1848
.L1847:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,14
	bne	a4,a5,.L1849
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,30
	bne	a4,a5,.L1849
	mv	a5,zero
	j	.L1848
.L1849:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	isArchCap
	mv	a5,a0
	beqz	a5,.L1850
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	isArchCap
	mv	a5,a0
	beqz	a5,.L1850
	lw	a2,-32(s0)
	lw	a3,-28(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	Arch_sameObjectAs
	mv	a5,a0
	j	.L1848
.L1850:
	lw	a2,-32(s0)
	lw	a3,-28(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	sameRegionAs
	mv	a5,a0
.L1848:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	sameObjectAs, .-sameObjectAs
	.align	2
	.globl	updateCapData
	.type	updateCapData, @function
updateCapData:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s2,52(sp)
	sw	s3,48(sp)
	add	s0,sp,64
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-64(s0)
	sw	a3,-60(s0)
	lw	a0,-64(s0)
	lw	a1,-60(s0)
	call	isArchCap
	mv	a5,a0
	beqz	a5,.L1852
	lw	a2,-64(s0)
	lw	a3,-60(s0)
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	Arch_updateCapData
	mv	a4,a0
	mv	a5,a1
	sw	a4,-32(s0)
	sw	a5,-28(s0)
	j	.L1853
.L1852:
	lw	a0,-64(s0)
	lw	a1,-60(s0)
	call	cap_get_capType
	mv	a5,a0
	li	a4,6
	beq	a5,a4,.L1855
	li	a4,10
	beq	a5,a4,.L1856
	li	a4,4
	bne	a5,a4,.L1862
	lw	a5,-52(s0)
	bnez	a5,.L1858
	lw	a0,-64(s0)
	lw	a1,-60(s0)
	call	cap_endpoint_cap_get_capEPBadge
	mv	a5,a0
	bnez	a5,.L1858
	lw	a2,-56(s0)
	lw	a0,-64(s0)
	lw	a1,-60(s0)
	call	cap_endpoint_cap_set_capEPBadge
	mv	a4,a0
	mv	a5,a1
	sw	a4,-32(s0)
	sw	a5,-28(s0)
	j	.L1853
.L1858:
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-32(s0)
	sw	a5,-28(s0)
	j	.L1853
.L1855:
	lw	a5,-52(s0)
	bnez	a5,.L1859
	lw	a0,-64(s0)
	lw	a1,-60(s0)
	call	cap_async_endpoint_cap_get_capAEPBadge
	mv	a5,a0
	bnez	a5,.L1859
	lw	a2,-56(s0)
	lw	a0,-64(s0)
	lw	a1,-60(s0)
	call	cap_async_endpoint_cap_set_capAEPBadge
	mv	a4,a0
	mv	a5,a1
	sw	a4,-32(s0)
	sw	a5,-28(s0)
	j	.L1853
.L1859:
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-32(s0)
	sw	a5,-28(s0)
	j	.L1853
.L1856:
	lw	a5,-56(s0)
	sw	a5,-36(s0)
	lw	a0,-36(s0)
	call	cnode_capdata_get_guardSize
	sw	a0,-20(s0)
	lw	a0,-64(s0)
	lw	a1,-60(s0)
	call	cap_cnode_cap_get_capCNodeRadix
	mv	a4,a0
	lw	a5,-20(s0)
	add	a4,a4,a5
	li	a5,32
	bleu	a4,a5,.L1860
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-32(s0)
	sw	a5,-28(s0)
	j	.L1853
.L1860:
	lw	a0,-36(s0)
	call	cnode_capdata_get_guard
	mv	a3,a0
	li	a4,1
	lw	a5,-20(s0)
	sll	a5,a4,a5
	add	a5,a5,-1
	and	a5,a3,a5
	sw	a5,-24(s0)
	lw	a2,-24(s0)
	lw	a0,-64(s0)
	lw	a1,-60(s0)
	call	cap_cnode_cap_set_capCNodeGuard
	mv	a4,a0
	mv	a5,a1
	sw	a4,-44(s0)
	sw	a5,-40(s0)
	lw	a2,-20(s0)
	lw	a0,-44(s0)
	lw	a1,-40(s0)
	call	cap_cnode_cap_set_capCNodeGuardSize
	mv	a4,a0
	mv	a5,a1
	sw	a4,-44(s0)
	sw	a5,-40(s0)
	lw	a5,-44(s0)
	sw	a5,-32(s0)
	lw	a5,-40(s0)
	sw	a5,-28(s0)
	j	.L1853
.L1862:
	lw	a5,-64(s0)
	sw	a5,-32(s0)
	lw	a5,-60(s0)
	sw	a5,-28(s0)
.L1853:
	mv	a4,zero
	lw	a4,-32(s0)
	mv	a5,zero
	lw	a5,-28(s0)
	mv	s2,a4
	mv	s3,a5
	mv	a4,s2
	mv	a5,s3
	mv	a0,a4
	mv	a1,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s2,52(sp)
	lw	s3,48(sp)
	add	sp,sp,64
	jr	ra
	.size	updateCapData, .-updateCapData
	.section	.rodata
	.align	2
.LC245:
	.string	"Invalid cap type"
	.text
	.align	2
	.globl	maskCapRights
	.type	maskCapRights, @function
maskCapRights:
	add	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	sw	s2,64(sp)
	sw	s3,60(sp)
	add	s0,sp,80
	sw	a0,-68(s0)
	sw	a1,-76(s0)
	sw	a2,-72(s0)
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	isArchCap
	mv	a5,a0
	beqz	a5,.L1864
	lw	a1,-76(s0)
	lw	a2,-72(s0)
	lw	a0,-68(s0)
	call	Arch_maskCapRights
	mv	a4,a0
	mv	a5,a1
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	j	.L1865
.L1864:
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_get_capType
	mv	a5,a0
	li	a4,62
	bgtu	a5,a4,.L1866
	sll	a4,a5,2
	lui	a5,%hi(.L1868)
	add	a5,a5,%lo(.L1868)
	add	a5,a4,a5
	lw	a5,0(a5)
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L1868:
	.word	.L1867
	.word	.L1866
	.word	.L1867
	.word	.L1866
	.word	.L1869
	.word	.L1866
	.word	.L1870
	.word	.L1866
	.word	.L1867
	.word	.L1866
	.word	.L1867
	.word	.L1866
	.word	.L1867
	.word	.L1866
	.word	.L1867
	.word	.L1866
	.word	.L1866
	.word	.L1866
	.word	.L1866
	.word	.L1866
	.word	.L1866
	.word	.L1866
	.word	.L1866
	.word	.L1866
	.word	.L1866
	.word	.L1866
	.word	.L1866
	.word	.L1866
	.word	.L1866
	.word	.L1866
	.word	.L1867
	.word	.L1866
	.word	.L1866
	.word	.L1866
	.word	.L1866
	.word	.L1866
	.word	.L1866
	.word	.L1866
	.word	.L1866
	.word	.L1866
	.word	.L1866
	.word	.L1866
	.word	.L1866
	.word	.L1866
	.word	.L1866
	.word	.L1866
	.word	.L1867
	.word	.L1866
	.word	.L1866
	.word	.L1866
	.word	.L1866
	.word	.L1866
	.word	.L1866
	.word	.L1866
	.word	.L1866
	.word	.L1866
	.word	.L1866
	.word	.L1866
	.word	.L1866
	.word	.L1866
	.word	.L1866
	.word	.L1866
	.word	.L1867
	.text
.L1867:
	lw	a5,-76(s0)
	sw	a5,-40(s0)
	lw	a5,-72(s0)
	sw	a5,-36(s0)
	j	.L1865
.L1869:
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_endpoint_cap_get_capCanSend
	mv	s1,a0
	lw	a0,-68(s0)
	call	cap_rights_get_capAllowWrite
	mv	a5,a0
	and	a5,s1,a5
	mv	a2,a5
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_endpoint_cap_set_capCanSend
	mv	a4,a0
	mv	a5,a1
	sw	a4,-48(s0)
	sw	a5,-44(s0)
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_endpoint_cap_get_capCanReceive
	mv	s1,a0
	lw	a0,-68(s0)
	call	cap_rights_get_capAllowRead
	mv	a5,a0
	and	a5,s1,a5
	mv	a2,a5
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_endpoint_cap_set_capCanReceive
	mv	a4,a0
	mv	a5,a1
	sw	a4,-48(s0)
	sw	a5,-44(s0)
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_endpoint_cap_get_capCanGrant
	mv	s1,a0
	lw	a0,-68(s0)
	call	cap_rights_get_capAllowGrant
	mv	a5,a0
	and	a5,s1,a5
	mv	a2,a5
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	cap_endpoint_cap_set_capCanGrant
	mv	a4,a0
	mv	a5,a1
	sw	a4,-48(s0)
	sw	a5,-44(s0)
	lw	a5,-48(s0)
	sw	a5,-40(s0)
	lw	a5,-44(s0)
	sw	a5,-36(s0)
	j	.L1865
.L1870:
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_async_endpoint_cap_get_capAEPCanSend
	mv	s1,a0
	lw	a0,-68(s0)
	call	cap_rights_get_capAllowWrite
	mv	a5,a0
	and	a5,s1,a5
	mv	a2,a5
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_async_endpoint_cap_set_capAEPCanSend
	mv	a4,a0
	mv	a5,a1
	sw	a4,-56(s0)
	sw	a5,-52(s0)
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	cap_async_endpoint_cap_get_capAEPCanReceive
	mv	s1,a0
	lw	a0,-68(s0)
	call	cap_rights_get_capAllowRead
	mv	a5,a0
	and	a5,s1,a5
	mv	a2,a5
	lw	a0,-56(s0)
	lw	a1,-52(s0)
	call	cap_async_endpoint_cap_set_capAEPCanReceive
	mv	a4,a0
	mv	a5,a1
	sw	a4,-56(s0)
	sw	a5,-52(s0)
	lw	a5,-56(s0)
	sw	a5,-40(s0)
	lw	a5,-52(s0)
	sw	a5,-36(s0)
	j	.L1865
.L1866:
	lui	a5,%hi(__func__.6101)
	add	a3,a5,%lo(__func__.6101)
	li	a2,506
	lui	a5,%hi(.LC235)
	add	a1,a5,%lo(.LC235)
	lui	a5,%hi(.LC245)
	add	a0,a5,%lo(.LC245)
	call	_fail
.L1865:
	mv	a4,zero
	lw	a4,-40(s0)
	mv	a5,zero
	lw	a5,-36(s0)
	mv	s2,a4
	mv	s3,a5
	mv	a4,s2
	mv	a5,s3
	mv	a0,a4
	mv	a1,a5
	lw	ra,76(sp)
	lw	s0,72(sp)
	lw	s1,68(sp)
	lw	s2,64(sp)
	lw	s3,60(sp)
	add	sp,sp,80
	jr	ra
	.size	maskCapRights, .-maskCapRights
	.align	2
	.globl	createObject
	.type	createObject, @function
createObject:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s2,36(sp)
	sw	s3,32(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	lw	a4,-36(s0)
	li	a5,4
	bleu	a4,a5,.L1872
	lw	a3,-48(s0)
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	Arch_createObject
	mv	a4,a0
	mv	a5,a1
	sw	a4,-28(s0)
	sw	a5,-24(s0)
	j	.L1873
.L1872:
	lw	a4,-36(s0)
	li	a5,4
	bgtu	a4,a5,.L1874
	lw	a5,-36(s0)
	sll	a4,a5,2
	lui	a5,%hi(.L1876)
	add	a5,a5,%lo(.L1876)
	add	a5,a4,a5
	lw	a5,0(a5)
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L1876:
	.word	.L1875
	.word	.L1877
	.word	.L1878
	.word	.L1879
	.word	.L1880
	.text
.L1877:
	li	a1,512
	lw	a0,-40(s0)
	call	memzero
	lw	a5,-40(s0)
	add	a5,a5,256
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	mv	a0,a5
	call	Arch_initContext
	lw	a5,-20(s0)
	li	a4,1
	sw	a4,168(a5)
	lui	a5,%hi(ksCurDomain)
	lw	a4,%lo(ksCurDomain)(a5)
	lw	a5,-20(s0)
	sw	a4,160(a5)
	lw	a5,-20(s0)
	mv	a0,a5
	call	cap_thread_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-28(s0)
	sw	a5,-24(s0)
	j	.L1873
.L1878:
	li	a1,16
	lw	a0,-40(s0)
	call	memzero
	lw	a5,-40(s0)
	mv	a4,a5
	li	a3,1
	li	a2,1
	li	a1,1
	mv	a0,zero
	call	cap_endpoint_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-28(s0)
	sw	a5,-24(s0)
	j	.L1873
.L1879:
	li	a1,16
	lw	a0,-40(s0)
	call	memzero
	lw	a5,-40(s0)
	mv	a3,a5
	li	a2,1
	li	a1,1
	mv	a0,zero
	call	cap_async_endpoint_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-28(s0)
	sw	a5,-24(s0)
	j	.L1873
.L1880:
	lw	a5,-44(s0)
	add	a5,a5,4
	li	a4,1
	sll	a5,a4,a5
	mv	a1,a5
	lw	a0,-40(s0)
	call	memzero
	lw	a5,-44(s0)
	lw	a4,-40(s0)
	mv	a3,a4
	mv	a2,zero
	mv	a1,zero
	mv	a0,a5
	call	cap_cnode_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-28(s0)
	sw	a5,-24(s0)
	j	.L1873
.L1875:
	lw	a5,-44(s0)
	lw	a4,-40(s0)
	mv	a2,a4
	mv	a1,a5
	lw	a0,-48(s0)
	call	cap_untyped_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-28(s0)
	sw	a5,-24(s0)
	j	.L1873
.L1874:
	lui	a5,%hi(__func__.6115)
	add	a3,a5,%lo(__func__.6115)
	li	a2,568
	lui	a5,%hi(.LC235)
	add	a1,a5,%lo(.LC235)
	lui	a5,%hi(.LC236)
	add	a0,a5,%lo(.LC236)
	call	_fail
.L1873:
	mv	a4,zero
	lw	a4,-28(s0)
	mv	a5,zero
	lw	a5,-24(s0)
	mv	s2,a4
	mv	s3,a5
	mv	a4,s2
	mv	a5,s3
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s2,36(sp)
	lw	s3,32(sp)
	add	sp,sp,48
	jr	ra
	.size	createObject, .-createObject
	.align	2
	.globl	createNewObjects
	.type	createNewObjects, @function
createNewObjects:
	add	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	add	s0,sp,80
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	mv	s1,a2
	sw	a3,-60(s0)
	sw	a4,-64(s0)
	sw	a5,-68(s0)
	lw	a5,-60(s0)
	sw	a5,-24(s0)
	lw	a1,-64(s0)
	lw	a0,-52(s0)
	call	getObjectSize
	sw	a0,-28(s0)
	sw	zero,-20(s0)
	j	.L1882
.L1883:
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	sll	a4,a4,a5
	lw	a5,-24(s0)
	add	a5,a4,a5
	mv	a4,a5
	lw	a5,-64(s0)
	lw	a3,-68(s0)
	mv	a2,a5
	mv	a1,a4
	lw	a0,-52(s0)
	call	createObject
	mv	a4,a0
	mv	a5,a1
	sw	a4,-36(s0)
	sw	a5,-32(s0)
	lw	a4,0(s1)
	lw	a3,4(s1)
	lw	a5,-20(s0)
	add	a5,a3,a5
	sll	a5,a5,4
	add	a5,a4,a5
	lw	a2,-36(s0)
	lw	a3,-32(s0)
	mv	a1,a5
	lw	a0,-56(s0)
	call	insertNewCap
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L1882:
	lw	a4,8(s1)
	lw	a5,-20(s0)
	bgtu	a4,a5,.L1883
	nop
	lw	ra,76(sp)
	lw	s0,72(sp)
	lw	s1,68(sp)
	add	sp,sp,80
	jr	ra
	.size	createNewObjects, .-createNewObjects
	.section	.rodata
	.align	2
.LC246:
	.string	"Attempted to invoke a null cap #%u."
	.align	2
.LC247:
	.string	"Attempted to invoke a zombie cap #%u."
	.align	2
.LC248:
	.string	"Attempted to invoke a read-only endpoint cap #%u."
	.align	2
.LC249:
	.string	"Attempted to invoke a read-only async-endpoint cap #%u."
	.align	2
.LC250:
	.string	"Attempted to invoke an invalid reply cap #%u."
	.text
	.align	2
	.globl	decodeInvocation
	.type	decodeInvocation, @function
decodeInvocation:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	add	s0,sp,64
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	mv	s1,a6
	sw	a7,-44(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	isArchCap
	mv	a5,a0
	beqz	a5,.L1885
	lw	a5,0(s1)
	sw	a5,-64(s0)
	lw	a5,4(s1)
	sw	a5,-60(s0)
	lw	a5,8(s1)
	sw	a5,-56(s0)
	add	a5,s0,-64
	lw	a7,4(s0)
	mv	a6,a5
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	lw	a3,-32(s0)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	Arch_decodeInvocation
	mv	a5,a0
	j	.L1886
.L1885:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_capType
	mv	a5,a0
	li	a4,62
	bgtu	a5,a4,.L1887
	sll	a4,a5,2
	lui	a5,%hi(.L1889)
	add	a5,a5,%lo(.L1889)
	add	a5,a4,a5
	lw	a5,0(a5)
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L1889:
	.word	.L1888
	.word	.L1887
	.word	.L1890
	.word	.L1887
	.word	.L1891
	.word	.L1887
	.word	.L1892
	.word	.L1887
	.word	.L1893
	.word	.L1887
	.word	.L1894
	.word	.L1887
	.word	.L1895
	.word	.L1887
	.word	.L1896
	.word	.L1887
	.word	.L1887
	.word	.L1887
	.word	.L1887
	.word	.L1887
	.word	.L1887
	.word	.L1887
	.word	.L1887
	.word	.L1887
	.word	.L1887
	.word	.L1887
	.word	.L1887
	.word	.L1887
	.word	.L1887
	.word	.L1887
	.word	.L1897
	.word	.L1887
	.word	.L1887
	.word	.L1887
	.word	.L1887
	.word	.L1887
	.word	.L1887
	.word	.L1887
	.word	.L1887
	.word	.L1887
	.word	.L1887
	.word	.L1887
	.word	.L1887
	.word	.L1887
	.word	.L1887
	.word	.L1887
	.word	.L1898
	.word	.L1887
	.word	.L1887
	.word	.L1887
	.word	.L1887
	.word	.L1887
	.word	.L1887
	.word	.L1887
	.word	.L1887
	.word	.L1887
	.word	.L1887
	.word	.L1887
	.word	.L1887
	.word	.L1887
	.word	.L1887
	.word	.L1887
	.word	.L1899
	.text
.L1888:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,608
	lui	a5,%hi(__func__.6143)
	add	a1,a5,%lo(__func__.6143)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lw	a1,-28(s0)
	lui	a5,%hi(.LC246)
	add	a0,a5,%lo(.LC246)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,2
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	sw	zero,4(a5)
	li	a5,3
	j	.L1886
.L1898:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,614
	lui	a5,%hi(__func__.6143)
	add	a1,a5,%lo(__func__.6143)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lw	a1,-28(s0)
	lui	a5,%hi(.LC247)
	add	a0,a5,%lo(.LC247)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,2
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	sw	zero,4(a5)
	li	a5,3
	j	.L1886
.L1891:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_endpoint_cap_get_capCanSend
	mv	a5,a0
	seqz	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L1900
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,622
	lui	a5,%hi(__func__.6143)
	add	a1,a5,%lo(__func__.6143)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lw	a1,-28(s0)
	lui	a5,%hi(.LC248)
	add	a0,a5,%lo(.LC248)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,2
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	sw	zero,4(a5)
	li	a5,3
	j	.L1886
.L1900:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_endpoint_cap_get_capEPPtr
	mv	a5,a0
	mv	s1,a5
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_endpoint_cap_get_capEPBadge
	mv	s2,a0
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_endpoint_cap_get_capCanGrant
	mv	a5,a0
	lw	a4,0(s0)
	lw	a3,-44(s0)
	mv	a2,a5
	mv	a1,s2
	mv	a0,s1
	call	performInvocation_Endpoint
	mv	a5,a0
	j	.L1886
.L1892:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_async_endpoint_cap_get_capAEPCanSend
	mv	a5,a0
	seqz	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L1901
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,637
	lui	a5,%hi(__func__.6143)
	add	a1,a5,%lo(__func__.6143)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lw	a1,-28(s0)
	lui	a5,%hi(.LC249)
	add	a0,a5,%lo(.LC249)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,2
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	sw	zero,4(a5)
	li	a5,3
	j	.L1886
.L1901:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_async_endpoint_cap_get_capAEPPtr
	mv	a5,a0
	mv	s1,a5
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_async_endpoint_cap_get_capAEPBadge
	mv	a5,a0
	mv	a1,a5
	mv	a0,s1
	call	performInvocation_AsyncEndpoint
	mv	a5,a0
	j	.L1886
.L1893:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_reply_cap_get_capReplyMaster
	mv	a5,a0
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L1902
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,652
	lui	a5,%hi(__func__.6143)
	add	a1,a5,%lo(__func__.6143)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lw	a1,-28(s0)
	lui	a5,%hi(.LC250)
	add	a0,a5,%lo(.LC250)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,2
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	sw	zero,4(a5)
	li	a5,3
	j	.L1886
.L1902:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_reply_cap_get_capTCBPtr
	mv	a5,a0
	lw	a1,-32(s0)
	mv	a0,a5
	call	performInvocation_Reply
	mv	a5,a0
	j	.L1886
.L1895:
	lw	a5,0(s1)
	sw	a5,-64(s0)
	lw	a5,4(s1)
	sw	a5,-60(s0)
	lw	a5,8(s1)
	sw	a5,-56(s0)
	add	a5,s0,-64
	lw	a7,4(s0)
	lw	a6,0(s0)
	lw	a4,-32(s0)
	lw	a2,-40(s0)
	lw	a3,-36(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	decodeTCBInvocation
	mv	a5,a0
	j	.L1886
.L1899:
	lw	a5,0(s1)
	sw	a5,-64(s0)
	lw	a5,4(s1)
	sw	a5,-60(s0)
	lw	a5,8(s1)
	sw	a5,-56(s0)
	add	a5,s0,-64
	lw	a3,4(s0)
	mv	a2,a5
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	decodeDomainInvocation
	mv	a5,a0
	j	.L1886
.L1894:
	lw	a5,0(s1)
	sw	a5,-64(s0)
	lw	a5,4(s1)
	sw	a5,-60(s0)
	lw	a5,8(s1)
	sw	a5,-56(s0)
	add	a4,s0,-64
	lw	a5,4(s0)
	lw	a2,-40(s0)
	lw	a3,-36(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	decodeCNodeInvocation
	mv	a5,a0
	j	.L1886
.L1890:
	lw	a5,0(s1)
	sw	a5,-64(s0)
	lw	a5,4(s1)
	sw	a5,-60(s0)
	lw	a5,8(s1)
	sw	a5,-56(s0)
	add	a5,s0,-64
	lw	a7,4(s0)
	lw	a6,0(s0)
	lw	a3,-40(s0)
	lw	a4,-36(s0)
	lw	a2,-32(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	decodeUntypedInvocation
	mv	a5,a0
	j	.L1886
.L1896:
	lw	a5,0(s1)
	sw	a5,-64(s0)
	lw	a5,4(s1)
	sw	a5,-60(s0)
	lw	a5,8(s1)
	sw	a5,-56(s0)
	add	a5,s0,-64
	lw	a4,4(s0)
	mv	a3,a5
	lw	a2,-32(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	decodeIRQControlInvocation
	mv	a5,a0
	j	.L1886
.L1897:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_irq_handler_cap_get_capIRQ
	mv	a2,a0
	lw	a5,0(s1)
	sw	a5,-64(s0)
	lw	a5,4(s1)
	sw	a5,-60(s0)
	lw	a5,8(s1)
	sw	a5,-56(s0)
	add	a5,s0,-64
	lw	a4,4(s0)
	mv	a3,a5
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	decodeIRQHandlerInvocation
	mv	a5,a0
	j	.L1886
.L1887:
	lui	a5,%hi(__func__.6143)
	add	a3,a5,%lo(__func__.6143)
	li	a2,685
	lui	a5,%hi(.LC235)
	add	a1,a5,%lo(.LC235)
	lui	a5,%hi(.LC245)
	add	a0,a5,%lo(.LC245)
	call	_fail
.L1886:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s1,52(sp)
	lw	s2,48(sp)
	add	sp,sp,64
	jr	ra
	.size	decodeInvocation, .-decodeInvocation
	.align	2
	.globl	performInvocation_Endpoint
	.type	performInvocation_Endpoint, @function
performInvocation_Endpoint:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	lui	a5,%hi(ksCurThread)
	lw	a4,%lo(ksCurThread)(a5)
	lw	a5,-20(s0)
	lw	a3,-28(s0)
	lw	a2,-24(s0)
	lw	a1,-36(s0)
	lw	a0,-32(s0)
	call	sendIPC
	mv	a5,zero
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	performInvocation_Endpoint, .-performInvocation_Endpoint
	.align	2
	.globl	performInvocation_AsyncEndpoint
	.type	performInvocation_AsyncEndpoint, @function
performInvocation_AsyncEndpoint:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	sendAsyncIPC
	mv	a5,zero
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	performInvocation_AsyncEndpoint, .-performInvocation_AsyncEndpoint
	.align	2
	.globl	performInvocation_Reply
	.type	performInvocation_Reply, @function
performInvocation_Reply:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	lw	a2,-24(s0)
	lw	a1,-20(s0)
	mv	a0,a5
	call	doReplyTransfer
	mv	a5,zero
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	performInvocation_Reply, .-performInvocation_Reply
	.align	2
	.type	addToBitmap, @function
addToBitmap:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a0,-40(s0)
	call	prio_to_l1index
	sw	a0,-20(s0)
	lui	a5,%hi(ksReadyQueuesL1Bitmap)
	lw	a4,-36(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(ksReadyQueuesL1Bitmap)
	add	a5,a4,a5
	lw	a4,0(a5)
	li	a3,1
	lw	a5,-20(s0)
	sll	a5,a3,a5
	or	a4,a4,a5
	lui	a5,%hi(ksReadyQueuesL1Bitmap)
	lw	a3,-36(s0)
	sll	a3,a3,2
	add	a5,a5,%lo(ksReadyQueuesL1Bitmap)
	add	a5,a3,a5
	sw	a4,0(a5)
	lui	a3,%hi(ksReadyQueuesL2Bitmap)
	lw	a4,-36(s0)
	mv	a5,a4
	sll	a5,a5,3
	add	a5,a5,a4
	lw	a4,-20(s0)
	add	a5,a5,a4
	sll	a4,a5,2
	add	a5,a3,%lo(ksReadyQueuesL2Bitmap)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-40(s0)
	and	a5,a5,31
	li	a3,1
	sll	a5,a3,a5
	or	a3,a4,a5
	lui	a2,%hi(ksReadyQueuesL2Bitmap)
	lw	a4,-36(s0)
	mv	a5,a4
	sll	a5,a5,3
	add	a5,a5,a4
	lw	a4,-20(s0)
	add	a5,a5,a4
	sll	a4,a5,2
	add	a5,a2,%lo(ksReadyQueuesL2Bitmap)
	add	a5,a4,a5
	sw	a3,0(a5)
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	addToBitmap, .-addToBitmap
	.align	2
	.type	removeFromBitmap, @function
removeFromBitmap:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a0,-40(s0)
	call	prio_to_l1index
	sw	a0,-20(s0)
	lui	a3,%hi(ksReadyQueuesL2Bitmap)
	lw	a4,-36(s0)
	mv	a5,a4
	sll	a5,a5,3
	add	a5,a5,a4
	lw	a4,-20(s0)
	add	a5,a5,a4
	sll	a4,a5,2
	add	a5,a3,%lo(ksReadyQueuesL2Bitmap)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-40(s0)
	and	a5,a5,31
	li	a3,1
	sll	a5,a3,a5
	not	a5,a5
	and	a3,a4,a5
	lui	a2,%hi(ksReadyQueuesL2Bitmap)
	lw	a4,-36(s0)
	mv	a5,a4
	sll	a5,a5,3
	add	a5,a5,a4
	lw	a4,-20(s0)
	add	a5,a5,a4
	sll	a4,a5,2
	add	a5,a2,%lo(ksReadyQueuesL2Bitmap)
	add	a5,a4,a5
	sw	a3,0(a5)
	lui	a3,%hi(ksReadyQueuesL2Bitmap)
	lw	a4,-36(s0)
	mv	a5,a4
	sll	a5,a5,3
	add	a5,a5,a4
	lw	a4,-20(s0)
	add	a5,a5,a4
	sll	a4,a5,2
	add	a5,a3,%lo(ksReadyQueuesL2Bitmap)
	add	a5,a4,a5
	lw	a5,0(a5)
	seqz	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L1912
	lui	a5,%hi(ksReadyQueuesL1Bitmap)
	lw	a4,-36(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(ksReadyQueuesL1Bitmap)
	add	a5,a4,a5
	lw	a4,0(a5)
	li	a3,1
	lw	a5,-20(s0)
	sll	a5,a3,a5
	not	a5,a5
	and	a4,a4,a5
	lui	a5,%hi(ksReadyQueuesL1Bitmap)
	lw	a3,-36(s0)
	sll	a3,a3,2
	add	a5,a5,%lo(ksReadyQueuesL1Bitmap)
	add	a5,a3,a5
	sw	a4,0(a5)
.L1912:
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	removeFromBitmap, .-removeFromBitmap
	.align	2
	.globl	tcbSchedEnqueue
	.type	tcbSchedEnqueue, @function
tcbSchedEnqueue:
	add	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	add	s0,sp,80
	sw	a0,-52(s0)
	lw	a5,-52(s0)
	lw	a4,128(a5)
	sw	a4,-80(s0)
	lw	a4,132(a5)
	sw	a4,-76(s0)
	lw	a5,136(a5)
	sw	a5,-72(s0)
	add	a5,s0,-80
	mv	a0,a5
	call	thread_state_get_tcbQueued
	mv	a5,a0
	bnez	a5,.L1917
	lw	a5,-52(s0)
	lw	a5,160(a5)
	sw	a5,-20(s0)
	lw	a5,-52(s0)
	lw	a5,164(a5)
	sw	a5,-24(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	ready_queues_index
	sw	a0,-28(s0)
	lui	a5,%hi(ksReadyQueues)
	lw	a4,-28(s0)
	sll	a4,a4,3
	add	a5,a5,%lo(ksReadyQueues)
	add	a5,a4,a5
	lw	a4,0(a5)
	sw	a4,-36(s0)
	lw	a5,4(a5)
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	bnez	a5,.L1915
	lw	a5,-52(s0)
	sw	a5,-32(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	addToBitmap
	j	.L1916
.L1915:
	lw	a5,-36(s0)
	lw	a4,-52(s0)
	sw	a4,184(a5)
.L1916:
	lw	a5,-52(s0)
	sw	zero,184(a5)
	lw	a4,-36(s0)
	lw	a5,-52(s0)
	sw	a4,180(a5)
	lw	a5,-52(s0)
	sw	a5,-36(s0)
	lui	a5,%hi(ksReadyQueues)
	lw	a4,-28(s0)
	sll	a4,a4,3
	add	a5,a5,%lo(ksReadyQueues)
	add	a5,a4,a5
	lw	a4,-36(s0)
	sw	a4,0(a5)
	lw	a4,-32(s0)
	sw	a4,4(a5)
	lw	a5,-52(s0)
	add	a5,a5,128
	li	a1,1
	mv	a0,a5
	call	thread_state_ptr_set_tcbQueued
.L1917:
	nop
	lw	ra,76(sp)
	lw	s0,72(sp)
	add	sp,sp,80
	jr	ra
	.size	tcbSchedEnqueue, .-tcbSchedEnqueue
	.align	2
	.globl	tcbSchedAppend
	.type	tcbSchedAppend, @function
tcbSchedAppend:
	add	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	add	s0,sp,80
	sw	a0,-52(s0)
	lw	a5,-52(s0)
	lw	a4,128(a5)
	sw	a4,-80(s0)
	lw	a4,132(a5)
	sw	a4,-76(s0)
	lw	a5,136(a5)
	sw	a5,-72(s0)
	add	a5,s0,-80
	mv	a0,a5
	call	thread_state_get_tcbQueued
	mv	a5,a0
	bnez	a5,.L1922
	lw	a5,-52(s0)
	lw	a5,160(a5)
	sw	a5,-20(s0)
	lw	a5,-52(s0)
	lw	a5,164(a5)
	sw	a5,-24(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	ready_queues_index
	sw	a0,-28(s0)
	lui	a5,%hi(ksReadyQueues)
	lw	a4,-28(s0)
	sll	a4,a4,3
	add	a5,a5,%lo(ksReadyQueues)
	add	a5,a4,a5
	lw	a4,0(a5)
	sw	a4,-36(s0)
	lw	a5,4(a5)
	sw	a5,-32(s0)
	lw	a5,-36(s0)
	bnez	a5,.L1920
	lw	a5,-52(s0)
	sw	a5,-36(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	addToBitmap
	j	.L1921
.L1920:
	lw	a5,-32(s0)
	lw	a4,-52(s0)
	sw	a4,180(a5)
.L1921:
	lw	a4,-32(s0)
	lw	a5,-52(s0)
	sw	a4,184(a5)
	lw	a5,-52(s0)
	sw	zero,180(a5)
	lw	a5,-52(s0)
	sw	a5,-32(s0)
	lui	a5,%hi(ksReadyQueues)
	lw	a4,-28(s0)
	sll	a4,a4,3
	add	a5,a5,%lo(ksReadyQueues)
	add	a5,a4,a5
	lw	a4,-36(s0)
	sw	a4,0(a5)
	lw	a4,-32(s0)
	sw	a4,4(a5)
	lw	a5,-52(s0)
	add	a5,a5,128
	li	a1,1
	mv	a0,a5
	call	thread_state_ptr_set_tcbQueued
.L1922:
	nop
	lw	ra,76(sp)
	lw	s0,72(sp)
	add	sp,sp,80
	jr	ra
	.size	tcbSchedAppend, .-tcbSchedAppend
	.align	2
	.globl	tcbSchedDequeue
	.type	tcbSchedDequeue, @function
tcbSchedDequeue:
	add	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	add	s0,sp,80
	sw	a0,-52(s0)
	lw	a5,-52(s0)
	lw	a4,128(a5)
	sw	a4,-80(s0)
	lw	a4,132(a5)
	sw	a4,-76(s0)
	lw	a5,136(a5)
	sw	a5,-72(s0)
	add	a5,s0,-80
	mv	a0,a5
	call	thread_state_get_tcbQueued
	mv	a5,a0
	beqz	a5,.L1929
	lw	a5,-52(s0)
	lw	a5,160(a5)
	sw	a5,-20(s0)
	lw	a5,-52(s0)
	lw	a5,164(a5)
	sw	a5,-24(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	ready_queues_index
	sw	a0,-28(s0)
	lui	a5,%hi(ksReadyQueues)
	lw	a4,-28(s0)
	sll	a4,a4,3
	add	a5,a5,%lo(ksReadyQueues)
	add	a5,a4,a5
	lw	a4,0(a5)
	sw	a4,-36(s0)
	lw	a5,4(a5)
	sw	a5,-32(s0)
	lw	a5,-52(s0)
	lw	a5,184(a5)
	beqz	a5,.L1925
	lw	a5,-52(s0)
	lw	a5,184(a5)
	lw	a4,-52(s0)
	lw	a4,180(a4)
	sw	a4,180(a5)
	j	.L1926
.L1925:
	lw	a5,-52(s0)
	lw	a5,180(a5)
	sw	a5,-36(s0)
	lw	a5,-52(s0)
	lw	a5,180(a5)
	seqz	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L1926
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	removeFromBitmap
.L1926:
	lw	a5,-52(s0)
	lw	a5,180(a5)
	beqz	a5,.L1927
	lw	a5,-52(s0)
	lw	a5,180(a5)
	lw	a4,-52(s0)
	lw	a4,184(a4)
	sw	a4,184(a5)
	j	.L1928
.L1927:
	lw	a5,-52(s0)
	lw	a5,184(a5)
	sw	a5,-32(s0)
.L1928:
	lui	a5,%hi(ksReadyQueues)
	lw	a4,-28(s0)
	sll	a4,a4,3
	add	a5,a5,%lo(ksReadyQueues)
	add	a5,a4,a5
	lw	a4,-36(s0)
	sw	a4,0(a5)
	lw	a4,-32(s0)
	sw	a4,4(a5)
	lw	a5,-52(s0)
	add	a5,a5,128
	mv	a1,zero
	mv	a0,a5
	call	thread_state_ptr_set_tcbQueued
.L1929:
	nop
	lw	ra,76(sp)
	lw	s0,72(sp)
	add	sp,sp,80
	jr	ra
	.size	tcbSchedDequeue, .-tcbSchedDequeue
	.align	2
	.globl	tcbEPAppend
	.type	tcbEPAppend, @function
tcbEPAppend:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-44(s0)
	sw	a2,-40(s0)
	lw	a5,-44(s0)
	bnez	a5,.L1931
	lw	a5,-36(s0)
	sw	a5,-44(s0)
	j	.L1932
.L1931:
	lw	a5,-40(s0)
	lw	a4,-36(s0)
	sw	a4,188(a5)
.L1932:
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	sw	a4,192(a5)
	lw	a5,-36(s0)
	sw	zero,188(a5)
	lw	a5,-36(s0)
	sw	a5,-40(s0)
	lw	a5,-44(s0)
	sw	a5,-24(s0)
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	tcbEPAppend, .-tcbEPAppend
	.align	2
	.globl	tcbEPDequeue
	.type	tcbEPDequeue, @function
tcbEPDequeue:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-44(s0)
	sw	a2,-40(s0)
	lw	a5,-36(s0)
	lw	a5,192(a5)
	beqz	a5,.L1935
	lw	a5,-36(s0)
	lw	a5,192(a5)
	lw	a4,-36(s0)
	lw	a4,188(a4)
	sw	a4,188(a5)
	j	.L1936
.L1935:
	lw	a5,-36(s0)
	lw	a5,188(a5)
	sw	a5,-44(s0)
.L1936:
	lw	a5,-36(s0)
	lw	a5,188(a5)
	beqz	a5,.L1937
	lw	a5,-36(s0)
	lw	a5,188(a5)
	lw	a4,-36(s0)
	lw	a4,192(a4)
	sw	a4,192(a5)
	j	.L1938
.L1937:
	lw	a5,-36(s0)
	lw	a5,192(a5)
	sw	a5,-40(s0)
.L1938:
	lw	a5,-44(s0)
	sw	a5,-24(s0)
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a6,a4
	mv	a7,a5
	mv	a4,a6
	mv	a5,a7
	mv	a0,a4
	mv	a1,a5
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	tcbEPDequeue, .-tcbEPDequeue
	.align	2
	.globl	getExtraCPtr
	.type	getExtraCPtr, @function
getExtraCPtr:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	add	a5,a5,122
	sll	a5,a5,2
	lw	a4,-20(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	getExtraCPtr, .-getExtraCPtr
	.align	2
	.globl	setExtraBadge
	.type	setExtraBadge, @function
setExtraBadge:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	lw	a5,-28(s0)
	add	a5,a5,122
	sll	a5,a5,2
	lw	a4,-20(s0)
	add	a5,a4,a5
	lw	a4,-24(s0)
	sw	a4,0(a5)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	setExtraBadge, .-setExtraBadge
	.section	.rodata
	.align	2
.LC251:
	.string	"Assertion failed: cap_get_capType(masterCap) == cap_reply_cap\n"
	.align	2
.LC252:
	.string	"Assertion failed: cap_reply_cap_get_capReplyMaster(masterCap)\n"
	.align	2
.LC253:
	.string	"Assertion failed: ((tcb_t *)(cap_reply_cap_get_capTCBPtr(masterCap))) == ((void *)0)\n"
	.align	2
.LC254:
	.string	"Assertion failed: cap_get_capType(callerCap) == cap_null_cap\n"
	.text
	.align	2
	.globl	setupCallerCap
	.type	setupCallerCap, @function
setupCallerCap:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	add	s0,sp,64
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	li	a1,5
	lw	a0,-52(s0)
	call	setThreadState
	lw	a5,-52(s0)
	and	a5,a5,-512
	add	a5,a5,32
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	lw	a4,0(a5)
	sw	a4,-32(s0)
	lw	a5,4(a5)
	sw	a5,-28(s0)
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,8
	beq	a4,a5,.L1952
	lui	a5,%hi(.LC251)
	add	a0,a5,%lo(.LC251)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L1945
.L1952:
	nop
.L1945:
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	cap_reply_cap_get_capReplyMaster
	mv	a5,a0
	bnez	a5,.L1953
	lui	a5,%hi(.LC252)
	add	a0,a5,%lo(.LC252)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L1947
.L1953:
	nop
.L1947:
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	cap_reply_cap_get_capTCBPtr
	mv	a5,a0
	beqz	a5,.L1954
	lui	a5,%hi(.LC253)
	add	a0,a5,%lo(.LC253)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L1949
.L1954:
	nop
.L1949:
	lw	a5,-20(s0)
	lw	a4,-56(s0)
	mv	a1,a4
	mv	a0,a5
	call	cap_reply_cap_ptr_set_capTCBPtr
	lw	a5,-56(s0)
	and	a5,a5,-512
	add	a5,a5,48
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	lw	a4,0(a5)
	sw	a4,-40(s0)
	lw	a5,4(a5)
	sw	a5,-36(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_get_capType
	mv	a5,a0
	beqz	a5,.L1955
	lui	a5,%hi(.LC254)
	add	a0,a5,%lo(.LC254)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L1951
.L1955:
	nop
.L1951:
	lw	a5,-52(s0)
	lw	s1,-24(s0)
	mv	a2,a5
	mv	a1,zero
	mv	a0,zero
	call	cap_reply_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,0(s1)
	sw	a5,4(s1)
	nop
	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s1,52(sp)
	add	sp,sp,64
	jr	ra
	.size	setupCallerCap, .-setupCallerCap
	.section	.rodata
	.align	2
.LC255:
	.string	"Assertion failed: cap_reply_cap_get_capInCDT(callerSlot->cap) == cap_reply_cap_get_capInCDT(replySlot->cap)\n"
	.text
	.align	2
	.globl	deleteCallerCap
	.type	deleteCallerCap, @function
deleteCallerCap:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	and	a5,a5,-512
	add	a5,a5,48
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a4,a0
	li	a5,8
	bne	a4,a5,.L1965
	lw	a5,-20(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_reply_cap_get_capTCBPtr
	mv	a5,a0
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	beqz	a5,.L1958
	lw	a5,-24(s0)
	and	a5,a5,-512
	add	a5,a5,32
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a4,a0
	li	a5,8
	beq	a4,a5,.L1966
	lui	a5,%hi(.LC173)
	add	a0,a5,%lo(.LC173)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L1960
.L1966:
	nop
.L1960:
	lw	a5,-20(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_reply_cap_get_capInCDT
	mv	s1,a0
	lw	a5,-28(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_reply_cap_get_capInCDT
	mv	a5,a0
	beq	s1,a5,.L1967
	lui	a5,%hi(.LC255)
	add	a0,a5,%lo(.LC255)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L1962
.L1967:
	nop
.L1962:
	lw	a5,-28(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_reply_cap_get_capInCDT
	mv	a5,a0
	beqz	a5,.L1963
	lw	a0,-28(s0)
	call	cdtRemove
	lw	a5,-28(s0)
	mv	a1,zero
	mv	a0,a5
	call	cap_reply_cap_ptr_set_capInCDT
.L1963:
	lw	a5,-28(s0)
	mv	a1,zero
	mv	a0,a5
	call	cap_reply_cap_ptr_set_capTCBPtr
.L1958:
	lw	a5,-20(s0)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_reply_cap_get_capInCDT
	mv	a5,a0
	beqz	a5,.L1964
	lw	a0,-20(s0)
	call	cdtRemove
.L1964:
	lw	s1,-20(s0)
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,0(s1)
	sw	a5,4(s1)
.L1965:
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	add	sp,sp,48
	jr	ra
	.size	deleteCallerCap, .-deleteCallerCap
	.comm	current_extra_caps,12,4
	.align	2
	.globl	lookupExtraCaps
	.type	lookupExtraCaps, @function
lookupExtraCaps:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	add	s0,sp,64
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	lw	a5,-56(s0)
	bnez	a5,.L1969
	lui	a5,%hi(current_extra_caps)
	sw	zero,%lo(current_extra_caps)(a5)
	mv	a5,zero
	j	.L1975
.L1969:
	lw	a0,-60(s0)
	call	message_info_get_msgExtraCaps
	sw	a0,-24(s0)
	sw	zero,-20(s0)
	j	.L1971
.L1973:
	lw	a1,-20(s0)
	lw	a0,-56(s0)
	call	getExtraCPtr
	sw	a0,-28(s0)
	lw	a1,-28(s0)
	lw	a0,-52(s0)
	call	lookupSlot
	mv	a4,a0
	mv	a5,a1
	sw	a4,-36(s0)
	sw	a5,-32(s0)
	lw	a5,-36(s0)
	beqz	a5,.L1972
	mv	a1,zero
	lw	a0,-28(s0)
	call	fault_cap_fault_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_fault)
	sw	a4,%lo(current_fault)(a3)
	add	a3,a3,%lo(current_fault)
	sw	a5,4(a3)
	lw	a5,-36(s0)
	j	.L1975
.L1972:
	lw	a4,-32(s0)
	lui	a5,%hi(current_extra_caps)
	lw	a3,-20(s0)
	sll	a3,a3,2
	add	a5,a5,%lo(current_extra_caps)
	add	a5,a3,a5
	sw	a4,0(a5)
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L1971:
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	bltu	a4,a5,.L1973
	lw	a4,-20(s0)
	li	a5,2
	bgtu	a4,a5,.L1974
	lui	a5,%hi(current_extra_caps)
	lw	a4,-20(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(current_extra_caps)
	add	a5,a4,a5
	sw	zero,0(a5)
.L1974:
	mv	a5,zero
.L1975:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	add	sp,sp,64
	jr	ra
	.size	lookupExtraCaps, .-lookupExtraCaps
	.align	2
	.globl	copyMRs
	.type	copyMRs, @function
copyMRs:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	add	s0,sp,64
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	zero,-20(s0)
	j	.L1977
.L1979:
	lui	a5,%hi(msgRegisters)
	lw	a4,-20(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(msgRegisters)
	add	a5,a4,a5
	lw	s1,0(a5)
	lui	a5,%hi(msgRegisters)
	lw	a4,-20(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(msgRegisters)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a1,a5
	lw	a0,-36(s0)
	call	getRegister
	mv	a5,a0
	mv	a2,a5
	mv	a1,s1
	lw	a0,-44(s0)
	call	setRegister
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L1977:
	lw	a4,-20(s0)
	lw	a5,-52(s0)
	bgeu	a4,a5,.L1978
	lw	a4,-20(s0)
	li	a5,3
	bleu	a4,a5,.L1979
.L1978:
	lw	a5,-48(s0)
	beqz	a5,.L1980
	lw	a5,-40(s0)
	bnez	a5,.L1983
.L1980:
	lw	a5,-20(s0)
	j	.L1982
.L1984:
	lw	a5,-20(s0)
	add	a5,a5,1
	sll	a5,a5,2
	lw	a4,-48(s0)
	add	a5,a4,a5
	lw	a4,-20(s0)
	add	a4,a4,1
	sll	a4,a4,2
	lw	a3,-40(s0)
	add	a4,a3,a4
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L1983:
	lw	a4,-20(s0)
	lw	a5,-52(s0)
	bltu	a4,a5,.L1984
	lw	a5,-20(s0)
.L1982:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s1,52(sp)
	add	sp,sp,64
	jr	ra
	.size	copyMRs, .-copyMRs
	.section	.rodata
	.align	2
.LC256:
	.string	"TCB: Illegal operation."
	.text
	.align	2
	.globl	decodeTCBInvocation
	.type	decodeTCBInvocation, @function
decodeTCBInvocation:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	add	s0,sp,64
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-32(s0)
	sw	a3,-28(s0)
	sw	a4,-36(s0)
	mv	ra,a5
	sw	a6,-40(s0)
	sw	a7,-44(s0)
	lw	a4,-20(s0)
	li	a5,12
	bgtu	a4,a5,.L1986
	lw	a5,-20(s0)
	sll	a4,a5,2
	lui	a5,%hi(.L1988)
	add	a5,a5,%lo(.L1988)
	add	a5,a4,a5
	lw	a5,0(a5)
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L1988:
	.word	.L1986
	.word	.L1986
	.word	.L1987
	.word	.L1989
	.word	.L1990
	.word	.L1991
	.word	.L1992
	.word	.L1993
	.word	.L1994
	.word	.L1995
	.word	.L1996
	.word	.L1997
	.word	.L1998
	.text
.L1987:
	lw	a4,-44(s0)
	lw	a3,-40(s0)
	lw	a2,-24(s0)
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	decodeReadRegisters
	mv	a5,a0
	j	.L1999
.L1989:
	lw	a3,-44(s0)
	lw	a2,-24(s0)
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	decodeWriteRegisters
	mv	a5,a0
	j	.L1999
.L1990:
	lw	a5,0(ra)
	sw	a5,-64(s0)
	lw	a5,4(ra)
	sw	a5,-60(s0)
	lw	a5,8(ra)
	sw	a5,-56(s0)
	add	a5,s0,-64
	lw	a4,-44(s0)
	mv	a3,a5
	lw	a2,-24(s0)
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	decodeCopyRegisters
	mv	a5,a0
	j	.L1999
.L1995:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	cap_thread_cap_get_capTCBPtr
	mv	a5,a0
	mv	a0,a5
	call	invokeTCB_Suspend
	mv	a5,a0
	j	.L1999
.L1996:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	cap_thread_cap_get_capTCBPtr
	mv	a5,a0
	mv	a0,a5
	call	invokeTCB_Resume
	mv	a5,a0
	j	.L1999
.L1991:
	lw	a5,0(ra)
	sw	a5,-64(s0)
	lw	a5,4(ra)
	sw	a5,-60(s0)
	lw	a5,8(ra)
	sw	a5,-56(s0)
	add	a4,s0,-64
	lw	a5,-44(s0)
	lw	a3,-36(s0)
	lw	a2,-24(s0)
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	decodeTCBConfigure
	mv	a5,a0
	j	.L1999
.L1992:
	lw	a3,-44(s0)
	lw	a2,-24(s0)
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	decodeSetPriority
	mv	a5,a0
	j	.L1999
.L1993:
	lw	a5,0(ra)
	sw	a5,-64(s0)
	lw	a5,4(ra)
	sw	a5,-60(s0)
	lw	a5,8(ra)
	sw	a5,-56(s0)
	add	a4,s0,-64
	lw	a5,-44(s0)
	lw	a3,-36(s0)
	lw	a2,-24(s0)
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	decodeSetIPCBuffer
	mv	a5,a0
	j	.L1999
.L1994:
	lw	a5,0(ra)
	sw	a5,-64(s0)
	lw	a5,4(ra)
	sw	a5,-60(s0)
	lw	a5,8(ra)
	sw	a5,-56(s0)
	add	a4,s0,-64
	lw	a5,-44(s0)
	lw	a3,-36(s0)
	lw	a2,-24(s0)
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	decodeSetSpace
	mv	a5,a0
	j	.L1999
.L1997:
	lw	a5,0(ra)
	sw	a5,-64(s0)
	lw	a5,4(ra)
	sw	a5,-60(s0)
	lw	a5,8(ra)
	sw	a5,-56(s0)
	add	a5,s0,-64
	mv	a2,a5
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	decodeBindAEP
	mv	a5,a0
	j	.L1999
.L1998:
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	decodeUnbindAEP
	mv	a5,a0
	j	.L1999
.L1986:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,358
	lui	a5,%hi(__func__.6286)
	add	a1,a5,%lo(__func__.6286)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC256)
	add	a0,a5,%lo(.LC256)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
.L1999:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s1,52(sp)
	add	sp,sp,64
	jr	ra
	.size	decodeTCBInvocation, .-decodeTCBInvocation
	.section	.rodata
	.align	2
.LC257:
	.string	"TCB CopyRegisters: Truncated message."
	.align	2
.LC258:
	.string	"TCB CopyRegisters: Invalid source TCB."
	.text
	.align	2
	.globl	decodeCopyRegisters
	.type	decodeCopyRegisters, @function
decodeCopyRegisters:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	add	s0,sp,64
	sw	a0,-56(s0)
	sw	a1,-52(s0)
	sw	a2,-60(s0)
	mv	s1,a3
	sw	a4,-64(s0)
	lw	a5,-60(s0)
	beqz	a5,.L2001
	lw	a5,0(s1)
	bnez	a5,.L2002
.L2001:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,381
	lui	a5,%hi(__func__.6302)
	add	a1,a5,%lo(__func__.6302)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC257)
	add	a0,a5,%lo(.LC257)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,7
	sw	a4,24(a5)
	li	a5,3
	j	.L2006
.L2002:
	lw	a1,-64(s0)
	mv	a0,zero
	call	getSyscallArg
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	srl	a5,a5,8
	mv	a0,a5
	call	Arch_decodeTransfer
	sw	a0,-24(s0)
	lw	a5,0(s1)
	lw	a4,0(a5)
	sw	a4,-36(s0)
	lw	a5,4(a5)
	sw	a5,-32(s0)
	lw	a0,-36(s0)
	lw	a1,-32(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,12
	bne	a4,a5,.L2004
	lw	a0,-36(s0)
	lw	a1,-32(s0)
	call	cap_thread_cap_get_capTCBPtr
	mv	a5,a0
	sw	a5,-28(s0)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a0,-56(s0)
	lw	a1,-52(s0)
	call	cap_thread_cap_get_capTCBPtr
	mv	a5,a0
	mv	a0,a5
	lw	a5,-20(s0)
	and	a2,a5,1
	lw	a5,-20(s0)
	and	a3,a5,2
	lw	a5,-20(s0)
	and	a4,a5,4
	lw	a5,-20(s0)
	and	a5,a5,8
	lw	a6,-24(s0)
	lw	a1,-28(s0)
	call	invokeTCB_CopyRegisters
	mv	a5,a0
	j	.L2006
.L2004:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,395
	lui	a5,%hi(__func__.6302)
	add	a1,a5,%lo(__func__.6302)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC258)
	add	a0,a5,%lo(.LC258)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,2
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,1
	sw	a4,4(a5)
	li	a5,3
.L2006:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s1,52(sp)
	add	sp,sp,64
	jr	ra
	.size	decodeCopyRegisters, .-decodeCopyRegisters
	.section	.rodata
	.align	2
.LC259:
	.string	"TCB ReadRegisters: Truncated message."
	.align	2
.LC260:
	.string	"TCB ReadRegisters: Attempted to read an invalid number of registers (%d)."
	.text
	.align	2
	.globl	decodeReadRegisters
	.type	decodeReadRegisters, @function
decodeReadRegisters:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	add	s0,sp,64
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	lw	a4,-44(s0)
	li	a5,1
	bgtu	a4,a5,.L2008
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,423
	lui	a5,%hi(__func__.6314)
	add	a1,a5,%lo(__func__.6314)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC259)
	add	a0,a5,%lo(.LC259)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,7
	sw	a4,24(a5)
	li	a5,3
	j	.L2009
.L2008:
	lw	a1,-52(s0)
	mv	a0,zero
	call	getSyscallArg
	sw	a0,-20(s0)
	lw	a1,-52(s0)
	li	a0,1
	call	getSyscallArg
	sw	a0,-24(s0)
	lw	a5,-24(s0)
	beqz	a5,.L2010
	lw	a4,-24(s0)
	li	a5,17
	bleu	a4,a5,.L2011
.L2010:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,433
	lui	a5,%hi(__func__.6314)
	add	a1,a5,%lo(__func__.6314)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lw	a5,-24(s0)
	mv	a1,a5
	lui	a5,%hi(.LC260)
	add	a0,a5,%lo(.LC260)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,4
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,1
	sw	a4,8(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,17
	sw	a4,12(a5)
	li	a5,3
	j	.L2009
.L2011:
	lw	a5,-20(s0)
	srl	a5,a5,8
	mv	a0,a5
	call	Arch_decodeTransfer
	sw	a0,-28(s0)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_thread_cap_get_capTCBPtr
	mv	a5,a0
	mv	a0,a5
	lw	a5,-20(s0)
	and	a5,a5,1
	lw	a4,-48(s0)
	lw	a3,-28(s0)
	lw	a2,-24(s0)
	mv	a1,a5
	call	invokeTCB_ReadRegisters
	mv	a5,a0
.L2009:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s1,52(sp)
	add	sp,sp,64
	jr	ra
	.size	decodeReadRegisters, .-decodeReadRegisters
	.section	.rodata
	.align	2
.LC261:
	.string	"TCB WriteRegisters: Truncated message."
	.align	2
.LC262:
	.string	"TCB WriteRegisters: Message too short for requested write size (%d/%d)."
	.text
	.align	2
	.globl	decodeWriteRegisters
	.type	decodeWriteRegisters, @function
decodeWriteRegisters:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	lw	a4,-44(s0)
	li	a5,1
	bgtu	a4,a5,.L2013
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,462
	lui	a5,%hi(__func__.6326)
	add	a1,a5,%lo(__func__.6326)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC261)
	add	a0,a5,%lo(.LC261)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,7
	sw	a4,24(a5)
	li	a5,3
	j	.L2014
.L2013:
	lw	a1,-48(s0)
	mv	a0,zero
	call	getSyscallArg
	sw	a0,-20(s0)
	lw	a1,-48(s0)
	li	a0,1
	call	getSyscallArg
	sw	a0,-24(s0)
	lw	a5,-44(s0)
	add	a4,a5,-2
	lw	a5,-24(s0)
	bgeu	a4,a5,.L2015
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,472
	lui	a5,%hi(__func__.6326)
	add	a1,a5,%lo(__func__.6326)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lw	a5,-44(s0)
	add	a5,a5,-2
	mv	a4,a5
	lw	a5,-24(s0)
	mv	a2,a5
	mv	a1,a4
	lui	a5,%hi(.LC262)
	add	a0,a5,%lo(.LC262)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,7
	sw	a4,24(a5)
	li	a5,3
	j	.L2014
.L2015:
	lw	a5,-20(s0)
	srl	a5,a5,8
	mv	a0,a5
	call	Arch_decodeTransfer
	sw	a0,-28(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_thread_cap_get_capTCBPtr
	mv	a5,a0
	sw	a5,-32(s0)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a5,-20(s0)
	and	a5,a5,1
	lw	a4,-48(s0)
	lw	a3,-28(s0)
	lw	a2,-24(s0)
	mv	a1,a5
	lw	a0,-32(s0)
	call	invokeTCB_WriteRegisters
	mv	a5,a0
.L2014:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	add	sp,sp,48
	jr	ra
	.size	decodeWriteRegisters, .-decodeWriteRegisters
	.section	.rodata
	.align	2
.LC263:
	.string	"TCB Configure: Truncated message."
	.align	2
.LC264:
	.string	"TCB Configure: Requested priority %d too high (max %d)."
	.align	2
.LC265:
	.string	"TCB Configure: CSpace or VSpace currently being deleted."
	.align	2
.LC266:
	.string	"TCB Configure: CSpace cap is invalid."
	.align	2
.LC267:
	.string	"TCB Configure: VSpace cap is invalid."
	.text
	.align	2
	.globl	decodeTCBConfigure
	.type	decodeTCBConfigure, @function
decodeTCBConfigure:
	add	sp,sp,-176
	sw	ra,172(sp)
	sw	s0,168(sp)
	sw	s1,164(sp)
	add	s0,sp,176
	sw	a0,-104(s0)
	sw	a1,-100(s0)
	sw	a2,-108(s0)
	sw	a3,-112(s0)
	mv	s1,a4
	sw	a5,-116(s0)
	lw	a4,-108(s0)
	li	a5,4
	bleu	a4,a5,.L2017
	lw	a5,0(s1)
	beqz	a5,.L2017
	lw	a5,4(s1)
	beqz	a5,.L2017
	lw	a5,8(s1)
	bnez	a5,.L2018
.L2017:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,504
	lui	a5,%hi(__func__.6346)
	add	a1,a5,%lo(__func__.6346)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC263)
	add	a0,a5,%lo(.LC263)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,7
	sw	a4,24(a5)
	li	a5,3
	j	.L2032
.L2018:
	lw	a1,-116(s0)
	mv	a0,zero
	call	getSyscallArg
	sw	a0,-24(s0)
	lw	a1,-116(s0)
	li	a0,1
	call	getSyscallArg
	sw	a0,-28(s0)
	lw	a1,-116(s0)
	li	a0,2
	call	getSyscallArg
	sw	a0,-32(s0)
	lw	a1,-116(s0)
	li	a0,3
	call	getSyscallArg
	sw	a0,-36(s0)
	lw	a1,-116(s0)
	li	a0,4
	call	getSyscallArg
	sw	a0,-40(s0)
	lw	a5,0(s1)
	sw	a5,-44(s0)
	lw	a5,0(s1)
	lw	a4,0(a5)
	sw	a4,-68(s0)
	lw	a5,4(a5)
	sw	a5,-64(s0)
	lw	a5,4(s1)
	sw	a5,-48(s0)
	lw	a5,4(s1)
	lw	a4,0(a5)
	sw	a4,-76(s0)
	lw	a5,4(a5)
	sw	a5,-72(s0)
	lw	a5,8(s1)
	sw	a5,-20(s0)
	lw	a5,8(s1)
	lw	a4,0(a5)
	sw	a4,-60(s0)
	lw	a5,4(a5)
	sw	a5,-56(s0)
	lw	a5,-28(s0)
	and	a5,a5,255
	sw	a5,-28(s0)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	lw	a4,164(a5)
	lw	a5,-28(s0)
	bgeu	a4,a5,.L2020
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,526
	lui	a5,%hi(__func__.6346)
	add	a1,a5,%lo(__func__.6346)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lw	a4,-28(s0)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	lw	a5,164(a5)
	mv	a2,a5
	mv	a1,a4
	lui	a5,%hi(.LC264)
	add	a0,a5,%lo(.LC264)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
	j	.L2032
.L2020:
	lw	a5,-40(s0)
	bnez	a5,.L2021
	sw	zero,-20(s0)
	j	.L2022
.L2021:
	add	a5,s0,-88
	lw	a2,-60(s0)
	lw	a3,-56(s0)
	lw	a1,-20(s0)
	mv	a0,a5
	call	deriveCap
	lw	a5,-88(s0)
	beqz	a5,.L2023
	lw	a5,-88(s0)
	j	.L2032
.L2023:
	lw	a5,-84(s0)
	sw	a5,-60(s0)
	lw	a5,-80(s0)
	sw	a5,-56(s0)
	lw	a1,-60(s0)
	lw	a2,-56(s0)
	lw	a0,-40(s0)
	call	checkValidIPCBuffer
	sw	a0,-52(s0)
	lw	a5,-52(s0)
	beqz	a5,.L2022
	lw	a5,-52(s0)
	j	.L2032
.L2022:
	lw	a0,-104(s0)
	lw	a1,-100(s0)
	call	cap_thread_cap_get_capTCBPtr
	mv	a5,a0
	and	a5,a5,-512
	mv	a0,a5
	call	slotCapLongRunningDelete
	mv	a5,a0
	bnez	a5,.L2024
	lw	a0,-104(s0)
	lw	a1,-100(s0)
	call	cap_thread_cap_get_capTCBPtr
	mv	a5,a0
	and	a5,a5,-512
	add	a5,a5,16
	mv	a0,a5
	call	slotCapLongRunningDelete
	mv	a5,a0
	beqz	a5,.L2025
.L2024:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,551
	lui	a5,%hi(__func__.6346)
	add	a1,a5,%lo(__func__.6346)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC265)
	add	a0,a5,%lo(.LC265)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
	j	.L2032
.L2025:
	lw	a5,-32(s0)
	beqz	a5,.L2026
	lw	a2,-68(s0)
	lw	a3,-64(s0)
	lw	a1,-32(s0)
	mv	a0,zero
	call	updateCapData
	mv	a4,a0
	mv	a5,a1
	sw	a4,-68(s0)
	sw	a5,-64(s0)
.L2026:
	add	a5,s0,-144
	lw	a2,-68(s0)
	lw	a3,-64(s0)
	lw	a1,-44(s0)
	mv	a0,a5
	call	deriveCap
	lw	a5,-144(s0)
	sw	a5,-88(s0)
	lw	a5,-140(s0)
	sw	a5,-84(s0)
	lw	a5,-136(s0)
	sw	a5,-80(s0)
	lw	a5,-88(s0)
	beqz	a5,.L2027
	lw	a5,-88(s0)
	j	.L2032
.L2027:
	lw	a5,-84(s0)
	sw	a5,-68(s0)
	lw	a5,-80(s0)
	sw	a5,-64(s0)
	lw	a0,-68(s0)
	lw	a1,-64(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,10
	beq	a4,a5,.L2028
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,569
	lui	a5,%hi(__func__.6346)
	add	a1,a5,%lo(__func__.6346)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC266)
	add	a0,a5,%lo(.LC266)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
	j	.L2032
.L2028:
	lw	a5,-36(s0)
	beqz	a5,.L2029
	lw	a2,-76(s0)
	lw	a3,-72(s0)
	lw	a1,-36(s0)
	mv	a0,zero
	call	updateCapData
	mv	a4,a0
	mv	a5,a1
	sw	a4,-76(s0)
	sw	a5,-72(s0)
.L2029:
	add	a5,s0,-144
	lw	a2,-76(s0)
	lw	a3,-72(s0)
	lw	a1,-48(s0)
	mv	a0,a5
	call	deriveCap
	lw	a5,-144(s0)
	sw	a5,-88(s0)
	lw	a5,-140(s0)
	sw	a5,-84(s0)
	lw	a5,-136(s0)
	sw	a5,-80(s0)
	lw	a5,-88(s0)
	beqz	a5,.L2030
	lw	a5,-88(s0)
	j	.L2032
.L2030:
	lw	a5,-84(s0)
	sw	a5,-76(s0)
	lw	a5,-80(s0)
	sw	a5,-72(s0)
	lw	a0,-76(s0)
	lw	a1,-72(s0)
	call	isValidVTableRoot
	mv	a5,a0
	bnez	a5,.L2031
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,585
	lui	a5,%hi(__func__.6346)
	add	a1,a5,%lo(__func__.6346)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC267)
	add	a0,a5,%lo(.LC267)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
	j	.L2032
.L2031:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a0,-104(s0)
	lw	a1,-100(s0)
	call	cap_thread_cap_get_capTCBPtr
	mv	a5,a0
	mv	a0,a5
	li	a5,7
	sw	a5,24(sp)
	lw	a5,-20(s0)
	sw	a5,20(sp)
	lw	a5,-60(s0)
	sw	a5,12(sp)
	lw	a5,-56(s0)
	sw	a5,16(sp)
	lw	a5,-40(s0)
	sw	a5,8(sp)
	lw	a5,-48(s0)
	sw	a5,4(sp)
	lw	a5,-72(s0)
	sw	a5,0(sp)
	lw	a7,-76(s0)
	lw	a6,-44(s0)
	lw	a4,-68(s0)
	lw	a5,-64(s0)
	lw	a3,-28(s0)
	lw	a2,-24(s0)
	lw	a1,-112(s0)
	call	invokeTCB_ThreadControl
	mv	a5,a0
.L2032:
	mv	a0,a5
	lw	ra,172(sp)
	lw	s0,168(sp)
	lw	s1,164(sp)
	add	sp,sp,176
	jr	ra
	.size	decodeTCBConfigure, .-decodeTCBConfigure
	.section	.rodata
	.align	2
.LC268:
	.string	"TCB SetPriority: Truncated message."
	.align	2
.LC269:
	.string	"TCB SetPriority: Requested priority %d too high (max %d)."
	.text
	.align	2
	.globl	decodeSetPriority
	.type	decodeSetPriority, @function
decodeSetPriority:
	add	sp,sp,-96
	sw	ra,92(sp)
	sw	s0,88(sp)
	sw	s1,84(sp)
	add	s0,sp,96
	sw	a0,-56(s0)
	sw	a1,-52(s0)
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	lw	a5,-60(s0)
	bnez	a5,.L2034
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,606
	lui	a5,%hi(__func__.6354)
	add	a1,a5,%lo(__func__.6354)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC268)
	add	a0,a5,%lo(.LC268)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,7
	sw	a4,24(a5)
	li	a5,3
	j	.L2035
.L2034:
	lw	a1,-64(s0)
	mv	a0,zero
	call	getSyscallArg
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	and	a5,a5,255
	sw	a5,-20(s0)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	lw	a4,164(a5)
	lw	a5,-20(s0)
	bgeu	a4,a5,.L2036
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,618
	lui	a5,%hi(__func__.6354)
	add	a1,a5,%lo(__func__.6354)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lw	a4,-20(s0)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	lw	a5,164(a5)
	mv	a2,a5
	mv	a1,a4
	lui	a5,%hi(.LC269)
	add	a0,a5,%lo(.LC269)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
	j	.L2035
.L2036:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a0,-56(s0)
	lw	a1,-52(s0)
	call	cap_thread_cap_get_capTCBPtr
	mv	a5,a0
	mv	s1,a5
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-44(s0)
	sw	a5,-40(s0)
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-36(s0)
	sw	a5,-32(s0)
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-28(s0)
	sw	a5,-24(s0)
	li	a5,1
	sw	a5,24(sp)
	sw	zero,20(sp)
	lw	a5,-28(s0)
	sw	a5,12(sp)
	lw	a5,-24(s0)
	sw	a5,16(sp)
	sw	zero,8(sp)
	sw	zero,4(sp)
	lw	a5,-32(s0)
	sw	a5,0(sp)
	lw	a7,-36(s0)
	mv	a6,zero
	lw	a4,-44(s0)
	lw	a5,-40(s0)
	lw	a3,-20(s0)
	mv	a2,zero
	mv	a1,zero
	mv	a0,s1
	call	invokeTCB_ThreadControl
	mv	a5,a0
.L2035:
	mv	a0,a5
	lw	ra,92(sp)
	lw	s0,88(sp)
	lw	s1,84(sp)
	add	sp,sp,96
	jr	ra
	.size	decodeSetPriority, .-decodeSetPriority
	.section	.rodata
	.align	2
.LC270:
	.string	"TCB SetIPCBuffer: Truncated message."
	.text
	.align	2
	.globl	decodeSetIPCBuffer
	.type	decodeSetIPCBuffer, @function
decodeSetIPCBuffer:
	add	sp,sp,-128
	sw	ra,124(sp)
	sw	s0,120(sp)
	sw	s1,116(sp)
	add	s0,sp,128
	sw	a0,-72(s0)
	sw	a1,-68(s0)
	sw	a2,-76(s0)
	sw	a3,-80(s0)
	mv	s1,a4
	sw	a5,-84(s0)
	lw	a5,-76(s0)
	beqz	a5,.L2038
	lw	a5,0(s1)
	bnez	a5,.L2039
.L2038:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,642
	lui	a5,%hi(__func__.6365)
	add	a1,a5,%lo(__func__.6365)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC270)
	add	a0,a5,%lo(.LC270)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,7
	sw	a4,24(a5)
	li	a5,3
	j	.L2046
.L2039:
	lw	a1,-84(s0)
	mv	a0,zero
	call	getSyscallArg
	sw	a0,-24(s0)
	lw	a5,0(s1)
	sw	a5,-20(s0)
	lw	a5,0(s1)
	lw	a4,0(a5)
	sw	a4,-52(s0)
	lw	a5,4(a5)
	sw	a5,-48(s0)
	lw	a5,-24(s0)
	bnez	a5,.L2041
	sw	zero,-20(s0)
	j	.L2042
.L2041:
	add	a5,s0,-64
	lw	a2,-52(s0)
	lw	a3,-48(s0)
	lw	a1,-20(s0)
	mv	a0,a5
	call	deriveCap
	lw	a5,-64(s0)
	beqz	a5,.L2043
	lw	a5,-64(s0)
	j	.L2046
.L2043:
	lw	a5,-60(s0)
	sw	a5,-52(s0)
	lw	a5,-56(s0)
	sw	a5,-48(s0)
	lw	a1,-52(s0)
	lw	a2,-48(s0)
	lw	a0,-24(s0)
	call	checkValidIPCBuffer
	sw	a0,-28(s0)
	lw	a5,-28(s0)
	beqz	a5,.L2042
	lw	a5,-28(s0)
	j	.L2046
.L2042:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a0,-72(s0)
	lw	a1,-68(s0)
	call	cap_thread_cap_get_capTCBPtr
	mv	a5,a0
	mv	s1,a5
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-44(s0)
	sw	a5,-40(s0)
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-36(s0)
	sw	a5,-32(s0)
	li	a5,2
	sw	a5,24(sp)
	lw	a5,-20(s0)
	sw	a5,20(sp)
	lw	a5,-52(s0)
	sw	a5,12(sp)
	lw	a5,-48(s0)
	sw	a5,16(sp)
	lw	a5,-24(s0)
	sw	a5,8(sp)
	sw	zero,4(sp)
	lw	a5,-32(s0)
	sw	a5,0(sp)
	lw	a7,-36(s0)
	mv	a6,zero
	lw	a4,-44(s0)
	lw	a5,-40(s0)
	mv	a3,zero
	mv	a2,zero
	lw	a1,-80(s0)
	mv	a0,s1
	call	invokeTCB_ThreadControl
	mv	a5,a0
.L2046:
	mv	a0,a5
	lw	ra,124(sp)
	lw	s0,120(sp)
	lw	s1,116(sp)
	add	sp,sp,128
	jr	ra
	.size	decodeSetIPCBuffer, .-decodeSetIPCBuffer
	.section	.rodata
	.align	2
.LC271:
	.string	"TCB SetSpace: Truncated message."
	.align	2
.LC272:
	.string	"TCB SetSpace: CSpace or VSpace currently being deleted."
	.align	2
.LC273:
	.string	"TCB SetSpace: Invalid CNode cap."
	.align	2
.LC274:
	.string	"TCB SetSpace: Invalid VSpace cap."
	.text
	.align	2
	.globl	decodeSetSpace
	.type	decodeSetSpace, @function
decodeSetSpace:
	add	sp,sp,-160
	sw	ra,156(sp)
	sw	s0,152(sp)
	sw	s1,148(sp)
	add	s0,sp,160
	sw	a0,-88(s0)
	sw	a1,-84(s0)
	sw	a2,-92(s0)
	sw	a3,-96(s0)
	mv	s1,a4
	sw	a5,-100(s0)
	lw	a4,-92(s0)
	li	a5,2
	bleu	a4,a5,.L2048
	lw	a5,0(s1)
	beqz	a5,.L2048
	lw	a5,4(s1)
	bnez	a5,.L2049
.L2048:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,691
	lui	a5,%hi(__func__.6383)
	add	a1,a5,%lo(__func__.6383)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC271)
	add	a0,a5,%lo(.LC271)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,7
	sw	a4,24(a5)
	li	a5,3
	j	.L2059
.L2049:
	lw	a1,-100(s0)
	mv	a0,zero
	call	getSyscallArg
	sw	a0,-20(s0)
	lw	a1,-100(s0)
	li	a0,1
	call	getSyscallArg
	sw	a0,-24(s0)
	lw	a1,-100(s0)
	li	a0,2
	call	getSyscallArg
	sw	a0,-28(s0)
	lw	a5,0(s1)
	sw	a5,-32(s0)
	lw	a5,0(s1)
	lw	a4,0(a5)
	sw	a4,-52(s0)
	lw	a5,4(a5)
	sw	a5,-48(s0)
	lw	a5,4(s1)
	sw	a5,-36(s0)
	lw	a5,4(s1)
	lw	a4,0(a5)
	sw	a4,-60(s0)
	lw	a5,4(a5)
	sw	a5,-56(s0)
	lw	a0,-88(s0)
	lw	a1,-84(s0)
	call	cap_thread_cap_get_capTCBPtr
	mv	a5,a0
	and	a5,a5,-512
	mv	a0,a5
	call	slotCapLongRunningDelete
	mv	a5,a0
	bnez	a5,.L2051
	lw	a0,-88(s0)
	lw	a1,-84(s0)
	call	cap_thread_cap_get_capTCBPtr
	mv	a5,a0
	and	a5,a5,-512
	add	a5,a5,16
	mv	a0,a5
	call	slotCapLongRunningDelete
	mv	a5,a0
	beqz	a5,.L2052
.L2051:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,709
	lui	a5,%hi(__func__.6383)
	add	a1,a5,%lo(__func__.6383)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC272)
	add	a0,a5,%lo(.LC272)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
	j	.L2059
.L2052:
	lw	a5,-24(s0)
	beqz	a5,.L2053
	lw	a2,-52(s0)
	lw	a3,-48(s0)
	lw	a1,-24(s0)
	mv	a0,zero
	call	updateCapData
	mv	a4,a0
	mv	a5,a1
	sw	a4,-52(s0)
	sw	a5,-48(s0)
.L2053:
	add	a5,s0,-72
	lw	a2,-52(s0)
	lw	a3,-48(s0)
	lw	a1,-32(s0)
	mv	a0,a5
	call	deriveCap
	lw	a5,-72(s0)
	beqz	a5,.L2054
	lw	a5,-72(s0)
	j	.L2059
.L2054:
	lw	a5,-68(s0)
	sw	a5,-52(s0)
	lw	a5,-64(s0)
	sw	a5,-48(s0)
	lw	a0,-52(s0)
	lw	a1,-48(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,10
	beq	a4,a5,.L2055
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,727
	lui	a5,%hi(__func__.6383)
	add	a1,a5,%lo(__func__.6383)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC273)
	add	a0,a5,%lo(.LC273)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
	j	.L2059
.L2055:
	lw	a5,-28(s0)
	beqz	a5,.L2056
	lw	a2,-60(s0)
	lw	a3,-56(s0)
	lw	a1,-28(s0)
	mv	a0,zero
	call	updateCapData
	mv	a4,a0
	mv	a5,a1
	sw	a4,-60(s0)
	sw	a5,-56(s0)
.L2056:
	add	a5,s0,-128
	lw	a2,-60(s0)
	lw	a3,-56(s0)
	lw	a1,-36(s0)
	mv	a0,a5
	call	deriveCap
	lw	a5,-128(s0)
	sw	a5,-72(s0)
	lw	a5,-124(s0)
	sw	a5,-68(s0)
	lw	a5,-120(s0)
	sw	a5,-64(s0)
	lw	a5,-72(s0)
	beqz	a5,.L2057
	lw	a5,-72(s0)
	j	.L2059
.L2057:
	lw	a5,-68(s0)
	sw	a5,-60(s0)
	lw	a5,-64(s0)
	sw	a5,-56(s0)
	lw	a0,-60(s0)
	lw	a1,-56(s0)
	call	isValidVTableRoot
	mv	a5,a0
	bnez	a5,.L2058
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,743
	lui	a5,%hi(__func__.6383)
	add	a1,a5,%lo(__func__.6383)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC274)
	add	a0,a5,%lo(.LC274)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
	j	.L2059
.L2058:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a0,-88(s0)
	lw	a1,-84(s0)
	call	cap_thread_cap_get_capTCBPtr
	mv	a5,a0
	mv	s1,a5
	call	cap_null_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-44(s0)
	sw	a5,-40(s0)
	li	a5,4
	sw	a5,24(sp)
	sw	zero,20(sp)
	lw	a5,-44(s0)
	sw	a5,12(sp)
	lw	a5,-40(s0)
	sw	a5,16(sp)
	sw	zero,8(sp)
	lw	a5,-36(s0)
	sw	a5,4(sp)
	lw	a5,-56(s0)
	sw	a5,0(sp)
	lw	a7,-60(s0)
	lw	a6,-32(s0)
	lw	a4,-52(s0)
	lw	a5,-48(s0)
	mv	a3,zero
	lw	a2,-20(s0)
	lw	a1,-96(s0)
	mv	a0,s1
	call	invokeTCB_ThreadControl
	mv	a5,a0
.L2059:
	mv	a0,a5
	lw	ra,156(sp)
	lw	s0,152(sp)
	lw	s1,148(sp)
	add	sp,sp,160
	jr	ra
	.size	decodeSetSpace, .-decodeSetSpace
	.section	.rodata
	.align	2
.LC275:
	.string	"Domain Configure: Truncated message."
	.align	2
.LC276:
	.string	"Domain Configure: invalid domain (%u >= %u)."
	.align	2
.LC277:
	.string	"Domain Configure: thread cap required."
	.text
	.align	2
	.globl	decodeDomainInvocation
	.type	decodeDomainInvocation, @function
decodeDomainInvocation:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	mv	s1,a2
	sw	a3,-44(s0)
	lw	a5,-36(s0)
	add	a5,a5,-29
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L2061
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
	j	.L2067
.L2061:
	lw	a5,-40(s0)
	seqz	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L2063
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,770
	lui	a5,%hi(__func__.6392)
	add	a1,a5,%lo(__func__.6392)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC275)
	add	a0,a5,%lo(.LC275)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,7
	sw	a4,24(a5)
	li	a5,3
	j	.L2067
.L2063:
	lw	a1,-44(s0)
	mv	a0,zero
	call	getSyscallArg
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	beqz	a5,.L2064
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,777
	lui	a5,%hi(__func__.6392)
	add	a1,a5,%lo(__func__.6392)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	li	a2,1
	lw	a1,-20(s0)
	lui	a5,%hi(.LC276)
	add	a0,a5,%lo(.LC276)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,1
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	sw	zero,%lo(current_syscall_error)(a5)
	li	a5,3
	j	.L2067
.L2064:
	lw	a5,0(s1)
	seqz	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L2065
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,785
	lui	a5,%hi(__func__.6392)
	add	a1,a5,%lo(__func__.6392)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC275)
	add	a0,a5,%lo(.LC275)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,7
	sw	a4,24(a5)
	li	a5,3
	j	.L2067
.L2065:
	lw	a5,0(s1)
	lw	a4,0(a5)
	sw	a4,-28(s0)
	lw	a5,4(a5)
	sw	a5,-24(s0)
	lw	a0,-28(s0)
	lw	a1,-24(s0)
	call	cap_get_capType
	mv	a5,a0
	add	a5,a5,-12
	snez	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L2066
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,792
	lui	a5,%hi(__func__.6392)
	add	a1,a5,%lo(__func__.6392)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC277)
	add	a0,a5,%lo(.LC277)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,1
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	li	a4,1
	sw	a4,%lo(current_syscall_error)(a5)
	li	a5,3
	j	.L2067
.L2066:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a0,-28(s0)
	lw	a1,-24(s0)
	call	cap_thread_cap_get_capTCBPtr
	mv	a5,a0
	lw	a1,-20(s0)
	mv	a0,a5
	call	setDomain
	mv	a5,zero
.L2067:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	add	sp,sp,48
	jr	ra
	.size	decodeDomainInvocation, .-decodeDomainInvocation
	.section	.rodata
	.align	2
.LC278:
	.string	"TCB BindAEP: Truncated message."
	.align	2
.LC279:
	.string	"TCB BindAEP: Async endpoint is invalid."
	.align	2
.LC280:
	.string	"TCB BindAEP: TCB already has AEP."
	.align	2
.LC281:
	.string	"TCB BindAEP: AEP cannot be bound."
	.text
	.align	2
	.globl	decodeBindAEP
	.type	decodeBindAEP, @function
decodeBindAEP:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	mv	s1,a2
	lw	a5,0(s1)
	bnez	a5,.L2069
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,809
	lui	a5,%hi(__func__.6399)
	add	a1,a5,%lo(__func__.6399)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC278)
	add	a0,a5,%lo(.LC278)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,7
	sw	a4,24(a5)
	li	a5,3
	j	.L2070
.L2069:
	lw	a5,0(s1)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_get_capType
	mv	a4,a0
	li	a5,6
	beq	a4,a5,.L2071
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,815
	lui	a5,%hi(__func__.6399)
	add	a1,a5,%lo(__func__.6399)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC279)
	add	a0,a5,%lo(.LC279)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
	j	.L2070
.L2071:
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_thread_cap_get_capTCBPtr
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	lw	a5,140(a5)
	beqz	a5,.L2072
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,823
	lui	a5,%hi(__func__.6399)
	add	a1,a5,%lo(__func__.6399)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC280)
	add	a0,a5,%lo(.LC280)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
	j	.L2070
.L2072:
	lw	a5,0(s1)
	lw	a0,0(a5)
	lw	a1,4(a5)
	call	cap_async_endpoint_cap_get_capAEPPtr
	mv	a5,a0
	sw	a5,-24(s0)
	lw	a0,-24(s0)
	call	async_endpoint_ptr_get_aepQueue_head
	mv	a5,a0
	beqz	a5,.L2073
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,830
	lui	a5,%hi(__func__.6399)
	add	a1,a5,%lo(__func__.6399)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC281)
	add	a0,a5,%lo(.LC281)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
	j	.L2070
.L2073:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	invokeTCB_AEPControl
	mv	a5,a0
.L2070:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	add	sp,sp,48
	jr	ra
	.size	decodeBindAEP, .-decodeBindAEP
	.section	.rodata
	.align	2
.LC282:
	.string	"TCB UnbindAEP: TCB already has no bound AEP."
	.text
	.align	2
	.globl	decodeUnbindAEP
	.type	decodeUnbindAEP, @function
decodeUnbindAEP:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	add	s0,sp,48
	sw	a0,-40(s0)
	sw	a1,-36(s0)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	cap_thread_cap_get_capTCBPtr
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	lw	a5,140(a5)
	bnez	a5,.L2075
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,846
	lui	a5,%hi(__func__.6404)
	add	a1,a5,%lo(__func__.6404)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC282)
	add	a0,a5,%lo(.LC282)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
	j	.L2076
.L2075:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	mv	a1,zero
	lw	a0,-20(s0)
	call	invokeTCB_AEPControl
	mv	a5,a0
.L2076:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	add	sp,sp,48
	jr	ra
	.size	decodeUnbindAEP, .-decodeUnbindAEP
	.align	2
	.globl	invokeTCB_Suspend
	.type	invokeTCB_Suspend, @function
invokeTCB_Suspend:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a0,-20(s0)
	call	suspend
	mv	a5,zero
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	invokeTCB_Suspend, .-invokeTCB_Suspend
	.align	2
	.globl	invokeTCB_Resume
	.type	invokeTCB_Resume, @function
invokeTCB_Resume:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	lw	a0,-20(s0)
	call	restart
	mv	a5,zero
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	invokeTCB_Resume, .-invokeTCB_Resume
	.align	2
	.globl	invokeTCB_ThreadControl
	.type	invokeTCB_ThreadControl, @function
invokeTCB_ThreadControl:
	add	sp,sp,-96
	sw	ra,76(sp)
	sw	s0,72(sp)
	add	s0,sp,80
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	sw	a4,-72(s0)
	sw	a5,-68(s0)
	sw	a6,-76(s0)
	sw	a7,12(s0)
	lw	a5,-52(s0)
	mv	a0,a5
	call	cap_thread_cap_new
	mv	a4,a0
	mv	a5,a1
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	lw	a5,40(s0)
	and	a5,a5,4
	beqz	a5,.L2082
	lw	a5,-52(s0)
	lw	a4,-60(s0)
	sw	a4,172(a5)
.L2082:
	lw	a5,40(s0)
	and	a5,a5,1
	beqz	a5,.L2083
	lw	a1,-64(s0)
	lw	a0,-52(s0)
	call	setPriority
.L2083:
	lw	a5,40(s0)
	and	a5,a5,4
	beqz	a5,.L2084
	lw	a5,-52(s0)
	and	a5,a5,-512
	sw	a5,-20(s0)
	li	a1,1
	lw	a0,-20(s0)
	call	cteDelete
	sw	a0,-24(s0)
	lw	a5,-24(s0)
	beqz	a5,.L2085
	lw	a5,-24(s0)
	j	.L2091
.L2085:
	lw	a5,-76(s0)
	lw	a2,0(a5)
	lw	a3,4(a5)
	lw	a0,-72(s0)
	lw	a1,-68(s0)
	call	sameObjectAs
	mv	a5,a0
	beqz	a5,.L2084
	lw	a5,-56(s0)
	lw	a2,0(a5)
	lw	a3,4(a5)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	sameObjectAs
	mv	a5,a0
	beqz	a5,.L2084
	lw	a3,-20(s0)
	lw	a2,-76(s0)
	lw	a0,-72(s0)
	lw	a1,-68(s0)
	call	cteInsert
.L2084:
	lw	a5,40(s0)
	and	a5,a5,4
	beqz	a5,.L2087
	lw	a5,-52(s0)
	and	a5,a5,-512
	add	a5,a5,16
	sw	a5,-28(s0)
	li	a1,1
	lw	a0,-28(s0)
	call	cteDelete
	sw	a0,-24(s0)
	lw	a5,-24(s0)
	beqz	a5,.L2088
	lw	a5,-24(s0)
	j	.L2091
.L2088:
	lw	a5,20(s0)
	lw	a2,0(a5)
	lw	a3,4(a5)
	lw	a0,12(s0)
	lw	a1,16(s0)
	call	sameObjectAs
	mv	a5,a0
	beqz	a5,.L2087
	lw	a5,-56(s0)
	lw	a2,0(a5)
	lw	a3,4(a5)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	sameObjectAs
	mv	a5,a0
	beqz	a5,.L2087
	lw	a3,-28(s0)
	lw	a2,20(s0)
	lw	a0,12(s0)
	lw	a1,16(s0)
	call	cteInsert
.L2087:
	lw	a5,40(s0)
	and	a5,a5,2
	beqz	a5,.L2089
	lw	a5,-52(s0)
	and	a5,a5,-512
	add	a5,a5,64
	sw	a5,-32(s0)
	li	a1,1
	lw	a0,-32(s0)
	call	cteDelete
	sw	a0,-24(s0)
	lw	a5,-24(s0)
	beqz	a5,.L2090
	lw	a5,-24(s0)
	j	.L2091
.L2090:
	lw	a5,-52(s0)
	lw	a4,24(s0)
	sw	a4,176(a5)
	lw	a5,36(s0)
	beqz	a5,.L2089
	lw	a5,36(s0)
	lw	a2,0(a5)
	lw	a3,4(a5)
	lw	a0,28(s0)
	lw	a1,32(s0)
	call	sameObjectAs
	mv	a5,a0
	beqz	a5,.L2089
	lw	a5,-56(s0)
	lw	a2,0(a5)
	lw	a3,4(a5)
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	sameObjectAs
	mv	a5,a0
	beqz	a5,.L2089
	lw	a3,-32(s0)
	lw	a2,36(s0)
	lw	a0,28(s0)
	lw	a1,32(s0)
	call	cteInsert
.L2089:
	mv	a5,zero
.L2091:
	mv	a0,a5
	lw	ra,76(sp)
	lw	s0,72(sp)
	add	sp,sp,96
	jr	ra
	.size	invokeTCB_ThreadControl, .-invokeTCB_ThreadControl
	.align	2
	.globl	invokeTCB_CopyRegisters
	.type	invokeTCB_CopyRegisters, @function
invokeTCB_CopyRegisters:
	add	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	add	s0,sp,80
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	sw	a4,-68(s0)
	sw	a5,-72(s0)
	sw	a6,-76(s0)
	lw	a5,-60(s0)
	beqz	a5,.L2093
	lw	a0,-56(s0)
	call	suspend
.L2093:
	lw	a5,-64(s0)
	beqz	a5,.L2094
	lw	a0,-52(s0)
	call	restart
.L2094:
	lw	a5,-68(s0)
	beqz	a5,.L2095
	sw	zero,-20(s0)
	j	.L2096
.L2097:
	lui	a5,%hi(frameRegisters)
	lw	a4,-20(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(frameRegisters)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a1,a5
	lw	a0,-56(s0)
	call	getRegister
	sw	a0,-28(s0)
	lui	a5,%hi(frameRegisters)
	lw	a4,-20(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(frameRegisters)
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a2,-28(s0)
	mv	a1,a5
	lw	a0,-52(s0)
	call	setRegister
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L2096:
	lw	a4,-20(s0)
	li	a5,9
	bleu	a4,a5,.L2097
	lw	a0,-52(s0)
	call	getRestartPC
	sw	a0,-32(s0)
	lw	a1,-32(s0)
	lw	a0,-52(s0)
	call	setNextPC
.L2095:
	lw	a5,-72(s0)
	beqz	a5,.L2098
	sw	zero,-24(s0)
	j	.L2099
.L2100:
	lui	a5,%hi(gpRegisters)
	lw	a4,-24(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(gpRegisters)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a1,a5
	lw	a0,-56(s0)
	call	getRegister
	sw	a0,-36(s0)
	lui	a5,%hi(gpRegisters)
	lw	a4,-24(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(gpRegisters)
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a2,-36(s0)
	mv	a1,a5
	lw	a0,-52(s0)
	call	setRegister
	lw	a5,-24(s0)
	add	a5,a5,1
	sw	a5,-24(s0)
.L2099:
	lw	a4,-24(s0)
	li	a5,6
	bleu	a4,a5,.L2100
.L2098:
	lw	a2,-52(s0)
	lw	a1,-56(s0)
	lw	a0,-76(s0)
	call	Arch_performTransfer
	mv	a5,a0
	mv	a0,a5
	lw	ra,76(sp)
	lw	s0,72(sp)
	add	sp,sp,80
	jr	ra
	.size	invokeTCB_CopyRegisters, .-invokeTCB_CopyRegisters
	.align	2
	.globl	invokeTCB_ReadRegisters
	.type	invokeTCB_ReadRegisters, @function
invokeTCB_ReadRegisters:
	add	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	add	s0,sp,80
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	sw	a4,-68(s0)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	sw	a5,-24(s0)
	lw	a5,-56(s0)
	beqz	a5,.L2103
	lw	a0,-52(s0)
	call	suspend
.L2103:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a2,a5
	lw	a1,-52(s0)
	lw	a0,-64(s0)
	call	Arch_performTransfer
	sw	a0,-28(s0)
	lw	a5,-28(s0)
	beqz	a5,.L2104
	lw	a5,-28(s0)
	j	.L2105
.L2104:
	lw	a5,-68(s0)
	beqz	a5,.L2106
	lw	a1,-24(s0)
	li	a0,1
	call	lookupIPCBuffer
	sw	a0,-32(s0)
	mv	a2,zero
	li	a1,18
	lw	a0,-24(s0)
	call	setRegister
	sw	zero,-20(s0)
	j	.L2107
.L2109:
	lui	a5,%hi(msgRegisters)
	lw	a4,-20(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(msgRegisters)
	add	a5,a4,a5
	lw	s1,0(a5)
	lui	a5,%hi(frameRegisters)
	lw	a4,-20(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(frameRegisters)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a1,a5
	lw	a0,-52(s0)
	call	getRegister
	mv	a5,a0
	mv	a2,a5
	mv	a1,s1
	lw	a0,-24(s0)
	call	setRegister
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L2107:
	lw	a4,-20(s0)
	lw	a5,-60(s0)
	bgeu	a4,a5,.L2108
	lw	a4,-20(s0)
	li	a5,9
	bgtu	a4,a5,.L2108
	lw	a4,-20(s0)
	li	a5,3
	bleu	a4,a5,.L2109
.L2108:
	lw	a5,-32(s0)
	beqz	a5,.L2110
	lw	a4,-20(s0)
	lw	a5,-60(s0)
	bgeu	a4,a5,.L2110
	lw	a4,-20(s0)
	li	a5,9
	bgtu	a4,a5,.L2110
	j	.L2111
.L2112:
	lw	a5,-20(s0)
	add	a5,a5,1
	sll	a5,a5,2
	lw	a4,-32(s0)
	add	s1,a4,a5
	lui	a5,%hi(frameRegisters)
	lw	a4,-20(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(frameRegisters)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a1,a5
	lw	a0,-52(s0)
	call	getRegister
	mv	a5,a0
	sw	a5,0(s1)
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L2111:
	lw	a4,-20(s0)
	lw	a5,-60(s0)
	bgeu	a4,a5,.L2110
	lw	a4,-20(s0)
	li	a5,9
	bleu	a4,a5,.L2112
.L2110:
	lw	a5,-20(s0)
	sw	a5,-36(s0)
	sw	zero,-20(s0)
	j	.L2113
.L2115:
	lw	a5,-20(s0)
	add	a4,a5,10
	lui	a5,%hi(msgRegisters)
	sll	a4,a4,2
	add	a5,a5,%lo(msgRegisters)
	add	a5,a4,a5
	lw	s1,0(a5)
	lui	a5,%hi(gpRegisters)
	lw	a4,-20(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(gpRegisters)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a1,a5
	lw	a0,-52(s0)
	call	getRegister
	mv	a5,a0
	mv	a2,a5
	mv	a1,s1
	lw	a0,-24(s0)
	call	setRegister
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L2113:
	lw	a4,-20(s0)
	li	a5,6
	bgtu	a4,a5,.L2114
	lw	a5,-20(s0)
	add	a4,a5,10
	lw	a5,-60(s0)
	bgeu	a4,a5,.L2114
	lw	a5,-20(s0)
	add	a4,a5,10
	li	a5,3
	bleu	a4,a5,.L2115
.L2114:
	lw	a5,-32(s0)
	beqz	a5,.L2116
	lw	a4,-20(s0)
	li	a5,6
	bgtu	a4,a5,.L2116
	lw	a5,-20(s0)
	add	a4,a5,10
	lw	a5,-60(s0)
	bgeu	a4,a5,.L2116
	j	.L2117
.L2118:
	lw	a5,-20(s0)
	add	a5,a5,11
	sll	a5,a5,2
	lw	a4,-32(s0)
	add	s1,a4,a5
	lui	a5,%hi(gpRegisters)
	lw	a4,-20(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(gpRegisters)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a1,a5
	lw	a0,-52(s0)
	call	getRegister
	mv	a5,a0
	sw	a5,0(s1)
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L2117:
	lw	a4,-20(s0)
	li	a5,6
	bgtu	a4,a5,.L2116
	lw	a5,-20(s0)
	add	a4,a5,10
	lw	a5,-60(s0)
	bltu	a4,a5,.L2118
.L2116:
	lw	a4,-20(s0)
	lw	a5,-36(s0)
	add	a5,a4,a5
	mv	a3,a5
	mv	a2,zero
	mv	a1,zero
	mv	a0,zero
	call	message_info_new
	mv	a5,a0
	mv	a0,a5
	call	wordFromMessageInfo
	mv	a5,a0
	mv	a2,a5
	li	a1,19
	lw	a0,-24(s0)
	call	setRegister
.L2106:
	li	a1,1
	lw	a0,-24(s0)
	call	setThreadState
	mv	a5,zero
.L2105:
	mv	a0,a5
	lw	ra,76(sp)
	lw	s0,72(sp)
	lw	s1,68(sp)
	add	sp,sp,80
	jr	ra
	.size	invokeTCB_ReadRegisters, .-invokeTCB_ReadRegisters
	.align	2
	.globl	invokeTCB_WriteRegisters
	.type	invokeTCB_WriteRegisters, @function
invokeTCB_WriteRegisters:
	add	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	add	s0,sp,64
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	lw	a2,-36(s0)
	mv	a1,a5
	lw	a0,-48(s0)
	call	Arch_performTransfer
	sw	a0,-24(s0)
	lw	a5,-24(s0)
	beqz	a5,.L2120
	lw	a5,-24(s0)
	j	.L2121
.L2120:
	lw	a4,-44(s0)
	li	a5,17
	bleu	a4,a5,.L2122
	li	a5,17
	sw	a5,-44(s0)
.L2122:
	sw	zero,-20(s0)
	j	.L2123
.L2125:
	lui	a5,%hi(frameRegisters)
	lw	a4,-20(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(frameRegisters)
	add	a5,a4,a5
	lw	s1,0(a5)
	lui	a5,%hi(frameRegisters)
	lw	a4,-20(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(frameRegisters)
	add	a5,a4,a5
	lw	s2,0(a5)
	lw	a5,-20(s0)
	add	a5,a5,2
	lw	a1,-52(s0)
	mv	a0,a5
	call	getSyscallArg
	mv	a5,a0
	mv	a1,a5
	mv	a0,s2
	call	sanitiseRegister
	mv	a5,a0
	mv	a2,a5
	mv	a1,s1
	lw	a0,-36(s0)
	call	setRegister
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L2123:
	lw	a4,-20(s0)
	li	a5,9
	bgtu	a4,a5,.L2124
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	bltu	a4,a5,.L2125
.L2124:
	sw	zero,-20(s0)
	j	.L2126
.L2128:
	lui	a5,%hi(gpRegisters)
	lw	a4,-20(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(gpRegisters)
	add	a5,a4,a5
	lw	s1,0(a5)
	lui	a5,%hi(gpRegisters)
	lw	a4,-20(s0)
	sll	a4,a4,2
	add	a5,a5,%lo(gpRegisters)
	add	a5,a4,a5
	lw	s2,0(a5)
	lw	a5,-20(s0)
	add	a5,a5,12
	lw	a1,-52(s0)
	mv	a0,a5
	call	getSyscallArg
	mv	a5,a0
	mv	a1,a5
	mv	a0,s2
	call	sanitiseRegister
	mv	a5,a0
	mv	a2,a5
	mv	a1,s1
	lw	a0,-36(s0)
	call	setRegister
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L2126:
	lw	a4,-20(s0)
	li	a5,6
	bgtu	a4,a5,.L2127
	lw	a5,-20(s0)
	add	a4,a5,10
	lw	a5,-44(s0)
	bltu	a4,a5,.L2128
.L2127:
	lw	a0,-36(s0)
	call	getRestartPC
	sw	a0,-28(s0)
	lw	a1,-28(s0)
	lw	a0,-36(s0)
	call	setNextPC
	lw	a5,-40(s0)
	beqz	a5,.L2129
	lw	a0,-36(s0)
	call	restart
.L2129:
	mv	a5,zero
.L2121:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s1,52(sp)
	lw	s2,48(sp)
	add	sp,sp,64
	jr	ra
	.size	invokeTCB_WriteRegisters, .-invokeTCB_WriteRegisters
	.align	2
	.globl	invokeTCB_AEPControl
	.type	invokeTCB_AEPControl, @function
invokeTCB_AEPControl:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	beqz	a5,.L2131
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	bindAsyncEndpoint
	j	.L2132
.L2131:
	lw	a0,-20(s0)
	call	unbindAsyncEndpoint
.L2132:
	mv	a5,zero
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	invokeTCB_AEPControl, .-invokeTCB_AEPControl
	.align	2
	.type	alignUp, @function
alignUp:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	li	a4,1
	lw	a5,-24(s0)
	sll	a4,a4,a5
	lw	a5,-20(s0)
	add	a5,a4,a5
	add	a4,a5,-1
	li	a3,1
	lw	a5,-24(s0)
	sll	a5,a3,a5
	sub	a5,zero,a5
	and	a5,a4,a5
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	alignUp, .-alignUp
	.section	.rodata
	.align	2
.LC283:
	.string	"Untyped cap: Illegal operation attempted."
	.align	2
.LC284:
	.string	"Untyped invocation: Truncated message."
	.align	2
.LC285:
	.string	"Untyped Retype: Untyped outside kernel window (%p)."
	.align	2
.LC286:
	.string	"Untyped Retype: Invalid object type."
	.align	2
.LC287:
	.string	"Untyped Retype: Invalid object size."
	.align	2
.LC288:
	.string	"Untyped Retype: Requested CapTable size too small."
	.align	2
.LC289:
	.string	"Untyped Retype: Requested UntypedItem size too small."
	.align	2
.LC290:
	.string	"Untyped Retype: Invalid destination address."
	.align	2
.LC291:
	.string	"Untyped Retype: Destination cap invalid or read-only."
	.align	2
.LC292:
	.string	"Untyped Retype: Destination node offset #%d too large."
	.align	2
.LC293:
	.string	"Untyped Retype: Number of requested objects (%d) too small or large."
	.align	2
.LC294:
	.string	"Untyped Retype: Requested destination window overruns size of node."
	.align	2
.LC295:
	.string	"Untyped Retype: Slot #%d in destination window non-empty."
	.align	2
.LC296:
	.string	"Untyped Retype: Insufficient memory or offset outside untyped"
	.align	2
.LC297:
	.string	"Untyped Retype: collision with existing child"
	.align	2
.LC298:
	.string	"Untyped Retype: Creating kernel objects with frame only untyped"
	.text
	.align	2
	.globl	decodeUntypedInvocation
	.type	decodeUntypedInvocation, @function
decodeUntypedInvocation:
	add	sp,sp,-176
	sw	ra,172(sp)
	sw	s0,168(sp)
	sw	s1,164(sp)
	sw	s2,160(sp)
	add	s0,sp,176
	sw	a0,-132(s0)
	sw	a1,-136(s0)
	sw	a2,-140(s0)
	sw	a3,-148(s0)
	sw	a4,-144(s0)
	mv	s1,a5
	sw	a6,-152(s0)
	sw	a7,-156(s0)
	lw	a4,-132(s0)
	li	a5,1
	beq	a4,a5,.L2137
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,50
	lui	a5,%hi(__func__.6525)
	add	a1,a5,%lo(__func__.6525)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC283)
	add	a0,a5,%lo(.LC283)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,3
	sw	a4,24(a5)
	li	a5,3
	j	.L2161
.L2137:
	lw	a4,-136(s0)
	li	a5,6
	bleu	a4,a5,.L2139
	lw	a5,0(s1)
	bnez	a5,.L2140
.L2139:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,57
	lui	a5,%hi(__func__.6525)
	add	a1,a5,%lo(__func__.6525)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC284)
	add	a0,a5,%lo(.LC284)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,7
	sw	a4,24(a5)
	li	a5,3
	j	.L2161
.L2140:
	lw	a1,-156(s0)
	mv	a0,zero
	call	getSyscallArg
	sw	a0,-24(s0)
	lw	a1,-156(s0)
	li	a0,1
	call	getSyscallArg
	sw	a0,-28(s0)
	lw	a1,-156(s0)
	li	a0,2
	call	getSyscallArg
	sw	a0,-32(s0)
	lw	a1,-156(s0)
	li	a0,3
	call	getSyscallArg
	sw	a0,-36(s0)
	lw	a1,-156(s0)
	li	a0,4
	call	getSyscallArg
	sw	a0,-40(s0)
	lw	a1,-156(s0)
	li	a0,5
	call	getSyscallArg
	sw	a0,-44(s0)
	lw	a1,-156(s0)
	li	a0,6
	call	getSyscallArg
	sw	a0,-48(s0)
	lw	a5,0(s1)
	sw	a5,-52(s0)
	lw	a0,-148(s0)
	lw	a1,-144(s0)
	call	cap_untyped_cap_get_capPtr
	mv	a5,a0
	mv	a0,a5
	call	inKernelWindow
	mv	a5,a0
	bnez	a5,.L2141
	lw	a0,-24(s0)
	call	Arch_isFrameType
	mv	a5,a0
	bnez	a5,.L2141
	lw	a5,-24(s0)
	beqz	a5,.L2141
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,82
	lui	a5,%hi(__func__.6525)
	add	a1,a5,%lo(__func__.6525)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lw	a5,-24(s0)
	mv	a1,a5
	lui	a5,%hi(.LC285)
	add	a0,a5,%lo(.LC285)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,1
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	sw	zero,%lo(current_syscall_error)(a5)
	li	a5,3
	j	.L2161
.L2141:
	lw	a4,-24(s0)
	li	a5,7
	bleu	a4,a5,.L2142
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,90
	lui	a5,%hi(__func__.6525)
	add	a1,a5,%lo(__func__.6525)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC286)
	add	a0,a5,%lo(.LC286)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,1
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	sw	zero,%lo(current_syscall_error)(a5)
	li	a5,3
	j	.L2161
.L2142:
	lw	a4,-32(s0)
	li	a5,30
	bleu	a4,a5,.L2143
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,98
	lui	a5,%hi(__func__.6525)
	add	a1,a5,%lo(__func__.6525)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC287)
	add	a0,a5,%lo(.LC287)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,4
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	sw	zero,8(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,30
	sw	a4,12(a5)
	li	a5,3
	j	.L2161
.L2143:
	lw	a4,-24(s0)
	li	a5,4
	bne	a4,a5,.L2144
	lw	a5,-32(s0)
	bnez	a5,.L2144
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,107
	lui	a5,%hi(__func__.6525)
	add	a1,a5,%lo(__func__.6525)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC288)
	add	a0,a5,%lo(.LC288)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,1
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	li	a4,1
	sw	a4,%lo(current_syscall_error)(a5)
	li	a5,3
	j	.L2161
.L2144:
	lw	a5,-24(s0)
	bnez	a5,.L2145
	lw	a4,-32(s0)
	li	a5,3
	bgtu	a4,a5,.L2145
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,115
	lui	a5,%hi(__func__.6525)
	add	a1,a5,%lo(__func__.6525)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC289)
	add	a0,a5,%lo(.LC289)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,1
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	li	a4,1
	sw	a4,%lo(current_syscall_error)(a5)
	li	a5,3
	j	.L2161
.L2145:
	lw	a5,-40(s0)
	bnez	a5,.L2146
	lw	a5,0(s1)
	lw	a4,0(a5)
	sw	a4,-88(s0)
	lw	a5,4(a5)
	sw	a5,-84(s0)
	j	.L2147
.L2146:
	lw	a5,0(s1)
	lw	a4,0(a5)
	sw	a4,-116(s0)
	lw	a5,4(a5)
	sw	a5,-112(s0)
	lw	a3,-40(s0)
	lw	a2,-36(s0)
	lw	a0,-116(s0)
	lw	a1,-112(s0)
	call	lookupTargetSlot
	mv	a4,a0
	mv	a5,a1
	sw	a4,-96(s0)
	sw	a5,-92(s0)
	lw	a5,-96(s0)
	beqz	a5,.L2148
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,128
	lui	a5,%hi(__func__.6525)
	add	a1,a5,%lo(__func__.6525)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC290)
	add	a0,a5,%lo(.LC290)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lw	a5,-96(s0)
	j	.L2161
.L2148:
	lw	a5,-92(s0)
	lw	a4,0(a5)
	sw	a4,-88(s0)
	lw	a5,4(a5)
	sw	a5,-84(s0)
.L2147:
	lw	a0,-88(s0)
	lw	a1,-84(s0)
	call	cap_get_capType
	mv	a4,a0
	li	a5,10
	beq	a4,a5,.L2149
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,136
	lui	a5,%hi(__func__.6525)
	add	a1,a5,%lo(__func__.6525)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC291)
	add	a0,a5,%lo(.LC291)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,6
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	sw	zero,20(a5)
	lw	a0,-40(s0)
	call	lookup_fault_missing_capability_new
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(current_lookup_fault)
	sw	a4,%lo(current_lookup_fault)(a3)
	add	a3,a3,%lo(current_lookup_fault)
	sw	a5,4(a3)
	li	a5,3
	j	.L2161
.L2149:
	lw	a0,-88(s0)
	lw	a1,-84(s0)
	call	cap_cnode_cap_get_capCNodeRadix
	mv	a4,a0
	li	a5,1
	sll	a5,a5,a4
	sw	a5,-56(s0)
	lw	a5,-56(s0)
	add	a4,a5,-1
	lw	a5,-44(s0)
	bgeu	a4,a5,.L2150
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,147
	lui	a5,%hi(__func__.6525)
	add	a1,a5,%lo(__func__.6525)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lw	a5,-44(s0)
	mv	a1,a5
	lui	a5,%hi(.LC292)
	add	a0,a5,%lo(.LC292)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,4
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	sw	zero,8(a5)
	lw	a5,-56(s0)
	add	a4,a5,-1
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	sw	a4,12(a5)
	li	a5,3
	j	.L2161
.L2150:
	lw	a5,-48(s0)
	beqz	a5,.L2151
	lw	a4,-48(s0)
	li	a5,256
	bleu	a4,a5,.L2152
.L2151:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,155
	lui	a5,%hi(__func__.6525)
	add	a1,a5,%lo(__func__.6525)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lw	a5,-48(s0)
	mv	a1,a5
	lui	a5,%hi(.LC293)
	add	a0,a5,%lo(.LC293)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,4
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,1
	sw	a4,8(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,256
	sw	a4,12(a5)
	li	a5,3
	j	.L2161
.L2152:
	lw	a4,-56(s0)
	lw	a5,-44(s0)
	sub	a4,a4,a5
	lw	a5,-48(s0)
	bgeu	a4,a5,.L2153
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,162
	lui	a5,%hi(__func__.6525)
	add	a1,a5,%lo(__func__.6525)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC294)
	add	a0,a5,%lo(.LC294)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,4
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,1
	sw	a4,8(a5)
	lw	a4,-56(s0)
	lw	a5,-44(s0)
	sub	a4,a4,a5
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	sw	a4,12(a5)
	li	a5,3
	j	.L2161
.L2153:
	lw	a0,-88(s0)
	lw	a1,-84(s0)
	call	cap_cnode_cap_get_capCNodePtr
	mv	a5,a0
	sw	a5,-108(s0)
	lw	a5,-44(s0)
	sw	a5,-104(s0)
	lw	a5,-48(s0)
	sw	a5,-100(s0)
	lw	a5,-44(s0)
	sw	a5,-20(s0)
	j	.L2154
.L2156:
	lw	a4,-108(s0)
	lw	a5,-20(s0)
	sll	a5,a5,4
	add	a5,a4,a5
	mv	a0,a5
	call	ensureEmptySlot
	sw	a0,-60(s0)
	lw	a5,-60(s0)
	beqz	a5,.L2155
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,177
	lui	a5,%hi(__func__.6525)
	add	a1,a5,%lo(__func__.6525)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lw	a5,-20(s0)
	mv	a1,a5
	lui	a5,%hi(.LC295)
	add	a0,a5,%lo(.LC295)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lw	a5,-60(s0)
	j	.L2161
.L2155:
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L2154:
	lw	a4,-44(s0)
	lw	a5,-48(s0)
	add	a4,a4,a5
	lw	a5,-20(s0)
	bgtu	a4,a5,.L2156
	lw	a1,-32(s0)
	lw	a0,-24(s0)
	call	getObjectSize
	sw	a0,-64(s0)
	lw	a1,-64(s0)
	lw	a0,-28(s0)
	call	alignUp
	sw	a0,-68(s0)
	lw	a0,-148(s0)
	lw	a1,-144(s0)
	call	cap_untyped_cap_get_capPtr
	mv	a4,a0
	lw	a5,-68(s0)
	add	a5,a4,a5
	sw	a5,-72(s0)
	lw	a0,-148(s0)
	lw	a1,-144(s0)
	call	cap_untyped_cap_get_capBlockSize
	mv	a4,a0
	li	a5,1
	sll	a5,a5,a4
	sw	a5,-76(s0)
	lw	a4,-64(s0)
	li	a5,31
	bgtu	a4,a5,.L2157
	li	a4,1
	lw	a5,-64(s0)
	sll	a4,a4,a5
	lw	a5,-68(s0)
	add	a4,a4,a5
	lw	a5,-76(s0)
	bleu	a4,a5,.L2158
.L2157:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,193
	lui	a5,%hi(__func__.6525)
	add	a1,a5,%lo(__func__.6525)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC296)
	add	a0,a5,%lo(.LC296)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,10
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	lw	a4,-76(s0)
	sw	a4,16(a5)
	li	a5,3
	j	.L2161
.L2158:
	lw	a5,-24(s0)
	beqz	a5,.L2159
	lw	a0,-148(s0)
	lw	a1,-144(s0)
	call	cap_untyped_cap_get_capDeviceMemory
	mv	a5,a0
	bnez	a5,.L2159
	lw	a4,-48(s0)
	lw	a5,-64(s0)
	sll	a5,a4,a5
	mv	a2,a5
	lw	a1,-72(s0)
	li	a0,1
	call	cdtFindInRange
	sw	a0,-80(s0)
	lw	a5,-80(s0)
	beqz	a5,.L2159
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,203
	lui	a5,%hi(__func__.6525)
	add	a1,a5,%lo(__func__.6525)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC297)
	add	a0,a5,%lo(.LC297)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,9
	sw	a4,24(a5)
	li	a5,3
	j	.L2161
.L2159:
	lw	a0,-148(s0)
	lw	a1,-144(s0)
	call	cap_untyped_cap_get_capDeviceMemory
	mv	a5,a0
	beqz	a5,.L2160
	lw	a0,-24(s0)
	call	Arch_isFrameType
	mv	a5,a0
	bnez	a5,.L2160
	lw	a5,-24(s0)
	beqz	a5,.L2160
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	s1,a5
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	mv	a0,a5
	call	getRestartPC
	mv	a5,a0
	mv	a4,a5
	mv	a3,s1
	li	a2,212
	lui	a5,%hi(__func__.6525)
	add	a1,a5,%lo(__func__.6525)
	lui	a5,%hi(.LC84)
	add	a0,a5,%lo(.LC84)
	call	printf
	lui	a5,%hi(.LC298)
	add	a0,a5,%lo(.LC298)
	call	printf
	lui	a5,%hi(.LC86)
	add	a0,a5,%lo(.LC86)
	call	puts
	lui	a5,%hi(current_syscall_error)
	add	a5,a5,%lo(current_syscall_error)
	li	a4,1
	sw	a4,24(a5)
	lui	a5,%hi(current_syscall_error)
	li	a4,1
	sw	a4,%lo(current_syscall_error)(a5)
	li	a5,3
	j	.L2161
.L2160:
	lui	a5,%hi(ksCurThread)
	lw	a5,%lo(ksCurThread)(a5)
	li	a1,2
	mv	a0,a5
	call	setThreadState
	lw	a0,-148(s0)
	lw	a1,-144(s0)
	call	cap_untyped_cap_get_capPtr
	mv	a5,a0
	mv	s2,a5
	lw	s1,-72(s0)
	lw	a0,-148(s0)
	lw	a1,-144(s0)
	call	cap_untyped_cap_get_capDeviceMemory
	mv	a4,a0
	lw	a5,-108(s0)
	sw	a5,-176(s0)
	lw	a5,-104(s0)
	sw	a5,-172(s0)
	lw	a5,-100(s0)
	sw	a5,-168(s0)
	add	a5,s0,-176
	mv	a7,a4
	lw	a6,-152(s0)
	lw	a4,-32(s0)
	lw	a3,-24(s0)
	mv	a2,s1
	mv	a1,s2
	lw	a0,-140(s0)
	call	invokeUntyped_Retype
	mv	a5,a0
.L2161:
	mv	a0,a5
	lw	ra,172(sp)
	lw	s0,168(sp)
	lw	s1,164(sp)
	lw	s2,160(sp)
	add	sp,sp,176
	jr	ra
	.size	decodeUntypedInvocation, .-decodeUntypedInvocation
	.align	2
	.globl	invokeUntyped_Retype
	.type	invokeUntyped_Retype, @function
invokeUntyped_Retype:
	add	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	add	s0,sp,80
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	mv	s1,a5
	sw	a6,-56(s0)
	sw	a7,-60(s0)
	lw	a5,-36(s0)
	mv	a0,a5
	call	cap_untyped_cap_ptr_get_capBlockSize
	sw	a0,-20(s0)
	lw	a5,0(s1)
	sw	a5,-80(s0)
	lw	a5,4(s1)
	sw	a5,-76(s0)
	lw	a5,8(s1)
	sw	a5,-72(s0)
	add	a2,s0,-80
	lw	a5,-60(s0)
	lw	a4,-52(s0)
	lw	a3,-44(s0)
	lw	a1,-36(s0)
	lw	a0,-48(s0)
	call	createNewObjects
	mv	a5,zero
	mv	a0,a5
	lw	ra,76(sp)
	lw	s0,72(sp)
	lw	s1,68(sp)
	add	sp,sp,80
	jr	ra
	.size	invokeUntyped_Retype, .-invokeUntyped_Retype
	.globl	avail_p_regs
	.section	.boot.rodata,"a",@progbits
	.align	2
	.type	avail_p_regs, @object
	.size	avail_p_regs, 8
avail_p_regs:
	.word	-2147483648
	.word	-2013265920
	.section	.boot.text
	.align	2
	.globl	get_num_avail_p_regs
	.type	get_num_avail_p_regs, @function
get_num_avail_p_regs:
	add	sp,sp,-16
	sw	s0,12(sp)
	add	s0,sp,16
	li	a5,1
	mv	a0,a5
	lw	s0,12(sp)
	add	sp,sp,16
	jr	ra
	.size	get_num_avail_p_regs, .-get_num_avail_p_regs
	.align	2
	.globl	get_avail_p_reg
	.type	get_avail_p_reg, @function
get_avail_p_reg:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lui	a5,%hi(avail_p_regs)
	lw	a4,-36(s0)
	sll	a4,a4,3
	add	a5,a5,%lo(avail_p_regs)
	add	a5,a4,a5
	lw	a4,0(a5)
	sw	a4,-24(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	get_avail_p_reg, .-get_avail_p_reg
	.globl	dev_p_regs
	.section	.boot.rodata
	.align	2
	.type	dev_p_regs, @object
	.size	dev_p_regs, 344
dev_p_regs:
	.word	1140326400
	.word	1140330496
	.word	1140342784
	.word	1140346880
	.word	1140359168
	.word	1140363264
	.word	1140375552
	.word	1140379648
	.word	1140391936
	.word	1140396032
	.word	1140408320
	.word	1140412416
	.word	1140424704
	.word	1140428800
	.word	1140441088
	.word	1140445184
	.word	1140457472
	.word	1140461568
	.word	1140473856
	.word	1140477952
	.word	1140490240
	.word	1140494336
	.word	1140506624
	.word	1140510720
	.word	1140523008
	.word	1140527104
	.word	1140539392
	.word	1140543488
	.word	1342193664
	.word	1342197760
	.word	1342210048
	.word	1342214144
	.word	1342226432
	.word	1342230528
	.word	1342242816
	.word	1342246912
	.word	1342259200
	.word	1342263296
	.word	1342275584
	.word	1342279680
	.word	1342291968
	.word	1342296064
	.word	1342308352
	.word	1342312448
	.word	1342324736
	.word	1342328832
	.word	1342341120
	.word	1342345216
	.word	1342423040
	.word	1342427136
	.word	1408761856
	.word	1408765952
	.word	1408778240
	.word	1408782336
	.word	1408811008
	.word	1408815104
	.word	1408827392
	.word	1408831488
	.word	1408860160
	.word	1408864256
	.word	1408909312
	.word	1408925696
	.word	1408958464
	.word	1408962560
	.word	1409040384
	.word	1409044480
	.word	1409073152
	.word	1409089536
	.word	1409089536
	.word	1409105920
	.word	1409122304
	.word	1409126400
	.word	1409155072
	.word	1409159168
	.word	1409204224
	.word	1409208320
	.word	-1610612736
	.word	-1543503872
	.word	-1476395008
	.word	-1442840576
	.word	-1275068416
	.word	-1241513984
	.word	-1241513984
	.word	-1207959552
	.word	-1073741824
	.word	-1040187392
	.section	.boot.text
	.align	2
	.globl	get_num_dev_p_regs
	.type	get_num_dev_p_regs, @function
get_num_dev_p_regs:
	add	sp,sp,-16
	sw	s0,12(sp)
	add	s0,sp,16
	mv	a5,zero
	mv	a0,a5
	lw	s0,12(sp)
	add	sp,sp,16
	jr	ra
	.size	get_num_dev_p_regs, .-get_num_dev_p_regs
	.align	2
	.globl	get_dev_p_reg
	.type	get_dev_p_reg, @function
get_dev_p_reg:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	lui	a5,%hi(dev_p_regs)
	lw	a4,-36(s0)
	sll	a4,a4,3
	add	a5,a5,%lo(dev_p_regs)
	add	a5,a4,a5
	lw	a4,0(a5)
	sw	a4,-24(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	mv	a4,zero
	lw	a4,-24(s0)
	mv	a5,zero
	lw	a5,-20(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	get_dev_p_reg, .-get_dev_p_reg
	.text
	.align	2
	.globl	getActiveIRQ
	.type	getActiveIRQ, @function
getActiveIRQ:
	add	sp,sp,-16
	sw	s0,12(sp)
	add	s0,sp,16
	mv	a5,zero
	mv	a0,a5
	lw	s0,12(sp)
	add	sp,sp,16
	jr	ra
	.size	getActiveIRQ, .-getActiveIRQ
	.align	2
	.globl	isIRQPending
	.type	isIRQPending, @function
isIRQPending:
	add	sp,sp,-16
	sw	s0,12(sp)
	add	s0,sp,16
	nop
	mv	a0,a5
	lw	s0,12(sp)
	add	sp,sp,16
	jr	ra
	.size	isIRQPending, .-isIRQPending
	.align	2
	.globl	maskInterrupt
	.type	maskInterrupt, @function
maskInterrupt:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	maskInterrupt, .-maskInterrupt
	.align	2
	.globl	isReservedIRQ
	.type	isReservedIRQ, @function
isReservedIRQ:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	mv	a5,zero
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	isReservedIRQ, .-isReservedIRQ
	.align	2
	.globl	handleReservedIRQ
	.type	handleReservedIRQ, @function
handleReservedIRQ:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	handleReservedIRQ, .-handleReservedIRQ
	.align	2
	.globl	ackInterrupt
	.type	ackInterrupt, @function
ackInterrupt:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	ackInterrupt, .-ackInterrupt
	.align	2
	.globl	resetTimer
	.type	resetTimer, @function
resetTimer:
	add	sp,sp,-16
	sw	s0,12(sp)
	add	s0,sp,16
	nop
	lw	s0,12(sp)
	add	sp,sp,16
	jr	ra
	.size	resetTimer, .-resetTimer
	.section	.boot.text
	.align	2
	.globl	initTimer
	.type	initTimer, @function
initTimer:
	add	sp,sp,-16
	sw	s0,12(sp)
	add	s0,sp,16
	nop
	lw	s0,12(sp)
	add	sp,sp,16
	jr	ra
	.size	initTimer, .-initTimer
	.text
	.align	2
	.type	invalidateL2, @function
invalidateL2:
	add	sp,sp,-16
	sw	s0,12(sp)
	add	s0,sp,16
	nop
	lw	s0,12(sp)
	add	sp,sp,16
	jr	ra
	.size	invalidateL2, .-invalidateL2
	.align	2
	.type	finaliseL2Op, @function
finaliseL2Op:
	add	sp,sp,-16
	sw	s0,12(sp)
	add	s0,sp,16
	nop
	lw	s0,12(sp)
	add	sp,sp,16
	jr	ra
	.size	finaliseL2Op, .-finaliseL2Op
	.align	2
	.globl	plat_cleanL2Range
	.type	plat_cleanL2Range, @function
plat_cleanL2Range:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	plat_cleanL2Range, .-plat_cleanL2Range
	.align	2
	.globl	plat_invalidateL2Range
	.type	plat_invalidateL2Range, @function
plat_invalidateL2Range:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	plat_invalidateL2Range, .-plat_invalidateL2Range
	.align	2
	.globl	plat_cleanInvalidateL2Range
	.type	plat_cleanInvalidateL2Range, @function
plat_cleanInvalidateL2Range:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	nop
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	plat_cleanInvalidateL2Range, .-plat_cleanInvalidateL2Range
	.section	.boot.text
	.align	2
	.globl	initL2Cache
	.type	initL2Cache, @function
initL2Cache:
	add	sp,sp,-16
	sw	s0,12(sp)
	add	s0,sp,16
	nop
	lw	s0,12(sp)
	add	sp,sp,16
	jr	ra
	.size	initL2Cache, .-initL2Cache
	.align	2
	.globl	initIRQController
	.type	initIRQController, @function
initIRQController:
	add	sp,sp,-16
	sw	s0,12(sp)
	add	s0,sp,16
	nop
	lw	s0,12(sp)
	add	sp,sp,16
	jr	ra
	.size	initIRQController, .-initIRQController
	.text
	.align	2
	.globl	handleSpuriousIRQ
	.type	handleSpuriousIRQ, @function
handleSpuriousIRQ:
	add	sp,sp,-16
	sw	s0,12(sp)
	add	s0,sp,16
	nop
	lw	s0,12(sp)
	add	sp,sp,16
	jr	ra
	.size	handleSpuriousIRQ, .-handleSpuriousIRQ
	.align	2
	.type	uart_write_polled, @function
uart_write_polled:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	mv	a5,a0
	sb	a5,-33(s0)
	li	a5,96
	sw	a5,-20(s0)
.L2191:
	li	a5,1021
	lbu	a5,0(a5)
	sb	a5,-21(s0)
	lbu	a5,-21(s0)
	and	a5,a5,32
	beqz	a5,.L2191
	li	a5,1016
	lbu	a4,-33(s0)
	sb	a4,0(a5)
.L2192:
	li	a5,1021
	lbu	a5,0(a5)
	sb	a5,-21(s0)
	lbu	a4,-21(s0)
	lw	a5,-20(s0)
	and	a4,a4,a5
	lw	a5,-20(s0)
	bne	a4,a5,.L2192
	nop
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	uart_write_polled, .-uart_write_polled
	.align	2
	.globl	qemu_uart_putchar
	.type	qemu_uart_putchar, @function
qemu_uart_putchar:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	mv	a5,a0
	sb	a5,-17(s0)
	lbu	a5,-17(s0)
	mv	a0,a5
	call	uart_write_polled
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	qemu_uart_putchar, .-qemu_uart_putchar
	.align	2
	.globl	putDebugChar
	.type	putDebugChar, @function
putDebugChar:
	add	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	add	s0,sp,32
	mv	a5,a0
	sb	a5,-17(s0)
	lbu	a5,-17(s0)
	mv	a0,a5
	call	qemu_uart_putchar
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	add	sp,sp,32
	jr	ra
	.size	putDebugChar, .-putDebugChar
	.align	2
	.globl	getDebugChar
	.type	getDebugChar, @function
getDebugChar:
	add	sp,sp,-16
	sw	s0,12(sp)
	add	s0,sp,16
	nop
	mv	a0,a5
	lw	s0,12(sp)
	add	sp,sp,16
	jr	ra
	.size	getDebugChar, .-getDebugChar
	.section	.rodata
	.align	2
.LC299:
	.string	"Assertion failed: (unsigned int)s % 4 == 0\n"
	.align	2
.LC300:
	.string	"Assertion failed: n % 4 == 0\n"
	.text
	.align	2
	.globl	memzero
	.type	memzero, @function
memzero:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	lw	a5,-36(s0)
	and	a5,a5,3
	beqz	a5,.L2203
	lui	a5,%hi(.LC299)
	add	a0,a5,%lo(.LC299)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L2198
.L2203:
	nop
.L2198:
	lw	a5,-40(s0)
	and	a5,a5,3
	beqz	a5,.L2204
	lui	a5,%hi(.LC300)
	add	a0,a5,%lo(.LC300)
	call	cputstring
	li	a0,3
	call	terminate
	j	.L2201
.L2204:
	nop
	j	.L2201
.L2202:
	lw	a5,-20(s0)
	sw	zero,0(a5)
	lw	a5,-20(s0)
	add	a5,a5,4
	sw	a5,-20(s0)
	lw	a5,-40(s0)
	add	a5,a5,-4
	sw	a5,-40(s0)
.L2201:
	lw	a5,-40(s0)
	bnez	a5,.L2202
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	memzero, .-memzero
	.align	2
	.globl	memset
	.type	memset, @function
memset:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	lw	a5,-40(s0)
	seqz	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L2206
	lw	a5,-36(s0)
	and	a5,a5,3
	seqz	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L2206
	li	a5,1
	j	.L2207
.L2206:
	mv	a5,zero
.L2207:
	beqz	a5,.L2208
	lw	a5,-44(s0)
	and	a5,a5,3
	seqz	a5,a5
	and	a5,a5,0xff
	beqz	a5,.L2208
	lw	a1,-44(s0)
	lw	a0,-36(s0)
	call	memzero
	j	.L2209
.L2208:
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	j	.L2210
.L2211:
	lw	a5,-40(s0)
	and	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,0(a5)
	lw	a5,-44(s0)
	add	a5,a5,-1
	sw	a5,-44(s0)
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L2210:
	lw	a5,-44(s0)
	bnez	a5,.L2211
.L2209:
	lw	a5,-36(s0)
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	memset, .-memset
	.align	2
	.globl	memcpy
	.type	memcpy, @function
memcpy:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	j	.L2214
.L2215:
	lw	a5,-24(s0)
	lbu	a4,0(a5)
	lw	a5,-20(s0)
	sb	a4,0(a5)
	lw	a5,-44(s0)
	add	a5,a5,-1
	sw	a5,-44(s0)
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	add	a5,a5,1
	sw	a5,-24(s0)
.L2214:
	lw	a5,-44(s0)
	bnez	a5,.L2215
	lw	a5,-36(s0)
	mv	a0,a5
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	memcpy, .-memcpy
	.align	2
	.globl	strncmp
	.type	strncmp, @function
strncmp:
	add	sp,sp,-48
	sw	s0,44(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	zero,-20(s0)
	j	.L2218
.L2222:
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a3,a5
	lw	a4,-40(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sub	a5,a3,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	bnez	a5,.L2219
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bnez	a5,.L2220
.L2219:
	lw	a5,-24(s0)
	j	.L2221
.L2220:
	lw	a5,-20(s0)
	add	a5,a5,1
	sw	a5,-20(s0)
.L2218:
	lw	a5,-44(s0)
	lw	a4,-20(s0)
	bltu	a4,a5,.L2222
	mv	a5,zero
.L2221:
	mv	a0,a5
	lw	s0,44(sp)
	add	sp,sp,48
	jr	ra
	.size	strncmp, .-strncmp
	.align	2
	.globl	char_to_int
	.type	char_to_int, @function
char_to_int:
	add	sp,sp,-32
	sw	s0,28(sp)
	add	s0,sp,32
	mv	a5,a0
	sb	a5,-17(s0)
	lbu	a4,-17(s0)
	li	a5,47
	bleu	a4,a5,.L2224
	lbu	a4,-17(s0)
	li	a5,57
	bgtu	a4,a5,.L2224
	lbu	a5,-17(s0)
	add	a5,a5,-48
	j	.L2225
.L2224:
	lbu	a4,-17(s0)
	li	a5,64
	bleu	a4,a5,.L2226
	lbu	a4,-17(s0)
	li	a5,70
	bgtu	a4,a5,.L2226
	lbu	a5,-17(s0)
	add	a5,a5,-55
	j	.L2225
.L2226:
	lbu	a4,-17(s0)
	li	a5,96
	bleu	a4,a5,.L2227
	lbu	a4,-17(s0)
	li	a5,102
	bgtu	a4,a5,.L2227
	lbu	a5,-17(s0)
	add	a5,a5,-87
	j	.L2225
.L2227:
	li	a5,-1
.L2225:
	mv	a0,a5
	lw	s0,28(sp)
	add	sp,sp,32
	jr	ra
	.size	char_to_int, .-char_to_int
	.align	2
	.globl	str_to_int
	.type	str_to_int, @function
str_to_int:
	add	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	add	s0,sp,48
	sw	a0,-36(s0)
	sw	zero,-24(s0)
	lw	a5,-36(s0)
	lbu	a4,0(a5)
	li	a5,48
	bne	a4,a5,.L2229
	lw	a5,-36(s0)
	add	a5,a5,1
	lbu	a4,0(a5)
	li	a5,120
	beq	a4,a5,.L2230
	lw	a5,-36(s0)
	add	a5,a5,1
	lbu	a4,0(a5)
	li	a5,88
	bne	a4,a5,.L2229
.L2230:
	li	a5,16
	sw	a5,-20(s0)
	lw	a5,-36(s0)
	add	a5,a5,2
	sw	a5,-36(s0)
	j	.L2231
.L2229:
	li	a5,10
	sw	a5,-20(s0)
.L2231:
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	bnez	a5,.L2232
	li	a5,-1
	j	.L2233
.L2232:
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	sb	a5,-25(s0)
	j	.L2234
.L2237:
	lbu	a5,-25(s0)
	mv	a0,a5
	call	char_to_int
	sw	a0,-32(s0)
	lw	a4,-32(s0)
	li	a5,-1
	beq	a4,a5,.L2235
	lw	a4,-32(s0)
	lw	a5,-20(s0)
	bltu	a4,a5,.L2236
.L2235:
	li	a5,-1
	j	.L2233
.L2236:
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	mul	a4,a4,a5
	lw	a5,-32(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-36(s0)
	add	a5,a5,1
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	sb	a5,-25(s0)
.L2234:
	lbu	a5,-25(s0)
	bnez	a5,.L2237
	lw	a5,-24(s0)
.L2233:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	add	sp,sp,48
	jr	ra
	.size	str_to_int, .-str_to_int
	.globl	ksDomSchedule
	.section	.sdata
	.align	2
	.type	ksDomSchedule, @object
	.size	ksDomSchedule, 8
ksDomSchedule:
	.word	0
	.word	1
	.globl	ksDomScheduleLength
	.align	2
	.type	ksDomScheduleLength, @object
	.size	ksDomScheduleLength, 4
ksDomScheduleLength:
	.word	1
	.section	.rodata
	.align	2
	.type	__FUNCTION__.1887, @object
	.size	__FUNCTION__.1887, 25
__FUNCTION__.1887:
	.string	"fault_user_exception_new"
	.align	2
	.type	__func__.3575, @object
	.size	__func__.3575, 17
__func__.3575:
	.string	"handleInvocation"
	.align	2
	.type	__FUNCTION__.1522, @object
	.size	__FUNCTION__.1522, 27
__FUNCTION__.1522:
	.string	"message_info_set_msgLength"
	.align	2
	.type	__FUNCTION__.1852, @object
	.size	__FUNCTION__.1852, 20
__FUNCTION__.1852:
	.string	"fault_cap_fault_new"
	.align	2
	.type	__FUNCTION__.3584, @object
	.size	__FUNCTION__.3584, 12
__FUNCTION__.3584:
	.string	"handleReply"
	.align	2
	.type	__func__.3586, @object
	.size	__func__.3586, 12
__func__.3586:
	.string	"handleReply"
	.align	2
	.type	__FUNCTION__.2062, @object
	.size	__FUNCTION__.2062, 33
__FUNCTION__.2062:
	.string	"cap_reply_cap_get_capReplyMaster"
	.align	2
	.type	__FUNCTION__.2066, @object
	.size	__FUNCTION__.2066, 28
__FUNCTION__.2066:
	.string	"cap_reply_cap_get_capTCBPtr"
	.align	2
	.type	__FUNCTION__.1980, @object
	.size	__FUNCTION__.1980, 35
__FUNCTION__.1980:
	.string	"cap_endpoint_cap_get_capCanReceive"
	.align	2
	.type	__FUNCTION__.2042, @object
	.size	__FUNCTION__.2042, 37
__FUNCTION__.2042:
	.string	"cap_async_endpoint_cap_get_capAEPPtr"
	.align	2
	.type	__FUNCTION__.2024, @object
	.size	__FUNCTION__.2024, 44
__FUNCTION__.2024:
	.string	"cap_async_endpoint_cap_get_capAEPCanReceive"
	.align	2
	.type	__FUNCTION__.2239, @object
	.size	__FUNCTION__.2239, 36
__FUNCTION__.2239:
	.string	"lookup_fault_missing_capability_new"
	.align	2
	.type	__func__.3617, @object
	.size	__func__.3617, 14
__func__.3617:
	.string	"handleSyscall"
	.align	2
	.type	__FUNCTION__.2079, @object
	.size	__FUNCTION__.2079, 18
__FUNCTION__.2079:
	.string	"cap_cnode_cap_new"
	.align	2
	.type	__FUNCTION__.1954, @object
	.size	__FUNCTION__.1954, 27
__FUNCTION__.1954:
	.string	"cap_untyped_cap_get_capPtr"
	.align	2
	.type	__FUNCTION__.1967, @object
	.size	__FUNCTION__.1967, 30
__FUNCTION__.1967:
	.string	"cap_endpoint_cap_get_capEPPtr"
	.align	2
	.type	__FUNCTION__.2101, @object
	.size	__FUNCTION__.2101, 30
__FUNCTION__.2101:
	.string	"cap_cnode_cap_get_capCNodePtr"
	.align	2
	.type	__FUNCTION__.2110, @object
	.size	__FUNCTION__.2110, 29
__FUNCTION__.2110:
	.string	"cap_thread_cap_get_capTCBPtr"
	.align	2
	.type	__FUNCTION__.2194, @object
	.size	__FUNCTION__.2194, 33
__FUNCTION__.2194:
	.string	"cap_zombie_cap_get_capZombieType"
	.align	2
	.type	__FUNCTION__.2185, @object
	.size	__FUNCTION__.2185, 31
__FUNCTION__.2185:
	.string	"cap_zombie_cap_get_capZombieID"
	.align	2
	.type	__FUNCTION__.2391, @object
	.size	__FUNCTION__.2391, 19
__FUNCTION__.2391:
	.string	"cap_get_archCapPtr"
	.align	2
	.type	__FUNCTION__.2150, @object
	.size	__FUNCTION__.2150, 30
__FUNCTION__.2150:
	.string	"cap_frame_cap_get_capFBasePtr"
	.align	2
	.type	__FUNCTION__.2162, @object
	.size	__FUNCTION__.2162, 36
__FUNCTION__.2162:
	.string	"cap_page_table_cap_get_capPTBasePtr"
	.align	2
	.type	__FUNCTION__.2166, @object
	.size	__FUNCTION__.2166, 40
__FUNCTION__.2166:
	.string	"cap_page_directory_cap_get_capPDBasePtr"
	.align	2
	.type	__FUNCTION__.2106, @object
	.size	__FUNCTION__.2106, 19
__FUNCTION__.2106:
	.string	"cap_thread_cap_new"
	.align	2
	.type	__FUNCTION__.1938, @object
	.size	__FUNCTION__.1938, 20
__FUNCTION__.1938:
	.string	"cap_untyped_cap_new"
	.align	2
	.type	__FUNCTION__.2542, @object
	.size	__FUNCTION__.2542, 21
__FUNCTION__.2542:
	.string	"cap_get_capSpaceType"
	.align	2
	.type	__FUNCTION__.2561, @object
	.size	__FUNCTION__.2561, 20
__FUNCTION__.2561:
	.string	"cap_get_capSpacePtr"
	.align	2
	.type	__FUNCTION__.2175, @object
	.size	__FUNCTION__.2175, 31
__FUNCTION__.2175:
	.string	"cap_irq_handler_cap_get_capIRQ"
	.align	2
	.type	__FUNCTION__.2580, @object
	.size	__FUNCTION__.2580, 21
__FUNCTION__.2580:
	.string	"cap_get_capSpaceSize"
	.align	2
	.type	__FUNCTION__.1946, @object
	.size	__FUNCTION__.1946, 33
__FUNCTION__.1946:
	.string	"cap_untyped_cap_get_capBlockSize"
	.align	2
	.type	__FUNCTION__.2097, @object
	.size	__FUNCTION__.2097, 32
__FUNCTION__.2097:
	.string	"cap_cnode_cap_get_capCNodeRadix"
	.align	2
	.type	__FUNCTION__.2382, @object
	.size	__FUNCTION__.2382, 24
__FUNCTION__.2382:
	.string	"cap_get_archCapSizeBits"
	.align	2
	.type	__FUNCTION__.2132, @object
	.size	__FUNCTION__.2132, 27
__FUNCTION__.2132:
	.string	"cap_frame_cap_get_capFSize"
	.align	2
	.type	__func__.2276, @object
	.size	__func__.2276, 16
__func__.2276:
	.string	"pageBitsForSize"
	.align	2
	.type	__FUNCTION__.1998, @object
	.size	__FUNCTION__.1998, 32
__FUNCTION__.1998:
	.string	"cap_endpoint_cap_get_capEPBadge"
	.align	2
	.type	__FUNCTION__.2015, @object
	.size	__FUNCTION__.2015, 39
__FUNCTION__.2015:
	.string	"cap_async_endpoint_cap_get_capAEPBadge"
	.align	2
	.type	__func__.4911, @object
	.size	__func__.4911, 17
__func__.4911:
	.string	"cdtFindWithExtra"
	.align	2
	.type	__func__.2590, @object
	.size	__func__.2590, 21
__func__.2590:
	.string	"cap_get_capExtraComp"
	.align	2
	.type	__FUNCTION__.2128, @object
	.size	__FUNCTION__.2128, 34
__FUNCTION__.2128:
	.string	"cap_frame_cap_get_capFMappedIndex"
	.align	2
	.type	__FUNCTION__.2114, @object
	.size	__FUNCTION__.2114, 39
__FUNCTION__.2114:
	.string	"cap_frame_cap_get_capFMappedObjectHigh"
	.align	2
	.type	__FUNCTION__.2136, @object
	.size	__FUNCTION__.2136, 38
__FUNCTION__.2136:
	.string	"cap_frame_cap_get_capFMappedObjectLow"
	.align	2
	.type	__FUNCTION__.2158, @object
	.size	__FUNCTION__.2158, 40
__FUNCTION__.2158:
	.string	"cap_page_table_cap_get_capPTMappedIndex"
	.align	2
	.type	__FUNCTION__.2154, @object
	.size	__FUNCTION__.2154, 41
__FUNCTION__.2154:
	.string	"cap_page_table_cap_get_capPTMappedObject"
	.align	2
	.type	__FUNCTION__.1799, @object
	.size	__FUNCTION__.1799, 13
__FUNCTION__.1799:
	.string	"mdb_node_new"
	.align	2
	.type	__func__.5097, @object
	.size	__func__.5097, 9
__func__.5097:
	.string	"aaInsert"
	.align	2
	.type	__FUNCTION__.1826, @object
	.size	__FUNCTION__.1826, 26
__FUNCTION__.1826:
	.string	"mdb_node_ptr_set_cdtLevel"
	.align	2
	.type	__FUNCTION__.2445, @object
	.size	__FUNCTION__.2445, 26
__FUNCTION__.2445:
	.string	"mdb_node_ptr_set_cdtRight"
	.align	2
	.type	__FUNCTION__.2440, @object
	.size	__FUNCTION__.2440, 25
__FUNCTION__.2440:
	.string	"mdb_node_ptr_set_cdtLeft"
	.align	2
	.type	__func__.5110, @object
	.size	__func__.5110, 9
__func__.5110:
	.string	"aaRemove"
	.align	2
	.type	__FUNCTION__.2245, @object
	.size	__FUNCTION__.2245, 32
__FUNCTION__.2245:
	.string	"lookup_fault_depth_mismatch_new"
	.align	2
	.type	__FUNCTION__.2083, @object
	.size	__FUNCTION__.2083, 36
__FUNCTION__.2083:
	.string	"cap_cnode_cap_get_capCNodeGuardSize"
	.align	2
	.type	__FUNCTION__.2252, @object
	.size	__FUNCTION__.2252, 32
__FUNCTION__.2252:
	.string	"lookup_fault_guard_mismatch_new"
	.align	2
	.type	__FUNCTION__.1989, @object
	.size	__FUNCTION__.1989, 32
__FUNCTION__.1989:
	.string	"cap_endpoint_cap_get_capCanSend"
	.align	2
	.type	__FUNCTION__.1971, @object
	.size	__FUNCTION__.1971, 33
__FUNCTION__.1971:
	.string	"cap_endpoint_cap_get_capCanGrant"
	.align	2
	.type	__FUNCTION__.1860, @object
	.size	__FUNCTION__.1860, 35
__FUNCTION__.1860:
	.string	"fault_cap_fault_get_inReceivePhase"
	.align	2
	.type	__FUNCTION__.1856, @object
	.size	__FUNCTION__.1856, 28
__FUNCTION__.1856:
	.string	"fault_cap_fault_get_address"
	.align	2
	.type	__FUNCTION__.1872, @object
	.size	__FUNCTION__.1872, 36
__FUNCTION__.1872:
	.string	"fault_vm_fault_get_instructionFault"
	.align	2
	.type	__FUNCTION__.1864, @object
	.size	__FUNCTION__.1864, 27
__FUNCTION__.1864:
	.string	"fault_vm_fault_get_address"
	.align	2
	.type	__FUNCTION__.1868, @object
	.size	__FUNCTION__.1868, 23
__FUNCTION__.1868:
	.string	"fault_vm_fault_get_FSR"
	.align	2
	.type	__FUNCTION__.1881, @object
	.size	__FUNCTION__.1881, 40
__FUNCTION__.1881:
	.string	"fault_unknown_syscall_get_syscallNumber"
	.align	2
	.type	__FUNCTION__.1891, @object
	.size	__FUNCTION__.1891, 32
__FUNCTION__.1891:
	.string	"fault_user_exception_get_number"
	.align	2
	.type	__FUNCTION__.1895, @object
	.size	__FUNCTION__.1895, 30
__FUNCTION__.1895:
	.string	"fault_user_exception_get_code"
	.align	2
	.type	__func__.5279, @object
	.size	__func__.5279, 15
__func__.5279:
	.string	"activateThread"
	.align	2
	.type	__FUNCTION__.2053, @object
	.size	__FUNCTION__.2053, 27
__FUNCTION__.2053:
	.string	"cap_reply_cap_get_capInCDT"
	.align	2
	.type	__FUNCTION__.2049, @object
	.size	__FUNCTION__.2049, 18
__FUNCTION__.2049:
	.string	"cap_reply_cap_new"
	.align	2
	.type	__FUNCTION__.1495, @object
	.size	__FUNCTION__.1495, 17
__FUNCTION__.1495:
	.string	"message_info_new"
	.align	2
	.type	__FUNCTION__.1506, @object
	.size	__FUNCTION__.1506, 34
__FUNCTION__.1506:
	.string	"message_info_set_msgCapsUnwrapped"
	.align	2
	.type	__FUNCTION__.1532, @object
	.size	__FUNCTION__.1532, 15
__FUNCTION__.1532:
	.string	"cap_rights_new"
	.align	2
	.type	__FUNCTION__.1514, @object
	.size	__FUNCTION__.1514, 30
__FUNCTION__.1514:
	.string	"message_info_set_msgExtraCaps"
	.align	2
	.type	__FUNCTION__.3475, @object
	.size	__FUNCTION__.3475, 19
__FUNCTION__.3475:
	.string	"ready_queues_index"
	.align	2
	.type	__FUNCTION__.1788, @object
	.size	__FUNCTION__.1788, 28
__FUNCTION__.1788:
	.string	"thread_state_ptr_set_tsType"
	.align	2
	.type	__FUNCTION__.1671, @object
	.size	__FUNCTION__.1671, 37
__FUNCTION__.1671:
	.string	"async_endpoint_ptr_set_aepQueue_head"
	.align	2
	.type	__FUNCTION__.1679, @object
	.size	__FUNCTION__.1679, 37
__FUNCTION__.1679:
	.string	"async_endpoint_ptr_set_aepQueue_tail"
	.align	2
	.type	__FUNCTION__.1687, @object
	.size	__FUNCTION__.1687, 29
__FUNCTION__.1687:
	.string	"async_endpoint_ptr_set_state"
	.align	2
	.type	__FUNCTION__.1777, @object
	.size	__FUNCTION__.1777, 41
__FUNCTION__.1777:
	.string	"thread_state_ptr_set_blockingIPCEndpoint"
	.align	2
	.type	__func__.5559, @object
	.size	__func__.5559, 17
__func__.5559:
	.string	"completeAsyncIPC"
	.align	2
	.type	__FUNCTION__.1655, @object
	.size	__FUNCTION__.1655, 35
__FUNCTION__.1655:
	.string	"async_endpoint_ptr_set_aepBoundTCB"
	.align	2
	.type	__func__.5595, @object
	.size	__func__.5595, 22
__func__.5595:
	.string	"decodeCNodeInvocation"
	.align	2
	.type	__FUNCTION__.3194, @object
	.size	__FUNCTION__.3194, 14
__FUNCTION__.3194:
	.string	"getSyscallArg"
	.align	2
	.type	__func__.5657, @object
	.size	__func__.5657, 22
__func__.5657:
	.string	"invokeCNodeSaveCaller"
	.align	2
	.type	__FUNCTION__.2071, @object
	.size	__FUNCTION__.2071, 32
__FUNCTION__.2071:
	.string	"cap_reply_cap_ptr_set_capTCBPtr"
	.align	2
	.type	__FUNCTION__.2058, @object
	.size	__FUNCTION__.2058, 31
__FUNCTION__.2058:
	.string	"cap_reply_cap_ptr_set_capInCDT"
	.align	2
	.type	__func__.5707, @object
	.size	__func__.5707, 13
__func__.5707:
	.string	"capRemovable"
	.align	2
	.type	__func__.5741, @object
	.size	__func__.5741, 13
__func__.5741:
	.string	"reduceZombie"
	.align	2
	.type	__FUNCTION__.2190, @object
	.size	__FUNCTION__.2190, 31
__FUNCTION__.2190:
	.string	"cap_zombie_cap_set_capZombieID"
	.align	2
	.type	__FUNCTION__.1745, @object
	.size	__FUNCTION__.1745, 41
__FUNCTION__.1745:
	.string	"thread_state_ptr_set_blockingIPCCanGrant"
	.align	2
	.type	__FUNCTION__.1753, @object
	.size	__FUNCTION__.1753, 39
__FUNCTION__.1753:
	.string	"thread_state_ptr_set_blockingIPCIsCall"
	.align	2
	.type	__FUNCTION__.1698, @object
	.size	__FUNCTION__.1698, 30
__FUNCTION__.1698:
	.string	"endpoint_ptr_set_epQueue_head"
	.align	2
	.type	__FUNCTION__.1706, @object
	.size	__FUNCTION__.1706, 30
__FUNCTION__.1706:
	.string	"endpoint_ptr_set_epQueue_tail"
	.align	2
	.type	__FUNCTION__.1714, @object
	.size	__FUNCTION__.1714, 23
__FUNCTION__.1714:
	.string	"endpoint_ptr_set_state"
	.align	2
	.type	__FUNCTION__.1761, @object
	.size	__FUNCTION__.1761, 45
__FUNCTION__.1761:
	.string	"thread_state_ptr_set_blockingIPCDiminishCaps"
	.align	2
	.type	__func__.5887, @object
	.size	__func__.5887, 20
__func__.5887:
	.string	"epCancelBadgedSends"
	.align	2
	.type	__func__.5903, @object
	.size	__func__.5903, 27
__func__.5903:
	.string	"decodeIRQControlInvocation"
	.align	2
	.type	__FUNCTION__.2171, @object
	.size	__FUNCTION__.2171, 24
__FUNCTION__.2171:
	.string	"cap_irq_handler_cap_new"
	.align	2
	.type	__func__.5920, @object
	.size	__func__.5920, 27
__func__.5920:
	.string	"decodeIRQHandlerInvocation"
	.align	2
	.type	__FUNCTION__.2033, @object
	.size	__FUNCTION__.2033, 41
__FUNCTION__.2033:
	.string	"cap_async_endpoint_cap_get_capAEPCanSend"
	.align	2
	.type	__func__.5948, @object
	.size	__func__.5948, 19
__func__.5948:
	.string	"deletingIRQHandler"
	.align	2
	.type	__func__.5962, @object
	.size	__func__.5962, 16
__func__.5962:
	.string	"handleInterrupt"
	.align	2
	.type	__func__.5980, @object
	.size	__func__.5980, 14
__func__.5980:
	.string	"getObjectSize"
	.align	2
	.type	__func__.6007, @object
	.size	__func__.6007, 12
__func__.6007:
	.string	"finaliseCap"
	.align	2
	.type	__FUNCTION__.2181, @object
	.size	__FUNCTION__.2181, 19
__FUNCTION__.2181:
	.string	"cap_zombie_cap_new"
	.align	2
	.type	__func__.6024, @object
	.size	__func__.6024, 11
__func__.6024:
	.string	"recycleCap"
	.align	2
	.type	__FUNCTION__.2003, @object
	.size	__FUNCTION__.2003, 32
__FUNCTION__.2003:
	.string	"cap_endpoint_cap_set_capEPBadge"
	.align	2
	.type	__FUNCTION__.2020, @object
	.size	__FUNCTION__.2020, 39
__FUNCTION__.2020:
	.string	"cap_async_endpoint_cap_set_capAEPBadge"
	.align	2
	.type	__FUNCTION__.2093, @object
	.size	__FUNCTION__.2093, 32
__FUNCTION__.2093:
	.string	"cap_cnode_cap_set_capCNodeGuard"
	.align	2
	.type	__FUNCTION__.2088, @object
	.size	__FUNCTION__.2088, 36
__FUNCTION__.2088:
	.string	"cap_cnode_cap_set_capCNodeGuardSize"
	.align	2
	.type	__func__.6101, @object
	.size	__func__.6101, 14
__func__.6101:
	.string	"maskCapRights"
	.align	2
	.type	__FUNCTION__.1994, @object
	.size	__FUNCTION__.1994, 32
__FUNCTION__.1994:
	.string	"cap_endpoint_cap_set_capCanSend"
	.align	2
	.type	__FUNCTION__.1985, @object
	.size	__FUNCTION__.1985, 35
__FUNCTION__.1985:
	.string	"cap_endpoint_cap_set_capCanReceive"
	.align	2
	.type	__FUNCTION__.1976, @object
	.size	__FUNCTION__.1976, 33
__FUNCTION__.1976:
	.string	"cap_endpoint_cap_set_capCanGrant"
	.align	2
	.type	__FUNCTION__.2038, @object
	.size	__FUNCTION__.2038, 41
__FUNCTION__.2038:
	.string	"cap_async_endpoint_cap_set_capAEPCanSend"
	.align	2
	.type	__FUNCTION__.2029, @object
	.size	__FUNCTION__.2029, 44
__FUNCTION__.2029:
	.string	"cap_async_endpoint_cap_set_capAEPCanReceive"
	.align	2
	.type	__func__.6115, @object
	.size	__func__.6115, 13
__func__.6115:
	.string	"createObject"
	.align	2
	.type	__FUNCTION__.1963, @object
	.size	__FUNCTION__.1963, 21
__FUNCTION__.1963:
	.string	"cap_endpoint_cap_new"
	.align	2
	.type	__FUNCTION__.2011, @object
	.size	__FUNCTION__.2011, 27
__FUNCTION__.2011:
	.string	"cap_async_endpoint_cap_new"
	.align	2
	.type	__func__.6143, @object
	.size	__func__.6143, 17
__func__.6143:
	.string	"decodeInvocation"
	.align	2
	.type	__FUNCTION__.1769, @object
	.size	__FUNCTION__.1769, 31
__FUNCTION__.1769:
	.string	"thread_state_ptr_set_tcbQueued"
	.align	2
	.type	__func__.6286, @object
	.size	__func__.6286, 20
__func__.6286:
	.string	"decodeTCBInvocation"
	.align	2
	.type	__func__.6302, @object
	.size	__func__.6302, 20
__func__.6302:
	.string	"decodeCopyRegisters"
	.align	2
	.type	__func__.6314, @object
	.size	__func__.6314, 20
__func__.6314:
	.string	"decodeReadRegisters"
	.align	2
	.type	__func__.6326, @object
	.size	__func__.6326, 21
__func__.6326:
	.string	"decodeWriteRegisters"
	.align	2
	.type	__func__.6346, @object
	.size	__func__.6346, 19
__func__.6346:
	.string	"decodeTCBConfigure"
	.align	2
	.type	__func__.6354, @object
	.size	__func__.6354, 18
__func__.6354:
	.string	"decodeSetPriority"
	.align	2
	.type	__func__.6365, @object
	.size	__func__.6365, 19
__func__.6365:
	.string	"decodeSetIPCBuffer"
	.align	2
	.type	__func__.6383, @object
	.size	__func__.6383, 15
__func__.6383:
	.string	"decodeSetSpace"
	.align	2
	.type	__func__.6392, @object
	.size	__func__.6392, 23
__func__.6392:
	.string	"decodeDomainInvocation"
	.align	2
	.type	__func__.6399, @object
	.size	__func__.6399, 14
__func__.6399:
	.string	"decodeBindAEP"
	.align	2
	.type	__func__.6404, @object
	.size	__func__.6404, 16
__func__.6404:
	.string	"decodeUnbindAEP"
	.align	2
	.type	__func__.6525, @object
	.size	__func__.6525, 24
__func__.6525:
	.string	"decodeUntypedInvocation"
	.align	2
	.type	__FUNCTION__.1942, @object
	.size	__FUNCTION__.1942, 36
__FUNCTION__.1942:
	.string	"cap_untyped_cap_get_capDeviceMemory"
	.align	2
	.type	__FUNCTION__.1950, @object
	.size	__FUNCTION__.1950, 37
__FUNCTION__.1950:
	.string	"cap_untyped_cap_ptr_get_capBlockSize"
	.ident	"GCC: (GNU) 5.1.0"
