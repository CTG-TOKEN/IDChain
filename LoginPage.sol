<html>
<body>
    <form id="login-form">
        <label>Fingerprint Image:</label>
        <input type="file" id="fingerprint-image" /><br />
        <label>Facial Recognition Image:</label>
        <input type="file" id="facial-recognition-image" /><br />
        <button type="submit" id="login-button">Login</button>
    </form>
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

        // Login button event handler
        document.getElementById("login-button").addEventListener("click", function(event) {
            event.preventDefault();
            var fingerprintImage = document.getElementById("fingerprint-image").files[0];
            var facialRecognitionImage = document.getElement
