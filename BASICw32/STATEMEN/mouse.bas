! MOUSE POLL��JIS�K�i�O�̖��߁B
! MOUSE POLL x,y,l,r  �́C���݂̃}�E�X�J�[�\���̈ʒu��
! �ϐ�x,y�ɑ�����C�}�E�X���E�{�^���̏�Ԃ�ϐ�l,r�ɑ������B
! �{�^����������Ă���ƁCl,r�̒l��1�ɂȂ�B
! �{�^����������Ă��Ȃ��Ƃ��̒l��0�ł���B
!
! ���̃v���O�����́C
! �}�E�X���{�^���������Ȃ���}�E�X���ړ�����ƋȐ���`���B
! �}�E�X�E�{�^���������ƏI������B
DO
   MOUSE POLL x,y,l,r
   IF l=1 THEN PLOT LINES: x,y; ELSE PLOT LINES
LOOP UNTIL r=1
END