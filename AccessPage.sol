<html>
<body>
    <div id="access-page">
        <h1>Welcome to the Access Page</h1>
        <div id="permissions"></div>
    </div>
    <script src="web3.js"></script>
    <script>
        // Connect to the Ethereum blockchain
        if (typeof web3 !== 'undefined') {
            web3 = new Web3(web3.currentProvider);
        } else {
            // set the provider you want from Web3.providers
            web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:8545"));
        }

        // Get the contract instance
        var contractInstance = new web3.eth.Contract(contractABI, contractAddress);

        // Get the user's address
        var userAddress = web3.eth.accounts[0];

        // Check the user's permissions
        contractInstance.methods.checkPermissions(userAddress).call().then(function(permissions) {
            var permissionsDiv = document.getElementById("permissions");
            permissionsDiv.innerHTML = "Permissions: " + permissions;
        });
    </script>
</body>
</html>
