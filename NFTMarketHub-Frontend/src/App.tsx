import { ConnectButton } from "@rainbow-me/rainbowkit";

const App = () => {
  // const { address, isConnected } = useAccount();

  return (
    <div className="relative min-h-screen p-4">
      {/* 
        mx-auto:用于水平居中元素。mx 表示 margin-left 和 margin-right，auto 使这些边距自动，以实现水平居中对齐。
        flex:将元素的布局模式设置为 Flexbox。这使得元素可以使用 Flexbox 的布局特性，如对齐、分布等。
      */}
      <nav className="container mx-auto px-4 py-8 flex items-center justify-between">
        <h1 className="text-3xl font-bold">Welcome to NFTMarketHub</h1>
        <div className="absolute top-4 right-4">
          <ConnectButton />
        </div>
      </nav>
    </div>
  );
};

export default App;
