@extends('layouts.app')

@section('title')
Tutor | Messages
@stop

@section('header')
@include('includes.header')
@stop

@push('include-css')
<link rel="stylesheet" href="{{ asset('asset/css/header.css') }}">
<link rel="stylesheet" href="{{ asset('asset/css/AllMessages.css') }}">
<link rel="stylesheet" href="{{ asset('asset/plugins/Select-2/css/select2.min.css') }}">
<link rel="stylesheet" href="{{ asset('asset/css/footer.css') }}">
@endpush

@section('content')
<section>
    <div class="FrontPage ">
        <div class="banner pt-5">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-12">
                        <div>
                            <h1 class="display-4">
                                All Messages
                            </h1>
                            <button type="button" style="background: #4765a0 !important; border: #4765a0;"
                                class="btn btn-primary btn-lg mt-2 showUnread">View Unread Message</button>
                            <hr class=" line w-25 mx-1">
                            <form>
                                <div class="skillbutton">
                                    <select class="InputTab mt-2 flex pl-2" id='selUser' name="id">
                                        <option value='0' disabled selected>Select Requirement to filter Message
                                        </option>
                                        @if (count($data)>0)
                                        @foreach ($data as $item)
                                        @if ($item->user_id != $user_id)
                                        <option value="{{$item->post_id}}">
                                            {{$item->subject}} teacher needed in{{$item->location}}
                                        </option>
                                        @endif
                                        @endforeach
                                        @endif
                                    </select>
                                </div>
                                <button type="submit" style="background: #4765a0 !important; border: #4765a0;"
                                    class="btn btn-primary btn-lg mt-3">Search</button>
                            </form>
                            @if (count($data)>0)
                            @foreach ($data as $item)
                            @if ($item->user_id != $user_id)
                            <div id="post_{{$item->post_id}}" class="messageRow">
                                <h2 class=" pt-3">
                                    {{$item->username}}
                                    <span class="pl-5">{{\App\Common::changeDate($item->created_at)}}</span>
                                    <span class="post_notification"></span>
                                </h2>
                                <p class="pt-3">
                                    {{$item->last_message}}
                                </p>
                                <div class="top-icons" style="line-height: 50px;">
                                    <span class="fa fa-comment message pl-4 pr-4"><a
                                            href="{{route('view_messages',['mThread'=>$item->thread_id])}}">Read &
                                            Reply</a></span>
                                    @role('student')
                                    <span class="fas fa-user phone pl-4 pr-4"><a
                                            href="{{route('tutor_profile',['id'=>$item->user_id])}}">View
                                            Profile</a></span>
                                    @endrole

                                    <span class="fas fa-suitcase pay pl-4 pr-4"><a
                                            href="{{route('show_tutor_job',['id'=>$item->post_id])}}"> View Post
                                        </a></span>
                                </div>
                            </div>
                            @endif
                            @endforeach
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@stop

@push('include-js')
<script src="{{ asset('asset/plugins/Select-2/js/select2.min.js') }}"></script>
<script>
    $(document).ready(function () {
        load_unseen_notification();

        setInterval(() => {
            load_unseen_notification();
        }, 3000);

        $('.showUnread').click(function(){
            if($('.unread').length>0){
                $('.messageRow').hide()
                $('.unread').show()
            }
        })

        $("#selUser").select2();
        $('#but_read').click(function(){
            var username = $('#selUser option:selected').text();
            var userid = $('#selUser').val();

            $('#result').html("id : " + userid + ", name : " + username);
        });
    })

    var get_message_notifications_url = "{{route('notification')}}";

</script>

{{-- Chat Functions --}}
<script src="{{ asset('asset/js/chat.js') }}"></script>
@endpush


@section('footer')
@include('includes.footer')
@stop

