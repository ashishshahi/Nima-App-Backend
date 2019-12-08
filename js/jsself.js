function valid_member(frm_obj)
{
	if(frm_obj.m_ownership.value=0)
	{
		alert("Please enter your organisation type");
		frm_obj.m_ownership.focus();
		return false;
	}
}