.text
.thumb

.include "anim_particle/particle_ids.s"

@Battle Animations Particles Table
@Format for each entry is:
@Pointer to image, Particle size (hword), Particle ID (hword)

.macro particle_entry particle_entry_ptr particle_entry1 particle_entry2
.word \particle_entry_ptr
.hword \particle_entry1
.hword \particle_entry2
.endm

.align 2
battle_particle_table:
.byte 0x38, 0x25, 0xC0, 0x08, 0x00, 0x02, 0x10, 0x27
.byte 0xE0, 0xC6, 0xC1, 0x08, 0x00, 0x03, 0x11, 0x27
.byte 0x84, 0x07, 0xC2, 0x08, 0x00, 0x02, 0x12, 0x27
.byte 0xE8, 0x25, 0xC0, 0x08, 0x00, 0x01, 0x13, 0x27
.byte 0x5C, 0x26, 0xC0, 0x08, 0x00, 0x02, 0x14, 0x27
.byte 0x0C, 0x27, 0xC0, 0x08, 0x00, 0x04, 0x15, 0x27
.byte 0xE0, 0x27, 0xC0, 0x08, 0x80, 0x01, 0x16, 0x27
.byte 0xCC, 0x29, 0xC0, 0x08, 0x00, 0x08, 0x17, 0x27
.byte 0x68, 0x2B, 0xC0, 0x08, 0x20, 0x00, 0x18, 0x27
.byte 0xA4, 0x2F, 0xC0, 0x08, 0x00, 0x04, 0x19, 0x27
.byte 0xC4, 0x2B, 0xC0, 0x08, 0x00, 0x12, 0x1A, 0x27
.byte 0xAC, 0x32, 0xC0, 0x08, 0x80, 0x01, 0x1B, 0x27
.byte 0x4C, 0x33, 0xC0, 0x08, 0x80, 0x00, 0x1C, 0x27
.byte 0x38, 0x34, 0xC0, 0x08, 0x80, 0x00, 0x1D, 0x27
.byte 0xD4, 0xFB, 0xC1, 0x08, 0x80, 0x02, 0x1E, 0x27
.byte 0x84, 0x34, 0xC0, 0x08, 0x80, 0x00, 0x1F, 0x27
.byte 0x18, 0x35, 0xC0, 0x08, 0x00, 0x01, 0x20, 0x27
.byte 0x98, 0x35, 0xC0, 0x08, 0x20, 0x00, 0x21, 0x27
.byte 0x7C, 0x4D, 0xC2, 0x08, 0x80, 0x00, 0x22, 0x27
.byte 0xF8, 0x35, 0xC0, 0x08, 0x00, 0x04, 0x23, 0x27
.byte 0xB8, 0x36, 0xC0, 0x08, 0x00, 0x02, 0x24, 0x27
.byte 0x28, 0x3A, 0xC0, 0x08, 0x00, 0x0A, 0x25, 0x27
.byte 0x28, 0x3A, 0xC0, 0x08, 0x00, 0x0A, 0x26, 0x27
.byte 0xD4, 0x37, 0xC0, 0x08, 0x80, 0x03, 0x27, 0x27
.byte 0xA0, 0x3E, 0xC0, 0x08, 0x00, 0x03, 0x28, 0x27
.byte 0xB0, 0x3D, 0xC0, 0x08, 0x00, 0x0A, 0x29, 0x27
.byte 0x94, 0x44, 0xC0, 0x08, 0x00, 0x0A, 0x2A, 0x27
.byte 0x1C, 0x48, 0xC0, 0x08, 0x00, 0x0A, 0x2B, 0x27
.byte 0x40, 0x4B, 0xC0, 0x08, 0x00, 0x0A, 0x2C, 0x27
.byte 0x90, 0x4E, 0xC0, 0x08, 0x00, 0x0A, 0x2D, 0x27
.byte 0x70, 0x51, 0xC0, 0x08, 0x00, 0x0A, 0x2E, 0x27
.byte 0x80, 0x3F, 0xC0, 0x08, 0x00, 0x0E, 0x2F, 0x27
.byte 0xA8, 0x43, 0xC0, 0x08, 0x80, 0x03, 0x30, 0x27
.byte 0x7C, 0x55, 0xC0, 0x08, 0x00, 0x10, 0x31, 0x27
.byte 0xEC, 0x5E, 0xC0, 0x08, 0x00, 0x08, 0x32, 0x27
.byte 0xB8, 0x62, 0xC0, 0x08, 0x00, 0x0A, 0x33, 0x27
.byte 0x78, 0x66, 0xC0, 0x08, 0x00, 0x08, 0x34, 0x27
.byte 0x4C, 0x6A, 0xC0, 0x08, 0x00, 0x0A, 0x35, 0x27
.byte 0x64, 0x79, 0xC0, 0x08, 0x00, 0x0A, 0x36, 0x27
.byte 0x88, 0x7B, 0xC0, 0x08, 0x00, 0x0A, 0x37, 0x27
.byte 0x84, 0x7E, 0xC0, 0x08, 0x00, 0x0A, 0x38, 0x27
.byte 0x90, 0x80, 0xC0, 0x08, 0x00, 0x0A, 0x39, 0x27
.byte 0xC4, 0x82, 0xC0, 0x08, 0x00, 0x0A, 0x3A, 0x27
.byte 0xBC, 0x85, 0xC0, 0x08, 0x00, 0x0A, 0x3B, 0x27
.byte 0x0C, 0x8A, 0xC0, 0x08, 0x00, 0x0A, 0x3C, 0x27
.byte 0xA0, 0x8C, 0xC0, 0x08, 0x00, 0x0A, 0x3D, 0x27
.byte 0x04, 0x96, 0xC0, 0x08, 0x00, 0x10, 0x3E, 0x27
.byte 0x04, 0x96, 0xC0, 0x08, 0x00, 0x10, 0x3F, 0x27
.byte 0xF0, 0x9C, 0xC0, 0x08, 0x00, 0x10, 0x40, 0x27
.byte 0xF0, 0x9C, 0xC0, 0x08, 0x00, 0x10, 0x41, 0x27
.byte 0xFC, 0x9F, 0xC0, 0x08, 0x00, 0x02, 0x42, 0x27
.byte 0x9C, 0xA0, 0xC0, 0x08, 0x00, 0x02, 0x43, 0x27
.byte 0x48, 0xA1, 0xC0, 0x08, 0x00, 0x02, 0x44, 0x27
.byte 0x30, 0xE8, 0xC2, 0x08, 0x00, 0x08, 0x45, 0x27
.byte 0xA8, 0xA3, 0xC0, 0x08, 0x80, 0x00, 0x46, 0x27
.byte 0xBC, 0xA8, 0xC0, 0x08, 0x00, 0x02, 0x47, 0x27
.byte 0xEC, 0xA3, 0xC0, 0x08, 0x00, 0x10, 0x48, 0x27
.byte 0x80, 0xA9, 0xC0, 0x08, 0x80, 0x01, 0x49, 0x27
.byte 0x2C, 0xAA, 0xC0, 0x08, 0x00, 0x0C, 0x4A, 0x27
.byte 0xBC, 0xAE, 0xC0, 0x08, 0x00, 0x01, 0x4B, 0x27
.byte 0x38, 0xAF, 0xC0, 0x08, 0x40, 0x00, 0x4C, 0x27
.byte 0x7C, 0xAF, 0xC0, 0x08, 0x80, 0x01, 0x4D, 0x27
.byte 0x4C, 0xB0, 0xC0, 0x08, 0x00, 0x08, 0x4E, 0x27
.byte 0x44, 0xB4, 0xC0, 0x08, 0x80, 0x04, 0x4F, 0x27
.byte 0x04, 0x31, 0xC2, 0x08, 0x00, 0x02, 0x50, 0x27
.byte 0xBC, 0xB6, 0xC0, 0x08, 0x00, 0x02, 0x51, 0x27
.byte 0xF0, 0xB7, 0xC0, 0x08, 0x00, 0x01, 0x52, 0x27
.byte 0xBC, 0xB6, 0xC0, 0x08, 0x00, 0x02, 0x53, 0x27
.byte 0xBC, 0xB6, 0xC0, 0x08, 0x00, 0x02, 0x54, 0x27
.byte 0xBC, 0xB6, 0xC0, 0x08, 0x00, 0x02, 0x55, 0x27
.byte 0x64, 0xB8, 0xC0, 0x08, 0x00, 0x02, 0x56, 0x27
.byte 0x0C, 0xB9, 0xC0, 0x08, 0x00, 0x0A, 0x57, 0x27
.byte 0x38, 0xBB, 0xC0, 0x08, 0x00, 0x03, 0x58, 0x27
.byte 0x20, 0xBC, 0xC0, 0x08, 0x80, 0x01, 0x59, 0x27
.byte 0x9C, 0xB2, 0xC1, 0x08, 0xA0, 0x00, 0x5A, 0x27
.byte 0x5C, 0xBD, 0xC0, 0x08, 0x00, 0x07, 0x5B, 0x27
.byte 0xEC, 0x4C, 0xC1, 0x08, 0x00, 0x04, 0x5C, 0x27
.byte 0x50, 0x4F, 0xC1, 0x08, 0x00, 0x02, 0x5D, 0x27
.byte 0xFC, 0xBF, 0xC0, 0x08, 0x00, 0x03, 0x5E, 0x27
.byte 0xBC, 0xC1, 0xC0, 0x08, 0x00, 0x0C, 0x5F, 0x27
.byte 0xEC, 0xC5, 0xC0, 0x08, 0x00, 0x0A, 0x60, 0x27
.byte 0x74, 0xC9, 0xC0, 0x08, 0x80, 0x00, 0x61, 0x27
.byte 0x90, 0xCB, 0xC0, 0x08, 0x40, 0x00, 0x62, 0x27
.byte 0x18, 0xCE, 0xC0, 0x08, 0x00, 0x0E, 0x63, 0x27
.byte 0xBC, 0xD2, 0xC0, 0x08, 0x00, 0x0E, 0x64, 0x27
.byte 0x80, 0xD6, 0xC0, 0x08, 0x80, 0x02, 0x65, 0x27
.byte 0x38, 0xD7, 0xC0, 0x08, 0x00, 0x02, 0x66, 0x27
.byte 0xFC, 0x4C, 0xC2, 0x08, 0x80, 0x00, 0x67, 0x27
.byte 0xA8, 0xD8, 0xC0, 0x08, 0xC0, 0x00, 0x68, 0x27
.byte 0xF8, 0xD8, 0xC0, 0x08, 0x00, 0x0A, 0x69, 0x27
.byte 0x6C, 0xDB, 0xC0, 0x08, 0x00, 0x02, 0x6A, 0x27
.byte 0xFC, 0xDB, 0xC0, 0x08, 0x80, 0x01, 0x6B, 0x27
.byte 0x30, 0xDD, 0xC0, 0x08, 0x80, 0x00, 0x6C, 0x27
.byte 0xAC, 0xDD, 0xC0, 0x08, 0x00, 0x10, 0x6D, 0x27
.byte 0x7C, 0xE4, 0xC0, 0x08, 0x00, 0x0A, 0x6E, 0x27
.byte 0x20, 0xE6, 0xC0, 0x08, 0x80, 0x01, 0x6F, 0x27
.byte 0xD0, 0xE6, 0xC0, 0x08, 0x80, 0x03, 0x70, 0x27
.byte 0x40, 0xE8, 0xC0, 0x08, 0x00, 0x0C, 0x71, 0x27
.byte 0x20, 0xEA, 0xC0, 0x08, 0x00, 0x02, 0x72, 0x27
.byte 0xEC, 0x7C, 0xC2, 0x08, 0x00, 0x02, 0x73, 0x27
.byte 0x58, 0xEB, 0xC0, 0x08, 0x00, 0x02, 0x74, 0x27
.byte 0x58, 0xEC, 0xC0, 0x08, 0x00, 0x02, 0x75, 0x27
.byte 0x88, 0xED, 0xC0, 0x08, 0x00, 0x04, 0x76, 0x27
.byte 0x20, 0xEF, 0xC0, 0x08, 0x80, 0x00, 0x77, 0x27
.byte 0x8C, 0xEF, 0xC0, 0x08, 0x00, 0x04, 0x78, 0x27
.byte 0x74, 0xF1, 0xC0, 0x08, 0x00, 0x0C, 0x79, 0x27
.byte 0x20, 0xF7, 0xC0, 0x08, 0x00, 0x02, 0x7A, 0x27
.byte 0x10, 0xF8, 0xC0, 0x08, 0x00, 0x10, 0x7B, 0x27
.byte 0xE4, 0xFB, 0xC0, 0x08, 0x00, 0x0A, 0x7C, 0x27
.byte 0x68, 0xFF, 0xC0, 0x08, 0x20, 0x00, 0x7D, 0x27
.byte 0xB8, 0xFF, 0xC0, 0x08, 0x00, 0x0E, 0x7E, 0x27
.byte 0x9C, 0x03, 0xC1, 0x08, 0x80, 0x00, 0x7F, 0x27
.byte 0x04, 0x04, 0xC1, 0x08, 0x00, 0x0A, 0x80, 0x27
.byte 0x54, 0x07, 0xC1, 0x08, 0x00, 0x04, 0x81, 0x27
.byte 0xE8, 0x09, 0xC1, 0x08, 0x00, 0x02, 0x82, 0x27
.byte 0xE4, 0x15, 0xC1, 0x08, 0x00, 0x07, 0x83, 0x27
.byte 0x88, 0x2E, 0xC1, 0x08, 0x00, 0x08, 0x84, 0x27
.byte 0x5C, 0x31, 0xC1, 0x08, 0x00, 0x0A, 0x85, 0x27
.byte 0xB4, 0x33, 0xC1, 0x08, 0x00, 0x06, 0x86, 0x27
.byte 0x68, 0x35, 0xC1, 0x08, 0x00, 0x08, 0x87, 0x27
.byte 0x20, 0x38, 0xC1, 0x08, 0x00, 0x02, 0x88, 0x27
.byte 0x3C, 0x39, 0xC1, 0x08, 0x40, 0x00, 0x89, 0x27
.byte 0x8C, 0x39, 0xC1, 0x08, 0x80, 0x01, 0x8A, 0x27
.byte 0xA4, 0x3A, 0xC1, 0x08, 0x00, 0x06, 0x8B, 0x27
.byte 0xE0, 0x3B, 0xC1, 0x08, 0x00, 0x06, 0x8C, 0x27
.byte 0xA0, 0x3E, 0xC1, 0x08, 0x00, 0x02, 0x8D, 0x27
.byte 0xB4, 0x3F, 0xC1, 0x08, 0x80, 0x00, 0x8E, 0x27
.byte 0x3C, 0x40, 0xC1, 0x08, 0x00, 0x02, 0x8F, 0x27
.byte 0x00, 0x42, 0xC1, 0x08, 0x00, 0x08, 0x90, 0x27
.byte 0x8C, 0x44, 0xC1, 0x08, 0x80, 0x00, 0x91, 0x27
.byte 0xF0, 0x44, 0xC1, 0x08, 0x00, 0x0A, 0x92, 0x27
.byte 0xE8, 0x48, 0xC1, 0x08, 0x80, 0x02, 0x93, 0x27
.byte 0x58, 0x4A, 0xC1, 0x08, 0x80, 0x02, 0x94, 0x27
.byte 0x78, 0x4B, 0xC1, 0x08, 0x00, 0x01, 0x95, 0x27
.byte 0x1C, 0x4C, 0xC1, 0x08, 0x00, 0x02, 0x96, 0x27
.byte 0xA0, 0xA3, 0xC1, 0x08, 0x00, 0x02, 0x97, 0x27
.byte 0x40, 0xA5, 0xC1, 0x08, 0x20, 0x00, 0x98, 0x27
.byte 0x8C, 0xA5, 0xC1, 0x08, 0x00, 0x0A, 0x99, 0x27
.byte 0x40, 0xAB, 0xC1, 0x08, 0x00, 0x08, 0x9A, 0x27
.byte 0x90, 0xA7, 0xC1, 0x08, 0x00, 0x08, 0x9B, 0x27
.byte 0x8C, 0xAC, 0xC1, 0x08, 0xC0, 0x00, 0x9C, 0x27
.byte 0x2C, 0xAD, 0xC1, 0x08, 0xC0, 0x01, 0x9D, 0x27
.byte 0x54, 0xAE, 0xC1, 0x08, 0x00, 0x01, 0x9E, 0x27
.byte 0xAC, 0xCB, 0xC2, 0x08, 0x00, 0x08, 0x9F, 0x27
.byte 0x64, 0xBC, 0xC1, 0x08, 0x00, 0x02, 0xA0, 0x27
.byte 0xA0, 0xA9, 0xC1, 0x08, 0x00, 0x08, 0xA1, 0x27
.byte 0x78, 0x24, 0xC0, 0x08, 0x80, 0x01, 0xA2, 0x27
.byte 0x6C, 0xAF, 0xC1, 0x08, 0x80, 0x01, 0xA3, 0x27
.byte 0x78, 0xB1, 0xC1, 0x08, 0x00, 0x02, 0xA4, 0x27
.byte 0xA8, 0xB0, 0xC1, 0x08, 0x00, 0x02, 0xA5, 0x27
.byte 0x28, 0xB3, 0xC1, 0x08, 0x80, 0x01, 0xA6, 0x27
.byte 0x18, 0xB4, 0xC1, 0x08, 0x00, 0x04, 0xA7, 0x27
.byte 0xCC, 0x33, 0xC0, 0x08, 0x80, 0x00, 0xA8, 0x27
.byte 0x10, 0xB5, 0xC1, 0x08, 0x00, 0x01, 0xA9, 0x27
.byte 0x94, 0xB5, 0xC1, 0x08, 0x00, 0x01, 0xAA, 0x27
.byte 0x60, 0xB6, 0xC1, 0x08, 0x40, 0x01, 0xAB, 0x27
.byte 0x48, 0xB7, 0xC1, 0x08, 0x00, 0x08, 0xAC, 0x27
.byte 0x88, 0xB9, 0xC1, 0x08, 0x00, 0x02, 0xAD, 0x27
.byte 0x04, 0xBA, 0xC1, 0x08, 0x00, 0x01, 0xAE, 0x27
.byte 0xF0, 0xBA, 0xC1, 0x08, 0xA0, 0x00, 0xAF, 0x27
.byte 0x94, 0xBB, 0xC1, 0x08, 0x00, 0x01, 0xB0, 0x27
.byte 0x7C, 0x29, 0xC0, 0x08, 0x80, 0x00, 0xB1, 0x27
.byte 0x40, 0xBE, 0xC1, 0x08, 0x00, 0x03, 0xB2, 0x27
.byte 0xE4, 0xBE, 0xC1, 0x08, 0x00, 0x01, 0xB3, 0x27
.byte 0xE4, 0xBE, 0xC1, 0x08, 0x00, 0x01, 0xB4, 0x27
.byte 0xE4, 0xBE, 0xC1, 0x08, 0x00, 0x01, 0xB5, 0x27
.byte 0xA4, 0xBF, 0xC1, 0x08, 0x00, 0x08, 0xB6, 0x27
.byte 0xA4, 0xBF, 0xC1, 0x08, 0x00, 0x08, 0xB7, 0x27
.byte 0xA4, 0xBF, 0xC1, 0x08, 0x00, 0x08, 0xB8, 0x27
.byte 0xA4, 0xBF, 0xC1, 0x08, 0x00, 0x08, 0xB9, 0x27
.byte 0xA4, 0xBF, 0xC1, 0x08, 0x00, 0x08, 0xBA, 0x27
.byte 0x50, 0xC3, 0xC1, 0x08, 0x80, 0x00, 0xBB, 0x27
.byte 0x64, 0xBC, 0xC1, 0x08, 0x00, 0x02, 0xBC, 0x27
.byte 0xBC, 0xC7, 0xC1, 0x08, 0x00, 0x02, 0xBD, 0x27
.byte 0xFC, 0xD5, 0xC1, 0x08, 0x00, 0x02, 0xBE, 0x27
.byte 0xC4, 0xD6, 0xC1, 0x08, 0x80, 0x00, 0xBF, 0x27
.byte 0x50, 0xD7, 0xC1, 0x08, 0x00, 0x02, 0xC0, 0x27
.byte 0xD0, 0xD8, 0xC1, 0x08, 0x00, 0x05, 0xC1, 0x27
.byte 0xAC, 0xD9, 0xC1, 0x08, 0x00, 0x08, 0xC2, 0x27
.byte 0x64, 0xDB, 0xC1, 0x08, 0x00, 0x04, 0xC3, 0x27
.byte 0x40, 0xDC, 0xC1, 0x08, 0x20, 0x00, 0xC4, 0x27
.byte 0x58, 0xDC, 0xC1, 0x08, 0x00, 0x08, 0xC5, 0x27
.byte 0xE8, 0xDF, 0xC1, 0x08, 0x00, 0x01, 0xC6, 0x27
.byte 0xB4, 0xE0, 0xC1, 0x08, 0x00, 0x08, 0xC7, 0x27
.byte 0x54, 0xE3, 0xC1, 0x08, 0x00, 0x04, 0xC8, 0x27
.byte 0xD0, 0xE4, 0xC1, 0x08, 0x00, 0x0A, 0xC9, 0x27
.byte 0xD8, 0xED, 0xC1, 0x08, 0x00, 0x10, 0xCA, 0x27
.byte 0xC8, 0xEB, 0xC1, 0x08, 0x00, 0x08, 0xCB, 0x27
.byte 0xC0, 0x66, 0xD9, 0x08, 0x00, 0x04, 0xCC, 0x27
.byte 0x98, 0x01, 0xC2, 0x08, 0x00, 0x02, 0xCD, 0x27
.byte 0x84, 0xFC, 0xC1, 0x08, 0x00, 0x08, 0xCE, 0x27
.byte 0x04, 0xFF, 0xC1, 0x08, 0x00, 0x08, 0xCF, 0x27
.byte 0x3C, 0x02, 0xC2, 0x08, 0x00, 0x08, 0xD0, 0x27
.byte 0xE4, 0x04, 0xC2, 0x08, 0x00, 0x02, 0xD1, 0x27
.byte 0x4C, 0x0C, 0xC2, 0x08, 0x00, 0x08, 0xD2, 0x27
.byte 0xAC, 0x0F, 0xC2, 0x08, 0x00, 0x02, 0xD3, 0x27
.byte 0x90, 0x08, 0xC2, 0x08, 0x00, 0x08, 0xD4, 0x27
.byte 0x84, 0x10, 0xC2, 0x08, 0x00, 0x02, 0xD5, 0x27
.byte 0x1C, 0x12, 0xC2, 0x08, 0x00, 0x08, 0xD6, 0x27
.byte 0x34, 0x16, 0xC2, 0x08, 0x00, 0x04, 0xD7, 0x27
.byte 0x18, 0x17, 0xC2, 0x08, 0x00, 0x02, 0xD8, 0x27
.byte 0x74, 0x18, 0xC2, 0x08, 0x80, 0x0A, 0xD9, 0x27
.byte 0xA8, 0x20, 0xC2, 0x08, 0x00, 0x06, 0xDA, 0x27
.byte 0x34, 0x22, 0xC2, 0x08, 0x00, 0x08, 0xDB, 0x27
.byte 0x0C, 0x1F, 0xC2, 0x08, 0x00, 0x02, 0xDC, 0x27
.byte 0xA4, 0x26, 0xC2, 0x08, 0x00, 0x06, 0xDD, 0x27
.byte 0x04, 0x24, 0xC2, 0x08, 0x00, 0x08, 0xDE, 0x27
.byte 0xFC, 0x28, 0xC2, 0x08, 0x80, 0x01, 0xDF, 0x27
.byte 0xEC, 0x29, 0xC2, 0x08, 0x00, 0x08, 0xE0, 0x27
.byte 0xDC, 0x2D, 0xC2, 0x08, 0x00, 0x08, 0xE1, 0x27
.byte 0x18, 0x32, 0xC2, 0x08, 0x80, 0x00, 0xE2, 0x27
.byte 0xB0, 0x42, 0xC2, 0x08, 0x80, 0x00, 0xE3, 0x27
.byte 0x7C, 0x40, 0xC2, 0x08, 0x00, 0x08, 0xE4, 0x27
.byte 0x00, 0x43, 0xC2, 0x08, 0x00, 0x08, 0xE5, 0x27
.byte 0x90, 0x45, 0xC2, 0x08, 0x00, 0x06, 0xE6, 0x27
.byte 0x20, 0x48, 0xC2, 0x08, 0x00, 0x06, 0xE7, 0x27
.byte 0x18, 0x32, 0xC2, 0x08, 0x80, 0x00, 0xE8, 0x27
.byte 0xF4, 0x3F, 0xC2, 0x08, 0x80, 0x00, 0xE9, 0x27
.byte 0x50, 0x4C, 0xC2, 0x08, 0x80, 0x01, 0xEA, 0x27
.byte 0x18, 0x32, 0xC2, 0x08, 0x80, 0x00, 0xEB, 0x27
.byte 0xFC, 0x4D, 0xC2, 0x08, 0x00, 0x02, 0xEC, 0x27
.byte 0x48, 0x4F, 0xC2, 0x08, 0x00, 0x04, 0xED, 0x27
.byte 0xAC, 0x51, 0xC2, 0x08, 0x00, 0x0A, 0xEE, 0x27
.byte 0xE0, 0x54, 0xC2, 0x08, 0x00, 0x08, 0xEF, 0x27
.byte 0x94, 0x57, 0xC2, 0x08, 0x00, 0x02, 0xF0, 0x27
.byte 0x64, 0x77, 0xC2, 0x08, 0x00, 0x04, 0xF1, 0x27
.byte 0x58, 0x7A, 0xC2, 0x08, 0x80, 0x00, 0xF2, 0x27
.byte 0x10, 0x79, 0xC2, 0x08, 0x00, 0x08, 0xF3, 0x27
.byte 0x1C, 0x5B, 0xC2, 0x08, 0x00, 0x02, 0xF4, 0x27
.byte 0x08, 0x7B, 0xC2, 0x08, 0x00, 0x03, 0xF5, 0x27
.byte 0xB8, 0x58, 0xC2, 0x08, 0x00, 0x08, 0xF6, 0x27
.byte 0x94, 0x83, 0xC2, 0x08, 0x80, 0x03, 0xF7, 0x27
.byte 0x34, 0x7E, 0xC2, 0x08, 0x00, 0x08, 0xF8, 0x27
shiny_particle_image:
.byte 0x64, 0x85, 0xC2, 0x08, 0xC0, 0x00, 0xF9, 0x27
.byte 0x10, 0x86, 0xC2, 0x08, 0x00, 0x08, 0xFA, 0x27
.byte 0x80, 0x88, 0xC2, 0x08, 0x60, 0x00, 0xFB, 0x27
.byte 0x80, 0x88, 0xC2, 0x08, 0x60, 0x00, 0xFC, 0x27
.byte 0x80, 0x88, 0xC2, 0x08, 0x60, 0x00, 0xFD, 0x27
.byte 0xF4, 0x87, 0xC2, 0x08, 0x80, 0x00, 0xFE, 0x27
.byte 0xA0, 0xCA, 0xC2, 0x08, 0x80, 0x01, 0xFF, 0x27
.byte 0xF4, 0xCD, 0xC2, 0x08, 0x80, 0x01, 0x00, 0x28
.byte 0x48, 0xD3, 0xC2, 0x08, 0x00, 0x02, 0x01, 0x28
.byte 0x70, 0xD5, 0xC2, 0x08, 0x00, 0x02, 0x02, 0x28
.byte 0xD0, 0xD6, 0xC2, 0x08, 0x20, 0x00, 0x03, 0x28
.byte 0x54, 0xE5, 0xC2, 0x08, 0x00, 0x04, 0x04, 0x28
.byte 0x08, 0xDF, 0xC2, 0x08, 0x00, 0x06, 0x05, 0x28
.byte 0xAC, 0xE0, 0xC2, 0x08, 0x00, 0x10, 0x06, 0x28
.byte 0x4C, 0xE6, 0xC2, 0x08, 0x00, 0x04, 0x07, 0x28
.byte 0xA4, 0xEB, 0xC2, 0x08, 0x20, 0x00, 0x08, 0x28
.byte 0xD4, 0xEB, 0xC2, 0x08, 0x80, 0x00, 0x09, 0x28
.byte 0x44, 0xEC, 0xC2, 0x08, 0x00, 0x08, 0x0A, 0x28
.byte 0x38, 0xEE, 0xC2, 0x08, 0x80, 0x00, 0x0B, 0x28
.byte 0xB4, 0xEE, 0xC2, 0x08, 0x00, 0x02, 0x0C, 0x28
.byte 0xF0, 0xEF, 0xC2, 0x08, 0x00, 0x04, 0x0D, 0x28
.byte 0xF4, 0xF1, 0xC2, 0x08, 0x00, 0x02, 0x0E, 0x28
.byte 0x54, 0xF3, 0xC2, 0x08, 0x00, 0x02, 0x0F, 0x28
.byte 0xF0, 0xF4, 0xC2, 0x08, 0x00, 0x08, 0x10, 0x28
.byte 0xA4, 0xF8, 0xC2, 0x08, 0x80, 0x02, 0x11, 0x28
.byte 0xE0, 0xF3, 0xC2, 0x08, 0x00, 0x02, 0x12, 0x28
.byte 0xA8, 0xB0, 0xC1, 0x08, 0x00, 0x02, 0x13, 0x28
.byte 0xE0, 0xDA, 0xD8, 0x08, 0x00, 0x04, 0x14, 0x28
.byte 0xA4, 0xD2, 0xD8, 0x08, 0x00, 0x02, 0x15, 0x28
.byte 0x40, 0xE8, 0xD8, 0x08, 0x00, 0x02, 0x16, 0x28
.byte 0x44, 0x3B, 0xD9, 0x08, 0x80, 0x00, 0x17, 0x28
.byte 0x54, 0xEA, 0xD8, 0x08, 0x20, 0x00, 0x18, 0x28
.byte 0x54, 0xEA, 0xD8, 0x08, 0x20, 0x00, 0x19, 0x28
.byte 0x9C, 0x3B, 0xD9, 0x08, 0x80, 0x00, 0x1A, 0x28
.byte 0x7C, 0x40, 0xC2, 0x08, 0x00, 0x08, 0x1B, 0x28
.byte 0x54, 0xEA, 0xD8, 0x08, 0x20, 0x00, 0x1C, 0x28
.byte 0x2C, 0xEF, 0xD8, 0x08, 0x80, 0x00, 0x1D, 0x28
.byte 0x78, 0xA3, 0xDB, 0x08, 0x00, 0x04, 0x1E, 0x28
.byte 0xB8, 0xA4, 0xDB, 0x08, 0x80, 0x00, 0x1F, 0x28
.byte 0xC4, 0xEC, 0xD8, 0x08, 0x00, 0x08, 0x20, 0x28
.byte 0x04, 0xEF, 0xD8, 0x08, 0x20, 0x00, 0x21, 0x28
.byte 0x98, 0xEF, 0xD8, 0x08, 0x00, 0x08, 0x22, 0x28
.byte 0x18, 0xF1, 0xD8, 0x08, 0x00, 0x08, 0x23, 0x28
.byte 0x84, 0xF2, 0xD8, 0x08, 0x00, 0x08, 0x24, 0x28
.byte 0xEC, 0x2E, 0xD9, 0x08, 0x00, 0x10, 0x25, 0x28
.byte 0x24, 0x3C, 0xD9, 0x08, 0x00, 0x08, 0x26, 0x28
.byte 0x4C, 0x3E, 0xD9, 0x08, 0xA0, 0x00, 0x27, 0x28
.byte 0x80, 0xF7, 0xD8, 0x08, 0x00, 0x08, 0x28, 0x28
.byte 0xB4, 0x3E, 0xD9, 0x08, 0x00, 0x02, 0x29, 0x28
.byte 0x74, 0xA1, 0xDB, 0x08, 0x00, 0x06, 0x2A, 0x28
.byte 0x74, 0x34, 0xD9, 0x08, 0x00, 0x02, 0x2B, 0x28
.byte 0x58, 0x46, 0xD9, 0x08, 0x00, 0x08, 0x2C, 0x28
.byte 0xF0, 0x49, 0xD9, 0x08, 0x00, 0x02, 0x2D, 0x28
.byte 0xB4, 0xE0, 0xC1, 0x08, 0x00, 0x08, 0x2E, 0x28
.byte 0xEC, 0xA3, 0xC0, 0x08, 0x00, 0x10, 0x2F, 0x28
.byte 0xE4, 0xBE, 0xC1, 0x08, 0x00, 0x01, 0x30, 0x28

