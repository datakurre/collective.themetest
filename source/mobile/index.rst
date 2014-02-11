Mobile (480x)
=============

.. code:: robotframework

   *** Settings ***

   Resource  ../common.robot

   Suite Setup  Run keywords  Suite Setup  Test Setup
   Suite Teardown  Suite Teardown

   *** Variables ***

   @{DIMENSIONS}  480  900

   *** Test Cases ***

.. include:: ../screenshots-overview.rst
.. include:: ../screenshots-login.rst
.. include:: ../screenshots-content.rst
.. include:: ../screenshots-controlpanel.rst
