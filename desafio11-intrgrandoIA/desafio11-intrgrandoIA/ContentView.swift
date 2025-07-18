import SwiftUI
import GoogleGenerativeAI

struct ContentView: View {
    // Modelo do Gemini
    let model = GenerativeModel(name: "gemini-2.0-flash", apiKey: APIKey.default)
    
    // Prompt inicial para o Gemini
    let initialPrompt = """
    Olá, Gemini! Quero criar um jogo de perguntas e respostas divertido e informativo sobre os jogadores de futebol mais famosos da atualidade. Me ajude a desenvolver este jogo. Ele deve conter:
    - Perguntas de múltipla escolha com 4 alternativas cada.
    - Temas variados como: clubes atuais, seleções, recordes, prêmios individuais, estilo de jogo e curiosidades.
    - Jogadores como Messi, Cristiano Ronaldo, Mbappé, Haaland, Neymar, Vinícius Jr., Jude Bellingham, entre outros.
    - Sugira um nome criativo para o jogo.
    - Crie pelo menos 10 perguntas com o gabarito indicado.
    Capriche nas perguntas, com níveis fáceis, médios e difíceis.
    O objetivo é que o jogo seja usado entre amigos ou em redes sociais para testar conhecimento sobre futebol atual.
    """
    
    // Estados de texto e resposta
    @State private var textInput = ""
    @State private var aiResponse = ""
    @State private var isLoading = false

    // Função para enviar mensagem para o Gemini
    func sendMessage(text: String) {
        isLoading = true
        aiResponse = "" // limpa a resposta anterior
        Task {
            do {
                let response = try await model.generateContent(text)
                if let text = response.text {
                    aiResponse = text
                } else {
                    aiResponse = "⚠️ Não consegui gerar uma resposta. Tente novamente."
                }
            } catch {
                aiResponse = "❌ Erro ao processar: \(error.localizedDescription)"
            }
            isLoading = false
        }
    }

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.black]),
                           startPoint: .top,
                           endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Text("Pergunte ao Gemini ⚽️")
                    .font(.title)
                    .foregroundColor(.white)
                    .bold()
                
                TextField("Digite sua pergunta...", text: $textInput)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .onSubmit {
                        sendMessage(text: textInput)
                        textInput = ""
                    }

                Button(action: {
                    sendMessage(text: textInput)
                    textInput = ""
                }) {
                    Text("Enviar")
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .disabled(textInput.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty)

                ScrollView {
                    if isLoading {
                        ProgressView("Consultando o Gemini...")
                            .padding()
                    } else {
                        Text(aiResponse)
                            .padding()
                            .background(Color.white.opacity(0.1))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
                .frame(maxHeight: 400)
                
                Spacer()
            }
            .padding()
        }
        .onAppear {
            // Envia o prompt inicial assim que a view aparece
            sendMessage(text: initialPrompt)
        }
    }
}

#Preview {
    ContentView()
}
