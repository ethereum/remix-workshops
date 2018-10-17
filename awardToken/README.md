#  README

## Install and Setup `Metamask Extension` for Chrome Browser and open `Remix`
01. Install chrome extension : go to `https://metamask.io/` and install chrome extension
02. Open Metamask            : click metamask extension icon to open metamask overlay
03. Signup or Import         : accept terms and follow steps to restore or create a new vault
04. Switch to Ropsten        : click network dropdown menu and choose `Ropsten Test Network`
05. Create ropsten account   : click first dropdown in upper right corner and click create account
06. Open test ether faucet   : click buy and then click ropsten test faucet to open faucet page
07. Request test ether       : click `request 1 ether from faucet`, then click transaction link
08. Await mining             : wait on etherscan until status switches to success
09. Open remix               : go to `https://remix-alpha.ethereum.org`
10. Open run tab             : in the devtools panel on the right, click the `Run` tab
11. Switch remix to ropsten  : click on `Environment` dropdown and choose `Injected Web3`

## Load tutorial files and setup contracts
01. Load the gist            : type `remix.loadgist('add9633c2b0101f6fda0aadcfe350f60')` to download the files
02. Expand gist              : click `gist` in file explorer panel to see files
03. Explorer the .sol files  : read through a bit
04. Open `AwardToken.sol`    : click `gist/AwardToken.sol` in file explorer to show it in the editor
05. Compile                  : click on `Compile` tab and click `Start to compile`
06. Wait for compilation     : Wait until dropdown input field in compile tab shows `AwardToken`
07. Choose owner account     : click on `Run` tab and select owner address from `Account` dropdown
08. Choose contract          : click `gist/AwardToken.sol` in file explorer to show it in editor
09. Deploy to ropsten        : on `Run` tab click dropdown, select `AwardToken` + click `deploy`
10. Confirm transaction      : see below => `## Confirm Transactions in Metamask Popup`
// when transaction is successfully mined, a dapp interface will be generated in the run tab
11. publish contract address : click `copy` icon on generated AwardToken dapp dropdown and share it
// the address can be coded into a dapp to enable users to conveniently interact with the contract

## Confirm Transactions in Metamask Popup
// blue function buttons are read only & free, pink function buttons change state and cost ether
01. Set max gas price        : Type e.g. `1` into the `Gas price` input field if not prefilled yet
02. Allow transaction        : click `submit` button to pay and send the transaction
// a pending transaction log appears in terminal and updates upon success or fail
03. Await confirmation       : click etherscan link in terminal to check status details of transaction

## Contract Administration (start round)
01. Start Round             : click the pink `startRound` function button on the awardToken udapp
// round will be open for 7 hours after which the owner can close it which mints 100 tokens to the winner
02. Confirm transaction     : see above => `## Confirm Transactions in Metamask Popup`

## User Interaction (make proposal and vote)
01. Select AwardToken       : select AwardToken from dropdown in remix devtools panel on `Run` tab
02. Connect to contract     : paste AwardToken address into `At address` input field + click blue button
03. Lookup ballot Address   : click the `currBallot` button to get Ballot contract address
04. Copy ballot address     : check dapp or expanded terminal log to copy the address to clipboard
05. Select ballot           : select Ballot from dropdown in remix devtools panel on `Run` tab
06. Connect to contract     : paste ballot address into `At address` input field and click blue button
// a ballot dapp will be generated on the bottom of devtools run tab
07. Copy account address    : on devtools `Run` tab click `copy` icon after `Account` dropdown
08. Goto ballot dapp        : scroll down on `Run` tab to ballot contract udapp
09. Expand addProposal      : expand the pink `addProposal` button by clicking arrow down after input field
10. Add description         : fill `desc:` input with your proposal description text (in quotation marks)
11. Add title               : fill `title:` input with a short title for your proposal (in quotation marks)
12. Add your address        : fill `targetAddr:` by pasting (ctrl+v) your account address
13. Submit proposal         : click pink `transact` button to send proposal
// every address can only create one proposal
14. Confirm transaction     : see above => `## Confirm Transactions in Metamask Popup`
15. Lookup proposal address : click the blue `getProposals` button and copy a proposal address
16. Lookup proposal details : click the blue `proposals` button after pasting the proposal address
17. Vote for proposal       : paste proposal address into pink `vote` input field and press vote button
18. Confirm transaction     : see above => `## Confirm Transactions in Metamask Popup`

## Contract Administration (close round)
01. Timeout round           : wait for 7 hours or press pink `timeoutEarly` button
02. Confirm transaction     : see above => `## Confirm Transactions in Metamask Popup`
03. Close round             : click the pink `closeRound` button to finish round and mint 100 to winner
04. Confirm transaction     : see above => `## Confirm Transactions in Metamask Popup`

## User Interaction (check status)
01. check winner            : click blue `winningProposal` on ballot to see address of winner
02. check Ballot            : click blue `currBallot` on AwardToken to see active ballot gone
03. check previous winner   : click blue `getPreviousWinners` to see winner added to hall of fame
04. copy winner address     : select and copy address of winning proposal (ctrl+c)
05. check balance of winner : paste winner address into blue `balanceOf` input field and click button
// see the winner now owns a token supply of 100 freshly minted tokens
04. check total supply      : click `totalSupply` to see number of all minted tokens is 100

## Contract Administration (start round)
01. Start new Round         : click the pink `startRound` function button on the awardToken udapp
// round will be open for 7 hours after which the owner can close it which mints 100 tokens to the winner
02. Confirm transaction     : see above => `## Confirm Transactions in Metamask Popup`

## User Interaction (use custom dapp)
01. Open custom dapp        : open `https://ninabreznik.github.io/voting-ethereum-contract/` in browser
02. Connect to contract     : paste AwardToken address into input field and click `submit`
03. Use custom dapp         : ...just use the UI