.word MEGA_EVOLUTION_RAINBOW_particle
.byte 0x80, 0x01
.hword MEGAEVORAINBOW_particle

.word MEGA_EVOLUTION_STONE_particle
.byte 0x00, 0x08
.hword MEGAEVOSTONE_particle

.word MEGA_EVOLUTION_SYMBOL_particle
.byte 0x00, 0x02
.hword MEGAEVOSYMBOL_particle

.word PRIMAL_REVERSION_CHARGE_particle
.byte 0x80, 0x01
.hword ALPHAEVO_CHARGE_particle

.word PRIMAL_REVERSION_STONE_particle
.byte 0x00, 0x08
.hword ALPHAEVO_STONE_particle

.word ALPHA_REVERSION_SYMBOL_particle
.byte 0x00, 0x02
.hword ALPHAEVO_SYMBOL_particle

.word PRIMAL_REVERSION_CHARGE_particle
.byte 0x80, 0x01
.hword OMEGAEVO_CHARGE_particle

.word PRIMAL_REVERSION_STONE_particle
.byte 0x00, 0x08
.hword OMEGAEVO_STONE_particle

.word OMEGA_REVERSION_SYMBOL_particle
.byte 0x00, 0x02
.hword OMEGAEVO_SYMBOL_particle

.word HAMMER_ARM_particle
.byte 0x00, 0x02, HAMMER_ARM_particle_ID, 0x28
.word BRINE_particle
.byte 0x00, 0x0C, BRINE_particle_ID, 0x28
.word ACUPRESSURE_particle
.byte 0x00, 0x02, ACUPRESSURE_particle_ID, 0x28
.word ASSURANCE_particle
.byte 0x00, 0x02, ASSURANCE_particle_ID, 0x28
.word POWER_TRICK_particle
.byte 0x00, 0x08, POWER_TRICK_particle_ID, 0x28
.word POISON_JAB_particle
.byte 0x80, 0x00, POISON_JAB_particle_ID, 0x28
.word AURA_SPHERE_particle
.byte 0x00, 0x02, AURA_SPHERE_particle_ID, 0x28
.word DRAGON_PULSE_particle
.byte 0x00, 0x01, DRAGON_PULSE_particle_ID, 0x28
.word POWER_GEM_particle
.byte 0x80, 0x00, POWER_GEM_particle_ID, 0x28
.word ENERGY_BALL_particle
.byte 0x00, 0x02, ENERGY_BALL_particle_ID, 0x28
.word FOCUS_BLAST_particle
.byte 0x00, 0x08, FOCUS_BLAST_particle_ID, 0x28
.word PSYCHO_CUT_particle
.byte 0x00, 0x02, PSYCHO_CUT_particle_ID, 0x28
.word DEFOG_particle
.byte 0x00, 0x02, DEFOG_particle_ID, 0x28
.word LEAF_STORM_particle
.byte 0x00, 0x02, LEAF_STORM_particle_ID, 0x28
.word WOOD_HAMMER_particle
.byte 0x00, 0x0C, WOOD_HAMMER_particle_ID, 0x28
.word ATTACK_ORDER_particle
.byte 0x80, 0x04, ATTACK_ORDER_particle_ID, 0x28
.byte 0x90, 0x4E, 0xC0, 0x08, 0x00, 0x0A, 0x4a, 0x28
.word Water_Shuriken_particle
.byte 0x00, 0x02, 0x4b, 0x28
.byte 0x54, 0xE3, 0xC1, 0x08, 0x00, 0x04, 0x4c, 0x28
.word WATER_PLEDGE_particle
.byte 0x00, 0x0A, 0x4d, 0x28
.word PLASMA_FISTS_REI_particle
.byte 0x00, 0x0A, 0x4e, 0x28
.word MIND_BLOWN_HEAD_particle
.byte 0x00, 0x02, 0x4f, 0x28
.word MAT_BLOCK_particle
.byte 0x00, 0x08, 0x50, 0x28
.word KING'S_SHIELD_particle
.byte 0x00, 0x08, 0x51, 0x28
.word THOUSAND_ARROWS_particle
.byte 0x00, 0x02, 0x52, 0x28
.word TOPSY_TURVY_UP_particle
.byte 0x00, 0x0A, 0x53, 0x28
.word TOPSY_TURVY_DOWN_particle
.byte 0x00, 0x0A, 0x54, 0x28
.word CONFIDE_LEFT_particle
.byte 0x00, 0x0A, 0x55, 0x28
.word CONFIDE_RIGHT_particle
.byte 0x00, 0x0A, 0x56, 0x28
.word POLLEN_PUFF_ANIM_PUFF_particle
.byte 0x00, 0x02, 0x57, 0x28
.word PURIFY_LIGHT_BALL_particle
.byte 0x00, 0x02, 0x58, 0x28
.word FAIRY_LOCK_CHAIN_particle
.byte 0x00, 0x8, 0x59, 0x28
.word ANCHOR_SHOT_CHAIN_particle
.byte 0x00, 0x10, 0x5A, 0x28
.word SHADOW_BONE_BONE_particle
.byte 0x00, 0x10, 0x5B, 0x28
.word SHADOW_BONE_FIRE_particle
.byte 0x00, 0xA, 0x5C, 0x28
.word FLASH_CANNON_BALL_particle
.byte 0x00, 0x2, 0x5D, 0x28
.word GRASS_PLEDGE_WIND_particle
.byte 0x00, 0x4, 0x5E, 0x28
.word SPIKY_SHIELD_particle
.byte 0x00, 0x8, 0x5F, 0x28
.word BANEFUL_BUNKER_particle
.byte 0x00, 0x8, 0x60, 0x28
.word HAPPY_HOUR_GOLD_particle
.byte 0x00, 0xA, 0x61, 0x28
.word THOUSAND_WAVES_WIND_particle
.byte 0x80, 0x00, 0x62, 0x28
.word DIAMOND_STORM_WIND_particle
.byte 0x80, 0x00, 0x63, 0x28
.word SPIRIT_SHACKLE_ARROW_particle
.byte 0x00, 0x02, 0x64, 0x28
.word DRAGON_ASCENT_particle
.byte 0x00, 0x08, 0x65, 0x28
.word DARK_PULSE_particle
.byte 0x00, 0x08, 0x66, 0x28
.word DRACO_METEOR_particle
.byte 0x00, 0x08, 0x67, 0x28
.word SWORD_particle
.byte 0x00, 0x08, 0x68, 0x28
.word RAZOR_SHELL_particle
.byte 0x00, 0x08, 0x69, 0x28
.word GEAR_GRIND_particle
.byte 0x00, 0x08, 0x6A, 0x28
.word SHELL_SIDE_ARM_particle
.byte 0x00, 0x08, 0x6B, 0x28
.word SNOW_particle
.byte 0x00, 0x08, 0x6C, 0x28

