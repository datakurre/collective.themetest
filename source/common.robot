*** Settings ***

Resource  plone/app/robotframework/server.robot
Resource  plone/app/robotframework/keywords.robot
Resource  Selenium2Screenshots/keywords.robot

Variables  plone/app/testing/interfaces.py

*** Variables ***

${DUMMY_TEXT_LINE} =  Colorless green ideas sleep furiously
${DUMMY_TEXT_SHORT} =  Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.
${DUMMY_TEXT} =  <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>\n<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>\n<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>\n<p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p>

${FIXTURE}  plone.app.robotframework.PLONE_ROBOT_TESTING
@{DIMENSIONS}  640  1024

*** Keywords ***

Suite Setup
   Setup Plone site  ${FIXTURE}
   Set window size  @{DIMENSIONS}

Test Setup
   Import library  Remote  ${PLONE_URL}/RobotRemote
   Set default language
   Enable autologin as  Manager
   ${user_id} =  Translate  user_id
   ...  default=jane-doe
   ${user_fullname} =  Translate  user_fullname
   ...  default=Jane Doe
   Create user  ${user_id}  Member  fullname=${user_fullname}
   Set suite variable  ${USER_ID}  ${user_id}
   Disable autologin

Test Teardown
   Set Zope layer  ${FIXTURE}
   ZODB TearDown
   ZODB SetUp

Suite Teardown
   Teardown Plone Site

Input RichText
  [Arguments]  ${input}
  Select frame  id=text_ifr
  Input text  id=content  ${input}
  Unselect Frame
