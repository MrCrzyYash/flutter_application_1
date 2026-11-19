import 'package:flutter/gestures.dart';
import 'dart:async';
import 'package:material_ui/material_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShopMate',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF8F9FA),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1E40AF),
          primary: const Color(0xFF1E40AF),
          secondary: const Color(0xFFF97316),
        ),
      ),
      home: const ShopMateWelcomeScreen(),
    );
  }
}

class LanguageData {
  final String code;
  final String nativeName;
  final String englishName;
  final String regionStore;
  final bool isRtl;
  final String navSub;
  final String trustPill;
  final String storeBanner;
  final String liveBadge;
  final String savedBadge;
  final String tapHint;
  final String headlinePrefix;
  final String headlineHighlight;
  final String headlineSuffix;
  final String subheadline;
  final String b1Title;
  final String b1Sub;
  final String b2Title;
  final String b2Sub;
  final String b3Title;
  final String b3Sub;
  final String ctaText;
  final String ctaLoading;
  final String microCopy;
  final String dashTitle;
  final String dashSub;
  final String backBtn;
  final String cmd1;
  final String tag1;
  final String cmd2;
  final String tag2;
  final String cmd3;
  final String tag3;

  const LanguageData({
    required this.code,
    required this.nativeName,
    required this.englishName,
    required this.regionStore,
    this.isRtl = false,
    required this.navSub,
    required this.trustPill,
    required this.storeBanner,
    required this.liveBadge,
    required this.savedBadge,
    required this.tapHint,
    required this.headlinePrefix,
    required this.headlineHighlight,
    required this.headlineSuffix,
    required this.subheadline,
    required this.b1Title,
    required this.b1Sub,
    required this.b2Title,
    required this.b2Sub,
    required this.b3Title,
    required this.b3Sub,
    required this.ctaText,
    required this.ctaLoading,
    required this.microCopy,
    required this.dashTitle,
    required this.dashSub,
    required this.backBtn,
    required this.cmd1,
    required this.tag1,
    required this.cmd2,
    required this.tag2,
    required this.cmd3,
    required this.tag3,
  });

  String voiceCmd(int index) {
    if (index == 1) return cmd2;
    if (index == 2) return cmd3;
    return cmd1;
  }

  String voiceTag(int index) {
    if (index == 1) return tag2;
    if (index == 2) return tag3;
    return tag1;
  }
}

