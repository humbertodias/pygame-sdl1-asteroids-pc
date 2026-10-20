# Asteróides

Jogo Asteróides utilizando pygame com suporte:

* Teclado
* Mouse
* TouchScreen
* Joystick
* Asteróides configuráveis

[Youtube](https://youtu.be/-4_VKjZc-Uw)


## Documentação

* [Enunciado](doc/enunciado.pdf)
* [PDF](doc/pdf/api.pdf)
* [HTML](doc/html/index.html)

## Prerequisitos

Python 3.15.0 no build livre de GIL (`python3.15t`). O build padrão do Python 3.15 ainda tem o GIL.

O jogo usa [pygame-ce](https://github.com/pygame-community/pygame-ce) 2.5.8. Esse pacote instala o módulo `pygame` e é a versão que compila no Python 3.15 sem GIL. Não há wheel pronta para o build livre de GIL, então o `pip` compila a partir do código-fonte e precisa das bibliotecas SDL 2 abaixo.

O pygame-ce 2.5.8 ainda não declara suporte a execução sem GIL. Sem `-Xgil=0`, importar `pygame` liga o GIL de novo. Os scripts `run_mac.sh`, `run_linux.sh` e o alvo `make run` já passam essa opção.

Mac

```shell
brew install python-freethreading sdl2 sdl2_image sdl2_mixer sdl2_ttf portmidi
```

Linux

```shell
sudo apt install pkg-config libsdl2-dev libsdl2-image-dev libsdl2-mixer-dev libsdl2-ttf-dev libfreetype6-dev libportmidi-dev
```

No Linux, instale o interpretador livre de GIL para que o comando `python3.15t` exista. O guia oficial está em <https://docs.python.org/3/howto/free-threading-python.html>.

## Como instalar?

```shell
python3.15t -m venv .venv
source .venv/bin/activate
python -m pip install -r requirements.txt
python -VV
python -c "import sys; print(sys._is_gil_enabled())"
```

`python -VV` deve conter `free-threading build`. Antes de importar o pygame, `sys._is_gil_enabled()` deve imprimir `False`.


1) Para **Windows 7 e 8** instale:	
	
**Este passo não é necessário no Windows 10***
 
Instale o [Visual C++ Redistributable for Visual Studio 2015](https://www.microsoft.com/en-us/download/details.aspx?id=48145)
 
![Sucesso ao instalar](doc/how_to_install/vc_2015_ redistributable.png)

OBS: **Windows 7 requer o Service Pack 1**.


2) Baixe e descompacte o arquivo comprimido que contém o jogo compilado, a seguir execute **main.exe** para jogar.
	
[pygame-asteroids-main.dist.zip](https://www.dropbox.com/s/mah81oqqu1pf0fc/pygame-asteroids-main.dist.zip?dl=0)

ou se possuir o python e o pygame instalados, execute:

```shell
python3.15t -Xgil=0 src/main.py config.txt
```

Video com passo a passo da instalação
	

[![ScreenShot](doc/how_to_install/frame_video.png)](https://github.com/humbertodias/pygame-sdl1-asteroids-pc/blob/master/doc/how_to_install/steps.mp4?raw=true)


## Como configurar?

Para modificar o comportamento do jogo, edite o arquivo **config.txt**

```shell 
# janela 640 480, 800 600, 1024 768
janela 800 600

# controle mouse keyboard touch joystick
controle mouse

# tela_cheia True, False
tela_cheia False

# mostrar_mouse True, False
mostrar_mouse True

# sound True, False
sound True

passo_simulacao 60

vidas 3

asteroide 100 100 50 ff0000
asteroide 150 150 30 80eca7
asteroide 300 200 20 fff600
asteroide 50 50 35 fff6ab
asteroide 0 0 0
```

## Jogo

### Franquia
![ScreenShot](doc/screens/01-franquia.png)

### Classificação
![ScreenShot](doc/screens/02-classificacao.png)

### Menu
![ScreenShot](doc/screens/03-menu.png)

### Controles
1 - Mouse

![ScreenShot](doc/screens/04-mouse.png)

2 - Teclado

![ScreenShot](doc/screens/04-keyboard.png)

3 - Joystick

![ScreenShot](doc/screens/04-joystick.png)

4 - TouchScreen

![ScreenShot](doc/screens/04-touchscreen.png)

### Pontuação
![ScreenShot](doc/screens/05-pontuacao.png)

### Créditos
![ScreenShot](doc/screens/06-creditos.png)

### Jogo
![ScreenShot](doc/screens/07-jogo.png)


## Apresentação
[presentation.key](doc/presentation.key)

![ScreenShot](doc/presentation/01.png)
![ScreenShot](doc/presentation/02.png)
![ScreenShot](doc/presentation/03.png)
![ScreenShot](doc/presentation/04.png)
![ScreenShot](doc/presentation/05.png)
![ScreenShot](doc/presentation/06.png)
![ScreenShot](doc/presentation/07.png)
![ScreenShot](doc/presentation/08.png)
![ScreenShot](doc/presentation/09.png)
![ScreenShot](doc/presentation/10.png)
![ScreenShot](doc/presentation/11.png)
![ScreenShot](doc/presentation/12.png)
![ScreenShot](doc/presentation/13.png)
