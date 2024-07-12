@foreach($project->mediaFiles as $media)
<div class="col-xl-2 col-lg-3 col-sm-4">
    <div class="gallery-box card light mb-0">
        <div class="gallery-container">
            <a class="glightbox" data-gallery="gallery1"  href="{{asset($media->file)}}" title="">
                <img class="gallery-img img-fluid mx-auto" src="{{asset($media->file)}}" alt="">
                <div class="gallery-overlay">
                    <h5 class="overlay-caption">{{$media->name}}</h5>
                </div>
            </a>
        </div>
        <div class="box-content">
            <div class="d-flex align-items-center mt-1">
                <div class="flex-shrink-0">
                    <div class="d-flex gap-3">
                        <button type="button" class="btn btn-sm fs-12 btn-link text-body text-decoration-none px-0">
                            File Size: <b>{{$media->size}}</b>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endforeach