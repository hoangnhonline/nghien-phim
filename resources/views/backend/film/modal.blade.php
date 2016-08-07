<!-- Modal -->
<div id="crewModal" class="modal fade" role="dialog">
  <div class="modal-dialog modal-lg">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Add new crew</h4>
      </div>
      <div class="modal-body">
          fsdhdfhdsfh
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">Save</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
<!-- Modal -->
<div id="tagModal" class="modal fade" role="dialog">
  <div class="modal-dialog modal-lg">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Tạo mới tag</h4>
      </div>
      <div class="modal-body">
          <input type="hidden" name="type" value="1">
           <!-- text input -->
          <div class="col-md-6">
            <div class="form-group">
              <label>Tag<span class="red-star">*</span></label>
              <input type="text" class="form-control" name="name" id="name" value="{{ old('name') }}">
            </div>
            <div class="form-group">
              <label>Slug <span class="red-star">*</span></label>
              <input type="text" class="form-control" name="slug" id="slug" value="{{ old('slug') }}">
            </div>               
            <!-- textarea -->
            <div class="form-group">
              <label>Mô tả</label>
              <textarea class="form-control" rows="4" name="description" id="description">{{ old('description') }}</textarea>
            </div>
            
          </div>
          <div class="col-md-6">
            
            <div class="form-group">
              <label>Meta title </label>
              <input type="text" class="form-control" name="meta_title" id="meta_title" value="{{ old('meta_title') }}">
            </div>
            <div class="form-group">
              <label>Meta desciption</label>
              <textarea class="form-control" rows="2" name="meta_description" id="meta_description">{{ old('meta_description') }}</textarea>
            </div>  

            <div class="form-group">
              <label>Meta keywords</label>
              <textarea class="form-control" rows="2" name="meta_keywords" id="meta_keywords">{{ old('meta_keywords') }}</textarea>
            </div>  
            <div class="form-group">
              <label>Custom text</label>
              <textarea class="form-control" rows="2" name="custom_text" id="custom_text">{{ old('custom_text') }}</textarea>
            </div>
          </div>
          <div style="clear:both"></div>
      </div>
      <div class="modal-footer" style="text-align:center">
        <button type="button" class="btn btn-primary" data-dismiss="modal">Save</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>