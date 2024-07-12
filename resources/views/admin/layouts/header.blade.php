<header id="page-topbar">
    <div class="layout-width">
        <div class="navbar-header">
            <div class="d-flex">
                <!-- LOGO -->
                <div class="navbar-brand-box horizontal-logo">
<<<<<<< HEAD
<<<<<<< HEAD
                    <a href="{{ route('admin.dashboard.index') }}" class="logo logo-dark">
                        <span class="logo-sm">
                            <img src="{{asset(get_app_setting('favicon')??'assets/images/logo-sm.png')}}" alt="" height="22">
                        </span>
                        <span class="logo-lg">
                            <img src="{{asset(get_app_setting('logo')??'assets/images/logo-dark.png')}}" alt="" height="17">
=======
=======
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
                    <a href="index.html" class="logo logo-dark">
                        <span class="logo-sm">
                            <img src="{{asset('admin-assets/images/logo-sm.png')}}" alt="" height="22">
                        </span>
                        <span class="logo-lg">
                            <img src="{{asset('admin-assets/images/logo-dark.png')}}" alt="" height="17">
<<<<<<< HEAD
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
=======
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
                        </span>
                    </a>

                    <a href="index.html" class="logo logo-light">
                        <span class="logo-sm">
<<<<<<< HEAD
<<<<<<< HEAD
                            <img src="{{asset(get_app_setting('favicon')??'assets/images/logo-sm.png')}}" alt="" height="22">
                        </span>
                        <span class="logo-lg">
                            <img src="{{asset(get_app_setting('logo')??'assets/images/logo-dark.png')}}" alt="" height="17">
=======
=======
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
                            <img src="{{asset('admin-assets/images/logo-sm.png')}}" alt="" height="22">
                        </span>
                        <span class="logo-lg">
                            <img src="{{asset('admin-assets/images/logo-light.png')}}" alt="" height="17">
