<%@ page import="com.topper.books.campaign.Campaign" %>


<!-- Bootstrap styles -->
%{--<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">--}%
<!-- Generic page styles -->
<link rel="stylesheet" href="../css/style.css">
<!-- blueimp Gallery styles -->
<link rel="stylesheet" href="http://blueimp.github.io/Gallery/css/blueimp-gallery.min.css">
<!-- CSS to style the file input field as button and adjust the Bootstrap progress bars -->
<link rel="stylesheet" href="../css/jquery.fileupload.css">
<link rel="stylesheet" href="../css/jquery.fileupload-ui.css">
<!-- CSS adjustments for browsers with JavaScript disabled -->
<noscript><link rel="stylesheet" href="../css/jquery.fileupload-noscript.css"></noscript>
<noscript><link rel="stylesheet" href="../css/jquery.fileupload-ui-noscript.css"></noscript>
<style>
/* Hide Angular JS elements before initializing */
.ng-cloak {
    display: none;
}
</style>

<ckeditor:resources/>


<div class="${hasErrors(bean: campaignInstance, field: 'name', 'error')} ">
    <label for="name" class="control-label"><g:message code="campaign.name.label" default="Name" /></label>
    <div>
        <g:textField class="form-control" name="name" value="${campaignInstance?.name}"/>
        <span class="help-inline">${hasErrors(bean: campaignInstance, field: 'name', 'error')}</span>
    </div>
</div>
<div class="${hasErrors(bean: campaignInstance, field: 'type', 'error')} ">
    <label for="type" class="control-label"><g:message code="campaign.type.label" default="Type" /></label>
    <div>
        <g:select class="form-control" name="type" from="['Promotional','Introductory','Offer']" noSelection="${['':'Please Choose...']}" />
        %{--   <g:textField class="form-control" name="type" value="${campaignInstance?.type}"/>--}%
        <span class="help-inline">${hasErrors(bean: campaignInstance, field: 'type', 'error')}</span>
    </div>
</div>

    <div class="${hasErrors(bean: campaignInstance, field: 'subject', 'error')} ">
        <label for="subject" class="control-label"><g:message code="campaign.subject.label" default="Subject" /></label>
        <div>
            <g:textField class="form-control" name="subject" value="${campaignInstance?.subject}"/>
            <span class="help-inline">${hasErrors(bean: campaignInstance, field: 'subject', 'error')}</span>
        </div>
    </div>

   %{-- <div class="${hasErrors(bean: templateInstance, field: 'content', 'error')} ">
        <label for="content" class="control-label"><g:message code="template.content.label" default="Content" /></label>
        <div>
            --}%%{--<textarea class="ckeditor" cols="80"  rows="10" id="content" name="content" >--}%%{--
            --}%%{--${templateInstance?.content}--}%%{--
            --}%%{--</textarea>--}%%{--
            <ckeditor:editor name="content" height="400px" width="80%">
                ${templateInstance?.content}
            </ckeditor:editor>
            <span class="help-inline">${hasErrors(bean: templateInstance, field: 'content', 'error')}</span>
        </div>
    </div>--}%
<div class="${hasErrors(bean: campaignInstance, field: 'content', 'error')} ">
    <label for="content" class="control-label"><g:message code="campaign.content.label" default="Content" /></label>
    <div>
        <ckeditor:editor name="content" height="400px" width="80%">
            ${templateInstance?.content}
        </ckeditor:editor>
   %{--     <g:textField class="form-control" name="content" value="${campaignInstance?.content}"/>--}%
        <span class="help-inline">${hasErrors(bean: campaignInstance, field: 'content', 'error')}</span>
    </div>
</div>

<!-- The file upload form used as target for the file upload widget -->
	<!-- The fileupload-buttonbar contains buttons to add/delete files and start/cancel the upload -->
	<!-- The fileupload-buttonbar contains buttons to add/delete files and start/cancel the upload -->
<div class="row fileupload-buttonbar">
    <div class="col-lg-7">
        <!-- The fileinput-button span is used to style the file input field as button -->
        <span class="btn btn-success fileinput-button" >
            <i class="glyphicon glyphicon-plus"></i>
            <span>Add files...</span>
            <input type="file" name="files[]" multiple >
        </span>
        <button type="button" class="btn btn-primary start" data-ng-click="submit()">
            <i class="glyphicon glyphicon-upload"></i>
            <span>Start upload</span>
        </button>
        <button type="button" class="btn btn-warning cancel" data-ng-click="cancel()">
            <i class="glyphicon glyphicon-ban-circle"></i>
            <span>Cancel upload</span>
        </button>
        <!-- The global file processing state -->
        <span class="fileupload-process"></span>
    </div>
    <!-- The global progress state -->
    <div class="col-lg-5 fade" data-ng-class="{in: active()}">
        <!-- The global progress bar -->
        <div class="progress progress-striped active" data-file-upload-progress="progress()"><div class="progress-bar progress-bar-success" data-ng-style="{width: num + '%'}"></div></div>
        <!-- The extended global progress state -->
        <div class="progress-extended">&nbsp;</div>
    </div>
</div>
<!-- The table listing the files available for upload/download -->
<table class="table table-striped files ng-cloak">
    <tr data-ng-repeat="file in queue" data-ng-class="{'processing': file.$processing()}">
        <td data-ng-switch data-on="!!file.thumbnailUrl">
            <div class="preview" data-ng-switch-when="true">
                <a data-ng-href="{{file.url}}" title="{{file.name}}" download="{{file.name}}" data-gallery><img data-ng-src="{{file.thumbnailUrl}}" alt=""></a>
            </div>
            <div class="preview" data-ng-switch-default data-file-upload-preview="file"></div>
        </td>
        <td>
            <p class="name" data-ng-switch data-on="!!file.url">
                <span data-ng-switch-when="true" data-ng-switch data-on="!!file.thumbnailUrl">
                    <a data-ng-switch-when="true" data-ng-href="{{file.url}}" title="{{file.name}}" download="{{file.name}}" data-gallery>{{file.name}}</a>
                    <a data-ng-switch-default data-ng-href="{{file.url}}" title="{{file.name}}" download="{{file.name}}">{{file.name}}</a>
                </span>
                <span data-ng-switch-default>{{file.name}}</span>
            </p>
            <strong data-ng-show="file.error" class="error text-danger">{{file.error}}</strong>
        </td>
        <td>
            <p class="size">{{file.size | formatFileSize}}</p>
            <div class="progress progress-striped active fade" data-ng-class="{pending: 'in'}[file.$state()]" data-file-upload-progress="file.$progress()"><div class="progress-bar progress-bar-success" data-ng-style="{width: num + '%'}"></div></div>
        </td>
        <td>
            <button type="button" class="btn btn-primary start" data-ng-click="file.$submit()" data-ng-hide="!file.$submit || options.autoUpload" data-ng-disabled="file.$state() == 'pending' || file.$state() == 'rejected'">
                <i class="glyphicon glyphicon-upload"></i>
                <span>Start</span>
            </button>
            <button type="button" class="btn btn-warning cancel" data-ng-click="file.$cancel()" data-ng-hide="!file.$cancel">
                <i class="glyphicon glyphicon-ban-circle"></i>
                <span>Cancel</span>
            </button>
            <button data-ng-controller="FileDestroyController" type="button" class="btn btn-danger destroy" data-ng-click="file.$destroy()" data-ng-hide="!file.$destroy">
                <i class="glyphicon glyphicon-trash"></i>
                <span>Delete</span>
            </button>
        </td>
    </tr>
</table>

<br>

</div>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.23/angular.min.js"></script>
<!-- The jQuery UI widget factory, can be omitted if jQuery UI is already included -->
<script src="../js/vendor/jquery.ui.widget.js"></script>
<!-- The Load Image plugin is included for the preview images and image resizing functionality -->
<script src="http://blueimp.github.io/JavaScript-Load-Image/js/load-image.all.min.js"></script>
<!-- The Canvas to Blob plugin is included for image resizing functionality -->
<script src="http://blueimp.github.io/JavaScript-Canvas-to-Blob/js/canvas-to-blob.min.js"></script>
<!-- Bootstrap JS is not required, but included for the responsive demo navigation -->
%{--<script src="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>--}%
<!-- blueimp Gallery script -->
<script src="http://blueimp.github.io/Gallery/js/jquery.blueimp-gallery.min.js"></script>
<!-- The Iframe Transport is required for browsers without support for XHR file uploads -->
<script src="../js/jquery.iframe-transport.js"></script>
<!-- The basic File Upload plugin -->
<script src="../js/jquery.fileupload.js"></script>
<!-- The File Upload processing plugin -->
<script src="../js/jquery.fileupload-process.js"></script>
<!-- The File Upload image preview & resize plugin -->
<script src="../js/jquery.fileupload-image.js"></script>
<!-- The File Upload audio preview plugin -->
<script src="../js/jquery.fileupload-audio.js"></script>
<!-- The File Upload video preview plugin -->
<script src="../js/jquery.fileupload-video.js"></script>
<!-- The File Upload validation plugin -->
<script src="../js/jquery.fileupload-validate.js"></script>
<!-- The File Upload Angular JS module -->
<script src="../js/jquery.fileupload-angular.js"></script>
<!-- The main application script -->
<script src="../js/app.js"></script>








%{--
			<div class="${hasErrors(bean: campaignInstance, field: 'attachments', 'error')} ">
				<label for="attachments" class="control-label"><g:message code="campaign.attachments.label" default="Attachments" /></label>
				<div>
					<g:select class="form-control" name="attachments" from="${com.topper.books.adbuilder.Attachement.list()}" multiple="multiple" optionKey="id" size="5" value="${campaignInstance?.attachments*.id}" class="many-to-many"/>
					<span class="help-inline">${hasErrors(bean: campaignInstance, field: 'attachments', 'error')}</span>
				</div>
			</div>--}%









