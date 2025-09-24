
# 🔐 Jogo da Senha — Lua (CLI)

Um jogo de adivinhação estilo **Mastermind**, feito em **Lua**, onde o jogador precisa descobrir uma senha de **4 dígitos diferentes**.  

## 🚀 Como funciona
- O programa sorteia uma senha com **4 números únicos** (0–9).  
- O jogador tem **10 tentativas** para adivinhar.  
- A cada tentativa, o jogo informa:  
  - ✅ **Green**: números corretos no lugar certo.  
  - 🟨 **Yellow**: números corretos, mas em posições erradas.  
- O jogador pode desistir digitando `y`.  
- Ao vencer ou perder, o programa mostra a senha correta e oferece a opção de jogar novamente.  

## 📌 Exemplo de jogo
```
=-=-=-=-=-=-=-=-=PASSWORD GAME=-=-=-=-=-=-=-=-=
- The objective of the game is to guess the password
- The password has 4 different numbers
- You have 10 attempts to guess the password
- Type "y" at any moment to forfeit

Attempt number 1:
1234
You got 1 numbers on the right spot, and 2 right numbers, but in the wrong spot.

Attempt number 2:
5678
You got 0 numbers on the right spot, and 1 right numbers, but in the wrong spot.

Attempt number 7:
4039

Congratulations, you won the password game in 7 attempts!
```

## 📂 Estrutura
```
senha.lua   # Script principal do jogo
```

## ▶️ Como executar
1. Instale o **Lua 5.4+**.  
2. No terminal, rode o comando:
   ```bash
   lua senha.lua
   ```

## 🛠️ Tecnologias
- Lua 5.4  
- Biblioteca padrão `math` e `os`  

## 📄 Licença
Projeto livre para estudos e uso pessoal.