const List<LanguageData> kLanguages = [
  LanguageData(
    code: 'en',
    nativeName: 'English',
    englishName: 'English',
    regionStore: 'Kirana & General Store',
    navSub: 'SMART KIRANA ASSISTANT',
    trustPill: 'Trusted by 50,000+ Dukaandars',
    storeBanner: 'SHARMA KIRANA STORE',
    liveBadge: 'LIVE KHATA',
    savedBadge: 'SAVED',
    tapHint: 'Tap to test voice entry',
    headlinePrefix: 'Make Your Dukaan ',
    headlineHighlight: 'Smart & Effortless',
    headlineSuffix: '',
    subheadline:
        'Manage daily sales, udhaar khata, stock prices, and expiry alerts using just your voice.',
    b1Title: 'Voice Entry',
    b1Sub: 'Bol kar hisaab',
    b2Title: 'Digital Khata',
    b2Sub: 'Udhaar tracking',
    b3Title: 'Smart Stock',
    b3Sub: 'Expiry & low-stock alerts',
    ctaText: "Let's Get Started",
    ctaLoading: 'Opening ShopMate...',
    microCopy: "100% Free • Made for India's Kirana Stores 🇮🇳",
    dashTitle: 'Loading ShopMate Dashboard...',
    dashSub: 'Setting up your voice khata & smart inventory',
    backBtn: '← Back to Welcome Screen',
    cmd1: '"Ramesh ke khate mein ₹250 Aashirvaad Atta likho"',
    tag1: '✓ Saved to Ramesh Udhaar Khata • ₹250',
    cmd2: '"Add 20 packets Maggi & ₹120 cash sale"',
    tag2: '✓ Cash Sale +₹120 • Stock Updated',
    cmd3: '"Check expiry for Amul Taaza Milk crates"',
    tag3: '⚠️ 4 packets expiring tomorrow morning',
  ),
  LanguageData(
    code: 'hi',
    nativeName: 'हिंदी',
    englishName: 'Hindi / Hinglish',
    regionStore: 'किराना और जनरल स्टोर',
    navSub: 'स्मार्ट किराना असिस्टेंट',
    trustPill: '50,000+ दुकानदारों का भरोसा',
    storeBanner: 'शर्मा किराना स्टोर',
    liveBadge: 'लाइव खाता',
    savedBadge: 'सेव हो गया',
    tapHint: 'आवाज़ से हिसाब परखें',
    headlinePrefix: 'Apni Dukaan Ko ',
    headlineHighlight: 'Smart Banayein',
    headlineSuffix: '',
    subheadline:
        'Voice se roz ka hisaab, udhaar khata, stock aur expiry alerts manage karein — bina kisi jhanjhat ke.',
    b1Title: 'Voice Entry',
    b1Sub: 'बोल कर हिसाब (Bol kar hisaab)',
    b2Title: 'Digital Khata',
    b2Sub: 'उधार ट्रैकिंग (Udhaar tracking)',
    b3Title: 'Smart Stock',
    b3Sub: 'एक्सपायरी और कम स्टॉक अलर्ट',
    ctaText: "Shuru Karein (Let's Get Started)",
    ctaLoading: 'ShopMate खुल रहा है...',
    microCopy: '100% मुफ़्त • भारत के किराना स्टोर्स के लिए निर्मित 🇮🇳',
    dashTitle: 'Loading ShopMate Dashboard...',
    dashSub: 'आपका वॉइस खाता और स्मार्ट स्टॉक तैयार हो रहा है',
    backBtn: '← वापस स्वागत स्क्रीन पर जाएं',
    cmd1: '"रमेश के खाते में ₹250 आशीर्वाद आटा लिखो"',
    tag1: '✓ रमेश उधार खाता में दर्ज • ₹250',
    cmd2: '"2 किलो चीनी नकद बिक्री ₹90 जोड़ो"',
    tag2: '✓ नकद बिक्री +₹90 • स्टॉक अपडेटेड',
    cmd3: '"अमूल दूध की एक्सपायरी चेक करो"',
    tag3: '⚠️ 4 पैकेट कल सुबह एक्सपायर हो रहे हैं',
  ),
  LanguageData(
    code: 'kn',
    nativeName: 'ಕನ್ನಡ',
    englishName: 'Kannada',
    regionStore: 'ಕಿರಾಣಿ ಅಂಗಡಿ (Karnataka)',
    navSub: 'ಸ್ಮಾರ್ಟ್ ಕಿರಾಣಿ ಸಹಾಯಕ',
    trustPill: '50,000+ ಅಂಗಡಿ ಮಾಲೀಕರ ನಂಬಿಕೆ',
    storeBanner: 'ಶ್ರೀ ಲಕ್ಷ್ಮಿ ಕಿರಾಣಿ ಸ್ಟೋರ್',
    liveBadge: 'ಲೈವ್ ಖಾತಾ',
    savedBadge: 'ಉಳಿಸಲಾಗಿದೆ',
    tapHint: 'ಧ್ವನಿ ಲೆಕ್ಕ ಪರೀಕ್ಷಿಸಲು ಟ್ಯಾಪ್ ಮಾಡಿ',
    headlinePrefix: 'ನಿಮ್ಮ ಅಂಗಡಿಯನ್ನು ',
    headlineHighlight: 'ಸ್ಮಾರ್ಟ್ ಮಾಡಿ',
    headlineSuffix: '',
    subheadline:
        'ನಿಮ್ಮ ಧ್ವನಿಯ ಮೂಲಕ ದೈನಂದಿನ ವ್ಯಾಪಾರ, ಸಾಲದ ಖಾತಾ (Udhaar), ಸ್ಟಾಕ್ ಬೆಲೆ ಮತ್ತು ಎಕ್ಸ್‌ಪೈರಿ ಅಲರ್ಟ್ ನಿರ್ವಹಿಸಿ.',
    b1Title: 'ವಾಯ್ಸ್ ಎಂಟ್ರಿ (Voice)',
    b1Sub: 'ಮಾತನಾಡಿ ಲೆಕ್ಕ ಬರೆಯಿರಿ',
    b2Title: 'ಡಿಜಿಟಲ್ ಖಾತಾ (Khata)',
    b2Sub: 'ಸಾಲದ ಲೆಕ್ಕ ಟ್ರ್ಯಾಕಿಂಗ್',
    b3Title: 'ಸ್ಮಾರ್ಟ್ ಸ್ಟಾಕ್ (Stock)',
    b3Sub: 'ಎಕ್ಸ್‌ಪೈರಿ ಮತ್ತು ಸ್ಟಾಕ್ ಅಲರ್ಟ್',
    ctaText: 'ಪ್ರಾರಂಭಿಸಿ (Get Started)',
    ctaLoading: 'ShopMate ತೆರೆಯುತ್ತಿದೆ...',
    microCopy: '100% ಉಚಿತ • ಭಾರತದ ಕಿರಾಣಿ ಅಂಗಡಿಗಳಿಗಾಗಿ ನಿರ್ಮಿಸಲಾಗಿದೆ 🇮🇳',
    dashTitle: 'Loading ShopMate Dashboard...',
    dashSub: 'ನಿಮ್ಮ ಧ್ವನಿ ಖಾತಾ ಮತ್ತು ಸ್ಟಾಕ್ ಸಿದ್ಧವಾಗುತ್ತಿದೆ',
    backBtn: '← ಸ್ವಾಗತ ಪರದೆಗೆ ಹಿಂತಿರುಗಿ',
    cmd1: '"ರಮೇಶ್ ಖಾತೆಗೆ ₹250 ಆಶೀರ್ವಾದ್ ಹಿಟ್ಟು ಸೇರಿಸಿ"',
    tag1: '✓ ರಮೇಶ್ ಖಾತೆಗೆ ಸೇರಿಸಲಾಗಿದೆ • ₹250',
    cmd2: '"2 ಕೆಜಿ ಸಕ್ಕರೆ ನಗದು ಮಾರಾಟ ₹90 ಸೇರಿಸಿ"',
    tag2: '✓ ನಗದು ಮಾರಾಟ +₹90 • ಸ್ಟಾಕ್ ಅಪ್‌ಡೇಟ್',
    cmd3: '"ನಂದಿನಿ ಹಾಲಿನ ಎಕ್ಸ್‌ಪೈರಿ ಚೆಕ್ ಮಾಡಿ"',
    tag3: '⚠️ 4 ಪ್ಯಾಕೆಟ್ ನಾಳೆ ಬೆಳಿಗ್ಗೆ ಮುಕ್ತಾಯವಾಗುತ್ತದೆ',
  ),
  LanguageData(
    code: 'te',
    nativeName: 'తెలుగు',
    englishName: 'Telugu',
    regionStore: 'కిరాణా షాప్ (AP & Telangana)',
    navSub: 'స్మార్ట్ కిరాణా అసిస్టెంట్',
    trustPill: '50,000+ కిరాణా వ్యాపారుల నమ్మకం',
    storeBanner: 'శ్రీ వెంకటేశ్వర కిరాణా స్టోర్',
    liveBadge: 'లైవ్ ఖాతా',
    savedBadge: 'సేవ్ అయింది',
    tapHint: 'వాయిస్ ఎంట్రీని పరీక్షించడానికి నొక్కండి',
    headlinePrefix: 'మీ కిరాణా షాపును ',
    headlineHighlight: 'స్మార్ట్‌గా మార్చండి',
    headlineSuffix: '',
    subheadline:
        'కేవలం మీ గొంతుతో రోజువారీ అమ్మకాలు, ఉధార్ ఖాతా, స్టాక్ ధరలు మరియు ఎక్స్‌పైరీ అలర్ట్‌లను సులభంగా నిర్వహించండి.',
    b1Title: 'వాయిస్ ఎంట్రీ (Voice)',
    b1Sub: 'మాట్లాడి లెక్కలు రాయండి',
    b2Title: 'డిజిటల్ ఖాతా (Khata)',
    b2Sub: 'అప్పుల పద్దు ట్రాకింగ్',
    b3Title: 'స్మార్ట్ స్టాక్ (Stock)',
    b3Sub: 'ఎక్స్‌పైరీ & తక్కువ స్టాక్ అలర్ట్స్',
    ctaText: 'ప్రారంభించండి (Get Started)',
    ctaLoading: 'ShopMate తెరుచుకుంటోంది...',
    microCopy: '100% ఉచితం • భారతదేశ కిరాణా షాపుల కోసం 🇮🇳',
    dashTitle: 'Loading ShopMate Dashboard...',
    dashSub: 'మీ వాయిస్ ఖాతా మరియు స్మార్ట్ ఇన్వెంటరీ సిద్ధమవుతోంది',
    backBtn: '← వెల్‌కమ్ స్క్రీన్‌కు తిరిగి వెళ్ళండి',
    cmd1: '"రమేష్ ఖాతాలో ₹250 ఆశీర్వాద్ పిండి రాయండి"',
    tag1: '✓ రమేష్ ఖాతాలో సేవ్ అయింది • ₹250',
    cmd2: '"2 కిలోల చక్కెర నగదు అమ్మకం ₹90 జోడించు"',
    tag2: '✓ నగదు అమ్మకం +₹90 • స్టాక్ అప్‌డేట్',
    cmd3: '"విజయ పాల ప్యాకెట్ల ఎక్స్‌పైరీ చూడండి"',
    tag3: '⚠️ 4 ప్యాకెట్లు రేపు ఉదయం ముగుస్తాయి',
  ),
  LanguageData(
    code: 'ta',
    nativeName: 'தமிழ்',
    englishName: 'Tamil',
    regionStore: 'மளிகை கடை (Tamil Nadu)',
    navSub: 'ஸ்மார்ட் மளிகை உதவியாளர்',
    trustPill: '50,000+ கடைக்காரர்களின் நம்பிக்கை',
    storeBanner: 'ஸ்ரீ முருகன் மளிகை ஸ்டோர்',
    liveBadge: 'லைவ் கணக்கு',
    savedBadge: 'சேமிக்கப்பட்டது',
    tapHint: 'குரல் பதிவை சோதிக்க தட்டவும்',
    headlinePrefix: 'உங்கள் மளிகை கடையை ',
    headlineHighlight: 'ஸ்மார்ட் ஆக்குங்கள்',
    headlineSuffix: '',
    subheadline:
        'உங்கள் குரல் மூலம் தினசரி விற்பனை, கடன் கணக்கு (Khata), ஸ்டாக் விலை மற்றும் காலாவதி அலர்ட்களை எளிதாக நிர்வகிக்கவும்.',
    b1Title: 'குரல் பதிவு (Voice)',
    b1Sub: 'பேசி கணக்கு எழுதுங்கள்',
    b2Title: 'டிஜிட்டல் கணக்கு (Khata)',
    b2Sub: 'கடன் கணக்கு கண்காணிப்பு',
    b3Title: 'ஸ்மார்ட் ஸ்டாக் (Stock)',
    b3Sub: 'காலாவதி & குறைந்த ஸ்டாக் அலர்ட்',
    ctaText: 'தொடங்குவோம் (Get Started)',
    ctaLoading: 'ShopMate திறக்கிறது...',
    microCopy: '100% இலவசம் • இந்திய மளிகை கடைகளுக்காக உருவாக்கப்பட்டது 🇮🇳',
    dashTitle: 'Loading ShopMate Dashboard...',
    dashSub: 'உங்கள் குரல் கணக்கு மற்றும் ஸ்டாக் தயாராகிறது',
    backBtn: '← முகப்புத் திரைக்குத் திரும்பு',
    cmd1: '"ரமேஷ் கணக்கில் ₹250 ஆசீர்வாத் மாவு எழுது"',
    tag1: '✓ ரமேஷ் கடன் கணக்கில் சேமிக்கப்பட்டது • ₹250',
    cmd2: '"2 கிலோ சர்க்கரை ரொக்க விற்பனை ₹90 சேர்"',
    tag2: '✓ ரொக்க விற்பனை +₹90 • ஸ்டாக் அப்டேட்',
    cmd3: '"ஆவின் பால் காலாவதி தேதியை சரிபார்"',
    tag3: '⚠️ 4 பாக்கெட்டுகள் நாளை காலை காலாவதியாகிறது',
  ),
  LanguageData(
    code: 'ml',
    nativeName: 'മലയാളം',
    englishName: 'Malayalam',
    regionStore: 'പലചരക്ക് കട (Kerala)',
    navSub: 'സ്മാർട്ട് പലചരക്ക് സഹായി',
    trustPill: '50,000+ വ്യാപാരികളുടെ വിശ്വാസം',
    storeBanner: 'ശ്രീ കൃഷ്ണ സ്റ്റോഴ്സ്',
    liveBadge: 'ലൈവ് ഖാത്ത',
    savedBadge: 'സേവ് ചെയ്തു',
    tapHint: 'വോയ്‌സ് എൻട്രി പരീക്ഷിക്കാൻ ടാപ്പ് ചെയ്യുക',
    headlinePrefix: 'നിങ്ങളുടെ കട ',
    headlineHighlight: 'സ്മാർട്ട് ആക്കൂ',
    headlineSuffix: '',
    subheadline:
        'നിങ്ങളുടെ ശബ്ദം ഉപയോഗിച്ച് ദിവസേനയുള്ള വിൽപ്പന, പറ്റ് കണക്ക് (Khata), സ്റ്റോക്ക് വില, എക്സ്പയറി അലേർട്ടുകൾ എന്നിവ നിയന്ത്രിക്കാം.',
    b1Title: 'വോയ്‌സ് എൻട്രി (Voice)',
    b1Sub: 'പറഞ്ഞ് കണക്ക് എഴുതാം',
    b2Title: 'ഡിജിറ്റൽ ഖാത്ത (Khata)',
    b2Sub: 'പറ്റ് കണക്ക് ട്രാക്കിംഗ്',
    b3Title: 'സ്മാർട്ട് സ്റ്റോക്ക് (Stock)',
    b3Sub: 'എക്സ്പയറി & സ്റ്റോക്ക് അലേർട്ട്',
    ctaText: 'തുടങ്ങാം (Get Started)',
    ctaLoading: 'ShopMate തുറക്കുന്നു...',
    microCopy: '100% സൗജന്യം • ഇന്ത്യയിലെ പലചരക്ക് കടകൾക്കായി 🇮🇳',
    dashTitle: 'Loading ShopMate Dashboard...',
    dashSub: 'നിങ്ങളുടെ വോയ്‌സ് ഖാത്തയും സ്റ്റോക്കും തയ്യാറാകുന്നു',
    backBtn: '← വെൽകം സ്ക്രീനിലേക്ക് മടങ്ങുക',
    cmd1: '"രമേശിന്റെ പറ്റ് കണക്കിൽ ₹250 ആട്ട ചേർക്കുക"',
    tag1: '✓ രമേശിന്റെ ഖാത്തയിൽ സേവ് ചെയ്തു • ₹250',
    cmd2: '"2 കിലോ പഞ്ചസാര ക്യാഷ് സെയിൽ ₹90 ചേർക്കുക"',
    tag2: '✓ ക്യാഷ് സെയിൽ +₹90 • സ്റ്റോക്ക് അപ്ഡേറ്റ്',
    cmd3: '"മിൽമ പാൽ എക്സ്പയറി പരിശോധിക്കുക"',
    tag3: '⚠️ 4 പാക്കറ്റുകൾ നാളെ രാവിലെ കാലാവധി കഴിയും',
  ),
  LanguageData(
    code: 'mr',
    nativeName: 'मराठी',
    englishName: 'Marathi',
    regionStore: 'किराणा दुकान (Maharashtra)',
    navSub: 'स्मार्ट किराणा असिस्टंट',
    trustPill: '50,000+ दुकानदारांचा विश्वास',
    storeBanner: 'श्री गणेश किराणा स्टोअर',
    liveBadge: 'लाईव्ह खाते',
    savedBadge: 'सेव्ह झाले',
    tapHint: 'आवाजाने हिशोब तपासण्यासाठी टॅप करा',
    headlinePrefix: 'आपलं दुकान करा ',
    headlineHighlight: 'स्मार्ट आणि सोपं',
    headlineSuffix: '',
    subheadline:
        'फक्त तुमच्या आवाजाने रोजची विक्री, उधार खाते, स्टॉक रेट आणि एक्सपायरी अलर्ट विनासायास सांभाळा.',
    b1Title: 'व्हॉइस एन्ट्री (Voice)',
    b1Sub: 'बोलून हिशोब लिहा',
    b2Title: 'डिजिटल खाते (Khata)',
    b2Sub: 'उधारी ट्रॅकिंग',
    b3Title: 'स्मार्ट स्टॉक (Stock)',
    b3Sub: 'एक्सपायरी आणि कमी स्टॉक अलर्ट',
    ctaText: 'सुरू करा (Get Started)',
    ctaLoading: 'ShopMate उघडत आहे...',
    microCopy: '100% मोफत • भारतातील किराणा दुकानांसाठी खास तयार केलेले 🇮🇳',
    dashTitle: 'Loading ShopMate Dashboard...',
    dashSub: 'तुमचे व्हॉइस खाते आणि स्मार्ट स्टॉक तयार होत आहे',
    backBtn: '← मुख्य स्क्रीनवर परत जा',
    cmd1: '"रमेशच्या खात्यात ₹250 आशीर्वाद पीठ लिहा"',
    tag1: '✓ रमेश उधार खात्यात जमा • ₹250',
    cmd2: '"2 किलो साखर रोख विक्री ₹90 जोडा"',
    tag2: '✓ रोख विक्री +₹90 • स्टॉक अपडेटेड',
    cmd3: '"गोकुळ दूध पॅकेटची एक्सपायरी तपासा"',
    tag3: '⚠️ 4 पॅकेट उद्या सकाळी एक्सपायर होत आहेत',
  ),
  LanguageData(
    code: 'bn',
    nativeName: 'বাংলা',
    englishName: 'Bengali',
    regionStore: 'মুদি দোকান (Bengal)',
    navSub: 'স্মার্ট মুদি দোকান সহকারী',
    trustPill: '৫০,০০০+ দোকানদারের ভরসা',
    storeBanner: 'মা তারা ভাণ্ডার ও মুদি স্টোর',
    liveBadge: 'লাইভ খাতা',
    savedBadge: 'সেভ হয়েছে',
    tapHint: 'ভয়েস এন্ট্রি পরখ করতে ট্যাপ করুন',
    headlinePrefix: 'আপনার দোকানকে করুন ',
    headlineHighlight: 'স্মার্ট ও সহজ',
    headlineSuffix: '',
    subheadline:
        'শুধুমাত্র আপনার কণ্ঠস্বর ব্যবহার করে প্রতিদিনের বিক্রি, বাকি খাতা, স্টকের দাম এবং এক্সপায়ারি অ্যালার্ট পরিচালনা করুন।',
    b1Title: 'ভয়েস এন্ট্রি (Voice)',
    b1Sub: 'মুখে বলে হিসাব রাখুন',
    b2Title: 'ডিজিটাল খাতা (Khata)',
    b2Sub: 'বাকি ও ধারের হিসাব',
    b3Title: 'স্মার্ট স্টক (Stock)',
    b3Sub: 'এক্সপায়ারি ও কম স্টক অ্যালার্ট',
    ctaText: 'শুরু করুন (Get Started)',
    ctaLoading: 'ShopMate খুলছে...',
    microCopy: '১০০% বিনামূল্যে • ভারতের মুদি দোকানের জন্য তৈরি 🇮🇳',
    dashTitle: 'Loading ShopMate Dashboard...',
    dashSub: 'আপনার ভয়েস খাতা এবং স্মার্ট স্টক প্রস্তুত হচ্ছে',
    backBtn: '← ওয়েলকাম স্ক্রিনে ফিরে যান',
    cmd1: '"রমেশের খাতায় ₹২৫০ আশীর্বাদ আটা লেখো"',
    tag1: '✓ রমেশের বাকি খাতায় যোগ হয়েছে • ₹২৫০',
    cmd2: '"২ কেজি চিনি নগদ বিক্রি ₹৯০ যোগ করো"',
    tag2: '✓ নগদ বিক্রি +₹৯০ • স্টক আপডেট হয়েছে',
    cmd3: '"দুধের প্যাকেটের এক্সপায়ারি চেক করো"',
    tag3: '⚠️ ৪টি প্যাকেট আগামীকাল সকালে মেয়াদ শেষ হবে',
  ),
  LanguageData(
    code: 'gu',
    nativeName: 'ગુજરાતી',
    englishName: 'Gujarati',
    regionStore: 'કિરાણા સ્ટોર (Gujarat)',
    navSub: 'સ્માર્ટ કિરાણા આસિસ્ટન્ટ',
    trustPill: '50,000+ દુકાનદારોનો વિશ્વાસ',
    storeBanner: 'જય અંબે પ્રોવિઝન સ્ટોર',
    liveBadge: 'લાઈવ ખાતું',
    savedBadge: 'સેવ થઈ ગયું',
    tapHint: 'વોઇસ એન્ટ્રી ચકાસવા માટે ટેપ કરો',
    headlinePrefix: 'તમારી દુકાનને બનાવો ',
    headlineHighlight: 'સ્માર્ટ અને સરળ',
    headlineSuffix: '',
    subheadline:
        'ફક્ત તમારા અવાજથી રોજનું વેચાણ, ઉધાર ખાતું, સ્ટોકના ભાવ અને એક્સપાયરી એલર્ટ સરળતાથી મેનેજ કરો.',
    b1Title: 'વોઇસ એન્ટ્રી (Voice)',
    b1Sub: 'બોલીને હિસાબ લખો',
    b2Title: 'ડિજિટલ ખાતું (Khata)',
    b2Sub: 'ઉધાર હિસાબ ટ્રેકિંગ',
    b3Title: 'સ્માર્ટ સ્ટોક (Stock)',
    b3Sub: 'એક્સપાયરી અને ઓછા સ્ટોક એલર્ટ',
    ctaText: 'શરૂ કરો (Get Started)',
    ctaLoading: 'ShopMate ખૂલી રહ્યું છે...',
    microCopy: '100% મફત • ભારતના કિરાણા સ્ટોર્સ માટે બનાવેલ 🇮🇳',
    dashTitle: 'Loading ShopMate Dashboard...',
    dashSub: 'તમારું વોઇસ ખાતું અને સ્માર્ટ સ્ટોક તૈયાર થઈ રહ્યું છે',
    backBtn: '← વેલકમ સ્ક્રીન પર પાછા જાઓ',
    cmd1: '"રમેશના ખાતામાં ₹250 આશીર્વાદ લોટ લખો"',
    tag1: '✓ રમેશ ઉધાર ખાતામાં સેવ • ₹250',
    cmd2: '"2 કિલો ખાંડ રોકડ વેચાણ ₹90 ઉમેરો"',
    tag2: '✓ રોકડ વેચાણ +₹90 • સ્ટોક અપડેટ',
    cmd3: '"અમૂલ દૂધની એક્સપાયરી ચેક કરો"',
    tag3: '⚠️ 4 પેકેટ આવતીકાલે સવારે એક્સપાયર થશે',
  ),
  LanguageData(
    code: 'pa',
    nativeName: 'ਪੰਜਾਬੀ',
    englishName: 'Punjabi',
    regionStore: 'ਕਿਰਾਨਾ ਹੱਟੀ (Punjab)',
    navSub: 'ਸਮਾਰਟ ਕਿਰਾਨਾ ਸਹਾਇਕ',
    trustPill: '50,000+ ਦੁਕਾਨਦਾਰਾਂ ਦਾ ਭਰੋਸਾ',
    storeBanner: 'ਗੁਰੂ ਨਾਨਕ ਕਿਰਾਨਾ ਸਟੋਰ',
    liveBadge: 'ਲਾਈਵ ਖਾਤਾ',
    savedBadge: 'ਸੇਵ ਹੋ ਗਿਆ',
    tapHint: 'ਆਵਾਜ਼ ਨਾਲ ਹਿਸਾਬ ਚੈੱਕ ਕਰਨ ਲਈ ਟੈਪ ਕਰੋ',
    headlinePrefix: 'ਆਪਣੀ ਦੁਕਾਨ ਨੂੰ ਬਣਾਓ ',
    headlineHighlight: 'ਸਮਾਰਟ ਅਤੇ ਆਸਾਨ',
    headlineSuffix: '',
    subheadline:
        'ਸਿਰਫ਼ ਆਪਣੀ ਆਵਾਜ਼ ਨਾਲ ਰੋਜ਼ਾਨਾ ਵਿਕਰੀ, ਉਧਾਰ ਖਾਤਾ, ਸਟਾਕ ਰੇਟ ਅਤੇ ਐਕਸਪਾਇਰੀ ਅਲਰਟ ਬਿਨਾਂ ਕਿਸੇ ਝੰਜਟ ਦੇ ਚਲਾਓ।',
    b1Title: 'ਵੌਇਸ ਐਂਟਰੀ (Voice)',
    b1Sub: 'ਬੋਲ ਕੇ ਹਿਸਾਬ ਲਿਖੋ',
    b2Title: 'ਡਿਜੀਟਲ ਖਾਤਾ (Khata)',
    b2Sub: 'ਉਧਾਰ ਖਾਤਾ ਟਰੈਕਿੰਗ',
    b3Title: 'ਸਮਾਰਟ ਸਟਾਕ (Stock)',
    b3Sub: 'ਐਕਸਪਾਇਰੀ ਤੇ ਘੱਟ ਸਟਾਕ ਅਲਰਟ',
    ctaText: 'ਸ਼ੁਰੂ ਕਰੋ (Get Started)',
    ctaLoading: 'ShopMate ਖੁੱਲ੍ਹ ਰਿਹਾ ਹੈ...',
    microCopy: '100% ਮੁਫ਼ਤ • ਭਾਰਤ ਦੀਆਂ ਕਿਰਾਨਾ ਦੁਕਾਨਾਂ ਲਈ ਬਣਿਆ 🇮🇳',
    dashTitle: 'Loading ShopMate Dashboard...',
    dashSub: 'ਤੁਹਾਡਾ ਵੌਇਸ ਖਾਤਾ ਅਤੇ ਸਮਾਰਟ ਸਟਾਕ ਤਿਆਰ ਹੋ ਰਿਹਾ ਹੈ',
    backBtn: '← ਵਾਪਸ ਸਵਾਗਤ ਸਕ੍ਰੀਨ ਤੇ ਜਾਓ',
    cmd1: '"ਰਮੇਸ਼ ਦੇ ਖਾਤੇ ਵਿੱਚ ₹250 ਆਸ਼ੀਰਵਾਦ ਆਟਾ ਲਿਖੋ"',
    tag1: '✓ ਰਮੇਸ਼ ਉਧਾਰ ਖਾਤੇ ਵਿੱਚ ਦਰਜ • ₹250',
    cmd2: '"2 ਕਿਲੋ ਖੰਡ ਨਕਦ ਵਿਕਰੀ ₹90 ਜੋੜੋ"',
    tag2: '✓ ਨਕਦ ਵਿਕਰੀ +₹90 • ਸਟਾਕ ਅਪਡੇਟ',
    cmd3: '"ਵੇਰਕਾ ਦੁੱਧ ਦੀ ਐਕਸਪਾਇਰੀ ਚੈੱਕ ਕਰੋ"',
    tag3: '⚠️ 4 ਪੈਕੇਟ ਕੱਲ੍ਹ ਸਵੇਰੇ ਐਕਸਪਾਇਰ ਹੋ ਰਹੇ ਹਨ',
  ),
  LanguageData(
    code: 'or',
    nativeName: 'ଓଡ଼ିଆ',
    englishName: 'Odia',
    regionStore: 'ତେଜରାତି ଦୋକାନ (Odisha)',
    navSub: 'ସ୍ମାର୍ଟ କିରାନା ସହାୟକ',
    trustPill: '50,000+ ଦୋକାନୀଙ୍କ ଭରସା',
    storeBanner: 'ଶ୍ରୀ ଜଗନ୍ନାଥ ଷ୍ଟୋର',
    liveBadge: 'ଲାଇଭ୍ ଖାତା',
    savedBadge: 'ସେଭ୍ ହେଲା',
    tapHint: 'ଭଏସ୍ ଏଣ୍ଟ୍ରି ପରଖିବା ପାଇଁ ଟ୍ୟାପ୍ କରନ୍ତୁ',
    headlinePrefix: 'ଆପଣଙ୍କ ଦୋକାନକୁ କରନ୍ତୁ ',
    headlineHighlight: 'ସ୍ମାର୍ଟ ଓ ସହଜ',
    headlineSuffix: '',
    subheadline:
        'କେବଳ ଆପଣଙ୍କ ସ୍ୱର ମାଧ୍ୟମରେ ଦୈନିକ ବିକ୍ରି, ଉଧାର ଖାତା, ଷ୍ଟକ୍ ଦର ଏବଂ ଏକ୍ସପାଇରି ଆଲର୍ଟ ସହଜରେ ପରିଚାଳନା କରନ୍ତୁ।',
    b1Title: 'ଭଏସ୍ ଏଣ୍ଟ୍ରି (Voice)',
    b1Sub: 'କହିକି ହିସାବ ଲେଖନ୍ତୁ',
    b2Title: 'ଡିଜିଟାଲ୍ ଖାତା (Khata)',
    b2Sub: 'ଉଧାର ହିସାବ ଟ୍ରାକିଂ',
    b3Title: 'ସ୍ମାର୍ଟ ଷ୍ଟକ୍ (Stock)',
    b3Sub: 'ଏକ୍ସପାଇରି ଓ କମ୍ ଷ୍ଟକ୍ ଆଲର୍ଟ',
    ctaText: 'ଆରମ୍ଭ କରନ୍ତୁ (Get Started)',
    ctaLoading: 'ShopMate ଖୋଲୁଛି...',
    microCopy: '100% ମାଗଣା • ଭାରତର କିରାନା ଦୋକାନ ପାଇଁ ନିର୍ମିତ 🇮🇳',
    dashTitle: 'Loading ShopMate Dashboard...',
    dashSub: 'ଆପଣଙ୍କ ଭଏସ୍ ଖାତା ଏବଂ ସ୍ମାର୍ଟ ଷ୍ଟକ୍ ପ୍ରସ୍ତୁତ ହେଉଛି',
    backBtn: '← ସ୍ୱାଗତ ସ୍କ୍ରିନକୁ ଫେରନ୍ତୁ',
    cmd1: '"ରମେଶ ଖାତାରେ ₹250 ଆଶୀର୍ବାଦ ଅଟା ଲେଖନ୍ତୁ"',
    tag1: '✓ ରମେଶ ଉଧାର ଖାତାରେ ସେଭ୍ ହେଲା • ₹250',
    cmd2: '"2 କିଲୋ ଚିନି ନଗଦ ବିକ୍ରି ₹90 ଯୋଡ଼ନ୍ତୁ"',
    tag2: '✓ ନଗଦ ବିକ୍ରି +₹90 • ଷ୍ଟକ୍ ଅପଡେଟ୍',
    cmd3: '"ଓମଫେଡ୍ କ୍ଷୀରର ଏକ୍ସପାଇରି ଚେକ୍ କରନ୍ତୁ"',
    tag3: '⚠️ 4 ପ୍ୟାକେଟ୍ କାଲି ସକାଳେ ଏକ୍ସପାଇର ହେବ',
  ),
  LanguageData(
    code: 'as',
    nativeName: 'অসমীয়া',
    englishName: 'Assamese',
    regionStore: 'গেলামালৰ দোকান (Assam)',
    navSub: 'স্মাৰ্ট দোকান সহায়ক',
    trustPill: '৫০,০০০+ দোকানীৰ বিশ্বাস',
    storeBanner: 'শংকৰদেৱ ষ্টোৰ',
    liveBadge: 'লাইভ খাতা',
    savedBadge: 'ছেভ হ’ল',
    tapHint: 'ভয়েচ এণ্ট্ৰি পৰীক্ষা কৰিবলৈ টিপক',
    headlinePrefix: 'আপোনাৰ দোকানখন ',
    headlineHighlight: 'স্মাৰ্ট কৰি তোলক',
    headlineSuffix: '',
    subheadline:
        'কেৱল আপোনাৰ মাতেৰে দৈনিক বিক্ৰী, বাকী খাতা, ষ্টকৰ দাম আৰু এক্সপায়াৰী এলাৰ্ট সহজে পৰিচালনা কৰক।',
    b1Title: 'ভয়েচ এণ্ট্ৰি (Voice)',
    b1Sub: 'কৈ হিচাপ লিখক',
    b2Title: 'ডিজিটেল খাতা (Khata)',
    b2Sub: 'বাকী হিচাপ ট্ৰেকিং',
    b3Title: 'স্মাৰ্ট ষ্টক (Stock)',
    b3Sub: 'এক্সপায়াৰী আৰু কম ষ্টক এলাৰ্ট',
    ctaText: 'আৰম্ভ কৰক (Get Started)',
    ctaLoading: 'ShopMate খোল খাই আছে...',
    microCopy: '১০০% বিনামূলীয়া • ভাৰতৰ গেলামালৰ দোকানৰ বাবে নিৰ্মিত 🇮🇳',
    dashTitle: 'Loading ShopMate Dashboard...',
    dashSub: 'আপোনাৰ ভয়েচ খাতা আৰু স্মাৰ্ট ষ্টক সাজু হৈ আছে',
    backBtn: '← মূল স্ক্ৰীণলৈ উভতি যাওক',
    cmd1: '"ৰমেশৰ খাতাত ₹২৫০ আশীৰ্বাদ আটা লিখক"',
    tag1: '✓ ৰমেশৰ বাকী খাতাত যোগ হ’ল • ₹২৫০',
    cmd2: '"২ কেজি চেনি নগদ বিক্ৰী ₹৯০ যোগ কৰক"',
    tag2: '✓ নগদ বিক্ৰী +₹৯০ • ষ্টক আপডেট',
    cmd3: '"পূৰবী গাখীৰৰ এক্সপায়াৰী চাওক"',
    tag3: '⚠️ ৪টা পেকেট কাইলৈ ৰাতিপুৱা উকলিব',
  ),
  LanguageData(
    code: 'ur',
    nativeName: 'اردو',
    englishName: 'Urdu',
    regionStore: 'کریانہ اسٹور (Kirana Store)',
    isRtl: true,
    navSub: 'اسمارٹ کریانہ اسسٹنٹ',
    trustPill: '50,000+ دکانداروں کا بھروسہ',
    storeBanner: 'برکت کریانہ اسٹور',
    liveBadge: 'لائیو کھاتہ',
    savedBadge: 'محفوظ ہوگیا',
    tapHint: 'آواز سے حساب چیک کرنے کے لیے ٹیپ کریں',
    headlinePrefix: 'اپنی دکان کو ',
    headlineHighlight: 'اسمارٹ اور آسان بنائیں',
    headlineSuffix: '',
    subheadline:
        'صرف اپنی آواز سے روزانہ کی فروخت، ادھار کھاتہ، اسٹاک کی قیمتیں اور ایکسپائری الرٹس بغیر کسی پریشانی کے چلائیں۔',
    b1Title: 'وائس انٹری (Voice)',
    b1Sub: 'بول کر حساب لکھیں',
    b2Title: 'ڈیجیٹل کھاتہ (Khata)',
    b2Sub: 'ادھار ٹریکنگ',
    b3Title: 'اسمارٹ اسٹاک (Stock)',
    b3Sub: 'ایکسپائری اور کم اسٹاک الرٹ',
    ctaText: 'شروع کریں (Get Started)',
    ctaLoading: 'ShopMate کھل رہا ہے...',
    microCopy: '100% مفت • بھارت کے کریانہ اسٹورز کے لیے تیار کردہ 🇮🇳',
    dashTitle: 'Loading ShopMate Dashboard...',
    dashSub: 'آپ کا وائس کھاتہ اور اسمارٹ اسٹاک تیار ہو رہا ہے',
    backBtn: '← ویلکم اسکرین پر واپس جائیں',
    cmd1: '"رمیش کے کھاتے میں ₹250 آشیرواد آٹا لکھو"',
    tag1: '✓ رمیش ادھار کھاتے میں محفوظ • ₹250',
    cmd2: '"2 کلو چینی نقد فروخت ₹90 شامل کریں"',
    tag2: '✓ نقد فروخت +₹90 • اسٹاک اپ ڈیٹ',
    cmd3: '"امول دودھ کی ایکسپائری چیک کریں"',
    tag3: '⚠️ 4 پیکٹ کل صبح ختم ہو رہے ہیں',
  ),
];