<<<<<<< HEAD
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
=======
>>>>>>> 2b33c6348bab638e807612609fb3df492f5146af
                        </span>
                    </a>
                </div>

                <button type="button" class="btn btn-sm px-3 fs-16 header-item vertical-menu-btn topnav-hamburger shadow-none" id="topnav-hamburger-icon">
                    <span class="hamburger-icon">
                        <span></span>
                        <span></span>
                        <span></span>
                    </span>
                </button>

                <!-- App Search-->

            </div>

            <div class="d-flex align-items-center">





                <div class="ms-1 header-item d-none d-sm-flex">
                    <button type="button" class="btn btn-icon btn-topbar btn-ghost-secondary rounded-circle shadow-none" data-toggle="fullscreen">
                        <i class='bx bx-fullscreen fs-22'></i>
                    </button>
                </div>


                <div class="dropdown topbar-head-dropdown ms-1 header-item" id="notificationDropdown">
                    <button type="button" class="btn btn-icon btn-topbar btn-ghost-secondary rounded-circle shadow-none" id="page-header-notifications-dropdown" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-haspopup="true" aria-expanded="false">
                        <i class="bx bx-bell fs-22"></i>
                        <span class="position-absolute topbar-badge fs-10 translate-middle badge rounded-pill bg-danger">{{auth('admin')->user()->unreadNotifications->count()}}<span class="visually-hidden">unread messages</span></span>
                    </button>
                    <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end p-0" aria-labelledby="page-header-notifications-dropdown">

                      <div class="dropdown-head bg-primary bg-pattern rounded-top">
                        <div class="p-3">
                            <div class="row align-items-center">
                                <div class="col">
                                    <h6 class="m-0 fs-16 fw-semibold text-white"> Notifications </h6>
                                </div>
                                <div class="col-auto dropdown-tabs">
                                    <span class="badge bg-light-subtle text-body fs-13"> {{auth('admin')->user()->unreadNotifications->count()}} New</span>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div data-simplebar="init" style="max-height: 300px;" class="pe-2 simplebar-scrollable-y">
                        <div class="simplebar-wrapper" style="margin: 0px -8px 0px 0px;">
                            <div class="simplebar-height-auto-observer-wrapper">
                                <div class="simplebar-height-auto-observer">

                                </div>
                            </div>

                            <div class="simplebar-mask">
                                <div class="simplebar-offset" style="right: 0px; bottom: 0px;">
                                    <div class="simplebar-content-wrapper" tabindex="0" role="region" aria-label="scrollable content" style="height: auto; overflow: hidden scroll;">
                                        <div class="simplebar-content">

                                            @foreach(auth('admin')->user()->unreadNotifications()->paginate(10) as $notification)
                                            <div class="@if($notification->read_at === null)bg-light-subtle @else @endif text-reset notification-item d-block dropdown-item position-relative">
                                                <div class="d-flex">
                                                    <div class="avatar-xs me-3 flex-shrink-0">
                                                        <span class="avatar-title @if($notification->read_at === null)bg-danger-subtle text-danger @else bg-success-subtle text-success @endif   rounded-circle fs-16">
                                                            <i class="bx bx-badge-check"></i>
                                                        </span>
                                                    </div>
                                                    <div class="flex-grow-1">
                                                        <a href="{{ $notification->data['url'] }}" class="stretched-link">
                                                            <p class="mt-0 mb-2 lh-base text-dark"><b>{{$notification->data['order_no']}}</b> 
                                                                {{ $notification->data['message'] }}
                                                            </p>
                                                        </a>
                                                        <p class="mb-0 fs-11 fw-medium text-muted">
                                                            <span><i class="mdi mdi-clock-outline"></i> {{ $notification->created_at->diffForHumans() }}</span>
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                            <hr class="m-0">
                                            @endforeach



                                            <div class="my-3 text-center view-all" style="display: block;">
                                                <button type="button" class="btn btn-soft-success waves-effect waves-light">View
                                                    All Notifications <i class="ri-arrow-right-line align-middle"></i></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="simplebar-placeholder" style="width: 312px; height: 490px;">

                                </div>
                            </div>
                            <div class="simplebar-track simplebar-horizontal" style="visibility: hidden;">
                                <div class="simplebar-scrollbar" style="width: 0px; display: none;">

                                </div>
                            </div>
                            <div class="simplebar-track simplebar-vertical" style="visibility: visible;">
                                <div class="simplebar-scrollbar" style="height: 183px; display: block; transform: translate3d(0px, 0px, 0px);">

                                </div>
                            </div>
                        </div>
                    </div>
                </div>



                <div class="dropdown ms-sm-3 header-item topbar-user">
                    <button type="button" class="btn shadow-none" id="page-header-user-dropdown" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <span class="d-flex align-items-center">

                            <img class="rounded-circle header-profile-user" src="{{asset(getAdmin('avatar')??'assets/images/users/avatar-1.jpg')}}"
                            alt="{{getAdmin('name')}}">
                            <span class="text-start ms-xl-2">
                               <span class="d-none d-xl-inline-block ms-1 fw-medium user-name-text">{{getAdmin('name')}}</span>
                               <span class="d-none d-xl-block ms-1 fs-12 text-muted user-name-sub-text">{{getAdmin('role')}}</span>
                           </span>
                       </span>
                   </button>
                   <div class="dropdown-menu dropdown-menu-end">
                       <h6 class="dropdown-header">Welcome {{getAdmin('name')}}!</h6>
                       <a class="dropdown-item" href="{{route('admin.profile')}}"><i
                        class="mdi mdi-account-circle text-muted fs-16 align-middle me-1"></i> <span
                        class="align-middle">Profile</span></a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="{{ route('admin.logout') }}"><i
                            class="mdi mdi-logout text-muted fs-16 align-middle me-1"></i> <span
                            class="align-middle" data-key="t-logout">Logout</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>