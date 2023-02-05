<!-- Page Header Start-->
<div class="page-header">
    <div class="header-wrapper row m-0">
        <form class="form-inline search-full col" action="#" method="get">
            <div class="form-group w-100">
                <div class="Typeahead Typeahead--twitterUsers">
                    <div class="u-posRelative">
                        <input class="demo-input Typeahead-input form-control-plaintext w-100" type="text"
                            placeholder="Search Cuba .." name="q" title="" autofocus>
                        <div class="spinner-border Typeahead-spinner" role="status"><span
                                class="sr-only">Loading...</span></div><i class="close-search" data-feather="x"></i>
                    </div>
                    <div class="Typeahead-menu"></div>
                </div>
            </div>
        </form>
        <div class="header-logo-wrapper col-auto p-0">
            <div class="logo-wrapper">
                <a href="{{route('admin_dashboard')}}">
                    <img class="img-fluid" src="{{ asset('asset/images/logo.png') }}" alt="">
                </a>
            </div>
            <div class="toggle-sidebar"><i class="status_toggle middle sidebar-toggle" data-feather="align-center"></i>
            </div>
        </div>
        <div class="left-header col horizontal-wrapper ps-0">
            <ul class="horizontal-menu">

            </ul>
        </div>
        <div class="nav-right col-8 pull-right right-header p-0">
            <ul class="nav-menus">

                {{-- <li> <span class="header-search"><i data-feather="search"></i></span></li> --}}
                <li class="profile-nav onhover-dropdown p-0 me-0" style="width: 30%">
                    <div class="media profile-media">
                        <img class="b-r-10"
                            src="../public/asset/profile/{{Auth::user()->profile ? Auth::user()->profile : 'fall-back.png' }}"
                            alt="" style="width: 30%">
                        <div class="media-body"><span> @if(Auth::user()){{ Auth::user()->name }} @endif</span>
                            <p class="mb-0 font-roboto">{{Auth::user()->getRoleNames()[0]}}
                                <i data-feather="arrow-down"></i>
                            </p>
                        </div>
                    </div>
                    <ul class="profile-dropdown onhover-show-div">
                        @if(Auth::user())
                        <li>
                            <a href="javascript:void" onclick="$('#logout-form').submit();">
                                <i data-feather="log-in"></i>
                                <span>Logout</span>
                            </a>
                        </li>
                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                            @csrf
                        </form>
                        @endif
                    </ul>
                </li>
            </ul>
        </div>

    </div>
</div>
<!-- Page Header Ends -->
