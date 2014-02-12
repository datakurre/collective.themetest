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

.. include:: ../_overview.rst
.. include:: ../_login.rst
.. include:: ../_content.rst
.. include:: ../_controlpanel.rst