.align 2

@Battle Animations Particles Table
@Format for each entry is:
@Pointer to Image Pallet, Item Index (hword), Padding (hword)

battle_particle_pallets:
.byte 0xCC, 0x28, 0xC0, 0x08, 0x10, 0x27, 0x00, 0x00
.byte 0x94, 0xC7, 0xC1, 0x08, 0x11, 0x27, 0x00, 0x00
.byte 0x68, 0x08, 0xC2, 0x08, 0x12, 0x27, 0x00, 0x00
.byte 0xF0, 0x28, 0xC0, 0x08, 0x13, 0x27, 0x00, 0x00
.byte 0x18, 0x29, 0xC0, 0x08, 0x14, 0x27, 0x00, 0x00
.byte 0x2C, 0x29, 0xC0, 0x08, 0x15, 0x27, 0x00, 0x00
.byte 0x54, 0x29, 0xC0, 0x08, 0x16, 0x27, 0x00, 0x00
.byte 0x48, 0x2B, 0xC0, 0x08, 0x17, 0x27, 0x00, 0x00
.byte 0x88, 0x2B, 0xC0, 0x08, 0x18, 0x27, 0x00, 0x00
.byte 0x8C, 0x32, 0xC0, 0x08, 0x19, 0x27, 0x00, 0x00
.byte 0xA4, 0x2B, 0xC0, 0x08, 0x1A, 0x27, 0x00, 0x00
.byte 0x24, 0x33, 0xC0, 0x08, 0x1B, 0x27, 0x00, 0x00
.byte 0xB4, 0x33, 0xC0, 0x08, 0x1C, 0x27, 0x00, 0x00
.byte 0x6C, 0x34, 0xC0, 0x08, 0x1D, 0x27, 0x00, 0x00
.byte 0x68, 0xFC, 0xC1, 0x08, 0x1E, 0x27, 0x00, 0x00
.byte 0xF0, 0x34, 0xC0, 0x08, 0x1F, 0x27, 0x00, 0x00
.byte 0x88, 0x35, 0xC0, 0x08, 0x20, 0x27, 0x00, 0x00
.byte 0x88, 0x35, 0xC0, 0x08, 0x21, 0x27, 0x00, 0x00
.byte 0xB8, 0x4D, 0xC2, 0x08, 0x22, 0x27, 0x00, 0x00
.byte 0xDC, 0x35, 0xC0, 0x08, 0x23, 0x27, 0x00, 0x00
.byte 0x84, 0x37, 0xC0, 0x08, 0x24, 0x27, 0x00, 0x00
.byte 0x00, 0x3A, 0xC0, 0x08, 0x25, 0x27, 0x00, 0x00
.byte 0x60, 0x3D, 0xC0, 0x08, 0x26, 0x27, 0x00, 0x00
.byte 0xAC, 0x37, 0xC0, 0x08, 0x27, 0x27, 0x00, 0x00
.byte 0x6C, 0x3F, 0xC0, 0x08, 0x28, 0x27, 0x00, 0x00
.byte 0x88, 0x3D, 0xC0, 0x08, 0x29, 0x27, 0x00, 0x00
.byte 0xCC, 0x47, 0xC0, 0x08, 0x2A, 0x27, 0x00, 0x00
.byte 0xF4, 0x47, 0xC0, 0x08, 0x2B, 0x27, 0x00, 0x00
.byte 0x18, 0x4B, 0xC0, 0x08, 0x2C, 0x27, 0x00, 0x00
.byte 0x48, 0x51, 0xC0, 0x08, 0x2D, 0x27, 0x00, 0x00
.byte 0x30, 0x55, 0xC0, 0x08, 0x2E, 0x27, 0x00, 0x00
.byte 0x60, 0x43, 0xC0, 0x08, 0x2F, 0x27, 0x00, 0x00
.byte 0x80, 0x43, 0xC0, 0x08, 0x30, 0x27, 0x00, 0x00
.byte 0x54, 0x55, 0xC0, 0x08, 0x31, 0x27, 0x00, 0x00
.byte 0x54, 0x55, 0xC0, 0x08, 0x32, 0x27, 0x00, 0x00
.byte 0x54, 0x55, 0xC0, 0x08, 0x33, 0x27, 0x00, 0x00
.byte 0x50, 0x66, 0xC0, 0x08, 0x34, 0x27, 0x00, 0x00
.byte 0x50, 0x66, 0xC0, 0x08, 0x35, 0x27, 0x00, 0x00
.byte 0x14, 0x79, 0xC0, 0x08, 0x36, 0x27, 0x00, 0x00
.byte 0x3C, 0x79, 0xC0, 0x08, 0x37, 0x27, 0x00, 0x00
.byte 0x14, 0x79, 0xC0, 0x08, 0x38, 0x27, 0x00, 0x00
.byte 0x14, 0x79, 0xC0, 0x08, 0x39, 0x27, 0x00, 0x00
.byte 0x94, 0x85, 0xC0, 0x08, 0x3A, 0x27, 0x00, 0x00
.byte 0xBC, 0x89, 0xC0, 0x08, 0x3B, 0x27, 0x00, 0x00
.byte 0xE4, 0x89, 0xC0, 0x08, 0x3C, 0x27, 0x00, 0x00
.byte 0x78, 0x8C, 0xC0, 0x08, 0x3D, 0x27, 0x00, 0x00
.byte 0xE4, 0x99, 0xC0, 0x08, 0x3E, 0x27, 0x00, 0x00
.byte 0x04, 0x9A, 0xC0, 0x08, 0x3E, 0x27, 0x00, 0x00
.byte 0x88, 0x9F, 0xC0, 0x08, 0x40, 0x27, 0x00, 0x00
.byte 0xB0, 0x9F, 0xC0, 0x08, 0x41, 0x27, 0x00, 0x00
.byte 0xD8, 0x9F, 0xC0, 0x08, 0x42, 0x27, 0x00, 0x00
.byte 0xD8, 0x9F, 0xC0, 0x08, 0x43, 0x27, 0x00, 0x00
.byte 0xD8, 0x9F, 0xC0, 0x08, 0x44, 0x27, 0x00, 0x00
.byte 0xCC, 0x47, 0xC0, 0x08, 0x45, 0x27, 0x00, 0x00
.byte 0xD4, 0xA3, 0xC0, 0x08, 0x46, 0x27, 0x00, 0x00
.byte 0xD8, 0x9F, 0xC0, 0x08, 0x47, 0x27, 0x00, 0x00
.byte 0x94, 0xA8, 0xC0, 0x08, 0x48, 0x27, 0x00, 0x00
.byte 0x08, 0xAA, 0xC0, 0x08, 0x49, 0x27, 0x00, 0x00
.byte 0x94, 0xAE, 0xC0, 0x08, 0x4A, 0x27, 0x00, 0x00
.byte 0x1C, 0xAF, 0xC0, 0x08, 0x4B, 0x27, 0x00, 0x00
.byte 0x60, 0xAF, 0xC0, 0x08, 0x4C, 0x27, 0x00, 0x00
.byte 0x2C, 0xB0, 0xC0, 0x08, 0x4D, 0x27, 0x00, 0x00
.byte 0x1C, 0xB4, 0xC0, 0x08, 0x4E, 0x27, 0x00, 0x00
.byte 0x00, 0xB6, 0xC0, 0x08, 0x4F, 0x27, 0x00, 0x00
.byte 0xF4, 0x31, 0xC2, 0x08, 0x50, 0x27, 0x00, 0x00
.byte 0xD0, 0xB7, 0xC0, 0x08, 0x51, 0x27, 0x00, 0x00
.byte 0x3C, 0xB8, 0xC0, 0x08, 0x52, 0x27, 0x00, 0x00
.byte 0xA4, 0xEA, 0xD8, 0x08, 0x53, 0x27, 0x00, 0x00
.byte 0xC4, 0xEA, 0xD8, 0x08, 0x54, 0x27, 0x00, 0x00
.byte 0xD0, 0xB7, 0xC0, 0x08, 0x55, 0x27, 0x00, 0x00
.byte 0xE4, 0xB8, 0xC0, 0x08, 0x56, 0x27, 0x00, 0x00
.byte 0xE4, 0xB8, 0xC0, 0x08, 0x57, 0x27, 0x00, 0x00
.byte 0x08, 0xBC, 0xC0, 0x08, 0x58, 0x27, 0x00, 0x00
.byte 0x3C, 0xBD, 0xC0, 0x08, 0x59, 0x27, 0x00, 0x00
.byte 0x04, 0xB3, 0xC1, 0x08, 0x5A, 0x27, 0x00, 0x00
.byte 0xD8, 0xBF, 0xC0, 0x08, 0x5B, 0x27, 0x00, 0x00
.byte 0x28, 0x4F, 0xC1, 0x08, 0x5C, 0x27, 0x00, 0x00
.byte 0x28, 0x4F, 0xC1, 0x08, 0x5D, 0x27, 0x00, 0x00
.byte 0x94, 0xC1, 0xC0, 0x08, 0x5E, 0x27, 0x00, 0x00
.byte 0x94, 0xC1, 0xC0, 0x08, 0x5F, 0x27, 0x00, 0x00
.byte 0x50, 0xC9, 0xC0, 0x08, 0x60, 0x27, 0x00, 0x00
.byte 0xF8, 0xC9, 0xC0, 0x08, 0x61, 0x27, 0x00, 0x00
.byte 0xB4, 0xCB, 0xC0, 0x08, 0x62, 0x27, 0x00, 0x00
.byte 0xC8, 0xCB, 0xC0, 0x08, 0x63, 0x27, 0x00, 0x00
.byte 0xF0, 0xCB, 0xC0, 0x08, 0x64, 0x27, 0x00, 0x00
.byte 0x18, 0xCC, 0xC0, 0x08, 0x65, 0x27, 0x00, 0x00
.byte 0x30, 0xCC, 0xC0, 0x08, 0x66, 0x27, 0x00, 0x00
.byte 0x54, 0x4D, 0xC2, 0x08, 0x67, 0x27, 0x00, 0x00
.byte 0x58, 0xCC, 0xC0, 0x08, 0x68, 0x27, 0x00, 0x00
.byte 0x74, 0xCC, 0xC0, 0x08, 0x69, 0x27, 0x00, 0x00
.byte 0x9C, 0xCC, 0xC0, 0x08, 0x6A, 0x27, 0x00, 0x00
.byte 0x98, 0xB6, 0xC0, 0x08, 0x6B, 0x27, 0x00, 0x00
.byte 0xC0, 0xCC, 0xC0, 0x08, 0x6C, 0x27, 0x00, 0x00
.byte 0xDC, 0xCC, 0xC0, 0x08, 0x6D, 0x27, 0x00, 0x00
.byte 0x04, 0xCD, 0xC0, 0x08, 0x6E, 0x27, 0x00, 0x00
.byte 0x44, 0xCD, 0xC0, 0x08, 0x6F, 0x27, 0x00, 0x00
.byte 0x6C, 0xCD, 0xC0, 0x08, 0x70, 0x27, 0x00, 0x00
.byte 0x88, 0xCD, 0xC0, 0x08, 0x71, 0x27, 0x00, 0x00
.byte 0x04, 0xCD, 0xC0, 0x08, 0x72, 0x27, 0x00, 0x00
.byte 0x0C, 0x7E, 0xC2, 0x08, 0x73, 0x27, 0x00, 0x00
.byte 0xB0, 0xCD, 0xC0, 0x08, 0x74, 0x27, 0x00, 0x00
.byte 0xCC, 0xCD, 0xC0, 0x08, 0x75, 0x27, 0x00, 0x00
.byte 0xCC, 0xCD, 0xC0, 0x08, 0x76, 0x27, 0x00, 0x00
.byte 0xF4, 0xCD, 0xC0, 0x08, 0x77, 0x27, 0x00, 0x00
.byte 0x4C, 0xF1, 0xC0, 0x08, 0x78, 0x27, 0x00, 0x00
.byte 0xF8, 0xF6, 0xC0, 0x08, 0x79, 0x27, 0x00, 0x00
.byte 0xF8, 0xF6, 0xC0, 0x08, 0x7A, 0x27, 0x00, 0x00
.byte 0xBC, 0xFB, 0xC0, 0x08, 0x7B, 0x27, 0x00, 0x00
.byte 0xBC, 0xFB, 0xC0, 0x08, 0x7C, 0x27, 0x00, 0x00
.byte 0x90, 0xFF, 0xC0, 0x08, 0x7D, 0x27, 0x00, 0x00
.byte 0x90, 0xFF, 0xC0, 0x08, 0x7E, 0x27, 0x00, 0x00
.byte 0xE0, 0x03, 0xC1, 0x08, 0x7F, 0x27, 0x00, 0x00
.byte 0x2C, 0x07, 0xC1, 0x08, 0x80, 0x27, 0x00, 0x00
.byte 0xC0, 0x09, 0xC1, 0x08, 0x81, 0x27, 0x00, 0x00
.byte 0xDC, 0x0A, 0xC1, 0x08, 0x82, 0x27, 0x00, 0x00
.byte 0xAC, 0x28, 0xC0, 0x08, 0x83, 0x27, 0x00, 0x00
.byte 0x34, 0x31, 0xC1, 0x08, 0x84, 0x27, 0x00, 0x00
.byte 0x98, 0x33, 0xC1, 0x08, 0x85, 0x27, 0x00, 0x00
.byte 0x4C, 0x35, 0xC1, 0x08, 0x86, 0x27, 0x00, 0x00
.byte 0xF8, 0x37, 0xC1, 0x08, 0x87, 0x27, 0x00, 0x00
.byte 0x14, 0x39, 0xC1, 0x08, 0x88, 0x27, 0x00, 0x00
.byte 0x68, 0x39, 0xC1, 0x08, 0x89, 0x27, 0x00, 0x00
.byte 0x88, 0x3A, 0xC1, 0x08, 0x8A, 0x27, 0x00, 0x00
.byte 0x88, 0x3A, 0xC1, 0x08, 0x8B, 0x27, 0x00, 0x00
.byte 0x78, 0x3E, 0xC1, 0x08, 0x8C, 0x27, 0x00, 0x00
.byte 0x8C, 0x3F, 0xC1, 0x08, 0x8D, 0x27, 0x00, 0x00
.byte 0x1C, 0x40, 0xC1, 0x08, 0x8E, 0x27, 0x00, 0x00
.byte 0xDC, 0x41, 0xC1, 0x08, 0x8F, 0x27, 0x00, 0x00
.byte 0x6C, 0x44, 0xC1, 0x08, 0x90, 0x27, 0x00, 0x00
.byte 0x6C, 0x44, 0xC1, 0x08, 0x91, 0x27, 0x00, 0x00
.byte 0xC0, 0x48, 0xC1, 0x08, 0x92, 0x27, 0x00, 0x00
.byte 0xC0, 0x48, 0xC1, 0x08, 0x93, 0x27, 0x00, 0x00
.byte 0x58, 0x4B, 0xC1, 0x08, 0x94, 0x27, 0x00, 0x00
.byte 0xF4, 0x4B, 0xC1, 0x08, 0x95, 0x27, 0x00, 0x00
.byte 0xF4, 0x4B, 0xC1, 0x08, 0x96, 0x27, 0x00, 0x00
.byte 0x78, 0xA4, 0xC1, 0x08, 0x97, 0x27, 0x00, 0x00
.byte 0x64, 0xA5, 0xC1, 0x08, 0x98, 0x27, 0x00, 0x00
.byte 0x78, 0xA4, 0xC1, 0x08, 0x99, 0x27, 0x00, 0x00
.byte 0x78, 0xA4, 0xC1, 0x08, 0x9A, 0x27, 0x00, 0x00
.byte 0x80, 0xA9, 0xC1, 0x08, 0x9B, 0x27, 0x00, 0x00
.byte 0x0C, 0xAD, 0xC1, 0x08, 0x9C, 0x27, 0x00, 0x00
.byte 0x34, 0xAE, 0xC1, 0x08, 0x9D, 0x27, 0x00, 0x00
.byte 0x34, 0xAE, 0xC1, 0x08, 0x9E, 0x27, 0x00, 0x00
.byte 0xDC, 0xCD, 0xC2, 0x08, 0x9F, 0x27, 0x00, 0x00
.byte 0xDC, 0xBC, 0xC1, 0x08, 0xA0, 0x27, 0x00, 0x00
.byte 0x80, 0xA9, 0xC1, 0x08, 0xA1, 0x27, 0x00, 0x00
.byte 0xAC, 0x28, 0xC0, 0x08, 0xA2, 0x27, 0x00, 0x00
.byte 0x80, 0xB0, 0xC1, 0x08, 0xA3, 0x27, 0x00, 0x00
.byte 0x5C, 0xB2, 0xC1, 0x08, 0xA4, 0x27, 0x00, 0x00
.byte 0x5C, 0xB2, 0xC1, 0x08, 0xA5, 0x27, 0x00, 0x00
.byte 0xFC, 0xB3, 0xC1, 0x08, 0xA6, 0x27, 0x00, 0x00
.byte 0xFC, 0xB3, 0xC1, 0x08, 0xA7, 0x27, 0x00, 0x00
.byte 0x14, 0x34, 0xC0, 0x08, 0xA8, 0x27, 0x00, 0x00
.byte 0x7C, 0xB5, 0xC1, 0x08, 0xA9, 0x27, 0x00, 0x00
.byte 0x40, 0xB6, 0xC1, 0x08, 0xAA, 0x27, 0x00, 0x00
.byte 0x28, 0xB7, 0xC1, 0x08, 0xAB, 0x27, 0x00, 0x00
.byte 0x60, 0xB9, 0xC1, 0x08, 0xAC, 0x27, 0x00, 0x00
.byte 0xEC, 0xB9, 0xC1, 0x08, 0xAD, 0x27, 0x00, 0x00
.byte 0xCC, 0xBA, 0xC1, 0x08, 0xAE, 0x27, 0x00, 0x00
.byte 0x6C, 0xBB, 0xC1, 0x08, 0xAF, 0x27, 0x00, 0x00
.byte 0x3C, 0xBC, 0xC1, 0x08, 0xB0, 0x27, 0x00, 0x00
.byte 0xA4, 0x29, 0xC0, 0x08, 0xB1, 0x27, 0x00, 0x00
.byte 0xC4, 0xBE, 0xC1, 0x08, 0xB2, 0x27, 0x00, 0x00
.byte 0x44, 0xBF, 0xC1, 0x08, 0xB3, 0x27, 0x00, 0x00
.byte 0x74, 0xBF, 0xC1, 0x08, 0xB4, 0x27, 0x00, 0x00
.byte 0x8C, 0xBF, 0xC1, 0x08, 0xB5, 0x27, 0x00, 0x00
.byte 0xB0, 0xC2, 0xC1, 0x08, 0xB6, 0x27, 0x00, 0x00
.byte 0xD0, 0xC2, 0xC1, 0x08, 0xB7, 0x27, 0x00, 0x00
.byte 0xF0, 0xC2, 0xC1, 0x08, 0xB8, 0x27, 0x00, 0x00
.byte 0x10, 0xC3, 0xC1, 0x08, 0xB9, 0x27, 0x00, 0x00
.byte 0x30, 0xC3, 0xC1, 0x08, 0xBA, 0x27, 0x00, 0x00
.byte 0x9C, 0xC3, 0xC1, 0x08, 0xBB, 0x27, 0x00, 0x00
.byte 0xC4, 0xC3, 0xC1, 0x08, 0xBC, 0x27, 0x00, 0x00
.byte 0x94, 0xC7, 0xC1, 0x08, 0xBD, 0x27, 0x00, 0x00
.byte 0x9C, 0xD6, 0xC1, 0x08, 0xBE, 0x27, 0x00, 0x00
.byte 0x28, 0xD7, 0xC1, 0x08, 0xBF, 0x27, 0x00, 0x00
.byte 0xA8, 0xD8, 0xC1, 0x08, 0xC0, 0x27, 0x00, 0x00
.byte 0x94, 0xD9, 0xC1, 0x08, 0xC1, 0x27, 0x00, 0x00
.byte 0x14, 0xDB, 0xC1, 0x08, 0xC2, 0x27, 0x00, 0x00
.byte 0x3C, 0xDB, 0xC1, 0x08, 0xC3, 0x27, 0x00, 0x00
.byte 0x3C, 0xDB, 0xC1, 0x08, 0xC4, 0x27, 0x00, 0x00
.byte 0x3C, 0xDB, 0xC1, 0x08, 0xC5, 0x27, 0x00, 0x00
.byte 0x8C, 0xE0, 0xC1, 0x08, 0xC6, 0x27, 0x00, 0x00
.byte 0x2C, 0xE3, 0xC1, 0x08, 0xC7, 0x27, 0x00, 0x00
.byte 0xA8, 0xE4, 0xC1, 0x08, 0xC8, 0x27, 0x00, 0x00
.byte 0xE4, 0xE8, 0xC1, 0x08, 0xC9, 0x27, 0x00, 0x00
.byte 0xA4, 0xF1, 0xC1, 0x08, 0xCA, 0x27, 0x00, 0x00
.byte 0xB8, 0xED, 0xC1, 0x08, 0xCB, 0x27, 0x00, 0x00
.byte 0xD4, 0x67, 0xD9, 0x08, 0xCC, 0x27, 0x00, 0x00
.byte 0x1C, 0x02, 0xC2, 0x08, 0xCD, 0x27, 0x00, 0x00
.byte 0xE0, 0xFE, 0xC1, 0x08, 0xCE, 0x27, 0x00, 0x00
.byte 0x70, 0x01, 0xC2, 0x08, 0xCF, 0x27, 0x00, 0x00
.byte 0xBC, 0x04, 0xC2, 0x08, 0xD0, 0x27, 0x00, 0x00
.byte 0x40, 0x06, 0xC2, 0x08, 0xD1, 0x27, 0x00, 0x00
.byte 0x84, 0x0F, 0xC2, 0x08, 0xD2, 0x27, 0x00, 0x00
.byte 0x64, 0x10, 0xC2, 0x08, 0xD3, 0x27, 0x00, 0x00
.byte 0x34, 0x0C, 0xC2, 0x08, 0xD4, 0x27, 0x00, 0x00
.byte 0xF4, 0x11, 0xC2, 0x08, 0xD5, 0x27, 0x00, 0x00
.byte 0x0C, 0x16, 0xC2, 0x08, 0xD6, 0x27, 0x00, 0x00
.byte 0xFC, 0x16, 0xC2, 0x08, 0xD7, 0x27, 0x00, 0x00
.byte 0x58, 0x18, 0xC2, 0x08, 0xD8, 0x27, 0x00, 0x00
.byte 0xE4, 0x1E, 0xC2, 0x08, 0xD9, 0x27, 0x00, 0x00
.byte 0x10, 0x22, 0xC2, 0x08, 0xDA, 0x27, 0x00, 0x00
.byte 0xE0, 0x23, 0xC2, 0x08, 0xDB, 0x27, 0x00, 0x00
.byte 0x80, 0x20, 0xC2, 0x08, 0xDC, 0x27, 0x00, 0x00
.byte 0xD8, 0x28, 0xC2, 0x08, 0xDD, 0x27, 0x00, 0x00
.byte 0x10, 0x26, 0xC2, 0x08, 0xDE, 0x27, 0x00, 0x00
.byte 0xC8, 0x29, 0xC2, 0x08, 0xDF, 0x27, 0x00, 0x00
.byte 0xD0, 0xC2, 0xC1, 0x08, 0xE0, 0x27, 0x00, 0x00
.byte 0xE4, 0x30, 0xC2, 0x08, 0xE1, 0x27, 0x00, 0x00
.byte 0xA0, 0x32, 0xC2, 0x08, 0xE2, 0x27, 0x00, 0x00
.byte 0x6C, 0x45, 0xC2, 0x08, 0xE3, 0x27, 0x00, 0x00
.byte 0x6C, 0x45, 0xC2, 0x08, 0xE4, 0x27, 0x00, 0x00
.byte 0x6C, 0x45, 0xC2, 0x08, 0xE5, 0x27, 0x00, 0x00
.byte 0xF4, 0x31, 0xC2, 0x08, 0xE6, 0x27, 0x00, 0x00
.byte 0xAC, 0x49, 0xC2, 0x08, 0xE7, 0x27, 0x00, 0x00
.byte 0xC0, 0x32, 0xC2, 0x08, 0xE8, 0x27, 0x00, 0x00
.byte 0x5C, 0x40, 0xC2, 0x08, 0xE9, 0x27, 0x00, 0x00
.byte 0x28, 0x4C, 0xC2, 0x08, 0xEA, 0x27, 0x00, 0x00
.byte 0x80, 0x32, 0xC2, 0x08, 0xEB, 0x27, 0x00, 0x00
.byte 0xD4, 0x4D, 0xC2, 0x08, 0xEC, 0x27, 0x00, 0x00
.byte 0x28, 0x4F, 0xC2, 0x08, 0xED, 0x27, 0x00, 0x00
.byte 0x98, 0x54, 0xC2, 0x08, 0xEE, 0x27, 0x00, 0x00
.byte 0xC0, 0x54, 0xC2, 0x08, 0xEF, 0x27, 0x00, 0x00
.byte 0x74, 0x57, 0xC2, 0x08, 0xF0, 0x27, 0x00, 0x00
.byte 0xE8, 0x78, 0xC2, 0x08, 0xF1, 0x27, 0x00, 0x00
.byte 0xE4, 0x7A, 0xC2, 0x08, 0xF2, 0x27, 0x00, 0x00
.byte 0xE4, 0x7A, 0xC2, 0x08, 0xF3, 0x27, 0x00, 0x00
.byte 0xFC, 0x5A, 0xC2, 0x08, 0xF4, 0x27, 0x00, 0x00
.byte 0xC4, 0x7C, 0xC2, 0x08, 0xF5, 0x27, 0x00, 0x00
.byte 0x90, 0x58, 0xC2, 0x08, 0xF6, 0x27, 0x00, 0x00
.byte 0x6C, 0x83, 0xC2, 0x08, 0xF7, 0x27, 0x00, 0x00
.byte 0x6C, 0x83, 0xC2, 0x08, 0xF8, 0x27, 0x00, 0x00
shiny_particle_pallet:
.byte 0xE8, 0x85, 0xC2, 0x08, 0xF9, 0x27, 0x00, 0x00
.byte 0xD0, 0x87, 0xC2, 0x08, 0xFA, 0x27, 0x00, 0x00
.byte 0xD0, 0x88, 0xC2, 0x08, 0xFB, 0x27, 0x00, 0x00
.byte 0xEC, 0x88, 0xC2, 0x08, 0xFC, 0x27, 0x00, 0x00
.byte 0x08, 0x89, 0xC2, 0x08, 0xFD, 0x27, 0x00, 0x00
.byte 0x5C, 0x88, 0xC2, 0x08, 0xFE, 0x27, 0x00, 0x00
.byte 0x84, 0xCB, 0xC2, 0x08, 0xFF, 0x27, 0x00, 0x00
.byte 0x94, 0xCE, 0xC2, 0x08, 0x00, 0x28, 0x00, 0x00
.byte 0x0C, 0xD4, 0xC2, 0x08, 0x01, 0x28, 0x00, 0x00
.byte 0xAC, 0xD6, 0xC2, 0x08, 0x02, 0x28, 0x00, 0x00
.byte 0xF8, 0xD6, 0xC2, 0x08, 0x03, 0x28, 0x00, 0x00
.byte 0x30, 0xE6, 0xC2, 0x08, 0x04, 0x28, 0x00, 0x00
.byte 0xE0, 0xDE, 0xC2, 0x08, 0x05, 0x28, 0x00, 0x00
.byte 0xE0, 0xDE, 0xC2, 0x08, 0x06, 0x28, 0x00, 0x00
.byte 0xF4, 0x31, 0xC2, 0x08, 0x07, 0x28, 0x00, 0x00
.byte 0xBC, 0xEB, 0xC2, 0x08, 0x08, 0x28, 0x00, 0x00
.byte 0x24, 0xEC, 0xC2, 0x08, 0x09, 0x28, 0x00, 0x00
.byte 0x24, 0xEC, 0xC2, 0x08, 0x0A, 0x28, 0x00, 0x00
.byte 0x9C, 0xEE, 0xC2, 0x08, 0x0B, 0x28, 0x00, 0x00
.byte 0xCC, 0xEF, 0xC2, 0x08, 0x0C, 0x28, 0x00, 0x00
.byte 0xCC, 0xF1, 0xC2, 0x08, 0x0D, 0x28, 0x00, 0x00
.byte 0x2C, 0xF3, 0xC2, 0x08, 0x0E, 0x28, 0x00, 0x00
.byte 0xCC, 0xF3, 0xC2, 0x08, 0x0F, 0x28, 0x00, 0x00
.byte 0x7C, 0xF8, 0xC2, 0x08, 0x10, 0x28, 0x00, 0x00
.byte 0xC0, 0xF9, 0xC2, 0x08, 0x11, 0x28, 0x00, 0x00
.byte 0xC8, 0xF4, 0xC2, 0x08, 0x12, 0x28, 0x00, 0x00
.byte 0x7C, 0xB2, 0xC1, 0x08, 0x13, 0x28, 0x00, 0x00
.byte 0x9C, 0xDC, 0xD8, 0x08, 0x14, 0x28, 0x00, 0x00
.byte 0xB8, 0xDA, 0xD8, 0x08, 0x15, 0x28, 0x00, 0x00
.byte 0x14, 0xE9, 0xD8, 0x08, 0x16, 0x28, 0x00, 0x00
.byte 0x84, 0x3B, 0xD9, 0x08, 0x17, 0x28, 0x00, 0x00
.byte 0x74, 0xEA, 0xD8, 0x08, 0x18, 0x28, 0x00, 0x00
.byte 0x8C, 0xEA, 0xD8, 0x08, 0x19, 0x28, 0x00, 0x00
.byte 0xDC, 0x3B, 0xD9, 0x08, 0x1A, 0x28, 0x00, 0x00
.byte 0xF4, 0x3B, 0xD9, 0x08, 0x1B, 0x28, 0x00, 0x00
.byte 0x0C, 0x3C, 0xD9, 0x08, 0x1C, 0x28, 0x00, 0x00
.byte 0x80, 0xEF, 0xD8, 0x08, 0x1D, 0x28, 0x00, 0x00
.byte 0x5C, 0xA3, 0xDB, 0x08, 0x1E, 0x28, 0x00, 0x00
.byte 0xA0, 0xA4, 0xDB, 0x08, 0x1F, 0x28, 0x00, 0x00
.byte 0xE0, 0xEE, 0xD8, 0x08, 0x20, 0x28, 0x00, 0x00
.byte 0xE0, 0xEE, 0xD8, 0x08, 0x21, 0x28, 0x00, 0x00
.byte 0xEC, 0xF3, 0xD8, 0x08, 0x22, 0x28, 0x00, 0x00
.byte 0xEC, 0xF3, 0xD8, 0x08, 0x23, 0x28, 0x00, 0x00
.byte 0xEC, 0xF3, 0xD8, 0x08, 0x24, 0x28, 0x00, 0x00
.byte 0xC4, 0x2E, 0xD9, 0x08, 0x25, 0x28, 0x00, 0x00
.byte 0x30, 0x3E, 0xD9, 0x08, 0x26, 0x28, 0x00, 0x00
.byte 0x98, 0x3E, 0xD9, 0x08, 0x27, 0x28, 0x00, 0x00
.byte 0x7C, 0xFB, 0xD8, 0x08, 0x28, 0x28, 0x00, 0x00
.byte 0x3C, 0x40, 0xD9, 0x08, 0x29, 0x28, 0x00, 0x00
.byte 0x4C, 0xA1, 0xDB, 0x08, 0x2A, 0x28, 0x00, 0x00
.byte 0x58, 0x34, 0xD9, 0x08, 0x2B, 0x28, 0x00, 0x00
.byte 0xD4, 0x49, 0xD9, 0x08, 0x2C, 0x28, 0x00, 0x00
.byte 0x90, 0x4A, 0xD9, 0x08, 0x2D, 0x28, 0x00, 0x00
.byte 0x98, 0x66, 0xD9, 0x08, 0x2E, 0x28, 0x00, 0x00
.byte 0x4C, 0x10, 0xD9, 0x08, 0x2F, 0x28, 0x00, 0x00
.byte 0x5C, 0xBF, 0xC1, 0x08, 0x30, 0x28, 0x00, 0x00

