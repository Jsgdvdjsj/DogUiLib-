# DogUiLib-
Uma library para quem quiser criar panel admin

# Botting the library 

```lua
local DogUiLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jsgdvdjsj/Imperio-cachorro/refs/heads/main/Resorurce"))()
```



# The Windows 

```lua
local MainTab, MainWindow = DogUiLib:CreateWindow("Meu Hub")
-- MainTab é a aba onde você adiciona elementos
-- MainWindow é a janela principal, que você pode abrir/fechar
```



# The button

```lua
MainTab:AddButton({
    Name = "Clique Aqui",
    Description = "Exemplo de botão",
    Callback = function()
        print("Botão clicado!")
        MainTab:Notify("Você clicou no botão!")-- não apaga aqui ou tu apaga
    end
})
```



# The toggle 

```lua
MainTab:AddToggle({
    Name = "Ativar Modo",
    Description = "Liga ou desliga algo",
    Default = false,
    Callback = function(state)
        print("Estado:", state)
    end
})
```



# The slider

```lua
MainTab:AddSlider({
    Name = "Volume",
    Min = 0,
    Max = 100,
    Default = 50,
    Callback = function(val)
        print("Valor do slider:", val)
    end
})
```



# The dropdown

```lua
MainTab:AddDropdown({
    Name = "Escolha Opção",
    Options = {"Opção 1","Opção 2","Opção 3"},
    Callback = function(opt)
        print("Selecionou:", opt)
    end
})
```



# The textbox  

```lua
MainTab:AddTextbox({
    Name = "Digite algo",
    Placeholder = "Escreva aqui...",
    Callback = function(text)
        print("Texto digitado:", text)
    end
})
```



#The Section

```lua
MainTab:AddSection({
    Text = "Sessão Futurista"
})
```



# The Paragraph

```lua
MainTab:AddParagraph({
    Text = "Este é um parágrafo informativo dentro da aba."
})



# The notification

```lua
MainTab:Notify("Isso é uma notificação futurista!")
```


por último e o melhor...

# Abrir/fechar gui, função descer.

```lua
local UserInputService = game:GetService("UserInputService")

-- Keybind F para abrir/fechar
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.F then
        MainWindow.Visible = not MainWindow.Visible
        if MainWindow.Visible then
            MainTab:Notify("Janela aberta!")
        else
            MainTab:Notify("Janela fechada!")
        end
    end
end)
```

