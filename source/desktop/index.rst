Desktop
=======

.. code:: robotframework

   *** Settings ***

   Resource  ../common.robot

   Suite Setup  Run keywords  Suite Setup  Test Setup
   Suite Teardown  Suite Teardown

   *** Variables ***

   @{DIMENSIONS}  1200  900

   *** Test Cases ***

.. include:: ../screenshots-all.rst
