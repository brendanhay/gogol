{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.TextToSpeech.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.TextToSpeech.Types.Product where

import           Network.Google.Prelude
import           Network.Google.TextToSpeech.Types.Sum

-- | Description of audio data to be synthesized.
--
-- /See:/ 'audioConfig' smart constructor.
data AudioConfig = AudioConfig'
    { _acVolumeGainDB    :: !(Maybe (Textual Double))
    , _acSampleRateHertz :: !(Maybe (Textual Int32))
    , _acAudioEncoding   :: !(Maybe AudioConfigAudioEncoding)
    , _acSpeakingRate    :: !(Maybe (Textual Double))
    , _acPitch           :: !(Maybe (Textual Double))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AudioConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acVolumeGainDB'
--
-- * 'acSampleRateHertz'
--
-- * 'acAudioEncoding'
--
-- * 'acSpeakingRate'
--
-- * 'acPitch'
audioConfig
    :: AudioConfig
audioConfig =
    AudioConfig'
    { _acVolumeGainDB = Nothing
    , _acSampleRateHertz = Nothing
    , _acAudioEncoding = Nothing
    , _acSpeakingRate = Nothing
    , _acPitch = Nothing
    }

-- | Optional volume gain (in dB) of the normal native volume supported by
-- the specific voice, in the range [-96.0, 16.0]. If unset, or set to a
-- value of 0.0 (dB), will play at normal native signal amplitude. A value
-- of -6.0 (dB) will play at approximately half the amplitude of the normal
-- native signal amplitude. A value of +6.0 (dB) will play at approximately
-- twice the amplitude of the normal native signal amplitude. Strongly
-- recommend not to exceed +10 (dB) as there\'s usually no effective
-- increase in loudness for any value greater than that.
acVolumeGainDB :: Lens' AudioConfig (Maybe Double)
acVolumeGainDB
  = lens _acVolumeGainDB
      (\ s a -> s{_acVolumeGainDB = a})
      . mapping _Coerce

-- | The synthesis sample rate (in hertz) for this audio. Optional. If this
-- is different from the voice\'s natural sample rate, then the synthesizer
-- will honor this request by converting to the desired sample rate (which
-- might result in worse audio quality), unless the specified sample rate
-- is not supported for the encoding chosen, in which case it will fail the
-- request and return google.rpc.Code.INVALID_ARGUMENT.
acSampleRateHertz :: Lens' AudioConfig (Maybe Int32)
acSampleRateHertz
  = lens _acSampleRateHertz
      (\ s a -> s{_acSampleRateHertz = a})
      . mapping _Coerce

-- | Required. The format of the requested audio byte stream.
acAudioEncoding :: Lens' AudioConfig (Maybe AudioConfigAudioEncoding)
acAudioEncoding
  = lens _acAudioEncoding
      (\ s a -> s{_acAudioEncoding = a})

-- | Optional speaking rate\/speed, in the range [0.25, 4.0]. 1.0 is the
-- normal native speed supported by the specific voice. 2.0 is twice as
-- fast, and 0.5 is half as fast. If unset(0.0), defaults to the native 1.0
-- speed. Any other values \< 0.25 or > 4.0 will return an error.
acSpeakingRate :: Lens' AudioConfig (Maybe Double)
acSpeakingRate
  = lens _acSpeakingRate
      (\ s a -> s{_acSpeakingRate = a})
      . mapping _Coerce

-- | Optional speaking pitch, in the range [-20.0, 20.0]. 20 means increase
-- 20 semitones from the original pitch. -20 means decrease 20 semitones
-- from the original pitch.
acPitch :: Lens' AudioConfig (Maybe Double)
acPitch
  = lens _acPitch (\ s a -> s{_acPitch = a}) .
      mapping _Coerce

instance FromJSON AudioConfig where
        parseJSON
          = withObject "AudioConfig"
              (\ o ->
                 AudioConfig' <$>
                   (o .:? "volumeGainDb") <*> (o .:? "sampleRateHertz")
                     <*> (o .:? "audioEncoding")
                     <*> (o .:? "speakingRate")
                     <*> (o .:? "pitch"))

instance ToJSON AudioConfig where
        toJSON AudioConfig'{..}
          = object
              (catMaybes
                 [("volumeGainDb" .=) <$> _acVolumeGainDB,
                  ("sampleRateHertz" .=) <$> _acSampleRateHertz,
                  ("audioEncoding" .=) <$> _acAudioEncoding,
                  ("speakingRate" .=) <$> _acSpeakingRate,
                  ("pitch" .=) <$> _acPitch])

-- | Description of which voice to use for a synthesis request.
--
-- /See:/ 'voiceSelectionParams' smart constructor.
data VoiceSelectionParams = VoiceSelectionParams'
    { _vspLanguageCode :: !(Maybe Text)
    , _vspSsmlGender   :: !(Maybe VoiceSelectionParamsSsmlGender)
    , _vspName         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VoiceSelectionParams' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vspLanguageCode'
--
-- * 'vspSsmlGender'
--
-- * 'vspName'
voiceSelectionParams
    :: VoiceSelectionParams
voiceSelectionParams =
    VoiceSelectionParams'
    { _vspLanguageCode = Nothing
    , _vspSsmlGender = Nothing
    , _vspName = Nothing
    }

-- | The language (and optionally also the region) of the voice expressed as
-- a [BCP-47](https:\/\/www.rfc-editor.org\/rfc\/bcp\/bcp47.txt) language
-- tag, e.g. \"en-US\". Required. This should not include a script tag
-- (e.g. use \"cmn-cn\" rather than \"cmn-Hant-cn\"), because the script
-- will be inferred from the input provided in the SynthesisInput. The TTS
-- service will use this parameter to help choose an appropriate voice.
-- Note that the TTS service may choose a voice with a slightly different
-- language code than the one selected; it may substitute a different
-- region (e.g. using en-US rather than en-CA if there isn\'t a Canadian
-- voice available), or even a different language, e.g. using \"nb\"
-- (Norwegian Bokmal) instead of \"no\" (Norwegian)\".
vspLanguageCode :: Lens' VoiceSelectionParams (Maybe Text)
vspLanguageCode
  = lens _vspLanguageCode
      (\ s a -> s{_vspLanguageCode = a})

-- | The preferred gender of the voice. Optional; if not set, the service
-- will choose a voice based on the other parameters such as language_code
-- and name. Note that this is only a preference, not requirement; if a
-- voice of the appropriate gender is not available, the synthesizer should
-- substitute a voice with a different gender rather than failing the
-- request.
vspSsmlGender :: Lens' VoiceSelectionParams (Maybe VoiceSelectionParamsSsmlGender)
vspSsmlGender
  = lens _vspSsmlGender
      (\ s a -> s{_vspSsmlGender = a})

-- | The name of the voice. Optional; if not set, the service will choose a
-- voice based on the other parameters such as language_code and gender.
vspName :: Lens' VoiceSelectionParams (Maybe Text)
vspName = lens _vspName (\ s a -> s{_vspName = a})

instance FromJSON VoiceSelectionParams where
        parseJSON
          = withObject "VoiceSelectionParams"
              (\ o ->
                 VoiceSelectionParams' <$>
                   (o .:? "languageCode") <*> (o .:? "ssmlGender") <*>
                     (o .:? "name"))

instance ToJSON VoiceSelectionParams where
        toJSON VoiceSelectionParams'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _vspLanguageCode,
                  ("ssmlGender" .=) <$> _vspSsmlGender,
                  ("name" .=) <$> _vspName])

-- | The top-level message sent by the client for the \`SynthesizeSpeech\`
-- method.
--
-- /See:/ 'synthesizeSpeechRequest' smart constructor.
data SynthesizeSpeechRequest = SynthesizeSpeechRequest'
    { _ssrAudioConfig :: !(Maybe AudioConfig)
    , _ssrInput       :: !(Maybe SynthesisInput)
    , _ssrVoice       :: !(Maybe VoiceSelectionParams)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SynthesizeSpeechRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssrAudioConfig'
--
-- * 'ssrInput'
--
-- * 'ssrVoice'
synthesizeSpeechRequest
    :: SynthesizeSpeechRequest
synthesizeSpeechRequest =
    SynthesizeSpeechRequest'
    { _ssrAudioConfig = Nothing
    , _ssrInput = Nothing
    , _ssrVoice = Nothing
    }

-- | Required. The configuration of the synthesized audio.
ssrAudioConfig :: Lens' SynthesizeSpeechRequest (Maybe AudioConfig)
ssrAudioConfig
  = lens _ssrAudioConfig
      (\ s a -> s{_ssrAudioConfig = a})

-- | Required. The Synthesizer requires either plain text or SSML as input.
ssrInput :: Lens' SynthesizeSpeechRequest (Maybe SynthesisInput)
ssrInput = lens _ssrInput (\ s a -> s{_ssrInput = a})

-- | Required. The desired voice of the synthesized audio.
ssrVoice :: Lens' SynthesizeSpeechRequest (Maybe VoiceSelectionParams)
ssrVoice = lens _ssrVoice (\ s a -> s{_ssrVoice = a})

instance FromJSON SynthesizeSpeechRequest where
        parseJSON
          = withObject "SynthesizeSpeechRequest"
              (\ o ->
                 SynthesizeSpeechRequest' <$>
                   (o .:? "audioConfig") <*> (o .:? "input") <*>
                     (o .:? "voice"))

instance ToJSON SynthesizeSpeechRequest where
        toJSON SynthesizeSpeechRequest'{..}
          = object
              (catMaybes
                 [("audioConfig" .=) <$> _ssrAudioConfig,
                  ("input" .=) <$> _ssrInput,
                  ("voice" .=) <$> _ssrVoice])

-- | The message returned to the client by the \`ListVoices\` method.
--
-- /See:/ 'listVoicesResponse' smart constructor.
newtype ListVoicesResponse = ListVoicesResponse'
    { _lvrVoices :: Maybe [Voice]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListVoicesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lvrVoices'
listVoicesResponse
    :: ListVoicesResponse
listVoicesResponse =
    ListVoicesResponse'
    { _lvrVoices = Nothing
    }

-- | The list of voices.
lvrVoices :: Lens' ListVoicesResponse [Voice]
lvrVoices
  = lens _lvrVoices (\ s a -> s{_lvrVoices = a}) .
      _Default
      . _Coerce

instance FromJSON ListVoicesResponse where
        parseJSON
          = withObject "ListVoicesResponse"
              (\ o ->
                 ListVoicesResponse' <$> (o .:? "voices" .!= mempty))

instance ToJSON ListVoicesResponse where
        toJSON ListVoicesResponse'{..}
          = object (catMaybes [("voices" .=) <$> _lvrVoices])

-- | Contains text input to be synthesized. Either \`text\` or \`ssml\` must
-- be supplied. Supplying both or neither returns
-- google.rpc.Code.INVALID_ARGUMENT. The input size is limited to 5000
-- characters.
--
-- /See:/ 'synthesisInput' smart constructor.
data SynthesisInput = SynthesisInput'
    { _siText :: !(Maybe Text)
    , _siSsml :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SynthesisInput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siText'
--
-- * 'siSsml'
synthesisInput
    :: SynthesisInput
synthesisInput =
    SynthesisInput'
    { _siText = Nothing
    , _siSsml = Nothing
    }

-- | The raw text to be synthesized.
siText :: Lens' SynthesisInput (Maybe Text)
siText = lens _siText (\ s a -> s{_siText = a})

-- | The SSML document to be synthesized. The SSML document must be valid and
-- well-formed. Otherwise the RPC will fail and return
-- google.rpc.Code.INVALID_ARGUMENT. For more information, see
-- [SSML](\/speech\/text-to-speech\/docs\/ssml).
siSsml :: Lens' SynthesisInput (Maybe Text)
siSsml = lens _siSsml (\ s a -> s{_siSsml = a})

instance FromJSON SynthesisInput where
        parseJSON
          = withObject "SynthesisInput"
              (\ o ->
                 SynthesisInput' <$>
                   (o .:? "text") <*> (o .:? "ssml"))

instance ToJSON SynthesisInput where
        toJSON SynthesisInput'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _siText, ("ssml" .=) <$> _siSsml])

-- | The message returned to the client by the \`SynthesizeSpeech\` method.
--
-- /See:/ 'synthesizeSpeechResponse' smart constructor.
newtype SynthesizeSpeechResponse = SynthesizeSpeechResponse'
    { _ssrAudioContent :: Maybe Bytes
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SynthesizeSpeechResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssrAudioContent'
synthesizeSpeechResponse
    :: SynthesizeSpeechResponse
synthesizeSpeechResponse =
    SynthesizeSpeechResponse'
    { _ssrAudioContent = Nothing
    }

-- | The audio data bytes encoded as specified in the request, including the
-- header (For LINEAR16 audio, we include the WAV header). Note: as with
-- all bytes fields, protobuffers use a pure binary representation, whereas
-- JSON representations use base64.
ssrAudioContent :: Lens' SynthesizeSpeechResponse (Maybe ByteString)
ssrAudioContent
  = lens _ssrAudioContent
      (\ s a -> s{_ssrAudioContent = a})
      . mapping _Bytes

instance FromJSON SynthesizeSpeechResponse where
        parseJSON
          = withObject "SynthesizeSpeechResponse"
              (\ o ->
                 SynthesizeSpeechResponse' <$> (o .:? "audioContent"))

instance ToJSON SynthesizeSpeechResponse where
        toJSON SynthesizeSpeechResponse'{..}
          = object
              (catMaybes
                 [("audioContent" .=) <$> _ssrAudioContent])

-- | Description of a voice supported by the TTS service.
--
-- /See:/ 'voice' smart constructor.
data Voice = Voice'
    { _vLanguageCodes          :: !(Maybe [Text])
    , _vNATuralSampleRateHertz :: !(Maybe (Textual Int32))
    , _vSsmlGender             :: !(Maybe VoiceSsmlGender)
    , _vName                   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Voice' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vLanguageCodes'
--
-- * 'vNATuralSampleRateHertz'
--
-- * 'vSsmlGender'
--
-- * 'vName'
voice
    :: Voice
voice =
    Voice'
    { _vLanguageCodes = Nothing
    , _vNATuralSampleRateHertz = Nothing
    , _vSsmlGender = Nothing
    , _vName = Nothing
    }

-- | The languages that this voice supports, expressed as
-- [BCP-47](https:\/\/www.rfc-editor.org\/rfc\/bcp\/bcp47.txt) language
-- tags (e.g. \"en-US\", \"es-419\", \"cmn-tw\").
vLanguageCodes :: Lens' Voice [Text]
vLanguageCodes
  = lens _vLanguageCodes
      (\ s a -> s{_vLanguageCodes = a})
      . _Default
      . _Coerce

-- | The natural sample rate (in hertz) for this voice.
vNATuralSampleRateHertz :: Lens' Voice (Maybe Int32)
vNATuralSampleRateHertz
  = lens _vNATuralSampleRateHertz
      (\ s a -> s{_vNATuralSampleRateHertz = a})
      . mapping _Coerce

-- | The gender of this voice.
vSsmlGender :: Lens' Voice (Maybe VoiceSsmlGender)
vSsmlGender
  = lens _vSsmlGender (\ s a -> s{_vSsmlGender = a})

-- | The name of this voice. Each distinct voice has a unique name.
vName :: Lens' Voice (Maybe Text)
vName = lens _vName (\ s a -> s{_vName = a})

instance FromJSON Voice where
        parseJSON
          = withObject "Voice"
              (\ o ->
                 Voice' <$>
                   (o .:? "languageCodes" .!= mempty) <*>
                     (o .:? "naturalSampleRateHertz")
                     <*> (o .:? "ssmlGender")
                     <*> (o .:? "name"))

instance ToJSON Voice where
        toJSON Voice'{..}
          = object
              (catMaybes
                 [("languageCodes" .=) <$> _vLanguageCodes,
                  ("naturalSampleRateHertz" .=) <$>
                    _vNATuralSampleRateHertz,
                  ("ssmlGender" .=) <$> _vSsmlGender,
                  ("name" .=) <$> _vName])
