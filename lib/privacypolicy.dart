// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  static String id = ("PrivacyPolicy");

  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 100,
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: Text(
          "Privacy Policy",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 25,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text("Privacy Policy", style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20,
              ), ),
              SizedBox(height: 10),
              Text("Last updated: February 22, 2022"),
              SizedBox(height: 10),
              Text("  This Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your information when You use the Service and tells You about Your privacy rights and how the law protects You."),
              SizedBox(height: 10),
              Text("  We use Your Personal data to provide and improve the Service. By using the Service, You agree to the collection and use of information in accordance with this Privacy Policy. This Privacy Policy has been created with the help of the Privacy Policy Template."),
              SizedBox(height: 15),
              Text("Interpretation and Definitions", style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 21,
              ), ),
              SizedBox(height: 12),
              Text("Types of Data Collected", style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 17,
              ), ),
              SizedBox(height: 10),
              Text("Personal Data", style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 15,
              ), ),
              SizedBox(height: 10),
              Text("While using Our Service, We may ask You to provide Us with certain personally identifiable information that can be used to contact or identify You. Personally identifiable information may include, but is not limited to:"),
              SizedBox(height: 10),
              Text("       First name, middle name and last name"),
              SizedBox(height: 10),
              Text("       Date of Birth"),
              SizedBox(height: 10),
              Text("       Address, State, Province, ZIP/Postal code, City"),
              SizedBox(height: 10),
              Text("        Phone number"),
              SizedBox(height: 10),
              Text("        Email address"),
              SizedBox(height: 10),
              Text("        Usage Data"),
              SizedBox(height: 10),
              Text("Usage Data", style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 15,
              ), ),
              SizedBox(height: 10),
              Text("Usage Data is collected automatically when using the Service."),
              SizedBox(height: 10),
              Text("Usage Data may include information such as Your Device's Internet Protocol address (e.g. IP address), browser type, browser version, the pages of our Service that You visit, the time and date of Your visit, the time spent on those pages, unique device identifiers and other diagnostic data."),
              SizedBox(height: 10),
              Text("When You access the Service by or through a mobile device, We may collect certain information automatically, including, but not limited to, the type of mobile device You use, Your mobile device unique ID, the IP address of Your mobile device, Your mobile operating system, the type of mobile Internet browser You use, unique device identifiers and other diagnostic data."),
              SizedBox(height: 10),
              Text("We may also collect information that Your browser sends whenever You visit our Service or when You access the Service by or through a mobile device."),
              SizedBox(height: 10),
              Text("Information Collected while Using the Application", style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 15,
              ), ),
              SizedBox(height: 10),
              Text("While using Our Application, in order to provide features of Our Application, We may collect, with Your prior permission:"),
              SizedBox(height: 10),
              Text("•	Pictures and other information from your Device's camera and photo library"),
              SizedBox(height: 10),
              Text("We use this information to provide features of Our Service, to improve and customize Our Service. The information may be uploaded to the Company's servers and/or a Service Provider's server or it may be simply stored on Your device."),
              SizedBox(height: 10),
              Text("You can enable or disable access to this information at any time, through Your Device settings."),
              SizedBox(height: 10),
              Text("Use of Your Personal Data ", style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 17,
              ), ),
              SizedBox(height: 10),
              Text("The Company may use Personal Data for the following purposes:"),
              SizedBox(height: 10),
              Text("          To provide and maintain our Service, including to monitor the usage of our Service."),
              SizedBox(height: 10),
              Text("To manage your Account: to manage your registration as a user of the Service. The Personal Data you provide can give you access to different functionalities of the Service that are available to you as a registered user."),
              SizedBox(height: 10),
              Text("For the performance of a contract: the development, compliance and undertaking of the purchase contract for the products, items or services you have purchased or of any other contract with Us through the Service."),
              SizedBox(height: 10),
              Text("To contact You: To contact You by email, telephone calls, SMS, or other equivalent forms of electronic communication, such as a mobile application's push notifications regarding updates or informative communications related to the functionalities, products or contracted services, including the security updates, when necessary or reasonable for their implementation."),
              SizedBox(height: 10),
              Text("To provide You with news, special offers and general information about other goods, services and events which we offer that are similar to those that you have already purchased or enquired about unless You have opted not to receive such information."),
              SizedBox(height: 10),
              Text("To manage Your requests: To attend and manage Your requests to Us."),
              SizedBox(height: 10),
              Text("For business transfers: We may use Your information to evaluate or conduct a merger, divestiture, restructuring, reorganization, dissolution, or other sale or transfer of some or all of Our assets, whether as a going concern or as part of bankruptcy, liquidation, or similar proceeding, in which Personal Data held by Us about our Service users is among the assets transferred."),
              SizedBox(height: 10),
              Text("For other purposes: We may use Your information for other purposes, such as data analysis, identifying usage trends, determining the effectiveness of our promotional campaigns and to evaluate and improve our Service, products, services, marketing and your experience."),
              SizedBox(height: 10),
              Text("         We may share your personal information in the following situations:"),
              SizedBox(height: 10),
              Text("•	With Service Providers: We may share your personal information with Service Providers to monitor and analyze the use of our Service, to contact You."),
              SizedBox(height: 10),
              Text("•	For business transfers: We may share or transfer Your personal information in connection with, or during negotiations of, any merger, sale of Company assets, financing, or acquisition of all or a portion of Our business to another company."),
              SizedBox(height: 10),
              Text("•	With Affiliates: We may share Your information with Our affiliates, in which case we will require those affiliates to honor this Privacy Policy. Affiliates include Our parent company and any other subsidiaries, joint venture partners or other companies that We control or that are under common control with Us."),
              SizedBox(height: 10),
              Text("•	With business partners: We may share Your information with Our business partners to offer You certain products, services or promotions."),
              SizedBox(height: 10),
              Text("•	With other users: when You share personal information or otherwise interact in the public areas with other users, such information may be viewed by all users and may be publicly distributed outside."),
              SizedBox(height: 10),
              Text("•	With Your consent: We may disclose Your personal information for any other purpose with Your consent."),
              SizedBox(height: 10),
              Text("Retention of Your Personal Data ", style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 17,
              ), ),
              SizedBox(height: 10),
              Text("The Company will retain Your Personal Data only for as long as is necessary for the purposes set out in this Privacy Policy. We will retain and use Your Personal Data to the extent necessary to comply with our legal obligations (for example, if we are required to retain your data to comply with applicable laws), resolve disputes, and enforce our legal agreements and policies."),
              SizedBox(height: 10),
              Text("The Company will also retain Usage Data for internal analysis purposes. Usage Data is generally retained for a shorter period of time, except when this data is used to strengthen the security or to improve the functionality of Our Service, or We are legally obligated to retain this data for longer time periods."),
              SizedBox(height: 10),
              Text("Transfer of Your Personal Data ", style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 17,
              ), ),
              SizedBox(height: 10),
              Text("Your information, including Personal Data, is processed at the Company's operating offices and in any other places where the parties involved in the processing are located. It means that this information may be transferred to — and maintained on — computers located outside of Your state, province, country or other governmental jurisdiction where the data protection laws may differ than those from Your jurisdiction."),
              SizedBox(height: 10),
              Text("Your consent to this Privacy Policy followed by Your submission of such information represents Your agreement to that transfer."),
              SizedBox(height: 10),
              Text("The Company will take all steps reasonably necessary to ensure that Your data is treated securely and in accordance with this Privacy Policy and no transfer of Your Personal Data will take place to an organization or a country unless there are adequate controls in place including the security of Your data and other personal information."),
              SizedBox(height: 10),
              Text("Disclosure of Your Personal Data ", style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 17,
              ), ),
              SizedBox(height: 10),
              Text("Business Transactions ", style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 15,
              ), ),
              SizedBox(height: 10),
              Text("If the Company is involved in a merger, acquisition or asset sale, Your Personal Data may be transferred. We will provide notice before Your Personal Data is transferred and becomes subject to a different Privacy Policy."),
              SizedBox(height: 10),
              Text("Law Enforcement ", style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 15,
              ), ),
              SizedBox(height: 10),
              Text("Under certain circumstances, the Company may be required to disclose Your Personal Data if required to do so by law or in response to valid requests by public authorities (e.g. a court or a government agency)."),
              SizedBox(height: 10),
              Text("Other legal requirements ", style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 15,
              ), ),
              SizedBox(height: 10),
              Text("The Company may disclose Your Personal Data in the good faith belief that such action is necessary to:The Company may disclose Your Personal Data in the good faith belief that such action is necessary to:"),
              SizedBox(height: 10),
              Text("•	Comply with a legal obligation"),
              SizedBox(height: 10),
              Text("•	Protect and defend the rights or property of the Company"),
              SizedBox(height: 10),
              Text("•	Prevent or investigate possible wrongdoing in connection with the Service"),
              SizedBox(height: 10),
              Text("•	Protect the personal safety of Users of the Service or the public"),
              SizedBox(height: 10),
              Text("•	Protect against legal liability"),
              SizedBox(height: 10),
              Text("Security of Your Personal Data ", style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 17,
              ), ),
              SizedBox(height: 10),
              Text("The security of Your Personal Data is important to Us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While We strive to use commercially acceptable means to protect Your Personal Data, We cannot guarantee its absolute security."),
              SizedBox(height: 10),
              Text("Children's Privacy ", style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 21,
              ), ),
              SizedBox(height: 10),
              Text("Our Service does not address anyone under the age of 13. We do not knowingly collect personally identifiable information from anyone under the age of 13. If You are a parent or guardian and You are aware that Your child has provided Us with Personal Data, please contact Us. If We become aware that We have collected Personal Data from anyone under the age of 13 without verification of parental consent, We take steps to remove that information from Our servers."),
              SizedBox(height: 10),
              Text("If We need to rely on consent as a legal basis for processing Your information and Your country requires consent from a parent, We may require Your parent's consent before We collect and use that information."),
              SizedBox(height: 10),
              Text("Links to Other Websites ", style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 21,
              ), ),
              SizedBox(height: 10),
              Text("Our Service may contain links to other websites that are not operated by Us. If You click on a third party link, You will be directed to that third party's site. We strongly advise You to review the Privacy Policy of every site You visit."),
              SizedBox(height: 10),
              Text("We have no control over and assume no responsibility for the content, privacy policies or practices of any third party sites or services."),
              SizedBox(height: 10),
              Text("Changes to this Privacy Policy ", style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 21,
              ), ),
              SizedBox(height: 10),
              Text("We may update Our Privacy Policy from time to time. We will notify You of any changes by posting the new Privacy Policy on this page."),
              SizedBox(height: 10),
              Text("We will let You know via email and/or a prominent notice on Our Service, prior to the change becoming effective and update the Last updated date at the top of this Privacy Policy."),
              SizedBox(height: 10),
              Text("You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page."),
              SizedBox(height: 10),
              Text("Contact Us ", style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 21,
              ), ),
              SizedBox(height: 10),
              Text("If you have any questions about this Privacy Policy, You can contact us:"),
              SizedBox(height: 10),
              Text("•	By email: BISITA@company.com"),
              SizedBox(height: 10),
              Text(""),
            ],
          ),
        ),
      ),
    );
  }
}
