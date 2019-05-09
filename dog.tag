<dog>
  <h1>Pet Pikachu</h1>
  <img src="img/{ dog }.gif">




  <div>
    <div class="happy level">
      <div style="width:{ happyrate }%;">&nbsp;</div>
    </div>
    <p>Happy or Not: { happyrate }</p>
  </div>

  <button onclick={ ignore }>Ignore</button>
  <button onclick={ massage }>Pet</button>



  <script>
    //make a copy of my pet object and call it that
    var that  = this;

    //initial state
    this.happyrate = 20;
    this.dog = "normal";

    //tell DOM window to increase hunger every three second
    //console.log(that);
    window.setInterval(function(){
      that.decHappyrate();
      that.update();
      that.checkStatus();
      <!-- console.log(this); -->
    }, 3000);


    decHappyrate() {

      this.happyrate = this.happyrate - 2 < 10 ? 10 : this.happyrate - 2;
    }

    incHappyrate() {

      this.happyrate = this.happyrate + 2 > 30 ? 30 : this.happyrate + 2;
    }

    checkStatus() {
      if (this.happyrate >= 25){
        this.dog = "pikachuhappy";
      } else if (this.happyrate <= 15){
        this.dog = "pikachusad";
      }else{
        this.dog = "pikachuwait";
      }
    }

// functions that respond to events
    ignore(e) {
      this.decHappyrate();
      this.checkStatus();
    }

    massage(e) {
      this.incHappyrate();
      this.checkStatus();
    }
    var audio = new Audio("Pika.mp3");
    audio.play();
  </script>

  <style>
  :scope{
    background-image:/img/back.jpeg;
    margin:auto;
  }

  img{
    weight:auto;
    height:200px;
  }

  </style>
</dog>
