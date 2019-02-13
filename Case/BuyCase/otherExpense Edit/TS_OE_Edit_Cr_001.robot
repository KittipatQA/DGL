*** Settings ***
Library              SeleniumLibrary
Library              BuiltIn
Library              String
Resource             /Users/USER1/.jenkins/workspace/DGL/Resource/dglforsme.resource
Resource             ${Path_Environment}/Page/home_page.resource
Resource             ${Path_Environment}/Page/oe_page_add.resource
Resource             ${Path_Environment}/Page/oe_page_edit.resource
Resource             ${Path_Environment}/Page/login_page.resource   
Resource             ${Path_Environment}/Logic/TS_OE_Edit_Cr_1.resource
Resource             ${Path_Environment}/Resource/keywords.resource
Suite Setup          Open the web page
Test Setup           Go to login page
Test Template        Oe Edit Data 1
Suite Teardown       Close Browser

*** Variables ***

*** Keywords ***

*** Tasks ***
2ตรวจสอบการแก้ไขรายการ_กรณี_แก้ไขรหัส_หรือชื่อผู้จัดจำหน่าย_แก้ไขวันที่บิล_แก้ไขกำหนดชำระหนี้_แก้ไขแผนกผู้จัดจำหน่าย_แก้ไขเลขที่ใบกำกับภาษี_แก้ไขวันที่ในใบกำกับภาษี_แก้ไขงวด_แก้ไขคำอธิบาย_โดยมีเงื่อนไขดังนี้_ระบุข้อมูลทุก_Field   tester_2@gmail.com   123123   เพิ่มรายการค่าใช้จ่ายเคสสอง   D001   รวมภาษีมูลค่าเพิ่ม   29/11/2018      21/11/2018   11/61   ค่าใช้จ่ายล่าสุด   ค่าโทรศัพท์   1   6000   500    จ่ายค่าโทรศัพท์   1000   ค้างชำระ
