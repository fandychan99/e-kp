<div class="row">
    <div class="col-12 col-lg-7">
        <div class="card shadow-sm border-0 overflow-hidden">
            <div class="card-body">
                <img src="<?= base_url() ?>assets/images/dashboard.png" alt="" class="form-control">
            </div>
        </div>
    </div>

    <div class="col-12 col-lg-5">
        <!-- <div class="col-12"> -->
        <div class="card shadow-sm border-0 overflow-hidden">
            <div class="card-body ms-auto">
                <h4 id="jam"><?= date("l, d M Y H:i:s"); ?></h4>
            </div>
        </div>
    </div>
</div>


<script>
    // setInterval(function() {
    //     console.log("ini jam : <?= date("l, d M Y H:i:s"); ?>");
    //     $("#jam").val("<?= date("l, d M Y H:i:s"); ?>");
    // }, 1000);

    function updateClock() {
        var currentTime = new Date(); // Create a new Date object

        var day = currentTime.getDate(); // Get the day (1-31)
        var month = currentTime.getMonth() + 1; // Get the month (0-11). Add 1 because months are zero-based.
        var year = currentTime.getFullYear(); // Get the four-digit year
        var hours = currentTime.getHours(); // Get the hours
        var minutes = currentTime.getMinutes(); // Get the minutes
        var seconds = currentTime.getSeconds(); // Get the seconds

        var hari = currentTime.toLocaleString('en-US', { weekday: 'long' });

        // Add leading zeros to single-digit numbers
        day = (day < 10 ? "0" : "") + day;
        month = (month < 10 ? "0" : "") + month;
        hours = (hours < 10 ? "0" : "") + hours;
        minutes = (minutes < 10 ? "0" : "") + minutes;
        seconds = (seconds < 10 ? "0" : "") + seconds;

        // Display the complete time
        var datetime = hari + ", " + day + "/" + month + "/" + year + " " + hours + ":" + minutes + ":" + seconds;

        var clockElement = document.getElementById("jam");
        clockElement.innerHTML = datetime;
    }

    // Update the time every second (1000 milliseconds)
    setInterval(updateClock, 1000);
</script>