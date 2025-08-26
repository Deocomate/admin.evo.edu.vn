@php
    $isEdit = !empty($training?->id);
@endphp

@extends('kingexpressbus.admin.layouts.main')
@section('title', $isEdit ? 'Sửa Khoá Đào tạo' : 'Tạo Khoá Đào tạo')

@section('content')
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title">{{ $isEdit ? 'Sửa Khoá Đào tạo: ' . $training->title : 'Tạo mới Khoá Đào tạo' }}</h3>
        </div>
        <form action="{{ $isEdit ? route('admin.training.update', ['training' => $training->id]) : route('admin.training.store') }}" method="post">
            @csrf
            @if($isEdit)
                @method('PUT')
            @endif

            <div class="card-body">
                @if ($errors->any())
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        <strong>Có lỗi xảy ra!</strong> Vui lòng kiểm tra lại các trường dữ liệu.
                        <ul class="mb-0 mt-2">
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                @endif

                {{-- THÔNG TIN CƠ BẢN --}}
                <div class="row">
                    <div class="col-md-9">
                        <x-inputs.text label="Tiêu đề khóa học" name="title" :value="old('title', $training?->title)" required />
                    </div>
                    <div class="col-md-3">
                        <x-inputs.number label="Độ ưu tiên" name="priority" :value="old('priority', $training?->priority ?? 99)" required />
                    </div>
                </div>

                @if($isEdit)
                    <div class="form-group">
                        <label for="training_slug">Đường dẫn tĩnh (Slug)</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="training_slug" value="{{ $training->slug }}" readonly>
                            <div class="input-group-append">
                                <button type="button" class="btn btn-secondary" id="copy-slug-button">Sao chép</button>
                            </div>
                        </div>
                        <small class="form-text text-muted">Slug được tạo tự động và không thể chỉnh sửa trực tiếp.</small>
                    </div>
                @endif

                <x-inputs.image-link label="Ảnh đại diện (Thumbnail)" name="thumbnail" :value="old('thumbnail', $training?->thumbnail)" required />

                <x-inputs.text label="Độ tuổi phù hợp" name="age" :value="old('age', $training?->age)" required />

                <x-inputs.text-area label="Mô tả ngắn" name="description" :value="old('description', $training?->description)" required />
                <x-inputs.text-area label="Kết quả đầu ra" name="outcome" :value="old('outcome', $training?->outcome)" required />
                <x-inputs.text label="Phương pháp giảng dạy" name="method" :value="old('method', $training?->method)" required />

                <hr>
                {{-- NỘI DUNG VÀ HÌNH ẢNH CHI TIẾT --}}
                <h4>Nội dung và hình ảnh chi tiết</h4>
                <x-inputs.editor label="Nội dung chi tiết khóa học" name="content" :value="old('content', $training?->content)" />
                <x-inputs.image-link-array label="Thư viện ảnh khóa học" name="images" :value="old('images', $training?->images ?? [])" />
                <x-inputs.text label="Link YouTube Review" name="youtube_review_link" :value="old('youtube_review_link', $training?->youtube_review_link)" :required="false" />

            </div>

            <div class="card-footer">
                <button type="submit" class="btn btn-primary">{{ $isEdit ? 'Cập nhật' : 'Tạo mới' }}</button>
                <a href="{{ route('admin.training.index') }}" class="btn btn-secondary">Hủy</a>
            </div>
        </form>
    </div>
@endsection

@push('scripts')
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            const copySlugButton = document.getElementById('copy-slug-button');
            if (copySlugButton) {
                copySlugButton.addEventListener('click', function() {
                    const slugInput = document.getElementById('training_slug');

                    navigator.clipboard.writeText(slugInput.value).then(() => {
                        const originalText = copySlugButton.textContent;
                        copySlugButton.textContent = 'Đã chép!';
                        setTimeout(() => {
                            copySlugButton.textContent = originalText;
                        }, 2000);
                    }).catch(err => {
                        console.error('Không thể sao chép: ', err);
                        slugInput.select();
                        document.execCommand('copy');
                    });
                });
            }
        });
    </script>
@endpush
