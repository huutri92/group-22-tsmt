/**
 * @license Copyright (c) 2003-2014, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.html or http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	config.language = 'vi';
	config.uiColor = '#AADC6E';
	config.removePlugins = 'elementspath';
	config.toolbar = 'Custom';

	config.toolbar_Custom = [
        ['Source'],
        ['Maximize'],
        ['PasteText', 'PasteFromWord'],
        ['Styles', 'Format'],
        ['Bold', 'Italic', 'Underline', 'Strike', '-', 'Subscript', 'Superscript'],
        ['NumberedList', 'BulletedList', '-', 'Outdent', 'Indent'],
        ['JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyFull'],
        ['SpecialChar'],
        '/',
        ['Undo', 'Redo'],
        ['Font', 'FontSize'],
        ['TextColor', 'BGColor'],
        ['Link', 'Unlink', 'Anchor'],
        ['Image', 'Table', 'HorizontalRule']
	];
	CKEDITOR.on('dialogDefinition', function (ev) {
	    // Take the dialog window name and its definition from the event data.
	    var dialogName = ev.data.name;
	    var dialogDefinition = ev.data.definition;

	    if (dialogName == 'image') {
	        dialogDefinition.removeContents('Link');
	        dialogDefinition.removeContents('advanced');
	        dialogDefinition.onShow = function () {
	            // This code will open the Advanced tab.
	            this.selectPage('Upload');
	        };
	    }
	});
};
