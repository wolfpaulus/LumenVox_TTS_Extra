# LumenVox_TTS_Extra

LumenVox is a speech automation solutions company providing core speech technologies that include the LumenVox Speech Recognizer, Text-to-Speech Engine, Call Progress Analysis, and Speech Tuner, Natural language solutions support and Multifactor Biometric Authentication. We have won numerous awards for innovation and technical excellence. Based on industry standards, LumenVox's core Speech technology is certified as one of the most accurate, natural sounding, and reliable solutions in the industry. The LumenVox technology provides tools for you to effectively deploy speech-enabled applications to improve the Call Center CX and ROI with LumenVox' flexible, cost-effective software suite.

This image serves as a base for a Java Webservice implementation providing LumenVox based Speech Synthesis. It contains many voices, the web, native libs, lame MP3 encoder, the LumenVox Core, Client, and LicenseServer.

The license code needs to be provided as an enviroment variable at container launch like this:

>docker run -d --name lvox_extra -e LV_LIC={12345} -p8080:8080 lumenvox_TTS_Extra



