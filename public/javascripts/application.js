// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
function remove_highlight(elem)
{

    jQuery(elem).parent().parent().find('a').each(function(){

        jQuery(this).removeClass('highlight');
    })
    
}