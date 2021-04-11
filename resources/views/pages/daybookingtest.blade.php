<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="icon" href="{{asset('public/frontend/img/icon.ico')}}" type="image/icon type">
    <title>Binh An Cinema</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="{{asset('public/frontend/css/bootstrap.min.css')}}" type="text/css">
    <link rel="stylesheet" href="{{asset('public/frontend/css/font-awesome.min.css')}}" type="text/css">
    <link rel="stylesheet" href="{{asset('public/frontend/css/elegant-icons.css')}}" type="text/css">
    <link rel="stylesheet" href="{{asset('public/frontend/css/plyr.css')}}" type="text/css">
    <link rel="stylesheet" href="{{asset('public/frontend/css/nice-select.css')}}" type="text/css">
    <link rel="stylesheet" href="{{asset('public/frontend/css/owl.carousel.min.css')}}" type="text/css">
    <link rel="stylesheet" href="{{asset('public/frontend/css/slicknav.min.css')}}" type="text/css">
    <!-- <link rel="stylesheet" href="{{asset('public/frontend/css/style.css')}}" type="text/css"> -->
    <link rel="stylesheet" href="{{asset('public/frontend/css/login-register.css')}}" type="text/css">
    <link rel="stylesheet" type="text/css" href="{{asset('public/frontend/css/prima.css')}}">
    <script src="{{asset('public/frontend/js/jquery-3.3.1.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('public/frontend/js/underscore-min.js')}}"></script>
    <script type="text/javascript" src="{{asset('public/frontend/js/backbone.js')}}"></script>
    
</head>
<body>
  
                <form class='form-inline selectionForm'>
            <div class="form-group required">
                <label for="name">Tên:</label>
                <input type="text" class="form-control" id='name' placeholder="Jane Doe" required="required"/>
            </div>
            <div class="form-group required">
                <label for="seats">Số ghế:</label>
                <input type="number" id='seats' class="form-control" placeholder="3" required="required"/>
            </div>
            <div class="container" style="text-align: center;">
                <button type="button" class="btn btn-primary btn-lg submitBtn" id="submitSelection">Chọn</button>
            </div>
            <div class="text-center">
                <font color="Red"><label class="error"></label></font>
            </div>

        </form>
        <div class="screen-ui">
            <div id="screen">
                <font color="white">Màn hình</font>       
            </div>
            
            <table class="table" id="table-screen">
                <thead id="screen-head">
                    <tr>
                        <script type="text/template" id='table-screen-header'>
                            <% _.each(_.range(0,columns+1),function(item){ %>
                                <% if(item==0) {%>
                                    <th></th>
                                <% } else {%>
                                    <th><%= item %></th>
                                <% } %>
                            <% }) %>
                        </script>
                    </tr>
                </thead>
                <tbody id="screen-body">
                    <script type="text/template" id='table-screen-body'>
                        <% _.each(rows,function(row){ %>
                            <tr id='table-screen-row'>
                                <td><%=row%></td>
                                <% _.each(_.range(1,columns+1),function(column){ %>
                                    <% var id=(_.indexOf(rows,row)*columns)+column; var reservedSeats=JSON.parse(localStorage.getItem('ReservedSeats')); if(reservedSeats!=null && _.indexOf(reservedSeats,String(id))!=-1) {%>
                                        <td><img src="{{asset('public/frontend/img/reserved-seat.png')}}" class="reserved-seat" id="<%=id%>"/></td>
                                    <% }else {%>
                                        <td><img src="{{asset('public/frontend/img/empty-seat.png')}}" class="empty-seat" id="<%=id%>"/></td>               
                                    <% }}) %>
                            </tr>
                        <% }) %>
                    </script>   
                </tbody>
            </table>

            <div class="text-center">
                <button type="button" class="btn btn-primary btn-lg submitBtn" id="confirmSelection">Confirm Selection</button>
                <div class="screen-map">
                <label for="empty-seat-map">Ghế đã chọn</label>
                <img src="{{asset('public/frontend/img/booked-seat.png')}}" class="booked-seat-map" id="booked-seat-map">
                <br/>
                <label for="">Ghế đã đặt</label>
                <img src="{{asset('public/frontend/img/reserved-seat.png')}}" class="reserved-seat-map" id="reserved-seat-map">
                <br/>
                <label for="">Ghế trống</label>
                <img src="{{asset('public/frontend/img/empty-seat.png')}}" class="empty-seat-map" id="empty-seat-map">
            </div>  
            </div>
                    
        </div>
        <div class="table-responsive">
            <form method="post" action="{{ route('custom.booking')}}">
                @csrf
                <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Tên</th>
                        <th>Số lượng: </th>
                        <th>Vị trí ghế:</th>
                        <th>Tổng tiền:</th>
                    </tr>
                </thead>
                <tbody id="ticket-sold-info">
                    <script type="text/template" id='table-ticket-info'>
                        <% _.each(items,function(item){%>
                            <tr>
                                <td><%-item.names%></td>
                                <input type="hidden" name="fullname" value ="<%-item.names%>">
                                <td><%-item.numbers%></td>
                                <td><%-item.seats%></td>
                               
                            </tr>
                        <%})%>
                    </script>
                </tbody>

            </table>  
            <div class="container" style="text-align: center;"> <input class="btn btn-info" type="submit" value="Đặt vé" name="commit" >   </div>
           
            </form>

        </div>
<script type="text/javascript">
    
    var BookedSeats = [];
