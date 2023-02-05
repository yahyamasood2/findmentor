@extends('layouts.app')

@section('title')
Tutor | Review
@stop

@section('header')
@include('includes.header')
@stop

@push('include-css')
<link rel="stylesheet" href="{{ asset('asset/css/CoinSection.css') }}">
<link rel="stylesheet" href="{{ asset('asset/css/footer.css') }}">
@endpush

@section('content')
<section>
    <div class="container">
        <br>
        <br>
        <br>
        <h1 class="display-1 pl-5 pr-5 text-center CoinHead">Reviews</h1>

    </div>
</section>
<section>
    <div class="container pt-5 pb-5 mb-5">
        @if (count($reviews)>0)
        @foreach ($reviews as $review)
        <div>
            <h3><a href="{{route('tutor_profile',['id'=>$review->review_to_user_id])}}">{{$review->name}}</a></h3>
            <p>{{ $review->rating}}</p>
            <h5>{{ $review->headline}}</h5>
            <h6>{{ $review->review}}</h6>
        </div>
        @endforeach
        @else
        <h2 class="alert alert-danger">
            <b>No Review Found...</b>
        </h2>
        @endif
    </div>
</section>

@stop

@section('footer')
@include('includes.footer')
@stop

