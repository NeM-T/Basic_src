INPUT filepath$ !wave�t�@�C���̐�΃p�X���t�@�C�����܂߂ē���
OPEN #1:NAME filepath$
OPTION CHARACTER BYTE

SUB nam (n,b$) !���̓ǂݍ���
   LET b$=""
   FOR x=1 TO n
      CHARACTER INPUT #1:a$
      LET b$=b$&a$
   NEXT x
   PRINT b$
END SUB 

SUB nom(n,a) !�����ǂݍ���
   FOR x=1 TO n
      CHARACTER INPUT #1:a$
      LET a=a+256^(x-1)*ORD(a$)
   NEXT x
   PRINT a
END SUB 


!4 byte	R' 'I' 'F' 'F'	RIFF�w�b�_	�@
!4 byte	����ȍ~�̃t�@�C���T�C�Y (�t�@�C���T�C�Y - 8)	�@	�@
!4 byte	W' 'A' 'V' 'E'	WAVE�w�b�_	RIFF�̎�ނ�WAVE�ł��邱�Ƃ�����킷
!4 byte	f' 'm' 't' ' ' (���X�y�[�X���܂�)	fmt �`�����N	�t�H�[�}�b�g�̒�`
!4 byte	�o�C�g��	fmt �`�����N�̃o�C�g��	���j�APCM �Ȃ�� 16(10 00 00 00)
!2 byte	�t�H�[�}�b�gID	�Q��	���j�APCM �Ȃ�� 1(01 00)
!2 byte	�`�����l����	�@	���m���� �Ȃ�� 1(01 00)  �X�e���I �Ȃ�� 2(02 00)
!4 byte	�T���v�����O���[�g	Hz	44.1kHz �Ȃ�� 44100(44 AC 00 00)
!4 byte	�f�[�^���x (Byte/SEC)	�@	44.1kHz 16bit �X�e���I �Ȃ�� 44100�~2�~2 = 176400(10 B1 02 00)
!2 byte	�u���b�N�T�C�Y (Byte/sample�~�`�����l����)	�@	16bit �X�e���I �Ȃ�� 2�~2 = 4(04 00)
!2 byte	�T���v��������̃r�b�g�� (bit/sample)	WAV �t�H�[�}�b�g�ł� 8bit �� 16bit	16bit �Ȃ�� 16(10 00)
!2 byte	�g�������̃T�C�Y	�@	���j�APCM�Ȃ�Α��݂��Ȃ�
!n byte	�g������	�@	���j�APCM�Ȃ�Α��݂��Ȃ�
!4 byte	d' 'a' 't' 'a'	data �`�����N �Q��	�@
!4 byte	�o�C�g��n	�g�`�f�[�^�̃o�C�g��	�@
!n byte	�g�`�f�[�^	�Q��


CALL nam(4,rift$)
CALL nom(4,SIZE)
CALL nam(4,wave$)
CALL nam(4,fmt$)
CALL nom(4,fmt_size)
CALL nom(2,ID)
CALL nom(2,CHANNEL)
CALL nom(4,f)!f=���g��
CALL nom(4,v)!v=���x
CALL nom(2,brock)
CALL nom(2,bit_s)

IF NOT ID=1 THEN !�g����������ꍇ�B�Ƃ肠��������
!CALL nom(2,nom_kaku)
!CALL 
END IF 

CALL nam(4,data$)
CALL nom(4,byt_nami)

LET dataq = byt_nami/4

DO 
   LET a = 0
   LET b = 0
   LET w=w+1
   FOR x=1 TO 2
      CHARACTER INPUT #1:a$
      LET a=a+256^(x-1)*ORD(a$)
   NEXT x
   IF a=>2^15 THEN LET a=a-2^16
   FOR x=1 TO 2
      CHARACTER INPUT #1:a$
      LET b = b + 256^(x-1)*ORD(a$)
   NEXT x
   IF b=>2^15 THEN LET b=b-2^16
   PRINT w, a, b
LOOP UNTIL w=> dataq

END