var Rows=["A","B","C","D","E","F","G","H","I","J"];
var Columns=12;
var TotalSeats=Rows.length*Columns;
function convertIntToSeatNumbers(seats){
    var bookedSeats="";
    _.each(seats,function(seat){
        var row=Rows[parseInt(parseInt(seat)/12)];
        var column=parseInt(seat)%12;
        if(column==0){
            column=12;
        }
        if(_.indexOf(seats,seat)==seats.length-1){
            bookedSeats=bookedSeats+row+column;
        }
        else{
            bookedSeats=bookedSeats+row+column+",";
        }
    });
    return bookedSeats;
}
var InitialView = Backbone.View.extend({
    events:{
        "click #submitSelection": "submitForm"
    },
    submitForm : function(){
        var reservedseats=JSON.parse(localStorage.getItem('ReservedSeats'));
        var availableSeats=TotalSeats;
        var selectedNumberOfSeats=$('#seats').val();
        if(reservedseats!=null)
            availableSeats=TotalSeats-reservedseats.length;
        if(!$('#name').val()){
            $(".error").html("Không được để trống");
        }
        else if(!selectedNumberOfSeats){
            $(".error").html("Không được để trống");
        }
        else if(parseInt(selectedNumberOfSeats)>availableSeats){
            $(".error").html("Bạn chỉ có thể chọn "+availableSeats+" vị trí")
        }
        else
        {
            $(".error").html("");
            screenUI.showView();
        }
    }
});
var initialView = new InitialView({el:$('.selectionForm')});
var ScreenUI=Backbone.View.extend({
    events:{
        "click .empty-seat,.booked-seat":"toggleBookedSeat",
        "click #confirmSelection":"bookTickets"
    },
    initialize:function(){
        var tableheaderTemplate = _.template($("#table-screen-header").html());
        var tableBodyTemplate=_.template($("#table-screen-body").html());
        var data={"rows":Rows,"columns":Columns};
        $("#screen-head").after(tableheaderTemplate(data));
        $("#screen-body").after(tableBodyTemplate(data));   
    },
    hideView:function(){
        $(this.el).hide();
    },
    showView:function(){
        $(this.el).show();
    },
    toggleBookedSeat:function(event){
        var id="#"+event.currentTarget.id;
        if($(id).attr('class')=='empty-seat' && BookedSeats.length<$('#seats').val()){
            BookedSeats.push(id.substr(1));
            $(id).attr('src','img/booked-seat.png');
            $(id).attr('class','booked-seat');
        }
        else if($(id).attr('class')=='booked-seat'){
            BookedSeats=_.without(BookedSeats,id.substr(1));
            $(id).attr('src','img/empty-seat.png');
            $(id).attr('class','empty-seat');
        }
    },
    updateTicketInfo:function(){
        var bookedSeats=convertIntToSeatNumbers(BookedSeats);
        $("#ticket-sold-info").append("<tr><td>"+$('#name').val()+"</td><td>"+$('#seats').val()+"</td><td>"+bookedSeats+"</td></tr>");
    },
    bookTickets:function(){
        if(BookedSeats.length==parseInt($('#seats').val())) {
            $(".error").text("");
            var reservedseats=JSON.parse(localStorage.getItem('ReservedSeats'))||[];
            _.each(BookedSeats,function(bookedSeat){
                reservedseats.push(bookedSeat);
            });
            var nameSeatsJSON=JSON.parse(localStorage.getItem('NameSeatsJSON'))||{};
            nameSeatsJSON[$('#name').val()]=BookedSeats;
            localStorage.setItem('NameSeatsJSON',JSON.stringify(nameSeatsJSON));
            localStorage.setItem('ReservedSeats',JSON.stringify(reservedseats));
            this.updateTicketInfo();
            window.location.reload();
        }
        else{
            $(".error").html("Vui lòng chọn đúng "+ $('#seats').val()+" ghế");
        }       
    },
});
var screenUI = new ScreenUI({el:$('.screen-ui')});
screenUI.hideView();
var TicketInfo=Backbone.View.extend({
    initialize:function(){
        var items=[];
        var json=JSON.parse(localStorage.getItem('NameSeatsJSON'));
        if(json!=null){
        _.each(json,function(key,value){
            var name=value;
            var number=key.length;
            var bookedSeats=convertIntToSeatNumbers(key);
            items.push({names:name,numbers:number,seats:bookedSeats});
        });
        var data={"items":items};
        var ticketInfoBody=_.template($("#table-ticket-info").html());
        $("#ticket-sold-info").html(ticketInfoBody(data));
        }
    }
});
var ticketInfo=new TicketInfo({el:$('.table-responsive')});
</script>




@include('sweetalert::alert', ['cdn' => "https://cdn.jsdelivr.net/npm/sweetalert2@9"])




<script src="{{asset('public/frontend/js/bootstrap.min.js')}}"></script>
<script src="{{asset('public/frontend/js/player.js')}}"></script>
<script src="{{asset('public/frontend/js/jquery.nice-select.min.js')}}"></script>
<script src="{{asset('public/frontend/js/mixitup.min.js')}}"></script>
<script src="{{asset('public/frontend/js/jquery.slicknav.js')}}"></script>
<script src="{{asset('public/frontend/js/owl.carousel.min.js')}}"></script>
<script src="{{asset('public/frontend/js/main.js')}}"></script>
<script src="{{asset('public/frontend/js/login-register.js')}}"></script>


</body>
</html>