particle_entry MEGA_EVOLUTION_RAINBOW_palette MEGAEVORAINBOW_particle 0x0
particle_entry MEGA_EVOLUTION_STONE_palette MEGAEVOSTONE_particle 0x0
particle_entry MEGA_EVOLUTION_SYMBOL_palette MEGAEVOSYMBOL_particle 0x0

particle_entry ALPHA_REVERSION_CHARGE_palette ALPHAEVO_CHARGE_particle 0x0
particle_entry ALPHA_REVERSION_STONE_palette ALPHAEVO_STONE_particle 0x0
particle_entry ALPHA_REVERSION_SYMBOL_palette ALPHAEVO_SYMBOL_particle 0x0

particle_entry OMEGA_REVERSION_CHARGE_palette OMEGAEVO_CHARGE_particle 0x0
particle_entry OMEGA_REVERSION_STONE_palette OMEGAEVO_STONE_particle 0x0
particle_entry OMEGA_REVERSION_SYMBOL_palette OMEGAEVO_SYMBOL_particle 0x0

.byte 0xDC, 0xCD, 0xC2, 0x08, HAMMER_ARM_particle_ID, 0x28, 0x00, 0x00
.byte 0x28, 0xB7, 0xC1, 0x08, BRINE_particle_ID, 0x28, 0x00, 0x00
.byte 0xF4, 0x31, 0xC2, 0x08, ACUPRESSURE_particle_ID, 0x28, 0x00, 0x00
.word ASSURANCE_palette
.byte ASSURANCE_particle_ID, 0x28, 0x00, 0x00
.word POWER_TRICK_palette
.byte POWER_TRICK_particle_ID, 0x28, 0x00, 0x00
.word POISON_JAB_palette
.byte POISON_JAB_particle_ID, 0x28, 0x00, 0x00
.word AURA_SPHERE_palette
.byte AURA_SPHERE_particle_ID, 0x28, 0x00, 0x00
.word DRAGON_PULSE_palette
.byte DRAGON_PULSE_particle_ID, 0x28, 0x00, 0x00
.word POWER_GEM_palette
.byte POWER_GEM_particle_ID, 0x28, 0x00, 0x00
.word ENERGY_BALL_palette
.byte ENERGY_BALL_particle_ID, 0x28, 0x00, 0x00
.word FOCUS_BLAST_palette
.byte FOCUS_BLAST_particle_ID, 0x28, 0x00, 0x00
.word PSYCHO_CUT_palette
.byte PSYCHO_CUT_particle_ID, 0x28, 0x00, 0x00
.word DEFOG_palette
.byte DEFOG_particle_ID, 0x28, 0x00, 0x00
.word LEAF_STORM_palette
.byte LEAF_STORM_particle_ID, 0x28, 0x00, 0x00
.word WOOD_HAMMER_palette
.byte WOOD_HAMMER_particle_ID, 0x28, 0x00, 0x00
.word ATTACK_ORDER_palette
.byte ATTACK_ORDER_particle_ID, 0x28, 0x00, 0x00
.word Blue_Flare_palette
.byte 0x4a, 0x28, 0x00, 0x00
.word Water_Shuriken_palette
.byte 0x4b, 0x28, 0x00, 0x00
.word Z_fire_palette
.byte 0x4c, 0x28, 0x00, 0x00
.word WATER_PLEDGE_palette
.byte 0x4d, 0x28, 0x00, 0x00
.word PLASMA_FISTS_REI_palette
.byte 0x4e, 0x28, 0x00, 0x00
.word MIND_BLOWN_HEAD_palette
.byte 0x4f, 0x28, 0x00, 0x00
.word MAT_BLOCK_palette
.byte 0x50, 0x28, 0x00, 0x00
.word KING'S_SHIELD_palette
.byte 0x51, 0x28, 0x00, 0x00
.word THOUSAND_ARROWS_palette
.byte 0x52, 0x28, 0x00, 0x00
.word TOPSY_TURVY_UP_palette
.byte 0x53, 0x28, 0x00, 0x00
.word TOPSY_TURVY_DOWN_palette
.byte 0x54, 0x28, 0x00, 0x00
.word CONFIDE_LEFT_palette
.byte 0x55, 0x28, 0x00, 0x00
.word CONFIDE_RIGHT_palette
.byte 0x56, 0x28, 0x00, 0x00
.word POLLEN_PUFF_ANIM_PUFF_palette
.byte 0x57, 0x28, 0x00, 0x00
.word PURIFY_LIGHT_BALL_palette
.byte 0x58, 0x28, 0x00, 0x00
.word FAIRY_LOCK_CHAIN_palette
.byte 0x59, 0x28, 0x00, 0x00
.word ANCHOR_SHOT_CHAIN_palette
.byte 0x5A, 0x28, 0x00, 0x00
.word SHADOW_BONE_BONE_palette
.byte 0x5B, 0x28, 0x00, 0x00
.word SHADOW_BONE_FIRE_palette
.byte 0x5C, 0x28, 0x00, 0x00
.word FLASH_CANNON_BALL_palette
.byte 0x5D, 0x28, 0x00, 0x00
.word GRASS_PLEDGE_WIND_palette
.byte 0x5E, 0x28, 0x00, 0x00
.word SPIKY_SHIELD_palette
.byte 0x5F, 0x28, 0x00, 0x00
.word BANEFUL_BUNKER_palette
.byte 0x60, 0x28, 0x00, 0x00
.word HAPPY_HOUR_GOLD_palette
.byte 0x61, 0x28, 0x00, 0x00
.word THOUSAND_WAVES_WIND_palette
.byte 0x62, 0x28, 0x00, 0x00
.word DIAMOND_STORM_bg_palette
.byte 0x63, 0x28, 0x00, 0x00
.word SPIRIT_SHACKLE_ARROW_palette
.byte 0x64, 0x28, 0x00, 0x00
.word DRAGON_ASCENT_palette
.byte 0x65, 0x28, 0x00, 0x00
.word DARK_PULSE_palette
.byte 0x66, 0x28, 0x00, 0x00
.word DRACO_METEOR_palette
.byte 0x67, 0x28, 0x00, 0x00
.word SWORD_palette
.byte 0x68, 0x28, 0x00, 0x00
.word RAZOR_SHELL_palette
.byte 0x69, 0x28, 0x00, 0x00
.word GEAR_GRIND_palette
.byte 0x6A, 0x28, 0x00, 0x00
.word SHELL_SIDE_ARM_palette
.byte 0x6b, 0x28, 0x00, 0x00
.word SNOW_palette
.byte 0x6C, 0x28, 0x00, 0x00
