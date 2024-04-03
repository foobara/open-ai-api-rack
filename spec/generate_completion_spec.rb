# TODO: Can probably simplify this spec once we trust things a bit more.
# Just need to test that the command exists and is a command, really.
RSpec.describe Foobara::OpenAiApi::GenerateCompletion do
  let(:inputs) do
    {
      api_token:,
      messages:
    }
  end
  let(:api_token) { ENV.fetch("OPENAI_API_KEY", nil) }
  let(:messages) do
    [
      {
        role: "system",
        content: "You are like a scientist that answers questions very concisely and accurately."
      },
      {
        role: "user",
        content: "What is the PH of honey?"
      }
    ]
  end

  let(:command) { described_class.new(inputs) }
  let(:outcome) { command.run }
  let(:result) { outcome.result }
  let(:errors) { outcome.errors }

  it "can generate a completion", vcr: { record: :none } do
    expect(outcome).to be_success
    expect(result).to be_a(Foobara::OpenAiApi::Types::Completion)
    expect(result.choices.first.message.content).to match(/pH of honey.*\d+\.\d+ (and|to) \d+\.\d+/)
  end
end
