Control panel
-------------


.. figure:: _screenshots/controlpanel-overview.png
.. figure:: _screenshots/types-controlpanel.png
.. figure:: _screenshots/skins-controlpanel.png
.. figure:: _screenshots/editing-controlpanel.png
.. figure:: _screenshots/filter-controlpanel.png
.. figure:: _screenshots/imaging-controlpanel.png
.. figure:: _screenshots/calendar-controlpanel.png
.. figure:: _screenshots/navigation-controlpanel.png
.. figure:: _screenshots/rules-controlpanel.png
.. figure:: _screenshots/security-controlpanel.png
.. figure:: _screenshots/language-controlpanel.png
.. figure:: _screenshots/search-controlpanel.png
.. figure:: _screenshots/markup-controlpanel.png
.. figure:: _screenshots/tinymce-controlpanel.png
.. figure:: _screenshots/maintenance-controlpanel.png
.. figure:: _screenshots/site-controlpanel.png
.. figure:: _screenshots/mail-controlpanel.png
.. figure:: _screenshots/syndication-controlpanel.png
.. figure:: _screenshots/discussion-controlpanel.png
.. figure:: _screenshots/add-ons-controlpanel.png
.. figure:: _screenshots/error-logs-controlpanel.png
.. figure:: _screenshots/registry-controlpanel.png
.. figure:: _screenshots/usergroup-controlpanel.png
.. figure:: _screenshots/usergroup-userprefs.png
.. figure:: _screenshots/usergroup-groupprefs.png
.. figure:: _screenshots/member-registration.png
.. code:: robotframework

   Capture Control Panel Screenshots
       Enable autologin as  Manager

       Go To  ${PLONE_URL}/@@overview-controlpanel
       Capture page screenshot  _screenshots/controlpanel-overview.png

       Go To  ${PLONE_URL}/@@types-controlpanel
       Capture page screenshot  _screenshots/types-controlpanel.png

       Go To  ${PLONE_URL}/@@skins-controlpanel
       Capture page screenshot  _screenshots/skins-controlpanel.png

       Go To  ${PLONE_URL}/@@editing-controlpanel
       Capture page screenshot  _screenshots/editing-controlpanel.png

       Go To  ${PLONE_URL}/@@filter-controlpanel
       Capture page screenshot  _screenshots/filter-controlpanel.png

       Go To  ${PLONE_URL}/@@imaging-controlpanel
       Capture page screenshot  _screenshots/imaging-controlpanel.png

       Go To  ${PLONE_URL}/@@calendar-controlpanel
       Capture page screenshot  _screenshots/calendar-controlpanel.png

       Go To  ${PLONE_URL}/@@navigation-controlpanel
       Capture page screenshot  _screenshots/navigation-controlpanel.png

       Go To  ${PLONE_URL}/@@rules-controlpanel
       Capture page screenshot  _screenshots/rules-controlpanel.png

       Go To  ${PLONE_URL}/@@security-controlpanel
       Capture page screenshot  _screenshots/security-controlpanel.png

       Go To  ${PLONE_URL}/@@language-controlpanel
       Capture page screenshot  _screenshots/language-controlpanel.png

       Go To  ${PLONE_URL}/@@search-controlpanel
       Capture page screenshot  _screenshots/search-controlpanel.png

       Go To  ${PLONE_URL}/@@markup-controlpanel
       Capture page screenshot  _screenshots/markup-controlpanel.png

       Go To  ${PLONE_URL}/portal_tinymce/@@tinymce-controlpanel
       Capture page screenshot  _screenshots/tinymce-controlpanel.png

       Go To  ${PLONE_URL}/@@maintenance-controlpanel
       Capture page screenshot  _screenshots/maintenance-controlpanel.png

       Go To  ${PLONE_URL}/@@site-controlpanel
       Capture page screenshot  _screenshots/site-controlpanel.png

       Go To  ${PLONE_URL}/@@mail-controlpanel
       Capture page screenshot  _screenshots/mail-controlpanel.png

       Go To  ${PLONE_URL}/@@syndication-settings
       Capture page screenshot  _screenshots/syndication-controlpanel.png

       Go To  ${PLONE_URL}/@@discussion-settings
       Capture page screenshot  _screenshots/discussion-controlpanel.png

       Go To  ${PLONE_URL}/prefs_install_products_form
       Capture page screenshot  _screenshots/add-ons-controlpanel.png

       Go To  ${PLONE_URL}/prefs_error_log_form
       Capture page screenshot  _screenshots/error-logs-controlpanel.png

       Go To  ${PLONE_URL}/portal_registry
       Capture page screenshot  _screenshots/registry-controlpanel.png

       Go To  ${PLONE_URL}/@@usergroup-controlpanel
       Capture page screenshot  _screenshots/usergroup-controlpanel.png

       Go To  ${PLONE_URL}/usergroup-userprefs
       Capture page screenshot  _screenshots/usergroup-userprefs.png

       Go To  ${PLONE_URL}/usergroup-groupprefs
       Capture page screenshot  _screenshots/usergroup-groupprefs.png

       Go To  ${PLONE_URL}/member-registration
       Capture page screenshot  _screenshots/member-registration.png

       Disable autologin
