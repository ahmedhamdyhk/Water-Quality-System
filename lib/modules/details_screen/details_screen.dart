import 'package:flutter/material.dart';
import 'package:water_quality/helper/constants.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppConstants.startColor,
              AppConstants.endColor,
            ],
            begin: AlignmentDirectional.bottomCenter,
            end: Alignment.topCenter,
            stops: const [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: [
              headerTitle('What is the Importance of Water Quality?'),
              bodyTitle(
                  'Over the past century, much progress has been made in the provision of access to clean drinking water for billions of people and thousands of communities around the world. However, there are billions yet (mostly in developing nations and their rural areas) who still do not have access to drinkable water that is absolutely necessary for both nutrition and sanitation.'),
              bodyTitle(
                  'According to the United Nations, billions in rural areas are still without the basic provision of access to clean water. In fact, one in three people on Earth do not have a source of safe drinking water available to them; two in five people are not able to wash their hands with soap and water due to the lack of a capable facility; and 673 million people are unable to receive water needed for sanitary practices, such as plumbing. Without the water needed for essential sanitation and hygiene, humanity is much more susceptible to contagious diseases, such as COVID-19.'),
              headerTitle('What Classifies as Clean Water?'),
              bodyTitle(
                  'The United States Geological Survey, or the USGS, is a scientific organization created by the United States Congress. It studies and provides information about the Earth’s environment, natural hazards, and our ecosystems. The USGS defines clean and safe water as water that won’t harm humans who come in contact with it. According to the World Health Organization, 26 percent of people on earth do not have access to a safely managed drinking water service that is both located close enough to them to have access to when they need it, and that is also free from contamination.'),
              headerTitle('The Importance of Access to Safe and Clean Water'),
              bodyTitle(
                  'The importance of water quality cannot be understated. The lack of access to safe and clean water is one of the largest risk factors for the spread of infectious diseases, such as polio, typhoid, cholera, dysentery, hepatitis, and diarrhea. The unavailability of drinkable water worsens and intensifies malnutrition, particularly in children.'),
              bodyTitle(
                  'To put the data in context, the Global Burden of Disease, a worldwide medical journal study on the risk factors for death and disease, reports that more than 1.2 million people died prematurely in 2017 due directly to unsafe water sources: greater than three times the number of those lost to drug use. Most of these deaths occur in low income, developing nations, especially Asia and sub-Saharan Africa. For example, in Chad, Niger, Somalia, and the Central African Republic, the rate of death due to unsafe water sources was among the highest, followed by countries such as India, Pakistan, and Nigeria.'),
              bodyTitle(
                  'In these undeveloped countries, the trek to obtain any water at all is grim, and very often, the onus falls on women and girls to collect water for their families and villages. According to statistics from the United Nations, the average distance that women in Africa and Asia walk to obtain water is six kilometers. Further, in parts of rural and Sub-Saharan Africa, millions of humans are forced to share a water source with animals. Still millions more must rely on untreated well water sources that are known to contain contaminants and can breed dangerous pathogens.'),
              headerTitle(
                  'Do People have a Legal Right to Clean Drinking Water?'),
              bodyTitle(
                  'Many believe that access to drinkable water and safe sanitation practices is a human right. At Healing Waters, we firmly agree, and we’ve made it our mission to see a future in which everyone has a safe water source available to them. The right to water and sanitation was officially recognized as a human right in 2010 by the United Nations General Assembly, which noted it was essential to human life. However, countries are not legally required to provide clean drinking water to their people. Instead, they’re only encouraged to do what they can with the limited resources they have. That’s why the mission of Healing Waters is so important: where resources exist in developed nations, we do everything in our power to share them with those who have less, so the human rights of everyone can be met in their lifetimes.'),
              headerTitle('The Need for Quality Water Across the Globe'),
              bodyTitle(
                  'Did you know that we need between fifty and one hundred liters of water per person each day to ensure that our most basic needs (including drinking, cooking and food preparation, laundry, cleaning, and hand washing) are met? More is needed for those who are in manual labor (which is a great deal of the world’s poor) and mothers who are breastfeeding. In developed areas of the world such as America and Europe, the United Nations reports that the average water use per person is between two and three hundred liters each day, while in developing nations like Mozambique, people are only able to use less than ten liters.'),
              bodyTitle(
                  'While governments around the world either lack the resources or the support to provide clean water to their citizens, charitable individuals and organizations in developed countries must take a human rights and humanitarian based approach to access to clean water. Healing Waters believes that access to safe water is a right to be maintained for every human, not a privilege to be enjoyed and reserved for the lucky few of us. We hope you’ll consider joining us in our mission to establish clean and safe water sources across the globe.'),
              headerTitle('Be a Hope-Instiller with Healing Waters'),
              bodyTitle(
                  'At Healing Waters, we believe that people thrive when they are free from the burden of worrying about a lack of clean water. When people have access to clean water, they are instilled with the hope that leads to a flourishing life. Our work isn’t possible without partners. There are always opportunities to be a part of the solution, and you can help developing parts of the water gain access to clean water. Contact us today to learn more.'),
            ],
          ),
        ),
      ),
    );
  }

  Widget headerTitle(text) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
    );
  }

  Widget bodyTitle(text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 15,
        ),
      ),
    );
  }
}
