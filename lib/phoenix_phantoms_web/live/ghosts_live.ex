defmodule PhoenixPhantomsWeb.GhostsLive do
  # use PhoenixPhantomsWeb, :live_view
  use Phoenix.LiveView
  use LiveViewNative.LiveView

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def render(%{platform_id: :web} = assigns) do
    ~H"""
    <div class="left-[40rem] fixed inset-y-0 right-0 z-0 hidden lg:block xl:left-[50rem] bg-[url('/images/bg.png')]"></div>
    """
  end

  @impl true
  def render(%{platform_id: :swiftui} = assigns) do
    # This UI renders on the iPhone / iPad app
    ~SWIFTUI"""
    <VStack>
      <Text>
        Hello native!
      </Text>
    </VStack>
    """
  end

  # def render(assigns) do
  #   ~H"""
    # <%!-- <.flash_group flash={@flash} />
    # <%= for {sample, int} <- Enum.with_index(["crow.wav", "scream.wav", "thunder.wav", "witch.wav", "wolf.mp3", "zombie.wav"]) do %>
    #   <.sfx id={"sample_#{int}"} sample={"sfx/#{sample}"}>
    #     <.ghost x={Enum.random(0..1024)} y={Enum.random(0..768)} float_speed={Enum.random(1..4)} />
    #   </.sfx>
    # <% end %> --%>

    # <%!-- <div class="left-[40rem] fixed inset-y-0 right-0 z-0 hidden lg:block xl:left-[50rem] bg-[url('/images/bg.png')]"></div>
    # """
  # end --%>
end
