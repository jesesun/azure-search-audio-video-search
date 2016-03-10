$overwrite = $false
$webClient = New-Object System.Net.WebClient 
$feeds =  (("Display_Scaling_What_It_Is_and_What_You_Need_to_Know_About_it_to_Have_Great_Visuals.mp3","http://video.ch9.ms/ch9/624a/dd641ff7-842f-4efc-b1da-783760ad624a/263.mp3"),("More_Engaged_Mobile_App_Users_with_Azure_Mobile_Engagement.mp3","http://video.ch9.ms/ch9/5c79/3025db1a-bce4-4b7a-b11e-f2c8c9475c79/264.mp3"),("Deep_Dive_into_Microsoft_Azure_Service_Fabric_Reliable_Actors.mp3","http://video.ch9.ms/ch9/0609/ae5e142c-9e13-4a7f-80ed-c2f4aff00609/266.mp3"),("Connecting_Your_Devices_to_the_Azure_IoT_Suite.mp3","http://video.ch9.ms/ch9/22b1/0d75b3db-7d94-4c46-8b74-8fb90c7e22b1/267.mp3"),("Azure_Storage_Performance_Scalability_and_Security.mp3","http://video.ch9.ms/ch9/f533/b4e8b0f1-89e4-4f8e-982a-cc2ef00ff533/268.mp3"),("Designing_and_Sizing_a_Global_Scale_Telemetry_Platform_on_Azure_Event_Hubs.mp3","http://video.ch9.ms/ch9/4223/e44140e9-2d1e-44d8-ac6f-f55591624223/269.mp3"),("Be_Even_More_Productive_with_Visual_C_2015_IDE_Tips_and_Tricks_.mp3","http://video.ch9.ms/ch9/9d26/530a5ec3-d3af-4e6a-8573-d0f7e7039d26/270.mp3"),("What_Can_Azure_Do_for_Android_and_iOS_.mp3","http://video.ch9.ms/ch9/b1da/0aa18465-b11b-4152-9cfd-0015dd9bb1da/277.mp3"),("Next_Generation_Hotspots_Windows_10_Hotspot_2_0.mp3","http://video.ch9.ms/ch9/673a/f563a56c-7ef2-4343-b10b-a8612b20673a/280.mp3"),("Building_Faster_More_Capable_Cloud_Powered_Apps_in_Windows_10.mp3","http://video.ch9.ms/ch9/23fe/72a38da2-a875-40c1-a1c2-49083ce423fe/283.mp3"),("Cross_Platform_Localization_with_the_Multilingual_App_Toolkit.mp3","http://video.ch9.ms/ch9/e5f0/cd40b65b-d15b-4443-b2bc-dcf43c9ce5f0/284.mp3"),("Getting_Your_Apps_Connected_with_Networking_APIs.mp3","http://video.ch9.ms/ch9/e964/fe273aa8-a583-4212-8020-9868800de964/286.mp3"),("Localize_Windows_Apps_Using_the_Multilingual_App_Toolkit.mp3","http://video.ch9.ms/ch9/c745/371f0690-373b-4449-873d-e3141e41c745/290.mp3"),("Optimizing_Your_Build_Time_Using_Visual_C_2015.mp3","http://video.ch9.ms/ch9/d862/92b44df2-ddc7-4ad5-85c4-f6e769c3d862/293.mp3"),("Printing_Developing_Apps_That_Print_in_Windows_10.mp3","http://video.ch9.ms/ch9/2572/03a3a0f1-bf02-4697-8f14-74a03ca02572/294.mp3"),("The_Microsoft_Affiliate_Program.mp3","http://video.ch9.ms/ch9/d60f/1750cdf4-6347-4823-a22e-ceebcda5d60f/296.mp3"),("Universal_Commanding_and_Navigation_in_Your_XAML.mp3","http://video.ch9.ms/ch9/c391/5a6927ca-30ce-4396-976f-7ad53083c391/297.mp3"),("Discovering_Windows_10_Devices_Over_Wi_Fi_DNS_SD_API.mp3","http://video.ch9.ms/ch9/0272/bdabc468-c6ee-4261-a099-1e7859740272/379.mp3"),("Building_Apps_for_USB_Accessories.mp3","http://video.ch9.ms/ch9/5f6c/e4802754-e63e-44aa-b6a9-3c9963ef5f6c/381.mp3"),("Building_C_Universal_Apps_with_Visual_Studio_2015.mp3","http://video.ch9.ms/ch9/ecb5/197b2aa0-2392-460c-8cb0-8656dcc5ecb5/382.mp3"),("HTTP_2_in_Windows_10_Browser_Apps_and_Web_Server.mp3","http://video.ch9.ms/ch9/e491/0f373633-dd4b-47ca-8e70-1c035c9fe491/388.mp3"),("Memory_and_CPU_Policy_in_Windows_10.mp3","http://video.ch9.ms/ch9/886f/e340e1b3-2355-4b31-b2b5-51f5863d886f/391.mp3"),("Secure_Access_to_Enterprise_Networks_and_VPN_Platform_Enhancements.mp3","http://video.ch9.ms/ch9/d0b1/ece993a0-27f4-413a-b98a-5af8b23ed0b1/395.mp3"),("Wi_Fi_Direct_and_Wi_Fi_Direct_Services_API.mp3","http://video.ch9.ms/ch9/ee52/7a881ed6-496f-432e-9da6-68ceb025ee52/398.mp3"),("Writing_Visual_Studio_Extensions_Tips_and_Tricks_to_Get_Started.mp3","http://video.ch9.ms/ch9/fa75/39c27ba4-6a28-414b-ada2-98f18565fa75/399.mp3"),("Best_Practices_for_Creating_IoT_Solutions_with_Azure.mp3","http://video.ch9.ms/ch9/d4f0/5cf92bae-b9f8-4ceb-99db-5455f034d4f0/2-611.mp3"),("Building_Accessible_Universal_Windows_Apps.mp3","http://video.ch9.ms/ch9/74b4/d9331fae-a7f6-47a2-ba85-9700480474b4/2-612.mp3"),("_Project_Oxford_Adding_Smart_to_Your_Applications.mp3","http://video.ch9.ms/ch9/b35b/d87e9640-09b5-4aaf-b509-53e5fd05b35b/2-613.mp3"),("A_Lap_Around_NET_2015.mp3","http://video.ch9.ms/ch9/b377/cf4085c4-628a-4362-8caf-25932b8cb377/2-614.mp3"),("DevOps_as_a_Strategy_for_Business_Agility.mp3","http://video.ch9.ms/ch9/0c2a/157c12c6-9845-408a-8b8e-3c112ca90c2a/2-615.mp3"),("Office_Development_Matters_and_Here_s_Why_.mp3","http://video.ch9.ms/ch9/620a/1c8483cb-5799-47c6-9228-8af91305620a/2-616.mp3"),("Introducing_the_Windows_10_App_Model.mp3","http://video.ch9.ms/ch9/3d06/82a0c7c9-4da1-425a-a2ca-5337f7e13d06/2-617.mp3"),("Microsoft_Band_Developing_for_Microsoft_Band_and_Microsoft_Health.mp3","http://video.ch9.ms/ch9/7edb/8df359d6-9f63-484b-8cf5-8d7228937edb/2-619.mp3"),("Windows_Open_Source_Software.mp3","http://video.ch9.ms/ch9/8829/a7a7b71e-7968-47c7-a675-d31685638829/2-621.mp3"),("AllJoyn_Building_Universal_Windows_Apps_that_Discover_Connect_and_Interact_with_Other_Devices_and_.mp3","http://video.ch9.ms/ch9/11c6/1444aa80-a479-47a8-a086-d9e02aff11c6/2-623.mp3"),("Azure_IoT_Security.mp3","http://video.ch9.ms/ch9/1895/c7449ea9-88f3-4878-bf17-666faf601895/2-625.mp3"),("Strategies_for_Developing_Cross_Platform_Applications_with_Visual_Studio_2015.mp3","http://video.ch9.ms/ch9/ca88/df82e529-9c58-4835-abd5-8031cc0eca88/2-627.mp3"),("Azure_App_Service_Architecture.mp3","http://video.ch9.ms/ch9/6f75/17edc3fe-3be7-473b-a553-f679ce3b6f75/2-628.mp3"),("What_s_New_in_XAML_for_Universal_Windows_Apps.mp3","http://video.ch9.ms/ch9/78ef/30f54510-4dcd-4239-89c5-efe7363678ef/2-629.mp3"),("Introducing_Win2D_DirectX_Powered_Drawing_in_C_.mp3","http://video.ch9.ms/ch9/119f/e83d79f4-0724-4cda-8b2c-5cb21727119f/2-631.mp3"),("Office_365_and_Azure_A_Developer_s_Guide_for_Maximizing_the_Cloud.mp3","http://video.ch9.ms/ch9/f2b7/3eedafdf-2178-4f1e-b85c-b39175a5f2b7/2-632.mp3"),("Running_Web_and_Mobile_Apps_on_Azure_App_Service.mp3","http://video.ch9.ms/ch9/8678/cedd1f11-5364-4451-a299-e52ca86d8678/2-633.mp3"),("Game_Developers_Get_the_Most_Out_of_Windows_10.mp3","http://video.ch9.ms/ch9/5ee9/ce649fe4-6d3e-46ca-8ffc-b715f8335ee9/2-637.mp3"),("Microsoft_Passport_and_Windows_Hello_Moving_Beyond_Passwords_and_Credential_Theft.mp3","http://video.ch9.ms/ch9/e6a5/b47fc7ac-5134-43b6-9924-3698bb77e6a5/2-639.mp3"),("Microsoft_Azure_Service_Fabric_Architecture.mp3","http://video.ch9.ms/ch9/fefe/33694a7d-df3b-492d-b60d-90fabcabfefe/2-640.mp3"),("Surviving_Success_Architecting_Web_Sites_and_Services_for_Rapid_Growth.mp3","http://video.ch9.ms/ch9/b7e0/ed560ac6-a70b-466c-a5b0-af8c85b4b7e0/2-642.mp3"),("Visualizing_Business_Data_on_any_Device_with_Bing_Maps.mp3","http://video.ch9.ms/ch9/57de/c2142982-94a8-4948-932d-441f9d5d57de/2-645.mp3"),("Introduction_and_What_s_New_in_Azure_IaaS.mp3","http://video.ch9.ms/ch9/67e2/ff513153-1d3d-4085-a581-5638c96d67e2/2-646.mp3"),("Building_Network_Aware_Applications_Using_Azure_Resource_Provider_RP_.mp3","http://video.ch9.ms/ch9/ba5c/26b4a765-1ef4-461a-909f-2c061849ba5c/2-647.mp3"),("Building_Universal_Windows_Games_with_Unity.mp3","http://video.ch9.ms/ch9/ed01/27f5c1a0-e6ef-4aa3-b6a7-dcc2bd20ed01/2-648.mp3"),("Developing_Universal_Windows_Apps_in_Visual_Studio_2015.mp3","http://video.ch9.ms/ch9/ca40/6eed4b60-a09a-48d3-938e-48aa13b9ca40/2-650.mp3"),("Internet_of_Things_Overview.mp3","http://video.ch9.ms/ch9/a558/54596963-3a1f-42fc-9309-c11e3d06a558/2-652.mp3"),("Managing_Azure_Applications_Using_the_New_Azure_Portal.mp3","http://video.ch9.ms/ch9/8fa5/c35c5bb1-7800-421f-926b-ac334c138fa5/2-653.mp3"),("Overview_of_Cross_Platform_Mobile_Development_with_Office_365.mp3","http://video.ch9.ms/ch9/ecc5/1be6eff1-bf14-4bb7-b810-b05d5162ecc5/2-655.mp3"),("_Project_Spartan_Introducing_the_New_Browser_and_Web_App_Platform_for_Windows_10.mp3","http://video.ch9.ms/ch9/5e38/955ea6d9-678e-41e5-8fe9-4a98c6a65e38/2-656.mp3"),("Design_UX_Patterns_and_Responsive_Techniques_for_Universal_Windows_Apps.mp3","http://video.ch9.ms/ch9/b392/266022f1-20f1-4ac0-88f7-041241e4b392/2-658.mp3"),("Surface_Hub_Building_Windows_Universal_Apps_for_Surface_Hub_and_the_Large_Screen.mp3","http://video.ch9.ms/ch9/904e/316bf909-2de4-4697-bcb1-78f92527904e/2-660.mp3"),("Hosted_Web_Apps_and_Web_Platform_Innovations.mp3","http://video.ch9.ms/ch9/eb2d/a4b586ee-4cd1-4a6a-947b-e8443d9deb2d/2-665.mp3"),("Lessons_From_Scale_Building_Applications_for_Azure.mp3","http://video.ch9.ms/ch9/62b5/8f8e65a7-31ea-459e-b0dc-9978efa962b5/2-667.mp3"),("Maximize_Your_Coding_Productivity_for_Apps_Devices_and_Services_with_Visual_Studio_2015.mp3","http://video.ch9.ms/ch9/1273/2f7c85ce-b049-40fc-8162-0cb8228e1273/2-669.mp3"),("Building_and_Monetizing_Applications_through_Microsoft_Azure_Marketplace.mp3","http://video.ch9.ms/ch9/b99b/9ee27ae9-2905-4d23-9e7d-d14cee84b99b/2-674.mp3"),("Modern_Web_Tooling_in_Visual_Studio_2015.mp3","http://video.ch9.ms/ch9/9de2/639e70d6-420d-479c-ac7f-1c3dc6029de2/2-675.mp3"),("Building_Highly_Scalable_and_Available_SaaS_Applications_with_Azure_SQL_Database.mp3","http://video.ch9.ms/ch9/0c0a/b6b97f8c-9cee-4d91-ac54-796b33500c0a/2-678.mp3"),("Introducing_DirectInk_Learn_How_to_Unlock_New_Opportunities_Using_Ink_in_Your_App.mp3","http://video.ch9.ms/ch9/f599/09d03e7e-2928-441e-97f0-08c4f70cf599/2-681.mp3"),("Thinking_in_Containers_Building_a_Scalable_Next_Gen_Application_with_Docker_on_Azure.mp3","http://video.ch9.ms/ch9/7526/e60ebc3b-8b12-4e49-823c-5b864dff7526/2-683.mp3"),("User_Data_Working_with_Contacts_Appointments_Text_Messages_and_More_on_Windows_10.mp3","http://video.ch9.ms/ch9/aec8/071d0779-6395-4016-a5ad-a53779f5aec8/2-684.mp3"),("What_s_New_for_Azure_Developers_in_Visual_Studio_and_Azure_SDK.mp3","http://video.ch9.ms/ch9/cc91/d06f0dab-e26e-44a2-ae0c-adad534dcc91/2-685.mp3"),("Introducing_ASP_NET_5.mp3","http://video.ch9.ms/ch9/1f1f/aacb9f79-487c-4707-9cbf-f21124711f1f/2-687.mp3"),("Azure_Virtual_Machines_Deep_Dive.mp3","http://video.ch9.ms/ch9/a169/85ad94b3-7daa-4c83-986c-34d0eb74a169/2-688.mp3"),("Building_Data_Analytics_Pipelines_Using_Azure_Data_Factory_HDInsight_Azure_ML_and_More.mp3","http://video.ch9.ms/ch9/c5b2/c5c1defd-bbca-446e-a4f7-c58d1ae1c5b2/2-690.mp3"),("Cortana_Extensibility_in_Universal_Windows_Apps.mp3","http://video.ch9.ms/ch9/06b2/7214189e-ba45-447a-9b6b-c23111c606b2/2-691.mp3"),("Project_Centennial_Converting_your_Classic_Windows_App_Win32_Net_COM_to_a_Universal_Windows_.mp3","http://video.ch9.ms/ch9/47f9/3886bc89-9e6e-4143-9b58-508636b647f9/2-692.mp3"),("Entity_Framework_7_Data_for_Web_Phone_Store_and_Desktop.mp3","http://video.ch9.ms/ch9/a07c/712f351c-b2df-4f2f-9275-69a20e01a07c/2-693.mp3"),("App_Packaging_and_Deployment_for_Universal_Windows_Apps.mp3","http://video.ch9.ms/ch9/fb1e/8d78ee54-23de-4e88-8554-9fb7fafafb1e/2-695.mp3"),("New_XAML_Tools_in_Visual_Studio_2015.mp3","http://video.ch9.ms/ch9/9495/f1a2cfc9-9f92-4be9-84f5-0e1c85649495/2-697.mp3"),("Building_Resilient_Scalable_Services_with_Microsoft_Azure_Service_Fabric.mp3","http://video.ch9.ms/ch9/2dfe/66c5449b-4e3e-46f6-bce0-9875e43f2dfe/2-700.mp3"),("_PROJECT_ASTORIA_Build_Great_Windows_Apps_with_Your_Android_Code.mp3","http://video.ch9.ms/ch9/6ce3/035b22f3-8472-4c0e-96b5-8a5f01c56ce3/2-702.mp3"),("Optimizing_Windows_Apps_for_Continuum.mp3","http://video.ch9.ms/ch9/19ee/2a1fdb79-a010-4246-8eb0-dd49239e19ee/2-703.mp3"),("Windows_Containers_What_Why_and_How.mp3","http://video.ch9.ms/ch9/b8bc/dd51ffce-956a-42e2-903f-32dc7a07b8bc/2-704.mp3"),("Getting_Started_with_Cross_Platform_Mobile_Development_with_Apache_Cordova.mp3","http://video.ch9.ms/ch9/cf44/d7319ec9-f922-4521-b164-2fda28b6cf44/2-706.mp3"),("Logic_Apps.mp3","http://video.ch9.ms/ch9/ad45/4c754c5d-0839-4ca5-b0fe-4f483f3aad45/2-707.mp3"),("Gaining_Real_Time_IoT_Insights_using_Azure_Stream_Analytics_AzureML_and_PowerBI.mp3","http://video.ch9.ms/ch9/9a1f/cb535e82-6894-460f-9f57-57f80a709a1f/2-708.mp3"),("Single_Sign_On_with_Secure_Authentication.mp3","http://video.ch9.ms/ch9/1236/dd4891d0-fe07-4555-aa4a-1066d4171236/2-709.mp3"),("Building_Big_Data_Applications_Using_Azure_HDInsight_Service.mp3","http://video.ch9.ms/ch9/64f9/9a9f6449-1978-41b7-9f78-8529dd9264f9/2-712.mp3"),("Go_Mobile_Login_Sync_Data_and_Connect_to_Enterprise_APIs_with_Azure_App_Service.mp3","http://video.ch9.ms/ch9/8fbd/ec881631-2334-4778-a45b-1ddcd95b8fbd/2-713.mp3"),("Connecting_to_OneNote_in_the_Cloud_with_Office_365_APIs.mp3","http://video.ch9.ms/ch9/b891/10585367-f429-4aa6-9427-8199c013b891/2-715.mp3"),("Deploying_and_Managing_Services_with_Microsoft_Azure_Service_Fabric.mp3","http://video.ch9.ms/ch9/68bc/4b3ee35d-c505-426c-bd0a-a1d73c3c68bc/2-717.mp3"),("Developing_3D_Printing_Apps_and_Services_in_Windows_10.mp3","http://video.ch9.ms/ch9/495b/a64fd7bd-174d-45a6-9c6d-4ce7726f495b/2-718.mp3"),("JavaScript_Frameworks_in_Your_Apps_and_Sites_from_WinJS_and_Beyond.mp3","http://video.ch9.ms/ch9/3bcb/95095f4a-3fdc-40ff-a3be-96af540e3bcb/2-720.mp3"),("Screen_Casting_Develop_Multi_Screen_Universal_Windows_Apps_Using_Casting_Technologies.mp3","http://video.ch9.ms/ch9/cb15/7d903110-8b8f-45e4-8e72-f2caf8d8cb15/2-723.mp3"),("Windows_for_Makers_Raspberry_Pi_2_Arduino_and_More.mp3","http://video.ch9.ms/ch9/debd/54ebcbdf-d688-43fc-97ef-cb83162bdebd/2-724.mp3"),("Deep_Dive_into_ASP_NET_5.mp3","http://video.ch9.ms/ch9/5a4f/ebc14167-162f-4f02-94bc-bfaaba8f5a4f/2-726.mp3"),("Build_with_Bing_Use_Bing_APIs_and_Tools_to_Enrich_Your_Apps_and_Make_Them_More_Discoverable.mp3","http://video.ch9.ms/ch9/7400/bdb15e9e-1b83-44ad-a082-b5923bbf7400/2-727.mp3"),("Build_the_Next_Big_Thing_with_Azure_s_NoSQL_Service_DocumentDB.mp3","http://video.ch9.ms/ch9/07ab/52c73968-bb75-43de-bf8c-69780b4107ab/2-729.mp3"),("Camera_Developing_Powerful_Camera_Apps.mp3","http://video.ch9.ms/ch9/9267/77ddd523-f54c-49ef-97f8-5cbda36d9267/2-730.mp3"),("Deploying_Complex_Open_Source_Workloads_on_Azure.mp3","http://video.ch9.ms/ch9/5eb7/00a3e75b-a1a5-46e1-b6df-32124e8a5eb7/2-732.mp3"),("Acquiring_Users_and_Monetizing_Your_Apps.mp3","http://video.ch9.ms/ch9/7fd9/a673344c-9eaf-4264-8135-d891fb5c7fd9/2-736.mp3"),("Azure_Active_Directory_Identity_Management_as_a_Service_for_Modern_Applications.mp3","http://video.ch9.ms/ch9/daf1/398992dc-9fed-49dc-9912-38ebd079daf1/2-738.mp3"),("Cloud_Authentication_Troubleshooting_and_Recipes_for_Developers.mp3","http://video.ch9.ms/ch9/ad26/10def8e6-a8d8-4fee-8f96-8f92b7ccad26/2-740.mp3"),("Case_Studies_of_HoloLens_App_Development.mp3","http://video.ch9.ms/ch9/89c1/baad5405-2217-4bdf-8566-fe6417b089c1/2-744.mp3"),("Using_Azure_Search_to_Build_Great_Search_Experiences_in_Mobile_and_Web_Apps.mp3","http://video.ch9.ms/ch9/74e6/0a950f00-8369-41d6-add5-5a1703fd74e6/2-745.mp3"),("Vision_APIs_Understanding_Images_in_Your_App.mp3","http://video.ch9.ms/ch9/354e/1f79fc27-b7f0-446f-849b-216547bf354e/2-748.mp3"),("What_s_New_in_Azure_Media_Services_this_Year_Indexer_Player_and_Live_Encoder.mp3","http://video.ch9.ms/ch9/dd0a/bf8fc257-5d84-45dd-9e66-87c9dbabdd0a/2-751.mp3"),("Develop_Modern_Web_Applications_with_Azure_Active_Directory.mp3","http://video.ch9.ms/ch9/d910/78c510f6-df57-4cf6-9dd8-ed94bbffd910/2-753.mp3"),("Nano_Server_A_Cloud_Optimized_Windows_Server_for_Developers.mp3","http://video.ch9.ms/ch9/c0c7/56a5a9f9-71e6-4595-acbe-4529873fc0c7/2-755.mp3"),("Leveraging_Maps_and_Location_Across_Phone_Tablet_and_PC_in_Your_Windows_Apps.mp3","http://video.ch9.ms/ch9/71ec/44cdc5cc-8a09-4002-b3a4-cd3783d771ec/2-757.mp3"),("Making_Money_with_Office_365.mp3","http://video.ch9.ms/ch9/9de9/35161145-3e8c-4eb8-8dec-b91780149de9/2-758.mp3"),("Azure_API_Apps_for_Web_Mobile_and_Logic_Apps.mp3","http://video.ch9.ms/ch9/5477/6598f9c3-f93c-4a1e-aaa2-c2722db95477/2-760.mp3"),("Tiles_Notifications_and_Action_Center.mp3","http://video.ch9.ms/ch9/9be4/970c81c1-3699-4525-b0f3-0b45e2349be4/2-762.mp3"),("What_s_New_in_JavaScript_for_Fast_and_Scalable_Apps.mp3","http://video.ch9.ms/ch9/c084/1847888e-d35c-43ce-96a9-07a94819c084/2-763.mp3"),("When_Bad_Things_Happen_to_Good_Apps_Troubleshooting_Applications_on_Azure_App_Service.mp3","http://video.ch9.ms/ch9/b607/498189d4-07bd-43b8-a8ce-0fa1c321b607/2-764.mp3"),("Azure_Media_Services_Developer_Deep_Dive.mp3","http://video.ch9.ms/ch9/2c46/6e738b76-7ede-4a41-86fd-7b7c09642c46/2-766.mp3"),("Designing_and_Developing_the_Ultimate_Windows_App_Experience.mp3","http://video.ch9.ms/ch9/df36/e76e6f63-0d2d-45b2-bd13-369a41d4df36/2-768.mp3"),("Develop_Modern_Native_Applications_with_Azure_Active_Directory.mp3","http://video.ch9.ms/ch9/91a3/b17cdb54-c171-4325-b499-2b43769d91a3/2-769.mp3"),("Money_Fame_and_Flexibility_New_Extensibility_for_Visual_Studio_and_Visual_Studio_Online.mp3","http://video.ch9.ms/ch9/3304/2464f9cc-9487-4844-ac1e-73a25db03304/2-772.mp3"),("Azure_Storage_for_Developers_Overview_and_New_Capabilities.mp3","http://video.ch9.ms/ch9/8467/15d1a301-82a8-4955-a813-6fb574fc8467/2-774.mp3"),("XAML_Case_Study_Putting_it_All_Together_Office_and_XAML.mp3","http://video.ch9.ms/ch9/1b34/9a3c3d5f-8886-4053-80c7-94237e8f1b34/2-776.mp3"),("Windows_Design_for_Developers_An_Executive_Panel.mp3","http://video.ch9.ms/ch9/84c2/5dd7b624-2595-49e8-81cb-fc533d8a84c2/2-778.mp3"),("Deep_Dive_into_XAML_and_NET_Universal_Windows_App_Development.mp3","http://video.ch9.ms/ch9/c64a/60fdb815-c0fd-4a22-a3ba-d8ef58d4c64a/2-790.mp3"),("The_Next_Generation_of_Azure_Compute_Platform_with_Mark_Russinovich.mp3","http://video.ch9.ms/ch9/cc8b/7dc3b796-c961-4c0d-9db9-41d36535cc8b/3-618.mp3"),("Harnessing_the_Full_Power_of_Input_in_Universal_Windows_Apps.mp3","http://video.ch9.ms/ch9/0f31/e709dde1-d529-4cd8-89f5-71f843080f31/3-622.mp3"),("App_Lifecycle_From_Activation_and_Suspension_to_Background_Execution_and_Multitasking_in_Universal_.mp3","http://video.ch9.ms/ch9/35a4/d229db1a-2bc7-4503-8940-7b198dc135a4/3-626.mp3"),("A_Studio_in_the_Palm_of_Your_Hand_Developing_Audio_and_Video_Creation_Apps_for_Windows_10.mp3","http://video.ch9.ms/ch9/7875/cce63d56-976e-4733-9d82-9f40cd837875/3-634.mp3"),("Data_Binding_Boost_Your_Apps_Performance_Through_New_Enhancements_to_XAML_Data_Binding.mp3","http://video.ch9.ms/ch9/c24e/86a1480c-269d-4e34-8e0c-2889557ec24e/3-635.mp3"),("What_s_New_in_F12_for_Project_Spartan_.mp3","http://video.ch9.ms/ch9/ec71/a3222387-613b-4336-bfcc-bf23e521ec71/3-638.mp3"),("The_Skype_Developer_Platform_and_Skype_Web_Developer_Capabilities.mp3","http://video.ch9.ms/ch9/7265/079f1894-ece1-46b2-a829-942639677265/3-643.mp3"),("Cross_Platform_Continuous_Delivery_with_Release_Management_to_Embrace_DevOps.mp3","http://video.ch9.ms/ch9/ea56/6eec5c95-2056-4a98-8cb7-ac495aadea56/3-649.mp3"),("Extending_Custom_Solutions_with_Excel_PowerPoint_and_Word_Add_ins.mp3","http://video.ch9.ms/ch9/7582/b80d7a2e-7e2e-4ff7-abaa-bf1a99687582/3-651.mp3"),("Managing_Mobile_Devices_and_Applications_in_an_Enterprise.mp3","http://video.ch9.ms/ch9/8848/d040a928-9866-4a48-862d-3a93e89a8848/3-654.mp3"),("Python_and_Node_js_Microsoft_s_Best_Kept_Secrets.mp3","http://video.ch9.ms/ch9/de23/79419f71-f3b4-48c2-b198-3d3f80d7de23/3-657.mp3"),("What_s_New_for_Build_Automation_in_Team_Foundation_Server_and_Visual_Studio_Online.mp3","http://video.ch9.ms/ch9/2713/9de00127-1f27-4981-8acb-3027236a2713/3-671.mp3"),("Debugger_Tips_and_Tricks_for_NET_Developers_with_Visual_Studio_2015.mp3","http://video.ch9.ms/ch9/7f97/6f0082dd-91d0-488d-96e5-b6df327c7f97/3-677.mp3"),("Building_a_Single_Page_App_Using_Angular_and_TypeScript_Using_Office_365_APIs.mp3","http://video.ch9.ms/ch9/10d4/2ddcdaf9-f473-4a0e-8aeb-cea20a0310d4/3-689.mp3"),("What_s_New_in_C_6_and_Visual_Basic_14.mp3","http://video.ch9.ms/ch9/233c/15485219-26ac-4042-997d-9643ec25233c/3-711.mp3"),("Building_Cross_Platform_Mobile_Apps_in_C_with_Visual_Studio_2015.mp3","http://video.ch9.ms/ch9/5635/739c5975-5818-4a1a-b38b-0feb62725635/3-714.mp3"),("Fast_and_Powerful_Diagnostics_and_Problem_Solving_with_Application_Insights.mp3","http://video.ch9.ms/ch9/6325/93e2b273-bcc8-45cb-a77f-37d9928a6325/3-719.mp3"),("_NET_Compiler_Platform_Roslyn_Analyzers_and_the_Rise_of_Code_Aware_Libraries.mp3","http://video.ch9.ms/ch9/d18b/c701e573-0914-49f6-961a-ed965f9cd18b/3-725.mp3"),("Building_Compelling_Bluetooth_Apps_in_Windows_10.mp3","http://video.ch9.ms/ch9/3a28/bb9142cd-a2b3-4af0-b5ac-e5eca9463a28/3-739.mp3"),("Tried_and_True_Practices_for_Transforming_SharePoint_Solutions_to_Cloud_Ready_Solutions.mp3","http://video.ch9.ms/ch9/5d76/33f05e24-054b-4adc-90e0-fb649eda5d76/3-743.mp3"),("Developing_Audio_and_Video_Apps.mp3","http://video.ch9.ms/ch9/d29e/8f31b72a-d77e-456a-abe9-5ab9d4b0d29e/3-747.mp3"),("Building_Consumer_and_Enterprise_Device_Solutions_with_Windows_10_IoT.mp3","http://video.ch9.ms/ch9/a7f2/c69120e7-97e1-4449-b592-035be0b3a7f2/3-752.mp3"),("Getting_Great_Performance_Out_of_Cordova_Apps.mp3","http://video.ch9.ms/ch9/08a2/1281eb73-7c34-4df3-877d-fae74f7c08a2/3-756.mp3"),("On_the_Shoulders_of_Giants_Building_Apps_that_Consume_Modern_SaaS_Endpoints_with_Visual_Studio_2015.mp3","http://video.ch9.ms/ch9/d88e/8417caf8-f029-4fed-838c-0d59155dd88e/3-759.mp3"),("Monetize_and_Promote_Your_Universal_Windows_App_with_Ads.mp3","http://video.ch9.ms/ch9/f65c/62bce662-912a-437b-a18a-9a4babf9f65c/3-761.mp3"),("App_to_App_Communication_Building_a_Web_of_Apps.mp3","http://video.ch9.ms/ch9/260a/eb7b4d60-8d88-4f7e-a6e8-8deaf5fa260a/3-765.mp3"),("Go_Mobile_with_C_Visual_Studio_and_Xamarin.mp3","http://video.ch9.ms/ch9/03b5/06f67bd2-8170-4f35-a74d-e94b53cb03b5/3-770.mp3"),("Historical_Debugging_with_IntelliTrace_in_Visual_Studio_2015.mp3","http://video.ch9.ms/ch9/f96a/973b9b93-b2da-4cb3-8784-c229e5fef96a/3-771.mp3"),("Get_Your_Hands_Dirty_with_the_Office_365_APIs_Authentication_and_SDKs.mp3","http://video.ch9.ms/ch9/5499/01da7c2b-8c96-4fc0-b47c-4890af515499/4-630.mp3"),("Diagnosing_Issues_with_Cloud_Applications_Hosted_in_Azure_IaaS_and_PaaS_Using_Visual_Studio.mp3","http://video.ch9.ms/ch9/809a/a2e3c18a-6f9f-42e1-951c-7c0ac73b809a/4-754.mp3"),("Day_One_Keynote_Presentation.mp3","http://video.ch9.ms/ch9/aea3/bf8d2647-ec8c-4f0d-b214-c9ca6a48aea3/KEY01.mp3"),("Chatting_with_Snover.mp3","http://video.ch9.ms/ch9/5b3f/d00c899b-b996-45f3-afb2-1ef7b6555b3f/c9liveC901ChattingwithSnover.mp3"),("All_Things_Azure.mp3","http://video.ch9.ms/ch9/2647/efb7db82-5cc1-45bd-89d8-3e663d6c2647/c9liveC903AllThingsAzure.mp3"),("Universal_Windows_Platform.mp3","http://video.ch9.ms/ch9/98d3/b690dc59-4ca6-4b91-a9a5-46f8c55998d3/c9livec904UniversalWinPlatform.mp3"),("Meet_the_Visual_Studio_Code_team.mp3","http://video.ch9.ms/ch9/4792/6eca7d84-1787-4a0a-9f6c-ebb5e2124792/c9liveC905MeetVSCodeTeam.mp3"),("C_6_VB14_and_all_Things_Roslyn.mp3","http://video.ch9.ms/ch9/08f6/723225a4-5b71-4b44-a5ef-3263f18608f6/c9livec906andAllThingsRoslyn.mp3"),("The_Windows_10_Story.mp3","http://video.ch9.ms/ch9/e3f3/851273fd-8b06-41eb-8474-3de6c9ebe3f3/c9livec907Win10Story.mp3"),("Developing_for_HoloLens.mp3","http://video.ch9.ms/ch9/a9c4/ef8d8a24-a172-41a5-902d-486bed51a9c4/c9livec908HoloLens.mp3"),("Windows_10_Platform.mp3","http://video.ch9.ms/ch9/223c/8906d669-0e8a-4c45-915c-1cdd2c26223c/c9livec909Win10Platform.mp3"),("Internet_of_Things_Show_Live.mp3","http://video.ch9.ms/ch9/de9f/8f3b98b8-0570-49ae-8319-89658b6ade9f/c9livec910IoTShowLive.mp3"),("Ask_Anders_Anything.mp3","http://video.ch9.ms/ch9/cc8a/de84da6c-7799-49eb-9d7f-83d739a4cc8a/C9liveC911AskAndersAnything.mp3"),("Innovation_in_C_Code_Generation.mp3","http://video.ch9.ms/ch9/72a3/a3d78d4b-003c-4d6c-be4b-64edd09272a3/c9livec912CPPCodeGeneration.mp3"),("Microsoft_Edge.mp3","http://video.ch9.ms/ch9/ec4e/3ea91e3a-16b2-4134-9984-021e751aec4e/c9livec913MicrosoftEdge.mp3"),("Developing_for_Windows_10.mp3","http://video.ch9.ms/ch9/5b68/ed163716-d33b-47c8-8d7d-7632e9585b68/c9livec914DevelopingforWin10.mp3"),("_NET_Open_Source_Initiative.mp3","http://video.ch9.ms/ch9/0cf2/e0282a2a-d633-4457-9200-df4ea06d0cf2/C9Livec915NETOpenSource.mp3"),("The_Lesser_Scotts.mp3","http://video.ch9.ms/ch9/82fd/58f34c4f-0294-4b1c-bc2c-9455176182fd/C9LiveC916.mp3"),("Ask_Us_Anything_About_Visual_Studio_IDE.mp3","http://video.ch9.ms/ch9/c383/13b183ed-240e-4e19-a266-0db56d3dc383/c9livec917AskAnythingVSIDE.mp3"),("Closing_Ceremony.mp3","http://video.ch9.ms/ch9/5008/af61a756-332e-42a4-a27e-d2226da25008/C9liveClosingCeremony.mp3"),("XAML.mp3","http://video.ch9.ms/ch9/fab9/e6b0f1c3-a04f-4252-ad20-a29c6cc3fab9/c9liveC905AXAML.mp3"),("New_Tools_from_Microsoft_Advertising_to_Help_App_Developers_Grow_Audience_and_Revenue.mp3","http://video.ch9.ms/ch9/6924/3423d9c0-0e4b-49c8-b4e0-fef205e16924/259.mp3"),("Hacking_Augmented_Reality_with_Kinect.mp3","http://video.ch9.ms/ch9/7038/8362e57e-3604-4ff6-b1dc-0ab849ad7038/387.mp3"),("Modern_Web_Tooling.mp3","http://video.ch9.ms/ch9/83b2/97d40a91-32ec-4795-9f5e-aa43b83383b2/C919ModernWebTooling.mp3"),("Movie_Creator_and_Video_Turner.mp3","http://video.ch9.ms/ch9/08b9/0904c864-c42e-4918-8c22-b3a11ab808b9/C920MovieCreatorandVideoTurner.mp3"),("Azure_Resource_Manager.mp3","http://video.ch9.ms/ch9/e56e/ca23c3ac-d77e-4152-8185-2707abaae56e/C921AzureResourceManager.mp3"),("Outside_of_the_Box.mp3","http://video.ch9.ms/ch9/bb84/2e5f0e84-b186-45db-ac5b-4ff9d250bb84/C922OutsideoftheBox.mp3"),("Abiola_from_Gamsole.mp3","http://video.ch9.ms/ch9/3977/f6727831-b2f6-46b8-8317-c1495da13977/C923AbiolafromGamsole.mp3"),("Young_Coders.mp3","http://video.ch9.ms/ch9/f32b/2389d2bb-cd47-4097-9cda-f443bcfff32b/c9livec924.mp3"),("Office_365_What_s_New.mp3","http://video.ch9.ms/ch9/59c5/8a8ef4fd-dd18-4a4a-b757-014d743059c5/C925Office365WhatsNew.mp3"))  
$entries = $feeds.Length
$progress = 0 
$pagepercent = 0 
$dir = get-location
foreach ($item in $feeds){
    $name,$link = $item
    $saveFileName = join-path $dir $name
    if ((-not $overwrite) -and (Test-Path -path $saveFileName))     
    {        
        write-progress -activity "$saveFileName already downloaded" -status "$pagepercent% ($progress / $entries) complete" -percentcomplete $pagepercent    
    }    
    else     
    {        
        write-progress -activity "Downloading $saveFileName" -status "$pagepercent% ($progress / $entries) complete" -percentcomplete $pagepercent       
        &{#TRY
            $webClient.DownloadFile($link, $saveFileName)
        }
        trap [Exception]{
            write-host
            write-host ("Unable to download " + $saveFileName)
            continue; 
        }
    }    
    $pagepercent = [Math]::floor((++$progress)/$entries*100) 
}