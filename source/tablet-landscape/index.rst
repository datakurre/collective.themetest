Tablet (landscape)
==================

.. code:: robotframework

   *** Settings ***

   Resource  ../common.robot

   Suite Setup  Run keywords  Suite Setup  Test Setup
   Suite Teardown  Suite Teardown

   *** Variables ***

   @{DIMENSIONS}  992  900

   *** Test Cases ***

.. include:: ../screenshots-all.rst
