.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.11.1 */

glabel osViBlack
/* 40D40 80065940 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 40D44 80065944 AFB00010 */  sw        $s0, 0x10($sp)
/* 40D48 80065948 AFBF0014 */  sw        $ra, 0x14($sp)
/* 40D4C 8006594C 0C019B40 */  jal       __osDisableInt
/* 40D50 80065950 309000FF */   andi     $s0, $a0, 0xFF
/* 40D54 80065954 12000006 */  beqz      $s0, .LIQUE_80065970
/* 40D58 80065958 00402021 */   addu     $a0, $v0, $zero
/* 40D5C 8006595C 3C038009 */  lui       $v1, %hi(__osViNext)
/* 40D60 80065960 8C634654 */  lw        $v1, %lo(__osViNext)($v1)
/* 40D64 80065964 94620000 */  lhu       $v0, 0x0($v1)
/* 40D68 80065968 08019660 */  j         .LIQUE_80065980
/* 40D6C 8006596C 34420020 */   ori      $v0, $v0, 0x20
.LIQUE_80065970:
/* 40D70 80065970 3C038009 */  lui       $v1, %hi(__osViNext)
/* 40D74 80065974 8C634654 */  lw        $v1, %lo(__osViNext)($v1)
/* 40D78 80065978 94620000 */  lhu       $v0, 0x0($v1)
/* 40D7C 8006597C 3042FFDF */  andi      $v0, $v0, 0xFFDF
.LIQUE_80065980:
/* 40D80 80065980 0C019B5C */  jal       __osRestoreInt
/* 40D84 80065984 A4620000 */   sh       $v0, 0x0($v1)
/* 40D88 80065988 8FBF0014 */  lw        $ra, 0x14($sp)
/* 40D8C 8006598C 8FB00010 */  lw        $s0, 0x10($sp)
/* 40D90 80065990 03E00008 */  jr        $ra
/* 40D94 80065994 27BD0018 */   addiu    $sp, $sp, 0x18
/* 40D98 80065998 00000000 */  nop
/* 40D9C 8006599C 00000000 */  nop
