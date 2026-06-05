import { PushChain } from '@pushchain/core';

async function convertExecutorToOrigin(ueaAddress) {
  console.log('\n=== convertExecutorToOriginAccount ===');
  console.log('Calling utils.account.convertExecutorToOriginAccount');
  const { account, exists } = await PushChain.utils.account.convertExecutorToOriginAccount(ueaAddress);
  console.log('Result -', JSON.stringify({ account, exists }));
  return { account, exists };
}

async function convertOriginToExecutor(universalAccount) {
  console.log('\n=== convertOriginToExecutor ===');
  console.log('Calling utils.account.convertOriginToExecutor');
  const info = await PushChain.utils.account.convertOriginToExecutor(universalAccount);
  // info: { address, deployed }
  console.log('Result -', JSON.stringify(info));
  return info;
}

async function main() {
  // 1) Example: Convert Executor (UEA) address to Origin Account (UOA)
  // Provide any executor address on Push Chain
  const ueaAddress = '0x61979c38a51c4dB3ffCB25D11061DCDB7a8c6504';
  await convertExecutorToOrigin(ueaAddress);

  // 2) Example: Convert Origin Account (UOA) to Executor Account (UEA)
  // Create a UniversalAccount from a chain + address
  const originEvmAddress = '0xa96CaA79eb2312DbEb0B8E93c1Ce84C98b67bF11';
  const universalAccount = PushChain.utils.account.toUniversal(originEvmAddress, {
    chain: PushChain.CONSTANTS.CHAIN.ETHEREUM_SEPOLIA,
  });
  await convertOriginToExecutor(universalAccount);
}

main().catch(console.error);