class ShopMateWelcomeScreen extends StatefulWidget {
  const ShopMateWelcomeScreen({super.key});

  @override
  State<ShopMateWelcomeScreen> createState() => _ShopMateWelcomeScreenState();
}

class _ShopMateWelcomeScreenState extends State<ShopMateWelcomeScreen> {
  int _selectedLangIndex = 0;
  int _voiceSampleIndex = 0;
  bool _isLoadingDashboard = false;
  bool _showDashboard = false;
  bool _showSplash = true;
  bool _splashLogoVisible = false;
  bool _splashBrandVisible = false;
  bool _splashProgressStarted = false;
  bool _splashExiting = false;
  final PageController _shopSliderController = PageController();
  int _currentShopSlide = 0;
  Timer? _shopSliderTimer;

  static const List<String> _shopImages = [
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
    'assets/images/5.jpg',
    'assets/images/6.jpg',
    'assets/images/7.jpg',
  ];

  @override
  void initState() {
    super.initState();
    _triggerSplashSequence();
 _shopSliderTimer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (!mounted || !_shopSliderController.hasClients) return;
      final currentPage = _shopSliderController.page?.round() ?? 0;
      _shopSliderController.animateToPage(
        currentPage + 1,
        duration: const Duration(milliseconds: 550),
        curve: Curves.easeInOutCubic,
      );
    });
  }

  @override
  void dispose() {
    _shopSliderTimer?.cancel();
    _shopSliderController.dispose();
    super.dispose();
  }

  void _triggerSplashSequence() {
    setState(() {
      _showSplash = true;
      _splashLogoVisible = false;
      _splashBrandVisible = false;
      _splashProgressStarted = false;
      _splashExiting = false;
    });

    // 1. 0.0s – 0.6s: Logo Pop-In + Saffron soundwave ring
    Future.delayed(const Duration(milliseconds: 60), () {
      if (!mounted) return;
      setState(() {
        _splashLogoVisible = true;
      });
    });

    // 2. 0.5s – 1.2s: Brand Name & Tagline Reveal
    Future.delayed(const Duration(milliseconds: 500), () {
      if (!mounted) return;
      setState(() {
        _splashBrandVisible = true;
      });
    });

    // 3. 1.0s – 2.2s: Progress Bar (0% to 100%) & Micro-Status
    Future.delayed(const Duration(milliseconds: 1000), () {
      if (!mounted) return;
      setState(() {
        _splashProgressStarted = true;
      });
    });

    // 4. 2.2s – 2.6s: Smooth Exit Transition (fade out + slide up -16px)
    Future.delayed(const Duration(milliseconds: 3800), () {
      if (!mounted) return;
      setState(() {
        _splashExiting = true;
      });
    });

    // Unmount splash overlay at 2.6s after exit animation completes
    Future.delayed(const Duration(milliseconds: 4200), () {
      if (!mounted) return;
      setState(() {
        _showSplash = false;
      });
    });
  }
  

  LanguageData get _lang => kLanguages[_selectedLangIndex];

  void _selectLanguage(int index) {
    setState(() {
      _selectedLangIndex = index;
      _voiceSampleIndex = 0;
    });
  }

  void _cycleVoiceCommand([int? forcedIndex]) {
    setState(() {
      if (forcedIndex != null) {
        _voiceSampleIndex = forcedIndex.remainder(3);
      } else {
        _voiceSampleIndex = (_voiceSampleIndex + 1).remainder(3);
      }
    });
  }

  void _openLanguageBottomSheet() {
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.white,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) {
        return DraggableScrollableSheet(
          expand: false,
          initialChildSize: 0.68,
          maxChildSize: 0.85,
          minChildSize: 0.45,
          builder: (context, scrollController) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      width: 44,
                      height: 5,
                      decoration: BoxDecoration(
                        color: const Color(0xFFCBD5E1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 14),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Choose Your Language • भाषा चुनें',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFF0F172A),
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            'ಕನ್ನಡ • తెలుగు • தமிழ் • മലയാളം + 9 more',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF64748B),
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.close_rounded),
                      ),
                    ],
                  ),
                  const Divider(height: 20),
                  Expanded(
                    child: GridView.builder(
                      controller: scrollController,
                      itemCount: kLanguages.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        childAspectRatio: 2.3,
                      ),
                      itemBuilder: (context, index) {
                        final item = kLanguages[index];
                        final isSelected = index == _selectedLangIndex;
                        return InkWell(
                          borderRadius: BorderRadius.circular(14),
                          onTap: () {
                            _selectLanguage(index);
                            Navigator.pop(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? const Color(0xFFEFF6FF)
                                  : const Color(0xFFF8FAFC),
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(
                                color: isSelected
                                    ? const Color(0xFF1E40AF)
                                    : const Color(0xFFE2E8F0),
                                width: isSelected ? 2 : 1,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        item.nativeName,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w800,
                                          color: isSelected
                                              ? const Color(0xFF1E40AF)
                                              : const Color(0xFF0F172A),
                                        ),
                                      ),
                                      Text(
                                        '${item.englishName} • ${item.regionStore}',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontSize: 10,
                                          color: Color(0xFF64748B),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                if (isSelected)
                                  const CircleAvatar(
                                    radius: 10,
                                    backgroundColor: Color(0xFF1E40AF),
                                    child: Icon(
                                      Icons.check,
                                      size: 13,
                                      color: Colors.white,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  Future<void> _handleGetStarted() async {
    if (_isLoadingDashboard) return;
    setState(() {
      _isLoadingDashboard = true;
    });
    await Future<void>.delayed(const Duration(milliseconds: 550));
    if (!mounted) return;
    setState(() {
      _isLoadingDashboard = false;
      _showDashboard = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF09090B),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 480),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 550),
            curve: Curves.easeInOutCubic,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: const [
                  Color(0xFFF3ECE1), // Warm Beige
                  Color(0xFFF3ECE1), // Warm Beige
                  Color(0xFFF3ECE1), // Warm Beige
                ],
                stops: const [0.0, 0.48, 1.0],
              ),// LinearGradient
              boxShadow: [
                BoxShadow(
                  color: Color(0x260F172A),
                  blurRadius: 32,
                  offset: Offset(0, 12),
                ),
              ],
            ),
            child: Stack(
              children: [
                SafeArea(
                  child: Directionality(
                    textDirection:
                        _lang.isRtl ? TextDirection.rtl : TextDirection.ltr,
                    child: _showDashboard
                        ? _buildDashboardContent()
                        : _buildWelcomeContent(),
                  ),
                ),
                if (_showSplash)
                  Positioned.fill(
                    child: _buildSplashScreen(),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildDashboardContent() {
    return SizedBox.expand(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top-Left Clickable Profile Button
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  // Profile details will go here next
                },
                borderRadius: BorderRadius.circular(24),
                child: Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xFF5F8575),
                      width: 1.5,
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x14000000),
                        blurRadius: 8,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.person_rounded,
                    color: Color(0xFF4E342E),
                    size: 24,
                  ),
                ),
              ),
            ),

            const Spacer(),

            // Bottom ShopMate Mini Robot + Pop-up + Text Box + Mic
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.75),
                borderRadius: BorderRadius.circular(22),
                border: Border.all(
                  color: const Color(0xFFCBD5E1),
                  width: 1,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x12000000),
                    blurRadius: 12,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Mini Robot + "What shall I do?" Pop-up Bubble
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Mini Robot Avatar ("ShopMate")
                      Column(
                        children: [
                          Container(
                            width: 42,
                            height: 42,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: const Color(0xFF5F8575),
                                width: 2,
                              ),
                            ),
                           child: ClipOval(
                        child: Image.asset(
                          'assets/images/shopmate_robot.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                          const SizedBox(height: 3),
                          const Text(
                            'ShopMate',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFF4E342E),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 10),
                      // Speech Bubble Pop-up beside the robot
                      Flexible(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 9,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                              bottomLeft: Radius.circular(4),
                            ),
                            border: Border.all(
                              color: const Color(0xFF5F8575),
                              width: 1.2,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0x0D000000),
                                blurRadius: 6,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: const Text(
                            'What shall I do?',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF1E293B),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  // Text Box + Mic Button Row
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 44,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(22),
                            border: Border.all(
                              color: const Color(0xFFCBD5E1),
                            ),
                          ),
                          child: const TextField(
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF1E293B),
                            ),
                            decoration: InputDecoration(
                              hintText: 'Type a command or ask ShopMate...',
                              hintStyle: TextStyle(
                                fontSize: 12.5,
                                color: Color(0xFF64748B),
                              ),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 11,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      // Mic Button
                      Material(
                        color: const Color(0xFF5F8575),
                        shape: const CircleBorder(),
                        elevation: 2,
                        child: InkWell(
                          onTap: () {
                            // Voice input action next
                          },
                          customBorder: const CircleBorder(),
                          child: const SizedBox(
                            width: 44,
                            height: 44,
                            child: Icon(
                              Icons.mic_rounded,
                              color: Colors.white,
                              size: 22,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _buildWelcomeContent() {
    final currentCmd = _lang.voiceCmd(_voiceSampleIndex);
    final currentTag = _lang.voiceTag(_voiceSampleIndex);

    return Column(
      children: [
        // 1. Top Navigation Bar + Language Switcher
        Container(
          color: Colors.transparent,
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 42,
                        height: 42,
                        decoration: BoxDecoration(
                          color: const Color(0xFF1E40AF),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            const Center(
                              child: Icon(
                                Icons.storefront_rounded,
                                color: Colors.white,
                                size: 24,
                              ),
                            ),
                            Positioned(
                              top: -3,
                              right: -3,
                              child: Container(
                                width: 12,
                                height: 12,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF10B981),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'ShopMate',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Color(0xFF4E342E), // Rich Espresso Brown
                              letterSpacing: -0.5,
                            ),
                          ),
                          Text(
                            _lang.navSub,
                            style: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF94A3B8),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Tooltip(
                        message: 'Replay Intro',
                        child: InkWell(
                          onTap: _triggerSplashSequence,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            width: 34,
                            height: 34,
                            margin: const EdgeInsets.symmetric(horizontal: 6),
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFF7ED),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: const Color(0xFFFED7AA),
                              ),
                            ),
                            child: const Icon(
                              Icons.replay_rounded,
                              size: 17,
                              color: Color(0xFFF97316),
                            ),
                          ),
                        ),
                      ),
                  InkWell(
                    onTap: _openLanguageBottomSheet,
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 7,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFEFF6FF),
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: const Color(0xFFBFDBFE)),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.language_rounded,
                            size: 16,
                            color: Color(0xFF1E40AF),
                          ),
                          const SizedBox(width: 6),
                          Text(
                            _lang.nativeName,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFF1E40AF),
                            ),
                          ),
                          const SizedBox(width: 4),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 6,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xFF1E40AF),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text(
                              '13 भाषे',
                              style: TextStyle(
                                fontSize: 9,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 32,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: kLanguages.length,
                  separatorBuilder: (_, _) => const SizedBox(width: 6),
                  itemBuilder: (context, index) {
                    final item = kLanguages[index];
                    final isSelected = index == _selectedLangIndex;
                    return GestureDetector(
                      onTap: () => _selectLanguage(index),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 5,
                        ),
                      decoration: BoxDecoration(
             color: isSelected
                    ? const Color(0xFF5F8575) // Selected: Sage Green
                    : Colors.white, // Unselected: White
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: isSelected
                      ? const Color(0xFF5F8575)
                      : const Color(0xFFCBD5E1),
                ), // Border.all
           ),  
                        child: Center(
                          child: Text(
                            item.nativeName,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: isSelected
                        ? Colors.white
                        : const Color(0xFF1E293B),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),

        // Scrollable Body
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFECFDF5),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: const Color(0xFFA7F3D0)),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 7,
                        height: 7,
                        decoration: const BoxDecoration(
                          color: Color(0xFF10B981),
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(width: 6),
                      Text(
                        _lang.trustPill,
                        style: const TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF047857),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),

                // 2. Hero Illustration Card
                Container(
            height: 225,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x181E3A8A),
                  blurRadius: 20,
                  offset: Offset(0, 8),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  PageView.builder(
                    controller: _shopSliderController,
                    scrollBehavior: const MaterialScrollBehavior().copyWith(
                      dragDevices: {
                        PointerDeviceKind.mouse,
                        PointerDeviceKind.touch,
                        PointerDeviceKind.trackpad,
                      },
                    ),
                    onPageChanged: (index) {
                      setState(() {
                        _currentShopSlide = index % _shopImages.length;
                      });
                    },
                    itemBuilder: (context, index) {
                      return Image.asset(
                        _shopImages[index % _shopImages.length],
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                  // Subtle bottom gradient for clean badge visibility
                  IgnorePointer(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black.withAlpha(15),
                            Colors.black.withAlpha(150),
                          ],
                          stops: const [0.45, 0.72, 1.0],
                        ),
                      ),
                    ),
                  ),
                  // Compact floating Voice Khata badge + page indicator dots
                  Positioned(
                    left: 14,
                    right: 14,
                    bottom: 12,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: List.generate(
                            _shopImages.length,
                            (dotIndex) => AnimatedContainer(
                              duration: const Duration(milliseconds: 250),
                              margin: const EdgeInsets.only(left: 4),
                              width: _currentShopSlide == dotIndex ? 16 : 6,
                              height: 6,
                              decoration: BoxDecoration(
                                color: _currentShopSlide == dotIndex
                                    ? const Color(0xFFF97316)
                                    : Colors.white.withAlpha(150),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
                const SizedBox(height: 16),

                // 3. Value Proposition Copy
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                      color: Color(0xFF5F8575),                    height: 1.2,
                    ),
                    children: const [
              TextSpan(text: 'Manage Your Shop '),
              TextSpan(
                text: 'Smartly',
                style: TextStyle(color: Colors.black),
              ),
            ],
                  ),
                ),
                const SizedBox(height: 24),
                // 5. Bottom Sticky Action Area
        Container(
          padding: const EdgeInsets.fromLTRB(0, 4, 0, 14),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: _handleGetStarted,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1E3A8A),
foregroundColor: Colors.white,
elevation: 4,
shadowColor: const Color(0x661E3A8A),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: _isLoadingDashboard
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(
                                strokeWidth: 2.5,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              _lang.ctaLoading,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Text(
                                _lang.ctaText,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            const Icon(Icons.arrow_forward_rounded, size: 22),
                          ],
                        ),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                _lang.microCopy,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF94A3B8),
                ),
              ),
            ],
          ),
        ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildGroceryItem({
    required IconData icon,
    required String label,
    required String price,
    required Color color,
  }) {
    return Container(
      width: 78,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFFE2E8F0)),
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 16,
            backgroundColor: color.withAlpha(30),
            child: Icon(icon, color: color, size: 18),
          ),
          const SizedBox(height: 6),
          Text(
            label,
            style: const TextStyle(
              fontSize: 9,
              fontWeight: FontWeight.w800,
              color: Color(0xFF475569),
            ),
          ),
          Text(
            price,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w900,
              color: Color(0xFF0F172A),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureBadge({
    required String emoji,
    required String title,
    required String subtitle,
    required Color badgeColor,
    required Color borderColor,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: borderColor),
        ),
        child: Column(
          children: [
            Container(
              width: 38,
              height: 38,
              decoration: BoxDecoration(
                color: badgeColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(emoji, style: const TextStyle(fontSize: 20)),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              title,
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w800,
                color: Color(0xFF0F172A),
              ),
            ),
            const SizedBox(height: 3),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: Color(0xFF64748B),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDashboardPlaceholder() {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 76,
            height: 76,
            decoration: BoxDecoration(
              color: const Color(0xFF1E40AF),
              borderRadius: BorderRadius.circular(24),
            ),
            child: const Icon(
              Icons.storefront_rounded,
              color: Colors.white,
              size: 40,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            _lang.dashTitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w900,
              color: Color(0xFF0F172A),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            _lang.dashSub,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              color: Color(0xFF475569),
            ),
          ),
          const SizedBox(height: 24),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: const Color(0xFFE2E8F0)),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Today's Galla (Sales)",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF64748B),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFECFDF5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        '+18% Today',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF059669),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '₹ 14,850',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w900,
                      color: Color(0xFF1E40AF),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          OutlinedButton.icon(
            onPressed: () {
              setState(() {
                _showDashboard = false;
              });
            },
            icon: const Icon(Icons.arrow_back_rounded, size: 18),
            label: Text(_lang.backBtn),
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color(0xFF1E40AF),
              side: const BorderSide(color: Color(0xFF1E40AF), width: 1.5),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget _buildSplashScreen() {
    return AnimatedSlide(
      offset: _splashExiting ? const Offset(0, -0.03) : Offset.zero,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOutCubic,
      child: AnimatedOpacity(
        opacity: _splashExiting ? 0.0 : 1.0,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF1E3A8A), Color(0xFF1E40AF)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Subtle floating decorative background glows
              Positioned(
                top: -60,
                right: -50,
                child: Container(
                  width: 220,
                  height: 220,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withAlpha(14),
                  ),
                ),
              ),
              Positioned(
                bottom: -80,
                left: -60,
                child: Container(
                  width: 260,
                  height: 260,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xFFF97316).withAlpha(28),
                  ),
                ),
              ),

              // Main Centered Sequence
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // 1. 0.0s – 0.6s: Logo Pop-In + Pulsing Saffron Soundwave Ring
                    AnimatedScale(
                      scale: _splashLogoVisible ? 1.0 : 0.25,
                      duration: const Duration(milliseconds: 600),
                      curve: Curves.elasticOut,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 900),
                            curve: Curves.easeOutQuad,
                            width: _splashBrandVisible ? 132 : 96,
                            height: _splashBrandVisible ? 132 : 96,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(36),
                              border: Border.all(
                                color: const Color(0xFFF97316).withAlpha(
                                  _splashBrandVisible ? 90 : 180,
                                ),
                                width: 2.5,
                              ),
                            ),
                          ),
                          Container(
                            width: 106,
                            height: 106,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color(0xFFF97316).withAlpha(45),
                            ),
                          ),
                          Container(
                            width: 88,
                            height: 88,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(24),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0x40000000),
                                  blurRadius: 24,
                                  offset: Offset(0, 10),
                                ),
                              ],
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                const Icon(
                                  Icons.storefront_rounded,
                                  size: 46,
                                  color: Color(0xFF1E40AF),
                                ),
                                Positioned(
                                  bottom: 10,
                                  right: 10,
                                  child: Container(
                                    width: 24,
                                    height: 24,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFF97316),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.graphic_eq_rounded,
                                      size: 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),

                    // 2. 0.5s – 1.2s: Brand Reveal ("ShopMate" + Tagline)
                    AnimatedSlide(
                      offset: _splashBrandVisible
                          ? Offset.zero
                          : const Offset(0, 0.25),
                      duration: const Duration(milliseconds: 550),
                      curve: Curves.easeOutCubic,
                      child: AnimatedOpacity(
                        opacity: _splashBrandVisible ? 1.0 : 0.0,
                        duration: const Duration(milliseconds: 550),
                        child: const Column(
                          children: [
                            Text(
                              'ShopMate',
                              style: TextStyle(
                                fontSize: 34,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                                letterSpacing: -0.8,
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'Your Smart Saathi',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFFDE68A),
                                letterSpacing: 0.3,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 36),

                    // 3. 1.0s – 2.2s: Sleek Progress Bar (6px) & Micro-Status
                    AnimatedOpacity(
                      opacity: _splashProgressStarted ? 1.0 : 0.0,
                      duration: const Duration(milliseconds: 300),
                      child: Column(
                        children: [
                          Container(
                            width: 220,
                            height: 6,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              color: Colors.white.withAlpha(45),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 1150),
                              curve: Curves.easeInOut,
                              width: _splashProgressStarted ? 220 : 0,
                              height: 6,
                              decoration: BoxDecoration(
                                color: const Color(0xFFF97316),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          const SizedBox(height: 12),
                          const Text(
                            'Setting up Voice Khata & Stock...',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFFDBEAFE),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}