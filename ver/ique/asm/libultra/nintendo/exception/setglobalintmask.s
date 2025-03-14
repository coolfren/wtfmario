.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.11.1 */

glabel __osSetGlobalIntMask
/* 470A0 8006BCA0 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 470A4 8006BCA4 AFBF0018 */  sw        $ra, 0x18($sp)
/* 470A8 8006BCA8 AFBE0014 */  sw        $fp, 0x14($sp)
/* 470AC 8006BCAC AFB00010 */  sw        $s0, 0x10($sp)
/* 470B0 8006BCB0 03A0F021 */  addu      $fp, $sp, $zero
/* 470B4 8006BCB4 0C019B40 */  jal       __osDisableInt
/* 470B8 8006BCB8 AFC40020 */   sw       $a0, 0x20($fp)
/* 470BC 8006BCBC 00408021 */  addu      $s0, $v0, $zero
/* 470C0 8006BCC0 3C028009 */  lui       $v0, %hi(__OSGlobalIntMask)
/* 470C4 8006BCC4 8C4245B4 */  lw        $v0, %lo(__OSGlobalIntMask)($v0)
/* 470C8 8006BCC8 8FC30020 */  lw        $v1, 0x20($fp)
/* 470CC 8006BCCC 00431025 */  or        $v0, $v0, $v1
/* 470D0 8006BCD0 3C018009 */  lui       $at, %hi(__OSGlobalIntMask)
/* 470D4 8006BCD4 AC2245B4 */  sw        $v0, %lo(__OSGlobalIntMask)($at)
/* 470D8 8006BCD8 0C019B5C */  jal       __osRestoreInt
/* 470DC 8006BCDC 02002021 */   addu     $a0, $s0, $zero
/* 470E0 8006BCE0 03C0E821 */  addu      $sp, $fp, $zero
/* 470E4 8006BCE4 8FBF0018 */  lw        $ra, 0x18($sp)
/* 470E8 8006BCE8 8FBE0014 */  lw        $fp, 0x14($sp)
/* 470EC 8006BCEC 8FB00010 */  lw        $s0, 0x10($sp)
/* 470F0 8006BCF0 03E00008 */  jr        $ra
/* 470F4 8006BCF4 27BD0020 */   addiu    $sp, $sp, 0x20
/* 470F8 8006BCF8 00000000 */  nop
/* 470FC 8006BCFC 00000000 */  nop
