{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.VideoIntelligence.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.VideoIntelligence.Types.Product where

import           Network.Google.Prelude
import           Network.Google.VideoIntelligence.Types.Sum

--
-- /See:/ 'googleRpc_StatusDetailsItem' smart constructor.
newtype GoogleRpc_StatusDetailsItem =
  GoogleRpc_StatusDetailsItem'
    { _grsdiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleRpc_StatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grsdiAddtional'
googleRpc_StatusDetailsItem
    :: HashMap Text JSONValue -- ^ 'grsdiAddtional'
    -> GoogleRpc_StatusDetailsItem
googleRpc_StatusDetailsItem pGrsdiAddtional_ =
  GoogleRpc_StatusDetailsItem' {_grsdiAddtional = _Coerce # pGrsdiAddtional_}

-- | Properties of the object. Contains field \'type with type URL.
grsdiAddtional :: Lens' GoogleRpc_StatusDetailsItem (HashMap Text JSONValue)
grsdiAddtional
  = lens _grsdiAddtional
      (\ s a -> s{_grsdiAddtional = a})
      . _Coerce

instance FromJSON GoogleRpc_StatusDetailsItem where
        parseJSON
          = withObject "GoogleRpcStatusDetailsItem"
              (\ o ->
                 GoogleRpc_StatusDetailsItem' <$> (parseJSONObject o))

instance ToJSON GoogleRpc_StatusDetailsItem where
        toJSON = toJSON . _grsdiAddtional

-- | Explicit content annotation (based on per-frame visual signals only). If
-- no explicit content has been detected in a frame, no annotations are
-- present for that frame.
--
-- /See:/ 'googleCloudVideointelligenceV1beta2_ExplicitContentAnnotation' smart constructor.
newtype GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation =
  GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation'
    { _gcvvecaFrames :: Maybe [GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvecaFrames'
googleCloudVideointelligenceV1beta2_ExplicitContentAnnotation
    :: GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation
googleCloudVideointelligenceV1beta2_ExplicitContentAnnotation =
  GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation'
    {_gcvvecaFrames = Nothing}

-- | All video frames where explicit content was detected.
gcvvecaFrames :: Lens' GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation [GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame]
gcvvecaFrames
  = lens _gcvvecaFrames
      (\ s a -> s{_gcvvecaFrames = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation'
                   <$> (o .:? "frames" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation'{..}
          = object
              (catMaybes [("frames" .=) <$> _gcvvecaFrames])

-- | Alternative hypotheses (a.k.a. n-best list).
--
-- /See:/ 'googleCloudVideointelligenceV1_SpeechRecognitionAlternative' smart constructor.
data GoogleCloudVideointelligenceV1_SpeechRecognitionAlternative =
  GoogleCloudVideointelligenceV1_SpeechRecognitionAlternative'
    { _gcvvsraConfidence :: !(Maybe (Textual Double))
    , _gcvvsraWords      :: !(Maybe [GoogleCloudVideointelligenceV1_WordInfo])
    , _gcvvsraTranscript :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_SpeechRecognitionAlternative' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvsraConfidence'
--
-- * 'gcvvsraWords'
--
-- * 'gcvvsraTranscript'
googleCloudVideointelligenceV1_SpeechRecognitionAlternative
    :: GoogleCloudVideointelligenceV1_SpeechRecognitionAlternative
googleCloudVideointelligenceV1_SpeechRecognitionAlternative =
  GoogleCloudVideointelligenceV1_SpeechRecognitionAlternative'
    { _gcvvsraConfidence = Nothing
    , _gcvvsraWords = Nothing
    , _gcvvsraTranscript = Nothing
    }

-- | The confidence estimate between 0.0 and 1.0. A higher number indicates
-- an estimated greater likelihood that the recognized words are correct.
-- This field is typically provided only for the top hypothesis, and only
-- for \`is_final=true\` results. Clients should not rely on the
-- \`confidence\` field as it is not guaranteed to be accurate or
-- consistent. The default of 0.0 is a sentinel value indicating
-- \`confidence\` was not set.
gcvvsraConfidence :: Lens' GoogleCloudVideointelligenceV1_SpeechRecognitionAlternative (Maybe Double)
gcvvsraConfidence
  = lens _gcvvsraConfidence
      (\ s a -> s{_gcvvsraConfidence = a})
      . mapping _Coerce

-- | A list of word-specific information for each recognized word.
gcvvsraWords :: Lens' GoogleCloudVideointelligenceV1_SpeechRecognitionAlternative [GoogleCloudVideointelligenceV1_WordInfo]
gcvvsraWords
  = lens _gcvvsraWords (\ s a -> s{_gcvvsraWords = a})
      . _Default
      . _Coerce

-- | Transcript text representing the words that the user spoke.
gcvvsraTranscript :: Lens' GoogleCloudVideointelligenceV1_SpeechRecognitionAlternative (Maybe Text)
gcvvsraTranscript
  = lens _gcvvsraTranscript
      (\ s a -> s{_gcvvsraTranscript = a})

instance FromJSON
           GoogleCloudVideointelligenceV1_SpeechRecognitionAlternative
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1SpeechRecognitionAlternative"
              (\ o ->
                 GoogleCloudVideointelligenceV1_SpeechRecognitionAlternative'
                   <$>
                   (o .:? "confidence") <*> (o .:? "words" .!= mempty)
                     <*> (o .:? "transcript"))

instance ToJSON
           GoogleCloudVideointelligenceV1_SpeechRecognitionAlternative
         where
        toJSON
          GoogleCloudVideointelligenceV1_SpeechRecognitionAlternative'{..}
          = object
              (catMaybes
                 [("confidence" .=) <$> _gcvvsraConfidence,
                  ("words" .=) <$> _gcvvsraWords,
                  ("transcript" .=) <$> _gcvvsraTranscript])

-- | Video annotation response. Included in the \`response\` field of the
-- \`Operation\` returned by the \`GetOperation\` call of the
-- \`google::longrunning::Operations\` service.
--
-- /See:/ 'googleCloudVideointelligenceV1beta2_AnnotateVideoResponse' smart constructor.
newtype GoogleCloudVideointelligenceV1beta2_AnnotateVideoResponse =
  GoogleCloudVideointelligenceV1beta2_AnnotateVideoResponse'
    { _gcvvavrAnnotationResults :: Maybe [GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_AnnotateVideoResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvavrAnnotationResults'
googleCloudVideointelligenceV1beta2_AnnotateVideoResponse
    :: GoogleCloudVideointelligenceV1beta2_AnnotateVideoResponse
googleCloudVideointelligenceV1beta2_AnnotateVideoResponse =
  GoogleCloudVideointelligenceV1beta2_AnnotateVideoResponse'
    {_gcvvavrAnnotationResults = Nothing}

-- | Annotation results for all videos specified in \`AnnotateVideoRequest\`.
gcvvavrAnnotationResults :: Lens' GoogleCloudVideointelligenceV1beta2_AnnotateVideoResponse [GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults]
gcvvavrAnnotationResults
  = lens _gcvvavrAnnotationResults
      (\ s a -> s{_gcvvavrAnnotationResults = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1beta2_AnnotateVideoResponse
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1beta2AnnotateVideoResponse"
              (\ o ->
                 GoogleCloudVideointelligenceV1beta2_AnnotateVideoResponse'
                   <$> (o .:? "annotationResults" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1beta2_AnnotateVideoResponse
         where
        toJSON
          GoogleCloudVideointelligenceV1beta2_AnnotateVideoResponse'{..}
          = object
              (catMaybes
                 [("annotationResults" .=) <$>
                    _gcvvavrAnnotationResults])

-- | Word-specific information for recognized words. Word information is only
-- included in the response when certain request parameters are set, such
-- as \`enable_word_time_offsets\`.
--
-- /See:/ 'googleCloudVideointelligenceV1_WordInfo' smart constructor.
data GoogleCloudVideointelligenceV1_WordInfo =
  GoogleCloudVideointelligenceV1_WordInfo'
    { _gcvvwiStartTime  :: !(Maybe GDuration)
    , _gcvvwiConfidence :: !(Maybe (Textual Double))
    , _gcvvwiEndTime    :: !(Maybe GDuration)
    , _gcvvwiWord       :: !(Maybe Text)
    , _gcvvwiSpeakerTag :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_WordInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvwiStartTime'
--
-- * 'gcvvwiConfidence'
--
-- * 'gcvvwiEndTime'
--
-- * 'gcvvwiWord'
--
-- * 'gcvvwiSpeakerTag'
googleCloudVideointelligenceV1_WordInfo
    :: GoogleCloudVideointelligenceV1_WordInfo
googleCloudVideointelligenceV1_WordInfo =
  GoogleCloudVideointelligenceV1_WordInfo'
    { _gcvvwiStartTime = Nothing
    , _gcvvwiConfidence = Nothing
    , _gcvvwiEndTime = Nothing
    , _gcvvwiWord = Nothing
    , _gcvvwiSpeakerTag = Nothing
    }

-- | Time offset relative to the beginning of the audio, and corresponding to
-- the start of the spoken word. This field is only set if
-- \`enable_word_time_offsets=true\` and only in the top hypothesis. This
-- is an experimental feature and the accuracy of the time offset can vary.
gcvvwiStartTime :: Lens' GoogleCloudVideointelligenceV1_WordInfo (Maybe Scientific)
gcvvwiStartTime
  = lens _gcvvwiStartTime
      (\ s a -> s{_gcvvwiStartTime = a})
      . mapping _GDuration

-- | Output only. The confidence estimate between 0.0 and 1.0. A higher
-- number indicates an estimated greater likelihood that the recognized
-- words are correct. This field is set only for the top alternative. This
-- field is not guaranteed to be accurate and users should not rely on it
-- to be always provided. The default of 0.0 is a sentinel value indicating
-- \`confidence\` was not set.
gcvvwiConfidence :: Lens' GoogleCloudVideointelligenceV1_WordInfo (Maybe Double)
gcvvwiConfidence
  = lens _gcvvwiConfidence
      (\ s a -> s{_gcvvwiConfidence = a})
      . mapping _Coerce

-- | Time offset relative to the beginning of the audio, and corresponding to
-- the end of the spoken word. This field is only set if
-- \`enable_word_time_offsets=true\` and only in the top hypothesis. This
-- is an experimental feature and the accuracy of the time offset can vary.
gcvvwiEndTime :: Lens' GoogleCloudVideointelligenceV1_WordInfo (Maybe Scientific)
gcvvwiEndTime
  = lens _gcvvwiEndTime
      (\ s a -> s{_gcvvwiEndTime = a})
      . mapping _GDuration

-- | The word corresponding to this set of information.
gcvvwiWord :: Lens' GoogleCloudVideointelligenceV1_WordInfo (Maybe Text)
gcvvwiWord
  = lens _gcvvwiWord (\ s a -> s{_gcvvwiWord = a})

-- | Output only. A distinct integer value is assigned for every speaker
-- within the audio. This field specifies which one of those speakers was
-- detected to have spoken this word. Value ranges from 1 up to
-- diarization_speaker_count, and is only set if speaker diarization is
-- enabled.
gcvvwiSpeakerTag :: Lens' GoogleCloudVideointelligenceV1_WordInfo (Maybe Int32)
gcvvwiSpeakerTag
  = lens _gcvvwiSpeakerTag
      (\ s a -> s{_gcvvwiSpeakerTag = a})
      . mapping _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1_WordInfo
         where
        parseJSON
          = withObject "GoogleCloudVideointelligenceV1WordInfo"
              (\ o ->
                 GoogleCloudVideointelligenceV1_WordInfo' <$>
                   (o .:? "startTime") <*> (o .:? "confidence") <*>
                     (o .:? "endTime")
                     <*> (o .:? "word")
                     <*> (o .:? "speakerTag"))

instance ToJSON
           GoogleCloudVideointelligenceV1_WordInfo
         where
        toJSON GoogleCloudVideointelligenceV1_WordInfo'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _gcvvwiStartTime,
                  ("confidence" .=) <$> _gcvvwiConfidence,
                  ("endTime" .=) <$> _gcvvwiEndTime,
                  ("word" .=) <$> _gcvvwiWord,
                  ("speakerTag" .=) <$> _gcvvwiSpeakerTag])

-- | Video frame level annotation results for explicit content.
--
-- /See:/ 'googleCloudVideointelligenceV1p1beta1_ExplicitContentFrame' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame =
  GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame'
    { _gcvvecfTimeOffSet            :: !(Maybe GDuration)
    , _gcvvecfPornographyLikelihood :: !(Maybe GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFramePornographyLikelihood)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvecfTimeOffSet'
--
-- * 'gcvvecfPornographyLikelihood'
googleCloudVideointelligenceV1p1beta1_ExplicitContentFrame
    :: GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame
googleCloudVideointelligenceV1p1beta1_ExplicitContentFrame =
  GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame'
    {_gcvvecfTimeOffSet = Nothing, _gcvvecfPornographyLikelihood = Nothing}

-- | Time-offset, relative to the beginning of the video, corresponding to
-- the video frame for this location.
gcvvecfTimeOffSet :: Lens' GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame (Maybe Scientific)
gcvvecfTimeOffSet
  = lens _gcvvecfTimeOffSet
      (\ s a -> s{_gcvvecfTimeOffSet = a})
      . mapping _GDuration

-- | Likelihood of the pornography content..
gcvvecfPornographyLikelihood :: Lens' GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame (Maybe GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFramePornographyLikelihood)
gcvvecfPornographyLikelihood
  = lens _gcvvecfPornographyLikelihood
      (\ s a -> s{_gcvvecfPornographyLikelihood = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame"
              (\ o ->
                 GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame'
                   <$>
                   (o .:? "timeOffset") <*>
                     (o .:? "pornographyLikelihood"))

instance ToJSON
           GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame
         where
        toJSON
          GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame'{..}
          = object
              (catMaybes
                 [("timeOffset" .=) <$> _gcvvecfTimeOffSet,
                  ("pornographyLikelihood" .=) <$>
                    _gcvvecfPornographyLikelihood])

-- | Detected entity from video analysis.
--
-- /See:/ 'googleCloudVideointelligenceV1beta2_Entity' smart constructor.
data GoogleCloudVideointelligenceV1beta2_Entity =
  GoogleCloudVideointelligenceV1beta2_Entity'
    { _gcvveLanguageCode :: !(Maybe Text)
    , _gcvveEntityId     :: !(Maybe Text)
    , _gcvveDescription  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_Entity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvveLanguageCode'
--
-- * 'gcvveEntityId'
--
-- * 'gcvveDescription'
googleCloudVideointelligenceV1beta2_Entity
    :: GoogleCloudVideointelligenceV1beta2_Entity
googleCloudVideointelligenceV1beta2_Entity =
  GoogleCloudVideointelligenceV1beta2_Entity'
    { _gcvveLanguageCode = Nothing
    , _gcvveEntityId = Nothing
    , _gcvveDescription = Nothing
    }

-- | Language code for \`description\` in BCP-47 format.
gcvveLanguageCode :: Lens' GoogleCloudVideointelligenceV1beta2_Entity (Maybe Text)
gcvveLanguageCode
  = lens _gcvveLanguageCode
      (\ s a -> s{_gcvveLanguageCode = a})

-- | Opaque entity ID. Some IDs may be available in [Google Knowledge Graph
-- Search API](https:\/\/developers.google.com\/knowledge-graph\/).
gcvveEntityId :: Lens' GoogleCloudVideointelligenceV1beta2_Entity (Maybe Text)
gcvveEntityId
  = lens _gcvveEntityId
      (\ s a -> s{_gcvveEntityId = a})

-- | Textual description, e.g. \`Fixed-gear bicycle\`.
gcvveDescription :: Lens' GoogleCloudVideointelligenceV1beta2_Entity (Maybe Text)
gcvveDescription
  = lens _gcvveDescription
      (\ s a -> s{_gcvveDescription = a})

instance FromJSON
           GoogleCloudVideointelligenceV1beta2_Entity
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1beta2Entity"
              (\ o ->
                 GoogleCloudVideointelligenceV1beta2_Entity' <$>
                   (o .:? "languageCode") <*> (o .:? "entityId") <*>
                     (o .:? "description"))

instance ToJSON
           GoogleCloudVideointelligenceV1beta2_Entity
         where
        toJSON
          GoogleCloudVideointelligenceV1beta2_Entity'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _gcvveLanguageCode,
                  ("entityId" .=) <$> _gcvveEntityId,
                  ("description" .=) <$> _gcvveDescription])

-- | Annotations related to one detected OCR text snippet. This will contain
-- the corresponding text, confidence value, and frame level information
-- for each detection.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_TextAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_TextAnnotation =
  GoogleCloudVideointelligenceV1p2beta1_TextAnnotation'
    { _gcvvtaText     :: !(Maybe Text)
    , _gcvvtaSegments :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_TextSegment])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_TextAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvtaText'
--
-- * 'gcvvtaSegments'
googleCloudVideointelligenceV1p2beta1_TextAnnotation
    :: GoogleCloudVideointelligenceV1p2beta1_TextAnnotation
googleCloudVideointelligenceV1p2beta1_TextAnnotation =
  GoogleCloudVideointelligenceV1p2beta1_TextAnnotation'
    {_gcvvtaText = Nothing, _gcvvtaSegments = Nothing}

-- | The detected text.
gcvvtaText :: Lens' GoogleCloudVideointelligenceV1p2beta1_TextAnnotation (Maybe Text)
gcvvtaText
  = lens _gcvvtaText (\ s a -> s{_gcvvtaText = a})

-- | All video segments where OCR detected text appears.
gcvvtaSegments :: Lens' GoogleCloudVideointelligenceV1p2beta1_TextAnnotation [GoogleCloudVideointelligenceV1p2beta1_TextSegment]
gcvvtaSegments
  = lens _gcvvtaSegments
      (\ s a -> s{_gcvvtaSegments = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1p2beta1_TextAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p2beta1TextAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1p2beta1_TextAnnotation'
                   <$> (o .:? "text") <*> (o .:? "segments" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1p2beta1_TextAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1p2beta1_TextAnnotation'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _gcvvtaText,
                  ("segments" .=) <$> _gcvvtaSegments])

-- | Video segment.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_VideoSegment' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_VideoSegment =
  GoogleCloudVideointelligenceV1p2beta1_VideoSegment'
    { _gcvvvsStartTimeOffSet :: !(Maybe GDuration)
    , _gcvvvsEndTimeOffSet   :: !(Maybe GDuration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_VideoSegment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvvsStartTimeOffSet'
--
-- * 'gcvvvsEndTimeOffSet'
googleCloudVideointelligenceV1p2beta1_VideoSegment
    :: GoogleCloudVideointelligenceV1p2beta1_VideoSegment
googleCloudVideointelligenceV1p2beta1_VideoSegment =
  GoogleCloudVideointelligenceV1p2beta1_VideoSegment'
    {_gcvvvsStartTimeOffSet = Nothing, _gcvvvsEndTimeOffSet = Nothing}

-- | Time-offset, relative to the beginning of the video, corresponding to
-- the start of the segment (inclusive).
gcvvvsStartTimeOffSet :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoSegment (Maybe Scientific)
gcvvvsStartTimeOffSet
  = lens _gcvvvsStartTimeOffSet
      (\ s a -> s{_gcvvvsStartTimeOffSet = a})
      . mapping _GDuration

-- | Time-offset, relative to the beginning of the video, corresponding to
-- the end of the segment (inclusive).
gcvvvsEndTimeOffSet :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoSegment (Maybe Scientific)
gcvvvsEndTimeOffSet
  = lens _gcvvvsEndTimeOffSet
      (\ s a -> s{_gcvvvsEndTimeOffSet = a})
      . mapping _GDuration

instance FromJSON
           GoogleCloudVideointelligenceV1p2beta1_VideoSegment
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p2beta1VideoSegment"
              (\ o ->
                 GoogleCloudVideointelligenceV1p2beta1_VideoSegment'
                   <$>
                   (o .:? "startTimeOffset") <*>
                     (o .:? "endTimeOffset"))

instance ToJSON
           GoogleCloudVideointelligenceV1p2beta1_VideoSegment
         where
        toJSON
          GoogleCloudVideointelligenceV1p2beta1_VideoSegment'{..}
          = object
              (catMaybes
                 [("startTimeOffset" .=) <$> _gcvvvsStartTimeOffSet,
                  ("endTimeOffset" .=) <$> _gcvvvsEndTimeOffSet])

-- | Annotation progress for a single video.
--
-- /See:/ 'googleCloudVideointelligenceV1_VideoAnnotationProgress' smart constructor.
data GoogleCloudVideointelligenceV1_VideoAnnotationProgress =
  GoogleCloudVideointelligenceV1_VideoAnnotationProgress'
    { _gcvvvapStartTime       :: !(Maybe DateTime')
    , _gcvvvapInputURI        :: !(Maybe Text)
    , _gcvvvapProgressPercent :: !(Maybe (Textual Int32))
    , _gcvvvapUpdateTime      :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_VideoAnnotationProgress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvvapStartTime'
--
-- * 'gcvvvapInputURI'
--
-- * 'gcvvvapProgressPercent'
--
-- * 'gcvvvapUpdateTime'
googleCloudVideointelligenceV1_VideoAnnotationProgress
    :: GoogleCloudVideointelligenceV1_VideoAnnotationProgress
googleCloudVideointelligenceV1_VideoAnnotationProgress =
  GoogleCloudVideointelligenceV1_VideoAnnotationProgress'
    { _gcvvvapStartTime = Nothing
    , _gcvvvapInputURI = Nothing
    , _gcvvvapProgressPercent = Nothing
    , _gcvvvapUpdateTime = Nothing
    }

-- | Time when the request was received.
gcvvvapStartTime :: Lens' GoogleCloudVideointelligenceV1_VideoAnnotationProgress (Maybe UTCTime)
gcvvvapStartTime
  = lens _gcvvvapStartTime
      (\ s a -> s{_gcvvvapStartTime = a})
      . mapping _DateTime

-- | Video file location in [Google Cloud
-- Storage](https:\/\/cloud.google.com\/storage\/).
gcvvvapInputURI :: Lens' GoogleCloudVideointelligenceV1_VideoAnnotationProgress (Maybe Text)
gcvvvapInputURI
  = lens _gcvvvapInputURI
      (\ s a -> s{_gcvvvapInputURI = a})

-- | Approximate percentage processed thus far. Guaranteed to be 100 when
-- fully processed.
gcvvvapProgressPercent :: Lens' GoogleCloudVideointelligenceV1_VideoAnnotationProgress (Maybe Int32)
gcvvvapProgressPercent
  = lens _gcvvvapProgressPercent
      (\ s a -> s{_gcvvvapProgressPercent = a})
      . mapping _Coerce

-- | Time of the most recent update.
gcvvvapUpdateTime :: Lens' GoogleCloudVideointelligenceV1_VideoAnnotationProgress (Maybe UTCTime)
gcvvvapUpdateTime
  = lens _gcvvvapUpdateTime
      (\ s a -> s{_gcvvvapUpdateTime = a})
      . mapping _DateTime

instance FromJSON
           GoogleCloudVideointelligenceV1_VideoAnnotationProgress
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1VideoAnnotationProgress"
              (\ o ->
                 GoogleCloudVideointelligenceV1_VideoAnnotationProgress'
                   <$>
                   (o .:? "startTime") <*> (o .:? "inputUri") <*>
                     (o .:? "progressPercent")
                     <*> (o .:? "updateTime"))

instance ToJSON
           GoogleCloudVideointelligenceV1_VideoAnnotationProgress
         where
        toJSON
          GoogleCloudVideointelligenceV1_VideoAnnotationProgress'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _gcvvvapStartTime,
                  ("inputUri" .=) <$> _gcvvvapInputURI,
                  ("progressPercent" .=) <$> _gcvvvapProgressPercent,
                  ("updateTime" .=) <$> _gcvvvapUpdateTime])

-- | Config for EXPLICIT_CONTENT_DETECTION.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_ExplicitContentDetectionConfig' smart constructor.
newtype GoogleCloudVideointelligenceV1p2beta1_ExplicitContentDetectionConfig =
  GoogleCloudVideointelligenceV1p2beta1_ExplicitContentDetectionConfig'
    { _gcvvecdcModel :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_ExplicitContentDetectionConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvecdcModel'
googleCloudVideointelligenceV1p2beta1_ExplicitContentDetectionConfig
    :: GoogleCloudVideointelligenceV1p2beta1_ExplicitContentDetectionConfig
googleCloudVideointelligenceV1p2beta1_ExplicitContentDetectionConfig =
  GoogleCloudVideointelligenceV1p2beta1_ExplicitContentDetectionConfig'
    {_gcvvecdcModel = Nothing}

-- | Model to use for explicit content detection. Supported values:
-- \"builtin\/stable\" (the default if unset) and \"builtin\/latest\".
gcvvecdcModel :: Lens' GoogleCloudVideointelligenceV1p2beta1_ExplicitContentDetectionConfig (Maybe Text)
gcvvecdcModel
  = lens _gcvvecdcModel
      (\ s a -> s{_gcvvecdcModel = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p2beta1_ExplicitContentDetectionConfig
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p2beta1ExplicitContentDetectionConfig"
              (\ o ->
                 GoogleCloudVideointelligenceV1p2beta1_ExplicitContentDetectionConfig'
                   <$> (o .:? "model"))

instance ToJSON
           GoogleCloudVideointelligenceV1p2beta1_ExplicitContentDetectionConfig
         where
        toJSON
          GoogleCloudVideointelligenceV1p2beta1_ExplicitContentDetectionConfig'{..}
          = object
              (catMaybes [("model" .=) <$> _gcvvecdcModel])

-- | Video frame level annotation results for label detection.
--
-- /See:/ 'googleCloudVideointelligenceV1beta2_LabelFrame' smart constructor.
data GoogleCloudVideointelligenceV1beta2_LabelFrame =
  GoogleCloudVideointelligenceV1beta2_LabelFrame'
    { _gcvvlfTimeOffSet :: !(Maybe GDuration)
    , _gcvvlfConfidence :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_LabelFrame' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvlfTimeOffSet'
--
-- * 'gcvvlfConfidence'
googleCloudVideointelligenceV1beta2_LabelFrame
    :: GoogleCloudVideointelligenceV1beta2_LabelFrame
googleCloudVideointelligenceV1beta2_LabelFrame =
  GoogleCloudVideointelligenceV1beta2_LabelFrame'
    {_gcvvlfTimeOffSet = Nothing, _gcvvlfConfidence = Nothing}

-- | Time-offset, relative to the beginning of the video, corresponding to
-- the video frame for this location.
gcvvlfTimeOffSet :: Lens' GoogleCloudVideointelligenceV1beta2_LabelFrame (Maybe Scientific)
gcvvlfTimeOffSet
  = lens _gcvvlfTimeOffSet
      (\ s a -> s{_gcvvlfTimeOffSet = a})
      . mapping _GDuration

-- | Confidence that the label is accurate. Range: [0, 1].
gcvvlfConfidence :: Lens' GoogleCloudVideointelligenceV1beta2_LabelFrame (Maybe Double)
gcvvlfConfidence
  = lens _gcvvlfConfidence
      (\ s a -> s{_gcvvlfConfidence = a})
      . mapping _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1beta2_LabelFrame
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1beta2LabelFrame"
              (\ o ->
                 GoogleCloudVideointelligenceV1beta2_LabelFrame' <$>
                   (o .:? "timeOffset") <*> (o .:? "confidence"))

instance ToJSON
           GoogleCloudVideointelligenceV1beta2_LabelFrame
         where
        toJSON
          GoogleCloudVideointelligenceV1beta2_LabelFrame'{..}
          = object
              (catMaybes
                 [("timeOffset" .=) <$> _gcvvlfTimeOffSet,
                  ("confidence" .=) <$> _gcvvlfConfidence])

-- | A speech recognition result corresponding to a portion of the audio.
--
-- /See:/ 'googleCloudVideointelligenceV1_SpeechTranscription' smart constructor.
data GoogleCloudVideointelligenceV1_SpeechTranscription =
  GoogleCloudVideointelligenceV1_SpeechTranscription'
    { _gcvvstAlternatives :: !(Maybe [GoogleCloudVideointelligenceV1_SpeechRecognitionAlternative])
    , _gcvvstLanguageCode :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_SpeechTranscription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvstAlternatives'
--
-- * 'gcvvstLanguageCode'
googleCloudVideointelligenceV1_SpeechTranscription
    :: GoogleCloudVideointelligenceV1_SpeechTranscription
googleCloudVideointelligenceV1_SpeechTranscription =
  GoogleCloudVideointelligenceV1_SpeechTranscription'
    {_gcvvstAlternatives = Nothing, _gcvvstLanguageCode = Nothing}

-- | May contain one or more recognition hypotheses (up to the maximum
-- specified in \`max_alternatives\`). These alternatives are ordered in
-- terms of accuracy, with the top (first) alternative being the most
-- probable, as ranked by the recognizer.
gcvvstAlternatives :: Lens' GoogleCloudVideointelligenceV1_SpeechTranscription [GoogleCloudVideointelligenceV1_SpeechRecognitionAlternative]
gcvvstAlternatives
  = lens _gcvvstAlternatives
      (\ s a -> s{_gcvvstAlternatives = a})
      . _Default
      . _Coerce

-- | Output only. The
-- [BCP-47](https:\/\/www.rfc-editor.org\/rfc\/bcp\/bcp47.txt) language tag
-- of the language in this result. This language code was detected to have
-- the most likelihood of being spoken in the audio.
gcvvstLanguageCode :: Lens' GoogleCloudVideointelligenceV1_SpeechTranscription (Maybe Text)
gcvvstLanguageCode
  = lens _gcvvstLanguageCode
      (\ s a -> s{_gcvvstLanguageCode = a})

instance FromJSON
           GoogleCloudVideointelligenceV1_SpeechTranscription
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1SpeechTranscription"
              (\ o ->
                 GoogleCloudVideointelligenceV1_SpeechTranscription'
                   <$>
                   (o .:? "alternatives" .!= mempty) <*>
                     (o .:? "languageCode"))

instance ToJSON
           GoogleCloudVideointelligenceV1_SpeechTranscription
         where
        toJSON
          GoogleCloudVideointelligenceV1_SpeechTranscription'{..}
          = object
              (catMaybes
                 [("alternatives" .=) <$> _gcvvstAlternatives,
                  ("languageCode" .=) <$> _gcvvstLanguageCode])

-- | Video annotation progress. Included in the \`metadata\` field of the
-- \`Operation\` returned by the \`GetOperation\` call of the
-- \`google::longrunning::Operations\` service.
--
-- /See:/ 'googleCloudVideointelligenceV1beta2_AnnotateVideoProgress' smart constructor.
newtype GoogleCloudVideointelligenceV1beta2_AnnotateVideoProgress =
  GoogleCloudVideointelligenceV1beta2_AnnotateVideoProgress'
    { _gcvvavpAnnotationProgress :: Maybe [GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_AnnotateVideoProgress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvavpAnnotationProgress'
googleCloudVideointelligenceV1beta2_AnnotateVideoProgress
    :: GoogleCloudVideointelligenceV1beta2_AnnotateVideoProgress
googleCloudVideointelligenceV1beta2_AnnotateVideoProgress =
  GoogleCloudVideointelligenceV1beta2_AnnotateVideoProgress'
    {_gcvvavpAnnotationProgress = Nothing}

-- | Progress metadata for all videos specified in \`AnnotateVideoRequest\`.
gcvvavpAnnotationProgress :: Lens' GoogleCloudVideointelligenceV1beta2_AnnotateVideoProgress [GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress]
gcvvavpAnnotationProgress
  = lens _gcvvavpAnnotationProgress
      (\ s a -> s{_gcvvavpAnnotationProgress = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1beta2_AnnotateVideoProgress
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1beta2AnnotateVideoProgress"
              (\ o ->
                 GoogleCloudVideointelligenceV1beta2_AnnotateVideoProgress'
                   <$> (o .:? "annotationProgress" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1beta2_AnnotateVideoProgress
         where
        toJSON
          GoogleCloudVideointelligenceV1beta2_AnnotateVideoProgress'{..}
          = object
              (catMaybes
                 [("annotationProgress" .=) <$>
                    _gcvvavpAnnotationProgress])

-- | Video frame level annotations for object detection and tracking. This
-- field stores per frame location, time offset, and confidence.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame =
  GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame'
    { _gcvvotfTimeOffSet            :: !(Maybe GDuration)
    , _gcvvotfNormalizedBoundingBox :: !(Maybe GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvotfTimeOffSet'
--
-- * 'gcvvotfNormalizedBoundingBox'
googleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame
    :: GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame
googleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame =
  GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame'
    {_gcvvotfTimeOffSet = Nothing, _gcvvotfNormalizedBoundingBox = Nothing}

-- | The timestamp of the frame in microseconds.
gcvvotfTimeOffSet :: Lens' GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame (Maybe Scientific)
gcvvotfTimeOffSet
  = lens _gcvvotfTimeOffSet
      (\ s a -> s{_gcvvotfTimeOffSet = a})
      . mapping _GDuration

-- | The normalized bounding box location of this object track for the frame.
gcvvotfNormalizedBoundingBox :: Lens' GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame (Maybe GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox)
gcvvotfNormalizedBoundingBox
  = lens _gcvvotfNormalizedBoundingBox
      (\ s a -> s{_gcvvotfNormalizedBoundingBox = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame"
              (\ o ->
                 GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame'
                   <$>
                   (o .:? "timeOffset") <*>
                     (o .:? "normalizedBoundingBox"))

instance ToJSON
           GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame
         where
        toJSON
          GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame'{..}
          = object
              (catMaybes
                 [("timeOffset" .=) <$> _gcvvotfTimeOffSet,
                  ("normalizedBoundingBox" .=) <$>
                    _gcvvotfNormalizedBoundingBox])

-- | Label annotation.
--
-- /See:/ 'googleCloudVideointelligenceV1_LabelAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1_LabelAnnotation =
  GoogleCloudVideointelligenceV1_LabelAnnotation'
    { _gcvvlaCategoryEntities :: !(Maybe [GoogleCloudVideointelligenceV1_Entity])
    , _gcvvlaFrames           :: !(Maybe [GoogleCloudVideointelligenceV1_LabelFrame])
    , _gcvvlaSegments         :: !(Maybe [GoogleCloudVideointelligenceV1_LabelSegment])
    , _gcvvlaEntity           :: !(Maybe GoogleCloudVideointelligenceV1_Entity)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_LabelAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvlaCategoryEntities'
--
-- * 'gcvvlaFrames'
--
-- * 'gcvvlaSegments'
--
-- * 'gcvvlaEntity'
googleCloudVideointelligenceV1_LabelAnnotation
    :: GoogleCloudVideointelligenceV1_LabelAnnotation
googleCloudVideointelligenceV1_LabelAnnotation =
  GoogleCloudVideointelligenceV1_LabelAnnotation'
    { _gcvvlaCategoryEntities = Nothing
    , _gcvvlaFrames = Nothing
    , _gcvvlaSegments = Nothing
    , _gcvvlaEntity = Nothing
    }

-- | Common categories for the detected entity. E.g. when the label is
-- \`Terrier\` the category is likely \`dog\`. And in some cases there
-- might be more than one categories e.g. \`Terrier\` could also be a
-- \`pet\`.
gcvvlaCategoryEntities :: Lens' GoogleCloudVideointelligenceV1_LabelAnnotation [GoogleCloudVideointelligenceV1_Entity]
gcvvlaCategoryEntities
  = lens _gcvvlaCategoryEntities
      (\ s a -> s{_gcvvlaCategoryEntities = a})
      . _Default
      . _Coerce

-- | All video frames where a label was detected.
gcvvlaFrames :: Lens' GoogleCloudVideointelligenceV1_LabelAnnotation [GoogleCloudVideointelligenceV1_LabelFrame]
gcvvlaFrames
  = lens _gcvvlaFrames (\ s a -> s{_gcvvlaFrames = a})
      . _Default
      . _Coerce

-- | All video segments where a label was detected.
gcvvlaSegments :: Lens' GoogleCloudVideointelligenceV1_LabelAnnotation [GoogleCloudVideointelligenceV1_LabelSegment]
gcvvlaSegments
  = lens _gcvvlaSegments
      (\ s a -> s{_gcvvlaSegments = a})
      . _Default
      . _Coerce

-- | Detected entity.
gcvvlaEntity :: Lens' GoogleCloudVideointelligenceV1_LabelAnnotation (Maybe GoogleCloudVideointelligenceV1_Entity)
gcvvlaEntity
  = lens _gcvvlaEntity (\ s a -> s{_gcvvlaEntity = a})

instance FromJSON
           GoogleCloudVideointelligenceV1_LabelAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1LabelAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1_LabelAnnotation' <$>
                   (o .:? "categoryEntities" .!= mempty) <*>
                     (o .:? "frames" .!= mempty)
                     <*> (o .:? "segments" .!= mempty)
                     <*> (o .:? "entity"))

instance ToJSON
           GoogleCloudVideointelligenceV1_LabelAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1_LabelAnnotation'{..}
          = object
              (catMaybes
                 [("categoryEntities" .=) <$> _gcvvlaCategoryEntities,
                  ("frames" .=) <$> _gcvvlaFrames,
                  ("segments" .=) <$> _gcvvlaSegments,
                  ("entity" .=) <$> _gcvvlaEntity])

-- | Alternative hypotheses (a.k.a. n-best list).
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative =
  GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative'
    { _gConfidence :: !(Maybe (Textual Double))
    , _gWords      :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_WordInfo])
    , _gTranscript :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gConfidence'
--
-- * 'gWords'
--
-- * 'gTranscript'
googleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative
    :: GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative
googleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative =
  GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative'
    {_gConfidence = Nothing, _gWords = Nothing, _gTranscript = Nothing}

-- | The confidence estimate between 0.0 and 1.0. A higher number indicates
-- an estimated greater likelihood that the recognized words are correct.
-- This field is typically provided only for the top hypothesis, and only
-- for \`is_final=true\` results. Clients should not rely on the
-- \`confidence\` field as it is not guaranteed to be accurate or
-- consistent. The default of 0.0 is a sentinel value indicating
-- \`confidence\` was not set.
gConfidence :: Lens' GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative (Maybe Double)
gConfidence
  = lens _gConfidence (\ s a -> s{_gConfidence = a}) .
      mapping _Coerce

-- | A list of word-specific information for each recognized word.
gWords :: Lens' GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative [GoogleCloudVideointelligenceV1p2beta1_WordInfo]
gWords
  = lens _gWords (\ s a -> s{_gWords = a}) . _Default .
      _Coerce

-- | Transcript text representing the words that the user spoke.
gTranscript :: Lens' GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative (Maybe Text)
gTranscript
  = lens _gTranscript (\ s a -> s{_gTranscript = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative"
              (\ o ->
                 GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative'
                   <$>
                   (o .:? "confidence") <*> (o .:? "words" .!= mempty)
                     <*> (o .:? "transcript"))

instance ToJSON
           GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative
         where
        toJSON
          GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative'{..}
          = object
              (catMaybes
                 [("confidence" .=) <$> _gConfidence,
                  ("words" .=) <$> _gWords,
                  ("transcript" .=) <$> _gTranscript])

-- | Word-specific information for recognized words. Word information is only
-- included in the response when certain request parameters are set, such
-- as \`enable_word_time_offsets\`.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_WordInfo' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_WordInfo =
  GoogleCloudVideointelligenceV1p2beta1_WordInfo'
    { _gooStartTime  :: !(Maybe GDuration)
    , _gooConfidence :: !(Maybe (Textual Double))
    , _gooEndTime    :: !(Maybe GDuration)
    , _gooWord       :: !(Maybe Text)
    , _gooSpeakerTag :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_WordInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooStartTime'
--
-- * 'gooConfidence'
--
-- * 'gooEndTime'
--
-- * 'gooWord'
--
-- * 'gooSpeakerTag'
googleCloudVideointelligenceV1p2beta1_WordInfo
    :: GoogleCloudVideointelligenceV1p2beta1_WordInfo
googleCloudVideointelligenceV1p2beta1_WordInfo =
  GoogleCloudVideointelligenceV1p2beta1_WordInfo'
    { _gooStartTime = Nothing
    , _gooConfidence = Nothing
    , _gooEndTime = Nothing
    , _gooWord = Nothing
    , _gooSpeakerTag = Nothing
    }

-- | Time offset relative to the beginning of the audio, and corresponding to
-- the start of the spoken word. This field is only set if
-- \`enable_word_time_offsets=true\` and only in the top hypothesis. This
-- is an experimental feature and the accuracy of the time offset can vary.
gooStartTime :: Lens' GoogleCloudVideointelligenceV1p2beta1_WordInfo (Maybe Scientific)
gooStartTime
  = lens _gooStartTime (\ s a -> s{_gooStartTime = a})
      . mapping _GDuration

-- | Output only. The confidence estimate between 0.0 and 1.0. A higher
-- number indicates an estimated greater likelihood that the recognized
-- words are correct. This field is set only for the top alternative. This
-- field is not guaranteed to be accurate and users should not rely on it
-- to be always provided. The default of 0.0 is a sentinel value indicating
-- \`confidence\` was not set.
gooConfidence :: Lens' GoogleCloudVideointelligenceV1p2beta1_WordInfo (Maybe Double)
gooConfidence
  = lens _gooConfidence
      (\ s a -> s{_gooConfidence = a})
      . mapping _Coerce

-- | Time offset relative to the beginning of the audio, and corresponding to
-- the end of the spoken word. This field is only set if
-- \`enable_word_time_offsets=true\` and only in the top hypothesis. This
-- is an experimental feature and the accuracy of the time offset can vary.
gooEndTime :: Lens' GoogleCloudVideointelligenceV1p2beta1_WordInfo (Maybe Scientific)
gooEndTime
  = lens _gooEndTime (\ s a -> s{_gooEndTime = a}) .
      mapping _GDuration

-- | The word corresponding to this set of information.
gooWord :: Lens' GoogleCloudVideointelligenceV1p2beta1_WordInfo (Maybe Text)
gooWord = lens _gooWord (\ s a -> s{_gooWord = a})

-- | Output only. A distinct integer value is assigned for every speaker
-- within the audio. This field specifies which one of those speakers was
-- detected to have spoken this word. Value ranges from 1 up to
-- diarization_speaker_count, and is only set if speaker diarization is
-- enabled.
gooSpeakerTag :: Lens' GoogleCloudVideointelligenceV1p2beta1_WordInfo (Maybe Int32)
gooSpeakerTag
  = lens _gooSpeakerTag
      (\ s a -> s{_gooSpeakerTag = a})
      . mapping _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1p2beta1_WordInfo
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p2beta1WordInfo"
              (\ o ->
                 GoogleCloudVideointelligenceV1p2beta1_WordInfo' <$>
                   (o .:? "startTime") <*> (o .:? "confidence") <*>
                     (o .:? "endTime")
                     <*> (o .:? "word")
                     <*> (o .:? "speakerTag"))

instance ToJSON
           GoogleCloudVideointelligenceV1p2beta1_WordInfo
         where
        toJSON
          GoogleCloudVideointelligenceV1p2beta1_WordInfo'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _gooStartTime,
                  ("confidence" .=) <$> _gooConfidence,
                  ("endTime" .=) <$> _gooEndTime,
                  ("word" .=) <$> _gooWord,
                  ("speakerTag" .=) <$> _gooSpeakerTag])

-- | Video frame level annotation results for label detection.
--
-- /See:/ 'googleCloudVideointelligenceV1p1beta1_LabelFrame' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_LabelFrame =
  GoogleCloudVideointelligenceV1p1beta1_LabelFrame'
    { _gcvvlfcTimeOffSet :: !(Maybe GDuration)
    , _gcvvlfcConfidence :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_LabelFrame' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvlfcTimeOffSet'
--
-- * 'gcvvlfcConfidence'
googleCloudVideointelligenceV1p1beta1_LabelFrame
    :: GoogleCloudVideointelligenceV1p1beta1_LabelFrame
googleCloudVideointelligenceV1p1beta1_LabelFrame =
  GoogleCloudVideointelligenceV1p1beta1_LabelFrame'
    {_gcvvlfcTimeOffSet = Nothing, _gcvvlfcConfidence = Nothing}

-- | Time-offset, relative to the beginning of the video, corresponding to
-- the video frame for this location.
gcvvlfcTimeOffSet :: Lens' GoogleCloudVideointelligenceV1p1beta1_LabelFrame (Maybe Scientific)
gcvvlfcTimeOffSet
  = lens _gcvvlfcTimeOffSet
      (\ s a -> s{_gcvvlfcTimeOffSet = a})
      . mapping _GDuration

-- | Confidence that the label is accurate. Range: [0, 1].
gcvvlfcConfidence :: Lens' GoogleCloudVideointelligenceV1p1beta1_LabelFrame (Maybe Double)
gcvvlfcConfidence
  = lens _gcvvlfcConfidence
      (\ s a -> s{_gcvvlfcConfidence = a})
      . mapping _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1p1beta1_LabelFrame
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p1beta1LabelFrame"
              (\ o ->
                 GoogleCloudVideointelligenceV1p1beta1_LabelFrame' <$>
                   (o .:? "timeOffset") <*> (o .:? "confidence"))

instance ToJSON
           GoogleCloudVideointelligenceV1p1beta1_LabelFrame
         where
        toJSON
          GoogleCloudVideointelligenceV1p1beta1_LabelFrame'{..}
          = object
              (catMaybes
                 [("timeOffset" .=) <$> _gcvvlfcTimeOffSet,
                  ("confidence" .=) <$> _gcvvlfcConfidence])

-- | Config for TEXT_DETECTION.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_TextDetectionConfig' smart constructor.
newtype GoogleCloudVideointelligenceV1p2beta1_TextDetectionConfig =
  GoogleCloudVideointelligenceV1p2beta1_TextDetectionConfig'
    { _gcvvtdcLanguageHints :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_TextDetectionConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvtdcLanguageHints'
googleCloudVideointelligenceV1p2beta1_TextDetectionConfig
    :: GoogleCloudVideointelligenceV1p2beta1_TextDetectionConfig
googleCloudVideointelligenceV1p2beta1_TextDetectionConfig =
  GoogleCloudVideointelligenceV1p2beta1_TextDetectionConfig'
    {_gcvvtdcLanguageHints = Nothing}

-- | Language hint can be specified if the language to be detected is known a
-- priori. It can increase the accuracy of the detection. Language hint
-- must be language code in BCP-47 format. Automatic language detection is
-- performed if no hint is provided.
gcvvtdcLanguageHints :: Lens' GoogleCloudVideointelligenceV1p2beta1_TextDetectionConfig [Text]
gcvvtdcLanguageHints
  = lens _gcvvtdcLanguageHints
      (\ s a -> s{_gcvvtdcLanguageHints = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1p2beta1_TextDetectionConfig
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p2beta1TextDetectionConfig"
              (\ o ->
                 GoogleCloudVideointelligenceV1p2beta1_TextDetectionConfig'
                   <$> (o .:? "languageHints" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1p2beta1_TextDetectionConfig
         where
        toJSON
          GoogleCloudVideointelligenceV1p2beta1_TextDetectionConfig'{..}
          = object
              (catMaybes
                 [("languageHints" .=) <$> _gcvvtdcLanguageHints])

-- | Explicit content annotation (based on per-frame visual signals only). If
-- no explicit content has been detected in a frame, no annotations are
-- present for that frame.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation' smart constructor.
newtype GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation =
  GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation'
    { _gFrames :: Maybe [GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gFrames'
googleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation
    :: GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation
googleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation =
  GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation'
    {_gFrames = Nothing}

-- | All video frames where explicit content was detected.
gFrames :: Lens' GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation [GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame]
gFrames
  = lens _gFrames (\ s a -> s{_gFrames = a}) . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation'
                   <$> (o .:? "frames" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation'{..}
          = object (catMaybes [("frames" .=) <$> _gFrames])

-- | Detected entity from video analysis.
--
-- /See:/ 'googleCloudVideointelligenceV1p1beta1_Entity' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_Entity =
  GoogleCloudVideointelligenceV1p1beta1_Entity'
    { _gLanguageCode :: !(Maybe Text)
    , _gEntityId     :: !(Maybe Text)
    , _gDescription  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_Entity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gLanguageCode'
--
-- * 'gEntityId'
--
-- * 'gDescription'
googleCloudVideointelligenceV1p1beta1_Entity
    :: GoogleCloudVideointelligenceV1p1beta1_Entity
googleCloudVideointelligenceV1p1beta1_Entity =
  GoogleCloudVideointelligenceV1p1beta1_Entity'
    {_gLanguageCode = Nothing, _gEntityId = Nothing, _gDescription = Nothing}

-- | Language code for \`description\` in BCP-47 format.
gLanguageCode :: Lens' GoogleCloudVideointelligenceV1p1beta1_Entity (Maybe Text)
gLanguageCode
  = lens _gLanguageCode
      (\ s a -> s{_gLanguageCode = a})

-- | Opaque entity ID. Some IDs may be available in [Google Knowledge Graph
-- Search API](https:\/\/developers.google.com\/knowledge-graph\/).
gEntityId :: Lens' GoogleCloudVideointelligenceV1p1beta1_Entity (Maybe Text)
gEntityId
  = lens _gEntityId (\ s a -> s{_gEntityId = a})

-- | Textual description, e.g. \`Fixed-gear bicycle\`.
gDescription :: Lens' GoogleCloudVideointelligenceV1p1beta1_Entity (Maybe Text)
gDescription
  = lens _gDescription (\ s a -> s{_gDescription = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p1beta1_Entity
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p1beta1Entity"
              (\ o ->
                 GoogleCloudVideointelligenceV1p1beta1_Entity' <$>
                   (o .:? "languageCode") <*> (o .:? "entityId") <*>
                     (o .:? "description"))

instance ToJSON
           GoogleCloudVideointelligenceV1p1beta1_Entity
         where
        toJSON
          GoogleCloudVideointelligenceV1p1beta1_Entity'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _gLanguageCode,
                  ("entityId" .=) <$> _gEntityId,
                  ("description" .=) <$> _gDescription])

-- | Video annotation response. Included in the \`response\` field of the
-- \`Operation\` returned by the \`GetOperation\` call of the
-- \`google::longrunning::Operations\` service.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_AnnotateVideoResponse' smart constructor.
newtype GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoResponse =
  GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoResponse'
    { _gAnnotationResults :: Maybe [GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gAnnotationResults'
googleCloudVideointelligenceV1p2beta1_AnnotateVideoResponse
    :: GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoResponse
googleCloudVideointelligenceV1p2beta1_AnnotateVideoResponse =
  GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoResponse'
    {_gAnnotationResults = Nothing}

-- | Annotation results for all videos specified in \`AnnotateVideoRequest\`.
gAnnotationResults :: Lens' GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoResponse [GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults]
gAnnotationResults
  = lens _gAnnotationResults
      (\ s a -> s{_gAnnotationResults = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoResponse
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p2beta1AnnotateVideoResponse"
              (\ o ->
                 GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoResponse'
                   <$> (o .:? "annotationResults" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoResponse
         where
        toJSON
          GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoResponse'{..}
          = object
              (catMaybes
                 [("annotationResults" .=) <$> _gAnnotationResults])

-- | Video annotation progress. Included in the \`metadata\` field of the
-- \`Operation\` returned by the \`GetOperation\` call of the
-- \`google::longrunning::Operations\` service.
--
-- /See:/ 'googleCloudVideointelligenceV1p1beta1_AnnotateVideoProgress' smart constructor.
newtype GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoProgress =
  GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoProgress'
    { _gAnnotationProgress :: Maybe [GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoProgress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gAnnotationProgress'
googleCloudVideointelligenceV1p1beta1_AnnotateVideoProgress
    :: GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoProgress
googleCloudVideointelligenceV1p1beta1_AnnotateVideoProgress =
  GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoProgress'
    {_gAnnotationProgress = Nothing}

-- | Progress metadata for all videos specified in \`AnnotateVideoRequest\`.
gAnnotationProgress :: Lens' GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoProgress [GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress]
gAnnotationProgress
  = lens _gAnnotationProgress
      (\ s a -> s{_gAnnotationProgress = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoProgress
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress"
              (\ o ->
                 GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoProgress'
                   <$> (o .:? "annotationProgress" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoProgress
         where
        toJSON
          GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoProgress'{..}
          = object
              (catMaybes
                 [("annotationProgress" .=) <$> _gAnnotationProgress])

-- | Annotation results for a single video.
--
-- /See:/ 'googleCloudVideointelligenceV1_VideoAnnotationResults' smart constructor.
data GoogleCloudVideointelligenceV1_VideoAnnotationResults =
  GoogleCloudVideointelligenceV1_VideoAnnotationResults'
    { _gcvvvarShotAnnotations         :: !(Maybe [GoogleCloudVideointelligenceV1_VideoSegment])
    , _gcvvvarShotLabelAnnotations    :: !(Maybe [GoogleCloudVideointelligenceV1_LabelAnnotation])
    , _gcvvvarInputURI                :: !(Maybe Text)
    , _gcvvvarError                   :: !(Maybe GoogleRpc_Status)
    , _gcvvvarFrameLabelAnnotations   :: !(Maybe [GoogleCloudVideointelligenceV1_LabelAnnotation])
    , _gcvvvarSpeechTranscriptions    :: !(Maybe [GoogleCloudVideointelligenceV1_SpeechTranscription])
    , _gcvvvarSegmentLabelAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1_LabelAnnotation])
    , _gcvvvarExplicitAnnotation      :: !(Maybe GoogleCloudVideointelligenceV1_ExplicitContentAnnotation)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_VideoAnnotationResults' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvvarShotAnnotations'
--
-- * 'gcvvvarShotLabelAnnotations'
--
-- * 'gcvvvarInputURI'
--
-- * 'gcvvvarError'
--
-- * 'gcvvvarFrameLabelAnnotations'
--
-- * 'gcvvvarSpeechTranscriptions'
--
-- * 'gcvvvarSegmentLabelAnnotations'
--
-- * 'gcvvvarExplicitAnnotation'
googleCloudVideointelligenceV1_VideoAnnotationResults
    :: GoogleCloudVideointelligenceV1_VideoAnnotationResults
googleCloudVideointelligenceV1_VideoAnnotationResults =
  GoogleCloudVideointelligenceV1_VideoAnnotationResults'
    { _gcvvvarShotAnnotations = Nothing
    , _gcvvvarShotLabelAnnotations = Nothing
    , _gcvvvarInputURI = Nothing
    , _gcvvvarError = Nothing
    , _gcvvvarFrameLabelAnnotations = Nothing
    , _gcvvvarSpeechTranscriptions = Nothing
    , _gcvvvarSegmentLabelAnnotations = Nothing
    , _gcvvvarExplicitAnnotation = Nothing
    }

-- | Shot annotations. Each shot is represented as a video segment.
gcvvvarShotAnnotations :: Lens' GoogleCloudVideointelligenceV1_VideoAnnotationResults [GoogleCloudVideointelligenceV1_VideoSegment]
gcvvvarShotAnnotations
  = lens _gcvvvarShotAnnotations
      (\ s a -> s{_gcvvvarShotAnnotations = a})
      . _Default
      . _Coerce

-- | Label annotations on shot level. There is exactly one element for each
-- unique label.
gcvvvarShotLabelAnnotations :: Lens' GoogleCloudVideointelligenceV1_VideoAnnotationResults [GoogleCloudVideointelligenceV1_LabelAnnotation]
gcvvvarShotLabelAnnotations
  = lens _gcvvvarShotLabelAnnotations
      (\ s a -> s{_gcvvvarShotLabelAnnotations = a})
      . _Default
      . _Coerce

-- | Video file location in [Google Cloud
-- Storage](https:\/\/cloud.google.com\/storage\/).
gcvvvarInputURI :: Lens' GoogleCloudVideointelligenceV1_VideoAnnotationResults (Maybe Text)
gcvvvarInputURI
  = lens _gcvvvarInputURI
      (\ s a -> s{_gcvvvarInputURI = a})

-- | If set, indicates an error. Note that for a single
-- \`AnnotateVideoRequest\` some videos may succeed and some may fail.
gcvvvarError :: Lens' GoogleCloudVideointelligenceV1_VideoAnnotationResults (Maybe GoogleRpc_Status)
gcvvvarError
  = lens _gcvvvarError (\ s a -> s{_gcvvvarError = a})

-- | Label annotations on frame level. There is exactly one element for each
-- unique label.
gcvvvarFrameLabelAnnotations :: Lens' GoogleCloudVideointelligenceV1_VideoAnnotationResults [GoogleCloudVideointelligenceV1_LabelAnnotation]
gcvvvarFrameLabelAnnotations
  = lens _gcvvvarFrameLabelAnnotations
      (\ s a -> s{_gcvvvarFrameLabelAnnotations = a})
      . _Default
      . _Coerce

-- | Speech transcription.
gcvvvarSpeechTranscriptions :: Lens' GoogleCloudVideointelligenceV1_VideoAnnotationResults [GoogleCloudVideointelligenceV1_SpeechTranscription]
gcvvvarSpeechTranscriptions
  = lens _gcvvvarSpeechTranscriptions
      (\ s a -> s{_gcvvvarSpeechTranscriptions = a})
      . _Default
      . _Coerce

-- | Label annotations on video level or user specified segment level. There
-- is exactly one element for each unique label.
gcvvvarSegmentLabelAnnotations :: Lens' GoogleCloudVideointelligenceV1_VideoAnnotationResults [GoogleCloudVideointelligenceV1_LabelAnnotation]
gcvvvarSegmentLabelAnnotations
  = lens _gcvvvarSegmentLabelAnnotations
      (\ s a -> s{_gcvvvarSegmentLabelAnnotations = a})
      . _Default
      . _Coerce

-- | Explicit content annotation.
gcvvvarExplicitAnnotation :: Lens' GoogleCloudVideointelligenceV1_VideoAnnotationResults (Maybe GoogleCloudVideointelligenceV1_ExplicitContentAnnotation)
gcvvvarExplicitAnnotation
  = lens _gcvvvarExplicitAnnotation
      (\ s a -> s{_gcvvvarExplicitAnnotation = a})

instance FromJSON
           GoogleCloudVideointelligenceV1_VideoAnnotationResults
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1VideoAnnotationResults"
              (\ o ->
                 GoogleCloudVideointelligenceV1_VideoAnnotationResults'
                   <$>
                   (o .:? "shotAnnotations" .!= mempty) <*>
                     (o .:? "shotLabelAnnotations" .!= mempty)
                     <*> (o .:? "inputUri")
                     <*> (o .:? "error")
                     <*> (o .:? "frameLabelAnnotations" .!= mempty)
                     <*> (o .:? "speechTranscriptions" .!= mempty)
                     <*> (o .:? "segmentLabelAnnotations" .!= mempty)
                     <*> (o .:? "explicitAnnotation"))

instance ToJSON
           GoogleCloudVideointelligenceV1_VideoAnnotationResults
         where
        toJSON
          GoogleCloudVideointelligenceV1_VideoAnnotationResults'{..}
          = object
              (catMaybes
                 [("shotAnnotations" .=) <$> _gcvvvarShotAnnotations,
                  ("shotLabelAnnotations" .=) <$>
                    _gcvvvarShotLabelAnnotations,
                  ("inputUri" .=) <$> _gcvvvarInputURI,
                  ("error" .=) <$> _gcvvvarError,
                  ("frameLabelAnnotations" .=) <$>
                    _gcvvvarFrameLabelAnnotations,
                  ("speechTranscriptions" .=) <$>
                    _gcvvvarSpeechTranscriptions,
                  ("segmentLabelAnnotations" .=) <$>
                    _gcvvvarSegmentLabelAnnotations,
                  ("explicitAnnotation" .=) <$>
                    _gcvvvarExplicitAnnotation])

-- | Annotations corresponding to one tracked object.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation =
  GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation'
    { _gcvvotaFrames     :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame])
    , _gcvvotaConfidence :: !(Maybe (Textual Double))
    , _gcvvotaTrackId    :: !(Maybe (Textual Int64))
    , _gcvvotaSegment    :: !(Maybe GoogleCloudVideointelligenceV1p2beta1_VideoSegment)
    , _gcvvotaEntity     :: !(Maybe GoogleCloudVideointelligenceV1p2beta1_Entity)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvotaFrames'
--
-- * 'gcvvotaConfidence'
--
-- * 'gcvvotaTrackId'
--
-- * 'gcvvotaSegment'
--
-- * 'gcvvotaEntity'
googleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation
    :: GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation
googleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation =
  GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation'
    { _gcvvotaFrames = Nothing
    , _gcvvotaConfidence = Nothing
    , _gcvvotaTrackId = Nothing
    , _gcvvotaSegment = Nothing
    , _gcvvotaEntity = Nothing
    }

-- | Information corresponding to all frames where this object track appears.
-- Non-streaming batch mode: it may be one or multiple ObjectTrackingFrame
-- messages in frames. Streaming mode: it can only be one
-- ObjectTrackingFrame message in frames.
gcvvotaFrames :: Lens' GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation [GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame]
gcvvotaFrames
  = lens _gcvvotaFrames
      (\ s a -> s{_gcvvotaFrames = a})
      . _Default
      . _Coerce

-- | Object category\'s labeling confidence of this track.
gcvvotaConfidence :: Lens' GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation (Maybe Double)
gcvvotaConfidence
  = lens _gcvvotaConfidence
      (\ s a -> s{_gcvvotaConfidence = a})
      . mapping _Coerce

-- | Streaming mode ONLY. In streaming mode, we do not know the end time of a
-- tracked object before it is completed. Hence, there is no VideoSegment
-- info returned. Instead, we provide a unique identifiable integer
-- track_id so that the customers can correlate the results of the ongoing
-- ObjectTrackAnnotation of the same track_id over time.
gcvvotaTrackId :: Lens' GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation (Maybe Int64)
gcvvotaTrackId
  = lens _gcvvotaTrackId
      (\ s a -> s{_gcvvotaTrackId = a})
      . mapping _Coerce

-- | Non-streaming batch mode ONLY. Each object track corresponds to one
-- video segment where it appears.
gcvvotaSegment :: Lens' GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation (Maybe GoogleCloudVideointelligenceV1p2beta1_VideoSegment)
gcvvotaSegment
  = lens _gcvvotaSegment
      (\ s a -> s{_gcvvotaSegment = a})

-- | Entity to specify the object category that this track is labeled as.
gcvvotaEntity :: Lens' GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation (Maybe GoogleCloudVideointelligenceV1p2beta1_Entity)
gcvvotaEntity
  = lens _gcvvotaEntity
      (\ s a -> s{_gcvvotaEntity = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation'
                   <$>
                   (o .:? "frames" .!= mempty) <*> (o .:? "confidence")
                     <*> (o .:? "trackId")
                     <*> (o .:? "segment")
                     <*> (o .:? "entity"))

instance ToJSON
           GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation'{..}
          = object
              (catMaybes
                 [("frames" .=) <$> _gcvvotaFrames,
                  ("confidence" .=) <$> _gcvvotaConfidence,
                  ("trackId" .=) <$> _gcvvotaTrackId,
                  ("segment" .=) <$> _gcvvotaSegment,
                  ("entity" .=) <$> _gcvvotaEntity])

-- | Video annotation progress. Included in the \`metadata\` field of the
-- \`Operation\` returned by the \`GetOperation\` call of the
-- \`google::longrunning::Operations\` service.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_AnnotateVideoProgress' smart constructor.
newtype GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoProgress =
  GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoProgress'
    { _gcvvavpsAnnotationProgress :: Maybe [GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoProgress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvavpsAnnotationProgress'
googleCloudVideointelligenceV1p2beta1_AnnotateVideoProgress
    :: GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoProgress
googleCloudVideointelligenceV1p2beta1_AnnotateVideoProgress =
  GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoProgress'
    {_gcvvavpsAnnotationProgress = Nothing}

-- | Progress metadata for all videos specified in \`AnnotateVideoRequest\`.
gcvvavpsAnnotationProgress :: Lens' GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoProgress [GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress]
gcvvavpsAnnotationProgress
  = lens _gcvvavpsAnnotationProgress
      (\ s a -> s{_gcvvavpsAnnotationProgress = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoProgress
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p2beta1AnnotateVideoProgress"
              (\ o ->
                 GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoProgress'
                   <$> (o .:? "annotationProgress" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoProgress
         where
        toJSON
          GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoProgress'{..}
          = object
              (catMaybes
                 [("annotationProgress" .=) <$>
                    _gcvvavpsAnnotationProgress])

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
--
-- /See:/ 'googleLongrunning_OperationMetadata' smart constructor.
newtype GoogleLongrunning_OperationMetadata =
  GoogleLongrunning_OperationMetadata'
    { _glomAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleLongrunning_OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glomAddtional'
googleLongrunning_OperationMetadata
    :: HashMap Text JSONValue -- ^ 'glomAddtional'
    -> GoogleLongrunning_OperationMetadata
googleLongrunning_OperationMetadata pGlomAddtional_ =
  GoogleLongrunning_OperationMetadata'
    {_glomAddtional = _Coerce # pGlomAddtional_}

-- | Properties of the object. Contains field \'type with type URL.
glomAddtional :: Lens' GoogleLongrunning_OperationMetadata (HashMap Text JSONValue)
glomAddtional
  = lens _glomAddtional
      (\ s a -> s{_glomAddtional = a})
      . _Coerce

instance FromJSON GoogleLongrunning_OperationMetadata
         where
        parseJSON
          = withObject "GoogleLongrunningOperationMetadata"
              (\ o ->
                 GoogleLongrunning_OperationMetadata' <$>
                   (parseJSONObject o))

instance ToJSON GoogleLongrunning_OperationMetadata
         where
        toJSON = toJSON . _glomAddtional

-- | Video segment level annotation results for label detection.
--
-- /See:/ 'googleCloudVideointelligenceV1p1beta1_LabelSegment' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_LabelSegment =
  GoogleCloudVideointelligenceV1p1beta1_LabelSegment'
    { _gcvvlsConfidence :: !(Maybe (Textual Double))
    , _gcvvlsSegment    :: !(Maybe GoogleCloudVideointelligenceV1p1beta1_VideoSegment)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_LabelSegment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvlsConfidence'
--
-- * 'gcvvlsSegment'
googleCloudVideointelligenceV1p1beta1_LabelSegment
    :: GoogleCloudVideointelligenceV1p1beta1_LabelSegment
googleCloudVideointelligenceV1p1beta1_LabelSegment =
  GoogleCloudVideointelligenceV1p1beta1_LabelSegment'
    {_gcvvlsConfidence = Nothing, _gcvvlsSegment = Nothing}

-- | Confidence that the label is accurate. Range: [0, 1].
gcvvlsConfidence :: Lens' GoogleCloudVideointelligenceV1p1beta1_LabelSegment (Maybe Double)
gcvvlsConfidence
  = lens _gcvvlsConfidence
      (\ s a -> s{_gcvvlsConfidence = a})
      . mapping _Coerce

-- | Video segment where a label was detected.
gcvvlsSegment :: Lens' GoogleCloudVideointelligenceV1p1beta1_LabelSegment (Maybe GoogleCloudVideointelligenceV1p1beta1_VideoSegment)
gcvvlsSegment
  = lens _gcvvlsSegment
      (\ s a -> s{_gcvvlsSegment = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p1beta1_LabelSegment
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p1beta1LabelSegment"
              (\ o ->
                 GoogleCloudVideointelligenceV1p1beta1_LabelSegment'
                   <$> (o .:? "confidence") <*> (o .:? "segment"))

instance ToJSON
           GoogleCloudVideointelligenceV1p1beta1_LabelSegment
         where
        toJSON
          GoogleCloudVideointelligenceV1p1beta1_LabelSegment'{..}
          = object
              (catMaybes
                 [("confidence" .=) <$> _gcvvlsConfidence,
                  ("segment" .=) <$> _gcvvlsSegment])

-- | Video frame level annotation results for label detection.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_LabelFrame' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_LabelFrame =
  GoogleCloudVideointelligenceV1p2beta1_LabelFrame'
    { _ggTimeOffSet :: !(Maybe GDuration)
    , _ggConfidence :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_LabelFrame' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggTimeOffSet'
--
-- * 'ggConfidence'
googleCloudVideointelligenceV1p2beta1_LabelFrame
    :: GoogleCloudVideointelligenceV1p2beta1_LabelFrame
googleCloudVideointelligenceV1p2beta1_LabelFrame =
  GoogleCloudVideointelligenceV1p2beta1_LabelFrame'
    {_ggTimeOffSet = Nothing, _ggConfidence = Nothing}

-- | Time-offset, relative to the beginning of the video, corresponding to
-- the video frame for this location.
ggTimeOffSet :: Lens' GoogleCloudVideointelligenceV1p2beta1_LabelFrame (Maybe Scientific)
ggTimeOffSet
  = lens _ggTimeOffSet (\ s a -> s{_ggTimeOffSet = a})
      . mapping _GDuration

-- | Confidence that the label is accurate. Range: [0, 1].
ggConfidence :: Lens' GoogleCloudVideointelligenceV1p2beta1_LabelFrame (Maybe Double)
ggConfidence
  = lens _ggConfidence (\ s a -> s{_ggConfidence = a})
      . mapping _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1p2beta1_LabelFrame
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p2beta1LabelFrame"
              (\ o ->
                 GoogleCloudVideointelligenceV1p2beta1_LabelFrame' <$>
                   (o .:? "timeOffset") <*> (o .:? "confidence"))

instance ToJSON
           GoogleCloudVideointelligenceV1p2beta1_LabelFrame
         where
        toJSON
          GoogleCloudVideointelligenceV1p2beta1_LabelFrame'{..}
          = object
              (catMaybes
                 [("timeOffset" .=) <$> _ggTimeOffSet,
                  ("confidence" .=) <$> _ggConfidence])

-- | Annotation progress for a single video.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress =
  GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress'
    { _gStartTime       :: !(Maybe DateTime')
    , _gInputURI        :: !(Maybe Text)
    , _gProgressPercent :: !(Maybe (Textual Int32))
    , _gUpdateTime      :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gStartTime'
--
-- * 'gInputURI'
--
-- * 'gProgressPercent'
--
-- * 'gUpdateTime'
googleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress
    :: GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress
googleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress =
  GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress'
    { _gStartTime = Nothing
    , _gInputURI = Nothing
    , _gProgressPercent = Nothing
    , _gUpdateTime = Nothing
    }

-- | Time when the request was received.
gStartTime :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress (Maybe UTCTime)
gStartTime
  = lens _gStartTime (\ s a -> s{_gStartTime = a}) .
      mapping _DateTime

-- | Video file location in [Google Cloud
-- Storage](https:\/\/cloud.google.com\/storage\/).
gInputURI :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress (Maybe Text)
gInputURI
  = lens _gInputURI (\ s a -> s{_gInputURI = a})

-- | Approximate percentage processed thus far. Guaranteed to be 100 when
-- fully processed.
gProgressPercent :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress (Maybe Int32)
gProgressPercent
  = lens _gProgressPercent
      (\ s a -> s{_gProgressPercent = a})
      . mapping _Coerce

-- | Time of the most recent update.
gUpdateTime :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress (Maybe UTCTime)
gUpdateTime
  = lens _gUpdateTime (\ s a -> s{_gUpdateTime = a}) .
      mapping _DateTime

instance FromJSON
           GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress"
              (\ o ->
                 GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress'
                   <$>
                   (o .:? "startTime") <*> (o .:? "inputUri") <*>
                     (o .:? "progressPercent")
                     <*> (o .:? "updateTime"))

instance ToJSON
           GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress
         where
        toJSON
          GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _gStartTime,
                  ("inputUri" .=) <$> _gInputURI,
                  ("progressPercent" .=) <$> _gProgressPercent,
                  ("updateTime" .=) <$> _gUpdateTime])

-- | Detected entity from video analysis.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_Entity' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_Entity =
  GoogleCloudVideointelligenceV1p2beta1_Entity'
    { _gooLanguageCode :: !(Maybe Text)
    , _gooEntityId     :: !(Maybe Text)
    , _gooDescription  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_Entity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooLanguageCode'
--
-- * 'gooEntityId'
--
-- * 'gooDescription'
googleCloudVideointelligenceV1p2beta1_Entity
    :: GoogleCloudVideointelligenceV1p2beta1_Entity
googleCloudVideointelligenceV1p2beta1_Entity =
  GoogleCloudVideointelligenceV1p2beta1_Entity'
    { _gooLanguageCode = Nothing
    , _gooEntityId = Nothing
    , _gooDescription = Nothing
    }

-- | Language code for \`description\` in BCP-47 format.
gooLanguageCode :: Lens' GoogleCloudVideointelligenceV1p2beta1_Entity (Maybe Text)
gooLanguageCode
  = lens _gooLanguageCode
      (\ s a -> s{_gooLanguageCode = a})

-- | Opaque entity ID. Some IDs may be available in [Google Knowledge Graph
-- Search API](https:\/\/developers.google.com\/knowledge-graph\/).
gooEntityId :: Lens' GoogleCloudVideointelligenceV1p2beta1_Entity (Maybe Text)
gooEntityId
  = lens _gooEntityId (\ s a -> s{_gooEntityId = a})

-- | Textual description, e.g. \`Fixed-gear bicycle\`.
gooDescription :: Lens' GoogleCloudVideointelligenceV1p2beta1_Entity (Maybe Text)
gooDescription
  = lens _gooDescription
      (\ s a -> s{_gooDescription = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p2beta1_Entity
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p2beta1Entity"
              (\ o ->
                 GoogleCloudVideointelligenceV1p2beta1_Entity' <$>
                   (o .:? "languageCode") <*> (o .:? "entityId") <*>
                     (o .:? "description"))

instance ToJSON
           GoogleCloudVideointelligenceV1p2beta1_Entity
         where
        toJSON
          GoogleCloudVideointelligenceV1p2beta1_Entity'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _gooLanguageCode,
                  ("entityId" .=) <$> _gooEntityId,
                  ("description" .=) <$> _gooDescription])

-- | Word-specific information for recognized words. Word information is only
-- included in the response when certain request parameters are set, such
-- as \`enable_word_time_offsets\`.
--
-- /See:/ 'googleCloudVideointelligenceV1p1beta1_WordInfo' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_WordInfo =
  GoogleCloudVideointelligenceV1p1beta1_WordInfo'
    { _gcvvwicStartTime  :: !(Maybe GDuration)
    , _gcvvwicConfidence :: !(Maybe (Textual Double))
    , _gcvvwicEndTime    :: !(Maybe GDuration)
    , _gcvvwicWord       :: !(Maybe Text)
    , _gcvvwicSpeakerTag :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_WordInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvwicStartTime'
--
-- * 'gcvvwicConfidence'
--
-- * 'gcvvwicEndTime'
--
-- * 'gcvvwicWord'
--
-- * 'gcvvwicSpeakerTag'
googleCloudVideointelligenceV1p1beta1_WordInfo
    :: GoogleCloudVideointelligenceV1p1beta1_WordInfo
googleCloudVideointelligenceV1p1beta1_WordInfo =
  GoogleCloudVideointelligenceV1p1beta1_WordInfo'
    { _gcvvwicStartTime = Nothing
    , _gcvvwicConfidence = Nothing
    , _gcvvwicEndTime = Nothing
    , _gcvvwicWord = Nothing
    , _gcvvwicSpeakerTag = Nothing
    }

-- | Time offset relative to the beginning of the audio, and corresponding to
-- the start of the spoken word. This field is only set if
-- \`enable_word_time_offsets=true\` and only in the top hypothesis. This
-- is an experimental feature and the accuracy of the time offset can vary.
gcvvwicStartTime :: Lens' GoogleCloudVideointelligenceV1p1beta1_WordInfo (Maybe Scientific)
gcvvwicStartTime
  = lens _gcvvwicStartTime
      (\ s a -> s{_gcvvwicStartTime = a})
      . mapping _GDuration

-- | Output only. The confidence estimate between 0.0 and 1.0. A higher
-- number indicates an estimated greater likelihood that the recognized
-- words are correct. This field is set only for the top alternative. This
-- field is not guaranteed to be accurate and users should not rely on it
-- to be always provided. The default of 0.0 is a sentinel value indicating
-- \`confidence\` was not set.
gcvvwicConfidence :: Lens' GoogleCloudVideointelligenceV1p1beta1_WordInfo (Maybe Double)
gcvvwicConfidence
  = lens _gcvvwicConfidence
      (\ s a -> s{_gcvvwicConfidence = a})
      . mapping _Coerce

-- | Time offset relative to the beginning of the audio, and corresponding to
-- the end of the spoken word. This field is only set if
-- \`enable_word_time_offsets=true\` and only in the top hypothesis. This
-- is an experimental feature and the accuracy of the time offset can vary.
gcvvwicEndTime :: Lens' GoogleCloudVideointelligenceV1p1beta1_WordInfo (Maybe Scientific)
gcvvwicEndTime
  = lens _gcvvwicEndTime
      (\ s a -> s{_gcvvwicEndTime = a})
      . mapping _GDuration

-- | The word corresponding to this set of information.
gcvvwicWord :: Lens' GoogleCloudVideointelligenceV1p1beta1_WordInfo (Maybe Text)
gcvvwicWord
  = lens _gcvvwicWord (\ s a -> s{_gcvvwicWord = a})

-- | Output only. A distinct integer value is assigned for every speaker
-- within the audio. This field specifies which one of those speakers was
-- detected to have spoken this word. Value ranges from 1 up to
-- diarization_speaker_count, and is only set if speaker diarization is
-- enabled.
gcvvwicSpeakerTag :: Lens' GoogleCloudVideointelligenceV1p1beta1_WordInfo (Maybe Int32)
gcvvwicSpeakerTag
  = lens _gcvvwicSpeakerTag
      (\ s a -> s{_gcvvwicSpeakerTag = a})
      . mapping _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1p1beta1_WordInfo
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p1beta1WordInfo"
              (\ o ->
                 GoogleCloudVideointelligenceV1p1beta1_WordInfo' <$>
                   (o .:? "startTime") <*> (o .:? "confidence") <*>
                     (o .:? "endTime")
                     <*> (o .:? "word")
                     <*> (o .:? "speakerTag"))

instance ToJSON
           GoogleCloudVideointelligenceV1p1beta1_WordInfo
         where
        toJSON
          GoogleCloudVideointelligenceV1p1beta1_WordInfo'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _gcvvwicStartTime,
                  ("confidence" .=) <$> _gcvvwicConfidence,
                  ("endTime" .=) <$> _gcvvwicEndTime,
                  ("word" .=) <$> _gcvvwicWord,
                  ("speakerTag" .=) <$> _gcvvwicSpeakerTag])

-- | This resource represents a long-running operation that is the result of
-- a network API call.
--
-- /See:/ 'googleLongrunning_Operation' smart constructor.
data GoogleLongrunning_Operation =
  GoogleLongrunning_Operation'
    { _gloDone     :: !(Maybe Bool)
    , _gloError    :: !(Maybe GoogleRpc_Status)
    , _gloResponse :: !(Maybe GoogleLongrunning_OperationResponse)
    , _gloName     :: !(Maybe Text)
    , _gloMetadata :: !(Maybe GoogleLongrunning_OperationMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleLongrunning_Operation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gloDone'
--
-- * 'gloError'
--
-- * 'gloResponse'
--
-- * 'gloName'
--
-- * 'gloMetadata'
googleLongrunning_Operation
    :: GoogleLongrunning_Operation
googleLongrunning_Operation =
  GoogleLongrunning_Operation'
    { _gloDone = Nothing
    , _gloError = Nothing
    , _gloResponse = Nothing
    , _gloName = Nothing
    , _gloMetadata = Nothing
    }

-- | If the value is \`false\`, it means the operation is still in progress.
-- If \`true\`, the operation is completed, and either \`error\` or
-- \`response\` is available.
gloDone :: Lens' GoogleLongrunning_Operation (Maybe Bool)
gloDone = lens _gloDone (\ s a -> s{_gloDone = a})

-- | The error result of the operation in case of failure or cancellation.
gloError :: Lens' GoogleLongrunning_Operation (Maybe GoogleRpc_Status)
gloError = lens _gloError (\ s a -> s{_gloError = a})

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
gloResponse :: Lens' GoogleLongrunning_Operation (Maybe GoogleLongrunning_OperationResponse)
gloResponse
  = lens _gloResponse (\ s a -> s{_gloResponse = a})

-- | The server-assigned name, which is only unique within the same service
-- that originally returns it. If you use the default HTTP mapping, the
-- \`name\` should have the format of \`operations\/some\/unique\/name\`.
gloName :: Lens' GoogleLongrunning_Operation (Maybe Text)
gloName = lens _gloName (\ s a -> s{_gloName = a})

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
gloMetadata :: Lens' GoogleLongrunning_Operation (Maybe GoogleLongrunning_OperationMetadata)
gloMetadata
  = lens _gloMetadata (\ s a -> s{_gloMetadata = a})

instance FromJSON GoogleLongrunning_Operation where
        parseJSON
          = withObject "GoogleLongrunningOperation"
              (\ o ->
                 GoogleLongrunning_Operation' <$>
                   (o .:? "done") <*> (o .:? "error") <*>
                     (o .:? "response")
                     <*> (o .:? "name")
                     <*> (o .:? "metadata"))

instance ToJSON GoogleLongrunning_Operation where
        toJSON GoogleLongrunning_Operation'{..}
          = object
              (catMaybes
                 [("done" .=) <$> _gloDone,
                  ("error" .=) <$> _gloError,
                  ("response" .=) <$> _gloResponse,
                  ("name" .=) <$> _gloName,
                  ("metadata" .=) <$> _gloMetadata])

-- | Alternative hypotheses (a.k.a. n-best list).
--
-- /See:/ 'googleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative =
  GoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative'
    { _gcvvsracConfidence :: !(Maybe (Textual Double))
    , _gcvvsracWords      :: !(Maybe [GoogleCloudVideointelligenceV1p1beta1_WordInfo])
    , _gcvvsracTranscript :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvsracConfidence'
--
-- * 'gcvvsracWords'
--
-- * 'gcvvsracTranscript'
googleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative
    :: GoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative
googleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative =
  GoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative'
    { _gcvvsracConfidence = Nothing
    , _gcvvsracWords = Nothing
    , _gcvvsracTranscript = Nothing
    }

-- | The confidence estimate between 0.0 and 1.0. A higher number indicates
-- an estimated greater likelihood that the recognized words are correct.
-- This field is typically provided only for the top hypothesis, and only
-- for \`is_final=true\` results. Clients should not rely on the
-- \`confidence\` field as it is not guaranteed to be accurate or
-- consistent. The default of 0.0 is a sentinel value indicating
-- \`confidence\` was not set.
gcvvsracConfidence :: Lens' GoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative (Maybe Double)
gcvvsracConfidence
  = lens _gcvvsracConfidence
      (\ s a -> s{_gcvvsracConfidence = a})
      . mapping _Coerce

-- | A list of word-specific information for each recognized word.
gcvvsracWords :: Lens' GoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative [GoogleCloudVideointelligenceV1p1beta1_WordInfo]
gcvvsracWords
  = lens _gcvvsracWords
      (\ s a -> s{_gcvvsracWords = a})
      . _Default
      . _Coerce

-- | Transcript text representing the words that the user spoke.
gcvvsracTranscript :: Lens' GoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative (Maybe Text)
gcvvsracTranscript
  = lens _gcvvsracTranscript
      (\ s a -> s{_gcvvsracTranscript = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative"
              (\ o ->
                 GoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative'
                   <$>
                   (o .:? "confidence") <*> (o .:? "words" .!= mempty)
                     <*> (o .:? "transcript"))

instance ToJSON
           GoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative
         where
        toJSON
          GoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative'{..}
          = object
              (catMaybes
                 [("confidence" .=) <$> _gcvvsracConfidence,
                  ("words" .=) <$> _gcvvsracWords,
                  ("transcript" .=) <$> _gcvvsracTranscript])

-- | Video frame level annotation results for explicit content.
--
-- /See:/ 'googleCloudVideointelligenceV1_ExplicitContentFrame' smart constructor.
data GoogleCloudVideointelligenceV1_ExplicitContentFrame =
  GoogleCloudVideointelligenceV1_ExplicitContentFrame'
    { _gTimeOffSet            :: !(Maybe GDuration)
    , _gPornographyLikelihood :: !(Maybe GoogleCloudVideointelligenceV1_ExplicitContentFramePornographyLikelihood)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_ExplicitContentFrame' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gTimeOffSet'
--
-- * 'gPornographyLikelihood'
googleCloudVideointelligenceV1_ExplicitContentFrame
    :: GoogleCloudVideointelligenceV1_ExplicitContentFrame
googleCloudVideointelligenceV1_ExplicitContentFrame =
  GoogleCloudVideointelligenceV1_ExplicitContentFrame'
    {_gTimeOffSet = Nothing, _gPornographyLikelihood = Nothing}

-- | Time-offset, relative to the beginning of the video, corresponding to
-- the video frame for this location.
gTimeOffSet :: Lens' GoogleCloudVideointelligenceV1_ExplicitContentFrame (Maybe Scientific)
gTimeOffSet
  = lens _gTimeOffSet (\ s a -> s{_gTimeOffSet = a}) .
      mapping _GDuration

-- | Likelihood of the pornography content..
gPornographyLikelihood :: Lens' GoogleCloudVideointelligenceV1_ExplicitContentFrame (Maybe GoogleCloudVideointelligenceV1_ExplicitContentFramePornographyLikelihood)
gPornographyLikelihood
  = lens _gPornographyLikelihood
      (\ s a -> s{_gPornographyLikelihood = a})

instance FromJSON
           GoogleCloudVideointelligenceV1_ExplicitContentFrame
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1ExplicitContentFrame"
              (\ o ->
                 GoogleCloudVideointelligenceV1_ExplicitContentFrame'
                   <$>
                   (o .:? "timeOffset") <*>
                     (o .:? "pornographyLikelihood"))

instance ToJSON
           GoogleCloudVideointelligenceV1_ExplicitContentFrame
         where
        toJSON
          GoogleCloudVideointelligenceV1_ExplicitContentFrame'{..}
          = object
              (catMaybes
                 [("timeOffset" .=) <$> _gTimeOffSet,
                  ("pornographyLikelihood" .=) <$>
                    _gPornographyLikelihood])

-- | Video segment.
--
-- /See:/ 'googleCloudVideointelligenceV1beta2_VideoSegment' smart constructor.
data GoogleCloudVideointelligenceV1beta2_VideoSegment =
  GoogleCloudVideointelligenceV1beta2_VideoSegment'
    { _gStartTimeOffSet :: !(Maybe GDuration)
    , _gEndTimeOffSet   :: !(Maybe GDuration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_VideoSegment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gStartTimeOffSet'
--
-- * 'gEndTimeOffSet'
googleCloudVideointelligenceV1beta2_VideoSegment
    :: GoogleCloudVideointelligenceV1beta2_VideoSegment
googleCloudVideointelligenceV1beta2_VideoSegment =
  GoogleCloudVideointelligenceV1beta2_VideoSegment'
    {_gStartTimeOffSet = Nothing, _gEndTimeOffSet = Nothing}

-- | Time-offset, relative to the beginning of the video, corresponding to
-- the start of the segment (inclusive).
gStartTimeOffSet :: Lens' GoogleCloudVideointelligenceV1beta2_VideoSegment (Maybe Scientific)
gStartTimeOffSet
  = lens _gStartTimeOffSet
      (\ s a -> s{_gStartTimeOffSet = a})
      . mapping _GDuration

-- | Time-offset, relative to the beginning of the video, corresponding to
-- the end of the segment (inclusive).
gEndTimeOffSet :: Lens' GoogleCloudVideointelligenceV1beta2_VideoSegment (Maybe Scientific)
gEndTimeOffSet
  = lens _gEndTimeOffSet
      (\ s a -> s{_gEndTimeOffSet = a})
      . mapping _GDuration

instance FromJSON
           GoogleCloudVideointelligenceV1beta2_VideoSegment
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1beta2VideoSegment"
              (\ o ->
                 GoogleCloudVideointelligenceV1beta2_VideoSegment' <$>
                   (o .:? "startTimeOffset") <*>
                     (o .:? "endTimeOffset"))

instance ToJSON
           GoogleCloudVideointelligenceV1beta2_VideoSegment
         where
        toJSON
          GoogleCloudVideointelligenceV1beta2_VideoSegment'{..}
          = object
              (catMaybes
                 [("startTimeOffset" .=) <$> _gStartTimeOffSet,
                  ("endTimeOffset" .=) <$> _gEndTimeOffSet])

-- | Annotation results for a single video.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_VideoAnnotationResults' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults =
  GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults'
    { _gcvvvarsShotAnnotations         :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_VideoSegment])
    , _gcvvvarsShotLabelAnnotations    :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation])
    , _gcvvvarsInputURI                :: !(Maybe Text)
    , _gcvvvarsError                   :: !(Maybe GoogleRpc_Status)
    , _gcvvvarsObjectAnnotations       :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation])
    , _gcvvvarsFrameLabelAnnotations   :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation])
    , _gcvvvarsSpeechTranscriptions    :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription])
    , _gcvvvarsTextAnnotations         :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_TextAnnotation])
    , _gcvvvarsSegmentLabelAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation])
    , _gcvvvarsExplicitAnnotation      :: !(Maybe GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvvarsShotAnnotations'
--
-- * 'gcvvvarsShotLabelAnnotations'
--
-- * 'gcvvvarsInputURI'
--
-- * 'gcvvvarsError'
--
-- * 'gcvvvarsObjectAnnotations'
--
-- * 'gcvvvarsFrameLabelAnnotations'
--
-- * 'gcvvvarsSpeechTranscriptions'
--
-- * 'gcvvvarsTextAnnotations'
--
-- * 'gcvvvarsSegmentLabelAnnotations'
--
-- * 'gcvvvarsExplicitAnnotation'
googleCloudVideointelligenceV1p2beta1_VideoAnnotationResults
    :: GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults
googleCloudVideointelligenceV1p2beta1_VideoAnnotationResults =
  GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults'
    { _gcvvvarsShotAnnotations = Nothing
    , _gcvvvarsShotLabelAnnotations = Nothing
    , _gcvvvarsInputURI = Nothing
    , _gcvvvarsError = Nothing
    , _gcvvvarsObjectAnnotations = Nothing
    , _gcvvvarsFrameLabelAnnotations = Nothing
    , _gcvvvarsSpeechTranscriptions = Nothing
    , _gcvvvarsTextAnnotations = Nothing
    , _gcvvvarsSegmentLabelAnnotations = Nothing
    , _gcvvvarsExplicitAnnotation = Nothing
    }

-- | Shot annotations. Each shot is represented as a video segment.
gcvvvarsShotAnnotations :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p2beta1_VideoSegment]
gcvvvarsShotAnnotations
  = lens _gcvvvarsShotAnnotations
      (\ s a -> s{_gcvvvarsShotAnnotations = a})
      . _Default
      . _Coerce

-- | Label annotations on shot level. There is exactly one element for each
-- unique label.
gcvvvarsShotLabelAnnotations :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation]
gcvvvarsShotLabelAnnotations
  = lens _gcvvvarsShotLabelAnnotations
      (\ s a -> s{_gcvvvarsShotLabelAnnotations = a})
      . _Default
      . _Coerce

-- | Video file location in [Google Cloud
-- Storage](https:\/\/cloud.google.com\/storage\/).
gcvvvarsInputURI :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults (Maybe Text)
gcvvvarsInputURI
  = lens _gcvvvarsInputURI
      (\ s a -> s{_gcvvvarsInputURI = a})

-- | If set, indicates an error. Note that for a single
-- \`AnnotateVideoRequest\` some videos may succeed and some may fail.
gcvvvarsError :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults (Maybe GoogleRpc_Status)
gcvvvarsError
  = lens _gcvvvarsError
      (\ s a -> s{_gcvvvarsError = a})

-- | Annotations for list of objects detected and tracked in video.
gcvvvarsObjectAnnotations :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation]
gcvvvarsObjectAnnotations
  = lens _gcvvvarsObjectAnnotations
      (\ s a -> s{_gcvvvarsObjectAnnotations = a})
      . _Default
      . _Coerce

-- | Label annotations on frame level. There is exactly one element for each
-- unique label.
gcvvvarsFrameLabelAnnotations :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation]
gcvvvarsFrameLabelAnnotations
  = lens _gcvvvarsFrameLabelAnnotations
      (\ s a -> s{_gcvvvarsFrameLabelAnnotations = a})
      . _Default
      . _Coerce

-- | Speech transcription.
gcvvvarsSpeechTranscriptions :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription]
gcvvvarsSpeechTranscriptions
  = lens _gcvvvarsSpeechTranscriptions
      (\ s a -> s{_gcvvvarsSpeechTranscriptions = a})
      . _Default
      . _Coerce

-- | OCR text detection and tracking. Annotations for list of detected text
-- snippets. Each will have list of frame information associated with it.
gcvvvarsTextAnnotations :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p2beta1_TextAnnotation]
gcvvvarsTextAnnotations
  = lens _gcvvvarsTextAnnotations
      (\ s a -> s{_gcvvvarsTextAnnotations = a})
      . _Default
      . _Coerce

-- | Label annotations on video level or user specified segment level. There
-- is exactly one element for each unique label.
gcvvvarsSegmentLabelAnnotations :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation]
gcvvvarsSegmentLabelAnnotations
  = lens _gcvvvarsSegmentLabelAnnotations
      (\ s a -> s{_gcvvvarsSegmentLabelAnnotations = a})
      . _Default
      . _Coerce

-- | Explicit content annotation.
gcvvvarsExplicitAnnotation :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults (Maybe GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation)
gcvvvarsExplicitAnnotation
  = lens _gcvvvarsExplicitAnnotation
      (\ s a -> s{_gcvvvarsExplicitAnnotation = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults"
              (\ o ->
                 GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults'
                   <$>
                   (o .:? "shotAnnotations" .!= mempty) <*>
                     (o .:? "shotLabelAnnotations" .!= mempty)
                     <*> (o .:? "inputUri")
                     <*> (o .:? "error")
                     <*> (o .:? "objectAnnotations" .!= mempty)
                     <*> (o .:? "frameLabelAnnotations" .!= mempty)
                     <*> (o .:? "speechTranscriptions" .!= mempty)
                     <*> (o .:? "textAnnotations" .!= mempty)
                     <*> (o .:? "segmentLabelAnnotations" .!= mempty)
                     <*> (o .:? "explicitAnnotation"))

instance ToJSON
           GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults
         where
        toJSON
          GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults'{..}
          = object
              (catMaybes
                 [("shotAnnotations" .=) <$> _gcvvvarsShotAnnotations,
                  ("shotLabelAnnotations" .=) <$>
                    _gcvvvarsShotLabelAnnotations,
                  ("inputUri" .=) <$> _gcvvvarsInputURI,
                  ("error" .=) <$> _gcvvvarsError,
                  ("objectAnnotations" .=) <$>
                    _gcvvvarsObjectAnnotations,
                  ("frameLabelAnnotations" .=) <$>
                    _gcvvvarsFrameLabelAnnotations,
                  ("speechTranscriptions" .=) <$>
                    _gcvvvarsSpeechTranscriptions,
                  ("textAnnotations" .=) <$> _gcvvvarsTextAnnotations,
                  ("segmentLabelAnnotations" .=) <$>
                    _gcvvvarsSegmentLabelAnnotations,
                  ("explicitAnnotation" .=) <$>
                    _gcvvvarsExplicitAnnotation])

-- | Video segment level annotation results for label detection.
--
-- /See:/ 'googleCloudVideointelligenceV1beta2_LabelSegment' smart constructor.
data GoogleCloudVideointelligenceV1beta2_LabelSegment =
  GoogleCloudVideointelligenceV1beta2_LabelSegment'
    { _gcvvlscConfidence :: !(Maybe (Textual Double))
    , _gcvvlscSegment    :: !(Maybe GoogleCloudVideointelligenceV1beta2_VideoSegment)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_LabelSegment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvlscConfidence'
--
-- * 'gcvvlscSegment'
googleCloudVideointelligenceV1beta2_LabelSegment
    :: GoogleCloudVideointelligenceV1beta2_LabelSegment
googleCloudVideointelligenceV1beta2_LabelSegment =
  GoogleCloudVideointelligenceV1beta2_LabelSegment'
    {_gcvvlscConfidence = Nothing, _gcvvlscSegment = Nothing}

-- | Confidence that the label is accurate. Range: [0, 1].
gcvvlscConfidence :: Lens' GoogleCloudVideointelligenceV1beta2_LabelSegment (Maybe Double)
gcvvlscConfidence
  = lens _gcvvlscConfidence
      (\ s a -> s{_gcvvlscConfidence = a})
      . mapping _Coerce

-- | Video segment where a label was detected.
gcvvlscSegment :: Lens' GoogleCloudVideointelligenceV1beta2_LabelSegment (Maybe GoogleCloudVideointelligenceV1beta2_VideoSegment)
gcvvlscSegment
  = lens _gcvvlscSegment
      (\ s a -> s{_gcvvlscSegment = a})

instance FromJSON
           GoogleCloudVideointelligenceV1beta2_LabelSegment
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1beta2LabelSegment"
              (\ o ->
                 GoogleCloudVideointelligenceV1beta2_LabelSegment' <$>
                   (o .:? "confidence") <*> (o .:? "segment"))

instance ToJSON
           GoogleCloudVideointelligenceV1beta2_LabelSegment
         where
        toJSON
          GoogleCloudVideointelligenceV1beta2_LabelSegment'{..}
          = object
              (catMaybes
                 [("confidence" .=) <$> _gcvvlscConfidence,
                  ("segment" .=) <$> _gcvvlscSegment])

-- | Normalized bounding polygon for text (that might not be aligned with
-- axis). Contains list of the corner points in clockwise order starting
-- from top-left corner. For example, for a rectangular bounding box: When
-- the text is horizontal it might look like: 0----1 | | 3----2 When it\'s
-- clockwise rotated 180 degrees around the top-left corner it becomes:
-- 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3). Note
-- that values can be less than 0, or greater than 1 due to trignometric
-- calculations for location of the box.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly' smart constructor.
newtype GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly =
  GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly'
    { _gcvvnbpVertices :: Maybe [GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvnbpVertices'
googleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly
    :: GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly
googleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly =
  GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly'
    {_gcvvnbpVertices = Nothing}

-- | Normalized vertices of the bounding polygon.
gcvvnbpVertices :: Lens' GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly [GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex]
gcvvnbpVertices
  = lens _gcvvnbpVertices
      (\ s a -> s{_gcvvnbpVertices = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly"
              (\ o ->
                 GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly'
                   <$> (o .:? "vertices" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly
         where
        toJSON
          GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly'{..}
          = object
              (catMaybes [("vertices" .=) <$> _gcvvnbpVertices])

-- | Word-specific information for recognized words. Word information is only
-- included in the response when certain request parameters are set, such
-- as \`enable_word_time_offsets\`.
--
-- /See:/ 'googleCloudVideointelligenceV1beta2_WordInfo' smart constructor.
data GoogleCloudVideointelligenceV1beta2_WordInfo =
  GoogleCloudVideointelligenceV1beta2_WordInfo'
    { _goooStartTime  :: !(Maybe GDuration)
    , _goooConfidence :: !(Maybe (Textual Double))
    , _goooEndTime    :: !(Maybe GDuration)
    , _goooWord       :: !(Maybe Text)
    , _goooSpeakerTag :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_WordInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'goooStartTime'
--
-- * 'goooConfidence'
--
-- * 'goooEndTime'
--
-- * 'goooWord'
--
-- * 'goooSpeakerTag'
googleCloudVideointelligenceV1beta2_WordInfo
    :: GoogleCloudVideointelligenceV1beta2_WordInfo
googleCloudVideointelligenceV1beta2_WordInfo =
  GoogleCloudVideointelligenceV1beta2_WordInfo'
    { _goooStartTime = Nothing
    , _goooConfidence = Nothing
    , _goooEndTime = Nothing
    , _goooWord = Nothing
    , _goooSpeakerTag = Nothing
    }

-- | Time offset relative to the beginning of the audio, and corresponding to
-- the start of the spoken word. This field is only set if
-- \`enable_word_time_offsets=true\` and only in the top hypothesis. This
-- is an experimental feature and the accuracy of the time offset can vary.
goooStartTime :: Lens' GoogleCloudVideointelligenceV1beta2_WordInfo (Maybe Scientific)
goooStartTime
  = lens _goooStartTime
      (\ s a -> s{_goooStartTime = a})
      . mapping _GDuration

-- | Output only. The confidence estimate between 0.0 and 1.0. A higher
-- number indicates an estimated greater likelihood that the recognized
-- words are correct. This field is set only for the top alternative. This
-- field is not guaranteed to be accurate and users should not rely on it
-- to be always provided. The default of 0.0 is a sentinel value indicating
-- \`confidence\` was not set.
goooConfidence :: Lens' GoogleCloudVideointelligenceV1beta2_WordInfo (Maybe Double)
goooConfidence
  = lens _goooConfidence
      (\ s a -> s{_goooConfidence = a})
      . mapping _Coerce

-- | Time offset relative to the beginning of the audio, and corresponding to
-- the end of the spoken word. This field is only set if
-- \`enable_word_time_offsets=true\` and only in the top hypothesis. This
-- is an experimental feature and the accuracy of the time offset can vary.
goooEndTime :: Lens' GoogleCloudVideointelligenceV1beta2_WordInfo (Maybe Scientific)
goooEndTime
  = lens _goooEndTime (\ s a -> s{_goooEndTime = a}) .
      mapping _GDuration

-- | The word corresponding to this set of information.
goooWord :: Lens' GoogleCloudVideointelligenceV1beta2_WordInfo (Maybe Text)
goooWord = lens _goooWord (\ s a -> s{_goooWord = a})

-- | Output only. A distinct integer value is assigned for every speaker
-- within the audio. This field specifies which one of those speakers was
-- detected to have spoken this word. Value ranges from 1 up to
-- diarization_speaker_count, and is only set if speaker diarization is
-- enabled.
goooSpeakerTag :: Lens' GoogleCloudVideointelligenceV1beta2_WordInfo (Maybe Int32)
goooSpeakerTag
  = lens _goooSpeakerTag
      (\ s a -> s{_goooSpeakerTag = a})
      . mapping _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1beta2_WordInfo
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1beta2WordInfo"
              (\ o ->
                 GoogleCloudVideointelligenceV1beta2_WordInfo' <$>
                   (o .:? "startTime") <*> (o .:? "confidence") <*>
                     (o .:? "endTime")
                     <*> (o .:? "word")
                     <*> (o .:? "speakerTag"))

instance ToJSON
           GoogleCloudVideointelligenceV1beta2_WordInfo
         where
        toJSON
          GoogleCloudVideointelligenceV1beta2_WordInfo'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _goooStartTime,
                  ("confidence" .=) <$> _goooConfidence,
                  ("endTime" .=) <$> _goooEndTime,
                  ("word" .=) <$> _goooWord,
                  ("speakerTag" .=) <$> _goooSpeakerTag])

-- | Explicit content annotation (based on per-frame visual signals only). If
-- no explicit content has been detected in a frame, no annotations are
-- present for that frame.
--
-- /See:/ 'googleCloudVideointelligenceV1_ExplicitContentAnnotation' smart constructor.
newtype GoogleCloudVideointelligenceV1_ExplicitContentAnnotation =
  GoogleCloudVideointelligenceV1_ExplicitContentAnnotation'
    { _gooFrames :: Maybe [GoogleCloudVideointelligenceV1_ExplicitContentFrame]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_ExplicitContentAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooFrames'
googleCloudVideointelligenceV1_ExplicitContentAnnotation
    :: GoogleCloudVideointelligenceV1_ExplicitContentAnnotation
googleCloudVideointelligenceV1_ExplicitContentAnnotation =
  GoogleCloudVideointelligenceV1_ExplicitContentAnnotation'
    {_gooFrames = Nothing}

-- | All video frames where explicit content was detected.
gooFrames :: Lens' GoogleCloudVideointelligenceV1_ExplicitContentAnnotation [GoogleCloudVideointelligenceV1_ExplicitContentFrame]
gooFrames
  = lens _gooFrames (\ s a -> s{_gooFrames = a}) .
      _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1_ExplicitContentAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1ExplicitContentAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1_ExplicitContentAnnotation'
                   <$> (o .:? "frames" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1_ExplicitContentAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1_ExplicitContentAnnotation'{..}
          = object (catMaybes [("frames" .=) <$> _gooFrames])

-- | Video annotation response. Included in the \`response\` field of the
-- \`Operation\` returned by the \`GetOperation\` call of the
-- \`google::longrunning::Operations\` service.
--
-- /See:/ 'googleCloudVideointelligenceV1_AnnotateVideoResponse' smart constructor.
newtype GoogleCloudVideointelligenceV1_AnnotateVideoResponse =
  GoogleCloudVideointelligenceV1_AnnotateVideoResponse'
    { _gooAnnotationResults :: Maybe [GoogleCloudVideointelligenceV1_VideoAnnotationResults]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_AnnotateVideoResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooAnnotationResults'
googleCloudVideointelligenceV1_AnnotateVideoResponse
    :: GoogleCloudVideointelligenceV1_AnnotateVideoResponse
googleCloudVideointelligenceV1_AnnotateVideoResponse =
  GoogleCloudVideointelligenceV1_AnnotateVideoResponse'
    {_gooAnnotationResults = Nothing}

-- | Annotation results for all videos specified in \`AnnotateVideoRequest\`.
gooAnnotationResults :: Lens' GoogleCloudVideointelligenceV1_AnnotateVideoResponse [GoogleCloudVideointelligenceV1_VideoAnnotationResults]
gooAnnotationResults
  = lens _gooAnnotationResults
      (\ s a -> s{_gooAnnotationResults = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1_AnnotateVideoResponse
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1AnnotateVideoResponse"
              (\ o ->
                 GoogleCloudVideointelligenceV1_AnnotateVideoResponse'
                   <$> (o .:? "annotationResults" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1_AnnotateVideoResponse
         where
        toJSON
          GoogleCloudVideointelligenceV1_AnnotateVideoResponse'{..}
          = object
              (catMaybes
                 [("annotationResults" .=) <$> _gooAnnotationResults])

-- | A vertex represents a 2D point in the image. NOTE: the normalized vertex
-- coordinates are relative to the original image and range from 0 to 1.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_NormalizedVertex' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex =
  GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex'
    { _gcvvnvX :: !(Maybe (Textual Double))
    , _gcvvnvY :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvnvX'
--
-- * 'gcvvnvY'
googleCloudVideointelligenceV1p2beta1_NormalizedVertex
    :: GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex
googleCloudVideointelligenceV1p2beta1_NormalizedVertex =
  GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex'
    {_gcvvnvX = Nothing, _gcvvnvY = Nothing}

-- | X coordinate.
gcvvnvX :: Lens' GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex (Maybe Double)
gcvvnvX
  = lens _gcvvnvX (\ s a -> s{_gcvvnvX = a}) .
      mapping _Coerce

-- | Y coordinate.
gcvvnvY :: Lens' GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex (Maybe Double)
gcvvnvY
  = lens _gcvvnvY (\ s a -> s{_gcvvnvY = a}) .
      mapping _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p2beta1NormalizedVertex"
              (\ o ->
                 GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex'
                   <$> (o .:? "x") <*> (o .:? "y"))

instance ToJSON
           GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex
         where
        toJSON
          GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex'{..}
          = object
              (catMaybes
                 [("x" .=) <$> _gcvvnvX, ("y" .=) <$> _gcvvnvY])

-- | Label annotation.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_LabelAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation =
  GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation'
    { _gcvvlacCategoryEntities :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_Entity])
    , _gcvvlacFrames           :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_LabelFrame])
    , _gcvvlacSegments         :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_LabelSegment])
    , _gcvvlacEntity           :: !(Maybe GoogleCloudVideointelligenceV1p2beta1_Entity)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvlacCategoryEntities'
--
-- * 'gcvvlacFrames'
--
-- * 'gcvvlacSegments'
--
-- * 'gcvvlacEntity'
googleCloudVideointelligenceV1p2beta1_LabelAnnotation
    :: GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation
googleCloudVideointelligenceV1p2beta1_LabelAnnotation =
  GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation'
    { _gcvvlacCategoryEntities = Nothing
    , _gcvvlacFrames = Nothing
    , _gcvvlacSegments = Nothing
    , _gcvvlacEntity = Nothing
    }

-- | Common categories for the detected entity. E.g. when the label is
-- \`Terrier\` the category is likely \`dog\`. And in some cases there
-- might be more than one categories e.g. \`Terrier\` could also be a
-- \`pet\`.
gcvvlacCategoryEntities :: Lens' GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation [GoogleCloudVideointelligenceV1p2beta1_Entity]
gcvvlacCategoryEntities
  = lens _gcvvlacCategoryEntities
      (\ s a -> s{_gcvvlacCategoryEntities = a})
      . _Default
      . _Coerce

-- | All video frames where a label was detected.
gcvvlacFrames :: Lens' GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation [GoogleCloudVideointelligenceV1p2beta1_LabelFrame]
gcvvlacFrames
  = lens _gcvvlacFrames
      (\ s a -> s{_gcvvlacFrames = a})
      . _Default
      . _Coerce

-- | All video segments where a label was detected.
gcvvlacSegments :: Lens' GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation [GoogleCloudVideointelligenceV1p2beta1_LabelSegment]
gcvvlacSegments
  = lens _gcvvlacSegments
      (\ s a -> s{_gcvvlacSegments = a})
      . _Default
      . _Coerce

-- | Detected entity.
gcvvlacEntity :: Lens' GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation (Maybe GoogleCloudVideointelligenceV1p2beta1_Entity)
gcvvlacEntity
  = lens _gcvvlacEntity
      (\ s a -> s{_gcvvlacEntity = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p2beta1LabelAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation'
                   <$>
                   (o .:? "categoryEntities" .!= mempty) <*>
                     (o .:? "frames" .!= mempty)
                     <*> (o .:? "segments" .!= mempty)
                     <*> (o .:? "entity"))

instance ToJSON
           GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation'{..}
          = object
              (catMaybes
                 [("categoryEntities" .=) <$>
                    _gcvvlacCategoryEntities,
                  ("frames" .=) <$> _gcvvlacFrames,
                  ("segments" .=) <$> _gcvvlacSegments,
                  ("entity" .=) <$> _gcvvlacEntity])

-- | Alternative hypotheses (a.k.a. n-best list).
--
-- /See:/ 'googleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative' smart constructor.
data GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative =
  GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative'
    { _gcvvsra1Confidence :: !(Maybe (Textual Double))
    , _gcvvsra1Words      :: !(Maybe [GoogleCloudVideointelligenceV1beta2_WordInfo])
    , _gcvvsra1Transcript :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvsra1Confidence'
--
-- * 'gcvvsra1Words'
--
-- * 'gcvvsra1Transcript'
googleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative
    :: GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative
googleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative =
  GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative'
    { _gcvvsra1Confidence = Nothing
    , _gcvvsra1Words = Nothing
    , _gcvvsra1Transcript = Nothing
    }

-- | The confidence estimate between 0.0 and 1.0. A higher number indicates
-- an estimated greater likelihood that the recognized words are correct.
-- This field is typically provided only for the top hypothesis, and only
-- for \`is_final=true\` results. Clients should not rely on the
-- \`confidence\` field as it is not guaranteed to be accurate or
-- consistent. The default of 0.0 is a sentinel value indicating
-- \`confidence\` was not set.
gcvvsra1Confidence :: Lens' GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative (Maybe Double)
gcvvsra1Confidence
  = lens _gcvvsra1Confidence
      (\ s a -> s{_gcvvsra1Confidence = a})
      . mapping _Coerce

-- | A list of word-specific information for each recognized word.
gcvvsra1Words :: Lens' GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative [GoogleCloudVideointelligenceV1beta2_WordInfo]
gcvvsra1Words
  = lens _gcvvsra1Words
      (\ s a -> s{_gcvvsra1Words = a})
      . _Default
      . _Coerce

-- | Transcript text representing the words that the user spoke.
gcvvsra1Transcript :: Lens' GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative (Maybe Text)
gcvvsra1Transcript
  = lens _gcvvsra1Transcript
      (\ s a -> s{_gcvvsra1Transcript = a})

instance FromJSON
           GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative"
              (\ o ->
                 GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative'
                   <$>
                   (o .:? "confidence") <*> (o .:? "words" .!= mempty)
                     <*> (o .:? "transcript"))

instance ToJSON
           GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative
         where
        toJSON
          GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative'{..}
          = object
              (catMaybes
                 [("confidence" .=) <$> _gcvvsra1Confidence,
                  ("words" .=) <$> _gcvvsra1Words,
                  ("transcript" .=) <$> _gcvvsra1Transcript])

-- | Video segment.
--
-- /See:/ 'googleCloudVideointelligenceV1p1beta1_VideoSegment' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_VideoSegment =
  GoogleCloudVideointelligenceV1p1beta1_VideoSegment'
    { _gooStartTimeOffSet :: !(Maybe GDuration)
    , _gooEndTimeOffSet   :: !(Maybe GDuration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_VideoSegment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooStartTimeOffSet'
--
-- * 'gooEndTimeOffSet'
googleCloudVideointelligenceV1p1beta1_VideoSegment
    :: GoogleCloudVideointelligenceV1p1beta1_VideoSegment
googleCloudVideointelligenceV1p1beta1_VideoSegment =
  GoogleCloudVideointelligenceV1p1beta1_VideoSegment'
    {_gooStartTimeOffSet = Nothing, _gooEndTimeOffSet = Nothing}

-- | Time-offset, relative to the beginning of the video, corresponding to
-- the start of the segment (inclusive).
gooStartTimeOffSet :: Lens' GoogleCloudVideointelligenceV1p1beta1_VideoSegment (Maybe Scientific)
gooStartTimeOffSet
  = lens _gooStartTimeOffSet
      (\ s a -> s{_gooStartTimeOffSet = a})
      . mapping _GDuration

-- | Time-offset, relative to the beginning of the video, corresponding to
-- the end of the segment (inclusive).
gooEndTimeOffSet :: Lens' GoogleCloudVideointelligenceV1p1beta1_VideoSegment (Maybe Scientific)
gooEndTimeOffSet
  = lens _gooEndTimeOffSet
      (\ s a -> s{_gooEndTimeOffSet = a})
      . mapping _GDuration

instance FromJSON
           GoogleCloudVideointelligenceV1p1beta1_VideoSegment
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p1beta1VideoSegment"
              (\ o ->
                 GoogleCloudVideointelligenceV1p1beta1_VideoSegment'
                   <$>
                   (o .:? "startTimeOffset") <*>
                     (o .:? "endTimeOffset"))

instance ToJSON
           GoogleCloudVideointelligenceV1p1beta1_VideoSegment
         where
        toJSON
          GoogleCloudVideointelligenceV1p1beta1_VideoSegment'{..}
          = object
              (catMaybes
                 [("startTimeOffset" .=) <$> _gooStartTimeOffSet,
                  ("endTimeOffset" .=) <$> _gooEndTimeOffSet])

-- | Label annotation.
--
-- /See:/ 'googleCloudVideointelligenceV1p1beta1_LabelAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation =
  GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation'
    { _ggCategoryEntities :: !(Maybe [GoogleCloudVideointelligenceV1p1beta1_Entity])
    , _ggFrames           :: !(Maybe [GoogleCloudVideointelligenceV1p1beta1_LabelFrame])
    , _ggSegments         :: !(Maybe [GoogleCloudVideointelligenceV1p1beta1_LabelSegment])
    , _ggEntity           :: !(Maybe GoogleCloudVideointelligenceV1p1beta1_Entity)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggCategoryEntities'
--
-- * 'ggFrames'
--
-- * 'ggSegments'
--
-- * 'ggEntity'
googleCloudVideointelligenceV1p1beta1_LabelAnnotation
    :: GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation
googleCloudVideointelligenceV1p1beta1_LabelAnnotation =
  GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation'
    { _ggCategoryEntities = Nothing
    , _ggFrames = Nothing
    , _ggSegments = Nothing
    , _ggEntity = Nothing
    }

-- | Common categories for the detected entity. E.g. when the label is
-- \`Terrier\` the category is likely \`dog\`. And in some cases there
-- might be more than one categories e.g. \`Terrier\` could also be a
-- \`pet\`.
ggCategoryEntities :: Lens' GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation [GoogleCloudVideointelligenceV1p1beta1_Entity]
ggCategoryEntities
  = lens _ggCategoryEntities
      (\ s a -> s{_ggCategoryEntities = a})
      . _Default
      . _Coerce

-- | All video frames where a label was detected.
ggFrames :: Lens' GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation [GoogleCloudVideointelligenceV1p1beta1_LabelFrame]
ggFrames
  = lens _ggFrames (\ s a -> s{_ggFrames = a}) .
      _Default
      . _Coerce

-- | All video segments where a label was detected.
ggSegments :: Lens' GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation [GoogleCloudVideointelligenceV1p1beta1_LabelSegment]
ggSegments
  = lens _ggSegments (\ s a -> s{_ggSegments = a}) .
      _Default
      . _Coerce

-- | Detected entity.
ggEntity :: Lens' GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation (Maybe GoogleCloudVideointelligenceV1p1beta1_Entity)
ggEntity = lens _ggEntity (\ s a -> s{_ggEntity = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p1beta1LabelAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation'
                   <$>
                   (o .:? "categoryEntities" .!= mempty) <*>
                     (o .:? "frames" .!= mempty)
                     <*> (o .:? "segments" .!= mempty)
                     <*> (o .:? "entity"))

instance ToJSON
           GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation'{..}
          = object
              (catMaybes
                 [("categoryEntities" .=) <$> _ggCategoryEntities,
                  ("frames" .=) <$> _ggFrames,
                  ("segments" .=) <$> _ggSegments,
                  ("entity" .=) <$> _ggEntity])

-- | Video frame level annotation results for label detection.
--
-- /See:/ 'googleCloudVideointelligenceV1_LabelFrame' smart constructor.
data GoogleCloudVideointelligenceV1_LabelFrame =
  GoogleCloudVideointelligenceV1_LabelFrame'
    { _gcvvlf1TimeOffSet :: !(Maybe GDuration)
    , _gcvvlf1Confidence :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_LabelFrame' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvlf1TimeOffSet'
--
-- * 'gcvvlf1Confidence'
googleCloudVideointelligenceV1_LabelFrame
    :: GoogleCloudVideointelligenceV1_LabelFrame
googleCloudVideointelligenceV1_LabelFrame =
  GoogleCloudVideointelligenceV1_LabelFrame'
    {_gcvvlf1TimeOffSet = Nothing, _gcvvlf1Confidence = Nothing}

-- | Time-offset, relative to the beginning of the video, corresponding to
-- the video frame for this location.
gcvvlf1TimeOffSet :: Lens' GoogleCloudVideointelligenceV1_LabelFrame (Maybe Scientific)
gcvvlf1TimeOffSet
  = lens _gcvvlf1TimeOffSet
      (\ s a -> s{_gcvvlf1TimeOffSet = a})
      . mapping _GDuration

-- | Confidence that the label is accurate. Range: [0, 1].
gcvvlf1Confidence :: Lens' GoogleCloudVideointelligenceV1_LabelFrame (Maybe Double)
gcvvlf1Confidence
  = lens _gcvvlf1Confidence
      (\ s a -> s{_gcvvlf1Confidence = a})
      . mapping _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1_LabelFrame
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1LabelFrame"
              (\ o ->
                 GoogleCloudVideointelligenceV1_LabelFrame' <$>
                   (o .:? "timeOffset") <*> (o .:? "confidence"))

instance ToJSON
           GoogleCloudVideointelligenceV1_LabelFrame
         where
        toJSON GoogleCloudVideointelligenceV1_LabelFrame'{..}
          = object
              (catMaybes
                 [("timeOffset" .=) <$> _gcvvlf1TimeOffSet,
                  ("confidence" .=) <$> _gcvvlf1Confidence])

-- | Video annotation request.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_AnnotateVideoRequest' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoRequest =
  GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoRequest'
    { _gcvvavrInputURI     :: !(Maybe Text)
    , _gcvvavrVideoContext :: !(Maybe GoogleCloudVideointelligenceV1p2beta1_VideoContext)
    , _gcvvavrInputContent :: !(Maybe Bytes)
    , _gcvvavrFeatures     :: !(Maybe [Text])
    , _gcvvavrLocationId   :: !(Maybe Text)
    , _gcvvavrOutputURI    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvavrInputURI'
--
-- * 'gcvvavrVideoContext'
--
-- * 'gcvvavrInputContent'
--
-- * 'gcvvavrFeatures'
--
-- * 'gcvvavrLocationId'
--
-- * 'gcvvavrOutputURI'
googleCloudVideointelligenceV1p2beta1_AnnotateVideoRequest
    :: GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoRequest
googleCloudVideointelligenceV1p2beta1_AnnotateVideoRequest =
  GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoRequest'
    { _gcvvavrInputURI = Nothing
    , _gcvvavrVideoContext = Nothing
    , _gcvvavrInputContent = Nothing
    , _gcvvavrFeatures = Nothing
    , _gcvvavrLocationId = Nothing
    , _gcvvavrOutputURI = Nothing
    }

-- | Input video location. Currently, only [Google Cloud
-- Storage](https:\/\/cloud.google.com\/storage\/) URIs are supported,
-- which must be specified in the following format:
-- \`gs:\/\/bucket-id\/object-id\` (other URI formats return
-- google.rpc.Code.INVALID_ARGUMENT). For more information, see [Request
-- URIs](\/storage\/docs\/reference-uris). A video URI may include
-- wildcards in \`object-id\`, and thus identify multiple videos. Supported
-- wildcards: \'*\' to match 0 or more characters; \'?\' to match 1
-- character. If unset, the input video should be embedded in the request
-- as \`input_content\`. If set, \`input_content\` should be unset.
gcvvavrInputURI :: Lens' GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoRequest (Maybe Text)
gcvvavrInputURI
  = lens _gcvvavrInputURI
      (\ s a -> s{_gcvvavrInputURI = a})

-- | Additional video context and\/or feature-specific parameters.
gcvvavrVideoContext :: Lens' GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoRequest (Maybe GoogleCloudVideointelligenceV1p2beta1_VideoContext)
gcvvavrVideoContext
  = lens _gcvvavrVideoContext
      (\ s a -> s{_gcvvavrVideoContext = a})

-- | The video data bytes. If unset, the input video(s) should be specified
-- via \`input_uri\`. If set, \`input_uri\` should be unset.
gcvvavrInputContent :: Lens' GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoRequest (Maybe ByteString)
gcvvavrInputContent
  = lens _gcvvavrInputContent
      (\ s a -> s{_gcvvavrInputContent = a})
      . mapping _Bytes

-- | Requested video annotation features.
gcvvavrFeatures :: Lens' GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoRequest [Text]
gcvvavrFeatures
  = lens _gcvvavrFeatures
      (\ s a -> s{_gcvvavrFeatures = a})
      . _Default
      . _Coerce

-- | Optional cloud region where annotation should take place. Supported
-- cloud regions: \`us-east1\`, \`us-west1\`, \`europe-west1\`,
-- \`asia-east1\`. If no region is specified, a region will be determined
-- based on video file location.
gcvvavrLocationId :: Lens' GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoRequest (Maybe Text)
gcvvavrLocationId
  = lens _gcvvavrLocationId
      (\ s a -> s{_gcvvavrLocationId = a})

-- | Optional location where the output (in JSON format) should be stored.
-- Currently, only [Google Cloud
-- Storage](https:\/\/cloud.google.com\/storage\/) URIs are supported,
-- which must be specified in the following format:
-- \`gs:\/\/bucket-id\/object-id\` (other URI formats return
-- google.rpc.Code.INVALID_ARGUMENT). For more information, see [Request
-- URIs](\/storage\/docs\/reference-uris).
gcvvavrOutputURI :: Lens' GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoRequest (Maybe Text)
gcvvavrOutputURI
  = lens _gcvvavrOutputURI
      (\ s a -> s{_gcvvavrOutputURI = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoRequest
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p2beta1AnnotateVideoRequest"
              (\ o ->
                 GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoRequest'
                   <$>
                   (o .:? "inputUri") <*> (o .:? "videoContext") <*>
                     (o .:? "inputContent")
                     <*> (o .:? "features" .!= mempty)
                     <*> (o .:? "locationId")
                     <*> (o .:? "outputUri"))

instance ToJSON
           GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoRequest
         where
        toJSON
          GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoRequest'{..}
          = object
              (catMaybes
                 [("inputUri" .=) <$> _gcvvavrInputURI,
                  ("videoContext" .=) <$> _gcvvavrVideoContext,
                  ("inputContent" .=) <$> _gcvvavrInputContent,
                  ("features" .=) <$> _gcvvavrFeatures,
                  ("locationId" .=) <$> _gcvvavrLocationId,
                  ("outputUri" .=) <$> _gcvvavrOutputURI])

-- | Video frame level annotation results for explicit content.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_ExplicitContentFrame' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame =
  GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame'
    { _gooTimeOffSet            :: !(Maybe GDuration)
    , _gooPornographyLikelihood :: !(Maybe GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFramePornographyLikelihood)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooTimeOffSet'
--
-- * 'gooPornographyLikelihood'
googleCloudVideointelligenceV1p2beta1_ExplicitContentFrame
    :: GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame
googleCloudVideointelligenceV1p2beta1_ExplicitContentFrame =
  GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame'
    {_gooTimeOffSet = Nothing, _gooPornographyLikelihood = Nothing}

-- | Time-offset, relative to the beginning of the video, corresponding to
-- the video frame for this location.
gooTimeOffSet :: Lens' GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame (Maybe Scientific)
gooTimeOffSet
  = lens _gooTimeOffSet
      (\ s a -> s{_gooTimeOffSet = a})
      . mapping _GDuration

-- | Likelihood of the pornography content..
gooPornographyLikelihood :: Lens' GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame (Maybe GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFramePornographyLikelihood)
gooPornographyLikelihood
  = lens _gooPornographyLikelihood
      (\ s a -> s{_gooPornographyLikelihood = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame"
              (\ o ->
                 GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame'
                   <$>
                   (o .:? "timeOffset") <*>
                     (o .:? "pornographyLikelihood"))

instance ToJSON
           GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame
         where
        toJSON
          GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame'{..}
          = object
              (catMaybes
                 [("timeOffset" .=) <$> _gooTimeOffSet,
                  ("pornographyLikelihood" .=) <$>
                    _gooPornographyLikelihood])

-- | Detected entity from video analysis.
--
-- /See:/ 'googleCloudVideointelligenceV1_Entity' smart constructor.
data GoogleCloudVideointelligenceV1_Entity =
  GoogleCloudVideointelligenceV1_Entity'
    { _gcvvecLanguageCode :: !(Maybe Text)
    , _gcvvecEntityId     :: !(Maybe Text)
    , _gcvvecDescription  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_Entity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvecLanguageCode'
--
-- * 'gcvvecEntityId'
--
-- * 'gcvvecDescription'
googleCloudVideointelligenceV1_Entity
    :: GoogleCloudVideointelligenceV1_Entity
googleCloudVideointelligenceV1_Entity =
  GoogleCloudVideointelligenceV1_Entity'
    { _gcvvecLanguageCode = Nothing
    , _gcvvecEntityId = Nothing
    , _gcvvecDescription = Nothing
    }

-- | Language code for \`description\` in BCP-47 format.
gcvvecLanguageCode :: Lens' GoogleCloudVideointelligenceV1_Entity (Maybe Text)
gcvvecLanguageCode
  = lens _gcvvecLanguageCode
      (\ s a -> s{_gcvvecLanguageCode = a})

-- | Opaque entity ID. Some IDs may be available in [Google Knowledge Graph
-- Search API](https:\/\/developers.google.com\/knowledge-graph\/).
gcvvecEntityId :: Lens' GoogleCloudVideointelligenceV1_Entity (Maybe Text)
gcvvecEntityId
  = lens _gcvvecEntityId
      (\ s a -> s{_gcvvecEntityId = a})

-- | Textual description, e.g. \`Fixed-gear bicycle\`.
gcvvecDescription :: Lens' GoogleCloudVideointelligenceV1_Entity (Maybe Text)
gcvvecDescription
  = lens _gcvvecDescription
      (\ s a -> s{_gcvvecDescription = a})

instance FromJSON
           GoogleCloudVideointelligenceV1_Entity
         where
        parseJSON
          = withObject "GoogleCloudVideointelligenceV1Entity"
              (\ o ->
                 GoogleCloudVideointelligenceV1_Entity' <$>
                   (o .:? "languageCode") <*> (o .:? "entityId") <*>
                     (o .:? "description"))

instance ToJSON GoogleCloudVideointelligenceV1_Entity
         where
        toJSON GoogleCloudVideointelligenceV1_Entity'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _gcvvecLanguageCode,
                  ("entityId" .=) <$> _gcvvecEntityId,
                  ("description" .=) <$> _gcvvecDescription])

-- | Annotation progress for a single video.
--
-- /See:/ 'googleCloudVideointelligenceV1beta2_VideoAnnotationProgress' smart constructor.
data GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress =
  GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress'
    { _gcvvvapsStartTime       :: !(Maybe DateTime')
    , _gcvvvapsInputURI        :: !(Maybe Text)
    , _gcvvvapsProgressPercent :: !(Maybe (Textual Int32))
    , _gcvvvapsUpdateTime      :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvvapsStartTime'
--
-- * 'gcvvvapsInputURI'
--
-- * 'gcvvvapsProgressPercent'
--
-- * 'gcvvvapsUpdateTime'
googleCloudVideointelligenceV1beta2_VideoAnnotationProgress
    :: GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress
googleCloudVideointelligenceV1beta2_VideoAnnotationProgress =
  GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress'
    { _gcvvvapsStartTime = Nothing
    , _gcvvvapsInputURI = Nothing
    , _gcvvvapsProgressPercent = Nothing
    , _gcvvvapsUpdateTime = Nothing
    }

-- | Time when the request was received.
gcvvvapsStartTime :: Lens' GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress (Maybe UTCTime)
gcvvvapsStartTime
  = lens _gcvvvapsStartTime
      (\ s a -> s{_gcvvvapsStartTime = a})
      . mapping _DateTime

-- | Video file location in [Google Cloud
-- Storage](https:\/\/cloud.google.com\/storage\/).
gcvvvapsInputURI :: Lens' GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress (Maybe Text)
gcvvvapsInputURI
  = lens _gcvvvapsInputURI
      (\ s a -> s{_gcvvvapsInputURI = a})

-- | Approximate percentage processed thus far. Guaranteed to be 100 when
-- fully processed.
gcvvvapsProgressPercent :: Lens' GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress (Maybe Int32)
gcvvvapsProgressPercent
  = lens _gcvvvapsProgressPercent
      (\ s a -> s{_gcvvvapsProgressPercent = a})
      . mapping _Coerce

-- | Time of the most recent update.
gcvvvapsUpdateTime :: Lens' GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress (Maybe UTCTime)
gcvvvapsUpdateTime
  = lens _gcvvvapsUpdateTime
      (\ s a -> s{_gcvvvapsUpdateTime = a})
      . mapping _DateTime

instance FromJSON
           GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1beta2VideoAnnotationProgress"
              (\ o ->
                 GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress'
                   <$>
                   (o .:? "startTime") <*> (o .:? "inputUri") <*>
                     (o .:? "progressPercent")
                     <*> (o .:? "updateTime"))

instance ToJSON
           GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress
         where
        toJSON
          GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _gcvvvapsStartTime,
                  ("inputUri" .=) <$> _gcvvvapsInputURI,
                  ("progressPercent" .=) <$> _gcvvvapsProgressPercent,
                  ("updateTime" .=) <$> _gcvvvapsUpdateTime])

-- | A speech recognition result corresponding to a portion of the audio.
--
-- /See:/ 'googleCloudVideointelligenceV1beta2_SpeechTranscription' smart constructor.
data GoogleCloudVideointelligenceV1beta2_SpeechTranscription =
  GoogleCloudVideointelligenceV1beta2_SpeechTranscription'
    { _gcvvstcAlternatives :: !(Maybe [GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative])
    , _gcvvstcLanguageCode :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_SpeechTranscription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvstcAlternatives'
--
-- * 'gcvvstcLanguageCode'
googleCloudVideointelligenceV1beta2_SpeechTranscription
    :: GoogleCloudVideointelligenceV1beta2_SpeechTranscription
googleCloudVideointelligenceV1beta2_SpeechTranscription =
  GoogleCloudVideointelligenceV1beta2_SpeechTranscription'
    {_gcvvstcAlternatives = Nothing, _gcvvstcLanguageCode = Nothing}

-- | May contain one or more recognition hypotheses (up to the maximum
-- specified in \`max_alternatives\`). These alternatives are ordered in
-- terms of accuracy, with the top (first) alternative being the most
-- probable, as ranked by the recognizer.
gcvvstcAlternatives :: Lens' GoogleCloudVideointelligenceV1beta2_SpeechTranscription [GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative]
gcvvstcAlternatives
  = lens _gcvvstcAlternatives
      (\ s a -> s{_gcvvstcAlternatives = a})
      . _Default
      . _Coerce

-- | Output only. The
-- [BCP-47](https:\/\/www.rfc-editor.org\/rfc\/bcp\/bcp47.txt) language tag
-- of the language in this result. This language code was detected to have
-- the most likelihood of being spoken in the audio.
gcvvstcLanguageCode :: Lens' GoogleCloudVideointelligenceV1beta2_SpeechTranscription (Maybe Text)
gcvvstcLanguageCode
  = lens _gcvvstcLanguageCode
      (\ s a -> s{_gcvvstcLanguageCode = a})

instance FromJSON
           GoogleCloudVideointelligenceV1beta2_SpeechTranscription
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1beta2SpeechTranscription"
              (\ o ->
                 GoogleCloudVideointelligenceV1beta2_SpeechTranscription'
                   <$>
                   (o .:? "alternatives" .!= mempty) <*>
                     (o .:? "languageCode"))

instance ToJSON
           GoogleCloudVideointelligenceV1beta2_SpeechTranscription
         where
        toJSON
          GoogleCloudVideointelligenceV1beta2_SpeechTranscription'{..}
          = object
              (catMaybes
                 [("alternatives" .=) <$> _gcvvstcAlternatives,
                  ("languageCode" .=) <$> _gcvvstcLanguageCode])

-- | Provides \"hints\" to the speech recognizer to favor specific words and
-- phrases in the results.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_SpeechContext' smart constructor.
newtype GoogleCloudVideointelligenceV1p2beta1_SpeechContext =
  GoogleCloudVideointelligenceV1p2beta1_SpeechContext'
    { _gcvvscPhrases :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_SpeechContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvscPhrases'
googleCloudVideointelligenceV1p2beta1_SpeechContext
    :: GoogleCloudVideointelligenceV1p2beta1_SpeechContext
googleCloudVideointelligenceV1p2beta1_SpeechContext =
  GoogleCloudVideointelligenceV1p2beta1_SpeechContext'
    {_gcvvscPhrases = Nothing}

-- | *Optional* A list of strings containing words and phrases \"hints\" so
-- that the speech recognition is more likely to recognize them. This can
-- be used to improve the accuracy for specific words and phrases, for
-- example, if specific commands are typically spoken by the user. This can
-- also be used to add additional words to the vocabulary of the
-- recognizer. See [usage
-- limits](https:\/\/cloud.google.com\/speech\/limits#content).
gcvvscPhrases :: Lens' GoogleCloudVideointelligenceV1p2beta1_SpeechContext [Text]
gcvvscPhrases
  = lens _gcvvscPhrases
      (\ s a -> s{_gcvvscPhrases = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1p2beta1_SpeechContext
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p2beta1SpeechContext"
              (\ o ->
                 GoogleCloudVideointelligenceV1p2beta1_SpeechContext'
                   <$> (o .:? "phrases" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1p2beta1_SpeechContext
         where
        toJSON
          GoogleCloudVideointelligenceV1p2beta1_SpeechContext'{..}
          = object
              (catMaybes [("phrases" .=) <$> _gcvvscPhrases])

-- | Annotation results for a single video.
--
-- /See:/ 'googleCloudVideointelligenceV1p1beta1_VideoAnnotationResults' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults =
  GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults'
    { _gooShotAnnotations         :: !(Maybe [GoogleCloudVideointelligenceV1p1beta1_VideoSegment])
    , _gooShotLabelAnnotations    :: !(Maybe [GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation])
    , _gooInputURI                :: !(Maybe Text)
    , _gooError                   :: !(Maybe GoogleRpc_Status)
    , _gooFrameLabelAnnotations   :: !(Maybe [GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation])
    , _gooSpeechTranscriptions    :: !(Maybe [GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription])
    , _gooSegmentLabelAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation])
    , _gooExplicitAnnotation      :: !(Maybe GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooShotAnnotations'
--
-- * 'gooShotLabelAnnotations'
--
-- * 'gooInputURI'
--
-- * 'gooError'
--
-- * 'gooFrameLabelAnnotations'
--
-- * 'gooSpeechTranscriptions'
--
-- * 'gooSegmentLabelAnnotations'
--
-- * 'gooExplicitAnnotation'
googleCloudVideointelligenceV1p1beta1_VideoAnnotationResults
    :: GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults
googleCloudVideointelligenceV1p1beta1_VideoAnnotationResults =
  GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults'
    { _gooShotAnnotations = Nothing
    , _gooShotLabelAnnotations = Nothing
    , _gooInputURI = Nothing
    , _gooError = Nothing
    , _gooFrameLabelAnnotations = Nothing
    , _gooSpeechTranscriptions = Nothing
    , _gooSegmentLabelAnnotations = Nothing
    , _gooExplicitAnnotation = Nothing
    }

-- | Shot annotations. Each shot is represented as a video segment.
gooShotAnnotations :: Lens' GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p1beta1_VideoSegment]
gooShotAnnotations
  = lens _gooShotAnnotations
      (\ s a -> s{_gooShotAnnotations = a})
      . _Default
      . _Coerce

-- | Label annotations on shot level. There is exactly one element for each
-- unique label.
gooShotLabelAnnotations :: Lens' GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation]
gooShotLabelAnnotations
  = lens _gooShotLabelAnnotations
      (\ s a -> s{_gooShotLabelAnnotations = a})
      . _Default
      . _Coerce

-- | Video file location in [Google Cloud
-- Storage](https:\/\/cloud.google.com\/storage\/).
gooInputURI :: Lens' GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults (Maybe Text)
gooInputURI
  = lens _gooInputURI (\ s a -> s{_gooInputURI = a})

-- | If set, indicates an error. Note that for a single
-- \`AnnotateVideoRequest\` some videos may succeed and some may fail.
gooError :: Lens' GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults (Maybe GoogleRpc_Status)
gooError = lens _gooError (\ s a -> s{_gooError = a})

-- | Label annotations on frame level. There is exactly one element for each
-- unique label.
gooFrameLabelAnnotations :: Lens' GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation]
gooFrameLabelAnnotations
  = lens _gooFrameLabelAnnotations
      (\ s a -> s{_gooFrameLabelAnnotations = a})
      . _Default
      . _Coerce

-- | Speech transcription.
gooSpeechTranscriptions :: Lens' GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription]
gooSpeechTranscriptions
  = lens _gooSpeechTranscriptions
      (\ s a -> s{_gooSpeechTranscriptions = a})
      . _Default
      . _Coerce

-- | Label annotations on video level or user specified segment level. There
-- is exactly one element for each unique label.
gooSegmentLabelAnnotations :: Lens' GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation]
gooSegmentLabelAnnotations
  = lens _gooSegmentLabelAnnotations
      (\ s a -> s{_gooSegmentLabelAnnotations = a})
      . _Default
      . _Coerce

-- | Explicit content annotation.
gooExplicitAnnotation :: Lens' GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults (Maybe GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation)
gooExplicitAnnotation
  = lens _gooExplicitAnnotation
      (\ s a -> s{_gooExplicitAnnotation = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults"
              (\ o ->
                 GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults'
                   <$>
                   (o .:? "shotAnnotations" .!= mempty) <*>
                     (o .:? "shotLabelAnnotations" .!= mempty)
                     <*> (o .:? "inputUri")
                     <*> (o .:? "error")
                     <*> (o .:? "frameLabelAnnotations" .!= mempty)
                     <*> (o .:? "speechTranscriptions" .!= mempty)
                     <*> (o .:? "segmentLabelAnnotations" .!= mempty)
                     <*> (o .:? "explicitAnnotation"))

instance ToJSON
           GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults
         where
        toJSON
          GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults'{..}
          = object
              (catMaybes
                 [("shotAnnotations" .=) <$> _gooShotAnnotations,
                  ("shotLabelAnnotations" .=) <$>
                    _gooShotLabelAnnotations,
                  ("inputUri" .=) <$> _gooInputURI,
                  ("error" .=) <$> _gooError,
                  ("frameLabelAnnotations" .=) <$>
                    _gooFrameLabelAnnotations,
                  ("speechTranscriptions" .=) <$>
                    _gooSpeechTranscriptions,
                  ("segmentLabelAnnotations" .=) <$>
                    _gooSegmentLabelAnnotations,
                  ("explicitAnnotation" .=) <$>
                    _gooExplicitAnnotation])

-- | Video annotation progress. Included in the \`metadata\` field of the
-- \`Operation\` returned by the \`GetOperation\` call of the
-- \`google::longrunning::Operations\` service.
--
-- /See:/ 'googleCloudVideointelligenceV1_AnnotateVideoProgress' smart constructor.
newtype GoogleCloudVideointelligenceV1_AnnotateVideoProgress =
  GoogleCloudVideointelligenceV1_AnnotateVideoProgress'
    { _gooAnnotationProgress :: Maybe [GoogleCloudVideointelligenceV1_VideoAnnotationProgress]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_AnnotateVideoProgress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooAnnotationProgress'
googleCloudVideointelligenceV1_AnnotateVideoProgress
    :: GoogleCloudVideointelligenceV1_AnnotateVideoProgress
googleCloudVideointelligenceV1_AnnotateVideoProgress =
  GoogleCloudVideointelligenceV1_AnnotateVideoProgress'
    {_gooAnnotationProgress = Nothing}

-- | Progress metadata for all videos specified in \`AnnotateVideoRequest\`.
gooAnnotationProgress :: Lens' GoogleCloudVideointelligenceV1_AnnotateVideoProgress [GoogleCloudVideointelligenceV1_VideoAnnotationProgress]
gooAnnotationProgress
  = lens _gooAnnotationProgress
      (\ s a -> s{_gooAnnotationProgress = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1_AnnotateVideoProgress
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1AnnotateVideoProgress"
              (\ o ->
                 GoogleCloudVideointelligenceV1_AnnotateVideoProgress'
                   <$> (o .:? "annotationProgress" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1_AnnotateVideoProgress
         where
        toJSON
          GoogleCloudVideointelligenceV1_AnnotateVideoProgress'{..}
          = object
              (catMaybes
                 [("annotationProgress" .=) <$>
                    _gooAnnotationProgress])

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
--
-- /See:/ 'googleLongrunning_OperationResponse' smart constructor.
newtype GoogleLongrunning_OperationResponse =
  GoogleLongrunning_OperationResponse'
    { _glorAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleLongrunning_OperationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glorAddtional'
googleLongrunning_OperationResponse
    :: HashMap Text JSONValue -- ^ 'glorAddtional'
    -> GoogleLongrunning_OperationResponse
googleLongrunning_OperationResponse pGlorAddtional_ =
  GoogleLongrunning_OperationResponse'
    {_glorAddtional = _Coerce # pGlorAddtional_}

-- | Properties of the object. Contains field \'type with type URL.
glorAddtional :: Lens' GoogleLongrunning_OperationResponse (HashMap Text JSONValue)
glorAddtional
  = lens _glorAddtional
      (\ s a -> s{_glorAddtional = a})
      . _Coerce

instance FromJSON GoogleLongrunning_OperationResponse
         where
        parseJSON
          = withObject "GoogleLongrunningOperationResponse"
              (\ o ->
                 GoogleLongrunning_OperationResponse' <$>
                   (parseJSONObject o))

instance ToJSON GoogleLongrunning_OperationResponse
         where
        toJSON = toJSON . _glorAddtional

-- | Annotation progress for a single video.
--
-- /See:/ 'googleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress =
  GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress'
    { _gcvvvapcStartTime       :: !(Maybe DateTime')
    , _gcvvvapcInputURI        :: !(Maybe Text)
    , _gcvvvapcProgressPercent :: !(Maybe (Textual Int32))
    , _gcvvvapcUpdateTime      :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvvapcStartTime'
--
-- * 'gcvvvapcInputURI'
--
-- * 'gcvvvapcProgressPercent'
--
-- * 'gcvvvapcUpdateTime'
googleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress
    :: GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress
googleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress =
  GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress'
    { _gcvvvapcStartTime = Nothing
    , _gcvvvapcInputURI = Nothing
    , _gcvvvapcProgressPercent = Nothing
    , _gcvvvapcUpdateTime = Nothing
    }

-- | Time when the request was received.
gcvvvapcStartTime :: Lens' GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress (Maybe UTCTime)
gcvvvapcStartTime
  = lens _gcvvvapcStartTime
      (\ s a -> s{_gcvvvapcStartTime = a})
      . mapping _DateTime

-- | Video file location in [Google Cloud
-- Storage](https:\/\/cloud.google.com\/storage\/).
gcvvvapcInputURI :: Lens' GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress (Maybe Text)
gcvvvapcInputURI
  = lens _gcvvvapcInputURI
      (\ s a -> s{_gcvvvapcInputURI = a})

-- | Approximate percentage processed thus far. Guaranteed to be 100 when
-- fully processed.
gcvvvapcProgressPercent :: Lens' GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress (Maybe Int32)
gcvvvapcProgressPercent
  = lens _gcvvvapcProgressPercent
      (\ s a -> s{_gcvvvapcProgressPercent = a})
      . mapping _Coerce

-- | Time of the most recent update.
gcvvvapcUpdateTime :: Lens' GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress (Maybe UTCTime)
gcvvvapcUpdateTime
  = lens _gcvvvapcUpdateTime
      (\ s a -> s{_gcvvvapcUpdateTime = a})
      . mapping _DateTime

instance FromJSON
           GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress"
              (\ o ->
                 GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress'
                   <$>
                   (o .:? "startTime") <*> (o .:? "inputUri") <*>
                     (o .:? "progressPercent")
                     <*> (o .:? "updateTime"))

instance ToJSON
           GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress
         where
        toJSON
          GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _gcvvvapcStartTime,
                  ("inputUri" .=) <$> _gcvvvapcInputURI,
                  ("progressPercent" .=) <$> _gcvvvapcProgressPercent,
                  ("updateTime" .=) <$> _gcvvvapcUpdateTime])

-- | Video frame level annotation results for text annotation (OCR). Contains
-- information regarding timestamp and bounding box locations for the
-- frames containing detected OCR text snippets.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_TextFrame' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_TextFrame =
  GoogleCloudVideointelligenceV1p2beta1_TextFrame'
    { _gcvvtfRotatedBoundingBox :: !(Maybe GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly)
    , _gcvvtfTimeOffSet         :: !(Maybe GDuration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_TextFrame' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvtfRotatedBoundingBox'
--
-- * 'gcvvtfTimeOffSet'
googleCloudVideointelligenceV1p2beta1_TextFrame
    :: GoogleCloudVideointelligenceV1p2beta1_TextFrame
googleCloudVideointelligenceV1p2beta1_TextFrame =
  GoogleCloudVideointelligenceV1p2beta1_TextFrame'
    {_gcvvtfRotatedBoundingBox = Nothing, _gcvvtfTimeOffSet = Nothing}

-- | Bounding polygon of the detected text for this frame.
gcvvtfRotatedBoundingBox :: Lens' GoogleCloudVideointelligenceV1p2beta1_TextFrame (Maybe GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly)
gcvvtfRotatedBoundingBox
  = lens _gcvvtfRotatedBoundingBox
      (\ s a -> s{_gcvvtfRotatedBoundingBox = a})

-- | Timestamp of this frame.
gcvvtfTimeOffSet :: Lens' GoogleCloudVideointelligenceV1p2beta1_TextFrame (Maybe Scientific)
gcvvtfTimeOffSet
  = lens _gcvvtfTimeOffSet
      (\ s a -> s{_gcvvtfTimeOffSet = a})
      . mapping _GDuration

instance FromJSON
           GoogleCloudVideointelligenceV1p2beta1_TextFrame
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p2beta1TextFrame"
              (\ o ->
                 GoogleCloudVideointelligenceV1p2beta1_TextFrame' <$>
                   (o .:? "rotatedBoundingBox") <*>
                     (o .:? "timeOffset"))

instance ToJSON
           GoogleCloudVideointelligenceV1p2beta1_TextFrame
         where
        toJSON
          GoogleCloudVideointelligenceV1p2beta1_TextFrame'{..}
          = object
              (catMaybes
                 [("rotatedBoundingBox" .=) <$>
                    _gcvvtfRotatedBoundingBox,
                  ("timeOffset" .=) <$> _gcvvtfTimeOffSet])

-- | Label annotation.
--
-- /See:/ 'googleCloudVideointelligenceV1beta2_LabelAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1beta2_LabelAnnotation =
  GoogleCloudVideointelligenceV1beta2_LabelAnnotation'
    { _goooCategoryEntities :: !(Maybe [GoogleCloudVideointelligenceV1beta2_Entity])
    , _goooFrames           :: !(Maybe [GoogleCloudVideointelligenceV1beta2_LabelFrame])
    , _goooSegments         :: !(Maybe [GoogleCloudVideointelligenceV1beta2_LabelSegment])
    , _goooEntity           :: !(Maybe GoogleCloudVideointelligenceV1beta2_Entity)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_LabelAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'goooCategoryEntities'
--
-- * 'goooFrames'
--
-- * 'goooSegments'
--
-- * 'goooEntity'
googleCloudVideointelligenceV1beta2_LabelAnnotation
    :: GoogleCloudVideointelligenceV1beta2_LabelAnnotation
googleCloudVideointelligenceV1beta2_LabelAnnotation =
  GoogleCloudVideointelligenceV1beta2_LabelAnnotation'
    { _goooCategoryEntities = Nothing
    , _goooFrames = Nothing
    , _goooSegments = Nothing
    , _goooEntity = Nothing
    }

-- | Common categories for the detected entity. E.g. when the label is
-- \`Terrier\` the category is likely \`dog\`. And in some cases there
-- might be more than one categories e.g. \`Terrier\` could also be a
-- \`pet\`.
goooCategoryEntities :: Lens' GoogleCloudVideointelligenceV1beta2_LabelAnnotation [GoogleCloudVideointelligenceV1beta2_Entity]
goooCategoryEntities
  = lens _goooCategoryEntities
      (\ s a -> s{_goooCategoryEntities = a})
      . _Default
      . _Coerce

-- | All video frames where a label was detected.
goooFrames :: Lens' GoogleCloudVideointelligenceV1beta2_LabelAnnotation [GoogleCloudVideointelligenceV1beta2_LabelFrame]
goooFrames
  = lens _goooFrames (\ s a -> s{_goooFrames = a}) .
      _Default
      . _Coerce

-- | All video segments where a label was detected.
goooSegments :: Lens' GoogleCloudVideointelligenceV1beta2_LabelAnnotation [GoogleCloudVideointelligenceV1beta2_LabelSegment]
goooSegments
  = lens _goooSegments (\ s a -> s{_goooSegments = a})
      . _Default
      . _Coerce

-- | Detected entity.
goooEntity :: Lens' GoogleCloudVideointelligenceV1beta2_LabelAnnotation (Maybe GoogleCloudVideointelligenceV1beta2_Entity)
goooEntity
  = lens _goooEntity (\ s a -> s{_goooEntity = a})

instance FromJSON
           GoogleCloudVideointelligenceV1beta2_LabelAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1beta2LabelAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1beta2_LabelAnnotation'
                   <$>
                   (o .:? "categoryEntities" .!= mempty) <*>
                     (o .:? "frames" .!= mempty)
                     <*> (o .:? "segments" .!= mempty)
                     <*> (o .:? "entity"))

instance ToJSON
           GoogleCloudVideointelligenceV1beta2_LabelAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1beta2_LabelAnnotation'{..}
          = object
              (catMaybes
                 [("categoryEntities" .=) <$> _goooCategoryEntities,
                  ("frames" .=) <$> _goooFrames,
                  ("segments" .=) <$> _goooSegments,
                  ("entity" .=) <$> _goooEntity])

-- | A speech recognition result corresponding to a portion of the audio.
--
-- /See:/ 'googleCloudVideointelligenceV1p1beta1_SpeechTranscription' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription =
  GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription'
    { _ggAlternatives :: !(Maybe [GoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative])
    , _ggLanguageCode :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggAlternatives'
--
-- * 'ggLanguageCode'
googleCloudVideointelligenceV1p1beta1_SpeechTranscription
    :: GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription
googleCloudVideointelligenceV1p1beta1_SpeechTranscription =
  GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription'
    {_ggAlternatives = Nothing, _ggLanguageCode = Nothing}

-- | May contain one or more recognition hypotheses (up to the maximum
-- specified in \`max_alternatives\`). These alternatives are ordered in
-- terms of accuracy, with the top (first) alternative being the most
-- probable, as ranked by the recognizer.
ggAlternatives :: Lens' GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription [GoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative]
ggAlternatives
  = lens _ggAlternatives
      (\ s a -> s{_ggAlternatives = a})
      . _Default
      . _Coerce

-- | Output only. The
-- [BCP-47](https:\/\/www.rfc-editor.org\/rfc\/bcp\/bcp47.txt) language tag
-- of the language in this result. This language code was detected to have
-- the most likelihood of being spoken in the audio.
ggLanguageCode :: Lens' GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription (Maybe Text)
ggLanguageCode
  = lens _ggLanguageCode
      (\ s a -> s{_ggLanguageCode = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p1beta1SpeechTranscription"
              (\ o ->
                 GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription'
                   <$>
                   (o .:? "alternatives" .!= mempty) <*>
                     (o .:? "languageCode"))

instance ToJSON
           GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription
         where
        toJSON
          GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription'{..}
          = object
              (catMaybes
                 [("alternatives" .=) <$> _ggAlternatives,
                  ("languageCode" .=) <$> _ggLanguageCode])

-- | Annotation results for a single video.
--
-- /See:/ 'googleCloudVideointelligenceV1beta2_VideoAnnotationResults' smart constructor.
data GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults =
  GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults'
    { _gcvvvarcShotAnnotations         :: !(Maybe [GoogleCloudVideointelligenceV1beta2_VideoSegment])
    , _gcvvvarcShotLabelAnnotations    :: !(Maybe [GoogleCloudVideointelligenceV1beta2_LabelAnnotation])
    , _gcvvvarcInputURI                :: !(Maybe Text)
    , _gcvvvarcError                   :: !(Maybe GoogleRpc_Status)
    , _gcvvvarcFrameLabelAnnotations   :: !(Maybe [GoogleCloudVideointelligenceV1beta2_LabelAnnotation])
    , _gcvvvarcSpeechTranscriptions    :: !(Maybe [GoogleCloudVideointelligenceV1beta2_SpeechTranscription])
    , _gcvvvarcSegmentLabelAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1beta2_LabelAnnotation])
    , _gcvvvarcExplicitAnnotation      :: !(Maybe GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvvarcShotAnnotations'
--
-- * 'gcvvvarcShotLabelAnnotations'
--
-- * 'gcvvvarcInputURI'
--
-- * 'gcvvvarcError'
--
-- * 'gcvvvarcFrameLabelAnnotations'
--
-- * 'gcvvvarcSpeechTranscriptions'
--
-- * 'gcvvvarcSegmentLabelAnnotations'
--
-- * 'gcvvvarcExplicitAnnotation'
googleCloudVideointelligenceV1beta2_VideoAnnotationResults
    :: GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults
googleCloudVideointelligenceV1beta2_VideoAnnotationResults =
  GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults'
    { _gcvvvarcShotAnnotations = Nothing
    , _gcvvvarcShotLabelAnnotations = Nothing
    , _gcvvvarcInputURI = Nothing
    , _gcvvvarcError = Nothing
    , _gcvvvarcFrameLabelAnnotations = Nothing
    , _gcvvvarcSpeechTranscriptions = Nothing
    , _gcvvvarcSegmentLabelAnnotations = Nothing
    , _gcvvvarcExplicitAnnotation = Nothing
    }

-- | Shot annotations. Each shot is represented as a video segment.
gcvvvarcShotAnnotations :: Lens' GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults [GoogleCloudVideointelligenceV1beta2_VideoSegment]
gcvvvarcShotAnnotations
  = lens _gcvvvarcShotAnnotations
      (\ s a -> s{_gcvvvarcShotAnnotations = a})
      . _Default
      . _Coerce

-- | Label annotations on shot level. There is exactly one element for each
-- unique label.
gcvvvarcShotLabelAnnotations :: Lens' GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults [GoogleCloudVideointelligenceV1beta2_LabelAnnotation]
gcvvvarcShotLabelAnnotations
  = lens _gcvvvarcShotLabelAnnotations
      (\ s a -> s{_gcvvvarcShotLabelAnnotations = a})
      . _Default
      . _Coerce

-- | Video file location in [Google Cloud
-- Storage](https:\/\/cloud.google.com\/storage\/).
gcvvvarcInputURI :: Lens' GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults (Maybe Text)
gcvvvarcInputURI
  = lens _gcvvvarcInputURI
      (\ s a -> s{_gcvvvarcInputURI = a})

-- | If set, indicates an error. Note that for a single
-- \`AnnotateVideoRequest\` some videos may succeed and some may fail.
gcvvvarcError :: Lens' GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults (Maybe GoogleRpc_Status)
gcvvvarcError
  = lens _gcvvvarcError
      (\ s a -> s{_gcvvvarcError = a})

-- | Label annotations on frame level. There is exactly one element for each
-- unique label.
gcvvvarcFrameLabelAnnotations :: Lens' GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults [GoogleCloudVideointelligenceV1beta2_LabelAnnotation]
gcvvvarcFrameLabelAnnotations
  = lens _gcvvvarcFrameLabelAnnotations
      (\ s a -> s{_gcvvvarcFrameLabelAnnotations = a})
      . _Default
      . _Coerce

-- | Speech transcription.
gcvvvarcSpeechTranscriptions :: Lens' GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults [GoogleCloudVideointelligenceV1beta2_SpeechTranscription]
gcvvvarcSpeechTranscriptions
  = lens _gcvvvarcSpeechTranscriptions
      (\ s a -> s{_gcvvvarcSpeechTranscriptions = a})
      . _Default
      . _Coerce

-- | Label annotations on video level or user specified segment level. There
-- is exactly one element for each unique label.
gcvvvarcSegmentLabelAnnotations :: Lens' GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults [GoogleCloudVideointelligenceV1beta2_LabelAnnotation]
gcvvvarcSegmentLabelAnnotations
  = lens _gcvvvarcSegmentLabelAnnotations
      (\ s a -> s{_gcvvvarcSegmentLabelAnnotations = a})
      . _Default
      . _Coerce

-- | Explicit content annotation.
gcvvvarcExplicitAnnotation :: Lens' GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults (Maybe GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation)
gcvvvarcExplicitAnnotation
  = lens _gcvvvarcExplicitAnnotation
      (\ s a -> s{_gcvvvarcExplicitAnnotation = a})

instance FromJSON
           GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1beta2VideoAnnotationResults"
              (\ o ->
                 GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults'
                   <$>
                   (o .:? "shotAnnotations" .!= mempty) <*>
                     (o .:? "shotLabelAnnotations" .!= mempty)
                     <*> (o .:? "inputUri")
                     <*> (o .:? "error")
                     <*> (o .:? "frameLabelAnnotations" .!= mempty)
                     <*> (o .:? "speechTranscriptions" .!= mempty)
                     <*> (o .:? "segmentLabelAnnotations" .!= mempty)
                     <*> (o .:? "explicitAnnotation"))

instance ToJSON
           GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults
         where
        toJSON
          GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults'{..}
          = object
              (catMaybes
                 [("shotAnnotations" .=) <$> _gcvvvarcShotAnnotations,
                  ("shotLabelAnnotations" .=) <$>
                    _gcvvvarcShotLabelAnnotations,
                  ("inputUri" .=) <$> _gcvvvarcInputURI,
                  ("error" .=) <$> _gcvvvarcError,
                  ("frameLabelAnnotations" .=) <$>
                    _gcvvvarcFrameLabelAnnotations,
                  ("speechTranscriptions" .=) <$>
                    _gcvvvarcSpeechTranscriptions,
                  ("segmentLabelAnnotations" .=) <$>
                    _gcvvvarcSegmentLabelAnnotations,
                  ("explicitAnnotation" .=) <$>
                    _gcvvvarcExplicitAnnotation])

-- | Video segment level annotation results for label detection.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_LabelSegment' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_LabelSegment =
  GoogleCloudVideointelligenceV1p2beta1_LabelSegment'
    { _gcvvls1Confidence :: !(Maybe (Textual Double))
    , _gcvvls1Segment    :: !(Maybe GoogleCloudVideointelligenceV1p2beta1_VideoSegment)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_LabelSegment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvls1Confidence'
--
-- * 'gcvvls1Segment'
googleCloudVideointelligenceV1p2beta1_LabelSegment
    :: GoogleCloudVideointelligenceV1p2beta1_LabelSegment
googleCloudVideointelligenceV1p2beta1_LabelSegment =
  GoogleCloudVideointelligenceV1p2beta1_LabelSegment'
    {_gcvvls1Confidence = Nothing, _gcvvls1Segment = Nothing}

-- | Confidence that the label is accurate. Range: [0, 1].
gcvvls1Confidence :: Lens' GoogleCloudVideointelligenceV1p2beta1_LabelSegment (Maybe Double)
gcvvls1Confidence
  = lens _gcvvls1Confidence
      (\ s a -> s{_gcvvls1Confidence = a})
      . mapping _Coerce

-- | Video segment where a label was detected.
gcvvls1Segment :: Lens' GoogleCloudVideointelligenceV1p2beta1_LabelSegment (Maybe GoogleCloudVideointelligenceV1p2beta1_VideoSegment)
gcvvls1Segment
  = lens _gcvvls1Segment
      (\ s a -> s{_gcvvls1Segment = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p2beta1_LabelSegment
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p2beta1LabelSegment"
              (\ o ->
                 GoogleCloudVideointelligenceV1p2beta1_LabelSegment'
                   <$> (o .:? "confidence") <*> (o .:? "segment"))

instance ToJSON
           GoogleCloudVideointelligenceV1p2beta1_LabelSegment
         where
        toJSON
          GoogleCloudVideointelligenceV1p2beta1_LabelSegment'{..}
          = object
              (catMaybes
                 [("confidence" .=) <$> _gcvvls1Confidence,
                  ("segment" .=) <$> _gcvvls1Segment])

-- | Video context and\/or feature-specific parameters.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_VideoContext' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_VideoContext =
  GoogleCloudVideointelligenceV1p2beta1_VideoContext'
    { _gcvvvcSpeechTranscriptionConfig      :: !(Maybe GoogleCloudVideointelligenceV1p2beta1_SpeechTranscriptionConfig)
    , _gcvvvcExplicitContentDetectionConfig :: !(Maybe GoogleCloudVideointelligenceV1p2beta1_ExplicitContentDetectionConfig)
    , _gcvvvcLabelDetectionConfig           :: !(Maybe GoogleCloudVideointelligenceV1p2beta1_LabelDetectionConfig)
    , _gcvvvcSegments                       :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_VideoSegment])
    , _gcvvvcTextDetectionConfig            :: !(Maybe GoogleCloudVideointelligenceV1p2beta1_TextDetectionConfig)
    , _gcvvvcShotChangeDetectionConfig      :: !(Maybe GoogleCloudVideointelligenceV1p2beta1_ShotChangeDetectionConfig)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_VideoContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvvcSpeechTranscriptionConfig'
--
-- * 'gcvvvcExplicitContentDetectionConfig'
--
-- * 'gcvvvcLabelDetectionConfig'
--
-- * 'gcvvvcSegments'
--
-- * 'gcvvvcTextDetectionConfig'
--
-- * 'gcvvvcShotChangeDetectionConfig'
googleCloudVideointelligenceV1p2beta1_VideoContext
    :: GoogleCloudVideointelligenceV1p2beta1_VideoContext
googleCloudVideointelligenceV1p2beta1_VideoContext =
  GoogleCloudVideointelligenceV1p2beta1_VideoContext'
    { _gcvvvcSpeechTranscriptionConfig = Nothing
    , _gcvvvcExplicitContentDetectionConfig = Nothing
    , _gcvvvcLabelDetectionConfig = Nothing
    , _gcvvvcSegments = Nothing
    , _gcvvvcTextDetectionConfig = Nothing
    , _gcvvvcShotChangeDetectionConfig = Nothing
    }

-- | Config for SPEECH_TRANSCRIPTION.
gcvvvcSpeechTranscriptionConfig :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoContext (Maybe GoogleCloudVideointelligenceV1p2beta1_SpeechTranscriptionConfig)
gcvvvcSpeechTranscriptionConfig
  = lens _gcvvvcSpeechTranscriptionConfig
      (\ s a -> s{_gcvvvcSpeechTranscriptionConfig = a})

-- | Config for EXPLICIT_CONTENT_DETECTION.
gcvvvcExplicitContentDetectionConfig :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoContext (Maybe GoogleCloudVideointelligenceV1p2beta1_ExplicitContentDetectionConfig)
gcvvvcExplicitContentDetectionConfig
  = lens _gcvvvcExplicitContentDetectionConfig
      (\ s a ->
         s{_gcvvvcExplicitContentDetectionConfig = a})

-- | Config for LABEL_DETECTION.
gcvvvcLabelDetectionConfig :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoContext (Maybe GoogleCloudVideointelligenceV1p2beta1_LabelDetectionConfig)
gcvvvcLabelDetectionConfig
  = lens _gcvvvcLabelDetectionConfig
      (\ s a -> s{_gcvvvcLabelDetectionConfig = a})

-- | Video segments to annotate. The segments may overlap and are not
-- required to be contiguous or span the whole video. If unspecified, each
-- video is treated as a single segment.
gcvvvcSegments :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoContext [GoogleCloudVideointelligenceV1p2beta1_VideoSegment]
gcvvvcSegments
  = lens _gcvvvcSegments
      (\ s a -> s{_gcvvvcSegments = a})
      . _Default
      . _Coerce

-- | Config for TEXT_DETECTION.
gcvvvcTextDetectionConfig :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoContext (Maybe GoogleCloudVideointelligenceV1p2beta1_TextDetectionConfig)
gcvvvcTextDetectionConfig
  = lens _gcvvvcTextDetectionConfig
      (\ s a -> s{_gcvvvcTextDetectionConfig = a})

-- | Config for SHOT_CHANGE_DETECTION.
gcvvvcShotChangeDetectionConfig :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoContext (Maybe GoogleCloudVideointelligenceV1p2beta1_ShotChangeDetectionConfig)
gcvvvcShotChangeDetectionConfig
  = lens _gcvvvcShotChangeDetectionConfig
      (\ s a -> s{_gcvvvcShotChangeDetectionConfig = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p2beta1_VideoContext
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p2beta1VideoContext"
              (\ o ->
                 GoogleCloudVideointelligenceV1p2beta1_VideoContext'
                   <$>
                   (o .:? "speechTranscriptionConfig") <*>
                     (o .:? "explicitContentDetectionConfig")
                     <*> (o .:? "labelDetectionConfig")
                     <*> (o .:? "segments" .!= mempty)
                     <*> (o .:? "textDetectionConfig")
                     <*> (o .:? "shotChangeDetectionConfig"))

instance ToJSON
           GoogleCloudVideointelligenceV1p2beta1_VideoContext
         where
        toJSON
          GoogleCloudVideointelligenceV1p2beta1_VideoContext'{..}
          = object
              (catMaybes
                 [("speechTranscriptionConfig" .=) <$>
                    _gcvvvcSpeechTranscriptionConfig,
                  ("explicitContentDetectionConfig" .=) <$>
                    _gcvvvcExplicitContentDetectionConfig,
                  ("labelDetectionConfig" .=) <$>
                    _gcvvvcLabelDetectionConfig,
                  ("segments" .=) <$> _gcvvvcSegments,
                  ("textDetectionConfig" .=) <$>
                    _gcvvvcTextDetectionConfig,
                  ("shotChangeDetectionConfig" .=) <$>
                    _gcvvvcShotChangeDetectionConfig])

-- | Normalized bounding box. The normalized vertex coordinates are relative
-- to the original image. Range: [0, 1].
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox =
  GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox'
    { _gcvvnbbBottom :: !(Maybe (Textual Double))
    , _gcvvnbbLeft   :: !(Maybe (Textual Double))
    , _gcvvnbbRight  :: !(Maybe (Textual Double))
    , _gcvvnbbTop    :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvnbbBottom'
--
-- * 'gcvvnbbLeft'
--
-- * 'gcvvnbbRight'
--
-- * 'gcvvnbbTop'
googleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox
    :: GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox
googleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox =
  GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox'
    { _gcvvnbbBottom = Nothing
    , _gcvvnbbLeft = Nothing
    , _gcvvnbbRight = Nothing
    , _gcvvnbbTop = Nothing
    }

-- | Bottom Y coordinate.
gcvvnbbBottom :: Lens' GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox (Maybe Double)
gcvvnbbBottom
  = lens _gcvvnbbBottom
      (\ s a -> s{_gcvvnbbBottom = a})
      . mapping _Coerce

-- | Left X coordinate.
gcvvnbbLeft :: Lens' GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox (Maybe Double)
gcvvnbbLeft
  = lens _gcvvnbbLeft (\ s a -> s{_gcvvnbbLeft = a}) .
      mapping _Coerce

-- | Right X coordinate.
gcvvnbbRight :: Lens' GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox (Maybe Double)
gcvvnbbRight
  = lens _gcvvnbbRight (\ s a -> s{_gcvvnbbRight = a})
      . mapping _Coerce

-- | Top Y coordinate.
gcvvnbbTop :: Lens' GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox (Maybe Double)
gcvvnbbTop
  = lens _gcvvnbbTop (\ s a -> s{_gcvvnbbTop = a}) .
      mapping _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox"
              (\ o ->
                 GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox'
                   <$>
                   (o .:? "bottom") <*> (o .:? "left") <*>
                     (o .:? "right")
                     <*> (o .:? "top"))

instance ToJSON
           GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox
         where
        toJSON
          GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox'{..}
          = object
              (catMaybes
                 [("bottom" .=) <$> _gcvvnbbBottom,
                  ("left" .=) <$> _gcvvnbbLeft,
                  ("right" .=) <$> _gcvvnbbRight,
                  ("top" .=) <$> _gcvvnbbTop])

-- | Video segment level annotation results for text detection.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_TextSegment' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_TextSegment =
  GoogleCloudVideointelligenceV1p2beta1_TextSegment'
    { _gcvvtsFrames     :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_TextFrame])
    , _gcvvtsConfidence :: !(Maybe (Textual Double))
    , _gcvvtsSegment    :: !(Maybe GoogleCloudVideointelligenceV1p2beta1_VideoSegment)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_TextSegment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvtsFrames'
--
-- * 'gcvvtsConfidence'
--
-- * 'gcvvtsSegment'
googleCloudVideointelligenceV1p2beta1_TextSegment
    :: GoogleCloudVideointelligenceV1p2beta1_TextSegment
googleCloudVideointelligenceV1p2beta1_TextSegment =
  GoogleCloudVideointelligenceV1p2beta1_TextSegment'
    { _gcvvtsFrames = Nothing
    , _gcvvtsConfidence = Nothing
    , _gcvvtsSegment = Nothing
    }

-- | Information related to the frames where OCR detected text appears.
gcvvtsFrames :: Lens' GoogleCloudVideointelligenceV1p2beta1_TextSegment [GoogleCloudVideointelligenceV1p2beta1_TextFrame]
gcvvtsFrames
  = lens _gcvvtsFrames (\ s a -> s{_gcvvtsFrames = a})
      . _Default
      . _Coerce

-- | Confidence for the track of detected text. It is calculated as the
-- highest over all frames where OCR detected text appears.
gcvvtsConfidence :: Lens' GoogleCloudVideointelligenceV1p2beta1_TextSegment (Maybe Double)
gcvvtsConfidence
  = lens _gcvvtsConfidence
      (\ s a -> s{_gcvvtsConfidence = a})
      . mapping _Coerce

-- | Video segment where a text snippet was detected.
gcvvtsSegment :: Lens' GoogleCloudVideointelligenceV1p2beta1_TextSegment (Maybe GoogleCloudVideointelligenceV1p2beta1_VideoSegment)
gcvvtsSegment
  = lens _gcvvtsSegment
      (\ s a -> s{_gcvvtsSegment = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p2beta1_TextSegment
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p2beta1TextSegment"
              (\ o ->
                 GoogleCloudVideointelligenceV1p2beta1_TextSegment'
                   <$>
                   (o .:? "frames" .!= mempty) <*> (o .:? "confidence")
                     <*> (o .:? "segment"))

instance ToJSON
           GoogleCloudVideointelligenceV1p2beta1_TextSegment
         where
        toJSON
          GoogleCloudVideointelligenceV1p2beta1_TextSegment'{..}
          = object
              (catMaybes
                 [("frames" .=) <$> _gcvvtsFrames,
                  ("confidence" .=) <$> _gcvvtsConfidence,
                  ("segment" .=) <$> _gcvvtsSegment])

-- | A speech recognition result corresponding to a portion of the audio.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_SpeechTranscription' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription =
  GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription'
    { _goooAlternatives :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative])
    , _goooLanguageCode :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'goooAlternatives'
--
-- * 'goooLanguageCode'
googleCloudVideointelligenceV1p2beta1_SpeechTranscription
    :: GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription
googleCloudVideointelligenceV1p2beta1_SpeechTranscription =
  GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription'
    {_goooAlternatives = Nothing, _goooLanguageCode = Nothing}

-- | May contain one or more recognition hypotheses (up to the maximum
-- specified in \`max_alternatives\`). These alternatives are ordered in
-- terms of accuracy, with the top (first) alternative being the most
-- probable, as ranked by the recognizer.
goooAlternatives :: Lens' GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription [GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative]
goooAlternatives
  = lens _goooAlternatives
      (\ s a -> s{_goooAlternatives = a})
      . _Default
      . _Coerce

-- | Output only. The
-- [BCP-47](https:\/\/www.rfc-editor.org\/rfc\/bcp\/bcp47.txt) language tag
-- of the language in this result. This language code was detected to have
-- the most likelihood of being spoken in the audio.
goooLanguageCode :: Lens' GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription (Maybe Text)
goooLanguageCode
  = lens _goooLanguageCode
      (\ s a -> s{_goooLanguageCode = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p2beta1SpeechTranscription"
              (\ o ->
                 GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription'
                   <$>
                   (o .:? "alternatives" .!= mempty) <*>
                     (o .:? "languageCode"))

instance ToJSON
           GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription
         where
        toJSON
          GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription'{..}
          = object
              (catMaybes
                 [("alternatives" .=) <$> _goooAlternatives,
                  ("languageCode" .=) <$> _goooLanguageCode])

-- | The \`Status\` type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by [gRPC](https:\/\/github.com\/grpc). The error model is
-- designed to be: - Simple to use and understand for most users - Flexible
-- enough to meet unexpected needs # Overview The \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. The error code should be an enum value of google.rpc.Code, but
-- it may accept additional error codes if needed. The error message should
-- be a developer-facing English message that helps developers *understand*
-- and *resolve* the error. If a localized user-facing error message is
-- needed, put the localized message in the error details or localize it in
-- the client. The optional error details may contain arbitrary information
-- about the error. There is a predefined set of error detail types in the
-- package \`google.rpc\` that can be used for common error conditions. #
-- Language mapping The \`Status\` message is the logical representation of
-- the error model, but it is not necessarily the actual wire format. When
-- the \`Status\` message is exposed in different client libraries and
-- different wire protocols, it can be mapped differently. For example, it
-- will likely be mapped to some exceptions in Java, but more likely mapped
-- to some error codes in C. # Other uses The error model and the
-- \`Status\` message can be used in a variety of environments, either with
-- or without APIs, to provide a consistent developer experience across
-- different environments. Example uses of this error model include: -
-- Partial errors. If a service needs to return partial errors to the
-- client, it may embed the \`Status\` in the normal response to indicate
-- the partial errors. - Workflow errors. A typical workflow has multiple
-- steps. Each step may have a \`Status\` message for error reporting. -
-- Batch operations. If a client uses batch request and batch response, the
-- \`Status\` message should be used directly inside batch response, one
-- for each error sub-response. - Asynchronous operations. If an API call
-- embeds asynchronous operation results in its response, the status of
-- those operations should be represented directly using the \`Status\`
-- message. - Logging. If some API errors are stored in logs, the message
-- \`Status\` could be used directly after any stripping needed for
-- security\/privacy reasons.
--
-- /See:/ 'googleRpc_Status' smart constructor.
data GoogleRpc_Status =
  GoogleRpc_Status'
    { _grsDetails :: !(Maybe [GoogleRpc_StatusDetailsItem])
    , _grsCode    :: !(Maybe (Textual Int32))
    , _grsMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleRpc_Status' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grsDetails'
--
-- * 'grsCode'
--
-- * 'grsMessage'
googleRpc_Status
    :: GoogleRpc_Status
googleRpc_Status =
  GoogleRpc_Status'
    {_grsDetails = Nothing, _grsCode = Nothing, _grsMessage = Nothing}

-- | A list of messages that carry the error details. There is a common set
-- of message types for APIs to use.
grsDetails :: Lens' GoogleRpc_Status [GoogleRpc_StatusDetailsItem]
grsDetails
  = lens _grsDetails (\ s a -> s{_grsDetails = a}) .
      _Default
      . _Coerce

-- | The status code, which should be an enum value of google.rpc.Code.
grsCode :: Lens' GoogleRpc_Status (Maybe Int32)
grsCode
  = lens _grsCode (\ s a -> s{_grsCode = a}) .
      mapping _Coerce

-- | A developer-facing error message, which should be in English. Any
-- user-facing error message should be localized and sent in the
-- google.rpc.Status.details field, or localized by the client.
grsMessage :: Lens' GoogleRpc_Status (Maybe Text)
grsMessage
  = lens _grsMessage (\ s a -> s{_grsMessage = a})

instance FromJSON GoogleRpc_Status where
        parseJSON
          = withObject "GoogleRpcStatus"
              (\ o ->
                 GoogleRpc_Status' <$>
                   (o .:? "details" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON GoogleRpc_Status where
        toJSON GoogleRpc_Status'{..}
          = object
              (catMaybes
                 [("details" .=) <$> _grsDetails,
                  ("code" .=) <$> _grsCode,
                  ("message" .=) <$> _grsMessage])

-- | Config for LABEL_DETECTION.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_LabelDetectionConfig' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_LabelDetectionConfig =
  GoogleCloudVideointelligenceV1p2beta1_LabelDetectionConfig'
    { _gcvvldcLabelDetectionMode :: !(Maybe GoogleCloudVideointelligenceV1p2beta1_LabelDetectionConfigLabelDetectionMode)
    , _gcvvldcStationaryCamera   :: !(Maybe Bool)
    , _gcvvldcModel              :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_LabelDetectionConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvldcLabelDetectionMode'
--
-- * 'gcvvldcStationaryCamera'
--
-- * 'gcvvldcModel'
googleCloudVideointelligenceV1p2beta1_LabelDetectionConfig
    :: GoogleCloudVideointelligenceV1p2beta1_LabelDetectionConfig
googleCloudVideointelligenceV1p2beta1_LabelDetectionConfig =
  GoogleCloudVideointelligenceV1p2beta1_LabelDetectionConfig'
    { _gcvvldcLabelDetectionMode = Nothing
    , _gcvvldcStationaryCamera = Nothing
    , _gcvvldcModel = Nothing
    }

-- | What labels should be detected with LABEL_DETECTION, in addition to
-- video-level labels or segment-level labels. If unspecified, defaults to
-- \`SHOT_MODE\`.
gcvvldcLabelDetectionMode :: Lens' GoogleCloudVideointelligenceV1p2beta1_LabelDetectionConfig (Maybe GoogleCloudVideointelligenceV1p2beta1_LabelDetectionConfigLabelDetectionMode)
gcvvldcLabelDetectionMode
  = lens _gcvvldcLabelDetectionMode
      (\ s a -> s{_gcvvldcLabelDetectionMode = a})

-- | Whether the video has been shot from a stationary (i.e. non-moving)
-- camera. When set to true, might improve detection accuracy for moving
-- objects. Should be used with \`SHOT_AND_FRAME_MODE\` enabled.
gcvvldcStationaryCamera :: Lens' GoogleCloudVideointelligenceV1p2beta1_LabelDetectionConfig (Maybe Bool)
gcvvldcStationaryCamera
  = lens _gcvvldcStationaryCamera
      (\ s a -> s{_gcvvldcStationaryCamera = a})

-- | Model to use for label detection. Supported values: \"builtin\/stable\"
-- (the default if unset) and \"builtin\/latest\".
gcvvldcModel :: Lens' GoogleCloudVideointelligenceV1p2beta1_LabelDetectionConfig (Maybe Text)
gcvvldcModel
  = lens _gcvvldcModel (\ s a -> s{_gcvvldcModel = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p2beta1_LabelDetectionConfig
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p2beta1LabelDetectionConfig"
              (\ o ->
                 GoogleCloudVideointelligenceV1p2beta1_LabelDetectionConfig'
                   <$>
                   (o .:? "labelDetectionMode") <*>
                     (o .:? "stationaryCamera")
                     <*> (o .:? "model"))

instance ToJSON
           GoogleCloudVideointelligenceV1p2beta1_LabelDetectionConfig
         where
        toJSON
          GoogleCloudVideointelligenceV1p2beta1_LabelDetectionConfig'{..}
          = object
              (catMaybes
                 [("labelDetectionMode" .=) <$>
                    _gcvvldcLabelDetectionMode,
                  ("stationaryCamera" .=) <$> _gcvvldcStationaryCamera,
                  ("model" .=) <$> _gcvvldcModel])

-- | Video segment.
--
-- /See:/ 'googleCloudVideointelligenceV1_VideoSegment' smart constructor.
data GoogleCloudVideointelligenceV1_VideoSegment =
  GoogleCloudVideointelligenceV1_VideoSegment'
    { _gcvvvscStartTimeOffSet :: !(Maybe GDuration)
    , _gcvvvscEndTimeOffSet   :: !(Maybe GDuration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_VideoSegment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvvscStartTimeOffSet'
--
-- * 'gcvvvscEndTimeOffSet'
googleCloudVideointelligenceV1_VideoSegment
    :: GoogleCloudVideointelligenceV1_VideoSegment
googleCloudVideointelligenceV1_VideoSegment =
  GoogleCloudVideointelligenceV1_VideoSegment'
    {_gcvvvscStartTimeOffSet = Nothing, _gcvvvscEndTimeOffSet = Nothing}

-- | Time-offset, relative to the beginning of the video, corresponding to
-- the start of the segment (inclusive).
gcvvvscStartTimeOffSet :: Lens' GoogleCloudVideointelligenceV1_VideoSegment (Maybe Scientific)
gcvvvscStartTimeOffSet
  = lens _gcvvvscStartTimeOffSet
      (\ s a -> s{_gcvvvscStartTimeOffSet = a})
      . mapping _GDuration

-- | Time-offset, relative to the beginning of the video, corresponding to
-- the end of the segment (inclusive).
gcvvvscEndTimeOffSet :: Lens' GoogleCloudVideointelligenceV1_VideoSegment (Maybe Scientific)
gcvvvscEndTimeOffSet
  = lens _gcvvvscEndTimeOffSet
      (\ s a -> s{_gcvvvscEndTimeOffSet = a})
      . mapping _GDuration

instance FromJSON
           GoogleCloudVideointelligenceV1_VideoSegment
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1VideoSegment"
              (\ o ->
                 GoogleCloudVideointelligenceV1_VideoSegment' <$>
                   (o .:? "startTimeOffset") <*>
                     (o .:? "endTimeOffset"))

instance ToJSON
           GoogleCloudVideointelligenceV1_VideoSegment
         where
        toJSON
          GoogleCloudVideointelligenceV1_VideoSegment'{..}
          = object
              (catMaybes
                 [("startTimeOffset" .=) <$> _gcvvvscStartTimeOffSet,
                  ("endTimeOffset" .=) <$> _gcvvvscEndTimeOffSet])

-- | Explicit content annotation (based on per-frame visual signals only). If
-- no explicit content has been detected in a frame, no annotations are
-- present for that frame.
--
-- /See:/ 'googleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation' smart constructor.
newtype GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation =
  GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation'
    { _gcvvecacFrames :: Maybe [GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvecacFrames'
googleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation
    :: GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation
googleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation =
  GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation'
    {_gcvvecacFrames = Nothing}

-- | All video frames where explicit content was detected.
gcvvecacFrames :: Lens' GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation [GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame]
gcvvecacFrames
  = lens _gcvvecacFrames
      (\ s a -> s{_gcvvecacFrames = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation'
                   <$> (o .:? "frames" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation'{..}
          = object
              (catMaybes [("frames" .=) <$> _gcvvecacFrames])

-- | Config for SHOT_CHANGE_DETECTION.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_ShotChangeDetectionConfig' smart constructor.
newtype GoogleCloudVideointelligenceV1p2beta1_ShotChangeDetectionConfig =
  GoogleCloudVideointelligenceV1p2beta1_ShotChangeDetectionConfig'
    { _gcvvscdcModel :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_ShotChangeDetectionConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvscdcModel'
googleCloudVideointelligenceV1p2beta1_ShotChangeDetectionConfig
    :: GoogleCloudVideointelligenceV1p2beta1_ShotChangeDetectionConfig
googleCloudVideointelligenceV1p2beta1_ShotChangeDetectionConfig =
  GoogleCloudVideointelligenceV1p2beta1_ShotChangeDetectionConfig'
    {_gcvvscdcModel = Nothing}

-- | Model to use for shot change detection. Supported values:
-- \"builtin\/stable\" (the default if unset) and \"builtin\/latest\".
gcvvscdcModel :: Lens' GoogleCloudVideointelligenceV1p2beta1_ShotChangeDetectionConfig (Maybe Text)
gcvvscdcModel
  = lens _gcvvscdcModel
      (\ s a -> s{_gcvvscdcModel = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p2beta1_ShotChangeDetectionConfig
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p2beta1ShotChangeDetectionConfig"
              (\ o ->
                 GoogleCloudVideointelligenceV1p2beta1_ShotChangeDetectionConfig'
                   <$> (o .:? "model"))

instance ToJSON
           GoogleCloudVideointelligenceV1p2beta1_ShotChangeDetectionConfig
         where
        toJSON
          GoogleCloudVideointelligenceV1p2beta1_ShotChangeDetectionConfig'{..}
          = object
              (catMaybes [("model" .=) <$> _gcvvscdcModel])

-- | Video annotation response. Included in the \`response\` field of the
-- \`Operation\` returned by the \`GetOperation\` call of the
-- \`google::longrunning::Operations\` service.
--
-- /See:/ 'googleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse' smart constructor.
newtype GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse =
  GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse'
    { _gcvvavrcAnnotationResults :: Maybe [GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvavrcAnnotationResults'
googleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse
    :: GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse
googleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse =
  GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse'
    {_gcvvavrcAnnotationResults = Nothing}

-- | Annotation results for all videos specified in \`AnnotateVideoRequest\`.
gcvvavrcAnnotationResults :: Lens' GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse [GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults]
gcvvavrcAnnotationResults
  = lens _gcvvavrcAnnotationResults
      (\ s a -> s{_gcvvavrcAnnotationResults = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse"
              (\ o ->
                 GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse'
                   <$> (o .:? "annotationResults" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse
         where
        toJSON
          GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse'{..}
          = object
              (catMaybes
                 [("annotationResults" .=) <$>
                    _gcvvavrcAnnotationResults])

-- | Video frame level annotation results for explicit content.
--
-- /See:/ 'googleCloudVideointelligenceV1beta2_ExplicitContentFrame' smart constructor.
data GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame =
  GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame'
    { _gcvvecfcTimeOffSet            :: !(Maybe GDuration)
    , _gcvvecfcPornographyLikelihood :: !(Maybe GoogleCloudVideointelligenceV1beta2_ExplicitContentFramePornographyLikelihood)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvecfcTimeOffSet'
--
-- * 'gcvvecfcPornographyLikelihood'
googleCloudVideointelligenceV1beta2_ExplicitContentFrame
    :: GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame
googleCloudVideointelligenceV1beta2_ExplicitContentFrame =
  GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame'
    {_gcvvecfcTimeOffSet = Nothing, _gcvvecfcPornographyLikelihood = Nothing}

-- | Time-offset, relative to the beginning of the video, corresponding to
-- the video frame for this location.
gcvvecfcTimeOffSet :: Lens' GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame (Maybe Scientific)
gcvvecfcTimeOffSet
  = lens _gcvvecfcTimeOffSet
      (\ s a -> s{_gcvvecfcTimeOffSet = a})
      . mapping _GDuration

-- | Likelihood of the pornography content..
gcvvecfcPornographyLikelihood :: Lens' GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame (Maybe GoogleCloudVideointelligenceV1beta2_ExplicitContentFramePornographyLikelihood)
gcvvecfcPornographyLikelihood
  = lens _gcvvecfcPornographyLikelihood
      (\ s a -> s{_gcvvecfcPornographyLikelihood = a})

instance FromJSON
           GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1beta2ExplicitContentFrame"
              (\ o ->
                 GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame'
                   <$>
                   (o .:? "timeOffset") <*>
                     (o .:? "pornographyLikelihood"))

instance ToJSON
           GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame
         where
        toJSON
          GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame'{..}
          = object
              (catMaybes
                 [("timeOffset" .=) <$> _gcvvecfcTimeOffSet,
                  ("pornographyLikelihood" .=) <$>
                    _gcvvecfcPornographyLikelihood])

-- | Config for SPEECH_TRANSCRIPTION.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_SpeechTranscriptionConfig' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_SpeechTranscriptionConfig =
  GoogleCloudVideointelligenceV1p2beta1_SpeechTranscriptionConfig'
    { _gcvvstccSpeechContexts             :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_SpeechContext])
    , _gcvvstccLanguageCode               :: !(Maybe Text)
    , _gcvvstccAudioTracks                :: !(Maybe [Textual Int32])
    , _gcvvstccEnableAutomaticPunctuation :: !(Maybe Bool)
    , _gcvvstccMaxAlternatives            :: !(Maybe (Textual Int32))
    , _gcvvstccEnableSpeakerDiarization   :: !(Maybe Bool)
    , _gcvvstccFilterProfanity            :: !(Maybe Bool)
    , _gcvvstccDiarizationSpeakerCount    :: !(Maybe (Textual Int32))
    , _gcvvstccEnableWordConfidence       :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_SpeechTranscriptionConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvstccSpeechContexts'
--
-- * 'gcvvstccLanguageCode'
--
-- * 'gcvvstccAudioTracks'
--
-- * 'gcvvstccEnableAutomaticPunctuation'
--
-- * 'gcvvstccMaxAlternatives'
--
-- * 'gcvvstccEnableSpeakerDiarization'
--
-- * 'gcvvstccFilterProfanity'
--
-- * 'gcvvstccDiarizationSpeakerCount'
--
-- * 'gcvvstccEnableWordConfidence'
googleCloudVideointelligenceV1p2beta1_SpeechTranscriptionConfig
    :: GoogleCloudVideointelligenceV1p2beta1_SpeechTranscriptionConfig
googleCloudVideointelligenceV1p2beta1_SpeechTranscriptionConfig =
  GoogleCloudVideointelligenceV1p2beta1_SpeechTranscriptionConfig'
    { _gcvvstccSpeechContexts = Nothing
    , _gcvvstccLanguageCode = Nothing
    , _gcvvstccAudioTracks = Nothing
    , _gcvvstccEnableAutomaticPunctuation = Nothing
    , _gcvvstccMaxAlternatives = Nothing
    , _gcvvstccEnableSpeakerDiarization = Nothing
    , _gcvvstccFilterProfanity = Nothing
    , _gcvvstccDiarizationSpeakerCount = Nothing
    , _gcvvstccEnableWordConfidence = Nothing
    }

-- | *Optional* A means to provide context to assist the speech recognition.
gcvvstccSpeechContexts :: Lens' GoogleCloudVideointelligenceV1p2beta1_SpeechTranscriptionConfig [GoogleCloudVideointelligenceV1p2beta1_SpeechContext]
gcvvstccSpeechContexts
  = lens _gcvvstccSpeechContexts
      (\ s a -> s{_gcvvstccSpeechContexts = a})
      . _Default
      . _Coerce

-- | *Required* The language of the supplied audio as a
-- [BCP-47](https:\/\/www.rfc-editor.org\/rfc\/bcp\/bcp47.txt) language
-- tag. Example: \"en-US\". See [Language
-- Support](https:\/\/cloud.google.com\/speech\/docs\/languages) for a list
-- of the currently supported language codes.
gcvvstccLanguageCode :: Lens' GoogleCloudVideointelligenceV1p2beta1_SpeechTranscriptionConfig (Maybe Text)
gcvvstccLanguageCode
  = lens _gcvvstccLanguageCode
      (\ s a -> s{_gcvvstccLanguageCode = a})

-- | *Optional* For file formats, such as MXF or MKV, supporting multiple
-- audio tracks, specify up to two tracks. Default: track 0.
gcvvstccAudioTracks :: Lens' GoogleCloudVideointelligenceV1p2beta1_SpeechTranscriptionConfig [Int32]
gcvvstccAudioTracks
  = lens _gcvvstccAudioTracks
      (\ s a -> s{_gcvvstccAudioTracks = a})
      . _Default
      . _Coerce

-- | *Optional* If \'true\', adds punctuation to recognition result
-- hypotheses. This feature is only available in select languages. Setting
-- this for requests in other languages has no effect at all. The default
-- \'false\' value does not add punctuation to result hypotheses. NOTE:
-- \"This is currently offered as an experimental service, complimentary to
-- all users. In the future this may be exclusively available as a premium
-- feature.\"
gcvvstccEnableAutomaticPunctuation :: Lens' GoogleCloudVideointelligenceV1p2beta1_SpeechTranscriptionConfig (Maybe Bool)
gcvvstccEnableAutomaticPunctuation
  = lens _gcvvstccEnableAutomaticPunctuation
      (\ s a -> s{_gcvvstccEnableAutomaticPunctuation = a})

-- | *Optional* Maximum number of recognition hypotheses to be returned.
-- Specifically, the maximum number of \`SpeechRecognitionAlternative\`
-- messages within each \`SpeechTranscription\`. The server may return
-- fewer than \`max_alternatives\`. Valid values are \`0\`-\`30\`. A value
-- of \`0\` or \`1\` will return a maximum of one. If omitted, will return
-- a maximum of one.
gcvvstccMaxAlternatives :: Lens' GoogleCloudVideointelligenceV1p2beta1_SpeechTranscriptionConfig (Maybe Int32)
gcvvstccMaxAlternatives
  = lens _gcvvstccMaxAlternatives
      (\ s a -> s{_gcvvstccMaxAlternatives = a})
      . mapping _Coerce

-- | *Optional* If \'true\', enables speaker detection for each recognized
-- word in the top alternative of the recognition result using a
-- speaker_tag provided in the WordInfo. Note: When this is true, we send
-- all the words from the beginning of the audio for the top alternative in
-- every consecutive responses. This is done in order to improve our
-- speaker tags as our models learn to identify the speakers in the
-- conversation over time.
gcvvstccEnableSpeakerDiarization :: Lens' GoogleCloudVideointelligenceV1p2beta1_SpeechTranscriptionConfig (Maybe Bool)
gcvvstccEnableSpeakerDiarization
  = lens _gcvvstccEnableSpeakerDiarization
      (\ s a -> s{_gcvvstccEnableSpeakerDiarization = a})

-- | *Optional* If set to \`true\`, the server will attempt to filter out
-- profanities, replacing all but the initial character in each filtered
-- word with asterisks, e.g. \"f***\". If set to \`false\` or omitted,
-- profanities won\'t be filtered out.
gcvvstccFilterProfanity :: Lens' GoogleCloudVideointelligenceV1p2beta1_SpeechTranscriptionConfig (Maybe Bool)
gcvvstccFilterProfanity
  = lens _gcvvstccFilterProfanity
      (\ s a -> s{_gcvvstccFilterProfanity = a})

-- | *Optional* If set, specifies the estimated number of speakers in the
-- conversation. If not set, defaults to \'2\'. Ignored unless
-- enable_speaker_diarization is set to true.
gcvvstccDiarizationSpeakerCount :: Lens' GoogleCloudVideointelligenceV1p2beta1_SpeechTranscriptionConfig (Maybe Int32)
gcvvstccDiarizationSpeakerCount
  = lens _gcvvstccDiarizationSpeakerCount
      (\ s a -> s{_gcvvstccDiarizationSpeakerCount = a})
      . mapping _Coerce

-- | *Optional* If \`true\`, the top result includes a list of words and the
-- confidence for those words. If \`false\`, no word-level confidence
-- information is returned. The default is \`false\`.
gcvvstccEnableWordConfidence :: Lens' GoogleCloudVideointelligenceV1p2beta1_SpeechTranscriptionConfig (Maybe Bool)
gcvvstccEnableWordConfidence
  = lens _gcvvstccEnableWordConfidence
      (\ s a -> s{_gcvvstccEnableWordConfidence = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p2beta1_SpeechTranscriptionConfig
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p2beta1SpeechTranscriptionConfig"
              (\ o ->
                 GoogleCloudVideointelligenceV1p2beta1_SpeechTranscriptionConfig'
                   <$>
                   (o .:? "speechContexts" .!= mempty) <*>
                     (o .:? "languageCode")
                     <*> (o .:? "audioTracks" .!= mempty)
                     <*> (o .:? "enableAutomaticPunctuation")
                     <*> (o .:? "maxAlternatives")
                     <*> (o .:? "enableSpeakerDiarization")
                     <*> (o .:? "filterProfanity")
                     <*> (o .:? "diarizationSpeakerCount")
                     <*> (o .:? "enableWordConfidence"))

instance ToJSON
           GoogleCloudVideointelligenceV1p2beta1_SpeechTranscriptionConfig
         where
        toJSON
          GoogleCloudVideointelligenceV1p2beta1_SpeechTranscriptionConfig'{..}
          = object
              (catMaybes
                 [("speechContexts" .=) <$> _gcvvstccSpeechContexts,
                  ("languageCode" .=) <$> _gcvvstccLanguageCode,
                  ("audioTracks" .=) <$> _gcvvstccAudioTracks,
                  ("enableAutomaticPunctuation" .=) <$>
                    _gcvvstccEnableAutomaticPunctuation,
                  ("maxAlternatives" .=) <$> _gcvvstccMaxAlternatives,
                  ("enableSpeakerDiarization" .=) <$>
                    _gcvvstccEnableSpeakerDiarization,
                  ("filterProfanity" .=) <$> _gcvvstccFilterProfanity,
                  ("diarizationSpeakerCount" .=) <$>
                    _gcvvstccDiarizationSpeakerCount,
                  ("enableWordConfidence" .=) <$>
                    _gcvvstccEnableWordConfidence])

-- | Video segment level annotation results for label detection.
--
-- /See:/ 'googleCloudVideointelligenceV1_LabelSegment' smart constructor.
data GoogleCloudVideointelligenceV1_LabelSegment =
  GoogleCloudVideointelligenceV1_LabelSegment'
    { _g2Confidence :: !(Maybe (Textual Double))
    , _g2Segment    :: !(Maybe GoogleCloudVideointelligenceV1_VideoSegment)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_LabelSegment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'g2Confidence'
--
-- * 'g2Segment'
googleCloudVideointelligenceV1_LabelSegment
    :: GoogleCloudVideointelligenceV1_LabelSegment
googleCloudVideointelligenceV1_LabelSegment =
  GoogleCloudVideointelligenceV1_LabelSegment'
    {_g2Confidence = Nothing, _g2Segment = Nothing}

-- | Confidence that the label is accurate. Range: [0, 1].
g2Confidence :: Lens' GoogleCloudVideointelligenceV1_LabelSegment (Maybe Double)
g2Confidence
  = lens _g2Confidence (\ s a -> s{_g2Confidence = a})
      . mapping _Coerce

-- | Video segment where a label was detected.
g2Segment :: Lens' GoogleCloudVideointelligenceV1_LabelSegment (Maybe GoogleCloudVideointelligenceV1_VideoSegment)
g2Segment
  = lens _g2Segment (\ s a -> s{_g2Segment = a})

instance FromJSON
           GoogleCloudVideointelligenceV1_LabelSegment
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1LabelSegment"
              (\ o ->
                 GoogleCloudVideointelligenceV1_LabelSegment' <$>
                   (o .:? "confidence") <*> (o .:? "segment"))

instance ToJSON
           GoogleCloudVideointelligenceV1_LabelSegment
         where
        toJSON
          GoogleCloudVideointelligenceV1_LabelSegment'{..}
          = object
              (catMaybes
                 [("confidence" .=) <$> _g2Confidence,
                  ("segment" .=) <$> _g2Segment])
