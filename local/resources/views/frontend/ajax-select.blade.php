<option value="0"> Chọn Quân(Huyện) </option>
@if(!empty($districts))
    @foreach($districts as $key => $value)
        <option value="{{ $key }}">{{ $value }}</option>
    @endforeach
@endif