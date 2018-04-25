<div id="jsquickmessage" style="display:none;"></div>
<% IF errortxt <> "" THEN %>
<script type="text/javascript"> $(function () { $('div.alert').delay(1800).fadeOut(); });</script>
<div class="alert alert-block alert-@genericMessage.MessageType.ToString() fade in out">
    <a href="#" data-dismiss="alert" class="close">&times;</a>
    <%= errortxt %>
</div>
<% END IF %>
        
