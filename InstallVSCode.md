RaspberryPi��VSCode���C���X�g�[������

# 0.�C���X�g�[���X�N���v�g���g��
�C���X�g�[���p�X�N���v�g��������̂ł�����g��

```bash
$ curl
```

# 1.GPG Key�̃C���X�g�[��

�܂���GPG Key���擾����

```bash
$ wget https://packagecloud.io/headmelted/codebuilds/gpgkey
```

�܂���[����](https://code.headmelted.com/)����_�E�����[�h

���ɃC���X�g�[��

```bash
$ sudo apt-key add gpg
```

gpg�̕����ɂ͎擾����GPG Key�̃p�X������

# 2.VSCode�̃C���X�g�[��

```bash
$ sudo su
```

��root�ɂ��Ă�����

```bash
$ . <( wget -O - https://code.headmelted.com/installers/apt.sh )
```

��OK
���s����ꍇ��

```bash
$ code-oss
```

# 3.���s���Ă���ʂ��^���Â̂܂܂̏ꍇ

�ŐV�o�[�W�����ł̃o�O���ۂ�
�_�E���O���[�h����Ɖ�������

```bash
$ apt-get install code-oss=1.29.0-1539702286
```

�����Ď����X�V���~�߂Ƃ�

```bash
$ apt-mark hold code-oss
```

�����X�V���ĊJ����ɂ�

```bash
$ apt-mark unhold code-oss
```