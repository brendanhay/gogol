{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.VideoIntelligence.Types.Product
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.VideoIntelligence.Types.Product where

import Network.Google.Prelude
import Network.Google.VideoIntelligence.Types.Sum

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
data GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation =
  GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation'
    { _gcvvecaFrames :: !(Maybe [GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame])
    , _gcvvecaVersion :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvecaFrames'
--
-- * 'gcvvecaVersion'
googleCloudVideointelligenceV1beta2_ExplicitContentAnnotation
    :: GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation
googleCloudVideointelligenceV1beta2_ExplicitContentAnnotation =
  GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation'
    {_gcvvecaFrames = Nothing, _gcvvecaVersion = Nothing}


-- | All video frames where explicit content was detected.
gcvvecaFrames :: Lens' GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation [GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame]
gcvvecaFrames
  = lens _gcvvecaFrames
      (\ s a -> s{_gcvvecaFrames = a})
      . _Default
      . _Coerce

-- | Feature version.
gcvvecaVersion :: Lens' GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation (Maybe Text)
gcvvecaVersion
  = lens _gcvvecaVersion
      (\ s a -> s{_gcvvecaVersion = a})

instance FromJSON
           GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation'
                   <$>
                   (o .:? "frames" .!= mempty) <*> (o .:? "version"))

instance ToJSON
           GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation'{..}
          = object
              (catMaybes
                 [("frames" .=) <$> _gcvvecaFrames,
                  ("version" .=) <$> _gcvvecaVersion])

-- | Alternative hypotheses (a.k.a. n-best list).
--
-- /See:/ 'googleCloudVideointelligenceV1_SpeechRecognitionAlternative' smart constructor.
data GoogleCloudVideointelligenceV1_SpeechRecognitionAlternative =
  GoogleCloudVideointelligenceV1_SpeechRecognitionAlternative'
    { _gcvvsraConfidence :: !(Maybe (Textual Double))
    , _gcvvsraWords :: !(Maybe [GoogleCloudVideointelligenceV1_WordInfo])
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


-- | Output only. The confidence estimate between 0.0 and 1.0. A higher
-- number indicates an estimated greater likelihood that the recognized
-- words are correct. This field is set only for the top alternative. This
-- field is not guaranteed to be accurate and users should not rely on it
-- to be always provided. The default of 0.0 is a sentinel value indicating
-- \`confidence\` was not set.
gcvvsraConfidence :: Lens' GoogleCloudVideointelligenceV1_SpeechRecognitionAlternative (Maybe Double)
gcvvsraConfidence
  = lens _gcvvsraConfidence
      (\ s a -> s{_gcvvsraConfidence = a})
      . mapping _Coerce

-- | Output only. A list of word-specific information for each recognized
-- word. Note: When \`enable_speaker_diarization\` is set to true, you will
-- see all the words from the beginning of the audio.
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

-- | Video frame level annotation results for text annotation (OCR). Contains
-- information regarding timestamp and bounding box locations for the
-- frames containing detected OCR text snippets.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_TextFrame' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_TextFrame =
  GoogleCloudVideointelligenceV1p3beta1_TextFrame'
    { _gcvvtfRotatedBoundingBox :: !(Maybe GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingPoly)
    , _gcvvtfTimeOffSet :: !(Maybe GDuration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_TextFrame' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvtfRotatedBoundingBox'
--
-- * 'gcvvtfTimeOffSet'
googleCloudVideointelligenceV1p3beta1_TextFrame
    :: GoogleCloudVideointelligenceV1p3beta1_TextFrame
googleCloudVideointelligenceV1p3beta1_TextFrame =
  GoogleCloudVideointelligenceV1p3beta1_TextFrame'
    {_gcvvtfRotatedBoundingBox = Nothing, _gcvvtfTimeOffSet = Nothing}


-- | Bounding polygon of the detected text for this frame.
gcvvtfRotatedBoundingBox :: Lens' GoogleCloudVideointelligenceV1p3beta1_TextFrame (Maybe GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingPoly)
gcvvtfRotatedBoundingBox
  = lens _gcvvtfRotatedBoundingBox
      (\ s a -> s{_gcvvtfRotatedBoundingBox = a})

-- | Timestamp of this frame.
gcvvtfTimeOffSet :: Lens' GoogleCloudVideointelligenceV1p3beta1_TextFrame (Maybe Scientific)
gcvvtfTimeOffSet
  = lens _gcvvtfTimeOffSet
      (\ s a -> s{_gcvvtfTimeOffSet = a})
      . mapping _GDuration

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_TextFrame
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1TextFrame"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_TextFrame' <$>
                   (o .:? "rotatedBoundingBox") <*>
                     (o .:? "timeOffset"))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_TextFrame
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_TextFrame'{..}
          = object
              (catMaybes
                 [("rotatedBoundingBox" .=) <$>
                    _gcvvtfRotatedBoundingBox,
                  ("timeOffset" .=) <$> _gcvvtfTimeOffSet])

-- | Video segment level annotation results for face detection.
--
-- /See:/ 'googleCloudVideointelligenceV1p1beta1_FaceSegment' smart constructor.
newtype GoogleCloudVideointelligenceV1p1beta1_FaceSegment =
  GoogleCloudVideointelligenceV1p1beta1_FaceSegment'
    { _gcvvfsSegment :: Maybe GoogleCloudVideointelligenceV1p1beta1_VideoSegment
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_FaceSegment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvfsSegment'
googleCloudVideointelligenceV1p1beta1_FaceSegment
    :: GoogleCloudVideointelligenceV1p1beta1_FaceSegment
googleCloudVideointelligenceV1p1beta1_FaceSegment =
  GoogleCloudVideointelligenceV1p1beta1_FaceSegment' {_gcvvfsSegment = Nothing}


-- | Video segment where a face was detected.
gcvvfsSegment :: Lens' GoogleCloudVideointelligenceV1p1beta1_FaceSegment (Maybe GoogleCloudVideointelligenceV1p1beta1_VideoSegment)
gcvvfsSegment
  = lens _gcvvfsSegment
      (\ s a -> s{_gcvvfsSegment = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p1beta1_FaceSegment
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p1beta1FaceSegment"
              (\ o ->
                 GoogleCloudVideointelligenceV1p1beta1_FaceSegment'
                   <$> (o .:? "segment"))

instance ToJSON
           GoogleCloudVideointelligenceV1p1beta1_FaceSegment
         where
        toJSON
          GoogleCloudVideointelligenceV1p1beta1_FaceSegment'{..}
          = object
              (catMaybes [("segment" .=) <$> _gcvvfsSegment])

-- | Streaming annotation results corresponding to a portion of the video
-- that is currently being processed. Only ONE type of annotation will be
-- specified in the response.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults =
  GoogleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults'
    { _gcvvsvarShotAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1p3beta1_VideoSegment])
    , _gcvvsvarLabelAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation])
    , _gcvvsvarFrameTimestamp :: !(Maybe GDuration)
    , _gcvvsvarObjectAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation])
    , _gcvvsvarExplicitAnnotation :: !(Maybe GoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvsvarShotAnnotations'
--
-- * 'gcvvsvarLabelAnnotations'
--
-- * 'gcvvsvarFrameTimestamp'
--
-- * 'gcvvsvarObjectAnnotations'
--
-- * 'gcvvsvarExplicitAnnotation'
googleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults
    :: GoogleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults
googleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults =
  GoogleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults'
    { _gcvvsvarShotAnnotations = Nothing
    , _gcvvsvarLabelAnnotations = Nothing
    , _gcvvsvarFrameTimestamp = Nothing
    , _gcvvsvarObjectAnnotations = Nothing
    , _gcvvsvarExplicitAnnotation = Nothing
    }


-- | Shot annotation results. Each shot is represented as a video segment.
gcvvsvarShotAnnotations :: Lens' GoogleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults [GoogleCloudVideointelligenceV1p3beta1_VideoSegment]
gcvvsvarShotAnnotations
  = lens _gcvvsvarShotAnnotations
      (\ s a -> s{_gcvvsvarShotAnnotations = a})
      . _Default
      . _Coerce

-- | Label annotation results.
gcvvsvarLabelAnnotations :: Lens' GoogleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults [GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation]
gcvvsvarLabelAnnotations
  = lens _gcvvsvarLabelAnnotations
      (\ s a -> s{_gcvvsvarLabelAnnotations = a})
      . _Default
      . _Coerce

-- | Timestamp of the processed frame in microseconds.
gcvvsvarFrameTimestamp :: Lens' GoogleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults (Maybe Scientific)
gcvvsvarFrameTimestamp
  = lens _gcvvsvarFrameTimestamp
      (\ s a -> s{_gcvvsvarFrameTimestamp = a})
      . mapping _GDuration

-- | Object tracking results.
gcvvsvarObjectAnnotations :: Lens' GoogleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults [GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation]
gcvvsvarObjectAnnotations
  = lens _gcvvsvarObjectAnnotations
      (\ s a -> s{_gcvvsvarObjectAnnotations = a})
      . _Default
      . _Coerce

-- | Explicit content annotation results.
gcvvsvarExplicitAnnotation :: Lens' GoogleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults (Maybe GoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation)
gcvvsvarExplicitAnnotation
  = lens _gcvvsvarExplicitAnnotation
      (\ s a -> s{_gcvvsvarExplicitAnnotation = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1StreamingVideoAnnotationResults"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults'
                   <$>
                   (o .:? "shotAnnotations" .!= mempty) <*>
                     (o .:? "labelAnnotations" .!= mempty)
                     <*> (o .:? "frameTimestamp")
                     <*> (o .:? "objectAnnotations" .!= mempty)
                     <*> (o .:? "explicitAnnotation"))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults'{..}
          = object
              (catMaybes
                 [("shotAnnotations" .=) <$> _gcvvsvarShotAnnotations,
                  ("labelAnnotations" .=) <$>
                    _gcvvsvarLabelAnnotations,
                  ("frameTimestamp" .=) <$> _gcvvsvarFrameTimestamp,
                  ("objectAnnotations" .=) <$>
                    _gcvvsvarObjectAnnotations,
                  ("explicitAnnotation" .=) <$>
                    _gcvvsvarExplicitAnnotation])

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
    { _gcvvwiStartTime :: !(Maybe GDuration)
    , _gcvvwiConfidence :: !(Maybe (Textual Double))
    , _gcvvwiEndTime :: !(Maybe GDuration)
    , _gcvvwiWord :: !(Maybe Text)
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
    { _gcvvecfTimeOffSet :: !(Maybe GDuration)
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

-- | Config for OBJECT_TRACKING.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_ObjectTrackingConfig' smart constructor.
newtype GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingConfig =
  GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingConfig'
    { _gcvvotcModel :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvotcModel'
googleCloudVideointelligenceV1p3beta1_ObjectTrackingConfig
    :: GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingConfig
googleCloudVideointelligenceV1p3beta1_ObjectTrackingConfig =
  GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingConfig'
    {_gcvvotcModel = Nothing}


-- | Model to use for object tracking. Supported values: \"builtin\/stable\"
-- (the default if unset) and \"builtin\/latest\".
gcvvotcModel :: Lens' GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingConfig (Maybe Text)
gcvvotcModel
  = lens _gcvvotcModel (\ s a -> s{_gcvvotcModel = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingConfig
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1ObjectTrackingConfig"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingConfig'
                   <$> (o .:? "model"))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingConfig
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingConfig'{..}
          = object (catMaybes [("model" .=) <$> _gcvvotcModel])

-- | Alternative hypotheses (a.k.a. n-best list).
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative =
  GoogleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative'
    { _gConfidence :: !(Maybe (Textual Double))
    , _gWords :: !(Maybe [GoogleCloudVideointelligenceV1p3beta1_WordInfo])
    , _gTranscript :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gConfidence'
--
-- * 'gWords'
--
-- * 'gTranscript'
googleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative
    :: GoogleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative
googleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative =
  GoogleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative'
    {_gConfidence = Nothing, _gWords = Nothing, _gTranscript = Nothing}


-- | Output only. The confidence estimate between 0.0 and 1.0. A higher
-- number indicates an estimated greater likelihood that the recognized
-- words are correct. This field is set only for the top alternative. This
-- field is not guaranteed to be accurate and users should not rely on it
-- to be always provided. The default of 0.0 is a sentinel value indicating
-- \`confidence\` was not set.
gConfidence :: Lens' GoogleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative (Maybe Double)
gConfidence
  = lens _gConfidence (\ s a -> s{_gConfidence = a}) .
      mapping _Coerce

-- | Output only. A list of word-specific information for each recognized
-- word. Note: When \`enable_speaker_diarization\` is set to true, you will
-- see all the words from the beginning of the audio.
gWords :: Lens' GoogleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative [GoogleCloudVideointelligenceV1p3beta1_WordInfo]
gWords
  = lens _gWords (\ s a -> s{_gWords = a}) . _Default .
      _Coerce

-- | Transcript text representing the words that the user spoke.
gTranscript :: Lens' GoogleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative (Maybe Text)
gTranscript
  = lens _gTranscript (\ s a -> s{_gTranscript = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative'
                   <$>
                   (o .:? "confidence") <*> (o .:? "words" .!= mempty)
                     <*> (o .:? "transcript"))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative'{..}
          = object
              (catMaybes
                 [("confidence" .=) <$> _gConfidence,
                  ("words" .=) <$> _gWords,
                  ("transcript" .=) <$> _gTranscript])

-- | Video frame level annotation results for text annotation (OCR). Contains
-- information regarding timestamp and bounding box locations for the
-- frames containing detected OCR text snippets.
--
-- /See:/ 'googleCloudVideointelligenceV1_TextFrame' smart constructor.
data GoogleCloudVideointelligenceV1_TextFrame =
  GoogleCloudVideointelligenceV1_TextFrame'
    { _gRotatedBoundingBox :: !(Maybe GoogleCloudVideointelligenceV1_NormalizedBoundingPoly)
    , _gTimeOffSet :: !(Maybe GDuration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1_TextFrame' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gRotatedBoundingBox'
--
-- * 'gTimeOffSet'
googleCloudVideointelligenceV1_TextFrame
    :: GoogleCloudVideointelligenceV1_TextFrame
googleCloudVideointelligenceV1_TextFrame =
  GoogleCloudVideointelligenceV1_TextFrame'
    {_gRotatedBoundingBox = Nothing, _gTimeOffSet = Nothing}


-- | Bounding polygon of the detected text for this frame.
gRotatedBoundingBox :: Lens' GoogleCloudVideointelligenceV1_TextFrame (Maybe GoogleCloudVideointelligenceV1_NormalizedBoundingPoly)
gRotatedBoundingBox
  = lens _gRotatedBoundingBox
      (\ s a -> s{_gRotatedBoundingBox = a})

-- | Timestamp of this frame.
gTimeOffSet :: Lens' GoogleCloudVideointelligenceV1_TextFrame (Maybe Scientific)
gTimeOffSet
  = lens _gTimeOffSet (\ s a -> s{_gTimeOffSet = a}) .
      mapping _GDuration

instance FromJSON
           GoogleCloudVideointelligenceV1_TextFrame
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1TextFrame"
              (\ o ->
                 GoogleCloudVideointelligenceV1_TextFrame' <$>
                   (o .:? "rotatedBoundingBox") <*>
                     (o .:? "timeOffset"))

instance ToJSON
           GoogleCloudVideointelligenceV1_TextFrame
         where
        toJSON GoogleCloudVideointelligenceV1_TextFrame'{..}
          = object
              (catMaybes
                 [("rotatedBoundingBox" .=) <$> _gRotatedBoundingBox,
                  ("timeOffset" .=) <$> _gTimeOffSet])

-- | Word-specific information for recognized words. Word information is only
-- included in the response when certain request parameters are set, such
-- as \`enable_word_time_offsets\`.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_WordInfo' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_WordInfo =
  GoogleCloudVideointelligenceV1p3beta1_WordInfo'
    { _gooStartTime :: !(Maybe GDuration)
    , _gooConfidence :: !(Maybe (Textual Double))
    , _gooEndTime :: !(Maybe GDuration)
    , _gooWord :: !(Maybe Text)
    , _gooSpeakerTag :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_WordInfo' with the minimum fields required to make a request.
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
googleCloudVideointelligenceV1p3beta1_WordInfo
    :: GoogleCloudVideointelligenceV1p3beta1_WordInfo
googleCloudVideointelligenceV1p3beta1_WordInfo =
  GoogleCloudVideointelligenceV1p3beta1_WordInfo'
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
gooStartTime :: Lens' GoogleCloudVideointelligenceV1p3beta1_WordInfo (Maybe Scientific)
gooStartTime
  = lens _gooStartTime (\ s a -> s{_gooStartTime = a})
      . mapping _GDuration

-- | Output only. The confidence estimate between 0.0 and 1.0. A higher
-- number indicates an estimated greater likelihood that the recognized
-- words are correct. This field is set only for the top alternative. This
-- field is not guaranteed to be accurate and users should not rely on it
-- to be always provided. The default of 0.0 is a sentinel value indicating
-- \`confidence\` was not set.
gooConfidence :: Lens' GoogleCloudVideointelligenceV1p3beta1_WordInfo (Maybe Double)
gooConfidence
  = lens _gooConfidence
      (\ s a -> s{_gooConfidence = a})
      . mapping _Coerce

-- | Time offset relative to the beginning of the audio, and corresponding to
-- the end of the spoken word. This field is only set if
-- \`enable_word_time_offsets=true\` and only in the top hypothesis. This
-- is an experimental feature and the accuracy of the time offset can vary.
gooEndTime :: Lens' GoogleCloudVideointelligenceV1p3beta1_WordInfo (Maybe Scientific)
gooEndTime
  = lens _gooEndTime (\ s a -> s{_gooEndTime = a}) .
      mapping _GDuration

-- | The word corresponding to this set of information.
gooWord :: Lens' GoogleCloudVideointelligenceV1p3beta1_WordInfo (Maybe Text)
gooWord = lens _gooWord (\ s a -> s{_gooWord = a})

-- | Output only. A distinct integer value is assigned for every speaker
-- within the audio. This field specifies which one of those speakers was
-- detected to have spoken this word. Value ranges from 1 up to
-- diarization_speaker_count, and is only set if speaker diarization is
-- enabled.
gooSpeakerTag :: Lens' GoogleCloudVideointelligenceV1p3beta1_WordInfo (Maybe Int32)
gooSpeakerTag
  = lens _gooSpeakerTag
      (\ s a -> s{_gooSpeakerTag = a})
      . mapping _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_WordInfo
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1WordInfo"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_WordInfo' <$>
                   (o .:? "startTime") <*> (o .:? "confidence") <*>
                     (o .:? "endTime")
                     <*> (o .:? "word")
                     <*> (o .:? "speakerTag"))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_WordInfo
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_WordInfo'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _gooStartTime,
                  ("confidence" .=) <$> _gooConfidence,
                  ("endTime" .=) <$> _gooEndTime,
                  ("word" .=) <$> _gooWord,
                  ("speakerTag" .=) <$> _gooSpeakerTag])

-- | Config for LABEL_DETECTION.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_LabelDetectionConfig' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig =
  GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig'
    { _gcvvldcLabelDetectionMode :: !(Maybe GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfigLabelDetectionMode)
    , _gcvvldcStationaryCamera :: !(Maybe Bool)
    , _gcvvldcModel :: !(Maybe Text)
    , _gcvvldcVideoConfidenceThreshold :: !(Maybe (Textual Double))
    , _gcvvldcFrameConfidenceThreshold :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvldcLabelDetectionMode'
--
-- * 'gcvvldcStationaryCamera'
--
-- * 'gcvvldcModel'
--
-- * 'gcvvldcVideoConfidenceThreshold'
--
-- * 'gcvvldcFrameConfidenceThreshold'
googleCloudVideointelligenceV1p3beta1_LabelDetectionConfig
    :: GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig
googleCloudVideointelligenceV1p3beta1_LabelDetectionConfig =
  GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig'
    { _gcvvldcLabelDetectionMode = Nothing
    , _gcvvldcStationaryCamera = Nothing
    , _gcvvldcModel = Nothing
    , _gcvvldcVideoConfidenceThreshold = Nothing
    , _gcvvldcFrameConfidenceThreshold = Nothing
    }


-- | What labels should be detected with LABEL_DETECTION, in addition to
-- video-level labels or segment-level labels. If unspecified, defaults to
-- \`SHOT_MODE\`.
gcvvldcLabelDetectionMode :: Lens' GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig (Maybe GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfigLabelDetectionMode)
gcvvldcLabelDetectionMode
  = lens _gcvvldcLabelDetectionMode
      (\ s a -> s{_gcvvldcLabelDetectionMode = a})

-- | Whether the video has been shot from a stationary (i.e., non-moving)
-- camera. When set to true, might improve detection accuracy for moving
-- objects. Should be used with \`SHOT_AND_FRAME_MODE\` enabled.
gcvvldcStationaryCamera :: Lens' GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig (Maybe Bool)
gcvvldcStationaryCamera
  = lens _gcvvldcStationaryCamera
      (\ s a -> s{_gcvvldcStationaryCamera = a})

-- | Model to use for label detection. Supported values: \"builtin\/stable\"
-- (the default if unset) and \"builtin\/latest\".
gcvvldcModel :: Lens' GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig (Maybe Text)
gcvvldcModel
  = lens _gcvvldcModel (\ s a -> s{_gcvvldcModel = a})

-- | The confidence threshold we perform filtering on the labels from
-- video-level and shot-level detections. If not set, it\'s set to 0.3 by
-- default. The valid range for this threshold is [0.1, 0.9]. Any value set
-- outside of this range will be clipped. Note: For best results, follow
-- the default threshold. We will update the default threshold everytime
-- when we release a new model.
gcvvldcVideoConfidenceThreshold :: Lens' GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig (Maybe Double)
gcvvldcVideoConfidenceThreshold
  = lens _gcvvldcVideoConfidenceThreshold
      (\ s a -> s{_gcvvldcVideoConfidenceThreshold = a})
      . mapping _Coerce

-- | The confidence threshold we perform filtering on the labels from
-- frame-level detection. If not set, it is set to 0.4 by default. The
-- valid range for this threshold is [0.1, 0.9]. Any value set outside of
-- this range will be clipped. Note: For best results, follow the default
-- threshold. We will update the default threshold everytime when we
-- release a new model.
gcvvldcFrameConfidenceThreshold :: Lens' GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig (Maybe Double)
gcvvldcFrameConfidenceThreshold
  = lens _gcvvldcFrameConfidenceThreshold
      (\ s a -> s{_gcvvldcFrameConfidenceThreshold = a})
      . mapping _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1LabelDetectionConfig"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig'
                   <$>
                   (o .:? "labelDetectionMode") <*>
                     (o .:? "stationaryCamera")
                     <*> (o .:? "model")
                     <*> (o .:? "videoConfidenceThreshold")
                     <*> (o .:? "frameConfidenceThreshold"))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig'{..}
          = object
              (catMaybes
                 [("labelDetectionMode" .=) <$>
                    _gcvvldcLabelDetectionMode,
                  ("stationaryCamera" .=) <$> _gcvvldcStationaryCamera,
                  ("model" .=) <$> _gcvvldcModel,
                  ("videoConfidenceThreshold" .=) <$>
                    _gcvvldcVideoConfidenceThreshold,
                  ("frameConfidenceThreshold" .=) <$>
                    _gcvvldcFrameConfidenceThreshold])

-- | Detected entity from video analysis.
--
-- /See:/ 'googleCloudVideointelligenceV1beta2_Entity' smart constructor.
data GoogleCloudVideointelligenceV1beta2_Entity =
  GoogleCloudVideointelligenceV1beta2_Entity'
    { _gcvveLanguageCode :: !(Maybe Text)
    , _gcvveEntityId :: !(Maybe Text)
    , _gcvveDescription :: !(Maybe Text)
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

-- | Textual description, e.g., \`Fixed-gear bicycle\`.
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

-- | Annotation corresponding to one detected, tracked and recognized logo
-- class.
--
-- /See:/ 'googleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation =
  GoogleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation'
    { _gcvvlraTracks :: !(Maybe [GoogleCloudVideointelligenceV1beta2_Track])
    , _gcvvlraSegments :: !(Maybe [GoogleCloudVideointelligenceV1beta2_VideoSegment])
    , _gcvvlraEntity :: !(Maybe GoogleCloudVideointelligenceV1beta2_Entity)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvlraTracks'
--
-- * 'gcvvlraSegments'
--
-- * 'gcvvlraEntity'
googleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation
    :: GoogleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation
googleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation =
  GoogleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation'
    { _gcvvlraTracks = Nothing
    , _gcvvlraSegments = Nothing
    , _gcvvlraEntity = Nothing
    }


-- | All logo tracks where the recognized logo appears. Each track
-- corresponds to one logo instance appearing in consecutive frames.
gcvvlraTracks :: Lens' GoogleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation [GoogleCloudVideointelligenceV1beta2_Track]
gcvvlraTracks
  = lens _gcvvlraTracks
      (\ s a -> s{_gcvvlraTracks = a})
      . _Default
      . _Coerce

-- | All video segments where the recognized logo appears. There might be
-- multiple instances of the same logo class appearing in one VideoSegment.
gcvvlraSegments :: Lens' GoogleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation [GoogleCloudVideointelligenceV1beta2_VideoSegment]
gcvvlraSegments
  = lens _gcvvlraSegments
      (\ s a -> s{_gcvvlraSegments = a})
      . _Default
      . _Coerce

-- | Entity category information to specify the logo class that all the logo
-- tracks within this LogoRecognitionAnnotation are recognized as.
gcvvlraEntity :: Lens' GoogleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation (Maybe GoogleCloudVideointelligenceV1beta2_Entity)
gcvvlraEntity
  = lens _gcvvlraEntity
      (\ s a -> s{_gcvvlraEntity = a})

instance FromJSON
           GoogleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1beta2LogoRecognitionAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation'
                   <$>
                   (o .:? "tracks" .!= mempty) <*>
                     (o .:? "segments" .!= mempty)
                     <*> (o .:? "entity"))

instance ToJSON
           GoogleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation'{..}
          = object
              (catMaybes
                 [("tracks" .=) <$> _gcvvlraTracks,
                  ("segments" .=) <$> _gcvvlraSegments,
                  ("entity" .=) <$> _gcvvlraEntity])

-- | The recognized celebrity with confidence score.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_RecognizedCelebrity' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_RecognizedCelebrity =
  GoogleCloudVideointelligenceV1p3beta1_RecognizedCelebrity'
    { _gcvvrcCelebrity :: !(Maybe GoogleCloudVideointelligenceV1p3beta1_Celebrity)
    , _gcvvrcConfidence :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_RecognizedCelebrity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvrcCelebrity'
--
-- * 'gcvvrcConfidence'
googleCloudVideointelligenceV1p3beta1_RecognizedCelebrity
    :: GoogleCloudVideointelligenceV1p3beta1_RecognizedCelebrity
googleCloudVideointelligenceV1p3beta1_RecognizedCelebrity =
  GoogleCloudVideointelligenceV1p3beta1_RecognizedCelebrity'
    {_gcvvrcCelebrity = Nothing, _gcvvrcConfidence = Nothing}


-- | The recognized celebrity.
gcvvrcCelebrity :: Lens' GoogleCloudVideointelligenceV1p3beta1_RecognizedCelebrity (Maybe GoogleCloudVideointelligenceV1p3beta1_Celebrity)
gcvvrcCelebrity
  = lens _gcvvrcCelebrity
      (\ s a -> s{_gcvvrcCelebrity = a})

-- | Recognition confidence. Range [0, 1].
gcvvrcConfidence :: Lens' GoogleCloudVideointelligenceV1p3beta1_RecognizedCelebrity (Maybe Double)
gcvvrcConfidence
  = lens _gcvvrcConfidence
      (\ s a -> s{_gcvvrcConfidence = a})
      . mapping _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_RecognizedCelebrity
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1RecognizedCelebrity"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_RecognizedCelebrity'
                   <$> (o .:? "celebrity") <*> (o .:? "confidence"))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_RecognizedCelebrity
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_RecognizedCelebrity'{..}
          = object
              (catMaybes
                 [("celebrity" .=) <$> _gcvvrcCelebrity,
                  ("confidence" .=) <$> _gcvvrcConfidence])

-- | Annotation progress for a single video.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress =
  GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress'
    { _gcvvvapFeature :: !(Maybe GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgressFeature)
    , _gcvvvapStartTime :: !(Maybe DateTime')
    , _gcvvvapInputURI :: !(Maybe Text)
    , _gcvvvapProgressPercent :: !(Maybe (Textual Int32))
    , _gcvvvapUpdateTime :: !(Maybe DateTime')
    , _gcvvvapSegment :: !(Maybe GoogleCloudVideointelligenceV1p3beta1_VideoSegment)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvvapFeature'
--
-- * 'gcvvvapStartTime'
--
-- * 'gcvvvapInputURI'
--
-- * 'gcvvvapProgressPercent'
--
-- * 'gcvvvapUpdateTime'
--
-- * 'gcvvvapSegment'
googleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress
    :: GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress
googleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress =
  GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress'
    { _gcvvvapFeature = Nothing
    , _gcvvvapStartTime = Nothing
    , _gcvvvapInputURI = Nothing
    , _gcvvvapProgressPercent = Nothing
    , _gcvvvapUpdateTime = Nothing
    , _gcvvvapSegment = Nothing
    }


-- | Specifies which feature is being tracked if the request contains more
-- than one feature.
gcvvvapFeature :: Lens' GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress (Maybe GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgressFeature)
gcvvvapFeature
  = lens _gcvvvapFeature
      (\ s a -> s{_gcvvvapFeature = a})

-- | Time when the request was received.
gcvvvapStartTime :: Lens' GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress (Maybe UTCTime)
gcvvvapStartTime
  = lens _gcvvvapStartTime
      (\ s a -> s{_gcvvvapStartTime = a})
      . mapping _DateTime

-- | Video file location in [Cloud
-- Storage](https:\/\/cloud.google.com\/storage\/).
gcvvvapInputURI :: Lens' GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress (Maybe Text)
gcvvvapInputURI
  = lens _gcvvvapInputURI
      (\ s a -> s{_gcvvvapInputURI = a})

-- | Approximate percentage processed thus far. Guaranteed to be 100 when
-- fully processed.
gcvvvapProgressPercent :: Lens' GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress (Maybe Int32)
gcvvvapProgressPercent
  = lens _gcvvvapProgressPercent
      (\ s a -> s{_gcvvvapProgressPercent = a})
      . mapping _Coerce

-- | Time of the most recent update.
gcvvvapUpdateTime :: Lens' GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress (Maybe UTCTime)
gcvvvapUpdateTime
  = lens _gcvvvapUpdateTime
      (\ s a -> s{_gcvvvapUpdateTime = a})
      . mapping _DateTime

-- | Specifies which segment is being tracked if the request contains more
-- than one segment.
gcvvvapSegment :: Lens' GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress (Maybe GoogleCloudVideointelligenceV1p3beta1_VideoSegment)
gcvvvapSegment
  = lens _gcvvvapSegment
      (\ s a -> s{_gcvvvapSegment = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress'
                   <$>
                   (o .:? "feature") <*> (o .:? "startTime") <*>
                     (o .:? "inputUri")
                     <*> (o .:? "progressPercent")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "segment"))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress'{..}
          = object
              (catMaybes
                 [("feature" .=) <$> _gcvvvapFeature,
                  ("startTime" .=) <$> _gcvvvapStartTime,
                  ("inputUri" .=) <$> _gcvvvapInputURI,
                  ("progressPercent" .=) <$> _gcvvvapProgressPercent,
                  ("updateTime" .=) <$> _gcvvvapUpdateTime,
                  ("segment" .=) <$> _gcvvvapSegment])

-- | Normalized bounding polygon for text (that might not be aligned with
-- axis). Contains list of the corner points in clockwise order starting
-- from top-left corner. For example, for a rectangular bounding box: When
-- the text is horizontal it might look like: 0----1 | | 3----2 When it\'s
-- clockwise rotated 180 degrees around the top-left corner it becomes:
-- 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3). Note
-- that values can be less than 0, or greater than 1 due to trignometric
-- calculations for location of the box.
--
-- /See:/ 'googleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly' smart constructor.
newtype GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly =
  GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly'
    { _gcvvnbpVertices :: Maybe [GoogleCloudVideointelligenceV1p1beta1_NormalizedVertex]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvnbpVertices'
googleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly
    :: GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly
googleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly =
  GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly'
    {_gcvvnbpVertices = Nothing}


-- | Normalized vertices of the bounding polygon.
gcvvnbpVertices :: Lens' GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly [GoogleCloudVideointelligenceV1p1beta1_NormalizedVertex]
gcvvnbpVertices
  = lens _gcvvnbpVertices
      (\ s a -> s{_gcvvnbpVertices = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p1beta1NormalizedBoundingPoly"
              (\ o ->
                 GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly'
                   <$> (o .:? "vertices" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly
         where
        toJSON
          GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly'{..}
          = object
              (catMaybes [("vertices" .=) <$> _gcvvnbpVertices])

-- | Celebrity recognition annotation per video.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation =
  GoogleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation'
    { _gcvvcraCelebrityTracks :: !(Maybe [GoogleCloudVideointelligenceV1p3beta1_CelebrityTrack])
    , _gcvvcraVersion :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvcraCelebrityTracks'
--
-- * 'gcvvcraVersion'
googleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation
    :: GoogleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation
googleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation =
  GoogleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation'
    {_gcvvcraCelebrityTracks = Nothing, _gcvvcraVersion = Nothing}


-- | The tracks detected from the input video, including recognized
-- celebrities and other detected faces in the video.
gcvvcraCelebrityTracks :: Lens' GoogleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation [GoogleCloudVideointelligenceV1p3beta1_CelebrityTrack]
gcvvcraCelebrityTracks
  = lens _gcvvcraCelebrityTracks
      (\ s a -> s{_gcvvcraCelebrityTracks = a})
      . _Default
      . _Coerce

-- | Feature version.
gcvvcraVersion :: Lens' GoogleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation (Maybe Text)
gcvvcraVersion
  = lens _gcvvcraVersion
      (\ s a -> s{_gcvvcraVersion = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1CelebrityRecognitionAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation'
                   <$>
                   (o .:? "celebrityTracks" .!= mempty) <*>
                     (o .:? "version"))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation'{..}
          = object
              (catMaybes
                 [("celebrityTracks" .=) <$> _gcvvcraCelebrityTracks,
                  ("version" .=) <$> _gcvvcraVersion])

-- | Annotations related to one detected OCR text snippet. This will contain
-- the corresponding text, confidence value, and frame level information
-- for each detection.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_TextAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_TextAnnotation =
  GoogleCloudVideointelligenceV1p2beta1_TextAnnotation'
    { _gcvvtaText :: !(Maybe Text)
    , _gcvvtaVersion :: !(Maybe Text)
    , _gcvvtaSegments :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_TextSegment])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_TextAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvtaText'
--
-- * 'gcvvtaVersion'
--
-- * 'gcvvtaSegments'
googleCloudVideointelligenceV1p2beta1_TextAnnotation
    :: GoogleCloudVideointelligenceV1p2beta1_TextAnnotation
googleCloudVideointelligenceV1p2beta1_TextAnnotation =
  GoogleCloudVideointelligenceV1p2beta1_TextAnnotation'
    {_gcvvtaText = Nothing, _gcvvtaVersion = Nothing, _gcvvtaSegments = Nothing}


-- | The detected text.
gcvvtaText :: Lens' GoogleCloudVideointelligenceV1p2beta1_TextAnnotation (Maybe Text)
gcvvtaText
  = lens _gcvvtaText (\ s a -> s{_gcvvtaText = a})

-- | Feature version.
gcvvtaVersion :: Lens' GoogleCloudVideointelligenceV1p2beta1_TextAnnotation (Maybe Text)
gcvvtaVersion
  = lens _gcvvtaVersion
      (\ s a -> s{_gcvvtaVersion = a})

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
                   <$>
                   (o .:? "text") <*> (o .:? "version") <*>
                     (o .:? "segments" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1p2beta1_TextAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1p2beta1_TextAnnotation'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _gcvvtaText,
                  ("version" .=) <$> _gcvvtaVersion,
                  ("segments" .=) <$> _gcvvtaSegments])

-- | Celebrity definition.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_Celebrity' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_Celebrity =
  GoogleCloudVideointelligenceV1p3beta1_Celebrity'
    { _gcvvcName :: !(Maybe Text)
    , _gcvvcDisplayName :: !(Maybe Text)
    , _gcvvcDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_Celebrity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvcName'
--
-- * 'gcvvcDisplayName'
--
-- * 'gcvvcDescription'
googleCloudVideointelligenceV1p3beta1_Celebrity
    :: GoogleCloudVideointelligenceV1p3beta1_Celebrity
googleCloudVideointelligenceV1p3beta1_Celebrity =
  GoogleCloudVideointelligenceV1p3beta1_Celebrity'
    { _gcvvcName = Nothing
    , _gcvvcDisplayName = Nothing
    , _gcvvcDescription = Nothing
    }


-- | The resource name of the celebrity. Have the format
-- \`video-intelligence\/kg-mid\` indicates a celebrity from preloaded
-- gallery. kg-mid is the id in Google knowledge graph, which is unique for
-- the celebrity.
gcvvcName :: Lens' GoogleCloudVideointelligenceV1p3beta1_Celebrity (Maybe Text)
gcvvcName
  = lens _gcvvcName (\ s a -> s{_gcvvcName = a})

-- | The celebrity name.
gcvvcDisplayName :: Lens' GoogleCloudVideointelligenceV1p3beta1_Celebrity (Maybe Text)
gcvvcDisplayName
  = lens _gcvvcDisplayName
      (\ s a -> s{_gcvvcDisplayName = a})

-- | Textual description of additional information about the celebrity, if
-- applicable.
gcvvcDescription :: Lens' GoogleCloudVideointelligenceV1p3beta1_Celebrity (Maybe Text)
gcvvcDescription
  = lens _gcvvcDescription
      (\ s a -> s{_gcvvcDescription = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_Celebrity
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1Celebrity"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_Celebrity' <$>
                   (o .:? "name") <*> (o .:? "displayName") <*>
                     (o .:? "description"))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_Celebrity
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_Celebrity'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _gcvvcName,
                  ("displayName" .=) <$> _gcvvcDisplayName,
                  ("description" .=) <$> _gcvvcDescription])

-- | Video segment.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_VideoSegment' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_VideoSegment =
  GoogleCloudVideointelligenceV1p2beta1_VideoSegment'
    { _gcvvvsStartTimeOffSet :: !(Maybe GDuration)
    , _gcvvvsEndTimeOffSet :: !(Maybe GDuration)
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

-- | Video segment level annotation results for face detection.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_FaceSegment' smart constructor.
newtype GoogleCloudVideointelligenceV1p2beta1_FaceSegment =
  GoogleCloudVideointelligenceV1p2beta1_FaceSegment'
    { _gSegment :: Maybe GoogleCloudVideointelligenceV1p2beta1_VideoSegment
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_FaceSegment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gSegment'
googleCloudVideointelligenceV1p2beta1_FaceSegment
    :: GoogleCloudVideointelligenceV1p2beta1_FaceSegment
googleCloudVideointelligenceV1p2beta1_FaceSegment =
  GoogleCloudVideointelligenceV1p2beta1_FaceSegment' {_gSegment = Nothing}


-- | Video segment where a face was detected.
gSegment :: Lens' GoogleCloudVideointelligenceV1p2beta1_FaceSegment (Maybe GoogleCloudVideointelligenceV1p2beta1_VideoSegment)
gSegment = lens _gSegment (\ s a -> s{_gSegment = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p2beta1_FaceSegment
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p2beta1FaceSegment"
              (\ o ->
                 GoogleCloudVideointelligenceV1p2beta1_FaceSegment'
                   <$> (o .:? "segment"))

instance ToJSON
           GoogleCloudVideointelligenceV1p2beta1_FaceSegment
         where
        toJSON
          GoogleCloudVideointelligenceV1p2beta1_FaceSegment'{..}
          = object (catMaybes [("segment" .=) <$> _gSegment])

-- | A vertex represents a 2D point in the image. NOTE: the normalized vertex
-- coordinates are relative to the original image and range from 0 to 1.
--
-- /See:/ 'googleCloudVideointelligenceV1p1beta1_NormalizedVertex' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_NormalizedVertex =
  GoogleCloudVideointelligenceV1p1beta1_NormalizedVertex'
    { _gcvvnvX :: !(Maybe (Textual Double))
    , _gcvvnvY :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_NormalizedVertex' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvnvX'
--
-- * 'gcvvnvY'
googleCloudVideointelligenceV1p1beta1_NormalizedVertex
    :: GoogleCloudVideointelligenceV1p1beta1_NormalizedVertex
googleCloudVideointelligenceV1p1beta1_NormalizedVertex =
  GoogleCloudVideointelligenceV1p1beta1_NormalizedVertex'
    {_gcvvnvX = Nothing, _gcvvnvY = Nothing}


-- | X coordinate.
gcvvnvX :: Lens' GoogleCloudVideointelligenceV1p1beta1_NormalizedVertex (Maybe Double)
gcvvnvX
  = lens _gcvvnvX (\ s a -> s{_gcvvnvX = a}) .
      mapping _Coerce

-- | Y coordinate.
gcvvnvY :: Lens' GoogleCloudVideointelligenceV1p1beta1_NormalizedVertex (Maybe Double)
gcvvnvY
  = lens _gcvvnvY (\ s a -> s{_gcvvnvY = a}) .
      mapping _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1p1beta1_NormalizedVertex
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p1beta1NormalizedVertex"
              (\ o ->
                 GoogleCloudVideointelligenceV1p1beta1_NormalizedVertex'
                   <$> (o .:? "x") <*> (o .:? "y"))

instance ToJSON
           GoogleCloudVideointelligenceV1p1beta1_NormalizedVertex
         where
        toJSON
          GoogleCloudVideointelligenceV1p1beta1_NormalizedVertex'{..}
          = object
              (catMaybes
                 [("x" .=) <$> _gcvvnvX, ("y" .=) <$> _gcvvnvY])

-- | Annotation progress for a single video.
--
-- /See:/ 'googleCloudVideointelligenceV1_VideoAnnotationProgress' smart constructor.
data GoogleCloudVideointelligenceV1_VideoAnnotationProgress =
  GoogleCloudVideointelligenceV1_VideoAnnotationProgress'
    { _gcvvvapsFeature :: !(Maybe GoogleCloudVideointelligenceV1_VideoAnnotationProgressFeature)
    , _gcvvvapsStartTime :: !(Maybe DateTime')
    , _gcvvvapsInputURI :: !(Maybe Text)
    , _gcvvvapsProgressPercent :: !(Maybe (Textual Int32))
    , _gcvvvapsUpdateTime :: !(Maybe DateTime')
    , _gcvvvapsSegment :: !(Maybe GoogleCloudVideointelligenceV1_VideoSegment)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1_VideoAnnotationProgress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvvapsFeature'
--
-- * 'gcvvvapsStartTime'
--
-- * 'gcvvvapsInputURI'
--
-- * 'gcvvvapsProgressPercent'
--
-- * 'gcvvvapsUpdateTime'
--
-- * 'gcvvvapsSegment'
googleCloudVideointelligenceV1_VideoAnnotationProgress
    :: GoogleCloudVideointelligenceV1_VideoAnnotationProgress
googleCloudVideointelligenceV1_VideoAnnotationProgress =
  GoogleCloudVideointelligenceV1_VideoAnnotationProgress'
    { _gcvvvapsFeature = Nothing
    , _gcvvvapsStartTime = Nothing
    , _gcvvvapsInputURI = Nothing
    , _gcvvvapsProgressPercent = Nothing
    , _gcvvvapsUpdateTime = Nothing
    , _gcvvvapsSegment = Nothing
    }


-- | Specifies which feature is being tracked if the request contains more
-- than one feature.
gcvvvapsFeature :: Lens' GoogleCloudVideointelligenceV1_VideoAnnotationProgress (Maybe GoogleCloudVideointelligenceV1_VideoAnnotationProgressFeature)
gcvvvapsFeature
  = lens _gcvvvapsFeature
      (\ s a -> s{_gcvvvapsFeature = a})

-- | Time when the request was received.
gcvvvapsStartTime :: Lens' GoogleCloudVideointelligenceV1_VideoAnnotationProgress (Maybe UTCTime)
gcvvvapsStartTime
  = lens _gcvvvapsStartTime
      (\ s a -> s{_gcvvvapsStartTime = a})
      . mapping _DateTime

-- | Video file location in [Cloud
-- Storage](https:\/\/cloud.google.com\/storage\/).
gcvvvapsInputURI :: Lens' GoogleCloudVideointelligenceV1_VideoAnnotationProgress (Maybe Text)
gcvvvapsInputURI
  = lens _gcvvvapsInputURI
      (\ s a -> s{_gcvvvapsInputURI = a})

-- | Approximate percentage processed thus far. Guaranteed to be 100 when
-- fully processed.
gcvvvapsProgressPercent :: Lens' GoogleCloudVideointelligenceV1_VideoAnnotationProgress (Maybe Int32)
gcvvvapsProgressPercent
  = lens _gcvvvapsProgressPercent
      (\ s a -> s{_gcvvvapsProgressPercent = a})
      . mapping _Coerce

-- | Time of the most recent update.
gcvvvapsUpdateTime :: Lens' GoogleCloudVideointelligenceV1_VideoAnnotationProgress (Maybe UTCTime)
gcvvvapsUpdateTime
  = lens _gcvvvapsUpdateTime
      (\ s a -> s{_gcvvvapsUpdateTime = a})
      . mapping _DateTime

-- | Specifies which segment is being tracked if the request contains more
-- than one segment.
gcvvvapsSegment :: Lens' GoogleCloudVideointelligenceV1_VideoAnnotationProgress (Maybe GoogleCloudVideointelligenceV1_VideoSegment)
gcvvvapsSegment
  = lens _gcvvvapsSegment
      (\ s a -> s{_gcvvvapsSegment = a})

instance FromJSON
           GoogleCloudVideointelligenceV1_VideoAnnotationProgress
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1VideoAnnotationProgress"
              (\ o ->
                 GoogleCloudVideointelligenceV1_VideoAnnotationProgress'
                   <$>
                   (o .:? "feature") <*> (o .:? "startTime") <*>
                     (o .:? "inputUri")
                     <*> (o .:? "progressPercent")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "segment"))

instance ToJSON
           GoogleCloudVideointelligenceV1_VideoAnnotationProgress
         where
        toJSON
          GoogleCloudVideointelligenceV1_VideoAnnotationProgress'{..}
          = object
              (catMaybes
                 [("feature" .=) <$> _gcvvvapsFeature,
                  ("startTime" .=) <$> _gcvvvapsStartTime,
                  ("inputUri" .=) <$> _gcvvvapsInputURI,
                  ("progressPercent" .=) <$> _gcvvvapsProgressPercent,
                  ("updateTime" .=) <$> _gcvvvapsUpdateTime,
                  ("segment" .=) <$> _gcvvvapsSegment])

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

-- | Deprecated. No effect.
--
-- /See:/ 'googleCloudVideointelligenceV1beta2_FaceAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1beta2_FaceAnnotation =
  GoogleCloudVideointelligenceV1beta2_FaceAnnotation'
    { _gcvvfaThumbnail :: !(Maybe Bytes)
    , _gcvvfaFrames :: !(Maybe [GoogleCloudVideointelligenceV1beta2_FaceFrame])
    , _gcvvfaSegments :: !(Maybe [GoogleCloudVideointelligenceV1beta2_FaceSegment])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_FaceAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvfaThumbnail'
--
-- * 'gcvvfaFrames'
--
-- * 'gcvvfaSegments'
googleCloudVideointelligenceV1beta2_FaceAnnotation
    :: GoogleCloudVideointelligenceV1beta2_FaceAnnotation
googleCloudVideointelligenceV1beta2_FaceAnnotation =
  GoogleCloudVideointelligenceV1beta2_FaceAnnotation'
    { _gcvvfaThumbnail = Nothing
    , _gcvvfaFrames = Nothing
    , _gcvvfaSegments = Nothing
    }


-- | Thumbnail of a representative face view (in JPEG format).
gcvvfaThumbnail :: Lens' GoogleCloudVideointelligenceV1beta2_FaceAnnotation (Maybe ByteString)
gcvvfaThumbnail
  = lens _gcvvfaThumbnail
      (\ s a -> s{_gcvvfaThumbnail = a})
      . mapping _Bytes

-- | All video frames where a face was detected.
gcvvfaFrames :: Lens' GoogleCloudVideointelligenceV1beta2_FaceAnnotation [GoogleCloudVideointelligenceV1beta2_FaceFrame]
gcvvfaFrames
  = lens _gcvvfaFrames (\ s a -> s{_gcvvfaFrames = a})
      . _Default
      . _Coerce

-- | All video segments where a face was detected.
gcvvfaSegments :: Lens' GoogleCloudVideointelligenceV1beta2_FaceAnnotation [GoogleCloudVideointelligenceV1beta2_FaceSegment]
gcvvfaSegments
  = lens _gcvvfaSegments
      (\ s a -> s{_gcvvfaSegments = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1beta2_FaceAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1beta2FaceAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1beta2_FaceAnnotation'
                   <$>
                   (o .:? "thumbnail") <*> (o .:? "frames" .!= mempty)
                     <*> (o .:? "segments" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1beta2_FaceAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1beta2_FaceAnnotation'{..}
          = object
              (catMaybes
                 [("thumbnail" .=) <$> _gcvvfaThumbnail,
                  ("frames" .=) <$> _gcvvfaFrames,
                  ("segments" .=) <$> _gcvvfaSegments])

-- | Normalized bounding box. The normalized vertex coordinates are relative
-- to the original image. Range: [0, 1].
--
-- /See:/ 'googleCloudVideointelligenceV1_NormalizedBoundingBox' smart constructor.
data GoogleCloudVideointelligenceV1_NormalizedBoundingBox =
  GoogleCloudVideointelligenceV1_NormalizedBoundingBox'
    { _gcvvnbbBottom :: !(Maybe (Textual Double))
    , _gcvvnbbLeft :: !(Maybe (Textual Double))
    , _gcvvnbbRight :: !(Maybe (Textual Double))
    , _gcvvnbbTop :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1_NormalizedBoundingBox' with the minimum fields required to make a request.
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
googleCloudVideointelligenceV1_NormalizedBoundingBox
    :: GoogleCloudVideointelligenceV1_NormalizedBoundingBox
googleCloudVideointelligenceV1_NormalizedBoundingBox =
  GoogleCloudVideointelligenceV1_NormalizedBoundingBox'
    { _gcvvnbbBottom = Nothing
    , _gcvvnbbLeft = Nothing
    , _gcvvnbbRight = Nothing
    , _gcvvnbbTop = Nothing
    }


-- | Bottom Y coordinate.
gcvvnbbBottom :: Lens' GoogleCloudVideointelligenceV1_NormalizedBoundingBox (Maybe Double)
gcvvnbbBottom
  = lens _gcvvnbbBottom
      (\ s a -> s{_gcvvnbbBottom = a})
      . mapping _Coerce

-- | Left X coordinate.
gcvvnbbLeft :: Lens' GoogleCloudVideointelligenceV1_NormalizedBoundingBox (Maybe Double)
gcvvnbbLeft
  = lens _gcvvnbbLeft (\ s a -> s{_gcvvnbbLeft = a}) .
      mapping _Coerce

-- | Right X coordinate.
gcvvnbbRight :: Lens' GoogleCloudVideointelligenceV1_NormalizedBoundingBox (Maybe Double)
gcvvnbbRight
  = lens _gcvvnbbRight (\ s a -> s{_gcvvnbbRight = a})
      . mapping _Coerce

-- | Top Y coordinate.
gcvvnbbTop :: Lens' GoogleCloudVideointelligenceV1_NormalizedBoundingBox (Maybe Double)
gcvvnbbTop
  = lens _gcvvnbbTop (\ s a -> s{_gcvvnbbTop = a}) .
      mapping _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1_NormalizedBoundingBox
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1NormalizedBoundingBox"
              (\ o ->
                 GoogleCloudVideointelligenceV1_NormalizedBoundingBox'
                   <$>
                   (o .:? "bottom") <*> (o .:? "left") <*>
                     (o .:? "right")
                     <*> (o .:? "top"))

instance ToJSON
           GoogleCloudVideointelligenceV1_NormalizedBoundingBox
         where
        toJSON
          GoogleCloudVideointelligenceV1_NormalizedBoundingBox'{..}
          = object
              (catMaybes
                 [("bottom" .=) <$> _gcvvnbbBottom,
                  ("left" .=) <$> _gcvvnbbLeft,
                  ("right" .=) <$> _gcvvnbbRight,
                  ("top" .=) <$> _gcvvnbbTop])

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

-- | Video segment level annotation results for text detection.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_TextSegment' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_TextSegment =
  GoogleCloudVideointelligenceV1p3beta1_TextSegment'
    { _gcvvtsFrames :: !(Maybe [GoogleCloudVideointelligenceV1p3beta1_TextFrame])
    , _gcvvtsConfidence :: !(Maybe (Textual Double))
    , _gcvvtsSegment :: !(Maybe GoogleCloudVideointelligenceV1p3beta1_VideoSegment)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_TextSegment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvtsFrames'
--
-- * 'gcvvtsConfidence'
--
-- * 'gcvvtsSegment'
googleCloudVideointelligenceV1p3beta1_TextSegment
    :: GoogleCloudVideointelligenceV1p3beta1_TextSegment
googleCloudVideointelligenceV1p3beta1_TextSegment =
  GoogleCloudVideointelligenceV1p3beta1_TextSegment'
    { _gcvvtsFrames = Nothing
    , _gcvvtsConfidence = Nothing
    , _gcvvtsSegment = Nothing
    }


-- | Information related to the frames where OCR detected text appears.
gcvvtsFrames :: Lens' GoogleCloudVideointelligenceV1p3beta1_TextSegment [GoogleCloudVideointelligenceV1p3beta1_TextFrame]
gcvvtsFrames
  = lens _gcvvtsFrames (\ s a -> s{_gcvvtsFrames = a})
      . _Default
      . _Coerce

-- | Confidence for the track of detected text. It is calculated as the
-- highest over all frames where OCR detected text appears.
gcvvtsConfidence :: Lens' GoogleCloudVideointelligenceV1p3beta1_TextSegment (Maybe Double)
gcvvtsConfidence
  = lens _gcvvtsConfidence
      (\ s a -> s{_gcvvtsConfidence = a})
      . mapping _Coerce

-- | Video segment where a text snippet was detected.
gcvvtsSegment :: Lens' GoogleCloudVideointelligenceV1p3beta1_TextSegment (Maybe GoogleCloudVideointelligenceV1p3beta1_VideoSegment)
gcvvtsSegment
  = lens _gcvvtsSegment
      (\ s a -> s{_gcvvtsSegment = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_TextSegment
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1TextSegment"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_TextSegment'
                   <$>
                   (o .:? "frames" .!= mempty) <*> (o .:? "confidence")
                     <*> (o .:? "segment"))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_TextSegment
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_TextSegment'{..}
          = object
              (catMaybes
                 [("frames" .=) <$> _gcvvtsFrames,
                  ("confidence" .=) <$> _gcvvtsConfidence,
                  ("segment" .=) <$> _gcvvtsSegment])

-- | Deprecated. No effect.
--
-- /See:/ 'googleCloudVideointelligenceV1p1beta1_FaceFrame' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_FaceFrame =
  GoogleCloudVideointelligenceV1p1beta1_FaceFrame'
    { _gcvvffTimeOffSet :: !(Maybe GDuration)
    , _gcvvffNormalizedBoundingBoxes :: !(Maybe [GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_FaceFrame' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvffTimeOffSet'
--
-- * 'gcvvffNormalizedBoundingBoxes'
googleCloudVideointelligenceV1p1beta1_FaceFrame
    :: GoogleCloudVideointelligenceV1p1beta1_FaceFrame
googleCloudVideointelligenceV1p1beta1_FaceFrame =
  GoogleCloudVideointelligenceV1p1beta1_FaceFrame'
    {_gcvvffTimeOffSet = Nothing, _gcvvffNormalizedBoundingBoxes = Nothing}


-- | Time-offset, relative to the beginning of the video, corresponding to
-- the video frame for this location.
gcvvffTimeOffSet :: Lens' GoogleCloudVideointelligenceV1p1beta1_FaceFrame (Maybe Scientific)
gcvvffTimeOffSet
  = lens _gcvvffTimeOffSet
      (\ s a -> s{_gcvvffTimeOffSet = a})
      . mapping _GDuration

-- | Normalized Bounding boxes in a frame. There can be more than one boxes
-- if the same face is detected in multiple locations within the current
-- frame.
gcvvffNormalizedBoundingBoxes :: Lens' GoogleCloudVideointelligenceV1p1beta1_FaceFrame [GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox]
gcvvffNormalizedBoundingBoxes
  = lens _gcvvffNormalizedBoundingBoxes
      (\ s a -> s{_gcvvffNormalizedBoundingBoxes = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1p1beta1_FaceFrame
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p1beta1FaceFrame"
              (\ o ->
                 GoogleCloudVideointelligenceV1p1beta1_FaceFrame' <$>
                   (o .:? "timeOffset") <*>
                     (o .:? "normalizedBoundingBoxes" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1p1beta1_FaceFrame
         where
        toJSON
          GoogleCloudVideointelligenceV1p1beta1_FaceFrame'{..}
          = object
              (catMaybes
                 [("timeOffset" .=) <$> _gcvvffTimeOffSet,
                  ("normalizedBoundingBoxes" .=) <$>
                    _gcvvffNormalizedBoundingBoxes])

-- | Normalized bounding box. The normalized vertex coordinates are relative
-- to the original image. Range: [0, 1].
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox =
  GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox'
    { _gBottom :: !(Maybe (Textual Double))
    , _gLeft :: !(Maybe (Textual Double))
    , _gRight :: !(Maybe (Textual Double))
    , _gTop :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gBottom'
--
-- * 'gLeft'
--
-- * 'gRight'
--
-- * 'gTop'
googleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox
    :: GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox
googleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox =
  GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox'
    {_gBottom = Nothing, _gLeft = Nothing, _gRight = Nothing, _gTop = Nothing}


-- | Bottom Y coordinate.
gBottom :: Lens' GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox (Maybe Double)
gBottom
  = lens _gBottom (\ s a -> s{_gBottom = a}) .
      mapping _Coerce

-- | Left X coordinate.
gLeft :: Lens' GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox (Maybe Double)
gLeft
  = lens _gLeft (\ s a -> s{_gLeft = a}) .
      mapping _Coerce

-- | Right X coordinate.
gRight :: Lens' GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox (Maybe Double)
gRight
  = lens _gRight (\ s a -> s{_gRight = a}) .
      mapping _Coerce

-- | Top Y coordinate.
gTop :: Lens' GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox (Maybe Double)
gTop
  = lens _gTop (\ s a -> s{_gTop = a}) .
      mapping _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox'
                   <$>
                   (o .:? "bottom") <*> (o .:? "left") <*>
                     (o .:? "right")
                     <*> (o .:? "top"))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox'{..}
          = object
              (catMaybes
                 [("bottom" .=) <$> _gBottom, ("left" .=) <$> _gLeft,
                  ("right" .=) <$> _gRight, ("top" .=) <$> _gTop])

-- | A speech recognition result corresponding to a portion of the audio.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_SpeechTranscription' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_SpeechTranscription =
  GoogleCloudVideointelligenceV1p3beta1_SpeechTranscription'
    { _gAlternatives :: !(Maybe [GoogleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative])
    , _gLanguageCode :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_SpeechTranscription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gAlternatives'
--
-- * 'gLanguageCode'
googleCloudVideointelligenceV1p3beta1_SpeechTranscription
    :: GoogleCloudVideointelligenceV1p3beta1_SpeechTranscription
googleCloudVideointelligenceV1p3beta1_SpeechTranscription =
  GoogleCloudVideointelligenceV1p3beta1_SpeechTranscription'
    {_gAlternatives = Nothing, _gLanguageCode = Nothing}


-- | May contain one or more recognition hypotheses (up to the maximum
-- specified in \`max_alternatives\`). These alternatives are ordered in
-- terms of accuracy, with the top (first) alternative being the most
-- probable, as ranked by the recognizer.
gAlternatives :: Lens' GoogleCloudVideointelligenceV1p3beta1_SpeechTranscription [GoogleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative]
gAlternatives
  = lens _gAlternatives
      (\ s a -> s{_gAlternatives = a})
      . _Default
      . _Coerce

-- | Output only. The
-- [BCP-47](https:\/\/www.rfc-editor.org\/rfc\/bcp\/bcp47.txt) language tag
-- of the language in this result. This language code was detected to have
-- the most likelihood of being spoken in the audio.
gLanguageCode :: Lens' GoogleCloudVideointelligenceV1p3beta1_SpeechTranscription (Maybe Text)
gLanguageCode
  = lens _gLanguageCode
      (\ s a -> s{_gLanguageCode = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_SpeechTranscription
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1SpeechTranscription"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_SpeechTranscription'
                   <$>
                   (o .:? "alternatives" .!= mempty) <*>
                     (o .:? "languageCode"))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_SpeechTranscription
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_SpeechTranscription'{..}
          = object
              (catMaybes
                 [("alternatives" .=) <$> _gAlternatives,
                  ("languageCode" .=) <$> _gLanguageCode])

-- | Video segment level annotation results for text detection.
--
-- /See:/ 'googleCloudVideointelligenceV1_TextSegment' smart constructor.
data GoogleCloudVideointelligenceV1_TextSegment =
  GoogleCloudVideointelligenceV1_TextSegment'
    { _gcvvtscFrames :: !(Maybe [GoogleCloudVideointelligenceV1_TextFrame])
    , _gcvvtscConfidence :: !(Maybe (Textual Double))
    , _gcvvtscSegment :: !(Maybe GoogleCloudVideointelligenceV1_VideoSegment)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1_TextSegment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvtscFrames'
--
-- * 'gcvvtscConfidence'
--
-- * 'gcvvtscSegment'
googleCloudVideointelligenceV1_TextSegment
    :: GoogleCloudVideointelligenceV1_TextSegment
googleCloudVideointelligenceV1_TextSegment =
  GoogleCloudVideointelligenceV1_TextSegment'
    { _gcvvtscFrames = Nothing
    , _gcvvtscConfidence = Nothing
    , _gcvvtscSegment = Nothing
    }


-- | Information related to the frames where OCR detected text appears.
gcvvtscFrames :: Lens' GoogleCloudVideointelligenceV1_TextSegment [GoogleCloudVideointelligenceV1_TextFrame]
gcvvtscFrames
  = lens _gcvvtscFrames
      (\ s a -> s{_gcvvtscFrames = a})
      . _Default
      . _Coerce

-- | Confidence for the track of detected text. It is calculated as the
-- highest over all frames where OCR detected text appears.
gcvvtscConfidence :: Lens' GoogleCloudVideointelligenceV1_TextSegment (Maybe Double)
gcvvtscConfidence
  = lens _gcvvtscConfidence
      (\ s a -> s{_gcvvtscConfidence = a})
      . mapping _Coerce

-- | Video segment where a text snippet was detected.
gcvvtscSegment :: Lens' GoogleCloudVideointelligenceV1_TextSegment (Maybe GoogleCloudVideointelligenceV1_VideoSegment)
gcvvtscSegment
  = lens _gcvvtscSegment
      (\ s a -> s{_gcvvtscSegment = a})

instance FromJSON
           GoogleCloudVideointelligenceV1_TextSegment
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1TextSegment"
              (\ o ->
                 GoogleCloudVideointelligenceV1_TextSegment' <$>
                   (o .:? "frames" .!= mempty) <*> (o .:? "confidence")
                     <*> (o .:? "segment"))

instance ToJSON
           GoogleCloudVideointelligenceV1_TextSegment
         where
        toJSON
          GoogleCloudVideointelligenceV1_TextSegment'{..}
          = object
              (catMaybes
                 [("frames" .=) <$> _gcvvtscFrames,
                  ("confidence" .=) <$> _gcvvtscConfidence,
                  ("segment" .=) <$> _gcvvtscSegment])

-- | Video frame level annotations for object detection and tracking. This
-- field stores per frame location, time offset, and confidence.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame =
  GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame'
    { _gcvvotfTimeOffSet :: !(Maybe GDuration)
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
    , _gcvvlaFrames :: !(Maybe [GoogleCloudVideointelligenceV1_LabelFrame])
    , _gcvvlaVersion :: !(Maybe Text)
    , _gcvvlaSegments :: !(Maybe [GoogleCloudVideointelligenceV1_LabelSegment])
    , _gcvvlaEntity :: !(Maybe GoogleCloudVideointelligenceV1_Entity)
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
-- * 'gcvvlaVersion'
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
    , _gcvvlaVersion = Nothing
    , _gcvvlaSegments = Nothing
    , _gcvvlaEntity = Nothing
    }


-- | Common categories for the detected entity. For example, when the label
-- is \`Terrier\`, the category is likely \`dog\`. And in some cases there
-- might be more than one categories e.g., \`Terrier\` could also be a
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

-- | Feature version.
gcvvlaVersion :: Lens' GoogleCloudVideointelligenceV1_LabelAnnotation (Maybe Text)
gcvvlaVersion
  = lens _gcvvlaVersion
      (\ s a -> s{_gcvvlaVersion = a})

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
                     <*> (o .:? "version")
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
                  ("version" .=) <$> _gcvvlaVersion,
                  ("segments" .=) <$> _gcvvlaSegments,
                  ("entity" .=) <$> _gcvvlaEntity])

-- | Normalized bounding polygon for text (that might not be aligned with
-- axis). Contains list of the corner points in clockwise order starting
-- from top-left corner. For example, for a rectangular bounding box: When
-- the text is horizontal it might look like: 0----1 | | 3----2 When it\'s
-- clockwise rotated 180 degrees around the top-left corner it becomes:
-- 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3). Note
-- that values can be less than 0, or greater than 1 due to trignometric
-- calculations for location of the box.
--
-- /See:/ 'googleCloudVideointelligenceV1beta2_NormalizedBoundingPoly' smart constructor.
newtype GoogleCloudVideointelligenceV1beta2_NormalizedBoundingPoly =
  GoogleCloudVideointelligenceV1beta2_NormalizedBoundingPoly'
    { _gVertices :: Maybe [GoogleCloudVideointelligenceV1beta2_NormalizedVertex]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_NormalizedBoundingPoly' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gVertices'
googleCloudVideointelligenceV1beta2_NormalizedBoundingPoly
    :: GoogleCloudVideointelligenceV1beta2_NormalizedBoundingPoly
googleCloudVideointelligenceV1beta2_NormalizedBoundingPoly =
  GoogleCloudVideointelligenceV1beta2_NormalizedBoundingPoly'
    {_gVertices = Nothing}


-- | Normalized vertices of the bounding polygon.
gVertices :: Lens' GoogleCloudVideointelligenceV1beta2_NormalizedBoundingPoly [GoogleCloudVideointelligenceV1beta2_NormalizedVertex]
gVertices
  = lens _gVertices (\ s a -> s{_gVertices = a}) .
      _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1beta2_NormalizedBoundingPoly
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1beta2NormalizedBoundingPoly"
              (\ o ->
                 GoogleCloudVideointelligenceV1beta2_NormalizedBoundingPoly'
                   <$> (o .:? "vertices" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1beta2_NormalizedBoundingPoly
         where
        toJSON
          GoogleCloudVideointelligenceV1beta2_NormalizedBoundingPoly'{..}
          = object (catMaybes [("vertices" .=) <$> _gVertices])

-- | Alternative hypotheses (a.k.a. n-best list).
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative =
  GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative'
    { _gcvvsracConfidence :: !(Maybe (Textual Double))
    , _gcvvsracWords :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_WordInfo])
    , _gcvvsracTranscript :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvsracConfidence'
--
-- * 'gcvvsracWords'
--
-- * 'gcvvsracTranscript'
googleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative
    :: GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative
googleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative =
  GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative'
    { _gcvvsracConfidence = Nothing
    , _gcvvsracWords = Nothing
    , _gcvvsracTranscript = Nothing
    }


-- | Output only. The confidence estimate between 0.0 and 1.0. A higher
-- number indicates an estimated greater likelihood that the recognized
-- words are correct. This field is set only for the top alternative. This
-- field is not guaranteed to be accurate and users should not rely on it
-- to be always provided. The default of 0.0 is a sentinel value indicating
-- \`confidence\` was not set.
gcvvsracConfidence :: Lens' GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative (Maybe Double)
gcvvsracConfidence
  = lens _gcvvsracConfidence
      (\ s a -> s{_gcvvsracConfidence = a})
      . mapping _Coerce

-- | Output only. A list of word-specific information for each recognized
-- word. Note: When \`enable_speaker_diarization\` is set to true, you will
-- see all the words from the beginning of the audio.
gcvvsracWords :: Lens' GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative [GoogleCloudVideointelligenceV1p2beta1_WordInfo]
gcvvsracWords
  = lens _gcvvsracWords
      (\ s a -> s{_gcvvsracWords = a})
      . _Default
      . _Coerce

-- | Transcript text representing the words that the user spoke.
gcvvsracTranscript :: Lens' GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative (Maybe Text)
gcvvsracTranscript
  = lens _gcvvsracTranscript
      (\ s a -> s{_gcvvsracTranscript = a})

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
                 [("confidence" .=) <$> _gcvvsracConfidence,
                  ("words" .=) <$> _gcvvsracWords,
                  ("transcript" .=) <$> _gcvvsracTranscript])

-- | Word-specific information for recognized words. Word information is only
-- included in the response when certain request parameters are set, such
-- as \`enable_word_time_offsets\`.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_WordInfo' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_WordInfo =
  GoogleCloudVideointelligenceV1p2beta1_WordInfo'
    { _gcvvwicStartTime :: !(Maybe GDuration)
    , _gcvvwicConfidence :: !(Maybe (Textual Double))
    , _gcvvwicEndTime :: !(Maybe GDuration)
    , _gcvvwicWord :: !(Maybe Text)
    , _gcvvwicSpeakerTag :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_WordInfo' with the minimum fields required to make a request.
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
googleCloudVideointelligenceV1p2beta1_WordInfo
    :: GoogleCloudVideointelligenceV1p2beta1_WordInfo
googleCloudVideointelligenceV1p2beta1_WordInfo =
  GoogleCloudVideointelligenceV1p2beta1_WordInfo'
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
gcvvwicStartTime :: Lens' GoogleCloudVideointelligenceV1p2beta1_WordInfo (Maybe Scientific)
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
gcvvwicConfidence :: Lens' GoogleCloudVideointelligenceV1p2beta1_WordInfo (Maybe Double)
gcvvwicConfidence
  = lens _gcvvwicConfidence
      (\ s a -> s{_gcvvwicConfidence = a})
      . mapping _Coerce

-- | Time offset relative to the beginning of the audio, and corresponding to
-- the end of the spoken word. This field is only set if
-- \`enable_word_time_offsets=true\` and only in the top hypothesis. This
-- is an experimental feature and the accuracy of the time offset can vary.
gcvvwicEndTime :: Lens' GoogleCloudVideointelligenceV1p2beta1_WordInfo (Maybe Scientific)
gcvvwicEndTime
  = lens _gcvvwicEndTime
      (\ s a -> s{_gcvvwicEndTime = a})
      . mapping _GDuration

-- | The word corresponding to this set of information.
gcvvwicWord :: Lens' GoogleCloudVideointelligenceV1p2beta1_WordInfo (Maybe Text)
gcvvwicWord
  = lens _gcvvwicWord (\ s a -> s{_gcvvwicWord = a})

-- | Output only. A distinct integer value is assigned for every speaker
-- within the audio. This field specifies which one of those speakers was
-- detected to have spoken this word. Value ranges from 1 up to
-- diarization_speaker_count, and is only set if speaker diarization is
-- enabled.
gcvvwicSpeakerTag :: Lens' GoogleCloudVideointelligenceV1p2beta1_WordInfo (Maybe Int32)
gcvvwicSpeakerTag
  = lens _gcvvwicSpeakerTag
      (\ s a -> s{_gcvvwicSpeakerTag = a})
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
                 [("startTime" .=) <$> _gcvvwicStartTime,
                  ("confidence" .=) <$> _gcvvwicConfidence,
                  ("endTime" .=) <$> _gcvvwicEndTime,
                  ("word" .=) <$> _gcvvwicWord,
                  ("speakerTag" .=) <$> _gcvvwicSpeakerTag])

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

-- | A vertex represents a 2D point in the image. NOTE: the normalized vertex
-- coordinates are relative to the original image and range from 0 to 1.
--
-- /See:/ 'googleCloudVideointelligenceV1beta2_NormalizedVertex' smart constructor.
data GoogleCloudVideointelligenceV1beta2_NormalizedVertex =
  GoogleCloudVideointelligenceV1beta2_NormalizedVertex'
    { _gX :: !(Maybe (Textual Double))
    , _gY :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_NormalizedVertex' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gX'
--
-- * 'gY'
googleCloudVideointelligenceV1beta2_NormalizedVertex
    :: GoogleCloudVideointelligenceV1beta2_NormalizedVertex
googleCloudVideointelligenceV1beta2_NormalizedVertex =
  GoogleCloudVideointelligenceV1beta2_NormalizedVertex'
    {_gX = Nothing, _gY = Nothing}


-- | X coordinate.
gX :: Lens' GoogleCloudVideointelligenceV1beta2_NormalizedVertex (Maybe Double)
gX = lens _gX (\ s a -> s{_gX = a}) . mapping _Coerce

-- | Y coordinate.
gY :: Lens' GoogleCloudVideointelligenceV1beta2_NormalizedVertex (Maybe Double)
gY = lens _gY (\ s a -> s{_gY = a}) . mapping _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1beta2_NormalizedVertex
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1beta2NormalizedVertex"
              (\ o ->
                 GoogleCloudVideointelligenceV1beta2_NormalizedVertex'
                   <$> (o .:? "x") <*> (o .:? "y"))

instance ToJSON
           GoogleCloudVideointelligenceV1beta2_NormalizedVertex
         where
        toJSON
          GoogleCloudVideointelligenceV1beta2_NormalizedVertex'{..}
          = object
              (catMaybes [("x" .=) <$> _gX, ("y" .=) <$> _gY])

-- | Face detection annotation.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation =
  GoogleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation'
    { _gcvvfdaThumbnail :: !(Maybe Bytes)
    , _gcvvfdaTracks :: !(Maybe [GoogleCloudVideointelligenceV1p3beta1_Track])
    , _gcvvfdaVersion :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvfdaThumbnail'
--
-- * 'gcvvfdaTracks'
--
-- * 'gcvvfdaVersion'
googleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation
    :: GoogleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation
googleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation =
  GoogleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation'
    { _gcvvfdaThumbnail = Nothing
    , _gcvvfdaTracks = Nothing
    , _gcvvfdaVersion = Nothing
    }


-- | The thumbnail of a person\'s face.
gcvvfdaThumbnail :: Lens' GoogleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation (Maybe ByteString)
gcvvfdaThumbnail
  = lens _gcvvfdaThumbnail
      (\ s a -> s{_gcvvfdaThumbnail = a})
      . mapping _Bytes

-- | The face tracks with attributes.
gcvvfdaTracks :: Lens' GoogleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation [GoogleCloudVideointelligenceV1p3beta1_Track]
gcvvfdaTracks
  = lens _gcvvfdaTracks
      (\ s a -> s{_gcvvfdaTracks = a})
      . _Default
      . _Coerce

-- | Feature version.
gcvvfdaVersion :: Lens' GoogleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation (Maybe Text)
gcvvfdaVersion
  = lens _gcvvfdaVersion
      (\ s a -> s{_gcvvfdaVersion = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1FaceDetectionAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation'
                   <$>
                   (o .:? "thumbnail") <*> (o .:? "tracks" .!= mempty)
                     <*> (o .:? "version"))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation'{..}
          = object
              (catMaybes
                 [("thumbnail" .=) <$> _gcvvfdaThumbnail,
                  ("tracks" .=) <$> _gcvvfdaTracks,
                  ("version" .=) <$> _gcvvfdaVersion])

-- | Label annotation.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_LabelAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation =
  GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation'
    { _gCategoryEntities :: !(Maybe [GoogleCloudVideointelligenceV1p3beta1_Entity])
    , _gFrames :: !(Maybe [GoogleCloudVideointelligenceV1p3beta1_LabelFrame])
    , _gVersion :: !(Maybe Text)
    , _gSegments :: !(Maybe [GoogleCloudVideointelligenceV1p3beta1_LabelSegment])
    , _gEntity :: !(Maybe GoogleCloudVideointelligenceV1p3beta1_Entity)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gCategoryEntities'
--
-- * 'gFrames'
--
-- * 'gVersion'
--
-- * 'gSegments'
--
-- * 'gEntity'
googleCloudVideointelligenceV1p3beta1_LabelAnnotation
    :: GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation
googleCloudVideointelligenceV1p3beta1_LabelAnnotation =
  GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation'
    { _gCategoryEntities = Nothing
    , _gFrames = Nothing
    , _gVersion = Nothing
    , _gSegments = Nothing
    , _gEntity = Nothing
    }


-- | Common categories for the detected entity. For example, when the label
-- is \`Terrier\`, the category is likely \`dog\`. And in some cases there
-- might be more than one categories e.g., \`Terrier\` could also be a
-- \`pet\`.
gCategoryEntities :: Lens' GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation [GoogleCloudVideointelligenceV1p3beta1_Entity]
gCategoryEntities
  = lens _gCategoryEntities
      (\ s a -> s{_gCategoryEntities = a})
      . _Default
      . _Coerce

-- | All video frames where a label was detected.
gFrames :: Lens' GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation [GoogleCloudVideointelligenceV1p3beta1_LabelFrame]
gFrames
  = lens _gFrames (\ s a -> s{_gFrames = a}) . _Default
      . _Coerce

-- | Feature version.
gVersion :: Lens' GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation (Maybe Text)
gVersion = lens _gVersion (\ s a -> s{_gVersion = a})

-- | All video segments where a label was detected.
gSegments :: Lens' GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation [GoogleCloudVideointelligenceV1p3beta1_LabelSegment]
gSegments
  = lens _gSegments (\ s a -> s{_gSegments = a}) .
      _Default
      . _Coerce

-- | Detected entity.
gEntity :: Lens' GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation (Maybe GoogleCloudVideointelligenceV1p3beta1_Entity)
gEntity = lens _gEntity (\ s a -> s{_gEntity = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1LabelAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation'
                   <$>
                   (o .:? "categoryEntities" .!= mempty) <*>
                     (o .:? "frames" .!= mempty)
                     <*> (o .:? "version")
                     <*> (o .:? "segments" .!= mempty)
                     <*> (o .:? "entity"))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation'{..}
          = object
              (catMaybes
                 [("categoryEntities" .=) <$> _gCategoryEntities,
                  ("frames" .=) <$> _gFrames,
                  ("version" .=) <$> _gVersion,
                  ("segments" .=) <$> _gSegments,
                  ("entity" .=) <$> _gEntity])

-- | Explicit content annotation (based on per-frame visual signals only). If
-- no explicit content has been detected in a frame, no annotations are
-- present for that frame.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation =
  GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation'
    { _gooFrames :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame])
    , _gooVersion :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooFrames'
--
-- * 'gooVersion'
googleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation
    :: GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation
googleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation =
  GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation'
    {_gooFrames = Nothing, _gooVersion = Nothing}


-- | All video frames where explicit content was detected.
gooFrames :: Lens' GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation [GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame]
gooFrames
  = lens _gooFrames (\ s a -> s{_gooFrames = a}) .
      _Default
      . _Coerce

-- | Feature version.
gooVersion :: Lens' GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation (Maybe Text)
gooVersion
  = lens _gooVersion (\ s a -> s{_gooVersion = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation'
                   <$>
                   (o .:? "frames" .!= mempty) <*> (o .:? "version"))

instance ToJSON
           GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation'{..}
          = object
              (catMaybes
                 [("frames" .=) <$> _gooFrames,
                  ("version" .=) <$> _gooVersion])

-- | Annotation corresponding to one detected, tracked and recognized logo
-- class.
--
-- /See:/ 'googleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation =
  GoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation'
    { _gooTracks :: !(Maybe [GoogleCloudVideointelligenceV1p1beta1_Track])
    , _gooSegments :: !(Maybe [GoogleCloudVideointelligenceV1p1beta1_VideoSegment])
    , _gooEntity :: !(Maybe GoogleCloudVideointelligenceV1p1beta1_Entity)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooTracks'
--
-- * 'gooSegments'
--
-- * 'gooEntity'
googleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation
    :: GoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation
googleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation =
  GoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation'
    {_gooTracks = Nothing, _gooSegments = Nothing, _gooEntity = Nothing}


-- | All logo tracks where the recognized logo appears. Each track
-- corresponds to one logo instance appearing in consecutive frames.
gooTracks :: Lens' GoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation [GoogleCloudVideointelligenceV1p1beta1_Track]
gooTracks
  = lens _gooTracks (\ s a -> s{_gooTracks = a}) .
      _Default
      . _Coerce

-- | All video segments where the recognized logo appears. There might be
-- multiple instances of the same logo class appearing in one VideoSegment.
gooSegments :: Lens' GoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation [GoogleCloudVideointelligenceV1p1beta1_VideoSegment]
gooSegments
  = lens _gooSegments (\ s a -> s{_gooSegments = a}) .
      _Default
      . _Coerce

-- | Entity category information to specify the logo class that all the logo
-- tracks within this LogoRecognitionAnnotation are recognized as.
gooEntity :: Lens' GoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation (Maybe GoogleCloudVideointelligenceV1p1beta1_Entity)
gooEntity
  = lens _gooEntity (\ s a -> s{_gooEntity = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p1beta1LogoRecognitionAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation'
                   <$>
                   (o .:? "tracks" .!= mempty) <*>
                     (o .:? "segments" .!= mempty)
                     <*> (o .:? "entity"))

instance ToJSON
           GoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation'{..}
          = object
              (catMaybes
                 [("tracks" .=) <$> _gooTracks,
                  ("segments" .=) <$> _gooSegments,
                  ("entity" .=) <$> _gooEntity])

-- | Face detection annotation.
--
-- /See:/ 'googleCloudVideointelligenceV1_FaceDetectionAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1_FaceDetectionAnnotation =
  GoogleCloudVideointelligenceV1_FaceDetectionAnnotation'
    { _gcvvfdacThumbnail :: !(Maybe Bytes)
    , _gcvvfdacTracks :: !(Maybe [GoogleCloudVideointelligenceV1_Track])
    , _gcvvfdacVersion :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1_FaceDetectionAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvfdacThumbnail'
--
-- * 'gcvvfdacTracks'
--
-- * 'gcvvfdacVersion'
googleCloudVideointelligenceV1_FaceDetectionAnnotation
    :: GoogleCloudVideointelligenceV1_FaceDetectionAnnotation
googleCloudVideointelligenceV1_FaceDetectionAnnotation =
  GoogleCloudVideointelligenceV1_FaceDetectionAnnotation'
    { _gcvvfdacThumbnail = Nothing
    , _gcvvfdacTracks = Nothing
    , _gcvvfdacVersion = Nothing
    }


-- | The thumbnail of a person\'s face.
gcvvfdacThumbnail :: Lens' GoogleCloudVideointelligenceV1_FaceDetectionAnnotation (Maybe ByteString)
gcvvfdacThumbnail
  = lens _gcvvfdacThumbnail
      (\ s a -> s{_gcvvfdacThumbnail = a})
      . mapping _Bytes

-- | The face tracks with attributes.
gcvvfdacTracks :: Lens' GoogleCloudVideointelligenceV1_FaceDetectionAnnotation [GoogleCloudVideointelligenceV1_Track]
gcvvfdacTracks
  = lens _gcvvfdacTracks
      (\ s a -> s{_gcvvfdacTracks = a})
      . _Default
      . _Coerce

-- | Feature version.
gcvvfdacVersion :: Lens' GoogleCloudVideointelligenceV1_FaceDetectionAnnotation (Maybe Text)
gcvvfdacVersion
  = lens _gcvvfdacVersion
      (\ s a -> s{_gcvvfdacVersion = a})

instance FromJSON
           GoogleCloudVideointelligenceV1_FaceDetectionAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1FaceDetectionAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1_FaceDetectionAnnotation'
                   <$>
                   (o .:? "thumbnail") <*> (o .:? "tracks" .!= mempty)
                     <*> (o .:? "version"))

instance ToJSON
           GoogleCloudVideointelligenceV1_FaceDetectionAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1_FaceDetectionAnnotation'{..}
          = object
              (catMaybes
                 [("thumbnail" .=) <$> _gcvvfdacThumbnail,
                  ("tracks" .=) <$> _gcvvfdacTracks,
                  ("version" .=) <$> _gcvvfdacVersion])

-- | Detected entity from video analysis.
--
-- /See:/ 'googleCloudVideointelligenceV1p1beta1_Entity' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_Entity =
  GoogleCloudVideointelligenceV1p1beta1_Entity'
    { _gooLanguageCode :: !(Maybe Text)
    , _gooEntityId :: !(Maybe Text)
    , _gooDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_Entity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooLanguageCode'
--
-- * 'gooEntityId'
--
-- * 'gooDescription'
googleCloudVideointelligenceV1p1beta1_Entity
    :: GoogleCloudVideointelligenceV1p1beta1_Entity
googleCloudVideointelligenceV1p1beta1_Entity =
  GoogleCloudVideointelligenceV1p1beta1_Entity'
    { _gooLanguageCode = Nothing
    , _gooEntityId = Nothing
    , _gooDescription = Nothing
    }


-- | Language code for \`description\` in BCP-47 format.
gooLanguageCode :: Lens' GoogleCloudVideointelligenceV1p1beta1_Entity (Maybe Text)
gooLanguageCode
  = lens _gooLanguageCode
      (\ s a -> s{_gooLanguageCode = a})

-- | Opaque entity ID. Some IDs may be available in [Google Knowledge Graph
-- Search API](https:\/\/developers.google.com\/knowledge-graph\/).
gooEntityId :: Lens' GoogleCloudVideointelligenceV1p1beta1_Entity (Maybe Text)
gooEntityId
  = lens _gooEntityId (\ s a -> s{_gooEntityId = a})

-- | Textual description, e.g., \`Fixed-gear bicycle\`.
gooDescription :: Lens' GoogleCloudVideointelligenceV1p1beta1_Entity (Maybe Text)
gooDescription
  = lens _gooDescription
      (\ s a -> s{_gooDescription = a})

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
                 [("languageCode" .=) <$> _gooLanguageCode,
                  ("entityId" .=) <$> _gooEntityId,
                  ("description" .=) <$> _gooDescription])

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

-- | Deprecated. No effect.
--
-- /See:/ 'googleCloudVideointelligenceV1p1beta1_FaceAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_FaceAnnotation =
  GoogleCloudVideointelligenceV1p1beta1_FaceAnnotation'
    { _gcvvfacThumbnail :: !(Maybe Bytes)
    , _gcvvfacFrames :: !(Maybe [GoogleCloudVideointelligenceV1p1beta1_FaceFrame])
    , _gcvvfacSegments :: !(Maybe [GoogleCloudVideointelligenceV1p1beta1_FaceSegment])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_FaceAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvfacThumbnail'
--
-- * 'gcvvfacFrames'
--
-- * 'gcvvfacSegments'
googleCloudVideointelligenceV1p1beta1_FaceAnnotation
    :: GoogleCloudVideointelligenceV1p1beta1_FaceAnnotation
googleCloudVideointelligenceV1p1beta1_FaceAnnotation =
  GoogleCloudVideointelligenceV1p1beta1_FaceAnnotation'
    { _gcvvfacThumbnail = Nothing
    , _gcvvfacFrames = Nothing
    , _gcvvfacSegments = Nothing
    }


-- | Thumbnail of a representative face view (in JPEG format).
gcvvfacThumbnail :: Lens' GoogleCloudVideointelligenceV1p1beta1_FaceAnnotation (Maybe ByteString)
gcvvfacThumbnail
  = lens _gcvvfacThumbnail
      (\ s a -> s{_gcvvfacThumbnail = a})
      . mapping _Bytes

-- | All video frames where a face was detected.
gcvvfacFrames :: Lens' GoogleCloudVideointelligenceV1p1beta1_FaceAnnotation [GoogleCloudVideointelligenceV1p1beta1_FaceFrame]
gcvvfacFrames
  = lens _gcvvfacFrames
      (\ s a -> s{_gcvvfacFrames = a})
      . _Default
      . _Coerce

-- | All video segments where a face was detected.
gcvvfacSegments :: Lens' GoogleCloudVideointelligenceV1p1beta1_FaceAnnotation [GoogleCloudVideointelligenceV1p1beta1_FaceSegment]
gcvvfacSegments
  = lens _gcvvfacSegments
      (\ s a -> s{_gcvvfacSegments = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1p1beta1_FaceAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p1beta1FaceAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1p1beta1_FaceAnnotation'
                   <$>
                   (o .:? "thumbnail") <*> (o .:? "frames" .!= mempty)
                     <*> (o .:? "segments" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1p1beta1_FaceAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1p1beta1_FaceAnnotation'{..}
          = object
              (catMaybes
                 [("thumbnail" .=) <$> _gcvvfacThumbnail,
                  ("frames" .=) <$> _gcvvfacFrames,
                  ("segments" .=) <$> _gcvvfacSegments])

-- | Annotation results for a single video.
--
-- /See:/ 'googleCloudVideointelligenceV1_VideoAnnotationResults' smart constructor.
data GoogleCloudVideointelligenceV1_VideoAnnotationResults =
  GoogleCloudVideointelligenceV1_VideoAnnotationResults'
    { _gcvvvarShotAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1_VideoSegment])
    , _gcvvvarShotLabelAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1_LabelAnnotation])
    , _gcvvvarFaceDetectionAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1_FaceDetectionAnnotation])
    , _gcvvvarFaceAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1_FaceAnnotation])
    , _gcvvvarInputURI :: !(Maybe Text)
    , _gcvvvarError :: !(Maybe GoogleRpc_Status)
    , _gcvvvarShotPresenceLabelAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1_LabelAnnotation])
    , _gcvvvarPersonDetectionAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1_PersonDetectionAnnotation])
    , _gcvvvarObjectAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1_ObjectTrackingAnnotation])
    , _gcvvvarFrameLabelAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1_LabelAnnotation])
    , _gcvvvarSpeechTranscriptions :: !(Maybe [GoogleCloudVideointelligenceV1_SpeechTranscription])
    , _gcvvvarSegmentPresenceLabelAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1_LabelAnnotation])
    , _gcvvvarLogoRecognitionAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1_LogoRecognitionAnnotation])
    , _gcvvvarSegment :: !(Maybe GoogleCloudVideointelligenceV1_VideoSegment)
    , _gcvvvarTextAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1_TextAnnotation])
    , _gcvvvarSegmentLabelAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1_LabelAnnotation])
    , _gcvvvarExplicitAnnotation :: !(Maybe GoogleCloudVideointelligenceV1_ExplicitContentAnnotation)
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
-- * 'gcvvvarFaceDetectionAnnotations'
--
-- * 'gcvvvarFaceAnnotations'
--
-- * 'gcvvvarInputURI'
--
-- * 'gcvvvarError'
--
-- * 'gcvvvarShotPresenceLabelAnnotations'
--
-- * 'gcvvvarPersonDetectionAnnotations'
--
-- * 'gcvvvarObjectAnnotations'
--
-- * 'gcvvvarFrameLabelAnnotations'
--
-- * 'gcvvvarSpeechTranscriptions'
--
-- * 'gcvvvarSegmentPresenceLabelAnnotations'
--
-- * 'gcvvvarLogoRecognitionAnnotations'
--
-- * 'gcvvvarSegment'
--
-- * 'gcvvvarTextAnnotations'
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
    , _gcvvvarFaceDetectionAnnotations = Nothing
    , _gcvvvarFaceAnnotations = Nothing
    , _gcvvvarInputURI = Nothing
    , _gcvvvarError = Nothing
    , _gcvvvarShotPresenceLabelAnnotations = Nothing
    , _gcvvvarPersonDetectionAnnotations = Nothing
    , _gcvvvarObjectAnnotations = Nothing
    , _gcvvvarFrameLabelAnnotations = Nothing
    , _gcvvvarSpeechTranscriptions = Nothing
    , _gcvvvarSegmentPresenceLabelAnnotations = Nothing
    , _gcvvvarLogoRecognitionAnnotations = Nothing
    , _gcvvvarSegment = Nothing
    , _gcvvvarTextAnnotations = Nothing
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

-- | Topical label annotations on shot level. There is exactly one element
-- for each unique label.
gcvvvarShotLabelAnnotations :: Lens' GoogleCloudVideointelligenceV1_VideoAnnotationResults [GoogleCloudVideointelligenceV1_LabelAnnotation]
gcvvvarShotLabelAnnotations
  = lens _gcvvvarShotLabelAnnotations
      (\ s a -> s{_gcvvvarShotLabelAnnotations = a})
      . _Default
      . _Coerce

-- | Face detection annotations.
gcvvvarFaceDetectionAnnotations :: Lens' GoogleCloudVideointelligenceV1_VideoAnnotationResults [GoogleCloudVideointelligenceV1_FaceDetectionAnnotation]
gcvvvarFaceDetectionAnnotations
  = lens _gcvvvarFaceDetectionAnnotations
      (\ s a -> s{_gcvvvarFaceDetectionAnnotations = a})
      . _Default
      . _Coerce

-- | Deprecated. Please use \`face_detection_annotations\` instead.
gcvvvarFaceAnnotations :: Lens' GoogleCloudVideointelligenceV1_VideoAnnotationResults [GoogleCloudVideointelligenceV1_FaceAnnotation]
gcvvvarFaceAnnotations
  = lens _gcvvvarFaceAnnotations
      (\ s a -> s{_gcvvvarFaceAnnotations = a})
      . _Default
      . _Coerce

-- | Video file location in [Cloud
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

-- | Presence label annotations on shot level. There is exactly one element
-- for each unique label. Compared to the existing topical
-- \`shot_label_annotations\`, this field presents more fine-grained,
-- shot-level labels detected in video content and is made available only
-- when the client sets \`LabelDetectionConfig.model\` to
-- \"builtin\/latest\" in the request.
gcvvvarShotPresenceLabelAnnotations :: Lens' GoogleCloudVideointelligenceV1_VideoAnnotationResults [GoogleCloudVideointelligenceV1_LabelAnnotation]
gcvvvarShotPresenceLabelAnnotations
  = lens _gcvvvarShotPresenceLabelAnnotations
      (\ s a ->
         s{_gcvvvarShotPresenceLabelAnnotations = a})
      . _Default
      . _Coerce

-- | Person detection annotations.
gcvvvarPersonDetectionAnnotations :: Lens' GoogleCloudVideointelligenceV1_VideoAnnotationResults [GoogleCloudVideointelligenceV1_PersonDetectionAnnotation]
gcvvvarPersonDetectionAnnotations
  = lens _gcvvvarPersonDetectionAnnotations
      (\ s a -> s{_gcvvvarPersonDetectionAnnotations = a})
      . _Default
      . _Coerce

-- | Annotations for list of objects detected and tracked in video.
gcvvvarObjectAnnotations :: Lens' GoogleCloudVideointelligenceV1_VideoAnnotationResults [GoogleCloudVideointelligenceV1_ObjectTrackingAnnotation]
gcvvvarObjectAnnotations
  = lens _gcvvvarObjectAnnotations
      (\ s a -> s{_gcvvvarObjectAnnotations = a})
      . _Default
      . _Coerce

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

-- | Presence label annotations on video level or user-specified segment
-- level. There is exactly one element for each unique label. Compared to
-- the existing topical \`segment_label_annotations\`, this field presents
-- more fine-grained, segment-level labels detected in video content and is
-- made available only when the client sets \`LabelDetectionConfig.model\`
-- to \"builtin\/latest\" in the request.
gcvvvarSegmentPresenceLabelAnnotations :: Lens' GoogleCloudVideointelligenceV1_VideoAnnotationResults [GoogleCloudVideointelligenceV1_LabelAnnotation]
gcvvvarSegmentPresenceLabelAnnotations
  = lens _gcvvvarSegmentPresenceLabelAnnotations
      (\ s a ->
         s{_gcvvvarSegmentPresenceLabelAnnotations = a})
      . _Default
      . _Coerce

-- | Annotations for list of logos detected, tracked and recognized in video.
gcvvvarLogoRecognitionAnnotations :: Lens' GoogleCloudVideointelligenceV1_VideoAnnotationResults [GoogleCloudVideointelligenceV1_LogoRecognitionAnnotation]
gcvvvarLogoRecognitionAnnotations
  = lens _gcvvvarLogoRecognitionAnnotations
      (\ s a -> s{_gcvvvarLogoRecognitionAnnotations = a})
      . _Default
      . _Coerce

-- | Video segment on which the annotation is run.
gcvvvarSegment :: Lens' GoogleCloudVideointelligenceV1_VideoAnnotationResults (Maybe GoogleCloudVideointelligenceV1_VideoSegment)
gcvvvarSegment
  = lens _gcvvvarSegment
      (\ s a -> s{_gcvvvarSegment = a})

-- | OCR text detection and tracking. Annotations for list of detected text
-- snippets. Each will have list of frame information associated with it.
gcvvvarTextAnnotations :: Lens' GoogleCloudVideointelligenceV1_VideoAnnotationResults [GoogleCloudVideointelligenceV1_TextAnnotation]
gcvvvarTextAnnotations
  = lens _gcvvvarTextAnnotations
      (\ s a -> s{_gcvvvarTextAnnotations = a})
      . _Default
      . _Coerce

-- | Topical label annotations on video level or user-specified segment
-- level. There is exactly one element for each unique label.
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
                     <*> (o .:? "faceDetectionAnnotations" .!= mempty)
                     <*> (o .:? "faceAnnotations" .!= mempty)
                     <*> (o .:? "inputUri")
                     <*> (o .:? "error")
                     <*> (o .:? "shotPresenceLabelAnnotations" .!= mempty)
                     <*> (o .:? "personDetectionAnnotations" .!= mempty)
                     <*> (o .:? "objectAnnotations" .!= mempty)
                     <*> (o .:? "frameLabelAnnotations" .!= mempty)
                     <*> (o .:? "speechTranscriptions" .!= mempty)
                     <*>
                     (o .:? "segmentPresenceLabelAnnotations" .!= mempty)
                     <*> (o .:? "logoRecognitionAnnotations" .!= mempty)
                     <*> (o .:? "segment")
                     <*> (o .:? "textAnnotations" .!= mempty)
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
                  ("faceDetectionAnnotations" .=) <$>
                    _gcvvvarFaceDetectionAnnotations,
                  ("faceAnnotations" .=) <$> _gcvvvarFaceAnnotations,
                  ("inputUri" .=) <$> _gcvvvarInputURI,
                  ("error" .=) <$> _gcvvvarError,
                  ("shotPresenceLabelAnnotations" .=) <$>
                    _gcvvvarShotPresenceLabelAnnotations,
                  ("personDetectionAnnotations" .=) <$>
                    _gcvvvarPersonDetectionAnnotations,
                  ("objectAnnotations" .=) <$>
                    _gcvvvarObjectAnnotations,
                  ("frameLabelAnnotations" .=) <$>
                    _gcvvvarFrameLabelAnnotations,
                  ("speechTranscriptions" .=) <$>
                    _gcvvvarSpeechTranscriptions,
                  ("segmentPresenceLabelAnnotations" .=) <$>
                    _gcvvvarSegmentPresenceLabelAnnotations,
                  ("logoRecognitionAnnotations" .=) <$>
                    _gcvvvarLogoRecognitionAnnotations,
                  ("segment" .=) <$> _gcvvvarSegment,
                  ("textAnnotations" .=) <$> _gcvvvarTextAnnotations,
                  ("segmentLabelAnnotations" .=) <$>
                    _gcvvvarSegmentLabelAnnotations,
                  ("explicitAnnotation" .=) <$>
                    _gcvvvarExplicitAnnotation])

-- | Config for SPEECH_TRANSCRIPTION.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig =
  GoogleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig'
    { _gcvvstcSpeechContexts :: !(Maybe [GoogleCloudVideointelligenceV1p3beta1_SpeechContext])
    , _gcvvstcLanguageCode :: !(Maybe Text)
    , _gcvvstcAudioTracks :: !(Maybe [Textual Int32])
    , _gcvvstcEnableAutomaticPunctuation :: !(Maybe Bool)
    , _gcvvstcMaxAlternatives :: !(Maybe (Textual Int32))
    , _gcvvstcEnableSpeakerDiarization :: !(Maybe Bool)
    , _gcvvstcFilterProfanity :: !(Maybe Bool)
    , _gcvvstcDiarizationSpeakerCount :: !(Maybe (Textual Int32))
    , _gcvvstcEnableWordConfidence :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvstcSpeechContexts'
--
-- * 'gcvvstcLanguageCode'
--
-- * 'gcvvstcAudioTracks'
--
-- * 'gcvvstcEnableAutomaticPunctuation'
--
-- * 'gcvvstcMaxAlternatives'
--
-- * 'gcvvstcEnableSpeakerDiarization'
--
-- * 'gcvvstcFilterProfanity'
--
-- * 'gcvvstcDiarizationSpeakerCount'
--
-- * 'gcvvstcEnableWordConfidence'
googleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig
    :: GoogleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig
googleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig =
  GoogleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig'
    { _gcvvstcSpeechContexts = Nothing
    , _gcvvstcLanguageCode = Nothing
    , _gcvvstcAudioTracks = Nothing
    , _gcvvstcEnableAutomaticPunctuation = Nothing
    , _gcvvstcMaxAlternatives = Nothing
    , _gcvvstcEnableSpeakerDiarization = Nothing
    , _gcvvstcFilterProfanity = Nothing
    , _gcvvstcDiarizationSpeakerCount = Nothing
    , _gcvvstcEnableWordConfidence = Nothing
    }


-- | Optional. A means to provide context to assist the speech recognition.
gcvvstcSpeechContexts :: Lens' GoogleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig [GoogleCloudVideointelligenceV1p3beta1_SpeechContext]
gcvvstcSpeechContexts
  = lens _gcvvstcSpeechContexts
      (\ s a -> s{_gcvvstcSpeechContexts = a})
      . _Default
      . _Coerce

-- | Required. *Required* The language of the supplied audio as a
-- [BCP-47](https:\/\/www.rfc-editor.org\/rfc\/bcp\/bcp47.txt) language
-- tag. Example: \"en-US\". See [Language
-- Support](https:\/\/cloud.google.com\/speech\/docs\/languages) for a list
-- of the currently supported language codes.
gcvvstcLanguageCode :: Lens' GoogleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig (Maybe Text)
gcvvstcLanguageCode
  = lens _gcvvstcLanguageCode
      (\ s a -> s{_gcvvstcLanguageCode = a})

-- | Optional. For file formats, such as MXF or MKV, supporting multiple
-- audio tracks, specify up to two tracks. Default: track 0.
gcvvstcAudioTracks :: Lens' GoogleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig [Int32]
gcvvstcAudioTracks
  = lens _gcvvstcAudioTracks
      (\ s a -> s{_gcvvstcAudioTracks = a})
      . _Default
      . _Coerce

-- | Optional. If \'true\', adds punctuation to recognition result
-- hypotheses. This feature is only available in select languages. Setting
-- this for requests in other languages has no effect at all. The default
-- \'false\' value does not add punctuation to result hypotheses. NOTE:
-- \"This is currently offered as an experimental service, complimentary to
-- all users. In the future this may be exclusively available as a premium
-- feature.\"
gcvvstcEnableAutomaticPunctuation :: Lens' GoogleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig (Maybe Bool)
gcvvstcEnableAutomaticPunctuation
  = lens _gcvvstcEnableAutomaticPunctuation
      (\ s a -> s{_gcvvstcEnableAutomaticPunctuation = a})

-- | Optional. Maximum number of recognition hypotheses to be returned.
-- Specifically, the maximum number of \`SpeechRecognitionAlternative\`
-- messages within each \`SpeechTranscription\`. The server may return
-- fewer than \`max_alternatives\`. Valid values are \`0\`-\`30\`. A value
-- of \`0\` or \`1\` will return a maximum of one. If omitted, will return
-- a maximum of one.
gcvvstcMaxAlternatives :: Lens' GoogleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig (Maybe Int32)
gcvvstcMaxAlternatives
  = lens _gcvvstcMaxAlternatives
      (\ s a -> s{_gcvvstcMaxAlternatives = a})
      . mapping _Coerce

-- | Optional. If \'true\', enables speaker detection for each recognized
-- word in the top alternative of the recognition result using a
-- speaker_tag provided in the WordInfo. Note: When this is true, we send
-- all the words from the beginning of the audio for the top alternative in
-- every consecutive response. This is done in order to improve our speaker
-- tags as our models learn to identify the speakers in the conversation
-- over time.
gcvvstcEnableSpeakerDiarization :: Lens' GoogleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig (Maybe Bool)
gcvvstcEnableSpeakerDiarization
  = lens _gcvvstcEnableSpeakerDiarization
      (\ s a -> s{_gcvvstcEnableSpeakerDiarization = a})

-- | Optional. If set to \`true\`, the server will attempt to filter out
-- profanities, replacing all but the initial character in each filtered
-- word with asterisks, e.g. \"f***\". If set to \`false\` or omitted,
-- profanities won\'t be filtered out.
gcvvstcFilterProfanity :: Lens' GoogleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig (Maybe Bool)
gcvvstcFilterProfanity
  = lens _gcvvstcFilterProfanity
      (\ s a -> s{_gcvvstcFilterProfanity = a})

-- | Optional. If set, specifies the estimated number of speakers in the
-- conversation. If not set, defaults to \'2\'. Ignored unless
-- enable_speaker_diarization is set to true.
gcvvstcDiarizationSpeakerCount :: Lens' GoogleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig (Maybe Int32)
gcvvstcDiarizationSpeakerCount
  = lens _gcvvstcDiarizationSpeakerCount
      (\ s a -> s{_gcvvstcDiarizationSpeakerCount = a})
      . mapping _Coerce

-- | Optional. If \`true\`, the top result includes a list of words and the
-- confidence for those words. If \`false\`, no word-level confidence
-- information is returned. The default is \`false\`.
gcvvstcEnableWordConfidence :: Lens' GoogleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig (Maybe Bool)
gcvvstcEnableWordConfidence
  = lens _gcvvstcEnableWordConfidence
      (\ s a -> s{_gcvvstcEnableWordConfidence = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1SpeechTranscriptionConfig"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig'
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
           GoogleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig'{..}
          = object
              (catMaybes
                 [("speechContexts" .=) <$> _gcvvstcSpeechContexts,
                  ("languageCode" .=) <$> _gcvvstcLanguageCode,
                  ("audioTracks" .=) <$> _gcvvstcAudioTracks,
                  ("enableAutomaticPunctuation" .=) <$>
                    _gcvvstcEnableAutomaticPunctuation,
                  ("maxAlternatives" .=) <$> _gcvvstcMaxAlternatives,
                  ("enableSpeakerDiarization" .=) <$>
                    _gcvvstcEnableSpeakerDiarization,
                  ("filterProfanity" .=) <$> _gcvvstcFilterProfanity,
                  ("diarizationSpeakerCount" .=) <$>
                    _gcvvstcDiarizationSpeakerCount,
                  ("enableWordConfidence" .=) <$>
                    _gcvvstcEnableWordConfidence])

-- | A generic detected landmark represented by name in string format and a
-- 2D location.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_DetectedLandmark' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_DetectedLandmark =
  GoogleCloudVideointelligenceV1p3beta1_DetectedLandmark'
    { _gcvvdlConfidence :: !(Maybe (Textual Double))
    , _gcvvdlPoint :: !(Maybe GoogleCloudVideointelligenceV1p3beta1_NormalizedVertex)
    , _gcvvdlName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_DetectedLandmark' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvdlConfidence'
--
-- * 'gcvvdlPoint'
--
-- * 'gcvvdlName'
googleCloudVideointelligenceV1p3beta1_DetectedLandmark
    :: GoogleCloudVideointelligenceV1p3beta1_DetectedLandmark
googleCloudVideointelligenceV1p3beta1_DetectedLandmark =
  GoogleCloudVideointelligenceV1p3beta1_DetectedLandmark'
    {_gcvvdlConfidence = Nothing, _gcvvdlPoint = Nothing, _gcvvdlName = Nothing}


-- | The confidence score of the detected landmark. Range [0, 1].
gcvvdlConfidence :: Lens' GoogleCloudVideointelligenceV1p3beta1_DetectedLandmark (Maybe Double)
gcvvdlConfidence
  = lens _gcvvdlConfidence
      (\ s a -> s{_gcvvdlConfidence = a})
      . mapping _Coerce

-- | The 2D point of the detected landmark using the normalized image
-- coordindate system. The normalized coordinates have the range from 0 to
-- 1.
gcvvdlPoint :: Lens' GoogleCloudVideointelligenceV1p3beta1_DetectedLandmark (Maybe GoogleCloudVideointelligenceV1p3beta1_NormalizedVertex)
gcvvdlPoint
  = lens _gcvvdlPoint (\ s a -> s{_gcvvdlPoint = a})

-- | The name of this landmark, for example, left_hand, right_shoulder.
gcvvdlName :: Lens' GoogleCloudVideointelligenceV1p3beta1_DetectedLandmark (Maybe Text)
gcvvdlName
  = lens _gcvvdlName (\ s a -> s{_gcvvdlName = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_DetectedLandmark
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1DetectedLandmark"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_DetectedLandmark'
                   <$>
                   (o .:? "confidence") <*> (o .:? "point") <*>
                     (o .:? "name"))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_DetectedLandmark
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_DetectedLandmark'{..}
          = object
              (catMaybes
                 [("confidence" .=) <$> _gcvvdlConfidence,
                  ("point" .=) <$> _gcvvdlPoint,
                  ("name" .=) <$> _gcvvdlName])

-- | Deprecated. No effect.
--
-- /See:/ 'googleCloudVideointelligenceV1beta2_FaceFrame' smart constructor.
data GoogleCloudVideointelligenceV1beta2_FaceFrame =
  GoogleCloudVideointelligenceV1beta2_FaceFrame'
    { _gooTimeOffSet :: !(Maybe GDuration)
    , _gooNormalizedBoundingBoxes :: !(Maybe [GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_FaceFrame' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooTimeOffSet'
--
-- * 'gooNormalizedBoundingBoxes'
googleCloudVideointelligenceV1beta2_FaceFrame
    :: GoogleCloudVideointelligenceV1beta2_FaceFrame
googleCloudVideointelligenceV1beta2_FaceFrame =
  GoogleCloudVideointelligenceV1beta2_FaceFrame'
    {_gooTimeOffSet = Nothing, _gooNormalizedBoundingBoxes = Nothing}


-- | Time-offset, relative to the beginning of the video, corresponding to
-- the video frame for this location.
gooTimeOffSet :: Lens' GoogleCloudVideointelligenceV1beta2_FaceFrame (Maybe Scientific)
gooTimeOffSet
  = lens _gooTimeOffSet
      (\ s a -> s{_gooTimeOffSet = a})
      . mapping _GDuration

-- | Normalized Bounding boxes in a frame. There can be more than one boxes
-- if the same face is detected in multiple locations within the current
-- frame.
gooNormalizedBoundingBoxes :: Lens' GoogleCloudVideointelligenceV1beta2_FaceFrame [GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox]
gooNormalizedBoundingBoxes
  = lens _gooNormalizedBoundingBoxes
      (\ s a -> s{_gooNormalizedBoundingBoxes = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1beta2_FaceFrame
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1beta2FaceFrame"
              (\ o ->
                 GoogleCloudVideointelligenceV1beta2_FaceFrame' <$>
                   (o .:? "timeOffset") <*>
                     (o .:? "normalizedBoundingBoxes" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1beta2_FaceFrame
         where
        toJSON
          GoogleCloudVideointelligenceV1beta2_FaceFrame'{..}
          = object
              (catMaybes
                 [("timeOffset" .=) <$> _gooTimeOffSet,
                  ("normalizedBoundingBoxes" .=) <$>
                    _gooNormalizedBoundingBoxes])

-- | Annotations corresponding to one tracked object.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation =
  GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation'
    { _gcvvotaFrames :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame])
    , _gcvvotaConfidence :: !(Maybe (Textual Double))
    , _gcvvotaVersion :: !(Maybe Text)
    , _gcvvotaTrackId :: !(Maybe (Textual Int64))
    , _gcvvotaSegment :: !(Maybe GoogleCloudVideointelligenceV1p2beta1_VideoSegment)
    , _gcvvotaEntity :: !(Maybe GoogleCloudVideointelligenceV1p2beta1_Entity)
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
-- * 'gcvvotaVersion'
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
    , _gcvvotaVersion = Nothing
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

-- | Feature version.
gcvvotaVersion :: Lens' GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation (Maybe Text)
gcvvotaVersion
  = lens _gcvvotaVersion
      (\ s a -> s{_gcvvotaVersion = a})

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
                     <*> (o .:? "version")
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
                  ("version" .=) <$> _gcvvotaVersion,
                  ("trackId" .=) <$> _gcvvotaTrackId,
                  ("segment" .=) <$> _gcvvotaSegment,
                  ("entity" .=) <$> _gcvvotaEntity])

-- | Annotation results for a single video.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_VideoAnnotationResults' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults =
  GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults'
    { _gcvvvarsShotAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1p3beta1_VideoSegment])
    , _gcvvvarsShotLabelAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation])
    , _gcvvvarsFaceDetectionAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation])
    , _gcvvvarsFaceAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1p3beta1_FaceAnnotation])
    , _gcvvvarsCelebrityRecognitionAnnotations :: !(Maybe GoogleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation)
    , _gcvvvarsInputURI :: !(Maybe Text)
    , _gcvvvarsError :: !(Maybe GoogleRpc_Status)
    , _gcvvvarsShotPresenceLabelAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation])
    , _gcvvvarsPersonDetectionAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1p3beta1_PersonDetectionAnnotation])
    , _gcvvvarsObjectAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation])
    , _gcvvvarsFrameLabelAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation])
    , _gcvvvarsSpeechTranscriptions :: !(Maybe [GoogleCloudVideointelligenceV1p3beta1_SpeechTranscription])
    , _gcvvvarsSegmentPresenceLabelAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation])
    , _gcvvvarsLogoRecognitionAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation])
    , _gcvvvarsSegment :: !(Maybe GoogleCloudVideointelligenceV1p3beta1_VideoSegment)
    , _gcvvvarsTextAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1p3beta1_TextAnnotation])
    , _gcvvvarsSegmentLabelAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation])
    , _gcvvvarsExplicitAnnotation :: !(Maybe GoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvvarsShotAnnotations'
--
-- * 'gcvvvarsShotLabelAnnotations'
--
-- * 'gcvvvarsFaceDetectionAnnotations'
--
-- * 'gcvvvarsFaceAnnotations'
--
-- * 'gcvvvarsCelebrityRecognitionAnnotations'
--
-- * 'gcvvvarsInputURI'
--
-- * 'gcvvvarsError'
--
-- * 'gcvvvarsShotPresenceLabelAnnotations'
--
-- * 'gcvvvarsPersonDetectionAnnotations'
--
-- * 'gcvvvarsObjectAnnotations'
--
-- * 'gcvvvarsFrameLabelAnnotations'
--
-- * 'gcvvvarsSpeechTranscriptions'
--
-- * 'gcvvvarsSegmentPresenceLabelAnnotations'
--
-- * 'gcvvvarsLogoRecognitionAnnotations'
--
-- * 'gcvvvarsSegment'
--
-- * 'gcvvvarsTextAnnotations'
--
-- * 'gcvvvarsSegmentLabelAnnotations'
--
-- * 'gcvvvarsExplicitAnnotation'
googleCloudVideointelligenceV1p3beta1_VideoAnnotationResults
    :: GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults
googleCloudVideointelligenceV1p3beta1_VideoAnnotationResults =
  GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults'
    { _gcvvvarsShotAnnotations = Nothing
    , _gcvvvarsShotLabelAnnotations = Nothing
    , _gcvvvarsFaceDetectionAnnotations = Nothing
    , _gcvvvarsFaceAnnotations = Nothing
    , _gcvvvarsCelebrityRecognitionAnnotations = Nothing
    , _gcvvvarsInputURI = Nothing
    , _gcvvvarsError = Nothing
    , _gcvvvarsShotPresenceLabelAnnotations = Nothing
    , _gcvvvarsPersonDetectionAnnotations = Nothing
    , _gcvvvarsObjectAnnotations = Nothing
    , _gcvvvarsFrameLabelAnnotations = Nothing
    , _gcvvvarsSpeechTranscriptions = Nothing
    , _gcvvvarsSegmentPresenceLabelAnnotations = Nothing
    , _gcvvvarsLogoRecognitionAnnotations = Nothing
    , _gcvvvarsSegment = Nothing
    , _gcvvvarsTextAnnotations = Nothing
    , _gcvvvarsSegmentLabelAnnotations = Nothing
    , _gcvvvarsExplicitAnnotation = Nothing
    }


-- | Shot annotations. Each shot is represented as a video segment.
gcvvvarsShotAnnotations :: Lens' GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p3beta1_VideoSegment]
gcvvvarsShotAnnotations
  = lens _gcvvvarsShotAnnotations
      (\ s a -> s{_gcvvvarsShotAnnotations = a})
      . _Default
      . _Coerce

-- | Topical label annotations on shot level. There is exactly one element
-- for each unique label.
gcvvvarsShotLabelAnnotations :: Lens' GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation]
gcvvvarsShotLabelAnnotations
  = lens _gcvvvarsShotLabelAnnotations
      (\ s a -> s{_gcvvvarsShotLabelAnnotations = a})
      . _Default
      . _Coerce

-- | Face detection annotations.
gcvvvarsFaceDetectionAnnotations :: Lens' GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation]
gcvvvarsFaceDetectionAnnotations
  = lens _gcvvvarsFaceDetectionAnnotations
      (\ s a -> s{_gcvvvarsFaceDetectionAnnotations = a})
      . _Default
      . _Coerce

-- | Deprecated. Please use \`face_detection_annotations\` instead.
gcvvvarsFaceAnnotations :: Lens' GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p3beta1_FaceAnnotation]
gcvvvarsFaceAnnotations
  = lens _gcvvvarsFaceAnnotations
      (\ s a -> s{_gcvvvarsFaceAnnotations = a})
      . _Default
      . _Coerce

-- | Celebrity recognition annotations.
gcvvvarsCelebrityRecognitionAnnotations :: Lens' GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults (Maybe GoogleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation)
gcvvvarsCelebrityRecognitionAnnotations
  = lens _gcvvvarsCelebrityRecognitionAnnotations
      (\ s a ->
         s{_gcvvvarsCelebrityRecognitionAnnotations = a})

-- | Video file location in [Cloud
-- Storage](https:\/\/cloud.google.com\/storage\/).
gcvvvarsInputURI :: Lens' GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults (Maybe Text)
gcvvvarsInputURI
  = lens _gcvvvarsInputURI
      (\ s a -> s{_gcvvvarsInputURI = a})

-- | If set, indicates an error. Note that for a single
-- \`AnnotateVideoRequest\` some videos may succeed and some may fail.
gcvvvarsError :: Lens' GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults (Maybe GoogleRpc_Status)
gcvvvarsError
  = lens _gcvvvarsError
      (\ s a -> s{_gcvvvarsError = a})

-- | Presence label annotations on shot level. There is exactly one element
-- for each unique label. Compared to the existing topical
-- \`shot_label_annotations\`, this field presents more fine-grained,
-- shot-level labels detected in video content and is made available only
-- when the client sets \`LabelDetectionConfig.model\` to
-- \"builtin\/latest\" in the request.
gcvvvarsShotPresenceLabelAnnotations :: Lens' GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation]
gcvvvarsShotPresenceLabelAnnotations
  = lens _gcvvvarsShotPresenceLabelAnnotations
      (\ s a ->
         s{_gcvvvarsShotPresenceLabelAnnotations = a})
      . _Default
      . _Coerce

-- | Person detection annotations.
gcvvvarsPersonDetectionAnnotations :: Lens' GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p3beta1_PersonDetectionAnnotation]
gcvvvarsPersonDetectionAnnotations
  = lens _gcvvvarsPersonDetectionAnnotations
      (\ s a -> s{_gcvvvarsPersonDetectionAnnotations = a})
      . _Default
      . _Coerce

-- | Annotations for list of objects detected and tracked in video.
gcvvvarsObjectAnnotations :: Lens' GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation]
gcvvvarsObjectAnnotations
  = lens _gcvvvarsObjectAnnotations
      (\ s a -> s{_gcvvvarsObjectAnnotations = a})
      . _Default
      . _Coerce

-- | Label annotations on frame level. There is exactly one element for each
-- unique label.
gcvvvarsFrameLabelAnnotations :: Lens' GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation]
gcvvvarsFrameLabelAnnotations
  = lens _gcvvvarsFrameLabelAnnotations
      (\ s a -> s{_gcvvvarsFrameLabelAnnotations = a})
      . _Default
      . _Coerce

-- | Speech transcription.
gcvvvarsSpeechTranscriptions :: Lens' GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p3beta1_SpeechTranscription]
gcvvvarsSpeechTranscriptions
  = lens _gcvvvarsSpeechTranscriptions
      (\ s a -> s{_gcvvvarsSpeechTranscriptions = a})
      . _Default
      . _Coerce

-- | Presence label annotations on video level or user-specified segment
-- level. There is exactly one element for each unique label. Compared to
-- the existing topical \`segment_label_annotations\`, this field presents
-- more fine-grained, segment-level labels detected in video content and is
-- made available only when the client sets \`LabelDetectionConfig.model\`
-- to \"builtin\/latest\" in the request.
gcvvvarsSegmentPresenceLabelAnnotations :: Lens' GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation]
gcvvvarsSegmentPresenceLabelAnnotations
  = lens _gcvvvarsSegmentPresenceLabelAnnotations
      (\ s a ->
         s{_gcvvvarsSegmentPresenceLabelAnnotations = a})
      . _Default
      . _Coerce

-- | Annotations for list of logos detected, tracked and recognized in video.
gcvvvarsLogoRecognitionAnnotations :: Lens' GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation]
gcvvvarsLogoRecognitionAnnotations
  = lens _gcvvvarsLogoRecognitionAnnotations
      (\ s a -> s{_gcvvvarsLogoRecognitionAnnotations = a})
      . _Default
      . _Coerce

-- | Video segment on which the annotation is run.
gcvvvarsSegment :: Lens' GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults (Maybe GoogleCloudVideointelligenceV1p3beta1_VideoSegment)
gcvvvarsSegment
  = lens _gcvvvarsSegment
      (\ s a -> s{_gcvvvarsSegment = a})

-- | OCR text detection and tracking. Annotations for list of detected text
-- snippets. Each will have list of frame information associated with it.
gcvvvarsTextAnnotations :: Lens' GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p3beta1_TextAnnotation]
gcvvvarsTextAnnotations
  = lens _gcvvvarsTextAnnotations
      (\ s a -> s{_gcvvvarsTextAnnotations = a})
      . _Default
      . _Coerce

-- | Topical label annotations on video level or user-specified segment
-- level. There is exactly one element for each unique label.
gcvvvarsSegmentLabelAnnotations :: Lens' GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation]
gcvvvarsSegmentLabelAnnotations
  = lens _gcvvvarsSegmentLabelAnnotations
      (\ s a -> s{_gcvvvarsSegmentLabelAnnotations = a})
      . _Default
      . _Coerce

-- | Explicit content annotation.
gcvvvarsExplicitAnnotation :: Lens' GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults (Maybe GoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation)
gcvvvarsExplicitAnnotation
  = lens _gcvvvarsExplicitAnnotation
      (\ s a -> s{_gcvvvarsExplicitAnnotation = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults'
                   <$>
                   (o .:? "shotAnnotations" .!= mempty) <*>
                     (o .:? "shotLabelAnnotations" .!= mempty)
                     <*> (o .:? "faceDetectionAnnotations" .!= mempty)
                     <*> (o .:? "faceAnnotations" .!= mempty)
                     <*> (o .:? "celebrityRecognitionAnnotations")
                     <*> (o .:? "inputUri")
                     <*> (o .:? "error")
                     <*> (o .:? "shotPresenceLabelAnnotations" .!= mempty)
                     <*> (o .:? "personDetectionAnnotations" .!= mempty)
                     <*> (o .:? "objectAnnotations" .!= mempty)
                     <*> (o .:? "frameLabelAnnotations" .!= mempty)
                     <*> (o .:? "speechTranscriptions" .!= mempty)
                     <*>
                     (o .:? "segmentPresenceLabelAnnotations" .!= mempty)
                     <*> (o .:? "logoRecognitionAnnotations" .!= mempty)
                     <*> (o .:? "segment")
                     <*> (o .:? "textAnnotations" .!= mempty)
                     <*> (o .:? "segmentLabelAnnotations" .!= mempty)
                     <*> (o .:? "explicitAnnotation"))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults'{..}
          = object
              (catMaybes
                 [("shotAnnotations" .=) <$> _gcvvvarsShotAnnotations,
                  ("shotLabelAnnotations" .=) <$>
                    _gcvvvarsShotLabelAnnotations,
                  ("faceDetectionAnnotations" .=) <$>
                    _gcvvvarsFaceDetectionAnnotations,
                  ("faceAnnotations" .=) <$> _gcvvvarsFaceAnnotations,
                  ("celebrityRecognitionAnnotations" .=) <$>
                    _gcvvvarsCelebrityRecognitionAnnotations,
                  ("inputUri" .=) <$> _gcvvvarsInputURI,
                  ("error" .=) <$> _gcvvvarsError,
                  ("shotPresenceLabelAnnotations" .=) <$>
                    _gcvvvarsShotPresenceLabelAnnotations,
                  ("personDetectionAnnotations" .=) <$>
                    _gcvvvarsPersonDetectionAnnotations,
                  ("objectAnnotations" .=) <$>
                    _gcvvvarsObjectAnnotations,
                  ("frameLabelAnnotations" .=) <$>
                    _gcvvvarsFrameLabelAnnotations,
                  ("speechTranscriptions" .=) <$>
                    _gcvvvarsSpeechTranscriptions,
                  ("segmentPresenceLabelAnnotations" .=) <$>
                    _gcvvvarsSegmentPresenceLabelAnnotations,
                  ("logoRecognitionAnnotations" .=) <$>
                    _gcvvvarsLogoRecognitionAnnotations,
                  ("segment" .=) <$> _gcvvvarsSegment,
                  ("textAnnotations" .=) <$> _gcvvvarsTextAnnotations,
                  ("segmentLabelAnnotations" .=) <$>
                    _gcvvvarsSegmentLabelAnnotations,
                  ("explicitAnnotation" .=) <$>
                    _gcvvvarsExplicitAnnotation])

-- | Person detection annotation per video.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_PersonDetectionAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_PersonDetectionAnnotation =
  GoogleCloudVideointelligenceV1p2beta1_PersonDetectionAnnotation'
    { _gcvvpdaTracks :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_Track])
    , _gcvvpdaVersion :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_PersonDetectionAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvpdaTracks'
--
-- * 'gcvvpdaVersion'
googleCloudVideointelligenceV1p2beta1_PersonDetectionAnnotation
    :: GoogleCloudVideointelligenceV1p2beta1_PersonDetectionAnnotation
googleCloudVideointelligenceV1p2beta1_PersonDetectionAnnotation =
  GoogleCloudVideointelligenceV1p2beta1_PersonDetectionAnnotation'
    {_gcvvpdaTracks = Nothing, _gcvvpdaVersion = Nothing}


-- | The detected tracks of a person.
gcvvpdaTracks :: Lens' GoogleCloudVideointelligenceV1p2beta1_PersonDetectionAnnotation [GoogleCloudVideointelligenceV1p2beta1_Track]
gcvvpdaTracks
  = lens _gcvvpdaTracks
      (\ s a -> s{_gcvvpdaTracks = a})
      . _Default
      . _Coerce

-- | Feature version.
gcvvpdaVersion :: Lens' GoogleCloudVideointelligenceV1p2beta1_PersonDetectionAnnotation (Maybe Text)
gcvvpdaVersion
  = lens _gcvvpdaVersion
      (\ s a -> s{_gcvvpdaVersion = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p2beta1_PersonDetectionAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p2beta1PersonDetectionAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1p2beta1_PersonDetectionAnnotation'
                   <$>
                   (o .:? "tracks" .!= mempty) <*> (o .:? "version"))

instance ToJSON
           GoogleCloudVideointelligenceV1p2beta1_PersonDetectionAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1p2beta1_PersonDetectionAnnotation'{..}
          = object
              (catMaybes
                 [("tracks" .=) <$> _gcvvpdaTracks,
                  ("version" .=) <$> _gcvvpdaVersion])

-- | A generic detected landmark represented by name in string format and a
-- 2D location.
--
-- /See:/ 'googleCloudVideointelligenceV1_DetectedLandmark' smart constructor.
data GoogleCloudVideointelligenceV1_DetectedLandmark =
  GoogleCloudVideointelligenceV1_DetectedLandmark'
    { _gcvvdlcConfidence :: !(Maybe (Textual Double))
    , _gcvvdlcPoint :: !(Maybe GoogleCloudVideointelligenceV1_NormalizedVertex)
    , _gcvvdlcName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1_DetectedLandmark' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvdlcConfidence'
--
-- * 'gcvvdlcPoint'
--
-- * 'gcvvdlcName'
googleCloudVideointelligenceV1_DetectedLandmark
    :: GoogleCloudVideointelligenceV1_DetectedLandmark
googleCloudVideointelligenceV1_DetectedLandmark =
  GoogleCloudVideointelligenceV1_DetectedLandmark'
    { _gcvvdlcConfidence = Nothing
    , _gcvvdlcPoint = Nothing
    , _gcvvdlcName = Nothing
    }


-- | The confidence score of the detected landmark. Range [0, 1].
gcvvdlcConfidence :: Lens' GoogleCloudVideointelligenceV1_DetectedLandmark (Maybe Double)
gcvvdlcConfidence
  = lens _gcvvdlcConfidence
      (\ s a -> s{_gcvvdlcConfidence = a})
      . mapping _Coerce

-- | The 2D point of the detected landmark using the normalized image
-- coordindate system. The normalized coordinates have the range from 0 to
-- 1.
gcvvdlcPoint :: Lens' GoogleCloudVideointelligenceV1_DetectedLandmark (Maybe GoogleCloudVideointelligenceV1_NormalizedVertex)
gcvvdlcPoint
  = lens _gcvvdlcPoint (\ s a -> s{_gcvvdlcPoint = a})

-- | The name of this landmark, for example, left_hand, right_shoulder.
gcvvdlcName :: Lens' GoogleCloudVideointelligenceV1_DetectedLandmark (Maybe Text)
gcvvdlcName
  = lens _gcvvdlcName (\ s a -> s{_gcvvdlcName = a})

instance FromJSON
           GoogleCloudVideointelligenceV1_DetectedLandmark
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1DetectedLandmark"
              (\ o ->
                 GoogleCloudVideointelligenceV1_DetectedLandmark' <$>
                   (o .:? "confidence") <*> (o .:? "point") <*>
                     (o .:? "name"))

instance ToJSON
           GoogleCloudVideointelligenceV1_DetectedLandmark
         where
        toJSON
          GoogleCloudVideointelligenceV1_DetectedLandmark'{..}
          = object
              (catMaybes
                 [("confidence" .=) <$> _gcvvdlcConfidence,
                  ("point" .=) <$> _gcvvdlcPoint,
                  ("name" .=) <$> _gcvvdlcName])

-- | Config for FACE_DETECTION.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_FaceDetectionConfig' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_FaceDetectionConfig =
  GoogleCloudVideointelligenceV1p3beta1_FaceDetectionConfig'
    { _gcvvfdcModel :: !(Maybe Text)
    , _gcvvfdcIncludeBoundingBoxes :: !(Maybe Bool)
    , _gcvvfdcIncludeAttributes :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_FaceDetectionConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvfdcModel'
--
-- * 'gcvvfdcIncludeBoundingBoxes'
--
-- * 'gcvvfdcIncludeAttributes'
googleCloudVideointelligenceV1p3beta1_FaceDetectionConfig
    :: GoogleCloudVideointelligenceV1p3beta1_FaceDetectionConfig
googleCloudVideointelligenceV1p3beta1_FaceDetectionConfig =
  GoogleCloudVideointelligenceV1p3beta1_FaceDetectionConfig'
    { _gcvvfdcModel = Nothing
    , _gcvvfdcIncludeBoundingBoxes = Nothing
    , _gcvvfdcIncludeAttributes = Nothing
    }


-- | Model to use for face detection. Supported values: \"builtin\/stable\"
-- (the default if unset) and \"builtin\/latest\".
gcvvfdcModel :: Lens' GoogleCloudVideointelligenceV1p3beta1_FaceDetectionConfig (Maybe Text)
gcvvfdcModel
  = lens _gcvvfdcModel (\ s a -> s{_gcvvfdcModel = a})

-- | Whether bounding boxes are included in the face annotation output.
gcvvfdcIncludeBoundingBoxes :: Lens' GoogleCloudVideointelligenceV1p3beta1_FaceDetectionConfig (Maybe Bool)
gcvvfdcIncludeBoundingBoxes
  = lens _gcvvfdcIncludeBoundingBoxes
      (\ s a -> s{_gcvvfdcIncludeBoundingBoxes = a})

-- | Whether to enable face attributes detection, such as glasses,
-- dark_glasses, mouth_open etc. Ignored if \'include_bounding_boxes\' is
-- set to false.
gcvvfdcIncludeAttributes :: Lens' GoogleCloudVideointelligenceV1p3beta1_FaceDetectionConfig (Maybe Bool)
gcvvfdcIncludeAttributes
  = lens _gcvvfdcIncludeAttributes
      (\ s a -> s{_gcvvfdcIncludeAttributes = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_FaceDetectionConfig
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1FaceDetectionConfig"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_FaceDetectionConfig'
                   <$>
                   (o .:? "model") <*> (o .:? "includeBoundingBoxes")
                     <*> (o .:? "includeAttributes"))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_FaceDetectionConfig
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_FaceDetectionConfig'{..}
          = object
              (catMaybes
                 [("model" .=) <$> _gcvvfdcModel,
                  ("includeBoundingBoxes" .=) <$>
                    _gcvvfdcIncludeBoundingBoxes,
                  ("includeAttributes" .=) <$>
                    _gcvvfdcIncludeAttributes])

-- | Person detection annotation per video.
--
-- /See:/ 'googleCloudVideointelligenceV1p1beta1_PersonDetectionAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_PersonDetectionAnnotation =
  GoogleCloudVideointelligenceV1p1beta1_PersonDetectionAnnotation'
    { _gcvvpdacTracks :: !(Maybe [GoogleCloudVideointelligenceV1p1beta1_Track])
    , _gcvvpdacVersion :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_PersonDetectionAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvpdacTracks'
--
-- * 'gcvvpdacVersion'
googleCloudVideointelligenceV1p1beta1_PersonDetectionAnnotation
    :: GoogleCloudVideointelligenceV1p1beta1_PersonDetectionAnnotation
googleCloudVideointelligenceV1p1beta1_PersonDetectionAnnotation =
  GoogleCloudVideointelligenceV1p1beta1_PersonDetectionAnnotation'
    {_gcvvpdacTracks = Nothing, _gcvvpdacVersion = Nothing}


-- | The detected tracks of a person.
gcvvpdacTracks :: Lens' GoogleCloudVideointelligenceV1p1beta1_PersonDetectionAnnotation [GoogleCloudVideointelligenceV1p1beta1_Track]
gcvvpdacTracks
  = lens _gcvvpdacTracks
      (\ s a -> s{_gcvvpdacTracks = a})
      . _Default
      . _Coerce

-- | Feature version.
gcvvpdacVersion :: Lens' GoogleCloudVideointelligenceV1p1beta1_PersonDetectionAnnotation (Maybe Text)
gcvvpdacVersion
  = lens _gcvvpdacVersion
      (\ s a -> s{_gcvvpdacVersion = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p1beta1_PersonDetectionAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p1beta1PersonDetectionAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1p1beta1_PersonDetectionAnnotation'
                   <$>
                   (o .:? "tracks" .!= mempty) <*> (o .:? "version"))

instance ToJSON
           GoogleCloudVideointelligenceV1p1beta1_PersonDetectionAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1p1beta1_PersonDetectionAnnotation'{..}
          = object
              (catMaybes
                 [("tracks" .=) <$> _gcvvpdacTracks,
                  ("version" .=) <$> _gcvvpdacVersion])

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

-- | Video frame level annotations for object detection and tracking. This
-- field stores per frame location, time offset, and confidence.
--
-- /See:/ 'googleCloudVideointelligenceV1beta2_ObjectTrackingFrame' smart constructor.
data GoogleCloudVideointelligenceV1beta2_ObjectTrackingFrame =
  GoogleCloudVideointelligenceV1beta2_ObjectTrackingFrame'
    { _gcvvotfcTimeOffSet :: !(Maybe GDuration)
    , _gcvvotfcNormalizedBoundingBox :: !(Maybe GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_ObjectTrackingFrame' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvotfcTimeOffSet'
--
-- * 'gcvvotfcNormalizedBoundingBox'
googleCloudVideointelligenceV1beta2_ObjectTrackingFrame
    :: GoogleCloudVideointelligenceV1beta2_ObjectTrackingFrame
googleCloudVideointelligenceV1beta2_ObjectTrackingFrame =
  GoogleCloudVideointelligenceV1beta2_ObjectTrackingFrame'
    {_gcvvotfcTimeOffSet = Nothing, _gcvvotfcNormalizedBoundingBox = Nothing}


-- | The timestamp of the frame in microseconds.
gcvvotfcTimeOffSet :: Lens' GoogleCloudVideointelligenceV1beta2_ObjectTrackingFrame (Maybe Scientific)
gcvvotfcTimeOffSet
  = lens _gcvvotfcTimeOffSet
      (\ s a -> s{_gcvvotfcTimeOffSet = a})
      . mapping _GDuration

-- | The normalized bounding box location of this object track for the frame.
gcvvotfcNormalizedBoundingBox :: Lens' GoogleCloudVideointelligenceV1beta2_ObjectTrackingFrame (Maybe GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox)
gcvvotfcNormalizedBoundingBox
  = lens _gcvvotfcNormalizedBoundingBox
      (\ s a -> s{_gcvvotfcNormalizedBoundingBox = a})

instance FromJSON
           GoogleCloudVideointelligenceV1beta2_ObjectTrackingFrame
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1beta2ObjectTrackingFrame"
              (\ o ->
                 GoogleCloudVideointelligenceV1beta2_ObjectTrackingFrame'
                   <$>
                   (o .:? "timeOffset") <*>
                     (o .:? "normalizedBoundingBox"))

instance ToJSON
           GoogleCloudVideointelligenceV1beta2_ObjectTrackingFrame
         where
        toJSON
          GoogleCloudVideointelligenceV1beta2_ObjectTrackingFrame'{..}
          = object
              (catMaybes
                 [("timeOffset" .=) <$> _gcvvotfcTimeOffSet,
                  ("normalizedBoundingBox" .=) <$>
                    _gcvvotfcNormalizedBoundingBox])

-- | A track of an object instance.
--
-- /See:/ 'googleCloudVideointelligenceV1_Track' smart constructor.
data GoogleCloudVideointelligenceV1_Track =
  GoogleCloudVideointelligenceV1_Track'
    { _gcvvtConfidence :: !(Maybe (Textual Double))
    , _gcvvtAttributes :: !(Maybe [GoogleCloudVideointelligenceV1_DetectedAttribute])
    , _gcvvtSegment :: !(Maybe GoogleCloudVideointelligenceV1_VideoSegment)
    , _gcvvtTimestampedObjects :: !(Maybe [GoogleCloudVideointelligenceV1_TimestampedObject])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1_Track' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvtConfidence'
--
-- * 'gcvvtAttributes'
--
-- * 'gcvvtSegment'
--
-- * 'gcvvtTimestampedObjects'
googleCloudVideointelligenceV1_Track
    :: GoogleCloudVideointelligenceV1_Track
googleCloudVideointelligenceV1_Track =
  GoogleCloudVideointelligenceV1_Track'
    { _gcvvtConfidence = Nothing
    , _gcvvtAttributes = Nothing
    , _gcvvtSegment = Nothing
    , _gcvvtTimestampedObjects = Nothing
    }


-- | Optional. The confidence score of the tracked object.
gcvvtConfidence :: Lens' GoogleCloudVideointelligenceV1_Track (Maybe Double)
gcvvtConfidence
  = lens _gcvvtConfidence
      (\ s a -> s{_gcvvtConfidence = a})
      . mapping _Coerce

-- | Optional. Attributes in the track level.
gcvvtAttributes :: Lens' GoogleCloudVideointelligenceV1_Track [GoogleCloudVideointelligenceV1_DetectedAttribute]
gcvvtAttributes
  = lens _gcvvtAttributes
      (\ s a -> s{_gcvvtAttributes = a})
      . _Default
      . _Coerce

-- | Video segment of a track.
gcvvtSegment :: Lens' GoogleCloudVideointelligenceV1_Track (Maybe GoogleCloudVideointelligenceV1_VideoSegment)
gcvvtSegment
  = lens _gcvvtSegment (\ s a -> s{_gcvvtSegment = a})

-- | The object with timestamp and attributes per frame in the track.
gcvvtTimestampedObjects :: Lens' GoogleCloudVideointelligenceV1_Track [GoogleCloudVideointelligenceV1_TimestampedObject]
gcvvtTimestampedObjects
  = lens _gcvvtTimestampedObjects
      (\ s a -> s{_gcvvtTimestampedObjects = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1_Track
         where
        parseJSON
          = withObject "GoogleCloudVideointelligenceV1Track"
              (\ o ->
                 GoogleCloudVideointelligenceV1_Track' <$>
                   (o .:? "confidence") <*>
                     (o .:? "attributes" .!= mempty)
                     <*> (o .:? "segment")
                     <*> (o .:? "timestampedObjects" .!= mempty))

instance ToJSON GoogleCloudVideointelligenceV1_Track
         where
        toJSON GoogleCloudVideointelligenceV1_Track'{..}
          = object
              (catMaybes
                 [("confidence" .=) <$> _gcvvtConfidence,
                  ("attributes" .=) <$> _gcvvtAttributes,
                  ("segment" .=) <$> _gcvvtSegment,
                  ("timestampedObjects" .=) <$>
                    _gcvvtTimestampedObjects])

-- | Video segment level annotation results for label detection.
--
-- /See:/ 'googleCloudVideointelligenceV1p1beta1_LabelSegment' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_LabelSegment =
  GoogleCloudVideointelligenceV1p1beta1_LabelSegment'
    { _gcvvlsConfidence :: !(Maybe (Textual Double))
    , _gcvvlsSegment :: !(Maybe GoogleCloudVideointelligenceV1p1beta1_VideoSegment)
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

-- | Provides \"hints\" to the speech recognizer to favor specific words and
-- phrases in the results.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_SpeechContext' smart constructor.
newtype GoogleCloudVideointelligenceV1p3beta1_SpeechContext =
  GoogleCloudVideointelligenceV1p3beta1_SpeechContext'
    { _gcvvscPhrases :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_SpeechContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvscPhrases'
googleCloudVideointelligenceV1p3beta1_SpeechContext
    :: GoogleCloudVideointelligenceV1p3beta1_SpeechContext
googleCloudVideointelligenceV1p3beta1_SpeechContext =
  GoogleCloudVideointelligenceV1p3beta1_SpeechContext'
    {_gcvvscPhrases = Nothing}


-- | Optional. A list of strings containing words and phrases \"hints\" so
-- that the speech recognition is more likely to recognize them. This can
-- be used to improve the accuracy for specific words and phrases, for
-- example, if specific commands are typically spoken by the user. This can
-- also be used to add additional words to the vocabulary of the
-- recognizer. See [usage
-- limits](https:\/\/cloud.google.com\/speech\/limits#content).
gcvvscPhrases :: Lens' GoogleCloudVideointelligenceV1p3beta1_SpeechContext [Text]
gcvvscPhrases
  = lens _gcvvscPhrases
      (\ s a -> s{_gcvvscPhrases = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_SpeechContext
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1SpeechContext"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_SpeechContext'
                   <$> (o .:? "phrases" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_SpeechContext
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_SpeechContext'{..}
          = object
              (catMaybes [("phrases" .=) <$> _gcvvscPhrases])

-- | A track of an object instance.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_Track' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_Track =
  GoogleCloudVideointelligenceV1p3beta1_Track'
    { _gcvvtcConfidence :: !(Maybe (Textual Double))
    , _gcvvtcAttributes :: !(Maybe [GoogleCloudVideointelligenceV1p3beta1_DetectedAttribute])
    , _gcvvtcSegment :: !(Maybe GoogleCloudVideointelligenceV1p3beta1_VideoSegment)
    , _gcvvtcTimestampedObjects :: !(Maybe [GoogleCloudVideointelligenceV1p3beta1_TimestampedObject])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_Track' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvtcConfidence'
--
-- * 'gcvvtcAttributes'
--
-- * 'gcvvtcSegment'
--
-- * 'gcvvtcTimestampedObjects'
googleCloudVideointelligenceV1p3beta1_Track
    :: GoogleCloudVideointelligenceV1p3beta1_Track
googleCloudVideointelligenceV1p3beta1_Track =
  GoogleCloudVideointelligenceV1p3beta1_Track'
    { _gcvvtcConfidence = Nothing
    , _gcvvtcAttributes = Nothing
    , _gcvvtcSegment = Nothing
    , _gcvvtcTimestampedObjects = Nothing
    }


-- | Optional. The confidence score of the tracked object.
gcvvtcConfidence :: Lens' GoogleCloudVideointelligenceV1p3beta1_Track (Maybe Double)
gcvvtcConfidence
  = lens _gcvvtcConfidence
      (\ s a -> s{_gcvvtcConfidence = a})
      . mapping _Coerce

-- | Optional. Attributes in the track level.
gcvvtcAttributes :: Lens' GoogleCloudVideointelligenceV1p3beta1_Track [GoogleCloudVideointelligenceV1p3beta1_DetectedAttribute]
gcvvtcAttributes
  = lens _gcvvtcAttributes
      (\ s a -> s{_gcvvtcAttributes = a})
      . _Default
      . _Coerce

-- | Video segment of a track.
gcvvtcSegment :: Lens' GoogleCloudVideointelligenceV1p3beta1_Track (Maybe GoogleCloudVideointelligenceV1p3beta1_VideoSegment)
gcvvtcSegment
  = lens _gcvvtcSegment
      (\ s a -> s{_gcvvtcSegment = a})

-- | The object with timestamp and attributes per frame in the track.
gcvvtcTimestampedObjects :: Lens' GoogleCloudVideointelligenceV1p3beta1_Track [GoogleCloudVideointelligenceV1p3beta1_TimestampedObject]
gcvvtcTimestampedObjects
  = lens _gcvvtcTimestampedObjects
      (\ s a -> s{_gcvvtcTimestampedObjects = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_Track
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1Track"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_Track' <$>
                   (o .:? "confidence") <*>
                     (o .:? "attributes" .!= mempty)
                     <*> (o .:? "segment")
                     <*> (o .:? "timestampedObjects" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_Track
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_Track'{..}
          = object
              (catMaybes
                 [("confidence" .=) <$> _gcvvtcConfidence,
                  ("attributes" .=) <$> _gcvvtcAttributes,
                  ("segment" .=) <$> _gcvvtcSegment,
                  ("timestampedObjects" .=) <$>
                    _gcvvtcTimestampedObjects])

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

-- | A generic detected attribute represented by name in string format.
--
-- /See:/ 'googleCloudVideointelligenceV1beta2_DetectedAttribute' smart constructor.
data GoogleCloudVideointelligenceV1beta2_DetectedAttribute =
  GoogleCloudVideointelligenceV1beta2_DetectedAttribute'
    { _gcvvdaValue :: !(Maybe Text)
    , _gcvvdaConfidence :: !(Maybe (Textual Double))
    , _gcvvdaName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_DetectedAttribute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvdaValue'
--
-- * 'gcvvdaConfidence'
--
-- * 'gcvvdaName'
googleCloudVideointelligenceV1beta2_DetectedAttribute
    :: GoogleCloudVideointelligenceV1beta2_DetectedAttribute
googleCloudVideointelligenceV1beta2_DetectedAttribute =
  GoogleCloudVideointelligenceV1beta2_DetectedAttribute'
    {_gcvvdaValue = Nothing, _gcvvdaConfidence = Nothing, _gcvvdaName = Nothing}


-- | Text value of the detection result. For example, the value for
-- \"HairColor\" can be \"black\", \"blonde\", etc.
gcvvdaValue :: Lens' GoogleCloudVideointelligenceV1beta2_DetectedAttribute (Maybe Text)
gcvvdaValue
  = lens _gcvvdaValue (\ s a -> s{_gcvvdaValue = a})

-- | Detected attribute confidence. Range [0, 1].
gcvvdaConfidence :: Lens' GoogleCloudVideointelligenceV1beta2_DetectedAttribute (Maybe Double)
gcvvdaConfidence
  = lens _gcvvdaConfidence
      (\ s a -> s{_gcvvdaConfidence = a})
      . mapping _Coerce

-- | The name of the attribute, for example, glasses, dark_glasses,
-- mouth_open. A full list of supported type names will be provided in the
-- document.
gcvvdaName :: Lens' GoogleCloudVideointelligenceV1beta2_DetectedAttribute (Maybe Text)
gcvvdaName
  = lens _gcvvdaName (\ s a -> s{_gcvvdaName = a})

instance FromJSON
           GoogleCloudVideointelligenceV1beta2_DetectedAttribute
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1beta2DetectedAttribute"
              (\ o ->
                 GoogleCloudVideointelligenceV1beta2_DetectedAttribute'
                   <$>
                   (o .:? "value") <*> (o .:? "confidence") <*>
                     (o .:? "name"))

instance ToJSON
           GoogleCloudVideointelligenceV1beta2_DetectedAttribute
         where
        toJSON
          GoogleCloudVideointelligenceV1beta2_DetectedAttribute'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _gcvvdaValue,
                  ("confidence" .=) <$> _gcvvdaConfidence,
                  ("name" .=) <$> _gcvvdaName])

-- | Annotation progress for a single video.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress =
  GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress'
    { _gcvvvapcFeature :: !(Maybe GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgressFeature)
    , _gcvvvapcStartTime :: !(Maybe DateTime')
    , _gcvvvapcInputURI :: !(Maybe Text)
    , _gcvvvapcProgressPercent :: !(Maybe (Textual Int32))
    , _gcvvvapcUpdateTime :: !(Maybe DateTime')
    , _gcvvvapcSegment :: !(Maybe GoogleCloudVideointelligenceV1p2beta1_VideoSegment)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvvapcFeature'
--
-- * 'gcvvvapcStartTime'
--
-- * 'gcvvvapcInputURI'
--
-- * 'gcvvvapcProgressPercent'
--
-- * 'gcvvvapcUpdateTime'
--
-- * 'gcvvvapcSegment'
googleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress
    :: GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress
googleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress =
  GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress'
    { _gcvvvapcFeature = Nothing
    , _gcvvvapcStartTime = Nothing
    , _gcvvvapcInputURI = Nothing
    , _gcvvvapcProgressPercent = Nothing
    , _gcvvvapcUpdateTime = Nothing
    , _gcvvvapcSegment = Nothing
    }


-- | Specifies which feature is being tracked if the request contains more
-- than one feature.
gcvvvapcFeature :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress (Maybe GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgressFeature)
gcvvvapcFeature
  = lens _gcvvvapcFeature
      (\ s a -> s{_gcvvvapcFeature = a})

-- | Time when the request was received.
gcvvvapcStartTime :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress (Maybe UTCTime)
gcvvvapcStartTime
  = lens _gcvvvapcStartTime
      (\ s a -> s{_gcvvvapcStartTime = a})
      . mapping _DateTime

-- | Video file location in [Cloud
-- Storage](https:\/\/cloud.google.com\/storage\/).
gcvvvapcInputURI :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress (Maybe Text)
gcvvvapcInputURI
  = lens _gcvvvapcInputURI
      (\ s a -> s{_gcvvvapcInputURI = a})

-- | Approximate percentage processed thus far. Guaranteed to be 100 when
-- fully processed.
gcvvvapcProgressPercent :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress (Maybe Int32)
gcvvvapcProgressPercent
  = lens _gcvvvapcProgressPercent
      (\ s a -> s{_gcvvvapcProgressPercent = a})
      . mapping _Coerce

-- | Time of the most recent update.
gcvvvapcUpdateTime :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress (Maybe UTCTime)
gcvvvapcUpdateTime
  = lens _gcvvvapcUpdateTime
      (\ s a -> s{_gcvvvapcUpdateTime = a})
      . mapping _DateTime

-- | Specifies which segment is being tracked if the request contains more
-- than one segment.
gcvvvapcSegment :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress (Maybe GoogleCloudVideointelligenceV1p2beta1_VideoSegment)
gcvvvapcSegment
  = lens _gcvvvapcSegment
      (\ s a -> s{_gcvvvapcSegment = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress"
              (\ o ->
                 GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress'
                   <$>
                   (o .:? "feature") <*> (o .:? "startTime") <*>
                     (o .:? "inputUri")
                     <*> (o .:? "progressPercent")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "segment"))

instance ToJSON
           GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress
         where
        toJSON
          GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress'{..}
          = object
              (catMaybes
                 [("feature" .=) <$> _gcvvvapcFeature,
                  ("startTime" .=) <$> _gcvvvapcStartTime,
                  ("inputUri" .=) <$> _gcvvvapcInputURI,
                  ("progressPercent" .=) <$> _gcvvvapcProgressPercent,
                  ("updateTime" .=) <$> _gcvvvapcUpdateTime,
                  ("segment" .=) <$> _gcvvvapcSegment])

-- | Video frame level annotation results for explicit content.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_ExplicitContentFrame' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame =
  GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame'
    { _gcvvecfcTimeOffSet :: !(Maybe GDuration)
    , _gcvvecfcPornographyLikelihood :: !(Maybe GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFramePornographyLikelihood)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvecfcTimeOffSet'
--
-- * 'gcvvecfcPornographyLikelihood'
googleCloudVideointelligenceV1p3beta1_ExplicitContentFrame
    :: GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame
googleCloudVideointelligenceV1p3beta1_ExplicitContentFrame =
  GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame'
    {_gcvvecfcTimeOffSet = Nothing, _gcvvecfcPornographyLikelihood = Nothing}


-- | Time-offset, relative to the beginning of the video, corresponding to
-- the video frame for this location.
gcvvecfcTimeOffSet :: Lens' GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame (Maybe Scientific)
gcvvecfcTimeOffSet
  = lens _gcvvecfcTimeOffSet
      (\ s a -> s{_gcvvecfcTimeOffSet = a})
      . mapping _GDuration

-- | Likelihood of the pornography content..
gcvvecfcPornographyLikelihood :: Lens' GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame (Maybe GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFramePornographyLikelihood)
gcvvecfcPornographyLikelihood
  = lens _gcvvecfcPornographyLikelihood
      (\ s a -> s{_gcvvecfcPornographyLikelihood = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame'
                   <$>
                   (o .:? "timeOffset") <*>
                     (o .:? "pornographyLikelihood"))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame'{..}
          = object
              (catMaybes
                 [("timeOffset" .=) <$> _gcvvecfcTimeOffSet,
                  ("pornographyLikelihood" .=) <$>
                    _gcvvecfcPornographyLikelihood])

-- | Video segment level annotation results for face detection.
--
-- /See:/ 'googleCloudVideointelligenceV1_FaceSegment' smart constructor.
newtype GoogleCloudVideointelligenceV1_FaceSegment =
  GoogleCloudVideointelligenceV1_FaceSegment'
    { _gooSegment :: Maybe GoogleCloudVideointelligenceV1_VideoSegment
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1_FaceSegment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooSegment'
googleCloudVideointelligenceV1_FaceSegment
    :: GoogleCloudVideointelligenceV1_FaceSegment
googleCloudVideointelligenceV1_FaceSegment =
  GoogleCloudVideointelligenceV1_FaceSegment' {_gooSegment = Nothing}


-- | Video segment where a face was detected.
gooSegment :: Lens' GoogleCloudVideointelligenceV1_FaceSegment (Maybe GoogleCloudVideointelligenceV1_VideoSegment)
gooSegment
  = lens _gooSegment (\ s a -> s{_gooSegment = a})

instance FromJSON
           GoogleCloudVideointelligenceV1_FaceSegment
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1FaceSegment"
              (\ o ->
                 GoogleCloudVideointelligenceV1_FaceSegment' <$>
                   (o .:? "segment"))

instance ToJSON
           GoogleCloudVideointelligenceV1_FaceSegment
         where
        toJSON
          GoogleCloudVideointelligenceV1_FaceSegment'{..}
          = object (catMaybes [("segment" .=) <$> _gooSegment])

-- | Annotations related to one detected OCR text snippet. This will contain
-- the corresponding text, confidence value, and frame level information
-- for each detection.
--
-- /See:/ 'googleCloudVideointelligenceV1beta2_TextAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1beta2_TextAnnotation =
  GoogleCloudVideointelligenceV1beta2_TextAnnotation'
    { _gcvvtacText :: !(Maybe Text)
    , _gcvvtacVersion :: !(Maybe Text)
    , _gcvvtacSegments :: !(Maybe [GoogleCloudVideointelligenceV1beta2_TextSegment])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_TextAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvtacText'
--
-- * 'gcvvtacVersion'
--
-- * 'gcvvtacSegments'
googleCloudVideointelligenceV1beta2_TextAnnotation
    :: GoogleCloudVideointelligenceV1beta2_TextAnnotation
googleCloudVideointelligenceV1beta2_TextAnnotation =
  GoogleCloudVideointelligenceV1beta2_TextAnnotation'
    { _gcvvtacText = Nothing
    , _gcvvtacVersion = Nothing
    , _gcvvtacSegments = Nothing
    }


-- | The detected text.
gcvvtacText :: Lens' GoogleCloudVideointelligenceV1beta2_TextAnnotation (Maybe Text)
gcvvtacText
  = lens _gcvvtacText (\ s a -> s{_gcvvtacText = a})

-- | Feature version.
gcvvtacVersion :: Lens' GoogleCloudVideointelligenceV1beta2_TextAnnotation (Maybe Text)
gcvvtacVersion
  = lens _gcvvtacVersion
      (\ s a -> s{_gcvvtacVersion = a})

-- | All video segments where OCR detected text appears.
gcvvtacSegments :: Lens' GoogleCloudVideointelligenceV1beta2_TextAnnotation [GoogleCloudVideointelligenceV1beta2_TextSegment]
gcvvtacSegments
  = lens _gcvvtacSegments
      (\ s a -> s{_gcvvtacSegments = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1beta2_TextAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1beta2TextAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1beta2_TextAnnotation'
                   <$>
                   (o .:? "text") <*> (o .:? "version") <*>
                     (o .:? "segments" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1beta2_TextAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1beta2_TextAnnotation'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _gcvvtacText,
                  ("version" .=) <$> _gcvvtacVersion,
                  ("segments" .=) <$> _gcvvtacSegments])

-- | Detected entity from video analysis.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_Entity' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_Entity =
  GoogleCloudVideointelligenceV1p2beta1_Entity'
    { _gcvvecLanguageCode :: !(Maybe Text)
    , _gcvvecEntityId :: !(Maybe Text)
    , _gcvvecDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_Entity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvecLanguageCode'
--
-- * 'gcvvecEntityId'
--
-- * 'gcvvecDescription'
googleCloudVideointelligenceV1p2beta1_Entity
    :: GoogleCloudVideointelligenceV1p2beta1_Entity
googleCloudVideointelligenceV1p2beta1_Entity =
  GoogleCloudVideointelligenceV1p2beta1_Entity'
    { _gcvvecLanguageCode = Nothing
    , _gcvvecEntityId = Nothing
    , _gcvvecDescription = Nothing
    }


-- | Language code for \`description\` in BCP-47 format.
gcvvecLanguageCode :: Lens' GoogleCloudVideointelligenceV1p2beta1_Entity (Maybe Text)
gcvvecLanguageCode
  = lens _gcvvecLanguageCode
      (\ s a -> s{_gcvvecLanguageCode = a})

-- | Opaque entity ID. Some IDs may be available in [Google Knowledge Graph
-- Search API](https:\/\/developers.google.com\/knowledge-graph\/).
gcvvecEntityId :: Lens' GoogleCloudVideointelligenceV1p2beta1_Entity (Maybe Text)
gcvvecEntityId
  = lens _gcvvecEntityId
      (\ s a -> s{_gcvvecEntityId = a})

-- | Textual description, e.g., \`Fixed-gear bicycle\`.
gcvvecDescription :: Lens' GoogleCloudVideointelligenceV1p2beta1_Entity (Maybe Text)
gcvvecDescription
  = lens _gcvvecDescription
      (\ s a -> s{_gcvvecDescription = a})

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
                 [("languageCode" .=) <$> _gcvvecLanguageCode,
                  ("entityId" .=) <$> _gcvvecEntityId,
                  ("description" .=) <$> _gcvvecDescription])

-- | Video frame level annotation results for text annotation (OCR). Contains
-- information regarding timestamp and bounding box locations for the
-- frames containing detected OCR text snippets.
--
-- /See:/ 'googleCloudVideointelligenceV1p1beta1_TextFrame' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_TextFrame =
  GoogleCloudVideointelligenceV1p1beta1_TextFrame'
    { _gcvvtfcRotatedBoundingBox :: !(Maybe GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly)
    , _gcvvtfcTimeOffSet :: !(Maybe GDuration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_TextFrame' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvtfcRotatedBoundingBox'
--
-- * 'gcvvtfcTimeOffSet'
googleCloudVideointelligenceV1p1beta1_TextFrame
    :: GoogleCloudVideointelligenceV1p1beta1_TextFrame
googleCloudVideointelligenceV1p1beta1_TextFrame =
  GoogleCloudVideointelligenceV1p1beta1_TextFrame'
    {_gcvvtfcRotatedBoundingBox = Nothing, _gcvvtfcTimeOffSet = Nothing}


-- | Bounding polygon of the detected text for this frame.
gcvvtfcRotatedBoundingBox :: Lens' GoogleCloudVideointelligenceV1p1beta1_TextFrame (Maybe GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly)
gcvvtfcRotatedBoundingBox
  = lens _gcvvtfcRotatedBoundingBox
      (\ s a -> s{_gcvvtfcRotatedBoundingBox = a})

-- | Timestamp of this frame.
gcvvtfcTimeOffSet :: Lens' GoogleCloudVideointelligenceV1p1beta1_TextFrame (Maybe Scientific)
gcvvtfcTimeOffSet
  = lens _gcvvtfcTimeOffSet
      (\ s a -> s{_gcvvtfcTimeOffSet = a})
      . mapping _GDuration

instance FromJSON
           GoogleCloudVideointelligenceV1p1beta1_TextFrame
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p1beta1TextFrame"
              (\ o ->
                 GoogleCloudVideointelligenceV1p1beta1_TextFrame' <$>
                   (o .:? "rotatedBoundingBox") <*>
                     (o .:? "timeOffset"))

instance ToJSON
           GoogleCloudVideointelligenceV1p1beta1_TextFrame
         where
        toJSON
          GoogleCloudVideointelligenceV1p1beta1_TextFrame'{..}
          = object
              (catMaybes
                 [("rotatedBoundingBox" .=) <$>
                    _gcvvtfcRotatedBoundingBox,
                  ("timeOffset" .=) <$> _gcvvtfcTimeOffSet])

-- | Word-specific information for recognized words. Word information is only
-- included in the response when certain request parameters are set, such
-- as \`enable_word_time_offsets\`.
--
-- /See:/ 'googleCloudVideointelligenceV1p1beta1_WordInfo' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_WordInfo =
  GoogleCloudVideointelligenceV1p1beta1_WordInfo'
    { _goooStartTime :: !(Maybe GDuration)
    , _goooConfidence :: !(Maybe (Textual Double))
    , _goooEndTime :: !(Maybe GDuration)
    , _goooWord :: !(Maybe Text)
    , _goooSpeakerTag :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_WordInfo' with the minimum fields required to make a request.
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
googleCloudVideointelligenceV1p1beta1_WordInfo
    :: GoogleCloudVideointelligenceV1p1beta1_WordInfo
googleCloudVideointelligenceV1p1beta1_WordInfo =
  GoogleCloudVideointelligenceV1p1beta1_WordInfo'
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
goooStartTime :: Lens' GoogleCloudVideointelligenceV1p1beta1_WordInfo (Maybe Scientific)
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
goooConfidence :: Lens' GoogleCloudVideointelligenceV1p1beta1_WordInfo (Maybe Double)
goooConfidence
  = lens _goooConfidence
      (\ s a -> s{_goooConfidence = a})
      . mapping _Coerce

-- | Time offset relative to the beginning of the audio, and corresponding to
-- the end of the spoken word. This field is only set if
-- \`enable_word_time_offsets=true\` and only in the top hypothesis. This
-- is an experimental feature and the accuracy of the time offset can vary.
goooEndTime :: Lens' GoogleCloudVideointelligenceV1p1beta1_WordInfo (Maybe Scientific)
goooEndTime
  = lens _goooEndTime (\ s a -> s{_goooEndTime = a}) .
      mapping _GDuration

-- | The word corresponding to this set of information.
goooWord :: Lens' GoogleCloudVideointelligenceV1p1beta1_WordInfo (Maybe Text)
goooWord = lens _goooWord (\ s a -> s{_goooWord = a})

-- | Output only. A distinct integer value is assigned for every speaker
-- within the audio. This field specifies which one of those speakers was
-- detected to have spoken this word. Value ranges from 1 up to
-- diarization_speaker_count, and is only set if speaker diarization is
-- enabled.
goooSpeakerTag :: Lens' GoogleCloudVideointelligenceV1p1beta1_WordInfo (Maybe Int32)
goooSpeakerTag
  = lens _goooSpeakerTag
      (\ s a -> s{_goooSpeakerTag = a})
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
                 [("startTime" .=) <$> _goooStartTime,
                  ("confidence" .=) <$> _goooConfidence,
                  ("endTime" .=) <$> _goooEndTime,
                  ("word" .=) <$> _goooWord,
                  ("speakerTag" .=) <$> _goooSpeakerTag])

-- | For tracking related features. An object at time_offset with attributes,
-- and located with normalized_bounding_box.
--
-- /See:/ 'googleCloudVideointelligenceV1beta2_TimestampedObject' smart constructor.
data GoogleCloudVideointelligenceV1beta2_TimestampedObject =
  GoogleCloudVideointelligenceV1beta2_TimestampedObject'
    { _gcvvtoTimeOffSet :: !(Maybe GDuration)
    , _gcvvtoAttributes :: !(Maybe [GoogleCloudVideointelligenceV1beta2_DetectedAttribute])
    , _gcvvtoNormalizedBoundingBox :: !(Maybe GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox)
    , _gcvvtoLandmarks :: !(Maybe [GoogleCloudVideointelligenceV1beta2_DetectedLandmark])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_TimestampedObject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvtoTimeOffSet'
--
-- * 'gcvvtoAttributes'
--
-- * 'gcvvtoNormalizedBoundingBox'
--
-- * 'gcvvtoLandmarks'
googleCloudVideointelligenceV1beta2_TimestampedObject
    :: GoogleCloudVideointelligenceV1beta2_TimestampedObject
googleCloudVideointelligenceV1beta2_TimestampedObject =
  GoogleCloudVideointelligenceV1beta2_TimestampedObject'
    { _gcvvtoTimeOffSet = Nothing
    , _gcvvtoAttributes = Nothing
    , _gcvvtoNormalizedBoundingBox = Nothing
    , _gcvvtoLandmarks = Nothing
    }


-- | Time-offset, relative to the beginning of the video, corresponding to
-- the video frame for this object.
gcvvtoTimeOffSet :: Lens' GoogleCloudVideointelligenceV1beta2_TimestampedObject (Maybe Scientific)
gcvvtoTimeOffSet
  = lens _gcvvtoTimeOffSet
      (\ s a -> s{_gcvvtoTimeOffSet = a})
      . mapping _GDuration

-- | Optional. The attributes of the object in the bounding box.
gcvvtoAttributes :: Lens' GoogleCloudVideointelligenceV1beta2_TimestampedObject [GoogleCloudVideointelligenceV1beta2_DetectedAttribute]
gcvvtoAttributes
  = lens _gcvvtoAttributes
      (\ s a -> s{_gcvvtoAttributes = a})
      . _Default
      . _Coerce

-- | Normalized Bounding box in a frame, where the object is located.
gcvvtoNormalizedBoundingBox :: Lens' GoogleCloudVideointelligenceV1beta2_TimestampedObject (Maybe GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox)
gcvvtoNormalizedBoundingBox
  = lens _gcvvtoNormalizedBoundingBox
      (\ s a -> s{_gcvvtoNormalizedBoundingBox = a})

-- | Optional. The detected landmarks.
gcvvtoLandmarks :: Lens' GoogleCloudVideointelligenceV1beta2_TimestampedObject [GoogleCloudVideointelligenceV1beta2_DetectedLandmark]
gcvvtoLandmarks
  = lens _gcvvtoLandmarks
      (\ s a -> s{_gcvvtoLandmarks = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1beta2_TimestampedObject
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1beta2TimestampedObject"
              (\ o ->
                 GoogleCloudVideointelligenceV1beta2_TimestampedObject'
                   <$>
                   (o .:? "timeOffset") <*>
                     (o .:? "attributes" .!= mempty)
                     <*> (o .:? "normalizedBoundingBox")
                     <*> (o .:? "landmarks" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1beta2_TimestampedObject
         where
        toJSON
          GoogleCloudVideointelligenceV1beta2_TimestampedObject'{..}
          = object
              (catMaybes
                 [("timeOffset" .=) <$> _gcvvtoTimeOffSet,
                  ("attributes" .=) <$> _gcvvtoAttributes,
                  ("normalizedBoundingBox" .=) <$>
                    _gcvvtoNormalizedBoundingBox,
                  ("landmarks" .=) <$> _gcvvtoLandmarks])

-- | This resource represents a long-running operation that is the result of
-- a network API call.
--
-- /See:/ 'googleLongrunning_Operation' smart constructor.
data GoogleLongrunning_Operation =
  GoogleLongrunning_Operation'
    { _gloDone :: !(Maybe Bool)
    , _gloError :: !(Maybe GoogleRpc_Status)
    , _gloResponse :: !(Maybe GoogleLongrunning_OperationResponse)
    , _gloName :: !(Maybe Text)
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
-- \`name\` should be a resource name ending with
-- \`operations\/{unique_id}\`.
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
    { _gcvvsra1Confidence :: !(Maybe (Textual Double))
    , _gcvvsra1Words :: !(Maybe [GoogleCloudVideointelligenceV1p1beta1_WordInfo])
    , _gcvvsra1Transcript :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvsra1Confidence'
--
-- * 'gcvvsra1Words'
--
-- * 'gcvvsra1Transcript'
googleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative
    :: GoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative
googleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative =
  GoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative'
    { _gcvvsra1Confidence = Nothing
    , _gcvvsra1Words = Nothing
    , _gcvvsra1Transcript = Nothing
    }


-- | Output only. The confidence estimate between 0.0 and 1.0. A higher
-- number indicates an estimated greater likelihood that the recognized
-- words are correct. This field is set only for the top alternative. This
-- field is not guaranteed to be accurate and users should not rely on it
-- to be always provided. The default of 0.0 is a sentinel value indicating
-- \`confidence\` was not set.
gcvvsra1Confidence :: Lens' GoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative (Maybe Double)
gcvvsra1Confidence
  = lens _gcvvsra1Confidence
      (\ s a -> s{_gcvvsra1Confidence = a})
      . mapping _Coerce

-- | Output only. A list of word-specific information for each recognized
-- word. Note: When \`enable_speaker_diarization\` is set to true, you will
-- see all the words from the beginning of the audio.
gcvvsra1Words :: Lens' GoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative [GoogleCloudVideointelligenceV1p1beta1_WordInfo]
gcvvsra1Words
  = lens _gcvvsra1Words
      (\ s a -> s{_gcvvsra1Words = a})
      . _Default
      . _Coerce

-- | Transcript text representing the words that the user spoke.
gcvvsra1Transcript :: Lens' GoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative (Maybe Text)
gcvvsra1Transcript
  = lens _gcvvsra1Transcript
      (\ s a -> s{_gcvvsra1Transcript = a})

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
                 [("confidence" .=) <$> _gcvvsra1Confidence,
                  ("words" .=) <$> _gcvvsra1Words,
                  ("transcript" .=) <$> _gcvvsra1Transcript])

-- | Video frame level annotation results for explicit content.
--
-- /See:/ 'googleCloudVideointelligenceV1_ExplicitContentFrame' smart constructor.
data GoogleCloudVideointelligenceV1_ExplicitContentFrame =
  GoogleCloudVideointelligenceV1_ExplicitContentFrame'
    { _goooTimeOffSet :: !(Maybe GDuration)
    , _goooPornographyLikelihood :: !(Maybe GoogleCloudVideointelligenceV1_ExplicitContentFramePornographyLikelihood)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1_ExplicitContentFrame' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'goooTimeOffSet'
--
-- * 'goooPornographyLikelihood'
googleCloudVideointelligenceV1_ExplicitContentFrame
    :: GoogleCloudVideointelligenceV1_ExplicitContentFrame
googleCloudVideointelligenceV1_ExplicitContentFrame =
  GoogleCloudVideointelligenceV1_ExplicitContentFrame'
    {_goooTimeOffSet = Nothing, _goooPornographyLikelihood = Nothing}


-- | Time-offset, relative to the beginning of the video, corresponding to
-- the video frame for this location.
goooTimeOffSet :: Lens' GoogleCloudVideointelligenceV1_ExplicitContentFrame (Maybe Scientific)
goooTimeOffSet
  = lens _goooTimeOffSet
      (\ s a -> s{_goooTimeOffSet = a})
      . mapping _GDuration

-- | Likelihood of the pornography content..
goooPornographyLikelihood :: Lens' GoogleCloudVideointelligenceV1_ExplicitContentFrame (Maybe GoogleCloudVideointelligenceV1_ExplicitContentFramePornographyLikelihood)
goooPornographyLikelihood
  = lens _goooPornographyLikelihood
      (\ s a -> s{_goooPornographyLikelihood = a})

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
                 [("timeOffset" .=) <$> _goooTimeOffSet,
                  ("pornographyLikelihood" .=) <$>
                    _goooPornographyLikelihood])

-- | Video annotation request.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest =
  GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest'
    { _gcvvavrInputURI :: !(Maybe Text)
    , _gcvvavrVideoContext :: !(Maybe GoogleCloudVideointelligenceV1p3beta1_VideoContext)
    , _gcvvavrInputContent :: !(Maybe Bytes)
    , _gcvvavrFeatures :: !(Maybe [GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequestFeaturesItem])
    , _gcvvavrLocationId :: !(Maybe Text)
    , _gcvvavrOutputURI :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest' with the minimum fields required to make a request.
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
googleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest
    :: GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest
googleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest =
  GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest'
    { _gcvvavrInputURI = Nothing
    , _gcvvavrVideoContext = Nothing
    , _gcvvavrInputContent = Nothing
    , _gcvvavrFeatures = Nothing
    , _gcvvavrLocationId = Nothing
    , _gcvvavrOutputURI = Nothing
    }


-- | Input video location. Currently, only [Cloud
-- Storage](https:\/\/cloud.google.com\/storage\/) URIs are supported. URIs
-- must be specified in the following format:
-- \`gs:\/\/bucket-id\/object-id\` (other URI formats return
-- google.rpc.Code.INVALID_ARGUMENT). For more information, see [Request
-- URIs](https:\/\/cloud.google.com\/storage\/docs\/request-endpoints). To
-- identify multiple videos, a video URI may include wildcards in the
-- \`object-id\`. Supported wildcards: \'*\' to match 0 or more characters;
-- \'?\' to match 1 character. If unset, the input video should be embedded
-- in the request as \`input_content\`. If set, \`input_content\` must be
-- unset.
gcvvavrInputURI :: Lens' GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest (Maybe Text)
gcvvavrInputURI
  = lens _gcvvavrInputURI
      (\ s a -> s{_gcvvavrInputURI = a})

-- | Additional video context and\/or feature-specific parameters.
gcvvavrVideoContext :: Lens' GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest (Maybe GoogleCloudVideointelligenceV1p3beta1_VideoContext)
gcvvavrVideoContext
  = lens _gcvvavrVideoContext
      (\ s a -> s{_gcvvavrVideoContext = a})

-- | The video data bytes. If unset, the input video(s) should be specified
-- via the \`input_uri\`. If set, \`input_uri\` must be unset.
gcvvavrInputContent :: Lens' GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest (Maybe ByteString)
gcvvavrInputContent
  = lens _gcvvavrInputContent
      (\ s a -> s{_gcvvavrInputContent = a})
      . mapping _Bytes

-- | Required. Requested video annotation features.
gcvvavrFeatures :: Lens' GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest [GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequestFeaturesItem]
gcvvavrFeatures
  = lens _gcvvavrFeatures
      (\ s a -> s{_gcvvavrFeatures = a})
      . _Default
      . _Coerce

-- | Optional. Cloud region where annotation should take place. Supported
-- cloud regions are: \`us-east1\`, \`us-west1\`, \`europe-west1\`,
-- \`asia-east1\`. If no region is specified, the region will be determined
-- based on video file location.
gcvvavrLocationId :: Lens' GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest (Maybe Text)
gcvvavrLocationId
  = lens _gcvvavrLocationId
      (\ s a -> s{_gcvvavrLocationId = a})

-- | Optional. Location where the output (in JSON format) should be stored.
-- Currently, only [Cloud Storage](https:\/\/cloud.google.com\/storage\/)
-- URIs are supported. These must be specified in the following format:
-- \`gs:\/\/bucket-id\/object-id\` (other URI formats return
-- google.rpc.Code.INVALID_ARGUMENT). For more information, see [Request
-- URIs](https:\/\/cloud.google.com\/storage\/docs\/request-endpoints).
gcvvavrOutputURI :: Lens' GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest (Maybe Text)
gcvvavrOutputURI
  = lens _gcvvavrOutputURI
      (\ s a -> s{_gcvvavrOutputURI = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1AnnotateVideoRequest"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest'
                   <$>
                   (o .:? "inputUri") <*> (o .:? "videoContext") <*>
                     (o .:? "inputContent")
                     <*> (o .:? "features" .!= mempty)
                     <*> (o .:? "locationId")
                     <*> (o .:? "outputUri"))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest'{..}
          = object
              (catMaybes
                 [("inputUri" .=) <$> _gcvvavrInputURI,
                  ("videoContext" .=) <$> _gcvvavrVideoContext,
                  ("inputContent" .=) <$> _gcvvavrInputContent,
                  ("features" .=) <$> _gcvvavrFeatures,
                  ("locationId" .=) <$> _gcvvavrLocationId,
                  ("outputUri" .=) <$> _gcvvavrOutputURI])

-- | Video segment.
--
-- /See:/ 'googleCloudVideointelligenceV1beta2_VideoSegment' smart constructor.
data GoogleCloudVideointelligenceV1beta2_VideoSegment =
  GoogleCloudVideointelligenceV1beta2_VideoSegment'
    { _gStartTimeOffSet :: !(Maybe GDuration)
    , _gEndTimeOffSet :: !(Maybe GDuration)
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

-- | Video segment level annotation results for face detection.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_FaceSegment' smart constructor.
newtype GoogleCloudVideointelligenceV1p3beta1_FaceSegment =
  GoogleCloudVideointelligenceV1p3beta1_FaceSegment'
    { _gcvvfscSegment :: Maybe GoogleCloudVideointelligenceV1p3beta1_VideoSegment
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_FaceSegment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvfscSegment'
googleCloudVideointelligenceV1p3beta1_FaceSegment
    :: GoogleCloudVideointelligenceV1p3beta1_FaceSegment
googleCloudVideointelligenceV1p3beta1_FaceSegment =
  GoogleCloudVideointelligenceV1p3beta1_FaceSegment' {_gcvvfscSegment = Nothing}


-- | Video segment where a face was detected.
gcvvfscSegment :: Lens' GoogleCloudVideointelligenceV1p3beta1_FaceSegment (Maybe GoogleCloudVideointelligenceV1p3beta1_VideoSegment)
gcvvfscSegment
  = lens _gcvvfscSegment
      (\ s a -> s{_gcvvfscSegment = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_FaceSegment
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1FaceSegment"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_FaceSegment'
                   <$> (o .:? "segment"))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_FaceSegment
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_FaceSegment'{..}
          = object
              (catMaybes [("segment" .=) <$> _gcvvfscSegment])

-- | Annotation results for a single video.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_VideoAnnotationResults' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults =
  GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults'
    { _gcvvvarcShotAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_VideoSegment])
    , _gcvvvarcShotLabelAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation])
    , _gcvvvarcFaceDetectionAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation])
    , _gcvvvarcFaceAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_FaceAnnotation])
    , _gcvvvarcInputURI :: !(Maybe Text)
    , _gcvvvarcError :: !(Maybe GoogleRpc_Status)
    , _gcvvvarcShotPresenceLabelAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation])
    , _gcvvvarcPersonDetectionAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_PersonDetectionAnnotation])
    , _gcvvvarcObjectAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation])
    , _gcvvvarcFrameLabelAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation])
    , _gcvvvarcSpeechTranscriptions :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription])
    , _gcvvvarcSegmentPresenceLabelAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation])
    , _gcvvvarcLogoRecognitionAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation])
    , _gcvvvarcSegment :: !(Maybe GoogleCloudVideointelligenceV1p2beta1_VideoSegment)
    , _gcvvvarcTextAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_TextAnnotation])
    , _gcvvvarcSegmentLabelAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation])
    , _gcvvvarcExplicitAnnotation :: !(Maybe GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvvarcShotAnnotations'
--
-- * 'gcvvvarcShotLabelAnnotations'
--
-- * 'gcvvvarcFaceDetectionAnnotations'
--
-- * 'gcvvvarcFaceAnnotations'
--
-- * 'gcvvvarcInputURI'
--
-- * 'gcvvvarcError'
--
-- * 'gcvvvarcShotPresenceLabelAnnotations'
--
-- * 'gcvvvarcPersonDetectionAnnotations'
--
-- * 'gcvvvarcObjectAnnotations'
--
-- * 'gcvvvarcFrameLabelAnnotations'
--
-- * 'gcvvvarcSpeechTranscriptions'
--
-- * 'gcvvvarcSegmentPresenceLabelAnnotations'
--
-- * 'gcvvvarcLogoRecognitionAnnotations'
--
-- * 'gcvvvarcSegment'
--
-- * 'gcvvvarcTextAnnotations'
--
-- * 'gcvvvarcSegmentLabelAnnotations'
--
-- * 'gcvvvarcExplicitAnnotation'
googleCloudVideointelligenceV1p2beta1_VideoAnnotationResults
    :: GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults
googleCloudVideointelligenceV1p2beta1_VideoAnnotationResults =
  GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults'
    { _gcvvvarcShotAnnotations = Nothing
    , _gcvvvarcShotLabelAnnotations = Nothing
    , _gcvvvarcFaceDetectionAnnotations = Nothing
    , _gcvvvarcFaceAnnotations = Nothing
    , _gcvvvarcInputURI = Nothing
    , _gcvvvarcError = Nothing
    , _gcvvvarcShotPresenceLabelAnnotations = Nothing
    , _gcvvvarcPersonDetectionAnnotations = Nothing
    , _gcvvvarcObjectAnnotations = Nothing
    , _gcvvvarcFrameLabelAnnotations = Nothing
    , _gcvvvarcSpeechTranscriptions = Nothing
    , _gcvvvarcSegmentPresenceLabelAnnotations = Nothing
    , _gcvvvarcLogoRecognitionAnnotations = Nothing
    , _gcvvvarcSegment = Nothing
    , _gcvvvarcTextAnnotations = Nothing
    , _gcvvvarcSegmentLabelAnnotations = Nothing
    , _gcvvvarcExplicitAnnotation = Nothing
    }


-- | Shot annotations. Each shot is represented as a video segment.
gcvvvarcShotAnnotations :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p2beta1_VideoSegment]
gcvvvarcShotAnnotations
  = lens _gcvvvarcShotAnnotations
      (\ s a -> s{_gcvvvarcShotAnnotations = a})
      . _Default
      . _Coerce

-- | Topical label annotations on shot level. There is exactly one element
-- for each unique label.
gcvvvarcShotLabelAnnotations :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation]
gcvvvarcShotLabelAnnotations
  = lens _gcvvvarcShotLabelAnnotations
      (\ s a -> s{_gcvvvarcShotLabelAnnotations = a})
      . _Default
      . _Coerce

-- | Face detection annotations.
gcvvvarcFaceDetectionAnnotations :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation]
gcvvvarcFaceDetectionAnnotations
  = lens _gcvvvarcFaceDetectionAnnotations
      (\ s a -> s{_gcvvvarcFaceDetectionAnnotations = a})
      . _Default
      . _Coerce

-- | Deprecated. Please use \`face_detection_annotations\` instead.
gcvvvarcFaceAnnotations :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p2beta1_FaceAnnotation]
gcvvvarcFaceAnnotations
  = lens _gcvvvarcFaceAnnotations
      (\ s a -> s{_gcvvvarcFaceAnnotations = a})
      . _Default
      . _Coerce

-- | Video file location in [Cloud
-- Storage](https:\/\/cloud.google.com\/storage\/).
gcvvvarcInputURI :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults (Maybe Text)
gcvvvarcInputURI
  = lens _gcvvvarcInputURI
      (\ s a -> s{_gcvvvarcInputURI = a})

-- | If set, indicates an error. Note that for a single
-- \`AnnotateVideoRequest\` some videos may succeed and some may fail.
gcvvvarcError :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults (Maybe GoogleRpc_Status)
gcvvvarcError
  = lens _gcvvvarcError
      (\ s a -> s{_gcvvvarcError = a})

-- | Presence label annotations on shot level. There is exactly one element
-- for each unique label. Compared to the existing topical
-- \`shot_label_annotations\`, this field presents more fine-grained,
-- shot-level labels detected in video content and is made available only
-- when the client sets \`LabelDetectionConfig.model\` to
-- \"builtin\/latest\" in the request.
gcvvvarcShotPresenceLabelAnnotations :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation]
gcvvvarcShotPresenceLabelAnnotations
  = lens _gcvvvarcShotPresenceLabelAnnotations
      (\ s a ->
         s{_gcvvvarcShotPresenceLabelAnnotations = a})
      . _Default
      . _Coerce

-- | Person detection annotations.
gcvvvarcPersonDetectionAnnotations :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p2beta1_PersonDetectionAnnotation]
gcvvvarcPersonDetectionAnnotations
  = lens _gcvvvarcPersonDetectionAnnotations
      (\ s a -> s{_gcvvvarcPersonDetectionAnnotations = a})
      . _Default
      . _Coerce

-- | Annotations for list of objects detected and tracked in video.
gcvvvarcObjectAnnotations :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation]
gcvvvarcObjectAnnotations
  = lens _gcvvvarcObjectAnnotations
      (\ s a -> s{_gcvvvarcObjectAnnotations = a})
      . _Default
      . _Coerce

-- | Label annotations on frame level. There is exactly one element for each
-- unique label.
gcvvvarcFrameLabelAnnotations :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation]
gcvvvarcFrameLabelAnnotations
  = lens _gcvvvarcFrameLabelAnnotations
      (\ s a -> s{_gcvvvarcFrameLabelAnnotations = a})
      . _Default
      . _Coerce

-- | Speech transcription.
gcvvvarcSpeechTranscriptions :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription]
gcvvvarcSpeechTranscriptions
  = lens _gcvvvarcSpeechTranscriptions
      (\ s a -> s{_gcvvvarcSpeechTranscriptions = a})
      . _Default
      . _Coerce

-- | Presence label annotations on video level or user-specified segment
-- level. There is exactly one element for each unique label. Compared to
-- the existing topical \`segment_label_annotations\`, this field presents
-- more fine-grained, segment-level labels detected in video content and is
-- made available only when the client sets \`LabelDetectionConfig.model\`
-- to \"builtin\/latest\" in the request.
gcvvvarcSegmentPresenceLabelAnnotations :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation]
gcvvvarcSegmentPresenceLabelAnnotations
  = lens _gcvvvarcSegmentPresenceLabelAnnotations
      (\ s a ->
         s{_gcvvvarcSegmentPresenceLabelAnnotations = a})
      . _Default
      . _Coerce

-- | Annotations for list of logos detected, tracked and recognized in video.
gcvvvarcLogoRecognitionAnnotations :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation]
gcvvvarcLogoRecognitionAnnotations
  = lens _gcvvvarcLogoRecognitionAnnotations
      (\ s a -> s{_gcvvvarcLogoRecognitionAnnotations = a})
      . _Default
      . _Coerce

-- | Video segment on which the annotation is run.
gcvvvarcSegment :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults (Maybe GoogleCloudVideointelligenceV1p2beta1_VideoSegment)
gcvvvarcSegment
  = lens _gcvvvarcSegment
      (\ s a -> s{_gcvvvarcSegment = a})

-- | OCR text detection and tracking. Annotations for list of detected text
-- snippets. Each will have list of frame information associated with it.
gcvvvarcTextAnnotations :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p2beta1_TextAnnotation]
gcvvvarcTextAnnotations
  = lens _gcvvvarcTextAnnotations
      (\ s a -> s{_gcvvvarcTextAnnotations = a})
      . _Default
      . _Coerce

-- | Topical label annotations on video level or user-specified segment
-- level. There is exactly one element for each unique label.
gcvvvarcSegmentLabelAnnotations :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation]
gcvvvarcSegmentLabelAnnotations
  = lens _gcvvvarcSegmentLabelAnnotations
      (\ s a -> s{_gcvvvarcSegmentLabelAnnotations = a})
      . _Default
      . _Coerce

-- | Explicit content annotation.
gcvvvarcExplicitAnnotation :: Lens' GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults (Maybe GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation)
gcvvvarcExplicitAnnotation
  = lens _gcvvvarcExplicitAnnotation
      (\ s a -> s{_gcvvvarcExplicitAnnotation = a})

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
                     <*> (o .:? "faceDetectionAnnotations" .!= mempty)
                     <*> (o .:? "faceAnnotations" .!= mempty)
                     <*> (o .:? "inputUri")
                     <*> (o .:? "error")
                     <*> (o .:? "shotPresenceLabelAnnotations" .!= mempty)
                     <*> (o .:? "personDetectionAnnotations" .!= mempty)
                     <*> (o .:? "objectAnnotations" .!= mempty)
                     <*> (o .:? "frameLabelAnnotations" .!= mempty)
                     <*> (o .:? "speechTranscriptions" .!= mempty)
                     <*>
                     (o .:? "segmentPresenceLabelAnnotations" .!= mempty)
                     <*> (o .:? "logoRecognitionAnnotations" .!= mempty)
                     <*> (o .:? "segment")
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
                 [("shotAnnotations" .=) <$> _gcvvvarcShotAnnotations,
                  ("shotLabelAnnotations" .=) <$>
                    _gcvvvarcShotLabelAnnotations,
                  ("faceDetectionAnnotations" .=) <$>
                    _gcvvvarcFaceDetectionAnnotations,
                  ("faceAnnotations" .=) <$> _gcvvvarcFaceAnnotations,
                  ("inputUri" .=) <$> _gcvvvarcInputURI,
                  ("error" .=) <$> _gcvvvarcError,
                  ("shotPresenceLabelAnnotations" .=) <$>
                    _gcvvvarcShotPresenceLabelAnnotations,
                  ("personDetectionAnnotations" .=) <$>
                    _gcvvvarcPersonDetectionAnnotations,
                  ("objectAnnotations" .=) <$>
                    _gcvvvarcObjectAnnotations,
                  ("frameLabelAnnotations" .=) <$>
                    _gcvvvarcFrameLabelAnnotations,
                  ("speechTranscriptions" .=) <$>
                    _gcvvvarcSpeechTranscriptions,
                  ("segmentPresenceLabelAnnotations" .=) <$>
                    _gcvvvarcSegmentPresenceLabelAnnotations,
                  ("logoRecognitionAnnotations" .=) <$>
                    _gcvvvarcLogoRecognitionAnnotations,
                  ("segment" .=) <$> _gcvvvarcSegment,
                  ("textAnnotations" .=) <$> _gcvvvarcTextAnnotations,
                  ("segmentLabelAnnotations" .=) <$>
                    _gcvvvarcSegmentLabelAnnotations,
                  ("explicitAnnotation" .=) <$>
                    _gcvvvarcExplicitAnnotation])

-- | Annotations corresponding to one tracked object.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation =
  GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation'
    { _gcvvotacFrames :: !(Maybe [GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingFrame])
    , _gcvvotacConfidence :: !(Maybe (Textual Double))
    , _gcvvotacVersion :: !(Maybe Text)
    , _gcvvotacTrackId :: !(Maybe (Textual Int64))
    , _gcvvotacSegment :: !(Maybe GoogleCloudVideointelligenceV1p3beta1_VideoSegment)
    , _gcvvotacEntity :: !(Maybe GoogleCloudVideointelligenceV1p3beta1_Entity)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvotacFrames'
--
-- * 'gcvvotacConfidence'
--
-- * 'gcvvotacVersion'
--
-- * 'gcvvotacTrackId'
--
-- * 'gcvvotacSegment'
--
-- * 'gcvvotacEntity'
googleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation
    :: GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation
googleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation =
  GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation'
    { _gcvvotacFrames = Nothing
    , _gcvvotacConfidence = Nothing
    , _gcvvotacVersion = Nothing
    , _gcvvotacTrackId = Nothing
    , _gcvvotacSegment = Nothing
    , _gcvvotacEntity = Nothing
    }


-- | Information corresponding to all frames where this object track appears.
-- Non-streaming batch mode: it may be one or multiple ObjectTrackingFrame
-- messages in frames. Streaming mode: it can only be one
-- ObjectTrackingFrame message in frames.
gcvvotacFrames :: Lens' GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation [GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingFrame]
gcvvotacFrames
  = lens _gcvvotacFrames
      (\ s a -> s{_gcvvotacFrames = a})
      . _Default
      . _Coerce

-- | Object category\'s labeling confidence of this track.
gcvvotacConfidence :: Lens' GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation (Maybe Double)
gcvvotacConfidence
  = lens _gcvvotacConfidence
      (\ s a -> s{_gcvvotacConfidence = a})
      . mapping _Coerce

-- | Feature version.
gcvvotacVersion :: Lens' GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation (Maybe Text)
gcvvotacVersion
  = lens _gcvvotacVersion
      (\ s a -> s{_gcvvotacVersion = a})

-- | Streaming mode ONLY. In streaming mode, we do not know the end time of a
-- tracked object before it is completed. Hence, there is no VideoSegment
-- info returned. Instead, we provide a unique identifiable integer
-- track_id so that the customers can correlate the results of the ongoing
-- ObjectTrackAnnotation of the same track_id over time.
gcvvotacTrackId :: Lens' GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation (Maybe Int64)
gcvvotacTrackId
  = lens _gcvvotacTrackId
      (\ s a -> s{_gcvvotacTrackId = a})
      . mapping _Coerce

-- | Non-streaming batch mode ONLY. Each object track corresponds to one
-- video segment where it appears.
gcvvotacSegment :: Lens' GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation (Maybe GoogleCloudVideointelligenceV1p3beta1_VideoSegment)
gcvvotacSegment
  = lens _gcvvotacSegment
      (\ s a -> s{_gcvvotacSegment = a})

-- | Entity to specify the object category that this track is labeled as.
gcvvotacEntity :: Lens' GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation (Maybe GoogleCloudVideointelligenceV1p3beta1_Entity)
gcvvotacEntity
  = lens _gcvvotacEntity
      (\ s a -> s{_gcvvotacEntity = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation'
                   <$>
                   (o .:? "frames" .!= mempty) <*> (o .:? "confidence")
                     <*> (o .:? "version")
                     <*> (o .:? "trackId")
                     <*> (o .:? "segment")
                     <*> (o .:? "entity"))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation'{..}
          = object
              (catMaybes
                 [("frames" .=) <$> _gcvvotacFrames,
                  ("confidence" .=) <$> _gcvvotacConfidence,
                  ("version" .=) <$> _gcvvotacVersion,
                  ("trackId" .=) <$> _gcvvotacTrackId,
                  ("segment" .=) <$> _gcvvotacSegment,
                  ("entity" .=) <$> _gcvvotacEntity])

-- | Deprecated. No effect.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_FaceFrame' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_FaceFrame =
  GoogleCloudVideointelligenceV1p2beta1_FaceFrame'
    { _gcvvffcTimeOffSet :: !(Maybe GDuration)
    , _gcvvffcNormalizedBoundingBoxes :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_FaceFrame' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvffcTimeOffSet'
--
-- * 'gcvvffcNormalizedBoundingBoxes'
googleCloudVideointelligenceV1p2beta1_FaceFrame
    :: GoogleCloudVideointelligenceV1p2beta1_FaceFrame
googleCloudVideointelligenceV1p2beta1_FaceFrame =
  GoogleCloudVideointelligenceV1p2beta1_FaceFrame'
    {_gcvvffcTimeOffSet = Nothing, _gcvvffcNormalizedBoundingBoxes = Nothing}


-- | Time-offset, relative to the beginning of the video, corresponding to
-- the video frame for this location.
gcvvffcTimeOffSet :: Lens' GoogleCloudVideointelligenceV1p2beta1_FaceFrame (Maybe Scientific)
gcvvffcTimeOffSet
  = lens _gcvvffcTimeOffSet
      (\ s a -> s{_gcvvffcTimeOffSet = a})
      . mapping _GDuration

-- | Normalized Bounding boxes in a frame. There can be more than one boxes
-- if the same face is detected in multiple locations within the current
-- frame.
gcvvffcNormalizedBoundingBoxes :: Lens' GoogleCloudVideointelligenceV1p2beta1_FaceFrame [GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox]
gcvvffcNormalizedBoundingBoxes
  = lens _gcvvffcNormalizedBoundingBoxes
      (\ s a -> s{_gcvvffcNormalizedBoundingBoxes = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1p2beta1_FaceFrame
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p2beta1FaceFrame"
              (\ o ->
                 GoogleCloudVideointelligenceV1p2beta1_FaceFrame' <$>
                   (o .:? "timeOffset") <*>
                     (o .:? "normalizedBoundingBoxes" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1p2beta1_FaceFrame
         where
        toJSON
          GoogleCloudVideointelligenceV1p2beta1_FaceFrame'{..}
          = object
              (catMaybes
                 [("timeOffset" .=) <$> _gcvvffcTimeOffSet,
                  ("normalizedBoundingBoxes" .=) <$>
                    _gcvvffcNormalizedBoundingBoxes])

-- | Video segment level annotation results for label detection.
--
-- /See:/ 'googleCloudVideointelligenceV1beta2_LabelSegment' smart constructor.
data GoogleCloudVideointelligenceV1beta2_LabelSegment =
  GoogleCloudVideointelligenceV1beta2_LabelSegment'
    { _gcvvlscConfidence :: !(Maybe (Textual Double))
    , _gcvvlscSegment :: !(Maybe GoogleCloudVideointelligenceV1beta2_VideoSegment)
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

-- | A generic detected landmark represented by name in string format and a
-- 2D location.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_DetectedLandmark' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_DetectedLandmark =
  GoogleCloudVideointelligenceV1p2beta1_DetectedLandmark'
    { _gcvvdl1Confidence :: !(Maybe (Textual Double))
    , _gcvvdl1Point :: !(Maybe GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex)
    , _gcvvdl1Name :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_DetectedLandmark' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvdl1Confidence'
--
-- * 'gcvvdl1Point'
--
-- * 'gcvvdl1Name'
googleCloudVideointelligenceV1p2beta1_DetectedLandmark
    :: GoogleCloudVideointelligenceV1p2beta1_DetectedLandmark
googleCloudVideointelligenceV1p2beta1_DetectedLandmark =
  GoogleCloudVideointelligenceV1p2beta1_DetectedLandmark'
    { _gcvvdl1Confidence = Nothing
    , _gcvvdl1Point = Nothing
    , _gcvvdl1Name = Nothing
    }


-- | The confidence score of the detected landmark. Range [0, 1].
gcvvdl1Confidence :: Lens' GoogleCloudVideointelligenceV1p2beta1_DetectedLandmark (Maybe Double)
gcvvdl1Confidence
  = lens _gcvvdl1Confidence
      (\ s a -> s{_gcvvdl1Confidence = a})
      . mapping _Coerce

-- | The 2D point of the detected landmark using the normalized image
-- coordindate system. The normalized coordinates have the range from 0 to
-- 1.
gcvvdl1Point :: Lens' GoogleCloudVideointelligenceV1p2beta1_DetectedLandmark (Maybe GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex)
gcvvdl1Point
  = lens _gcvvdl1Point (\ s a -> s{_gcvvdl1Point = a})

-- | The name of this landmark, for example, left_hand, right_shoulder.
gcvvdl1Name :: Lens' GoogleCloudVideointelligenceV1p2beta1_DetectedLandmark (Maybe Text)
gcvvdl1Name
  = lens _gcvvdl1Name (\ s a -> s{_gcvvdl1Name = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p2beta1_DetectedLandmark
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p2beta1DetectedLandmark"
              (\ o ->
                 GoogleCloudVideointelligenceV1p2beta1_DetectedLandmark'
                   <$>
                   (o .:? "confidence") <*> (o .:? "point") <*>
                     (o .:? "name"))

instance ToJSON
           GoogleCloudVideointelligenceV1p2beta1_DetectedLandmark
         where
        toJSON
          GoogleCloudVideointelligenceV1p2beta1_DetectedLandmark'{..}
          = object
              (catMaybes
                 [("confidence" .=) <$> _gcvvdl1Confidence,
                  ("point" .=) <$> _gcvvdl1Point,
                  ("name" .=) <$> _gcvvdl1Name])

-- | Person detection annotation per video.
--
-- /See:/ 'googleCloudVideointelligenceV1beta2_PersonDetectionAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1beta2_PersonDetectionAnnotation =
  GoogleCloudVideointelligenceV1beta2_PersonDetectionAnnotation'
    { _ggTracks :: !(Maybe [GoogleCloudVideointelligenceV1beta2_Track])
    , _ggVersion :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_PersonDetectionAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggTracks'
--
-- * 'ggVersion'
googleCloudVideointelligenceV1beta2_PersonDetectionAnnotation
    :: GoogleCloudVideointelligenceV1beta2_PersonDetectionAnnotation
googleCloudVideointelligenceV1beta2_PersonDetectionAnnotation =
  GoogleCloudVideointelligenceV1beta2_PersonDetectionAnnotation'
    {_ggTracks = Nothing, _ggVersion = Nothing}


-- | The detected tracks of a person.
ggTracks :: Lens' GoogleCloudVideointelligenceV1beta2_PersonDetectionAnnotation [GoogleCloudVideointelligenceV1beta2_Track]
ggTracks
  = lens _ggTracks (\ s a -> s{_ggTracks = a}) .
      _Default
      . _Coerce

-- | Feature version.
ggVersion :: Lens' GoogleCloudVideointelligenceV1beta2_PersonDetectionAnnotation (Maybe Text)
ggVersion
  = lens _ggVersion (\ s a -> s{_ggVersion = a})

instance FromJSON
           GoogleCloudVideointelligenceV1beta2_PersonDetectionAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1beta2PersonDetectionAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1beta2_PersonDetectionAnnotation'
                   <$>
                   (o .:? "tracks" .!= mempty) <*> (o .:? "version"))

instance ToJSON
           GoogleCloudVideointelligenceV1beta2_PersonDetectionAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1beta2_PersonDetectionAnnotation'{..}
          = object
              (catMaybes
                 [("tracks" .=) <$> _ggTracks,
                  ("version" .=) <$> _ggVersion])

-- | Video frame level annotations for object detection and tracking. This
-- field stores per frame location, time offset, and confidence.
--
-- /See:/ 'googleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame =
  GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame'
    { _gcvvotf1TimeOffSet :: !(Maybe GDuration)
    , _gcvvotf1NormalizedBoundingBox :: !(Maybe GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvotf1TimeOffSet'
--
-- * 'gcvvotf1NormalizedBoundingBox'
googleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame
    :: GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame
googleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame =
  GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame'
    {_gcvvotf1TimeOffSet = Nothing, _gcvvotf1NormalizedBoundingBox = Nothing}


-- | The timestamp of the frame in microseconds.
gcvvotf1TimeOffSet :: Lens' GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame (Maybe Scientific)
gcvvotf1TimeOffSet
  = lens _gcvvotf1TimeOffSet
      (\ s a -> s{_gcvvotf1TimeOffSet = a})
      . mapping _GDuration

-- | The normalized bounding box location of this object track for the frame.
gcvvotf1NormalizedBoundingBox :: Lens' GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame (Maybe GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox)
gcvvotf1NormalizedBoundingBox
  = lens _gcvvotf1NormalizedBoundingBox
      (\ s a -> s{_gcvvotf1NormalizedBoundingBox = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame"
              (\ o ->
                 GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame'
                   <$>
                   (o .:? "timeOffset") <*>
                     (o .:? "normalizedBoundingBox"))

instance ToJSON
           GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame
         where
        toJSON
          GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame'{..}
          = object
              (catMaybes
                 [("timeOffset" .=) <$> _gcvvotf1TimeOffSet,
                  ("normalizedBoundingBox" .=) <$>
                    _gcvvotf1NormalizedBoundingBox])

-- | Annotations corresponding to one tracked object.
--
-- /See:/ 'googleCloudVideointelligenceV1_ObjectTrackingAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1_ObjectTrackingAnnotation =
  GoogleCloudVideointelligenceV1_ObjectTrackingAnnotation'
    { _gcvvota1Frames :: !(Maybe [GoogleCloudVideointelligenceV1_ObjectTrackingFrame])
    , _gcvvota1Confidence :: !(Maybe (Textual Double))
    , _gcvvota1Version :: !(Maybe Text)
    , _gcvvota1TrackId :: !(Maybe (Textual Int64))
    , _gcvvota1Segment :: !(Maybe GoogleCloudVideointelligenceV1_VideoSegment)
    , _gcvvota1Entity :: !(Maybe GoogleCloudVideointelligenceV1_Entity)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1_ObjectTrackingAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvota1Frames'
--
-- * 'gcvvota1Confidence'
--
-- * 'gcvvota1Version'
--
-- * 'gcvvota1TrackId'
--
-- * 'gcvvota1Segment'
--
-- * 'gcvvota1Entity'
googleCloudVideointelligenceV1_ObjectTrackingAnnotation
    :: GoogleCloudVideointelligenceV1_ObjectTrackingAnnotation
googleCloudVideointelligenceV1_ObjectTrackingAnnotation =
  GoogleCloudVideointelligenceV1_ObjectTrackingAnnotation'
    { _gcvvota1Frames = Nothing
    , _gcvvota1Confidence = Nothing
    , _gcvvota1Version = Nothing
    , _gcvvota1TrackId = Nothing
    , _gcvvota1Segment = Nothing
    , _gcvvota1Entity = Nothing
    }


-- | Information corresponding to all frames where this object track appears.
-- Non-streaming batch mode: it may be one or multiple ObjectTrackingFrame
-- messages in frames. Streaming mode: it can only be one
-- ObjectTrackingFrame message in frames.
gcvvota1Frames :: Lens' GoogleCloudVideointelligenceV1_ObjectTrackingAnnotation [GoogleCloudVideointelligenceV1_ObjectTrackingFrame]
gcvvota1Frames
  = lens _gcvvota1Frames
      (\ s a -> s{_gcvvota1Frames = a})
      . _Default
      . _Coerce

-- | Object category\'s labeling confidence of this track.
gcvvota1Confidence :: Lens' GoogleCloudVideointelligenceV1_ObjectTrackingAnnotation (Maybe Double)
gcvvota1Confidence
  = lens _gcvvota1Confidence
      (\ s a -> s{_gcvvota1Confidence = a})
      . mapping _Coerce

-- | Feature version.
gcvvota1Version :: Lens' GoogleCloudVideointelligenceV1_ObjectTrackingAnnotation (Maybe Text)
gcvvota1Version
  = lens _gcvvota1Version
      (\ s a -> s{_gcvvota1Version = a})

-- | Streaming mode ONLY. In streaming mode, we do not know the end time of a
-- tracked object before it is completed. Hence, there is no VideoSegment
-- info returned. Instead, we provide a unique identifiable integer
-- track_id so that the customers can correlate the results of the ongoing
-- ObjectTrackAnnotation of the same track_id over time.
gcvvota1TrackId :: Lens' GoogleCloudVideointelligenceV1_ObjectTrackingAnnotation (Maybe Int64)
gcvvota1TrackId
  = lens _gcvvota1TrackId
      (\ s a -> s{_gcvvota1TrackId = a})
      . mapping _Coerce

-- | Non-streaming batch mode ONLY. Each object track corresponds to one
-- video segment where it appears.
gcvvota1Segment :: Lens' GoogleCloudVideointelligenceV1_ObjectTrackingAnnotation (Maybe GoogleCloudVideointelligenceV1_VideoSegment)
gcvvota1Segment
  = lens _gcvvota1Segment
      (\ s a -> s{_gcvvota1Segment = a})

-- | Entity to specify the object category that this track is labeled as.
gcvvota1Entity :: Lens' GoogleCloudVideointelligenceV1_ObjectTrackingAnnotation (Maybe GoogleCloudVideointelligenceV1_Entity)
gcvvota1Entity
  = lens _gcvvota1Entity
      (\ s a -> s{_gcvvota1Entity = a})

instance FromJSON
           GoogleCloudVideointelligenceV1_ObjectTrackingAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1ObjectTrackingAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1_ObjectTrackingAnnotation'
                   <$>
                   (o .:? "frames" .!= mempty) <*> (o .:? "confidence")
                     <*> (o .:? "version")
                     <*> (o .:? "trackId")
                     <*> (o .:? "segment")
                     <*> (o .:? "entity"))

instance ToJSON
           GoogleCloudVideointelligenceV1_ObjectTrackingAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1_ObjectTrackingAnnotation'{..}
          = object
              (catMaybes
                 [("frames" .=) <$> _gcvvota1Frames,
                  ("confidence" .=) <$> _gcvvota1Confidence,
                  ("version" .=) <$> _gcvvota1Version,
                  ("trackId" .=) <$> _gcvvota1TrackId,
                  ("segment" .=) <$> _gcvvota1Segment,
                  ("entity" .=) <$> _gcvvota1Entity])

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
    { _gooVertices :: Maybe [GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooVertices'
googleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly
    :: GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly
googleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly =
  GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly'
    {_gooVertices = Nothing}


-- | Normalized vertices of the bounding polygon.
gooVertices :: Lens' GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly [GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex]
gooVertices
  = lens _gooVertices (\ s a -> s{_gooVertices = a}) .
      _Default
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
              (catMaybes [("vertices" .=) <$> _gooVertices])

-- | Word-specific information for recognized words. Word information is only
-- included in the response when certain request parameters are set, such
-- as \`enable_word_time_offsets\`.
--
-- /See:/ 'googleCloudVideointelligenceV1beta2_WordInfo' smart constructor.
data GoogleCloudVideointelligenceV1beta2_WordInfo =
  GoogleCloudVideointelligenceV1beta2_WordInfo'
    { _gcvvwi1StartTime :: !(Maybe GDuration)
    , _gcvvwi1Confidence :: !(Maybe (Textual Double))
    , _gcvvwi1EndTime :: !(Maybe GDuration)
    , _gcvvwi1Word :: !(Maybe Text)
    , _gcvvwi1SpeakerTag :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_WordInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvwi1StartTime'
--
-- * 'gcvvwi1Confidence'
--
-- * 'gcvvwi1EndTime'
--
-- * 'gcvvwi1Word'
--
-- * 'gcvvwi1SpeakerTag'
googleCloudVideointelligenceV1beta2_WordInfo
    :: GoogleCloudVideointelligenceV1beta2_WordInfo
googleCloudVideointelligenceV1beta2_WordInfo =
  GoogleCloudVideointelligenceV1beta2_WordInfo'
    { _gcvvwi1StartTime = Nothing
    , _gcvvwi1Confidence = Nothing
    , _gcvvwi1EndTime = Nothing
    , _gcvvwi1Word = Nothing
    , _gcvvwi1SpeakerTag = Nothing
    }


-- | Time offset relative to the beginning of the audio, and corresponding to
-- the start of the spoken word. This field is only set if
-- \`enable_word_time_offsets=true\` and only in the top hypothesis. This
-- is an experimental feature and the accuracy of the time offset can vary.
gcvvwi1StartTime :: Lens' GoogleCloudVideointelligenceV1beta2_WordInfo (Maybe Scientific)
gcvvwi1StartTime
  = lens _gcvvwi1StartTime
      (\ s a -> s{_gcvvwi1StartTime = a})
      . mapping _GDuration

-- | Output only. The confidence estimate between 0.0 and 1.0. A higher
-- number indicates an estimated greater likelihood that the recognized
-- words are correct. This field is set only for the top alternative. This
-- field is not guaranteed to be accurate and users should not rely on it
-- to be always provided. The default of 0.0 is a sentinel value indicating
-- \`confidence\` was not set.
gcvvwi1Confidence :: Lens' GoogleCloudVideointelligenceV1beta2_WordInfo (Maybe Double)
gcvvwi1Confidence
  = lens _gcvvwi1Confidence
      (\ s a -> s{_gcvvwi1Confidence = a})
      . mapping _Coerce

-- | Time offset relative to the beginning of the audio, and corresponding to
-- the end of the spoken word. This field is only set if
-- \`enable_word_time_offsets=true\` and only in the top hypothesis. This
-- is an experimental feature and the accuracy of the time offset can vary.
gcvvwi1EndTime :: Lens' GoogleCloudVideointelligenceV1beta2_WordInfo (Maybe Scientific)
gcvvwi1EndTime
  = lens _gcvvwi1EndTime
      (\ s a -> s{_gcvvwi1EndTime = a})
      . mapping _GDuration

-- | The word corresponding to this set of information.
gcvvwi1Word :: Lens' GoogleCloudVideointelligenceV1beta2_WordInfo (Maybe Text)
gcvvwi1Word
  = lens _gcvvwi1Word (\ s a -> s{_gcvvwi1Word = a})

-- | Output only. A distinct integer value is assigned for every speaker
-- within the audio. This field specifies which one of those speakers was
-- detected to have spoken this word. Value ranges from 1 up to
-- diarization_speaker_count, and is only set if speaker diarization is
-- enabled.
gcvvwi1SpeakerTag :: Lens' GoogleCloudVideointelligenceV1beta2_WordInfo (Maybe Int32)
gcvvwi1SpeakerTag
  = lens _gcvvwi1SpeakerTag
      (\ s a -> s{_gcvvwi1SpeakerTag = a})
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
                 [("startTime" .=) <$> _gcvvwi1StartTime,
                  ("confidence" .=) <$> _gcvvwi1Confidence,
                  ("endTime" .=) <$> _gcvvwi1EndTime,
                  ("word" .=) <$> _gcvvwi1Word,
                  ("speakerTag" .=) <$> _gcvvwi1SpeakerTag])

-- | Video annotation response. Included in the \`response\` field of the
-- \`Operation\` returned by the \`GetOperation\` call of the
-- \`google::longrunning::Operations\` service.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_AnnotateVideoResponse' smart constructor.
newtype GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoResponse =
  GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoResponse'
    { _gooAnnotationResults :: Maybe [GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooAnnotationResults'
googleCloudVideointelligenceV1p3beta1_AnnotateVideoResponse
    :: GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoResponse
googleCloudVideointelligenceV1p3beta1_AnnotateVideoResponse =
  GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoResponse'
    {_gooAnnotationResults = Nothing}


-- | Annotation results for all videos specified in \`AnnotateVideoRequest\`.
gooAnnotationResults :: Lens' GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoResponse [GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults]
gooAnnotationResults
  = lens _gooAnnotationResults
      (\ s a -> s{_gooAnnotationResults = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoResponse
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1AnnotateVideoResponse"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoResponse'
                   <$> (o .:? "annotationResults" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoResponse
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoResponse'{..}
          = object
              (catMaybes
                 [("annotationResults" .=) <$> _gooAnnotationResults])

-- | Annotations related to one detected OCR text snippet. This will contain
-- the corresponding text, confidence value, and frame level information
-- for each detection.
--
-- /See:/ 'googleCloudVideointelligenceV1p1beta1_TextAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_TextAnnotation =
  GoogleCloudVideointelligenceV1p1beta1_TextAnnotation'
    { _goooText :: !(Maybe Text)
    , _goooVersion :: !(Maybe Text)
    , _goooSegments :: !(Maybe [GoogleCloudVideointelligenceV1p1beta1_TextSegment])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_TextAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'goooText'
--
-- * 'goooVersion'
--
-- * 'goooSegments'
googleCloudVideointelligenceV1p1beta1_TextAnnotation
    :: GoogleCloudVideointelligenceV1p1beta1_TextAnnotation
googleCloudVideointelligenceV1p1beta1_TextAnnotation =
  GoogleCloudVideointelligenceV1p1beta1_TextAnnotation'
    {_goooText = Nothing, _goooVersion = Nothing, _goooSegments = Nothing}


-- | The detected text.
goooText :: Lens' GoogleCloudVideointelligenceV1p1beta1_TextAnnotation (Maybe Text)
goooText = lens _goooText (\ s a -> s{_goooText = a})

-- | Feature version.
goooVersion :: Lens' GoogleCloudVideointelligenceV1p1beta1_TextAnnotation (Maybe Text)
goooVersion
  = lens _goooVersion (\ s a -> s{_goooVersion = a})

-- | All video segments where OCR detected text appears.
goooSegments :: Lens' GoogleCloudVideointelligenceV1p1beta1_TextAnnotation [GoogleCloudVideointelligenceV1p1beta1_TextSegment]
goooSegments
  = lens _goooSegments (\ s a -> s{_goooSegments = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1p1beta1_TextAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p1beta1TextAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1p1beta1_TextAnnotation'
                   <$>
                   (o .:? "text") <*> (o .:? "version") <*>
                     (o .:? "segments" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1p1beta1_TextAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1p1beta1_TextAnnotation'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _goooText,
                  ("version" .=) <$> _goooVersion,
                  ("segments" .=) <$> _goooSegments])

-- | Explicit content annotation (based on per-frame visual signals only). If
-- no explicit content has been detected in a frame, no annotations are
-- present for that frame.
--
-- /See:/ 'googleCloudVideointelligenceV1_ExplicitContentAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1_ExplicitContentAnnotation =
  GoogleCloudVideointelligenceV1_ExplicitContentAnnotation'
    { _gcvvecacFrames :: !(Maybe [GoogleCloudVideointelligenceV1_ExplicitContentFrame])
    , _gcvvecacVersion :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1_ExplicitContentAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvecacFrames'
--
-- * 'gcvvecacVersion'
googleCloudVideointelligenceV1_ExplicitContentAnnotation
    :: GoogleCloudVideointelligenceV1_ExplicitContentAnnotation
googleCloudVideointelligenceV1_ExplicitContentAnnotation =
  GoogleCloudVideointelligenceV1_ExplicitContentAnnotation'
    {_gcvvecacFrames = Nothing, _gcvvecacVersion = Nothing}


-- | All video frames where explicit content was detected.
gcvvecacFrames :: Lens' GoogleCloudVideointelligenceV1_ExplicitContentAnnotation [GoogleCloudVideointelligenceV1_ExplicitContentFrame]
gcvvecacFrames
  = lens _gcvvecacFrames
      (\ s a -> s{_gcvvecacFrames = a})
      . _Default
      . _Coerce

-- | Feature version.
gcvvecacVersion :: Lens' GoogleCloudVideointelligenceV1_ExplicitContentAnnotation (Maybe Text)
gcvvecacVersion
  = lens _gcvvecacVersion
      (\ s a -> s{_gcvvecacVersion = a})

instance FromJSON
           GoogleCloudVideointelligenceV1_ExplicitContentAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1ExplicitContentAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1_ExplicitContentAnnotation'
                   <$>
                   (o .:? "frames" .!= mempty) <*> (o .:? "version"))

instance ToJSON
           GoogleCloudVideointelligenceV1_ExplicitContentAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1_ExplicitContentAnnotation'{..}
          = object
              (catMaybes
                 [("frames" .=) <$> _gcvvecacFrames,
                  ("version" .=) <$> _gcvvecacVersion])

-- | Video frame level annotation results for text annotation (OCR). Contains
-- information regarding timestamp and bounding box locations for the
-- frames containing detected OCR text snippets.
--
-- /See:/ 'googleCloudVideointelligenceV1beta2_TextFrame' smart constructor.
data GoogleCloudVideointelligenceV1beta2_TextFrame =
  GoogleCloudVideointelligenceV1beta2_TextFrame'
    { _gcvvtf1RotatedBoundingBox :: !(Maybe GoogleCloudVideointelligenceV1beta2_NormalizedBoundingPoly)
    , _gcvvtf1TimeOffSet :: !(Maybe GDuration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_TextFrame' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvtf1RotatedBoundingBox'
--
-- * 'gcvvtf1TimeOffSet'
googleCloudVideointelligenceV1beta2_TextFrame
    :: GoogleCloudVideointelligenceV1beta2_TextFrame
googleCloudVideointelligenceV1beta2_TextFrame =
  GoogleCloudVideointelligenceV1beta2_TextFrame'
    {_gcvvtf1RotatedBoundingBox = Nothing, _gcvvtf1TimeOffSet = Nothing}


-- | Bounding polygon of the detected text for this frame.
gcvvtf1RotatedBoundingBox :: Lens' GoogleCloudVideointelligenceV1beta2_TextFrame (Maybe GoogleCloudVideointelligenceV1beta2_NormalizedBoundingPoly)
gcvvtf1RotatedBoundingBox
  = lens _gcvvtf1RotatedBoundingBox
      (\ s a -> s{_gcvvtf1RotatedBoundingBox = a})

-- | Timestamp of this frame.
gcvvtf1TimeOffSet :: Lens' GoogleCloudVideointelligenceV1beta2_TextFrame (Maybe Scientific)
gcvvtf1TimeOffSet
  = lens _gcvvtf1TimeOffSet
      (\ s a -> s{_gcvvtf1TimeOffSet = a})
      . mapping _GDuration

instance FromJSON
           GoogleCloudVideointelligenceV1beta2_TextFrame
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1beta2TextFrame"
              (\ o ->
                 GoogleCloudVideointelligenceV1beta2_TextFrame' <$>
                   (o .:? "rotatedBoundingBox") <*>
                     (o .:? "timeOffset"))

instance ToJSON
           GoogleCloudVideointelligenceV1beta2_TextFrame
         where
        toJSON
          GoogleCloudVideointelligenceV1beta2_TextFrame'{..}
          = object
              (catMaybes
                 [("rotatedBoundingBox" .=) <$>
                    _gcvvtf1RotatedBoundingBox,
                  ("timeOffset" .=) <$> _gcvvtf1TimeOffSet])

-- | Video annotation response. Included in the \`response\` field of the
-- \`Operation\` returned by the \`GetOperation\` call of the
-- \`google::longrunning::Operations\` service.
--
-- /See:/ 'googleCloudVideointelligenceV1_AnnotateVideoResponse' smart constructor.
newtype GoogleCloudVideointelligenceV1_AnnotateVideoResponse =
  GoogleCloudVideointelligenceV1_AnnotateVideoResponse'
    { _gcvvavrcAnnotationResults :: Maybe [GoogleCloudVideointelligenceV1_VideoAnnotationResults]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1_AnnotateVideoResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvavrcAnnotationResults'
googleCloudVideointelligenceV1_AnnotateVideoResponse
    :: GoogleCloudVideointelligenceV1_AnnotateVideoResponse
googleCloudVideointelligenceV1_AnnotateVideoResponse =
  GoogleCloudVideointelligenceV1_AnnotateVideoResponse'
    {_gcvvavrcAnnotationResults = Nothing}


-- | Annotation results for all videos specified in \`AnnotateVideoRequest\`.
gcvvavrcAnnotationResults :: Lens' GoogleCloudVideointelligenceV1_AnnotateVideoResponse [GoogleCloudVideointelligenceV1_VideoAnnotationResults]
gcvvavrcAnnotationResults
  = lens _gcvvavrcAnnotationResults
      (\ s a -> s{_gcvvavrcAnnotationResults = a})
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
                 [("annotationResults" .=) <$>
                    _gcvvavrcAnnotationResults])

-- | Explicit content annotation (based on per-frame visual signals only). If
-- no explicit content has been detected in a frame, no annotations are
-- present for that frame.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation =
  GoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation'
    { _gcvveca1Frames :: !(Maybe [GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame])
    , _gcvveca1Version :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvveca1Frames'
--
-- * 'gcvveca1Version'
googleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation
    :: GoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation
googleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation =
  GoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation'
    {_gcvveca1Frames = Nothing, _gcvveca1Version = Nothing}


-- | All video frames where explicit content was detected.
gcvveca1Frames :: Lens' GoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation [GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame]
gcvveca1Frames
  = lens _gcvveca1Frames
      (\ s a -> s{_gcvveca1Frames = a})
      . _Default
      . _Coerce

-- | Feature version.
gcvveca1Version :: Lens' GoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation (Maybe Text)
gcvveca1Version
  = lens _gcvveca1Version
      (\ s a -> s{_gcvveca1Version = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation'
                   <$>
                   (o .:? "frames" .!= mempty) <*> (o .:? "version"))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation'{..}
          = object
              (catMaybes
                 [("frames" .=) <$> _gcvveca1Frames,
                  ("version" .=) <$> _gcvveca1Version])

-- | A vertex represents a 2D point in the image. NOTE: the normalized vertex
-- coordinates are relative to the original image and range from 0 to 1.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_NormalizedVertex' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex =
  GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex'
    { _gooX :: !(Maybe (Textual Double))
    , _gooY :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooX'
--
-- * 'gooY'
googleCloudVideointelligenceV1p2beta1_NormalizedVertex
    :: GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex
googleCloudVideointelligenceV1p2beta1_NormalizedVertex =
  GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex'
    {_gooX = Nothing, _gooY = Nothing}


-- | X coordinate.
gooX :: Lens' GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex (Maybe Double)
gooX
  = lens _gooX (\ s a -> s{_gooX = a}) .
      mapping _Coerce

-- | Y coordinate.
gooY :: Lens' GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex (Maybe Double)
gooY
  = lens _gooY (\ s a -> s{_gooY = a}) .
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
              (catMaybes [("x" .=) <$> _gooX, ("y" .=) <$> _gooY])

-- | Label annotation.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_LabelAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation =
  GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation'
    { _gcvvlacCategoryEntities :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_Entity])
    , _gcvvlacFrames :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_LabelFrame])
    , _gcvvlacVersion :: !(Maybe Text)
    , _gcvvlacSegments :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_LabelSegment])
    , _gcvvlacEntity :: !(Maybe GoogleCloudVideointelligenceV1p2beta1_Entity)
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
-- * 'gcvvlacVersion'
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
    , _gcvvlacVersion = Nothing
    , _gcvvlacSegments = Nothing
    , _gcvvlacEntity = Nothing
    }


-- | Common categories for the detected entity. For example, when the label
-- is \`Terrier\`, the category is likely \`dog\`. And in some cases there
-- might be more than one categories e.g., \`Terrier\` could also be a
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

-- | Feature version.
gcvvlacVersion :: Lens' GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation (Maybe Text)
gcvvlacVersion
  = lens _gcvvlacVersion
      (\ s a -> s{_gcvvlacVersion = a})

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
                     <*> (o .:? "version")
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
                  ("version" .=) <$> _gcvvlacVersion,
                  ("segments" .=) <$> _gcvvlacSegments,
                  ("entity" .=) <$> _gcvvlacEntity])

-- | Alternative hypotheses (a.k.a. n-best list).
--
-- /See:/ 'googleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative' smart constructor.
data GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative =
  GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative'
    { _g1Confidence :: !(Maybe (Textual Double))
    , _g1Words :: !(Maybe [GoogleCloudVideointelligenceV1beta2_WordInfo])
    , _g1Transcript :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'g1Confidence'
--
-- * 'g1Words'
--
-- * 'g1Transcript'
googleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative
    :: GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative
googleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative =
  GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative'
    {_g1Confidence = Nothing, _g1Words = Nothing, _g1Transcript = Nothing}


-- | Output only. The confidence estimate between 0.0 and 1.0. A higher
-- number indicates an estimated greater likelihood that the recognized
-- words are correct. This field is set only for the top alternative. This
-- field is not guaranteed to be accurate and users should not rely on it
-- to be always provided. The default of 0.0 is a sentinel value indicating
-- \`confidence\` was not set.
g1Confidence :: Lens' GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative (Maybe Double)
g1Confidence
  = lens _g1Confidence (\ s a -> s{_g1Confidence = a})
      . mapping _Coerce

-- | Output only. A list of word-specific information for each recognized
-- word. Note: When \`enable_speaker_diarization\` is set to true, you will
-- see all the words from the beginning of the audio.
g1Words :: Lens' GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative [GoogleCloudVideointelligenceV1beta2_WordInfo]
g1Words
  = lens _g1Words (\ s a -> s{_g1Words = a}) . _Default
      . _Coerce

-- | Transcript text representing the words that the user spoke.
g1Transcript :: Lens' GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative (Maybe Text)
g1Transcript
  = lens _g1Transcript (\ s a -> s{_g1Transcript = a})

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
                 [("confidence" .=) <$> _g1Confidence,
                  ("words" .=) <$> _g1Words,
                  ("transcript" .=) <$> _g1Transcript])

-- | Config for TEXT_DETECTION.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_TextDetectionConfig' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_TextDetectionConfig =
  GoogleCloudVideointelligenceV1p3beta1_TextDetectionConfig'
    { _gcvvtdcModel :: !(Maybe Text)
    , _gcvvtdcLanguageHints :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_TextDetectionConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvtdcModel'
--
-- * 'gcvvtdcLanguageHints'
googleCloudVideointelligenceV1p3beta1_TextDetectionConfig
    :: GoogleCloudVideointelligenceV1p3beta1_TextDetectionConfig
googleCloudVideointelligenceV1p3beta1_TextDetectionConfig =
  GoogleCloudVideointelligenceV1p3beta1_TextDetectionConfig'
    {_gcvvtdcModel = Nothing, _gcvvtdcLanguageHints = Nothing}


-- | Model to use for text detection. Supported values: \"builtin\/stable\"
-- (the default if unset) and \"builtin\/latest\".
gcvvtdcModel :: Lens' GoogleCloudVideointelligenceV1p3beta1_TextDetectionConfig (Maybe Text)
gcvvtdcModel
  = lens _gcvvtdcModel (\ s a -> s{_gcvvtdcModel = a})

-- | Language hint can be specified if the language to be detected is known a
-- priori. It can increase the accuracy of the detection. Language hint
-- must be language code in BCP-47 format. Automatic language detection is
-- performed if no hint is provided.
gcvvtdcLanguageHints :: Lens' GoogleCloudVideointelligenceV1p3beta1_TextDetectionConfig [Text]
gcvvtdcLanguageHints
  = lens _gcvvtdcLanguageHints
      (\ s a -> s{_gcvvtdcLanguageHints = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_TextDetectionConfig
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1TextDetectionConfig"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_TextDetectionConfig'
                   <$>
                   (o .:? "model") <*>
                     (o .:? "languageHints" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_TextDetectionConfig
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_TextDetectionConfig'{..}
          = object
              (catMaybes
                 [("model" .=) <$> _gcvvtdcModel,
                  ("languageHints" .=) <$> _gcvvtdcLanguageHints])

-- | For tracking related features. An object at time_offset with attributes,
-- and located with normalized_bounding_box.
--
-- /See:/ 'googleCloudVideointelligenceV1p1beta1_TimestampedObject' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_TimestampedObject =
  GoogleCloudVideointelligenceV1p1beta1_TimestampedObject'
    { _gcvvtocTimeOffSet :: !(Maybe GDuration)
    , _gcvvtocAttributes :: !(Maybe [GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute])
    , _gcvvtocNormalizedBoundingBox :: !(Maybe GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox)
    , _gcvvtocLandmarks :: !(Maybe [GoogleCloudVideointelligenceV1p1beta1_DetectedLandmark])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_TimestampedObject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvtocTimeOffSet'
--
-- * 'gcvvtocAttributes'
--
-- * 'gcvvtocNormalizedBoundingBox'
--
-- * 'gcvvtocLandmarks'
googleCloudVideointelligenceV1p1beta1_TimestampedObject
    :: GoogleCloudVideointelligenceV1p1beta1_TimestampedObject
googleCloudVideointelligenceV1p1beta1_TimestampedObject =
  GoogleCloudVideointelligenceV1p1beta1_TimestampedObject'
    { _gcvvtocTimeOffSet = Nothing
    , _gcvvtocAttributes = Nothing
    , _gcvvtocNormalizedBoundingBox = Nothing
    , _gcvvtocLandmarks = Nothing
    }


-- | Time-offset, relative to the beginning of the video, corresponding to
-- the video frame for this object.
gcvvtocTimeOffSet :: Lens' GoogleCloudVideointelligenceV1p1beta1_TimestampedObject (Maybe Scientific)
gcvvtocTimeOffSet
  = lens _gcvvtocTimeOffSet
      (\ s a -> s{_gcvvtocTimeOffSet = a})
      . mapping _GDuration

-- | Optional. The attributes of the object in the bounding box.
gcvvtocAttributes :: Lens' GoogleCloudVideointelligenceV1p1beta1_TimestampedObject [GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute]
gcvvtocAttributes
  = lens _gcvvtocAttributes
      (\ s a -> s{_gcvvtocAttributes = a})
      . _Default
      . _Coerce

-- | Normalized Bounding box in a frame, where the object is located.
gcvvtocNormalizedBoundingBox :: Lens' GoogleCloudVideointelligenceV1p1beta1_TimestampedObject (Maybe GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox)
gcvvtocNormalizedBoundingBox
  = lens _gcvvtocNormalizedBoundingBox
      (\ s a -> s{_gcvvtocNormalizedBoundingBox = a})

-- | Optional. The detected landmarks.
gcvvtocLandmarks :: Lens' GoogleCloudVideointelligenceV1p1beta1_TimestampedObject [GoogleCloudVideointelligenceV1p1beta1_DetectedLandmark]
gcvvtocLandmarks
  = lens _gcvvtocLandmarks
      (\ s a -> s{_gcvvtocLandmarks = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1p1beta1_TimestampedObject
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p1beta1TimestampedObject"
              (\ o ->
                 GoogleCloudVideointelligenceV1p1beta1_TimestampedObject'
                   <$>
                   (o .:? "timeOffset") <*>
                     (o .:? "attributes" .!= mempty)
                     <*> (o .:? "normalizedBoundingBox")
                     <*> (o .:? "landmarks" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1p1beta1_TimestampedObject
         where
        toJSON
          GoogleCloudVideointelligenceV1p1beta1_TimestampedObject'{..}
          = object
              (catMaybes
                 [("timeOffset" .=) <$> _gcvvtocTimeOffSet,
                  ("attributes" .=) <$> _gcvvtocAttributes,
                  ("normalizedBoundingBox" .=) <$>
                    _gcvvtocNormalizedBoundingBox,
                  ("landmarks" .=) <$> _gcvvtocLandmarks])

-- | Config for PERSON_DETECTION.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_PersonDetectionConfig' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_PersonDetectionConfig =
  GoogleCloudVideointelligenceV1p3beta1_PersonDetectionConfig'
    { _gcvvpdcIncludePoseLandmarks :: !(Maybe Bool)
    , _gcvvpdcIncludeBoundingBoxes :: !(Maybe Bool)
    , _gcvvpdcIncludeAttributes :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_PersonDetectionConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvpdcIncludePoseLandmarks'
--
-- * 'gcvvpdcIncludeBoundingBoxes'
--
-- * 'gcvvpdcIncludeAttributes'
googleCloudVideointelligenceV1p3beta1_PersonDetectionConfig
    :: GoogleCloudVideointelligenceV1p3beta1_PersonDetectionConfig
googleCloudVideointelligenceV1p3beta1_PersonDetectionConfig =
  GoogleCloudVideointelligenceV1p3beta1_PersonDetectionConfig'
    { _gcvvpdcIncludePoseLandmarks = Nothing
    , _gcvvpdcIncludeBoundingBoxes = Nothing
    , _gcvvpdcIncludeAttributes = Nothing
    }


-- | Whether to enable pose landmarks detection. Ignored if
-- \'include_bounding_boxes\' is set to false.
gcvvpdcIncludePoseLandmarks :: Lens' GoogleCloudVideointelligenceV1p3beta1_PersonDetectionConfig (Maybe Bool)
gcvvpdcIncludePoseLandmarks
  = lens _gcvvpdcIncludePoseLandmarks
      (\ s a -> s{_gcvvpdcIncludePoseLandmarks = a})

-- | Whether bounding boxes are included in the person detection annotation
-- output.
gcvvpdcIncludeBoundingBoxes :: Lens' GoogleCloudVideointelligenceV1p3beta1_PersonDetectionConfig (Maybe Bool)
gcvvpdcIncludeBoundingBoxes
  = lens _gcvvpdcIncludeBoundingBoxes
      (\ s a -> s{_gcvvpdcIncludeBoundingBoxes = a})

-- | Whether to enable person attributes detection, such as cloth color
-- (black, blue, etc), type (coat, dress, etc), pattern (plain, floral,
-- etc), hair, etc. Ignored if \'include_bounding_boxes\' is set to false.
gcvvpdcIncludeAttributes :: Lens' GoogleCloudVideointelligenceV1p3beta1_PersonDetectionConfig (Maybe Bool)
gcvvpdcIncludeAttributes
  = lens _gcvvpdcIncludeAttributes
      (\ s a -> s{_gcvvpdcIncludeAttributes = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_PersonDetectionConfig
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1PersonDetectionConfig"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_PersonDetectionConfig'
                   <$>
                   (o .:? "includePoseLandmarks") <*>
                     (o .:? "includeBoundingBoxes")
                     <*> (o .:? "includeAttributes"))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_PersonDetectionConfig
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_PersonDetectionConfig'{..}
          = object
              (catMaybes
                 [("includePoseLandmarks" .=) <$>
                    _gcvvpdcIncludePoseLandmarks,
                  ("includeBoundingBoxes" .=) <$>
                    _gcvvpdcIncludeBoundingBoxes,
                  ("includeAttributes" .=) <$>
                    _gcvvpdcIncludeAttributes])

-- | A generic detected attribute represented by name in string format.
--
-- /See:/ 'googleCloudVideointelligenceV1p1beta1_DetectedAttribute' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute =
  GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute'
    { _gcvvdacValue :: !(Maybe Text)
    , _gcvvdacConfidence :: !(Maybe (Textual Double))
    , _gcvvdacName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvdacValue'
--
-- * 'gcvvdacConfidence'
--
-- * 'gcvvdacName'
googleCloudVideointelligenceV1p1beta1_DetectedAttribute
    :: GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute
googleCloudVideointelligenceV1p1beta1_DetectedAttribute =
  GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute'
    { _gcvvdacValue = Nothing
    , _gcvvdacConfidence = Nothing
    , _gcvvdacName = Nothing
    }


-- | Text value of the detection result. For example, the value for
-- \"HairColor\" can be \"black\", \"blonde\", etc.
gcvvdacValue :: Lens' GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute (Maybe Text)
gcvvdacValue
  = lens _gcvvdacValue (\ s a -> s{_gcvvdacValue = a})

-- | Detected attribute confidence. Range [0, 1].
gcvvdacConfidence :: Lens' GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute (Maybe Double)
gcvvdacConfidence
  = lens _gcvvdacConfidence
      (\ s a -> s{_gcvvdacConfidence = a})
      . mapping _Coerce

-- | The name of the attribute, for example, glasses, dark_glasses,
-- mouth_open. A full list of supported type names will be provided in the
-- document.
gcvvdacName :: Lens' GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute (Maybe Text)
gcvvdacName
  = lens _gcvvdacName (\ s a -> s{_gcvvdacName = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p1beta1DetectedAttribute"
              (\ o ->
                 GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute'
                   <$>
                   (o .:? "value") <*> (o .:? "confidence") <*>
                     (o .:? "name"))

instance ToJSON
           GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute
         where
        toJSON
          GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _gcvvdacValue,
                  ("confidence" .=) <$> _gcvvdacConfidence,
                  ("name" .=) <$> _gcvvdacName])

-- | Video segment.
--
-- /See:/ 'googleCloudVideointelligenceV1p1beta1_VideoSegment' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_VideoSegment =
  GoogleCloudVideointelligenceV1p1beta1_VideoSegment'
    { _gooStartTimeOffSet :: !(Maybe GDuration)
    , _gooEndTimeOffSet :: !(Maybe GDuration)
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

-- | Face detection annotation.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation =
  GoogleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation'
    { _gcvvfda1Thumbnail :: !(Maybe Bytes)
    , _gcvvfda1Tracks :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_Track])
    , _gcvvfda1Version :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvfda1Thumbnail'
--
-- * 'gcvvfda1Tracks'
--
-- * 'gcvvfda1Version'
googleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation
    :: GoogleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation
googleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation =
  GoogleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation'
    { _gcvvfda1Thumbnail = Nothing
    , _gcvvfda1Tracks = Nothing
    , _gcvvfda1Version = Nothing
    }


-- | The thumbnail of a person\'s face.
gcvvfda1Thumbnail :: Lens' GoogleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation (Maybe ByteString)
gcvvfda1Thumbnail
  = lens _gcvvfda1Thumbnail
      (\ s a -> s{_gcvvfda1Thumbnail = a})
      . mapping _Bytes

-- | The face tracks with attributes.
gcvvfda1Tracks :: Lens' GoogleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation [GoogleCloudVideointelligenceV1p2beta1_Track]
gcvvfda1Tracks
  = lens _gcvvfda1Tracks
      (\ s a -> s{_gcvvfda1Tracks = a})
      . _Default
      . _Coerce

-- | Feature version.
gcvvfda1Version :: Lens' GoogleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation (Maybe Text)
gcvvfda1Version
  = lens _gcvvfda1Version
      (\ s a -> s{_gcvvfda1Version = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p2beta1FaceDetectionAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation'
                   <$>
                   (o .:? "thumbnail") <*> (o .:? "tracks" .!= mempty)
                     <*> (o .:? "version"))

instance ToJSON
           GoogleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation'{..}
          = object
              (catMaybes
                 [("thumbnail" .=) <$> _gcvvfda1Thumbnail,
                  ("tracks" .=) <$> _gcvvfda1Tracks,
                  ("version" .=) <$> _gcvvfda1Version])

-- | A generic detected attribute represented by name in string format.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_DetectedAttribute' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute =
  GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute'
    { _gcvvda1Value :: !(Maybe Text)
    , _gcvvda1Confidence :: !(Maybe (Textual Double))
    , _gcvvda1Name :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvda1Value'
--
-- * 'gcvvda1Confidence'
--
-- * 'gcvvda1Name'
googleCloudVideointelligenceV1p2beta1_DetectedAttribute
    :: GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute
googleCloudVideointelligenceV1p2beta1_DetectedAttribute =
  GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute'
    { _gcvvda1Value = Nothing
    , _gcvvda1Confidence = Nothing
    , _gcvvda1Name = Nothing
    }


-- | Text value of the detection result. For example, the value for
-- \"HairColor\" can be \"black\", \"blonde\", etc.
gcvvda1Value :: Lens' GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute (Maybe Text)
gcvvda1Value
  = lens _gcvvda1Value (\ s a -> s{_gcvvda1Value = a})

-- | Detected attribute confidence. Range [0, 1].
gcvvda1Confidence :: Lens' GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute (Maybe Double)
gcvvda1Confidence
  = lens _gcvvda1Confidence
      (\ s a -> s{_gcvvda1Confidence = a})
      . mapping _Coerce

-- | The name of the attribute, for example, glasses, dark_glasses,
-- mouth_open. A full list of supported type names will be provided in the
-- document.
gcvvda1Name :: Lens' GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute (Maybe Text)
gcvvda1Name
  = lens _gcvvda1Name (\ s a -> s{_gcvvda1Name = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p2beta1DetectedAttribute"
              (\ o ->
                 GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute'
                   <$>
                   (o .:? "value") <*> (o .:? "confidence") <*>
                     (o .:? "name"))

instance ToJSON
           GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute
         where
        toJSON
          GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _gcvvda1Value,
                  ("confidence" .=) <$> _gcvvda1Confidence,
                  ("name" .=) <$> _gcvvda1Name])

-- | Annotation corresponding to one detected, tracked and recognized logo
-- class.
--
-- /See:/ 'googleCloudVideointelligenceV1_LogoRecognitionAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1_LogoRecognitionAnnotation =
  GoogleCloudVideointelligenceV1_LogoRecognitionAnnotation'
    { _gcvvlracTracks :: !(Maybe [GoogleCloudVideointelligenceV1_Track])
    , _gcvvlracSegments :: !(Maybe [GoogleCloudVideointelligenceV1_VideoSegment])
    , _gcvvlracEntity :: !(Maybe GoogleCloudVideointelligenceV1_Entity)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1_LogoRecognitionAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvlracTracks'
--
-- * 'gcvvlracSegments'
--
-- * 'gcvvlracEntity'
googleCloudVideointelligenceV1_LogoRecognitionAnnotation
    :: GoogleCloudVideointelligenceV1_LogoRecognitionAnnotation
googleCloudVideointelligenceV1_LogoRecognitionAnnotation =
  GoogleCloudVideointelligenceV1_LogoRecognitionAnnotation'
    { _gcvvlracTracks = Nothing
    , _gcvvlracSegments = Nothing
    , _gcvvlracEntity = Nothing
    }


-- | All logo tracks where the recognized logo appears. Each track
-- corresponds to one logo instance appearing in consecutive frames.
gcvvlracTracks :: Lens' GoogleCloudVideointelligenceV1_LogoRecognitionAnnotation [GoogleCloudVideointelligenceV1_Track]
gcvvlracTracks
  = lens _gcvvlracTracks
      (\ s a -> s{_gcvvlracTracks = a})
      . _Default
      . _Coerce

-- | All video segments where the recognized logo appears. There might be
-- multiple instances of the same logo class appearing in one VideoSegment.
gcvvlracSegments :: Lens' GoogleCloudVideointelligenceV1_LogoRecognitionAnnotation [GoogleCloudVideointelligenceV1_VideoSegment]
gcvvlracSegments
  = lens _gcvvlracSegments
      (\ s a -> s{_gcvvlracSegments = a})
      . _Default
      . _Coerce

-- | Entity category information to specify the logo class that all the logo
-- tracks within this LogoRecognitionAnnotation are recognized as.
gcvvlracEntity :: Lens' GoogleCloudVideointelligenceV1_LogoRecognitionAnnotation (Maybe GoogleCloudVideointelligenceV1_Entity)
gcvvlracEntity
  = lens _gcvvlracEntity
      (\ s a -> s{_gcvvlracEntity = a})

instance FromJSON
           GoogleCloudVideointelligenceV1_LogoRecognitionAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1LogoRecognitionAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1_LogoRecognitionAnnotation'
                   <$>
                   (o .:? "tracks" .!= mempty) <*>
                     (o .:? "segments" .!= mempty)
                     <*> (o .:? "entity"))

instance ToJSON
           GoogleCloudVideointelligenceV1_LogoRecognitionAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1_LogoRecognitionAnnotation'{..}
          = object
              (catMaybes
                 [("tracks" .=) <$> _gcvvlracTracks,
                  ("segments" .=) <$> _gcvvlracSegments,
                  ("entity" .=) <$> _gcvvlracEntity])

-- | For tracking related features. An object at time_offset with attributes,
-- and located with normalized_bounding_box.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_TimestampedObject' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_TimestampedObject =
  GoogleCloudVideointelligenceV1p2beta1_TimestampedObject'
    { _gcvvto1TimeOffSet :: !(Maybe GDuration)
    , _gcvvto1Attributes :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute])
    , _gcvvto1NormalizedBoundingBox :: !(Maybe GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox)
    , _gcvvto1Landmarks :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_DetectedLandmark])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_TimestampedObject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvto1TimeOffSet'
--
-- * 'gcvvto1Attributes'
--
-- * 'gcvvto1NormalizedBoundingBox'
--
-- * 'gcvvto1Landmarks'
googleCloudVideointelligenceV1p2beta1_TimestampedObject
    :: GoogleCloudVideointelligenceV1p2beta1_TimestampedObject
googleCloudVideointelligenceV1p2beta1_TimestampedObject =
  GoogleCloudVideointelligenceV1p2beta1_TimestampedObject'
    { _gcvvto1TimeOffSet = Nothing
    , _gcvvto1Attributes = Nothing
    , _gcvvto1NormalizedBoundingBox = Nothing
    , _gcvvto1Landmarks = Nothing
    }


-- | Time-offset, relative to the beginning of the video, corresponding to
-- the video frame for this object.
gcvvto1TimeOffSet :: Lens' GoogleCloudVideointelligenceV1p2beta1_TimestampedObject (Maybe Scientific)
gcvvto1TimeOffSet
  = lens _gcvvto1TimeOffSet
      (\ s a -> s{_gcvvto1TimeOffSet = a})
      . mapping _GDuration

-- | Optional. The attributes of the object in the bounding box.
gcvvto1Attributes :: Lens' GoogleCloudVideointelligenceV1p2beta1_TimestampedObject [GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute]
gcvvto1Attributes
  = lens _gcvvto1Attributes
      (\ s a -> s{_gcvvto1Attributes = a})
      . _Default
      . _Coerce

-- | Normalized Bounding box in a frame, where the object is located.
gcvvto1NormalizedBoundingBox :: Lens' GoogleCloudVideointelligenceV1p2beta1_TimestampedObject (Maybe GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox)
gcvvto1NormalizedBoundingBox
  = lens _gcvvto1NormalizedBoundingBox
      (\ s a -> s{_gcvvto1NormalizedBoundingBox = a})

-- | Optional. The detected landmarks.
gcvvto1Landmarks :: Lens' GoogleCloudVideointelligenceV1p2beta1_TimestampedObject [GoogleCloudVideointelligenceV1p2beta1_DetectedLandmark]
gcvvto1Landmarks
  = lens _gcvvto1Landmarks
      (\ s a -> s{_gcvvto1Landmarks = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1p2beta1_TimestampedObject
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p2beta1TimestampedObject"
              (\ o ->
                 GoogleCloudVideointelligenceV1p2beta1_TimestampedObject'
                   <$>
                   (o .:? "timeOffset") <*>
                     (o .:? "attributes" .!= mempty)
                     <*> (o .:? "normalizedBoundingBox")
                     <*> (o .:? "landmarks" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1p2beta1_TimestampedObject
         where
        toJSON
          GoogleCloudVideointelligenceV1p2beta1_TimestampedObject'{..}
          = object
              (catMaybes
                 [("timeOffset" .=) <$> _gcvvto1TimeOffSet,
                  ("attributes" .=) <$> _gcvvto1Attributes,
                  ("normalizedBoundingBox" .=) <$>
                    _gcvvto1NormalizedBoundingBox,
                  ("landmarks" .=) <$> _gcvvto1Landmarks])

-- | Detected entity from video analysis.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_Entity' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_Entity =
  GoogleCloudVideointelligenceV1p3beta1_Entity'
    { _ggLanguageCode :: !(Maybe Text)
    , _ggEntityId :: !(Maybe Text)
    , _ggDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_Entity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggLanguageCode'
--
-- * 'ggEntityId'
--
-- * 'ggDescription'
googleCloudVideointelligenceV1p3beta1_Entity
    :: GoogleCloudVideointelligenceV1p3beta1_Entity
googleCloudVideointelligenceV1p3beta1_Entity =
  GoogleCloudVideointelligenceV1p3beta1_Entity'
    {_ggLanguageCode = Nothing, _ggEntityId = Nothing, _ggDescription = Nothing}


-- | Language code for \`description\` in BCP-47 format.
ggLanguageCode :: Lens' GoogleCloudVideointelligenceV1p3beta1_Entity (Maybe Text)
ggLanguageCode
  = lens _ggLanguageCode
      (\ s a -> s{_ggLanguageCode = a})

-- | Opaque entity ID. Some IDs may be available in [Google Knowledge Graph
-- Search API](https:\/\/developers.google.com\/knowledge-graph\/).
ggEntityId :: Lens' GoogleCloudVideointelligenceV1p3beta1_Entity (Maybe Text)
ggEntityId
  = lens _ggEntityId (\ s a -> s{_ggEntityId = a})

-- | Textual description, e.g., \`Fixed-gear bicycle\`.
ggDescription :: Lens' GoogleCloudVideointelligenceV1p3beta1_Entity (Maybe Text)
ggDescription
  = lens _ggDescription
      (\ s a -> s{_ggDescription = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_Entity
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1Entity"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_Entity' <$>
                   (o .:? "languageCode") <*> (o .:? "entityId") <*>
                     (o .:? "description"))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_Entity
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_Entity'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _ggLanguageCode,
                  ("entityId" .=) <$> _ggEntityId,
                  ("description" .=) <$> _ggDescription])

-- | Config for SHOT_CHANGE_DETECTION.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_ShotChangeDetectionConfig' smart constructor.
newtype GoogleCloudVideointelligenceV1p3beta1_ShotChangeDetectionConfig =
  GoogleCloudVideointelligenceV1p3beta1_ShotChangeDetectionConfig'
    { _gcvvscdcModel :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_ShotChangeDetectionConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvscdcModel'
googleCloudVideointelligenceV1p3beta1_ShotChangeDetectionConfig
    :: GoogleCloudVideointelligenceV1p3beta1_ShotChangeDetectionConfig
googleCloudVideointelligenceV1p3beta1_ShotChangeDetectionConfig =
  GoogleCloudVideointelligenceV1p3beta1_ShotChangeDetectionConfig'
    {_gcvvscdcModel = Nothing}


-- | Model to use for shot change detection. Supported values:
-- \"builtin\/stable\" (the default if unset) and \"builtin\/latest\".
gcvvscdcModel :: Lens' GoogleCloudVideointelligenceV1p3beta1_ShotChangeDetectionConfig (Maybe Text)
gcvvscdcModel
  = lens _gcvvscdcModel
      (\ s a -> s{_gcvvscdcModel = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_ShotChangeDetectionConfig
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1ShotChangeDetectionConfig"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_ShotChangeDetectionConfig'
                   <$> (o .:? "model"))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_ShotChangeDetectionConfig
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_ShotChangeDetectionConfig'{..}
          = object
              (catMaybes [("model" .=) <$> _gcvvscdcModel])

-- | Label annotation.
--
-- /See:/ 'googleCloudVideointelligenceV1p1beta1_LabelAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation =
  GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation'
    { _gcvvla1CategoryEntities :: !(Maybe [GoogleCloudVideointelligenceV1p1beta1_Entity])
    , _gcvvla1Frames :: !(Maybe [GoogleCloudVideointelligenceV1p1beta1_LabelFrame])
    , _gcvvla1Version :: !(Maybe Text)
    , _gcvvla1Segments :: !(Maybe [GoogleCloudVideointelligenceV1p1beta1_LabelSegment])
    , _gcvvla1Entity :: !(Maybe GoogleCloudVideointelligenceV1p1beta1_Entity)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvla1CategoryEntities'
--
-- * 'gcvvla1Frames'
--
-- * 'gcvvla1Version'
--
-- * 'gcvvla1Segments'
--
-- * 'gcvvla1Entity'
googleCloudVideointelligenceV1p1beta1_LabelAnnotation
    :: GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation
googleCloudVideointelligenceV1p1beta1_LabelAnnotation =
  GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation'
    { _gcvvla1CategoryEntities = Nothing
    , _gcvvla1Frames = Nothing
    , _gcvvla1Version = Nothing
    , _gcvvla1Segments = Nothing
    , _gcvvla1Entity = Nothing
    }


-- | Common categories for the detected entity. For example, when the label
-- is \`Terrier\`, the category is likely \`dog\`. And in some cases there
-- might be more than one categories e.g., \`Terrier\` could also be a
-- \`pet\`.
gcvvla1CategoryEntities :: Lens' GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation [GoogleCloudVideointelligenceV1p1beta1_Entity]
gcvvla1CategoryEntities
  = lens _gcvvla1CategoryEntities
      (\ s a -> s{_gcvvla1CategoryEntities = a})
      . _Default
      . _Coerce

-- | All video frames where a label was detected.
gcvvla1Frames :: Lens' GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation [GoogleCloudVideointelligenceV1p1beta1_LabelFrame]
gcvvla1Frames
  = lens _gcvvla1Frames
      (\ s a -> s{_gcvvla1Frames = a})
      . _Default
      . _Coerce

-- | Feature version.
gcvvla1Version :: Lens' GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation (Maybe Text)
gcvvla1Version
  = lens _gcvvla1Version
      (\ s a -> s{_gcvvla1Version = a})

-- | All video segments where a label was detected.
gcvvla1Segments :: Lens' GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation [GoogleCloudVideointelligenceV1p1beta1_LabelSegment]
gcvvla1Segments
  = lens _gcvvla1Segments
      (\ s a -> s{_gcvvla1Segments = a})
      . _Default
      . _Coerce

-- | Detected entity.
gcvvla1Entity :: Lens' GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation (Maybe GoogleCloudVideointelligenceV1p1beta1_Entity)
gcvvla1Entity
  = lens _gcvvla1Entity
      (\ s a -> s{_gcvvla1Entity = a})

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
                     <*> (o .:? "version")
                     <*> (o .:? "segments" .!= mempty)
                     <*> (o .:? "entity"))

instance ToJSON
           GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation'{..}
          = object
              (catMaybes
                 [("categoryEntities" .=) <$>
                    _gcvvla1CategoryEntities,
                  ("frames" .=) <$> _gcvvla1Frames,
                  ("version" .=) <$> _gcvvla1Version,
                  ("segments" .=) <$> _gcvvla1Segments,
                  ("entity" .=) <$> _gcvvla1Entity])

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

-- | Face detection annotation.
--
-- /See:/ 'googleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation =
  GoogleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation'
    { _g1Thumbnail :: !(Maybe Bytes)
    , _g1Tracks :: !(Maybe [GoogleCloudVideointelligenceV1p1beta1_Track])
    , _g1Version :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'g1Thumbnail'
--
-- * 'g1Tracks'
--
-- * 'g1Version'
googleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation
    :: GoogleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation
googleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation =
  GoogleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation'
    {_g1Thumbnail = Nothing, _g1Tracks = Nothing, _g1Version = Nothing}


-- | The thumbnail of a person\'s face.
g1Thumbnail :: Lens' GoogleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation (Maybe ByteString)
g1Thumbnail
  = lens _g1Thumbnail (\ s a -> s{_g1Thumbnail = a}) .
      mapping _Bytes

-- | The face tracks with attributes.
g1Tracks :: Lens' GoogleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation [GoogleCloudVideointelligenceV1p1beta1_Track]
g1Tracks
  = lens _g1Tracks (\ s a -> s{_g1Tracks = a}) .
      _Default
      . _Coerce

-- | Feature version.
g1Version :: Lens' GoogleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation (Maybe Text)
g1Version
  = lens _g1Version (\ s a -> s{_g1Version = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation'
                   <$>
                   (o .:? "thumbnail") <*> (o .:? "tracks" .!= mempty)
                     <*> (o .:? "version"))

instance ToJSON
           GoogleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation'{..}
          = object
              (catMaybes
                 [("thumbnail" .=) <$> _g1Thumbnail,
                  ("tracks" .=) <$> _g1Tracks,
                  ("version" .=) <$> _g1Version])

-- | Annotation corresponding to one detected, tracked and recognized logo
-- class.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation =
  GoogleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation'
    { _gcvvlra1Tracks :: !(Maybe [GoogleCloudVideointelligenceV1p3beta1_Track])
    , _gcvvlra1Segments :: !(Maybe [GoogleCloudVideointelligenceV1p3beta1_VideoSegment])
    , _gcvvlra1Entity :: !(Maybe GoogleCloudVideointelligenceV1p3beta1_Entity)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvlra1Tracks'
--
-- * 'gcvvlra1Segments'
--
-- * 'gcvvlra1Entity'
googleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation
    :: GoogleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation
googleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation =
  GoogleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation'
    { _gcvvlra1Tracks = Nothing
    , _gcvvlra1Segments = Nothing
    , _gcvvlra1Entity = Nothing
    }


-- | All logo tracks where the recognized logo appears. Each track
-- corresponds to one logo instance appearing in consecutive frames.
gcvvlra1Tracks :: Lens' GoogleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation [GoogleCloudVideointelligenceV1p3beta1_Track]
gcvvlra1Tracks
  = lens _gcvvlra1Tracks
      (\ s a -> s{_gcvvlra1Tracks = a})
      . _Default
      . _Coerce

-- | All video segments where the recognized logo appears. There might be
-- multiple instances of the same logo class appearing in one VideoSegment.
gcvvlra1Segments :: Lens' GoogleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation [GoogleCloudVideointelligenceV1p3beta1_VideoSegment]
gcvvlra1Segments
  = lens _gcvvlra1Segments
      (\ s a -> s{_gcvvlra1Segments = a})
      . _Default
      . _Coerce

-- | Entity category information to specify the logo class that all the logo
-- tracks within this LogoRecognitionAnnotation are recognized as.
gcvvlra1Entity :: Lens' GoogleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation (Maybe GoogleCloudVideointelligenceV1p3beta1_Entity)
gcvvlra1Entity
  = lens _gcvvlra1Entity
      (\ s a -> s{_gcvvlra1Entity = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation'
                   <$>
                   (o .:? "tracks" .!= mempty) <*>
                     (o .:? "segments" .!= mempty)
                     <*> (o .:? "entity"))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation'{..}
          = object
              (catMaybes
                 [("tracks" .=) <$> _gcvvlra1Tracks,
                  ("segments" .=) <$> _gcvvlra1Segments,
                  ("entity" .=) <$> _gcvvlra1Entity])

-- | Video frame level annotation results for explicit content.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_ExplicitContentFrame' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame =
  GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame'
    { _gcvvecf1TimeOffSet :: !(Maybe GDuration)
    , _gcvvecf1PornographyLikelihood :: !(Maybe GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFramePornographyLikelihood)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvecf1TimeOffSet'
--
-- * 'gcvvecf1PornographyLikelihood'
googleCloudVideointelligenceV1p2beta1_ExplicitContentFrame
    :: GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame
googleCloudVideointelligenceV1p2beta1_ExplicitContentFrame =
  GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame'
    {_gcvvecf1TimeOffSet = Nothing, _gcvvecf1PornographyLikelihood = Nothing}


-- | Time-offset, relative to the beginning of the video, corresponding to
-- the video frame for this location.
gcvvecf1TimeOffSet :: Lens' GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame (Maybe Scientific)
gcvvecf1TimeOffSet
  = lens _gcvvecf1TimeOffSet
      (\ s a -> s{_gcvvecf1TimeOffSet = a})
      . mapping _GDuration

-- | Likelihood of the pornography content..
gcvvecf1PornographyLikelihood :: Lens' GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame (Maybe GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFramePornographyLikelihood)
gcvvecf1PornographyLikelihood
  = lens _gcvvecf1PornographyLikelihood
      (\ s a -> s{_gcvvecf1PornographyLikelihood = a})

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
                 [("timeOffset" .=) <$> _gcvvecf1TimeOffSet,
                  ("pornographyLikelihood" .=) <$>
                    _gcvvecf1PornographyLikelihood])

-- | Detected entity from video analysis.
--
-- /See:/ 'googleCloudVideointelligenceV1_Entity' smart constructor.
data GoogleCloudVideointelligenceV1_Entity =
  GoogleCloudVideointelligenceV1_Entity'
    { _goooLanguageCode :: !(Maybe Text)
    , _goooEntityId :: !(Maybe Text)
    , _goooDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1_Entity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'goooLanguageCode'
--
-- * 'goooEntityId'
--
-- * 'goooDescription'
googleCloudVideointelligenceV1_Entity
    :: GoogleCloudVideointelligenceV1_Entity
googleCloudVideointelligenceV1_Entity =
  GoogleCloudVideointelligenceV1_Entity'
    { _goooLanguageCode = Nothing
    , _goooEntityId = Nothing
    , _goooDescription = Nothing
    }


-- | Language code for \`description\` in BCP-47 format.
goooLanguageCode :: Lens' GoogleCloudVideointelligenceV1_Entity (Maybe Text)
goooLanguageCode
  = lens _goooLanguageCode
      (\ s a -> s{_goooLanguageCode = a})

-- | Opaque entity ID. Some IDs may be available in [Google Knowledge Graph
-- Search API](https:\/\/developers.google.com\/knowledge-graph\/).
goooEntityId :: Lens' GoogleCloudVideointelligenceV1_Entity (Maybe Text)
goooEntityId
  = lens _goooEntityId (\ s a -> s{_goooEntityId = a})

-- | Textual description, e.g., \`Fixed-gear bicycle\`.
goooDescription :: Lens' GoogleCloudVideointelligenceV1_Entity (Maybe Text)
goooDescription
  = lens _goooDescription
      (\ s a -> s{_goooDescription = a})

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
                 [("languageCode" .=) <$> _goooLanguageCode,
                  ("entityId" .=) <$> _goooEntityId,
                  ("description" .=) <$> _goooDescription])

-- | Video frame level annotation results for label detection.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_LabelFrame' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_LabelFrame =
  GoogleCloudVideointelligenceV1p3beta1_LabelFrame'
    { _goo1TimeOffSet :: !(Maybe GDuration)
    , _goo1Confidence :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_LabelFrame' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'goo1TimeOffSet'
--
-- * 'goo1Confidence'
googleCloudVideointelligenceV1p3beta1_LabelFrame
    :: GoogleCloudVideointelligenceV1p3beta1_LabelFrame
googleCloudVideointelligenceV1p3beta1_LabelFrame =
  GoogleCloudVideointelligenceV1p3beta1_LabelFrame'
    {_goo1TimeOffSet = Nothing, _goo1Confidence = Nothing}


-- | Time-offset, relative to the beginning of the video, corresponding to
-- the video frame for this location.
goo1TimeOffSet :: Lens' GoogleCloudVideointelligenceV1p3beta1_LabelFrame (Maybe Scientific)
goo1TimeOffSet
  = lens _goo1TimeOffSet
      (\ s a -> s{_goo1TimeOffSet = a})
      . mapping _GDuration

-- | Confidence that the label is accurate. Range: [0, 1].
goo1Confidence :: Lens' GoogleCloudVideointelligenceV1p3beta1_LabelFrame (Maybe Double)
goo1Confidence
  = lens _goo1Confidence
      (\ s a -> s{_goo1Confidence = a})
      . mapping _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_LabelFrame
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1LabelFrame"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_LabelFrame' <$>
                   (o .:? "timeOffset") <*> (o .:? "confidence"))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_LabelFrame
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_LabelFrame'{..}
          = object
              (catMaybes
                 [("timeOffset" .=) <$> _goo1TimeOffSet,
                  ("confidence" .=) <$> _goo1Confidence])

-- | Annotation progress for a single video.
--
-- /See:/ 'googleCloudVideointelligenceV1beta2_VideoAnnotationProgress' smart constructor.
data GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress =
  GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress'
    { _ggFeature :: !(Maybe GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgressFeature)
    , _ggStartTime :: !(Maybe DateTime')
    , _ggInputURI :: !(Maybe Text)
    , _ggProgressPercent :: !(Maybe (Textual Int32))
    , _ggUpdateTime :: !(Maybe DateTime')
    , _ggSegment :: !(Maybe GoogleCloudVideointelligenceV1beta2_VideoSegment)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggFeature'
--
-- * 'ggStartTime'
--
-- * 'ggInputURI'
--
-- * 'ggProgressPercent'
--
-- * 'ggUpdateTime'
--
-- * 'ggSegment'
googleCloudVideointelligenceV1beta2_VideoAnnotationProgress
    :: GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress
googleCloudVideointelligenceV1beta2_VideoAnnotationProgress =
  GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress'
    { _ggFeature = Nothing
    , _ggStartTime = Nothing
    , _ggInputURI = Nothing
    , _ggProgressPercent = Nothing
    , _ggUpdateTime = Nothing
    , _ggSegment = Nothing
    }


-- | Specifies which feature is being tracked if the request contains more
-- than one feature.
ggFeature :: Lens' GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress (Maybe GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgressFeature)
ggFeature
  = lens _ggFeature (\ s a -> s{_ggFeature = a})

-- | Time when the request was received.
ggStartTime :: Lens' GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress (Maybe UTCTime)
ggStartTime
  = lens _ggStartTime (\ s a -> s{_ggStartTime = a}) .
      mapping _DateTime

-- | Video file location in [Cloud
-- Storage](https:\/\/cloud.google.com\/storage\/).
ggInputURI :: Lens' GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress (Maybe Text)
ggInputURI
  = lens _ggInputURI (\ s a -> s{_ggInputURI = a})

-- | Approximate percentage processed thus far. Guaranteed to be 100 when
-- fully processed.
ggProgressPercent :: Lens' GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress (Maybe Int32)
ggProgressPercent
  = lens _ggProgressPercent
      (\ s a -> s{_ggProgressPercent = a})
      . mapping _Coerce

-- | Time of the most recent update.
ggUpdateTime :: Lens' GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress (Maybe UTCTime)
ggUpdateTime
  = lens _ggUpdateTime (\ s a -> s{_ggUpdateTime = a})
      . mapping _DateTime

-- | Specifies which segment is being tracked if the request contains more
-- than one segment.
ggSegment :: Lens' GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress (Maybe GoogleCloudVideointelligenceV1beta2_VideoSegment)
ggSegment
  = lens _ggSegment (\ s a -> s{_ggSegment = a})

instance FromJSON
           GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1beta2VideoAnnotationProgress"
              (\ o ->
                 GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress'
                   <$>
                   (o .:? "feature") <*> (o .:? "startTime") <*>
                     (o .:? "inputUri")
                     <*> (o .:? "progressPercent")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "segment"))

instance ToJSON
           GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress
         where
        toJSON
          GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress'{..}
          = object
              (catMaybes
                 [("feature" .=) <$> _ggFeature,
                  ("startTime" .=) <$> _ggStartTime,
                  ("inputUri" .=) <$> _ggInputURI,
                  ("progressPercent" .=) <$> _ggProgressPercent,
                  ("updateTime" .=) <$> _ggUpdateTime,
                  ("segment" .=) <$> _ggSegment])

-- | A speech recognition result corresponding to a portion of the audio.
--
-- /See:/ 'googleCloudVideointelligenceV1beta2_SpeechTranscription' smart constructor.
data GoogleCloudVideointelligenceV1beta2_SpeechTranscription =
  GoogleCloudVideointelligenceV1beta2_SpeechTranscription'
    { _gcvvst1Alternatives :: !(Maybe [GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative])
    , _gcvvst1LanguageCode :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_SpeechTranscription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvst1Alternatives'
--
-- * 'gcvvst1LanguageCode'
googleCloudVideointelligenceV1beta2_SpeechTranscription
    :: GoogleCloudVideointelligenceV1beta2_SpeechTranscription
googleCloudVideointelligenceV1beta2_SpeechTranscription =
  GoogleCloudVideointelligenceV1beta2_SpeechTranscription'
    {_gcvvst1Alternatives = Nothing, _gcvvst1LanguageCode = Nothing}


-- | May contain one or more recognition hypotheses (up to the maximum
-- specified in \`max_alternatives\`). These alternatives are ordered in
-- terms of accuracy, with the top (first) alternative being the most
-- probable, as ranked by the recognizer.
gcvvst1Alternatives :: Lens' GoogleCloudVideointelligenceV1beta2_SpeechTranscription [GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative]
gcvvst1Alternatives
  = lens _gcvvst1Alternatives
      (\ s a -> s{_gcvvst1Alternatives = a})
      . _Default
      . _Coerce

-- | Output only. The
-- [BCP-47](https:\/\/www.rfc-editor.org\/rfc\/bcp\/bcp47.txt) language tag
-- of the language in this result. This language code was detected to have
-- the most likelihood of being spoken in the audio.
gcvvst1LanguageCode :: Lens' GoogleCloudVideointelligenceV1beta2_SpeechTranscription (Maybe Text)
gcvvst1LanguageCode
  = lens _gcvvst1LanguageCode
      (\ s a -> s{_gcvvst1LanguageCode = a})

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
                 [("alternatives" .=) <$> _gcvvst1Alternatives,
                  ("languageCode" .=) <$> _gcvvst1LanguageCode])

-- | Video annotation progress. Included in the \`metadata\` field of the
-- \`Operation\` returned by the \`GetOperation\` call of the
-- \`google::longrunning::Operations\` service.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_AnnotateVideoProgress' smart constructor.
newtype GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoProgress =
  GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoProgress'
    { _gooAnnotationProgress :: Maybe [GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoProgress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooAnnotationProgress'
googleCloudVideointelligenceV1p3beta1_AnnotateVideoProgress
    :: GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoProgress
googleCloudVideointelligenceV1p3beta1_AnnotateVideoProgress =
  GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoProgress'
    {_gooAnnotationProgress = Nothing}


-- | Progress metadata for all videos specified in \`AnnotateVideoRequest\`.
gooAnnotationProgress :: Lens' GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoProgress [GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress]
gooAnnotationProgress
  = lens _gooAnnotationProgress
      (\ s a -> s{_gooAnnotationProgress = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoProgress
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1AnnotateVideoProgress"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoProgress'
                   <$> (o .:? "annotationProgress" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoProgress
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoProgress'{..}
          = object
              (catMaybes
                 [("annotationProgress" .=) <$>
                    _gooAnnotationProgress])

-- | Deprecated. No effect.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_FaceAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_FaceAnnotation =
  GoogleCloudVideointelligenceV1p3beta1_FaceAnnotation'
    { _ggThumbnail :: !(Maybe Bytes)
    , _ggFrames :: !(Maybe [GoogleCloudVideointelligenceV1p3beta1_FaceFrame])
    , _ggSegments :: !(Maybe [GoogleCloudVideointelligenceV1p3beta1_FaceSegment])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_FaceAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggThumbnail'
--
-- * 'ggFrames'
--
-- * 'ggSegments'
googleCloudVideointelligenceV1p3beta1_FaceAnnotation
    :: GoogleCloudVideointelligenceV1p3beta1_FaceAnnotation
googleCloudVideointelligenceV1p3beta1_FaceAnnotation =
  GoogleCloudVideointelligenceV1p3beta1_FaceAnnotation'
    {_ggThumbnail = Nothing, _ggFrames = Nothing, _ggSegments = Nothing}


-- | Thumbnail of a representative face view (in JPEG format).
ggThumbnail :: Lens' GoogleCloudVideointelligenceV1p3beta1_FaceAnnotation (Maybe ByteString)
ggThumbnail
  = lens _ggThumbnail (\ s a -> s{_ggThumbnail = a}) .
      mapping _Bytes

-- | All video frames where a face was detected.
ggFrames :: Lens' GoogleCloudVideointelligenceV1p3beta1_FaceAnnotation [GoogleCloudVideointelligenceV1p3beta1_FaceFrame]
ggFrames
  = lens _ggFrames (\ s a -> s{_ggFrames = a}) .
      _Default
      . _Coerce

-- | All video segments where a face was detected.
ggSegments :: Lens' GoogleCloudVideointelligenceV1p3beta1_FaceAnnotation [GoogleCloudVideointelligenceV1p3beta1_FaceSegment]
ggSegments
  = lens _ggSegments (\ s a -> s{_ggSegments = a}) .
      _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_FaceAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1FaceAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_FaceAnnotation'
                   <$>
                   (o .:? "thumbnail") <*> (o .:? "frames" .!= mempty)
                     <*> (o .:? "segments" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_FaceAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_FaceAnnotation'{..}
          = object
              (catMaybes
                 [("thumbnail" .=) <$> _ggThumbnail,
                  ("frames" .=) <$> _ggFrames,
                  ("segments" .=) <$> _ggSegments])

-- | Annotation results for a single video.
--
-- /See:/ 'googleCloudVideointelligenceV1p1beta1_VideoAnnotationResults' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults =
  GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults'
    { _goooShotAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1p1beta1_VideoSegment])
    , _goooShotLabelAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation])
    , _goooFaceDetectionAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation])
    , _goooFaceAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1p1beta1_FaceAnnotation])
    , _goooInputURI :: !(Maybe Text)
    , _goooError :: !(Maybe GoogleRpc_Status)
    , _goooShotPresenceLabelAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation])
    , _goooPersonDetectionAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1p1beta1_PersonDetectionAnnotation])
    , _goooObjectAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation])
    , _goooFrameLabelAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation])
    , _goooSpeechTranscriptions :: !(Maybe [GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription])
    , _goooSegmentPresenceLabelAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation])
    , _goooLogoRecognitionAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation])
    , _goooSegment :: !(Maybe GoogleCloudVideointelligenceV1p1beta1_VideoSegment)
    , _goooTextAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1p1beta1_TextAnnotation])
    , _goooSegmentLabelAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation])
    , _goooExplicitAnnotation :: !(Maybe GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'goooShotAnnotations'
--
-- * 'goooShotLabelAnnotations'
--
-- * 'goooFaceDetectionAnnotations'
--
-- * 'goooFaceAnnotations'
--
-- * 'goooInputURI'
--
-- * 'goooError'
--
-- * 'goooShotPresenceLabelAnnotations'
--
-- * 'goooPersonDetectionAnnotations'
--
-- * 'goooObjectAnnotations'
--
-- * 'goooFrameLabelAnnotations'
--
-- * 'goooSpeechTranscriptions'
--
-- * 'goooSegmentPresenceLabelAnnotations'
--
-- * 'goooLogoRecognitionAnnotations'
--
-- * 'goooSegment'
--
-- * 'goooTextAnnotations'
--
-- * 'goooSegmentLabelAnnotations'
--
-- * 'goooExplicitAnnotation'
googleCloudVideointelligenceV1p1beta1_VideoAnnotationResults
    :: GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults
googleCloudVideointelligenceV1p1beta1_VideoAnnotationResults =
  GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults'
    { _goooShotAnnotations = Nothing
    , _goooShotLabelAnnotations = Nothing
    , _goooFaceDetectionAnnotations = Nothing
    , _goooFaceAnnotations = Nothing
    , _goooInputURI = Nothing
    , _goooError = Nothing
    , _goooShotPresenceLabelAnnotations = Nothing
    , _goooPersonDetectionAnnotations = Nothing
    , _goooObjectAnnotations = Nothing
    , _goooFrameLabelAnnotations = Nothing
    , _goooSpeechTranscriptions = Nothing
    , _goooSegmentPresenceLabelAnnotations = Nothing
    , _goooLogoRecognitionAnnotations = Nothing
    , _goooSegment = Nothing
    , _goooTextAnnotations = Nothing
    , _goooSegmentLabelAnnotations = Nothing
    , _goooExplicitAnnotation = Nothing
    }


-- | Shot annotations. Each shot is represented as a video segment.
goooShotAnnotations :: Lens' GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p1beta1_VideoSegment]
goooShotAnnotations
  = lens _goooShotAnnotations
      (\ s a -> s{_goooShotAnnotations = a})
      . _Default
      . _Coerce

-- | Topical label annotations on shot level. There is exactly one element
-- for each unique label.
goooShotLabelAnnotations :: Lens' GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation]
goooShotLabelAnnotations
  = lens _goooShotLabelAnnotations
      (\ s a -> s{_goooShotLabelAnnotations = a})
      . _Default
      . _Coerce

-- | Face detection annotations.
goooFaceDetectionAnnotations :: Lens' GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation]
goooFaceDetectionAnnotations
  = lens _goooFaceDetectionAnnotations
      (\ s a -> s{_goooFaceDetectionAnnotations = a})
      . _Default
      . _Coerce

-- | Deprecated. Please use \`face_detection_annotations\` instead.
goooFaceAnnotations :: Lens' GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p1beta1_FaceAnnotation]
goooFaceAnnotations
  = lens _goooFaceAnnotations
      (\ s a -> s{_goooFaceAnnotations = a})
      . _Default
      . _Coerce

-- | Video file location in [Cloud
-- Storage](https:\/\/cloud.google.com\/storage\/).
goooInputURI :: Lens' GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults (Maybe Text)
goooInputURI
  = lens _goooInputURI (\ s a -> s{_goooInputURI = a})

-- | If set, indicates an error. Note that for a single
-- \`AnnotateVideoRequest\` some videos may succeed and some may fail.
goooError :: Lens' GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults (Maybe GoogleRpc_Status)
goooError
  = lens _goooError (\ s a -> s{_goooError = a})

-- | Presence label annotations on shot level. There is exactly one element
-- for each unique label. Compared to the existing topical
-- \`shot_label_annotations\`, this field presents more fine-grained,
-- shot-level labels detected in video content and is made available only
-- when the client sets \`LabelDetectionConfig.model\` to
-- \"builtin\/latest\" in the request.
goooShotPresenceLabelAnnotations :: Lens' GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation]
goooShotPresenceLabelAnnotations
  = lens _goooShotPresenceLabelAnnotations
      (\ s a -> s{_goooShotPresenceLabelAnnotations = a})
      . _Default
      . _Coerce

-- | Person detection annotations.
goooPersonDetectionAnnotations :: Lens' GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p1beta1_PersonDetectionAnnotation]
goooPersonDetectionAnnotations
  = lens _goooPersonDetectionAnnotations
      (\ s a -> s{_goooPersonDetectionAnnotations = a})
      . _Default
      . _Coerce

-- | Annotations for list of objects detected and tracked in video.
goooObjectAnnotations :: Lens' GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation]
goooObjectAnnotations
  = lens _goooObjectAnnotations
      (\ s a -> s{_goooObjectAnnotations = a})
      . _Default
      . _Coerce

-- | Label annotations on frame level. There is exactly one element for each
-- unique label.
goooFrameLabelAnnotations :: Lens' GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation]
goooFrameLabelAnnotations
  = lens _goooFrameLabelAnnotations
      (\ s a -> s{_goooFrameLabelAnnotations = a})
      . _Default
      . _Coerce

-- | Speech transcription.
goooSpeechTranscriptions :: Lens' GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription]
goooSpeechTranscriptions
  = lens _goooSpeechTranscriptions
      (\ s a -> s{_goooSpeechTranscriptions = a})
      . _Default
      . _Coerce

-- | Presence label annotations on video level or user-specified segment
-- level. There is exactly one element for each unique label. Compared to
-- the existing topical \`segment_label_annotations\`, this field presents
-- more fine-grained, segment-level labels detected in video content and is
-- made available only when the client sets \`LabelDetectionConfig.model\`
-- to \"builtin\/latest\" in the request.
goooSegmentPresenceLabelAnnotations :: Lens' GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation]
goooSegmentPresenceLabelAnnotations
  = lens _goooSegmentPresenceLabelAnnotations
      (\ s a ->
         s{_goooSegmentPresenceLabelAnnotations = a})
      . _Default
      . _Coerce

-- | Annotations for list of logos detected, tracked and recognized in video.
goooLogoRecognitionAnnotations :: Lens' GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation]
goooLogoRecognitionAnnotations
  = lens _goooLogoRecognitionAnnotations
      (\ s a -> s{_goooLogoRecognitionAnnotations = a})
      . _Default
      . _Coerce

-- | Video segment on which the annotation is run.
goooSegment :: Lens' GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults (Maybe GoogleCloudVideointelligenceV1p1beta1_VideoSegment)
goooSegment
  = lens _goooSegment (\ s a -> s{_goooSegment = a})

-- | OCR text detection and tracking. Annotations for list of detected text
-- snippets. Each will have list of frame information associated with it.
goooTextAnnotations :: Lens' GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p1beta1_TextAnnotation]
goooTextAnnotations
  = lens _goooTextAnnotations
      (\ s a -> s{_goooTextAnnotations = a})
      . _Default
      . _Coerce

-- | Topical label annotations on video level or user-specified segment
-- level. There is exactly one element for each unique label.
goooSegmentLabelAnnotations :: Lens' GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults [GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation]
goooSegmentLabelAnnotations
  = lens _goooSegmentLabelAnnotations
      (\ s a -> s{_goooSegmentLabelAnnotations = a})
      . _Default
      . _Coerce

-- | Explicit content annotation.
goooExplicitAnnotation :: Lens' GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults (Maybe GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation)
goooExplicitAnnotation
  = lens _goooExplicitAnnotation
      (\ s a -> s{_goooExplicitAnnotation = a})

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
                     <*> (o .:? "faceDetectionAnnotations" .!= mempty)
                     <*> (o .:? "faceAnnotations" .!= mempty)
                     <*> (o .:? "inputUri")
                     <*> (o .:? "error")
                     <*> (o .:? "shotPresenceLabelAnnotations" .!= mempty)
                     <*> (o .:? "personDetectionAnnotations" .!= mempty)
                     <*> (o .:? "objectAnnotations" .!= mempty)
                     <*> (o .:? "frameLabelAnnotations" .!= mempty)
                     <*> (o .:? "speechTranscriptions" .!= mempty)
                     <*>
                     (o .:? "segmentPresenceLabelAnnotations" .!= mempty)
                     <*> (o .:? "logoRecognitionAnnotations" .!= mempty)
                     <*> (o .:? "segment")
                     <*> (o .:? "textAnnotations" .!= mempty)
                     <*> (o .:? "segmentLabelAnnotations" .!= mempty)
                     <*> (o .:? "explicitAnnotation"))

instance ToJSON
           GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults
         where
        toJSON
          GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults'{..}
          = object
              (catMaybes
                 [("shotAnnotations" .=) <$> _goooShotAnnotations,
                  ("shotLabelAnnotations" .=) <$>
                    _goooShotLabelAnnotations,
                  ("faceDetectionAnnotations" .=) <$>
                    _goooFaceDetectionAnnotations,
                  ("faceAnnotations" .=) <$> _goooFaceAnnotations,
                  ("inputUri" .=) <$> _goooInputURI,
                  ("error" .=) <$> _goooError,
                  ("shotPresenceLabelAnnotations" .=) <$>
                    _goooShotPresenceLabelAnnotations,
                  ("personDetectionAnnotations" .=) <$>
                    _goooPersonDetectionAnnotations,
                  ("objectAnnotations" .=) <$> _goooObjectAnnotations,
                  ("frameLabelAnnotations" .=) <$>
                    _goooFrameLabelAnnotations,
                  ("speechTranscriptions" .=) <$>
                    _goooSpeechTranscriptions,
                  ("segmentPresenceLabelAnnotations" .=) <$>
                    _goooSegmentPresenceLabelAnnotations,
                  ("logoRecognitionAnnotations" .=) <$>
                    _goooLogoRecognitionAnnotations,
                  ("segment" .=) <$> _goooSegment,
                  ("textAnnotations" .=) <$> _goooTextAnnotations,
                  ("segmentLabelAnnotations" .=) <$>
                    _goooSegmentLabelAnnotations,
                  ("explicitAnnotation" .=) <$>
                    _goooExplicitAnnotation])

-- | Video context and\/or feature-specific parameters.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_VideoContext' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_VideoContext =
  GoogleCloudVideointelligenceV1p3beta1_VideoContext'
    { _gcvvvcFaceDetectionConfig :: !(Maybe GoogleCloudVideointelligenceV1p3beta1_FaceDetectionConfig)
    , _gcvvvcSpeechTranscriptionConfig :: !(Maybe GoogleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig)
    , _gcvvvcExplicitContentDetectionConfig :: !(Maybe GoogleCloudVideointelligenceV1p3beta1_ExplicitContentDetectionConfig)
    , _gcvvvcObjectTrackingConfig :: !(Maybe GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingConfig)
    , _gcvvvcLabelDetectionConfig :: !(Maybe GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig)
    , _gcvvvcSegments :: !(Maybe [GoogleCloudVideointelligenceV1p3beta1_VideoSegment])
    , _gcvvvcTextDetectionConfig :: !(Maybe GoogleCloudVideointelligenceV1p3beta1_TextDetectionConfig)
    , _gcvvvcPersonDetectionConfig :: !(Maybe GoogleCloudVideointelligenceV1p3beta1_PersonDetectionConfig)
    , _gcvvvcShotChangeDetectionConfig :: !(Maybe GoogleCloudVideointelligenceV1p3beta1_ShotChangeDetectionConfig)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_VideoContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvvcFaceDetectionConfig'
--
-- * 'gcvvvcSpeechTranscriptionConfig'
--
-- * 'gcvvvcExplicitContentDetectionConfig'
--
-- * 'gcvvvcObjectTrackingConfig'
--
-- * 'gcvvvcLabelDetectionConfig'
--
-- * 'gcvvvcSegments'
--
-- * 'gcvvvcTextDetectionConfig'
--
-- * 'gcvvvcPersonDetectionConfig'
--
-- * 'gcvvvcShotChangeDetectionConfig'
googleCloudVideointelligenceV1p3beta1_VideoContext
    :: GoogleCloudVideointelligenceV1p3beta1_VideoContext
googleCloudVideointelligenceV1p3beta1_VideoContext =
  GoogleCloudVideointelligenceV1p3beta1_VideoContext'
    { _gcvvvcFaceDetectionConfig = Nothing
    , _gcvvvcSpeechTranscriptionConfig = Nothing
    , _gcvvvcExplicitContentDetectionConfig = Nothing
    , _gcvvvcObjectTrackingConfig = Nothing
    , _gcvvvcLabelDetectionConfig = Nothing
    , _gcvvvcSegments = Nothing
    , _gcvvvcTextDetectionConfig = Nothing
    , _gcvvvcPersonDetectionConfig = Nothing
    , _gcvvvcShotChangeDetectionConfig = Nothing
    }


-- | Config for FACE_DETECTION.
gcvvvcFaceDetectionConfig :: Lens' GoogleCloudVideointelligenceV1p3beta1_VideoContext (Maybe GoogleCloudVideointelligenceV1p3beta1_FaceDetectionConfig)
gcvvvcFaceDetectionConfig
  = lens _gcvvvcFaceDetectionConfig
      (\ s a -> s{_gcvvvcFaceDetectionConfig = a})

-- | Config for SPEECH_TRANSCRIPTION.
gcvvvcSpeechTranscriptionConfig :: Lens' GoogleCloudVideointelligenceV1p3beta1_VideoContext (Maybe GoogleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig)
gcvvvcSpeechTranscriptionConfig
  = lens _gcvvvcSpeechTranscriptionConfig
      (\ s a -> s{_gcvvvcSpeechTranscriptionConfig = a})

-- | Config for EXPLICIT_CONTENT_DETECTION.
gcvvvcExplicitContentDetectionConfig :: Lens' GoogleCloudVideointelligenceV1p3beta1_VideoContext (Maybe GoogleCloudVideointelligenceV1p3beta1_ExplicitContentDetectionConfig)
gcvvvcExplicitContentDetectionConfig
  = lens _gcvvvcExplicitContentDetectionConfig
      (\ s a ->
         s{_gcvvvcExplicitContentDetectionConfig = a})

-- | Config for OBJECT_TRACKING.
gcvvvcObjectTrackingConfig :: Lens' GoogleCloudVideointelligenceV1p3beta1_VideoContext (Maybe GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingConfig)
gcvvvcObjectTrackingConfig
  = lens _gcvvvcObjectTrackingConfig
      (\ s a -> s{_gcvvvcObjectTrackingConfig = a})

-- | Config for LABEL_DETECTION.
gcvvvcLabelDetectionConfig :: Lens' GoogleCloudVideointelligenceV1p3beta1_VideoContext (Maybe GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig)
gcvvvcLabelDetectionConfig
  = lens _gcvvvcLabelDetectionConfig
      (\ s a -> s{_gcvvvcLabelDetectionConfig = a})

-- | Video segments to annotate. The segments may overlap and are not
-- required to be contiguous or span the whole video. If unspecified, each
-- video is treated as a single segment.
gcvvvcSegments :: Lens' GoogleCloudVideointelligenceV1p3beta1_VideoContext [GoogleCloudVideointelligenceV1p3beta1_VideoSegment]
gcvvvcSegments
  = lens _gcvvvcSegments
      (\ s a -> s{_gcvvvcSegments = a})
      . _Default
      . _Coerce

-- | Config for TEXT_DETECTION.
gcvvvcTextDetectionConfig :: Lens' GoogleCloudVideointelligenceV1p3beta1_VideoContext (Maybe GoogleCloudVideointelligenceV1p3beta1_TextDetectionConfig)
gcvvvcTextDetectionConfig
  = lens _gcvvvcTextDetectionConfig
      (\ s a -> s{_gcvvvcTextDetectionConfig = a})

-- | Config for PERSON_DETECTION.
gcvvvcPersonDetectionConfig :: Lens' GoogleCloudVideointelligenceV1p3beta1_VideoContext (Maybe GoogleCloudVideointelligenceV1p3beta1_PersonDetectionConfig)
gcvvvcPersonDetectionConfig
  = lens _gcvvvcPersonDetectionConfig
      (\ s a -> s{_gcvvvcPersonDetectionConfig = a})

-- | Config for SHOT_CHANGE_DETECTION.
gcvvvcShotChangeDetectionConfig :: Lens' GoogleCloudVideointelligenceV1p3beta1_VideoContext (Maybe GoogleCloudVideointelligenceV1p3beta1_ShotChangeDetectionConfig)
gcvvvcShotChangeDetectionConfig
  = lens _gcvvvcShotChangeDetectionConfig
      (\ s a -> s{_gcvvvcShotChangeDetectionConfig = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_VideoContext
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1VideoContext"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_VideoContext'
                   <$>
                   (o .:? "faceDetectionConfig") <*>
                     (o .:? "speechTranscriptionConfig")
                     <*> (o .:? "explicitContentDetectionConfig")
                     <*> (o .:? "objectTrackingConfig")
                     <*> (o .:? "labelDetectionConfig")
                     <*> (o .:? "segments" .!= mempty)
                     <*> (o .:? "textDetectionConfig")
                     <*> (o .:? "personDetectionConfig")
                     <*> (o .:? "shotChangeDetectionConfig"))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_VideoContext
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_VideoContext'{..}
          = object
              (catMaybes
                 [("faceDetectionConfig" .=) <$>
                    _gcvvvcFaceDetectionConfig,
                  ("speechTranscriptionConfig" .=) <$>
                    _gcvvvcSpeechTranscriptionConfig,
                  ("explicitContentDetectionConfig" .=) <$>
                    _gcvvvcExplicitContentDetectionConfig,
                  ("objectTrackingConfig" .=) <$>
                    _gcvvvcObjectTrackingConfig,
                  ("labelDetectionConfig" .=) <$>
                    _gcvvvcLabelDetectionConfig,
                  ("segments" .=) <$> _gcvvvcSegments,
                  ("textDetectionConfig" .=) <$>
                    _gcvvvcTextDetectionConfig,
                  ("personDetectionConfig" .=) <$>
                    _gcvvvcPersonDetectionConfig,
                  ("shotChangeDetectionConfig" .=) <$>
                    _gcvvvcShotChangeDetectionConfig])

-- | Video segment level annotation results for text detection.
--
-- /See:/ 'googleCloudVideointelligenceV1beta2_TextSegment' smart constructor.
data GoogleCloudVideointelligenceV1beta2_TextSegment =
  GoogleCloudVideointelligenceV1beta2_TextSegment'
    { _gcvvts1Frames :: !(Maybe [GoogleCloudVideointelligenceV1beta2_TextFrame])
    , _gcvvts1Confidence :: !(Maybe (Textual Double))
    , _gcvvts1Segment :: !(Maybe GoogleCloudVideointelligenceV1beta2_VideoSegment)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_TextSegment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvts1Frames'
--
-- * 'gcvvts1Confidence'
--
-- * 'gcvvts1Segment'
googleCloudVideointelligenceV1beta2_TextSegment
    :: GoogleCloudVideointelligenceV1beta2_TextSegment
googleCloudVideointelligenceV1beta2_TextSegment =
  GoogleCloudVideointelligenceV1beta2_TextSegment'
    { _gcvvts1Frames = Nothing
    , _gcvvts1Confidence = Nothing
    , _gcvvts1Segment = Nothing
    }


-- | Information related to the frames where OCR detected text appears.
gcvvts1Frames :: Lens' GoogleCloudVideointelligenceV1beta2_TextSegment [GoogleCloudVideointelligenceV1beta2_TextFrame]
gcvvts1Frames
  = lens _gcvvts1Frames
      (\ s a -> s{_gcvvts1Frames = a})
      . _Default
      . _Coerce

-- | Confidence for the track of detected text. It is calculated as the
-- highest over all frames where OCR detected text appears.
gcvvts1Confidence :: Lens' GoogleCloudVideointelligenceV1beta2_TextSegment (Maybe Double)
gcvvts1Confidence
  = lens _gcvvts1Confidence
      (\ s a -> s{_gcvvts1Confidence = a})
      . mapping _Coerce

-- | Video segment where a text snippet was detected.
gcvvts1Segment :: Lens' GoogleCloudVideointelligenceV1beta2_TextSegment (Maybe GoogleCloudVideointelligenceV1beta2_VideoSegment)
gcvvts1Segment
  = lens _gcvvts1Segment
      (\ s a -> s{_gcvvts1Segment = a})

instance FromJSON
           GoogleCloudVideointelligenceV1beta2_TextSegment
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1beta2TextSegment"
              (\ o ->
                 GoogleCloudVideointelligenceV1beta2_TextSegment' <$>
                   (o .:? "frames" .!= mempty) <*> (o .:? "confidence")
                     <*> (o .:? "segment"))

instance ToJSON
           GoogleCloudVideointelligenceV1beta2_TextSegment
         where
        toJSON
          GoogleCloudVideointelligenceV1beta2_TextSegment'{..}
          = object
              (catMaybes
                 [("frames" .=) <$> _gcvvts1Frames,
                  ("confidence" .=) <$> _gcvvts1Confidence,
                  ("segment" .=) <$> _gcvvts1Segment])

-- | Normalized bounding box. The normalized vertex coordinates are relative
-- to the original image. Range: [0, 1].
--
-- /See:/ 'googleCloudVideointelligenceV1beta2_NormalizedBoundingBox' smart constructor.
data GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox =
  GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox'
    { _gooBottom :: !(Maybe (Textual Double))
    , _gooLeft :: !(Maybe (Textual Double))
    , _gooRight :: !(Maybe (Textual Double))
    , _gooTop :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooBottom'
--
-- * 'gooLeft'
--
-- * 'gooRight'
--
-- * 'gooTop'
googleCloudVideointelligenceV1beta2_NormalizedBoundingBox
    :: GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox
googleCloudVideointelligenceV1beta2_NormalizedBoundingBox =
  GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox'
    { _gooBottom = Nothing
    , _gooLeft = Nothing
    , _gooRight = Nothing
    , _gooTop = Nothing
    }


-- | Bottom Y coordinate.
gooBottom :: Lens' GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox (Maybe Double)
gooBottom
  = lens _gooBottom (\ s a -> s{_gooBottom = a}) .
      mapping _Coerce

-- | Left X coordinate.
gooLeft :: Lens' GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox (Maybe Double)
gooLeft
  = lens _gooLeft (\ s a -> s{_gooLeft = a}) .
      mapping _Coerce

-- | Right X coordinate.
gooRight :: Lens' GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox (Maybe Double)
gooRight
  = lens _gooRight (\ s a -> s{_gooRight = a}) .
      mapping _Coerce

-- | Top Y coordinate.
gooTop :: Lens' GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox (Maybe Double)
gooTop
  = lens _gooTop (\ s a -> s{_gooTop = a}) .
      mapping _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1beta2NormalizedBoundingBox"
              (\ o ->
                 GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox'
                   <$>
                   (o .:? "bottom") <*> (o .:? "left") <*>
                     (o .:? "right")
                     <*> (o .:? "top"))

instance ToJSON
           GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox
         where
        toJSON
          GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox'{..}
          = object
              (catMaybes
                 [("bottom" .=) <$> _gooBottom,
                  ("left" .=) <$> _gooLeft, ("right" .=) <$> _gooRight,
                  ("top" .=) <$> _gooTop])

-- | A generic detected landmark represented by name in string format and a
-- 2D location.
--
-- /See:/ 'googleCloudVideointelligenceV1p1beta1_DetectedLandmark' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_DetectedLandmark =
  GoogleCloudVideointelligenceV1p1beta1_DetectedLandmark'
    { _gcvvdl2Confidence :: !(Maybe (Textual Double))
    , _gcvvdl2Point :: !(Maybe GoogleCloudVideointelligenceV1p1beta1_NormalizedVertex)
    , _gcvvdl2Name :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_DetectedLandmark' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvdl2Confidence'
--
-- * 'gcvvdl2Point'
--
-- * 'gcvvdl2Name'
googleCloudVideointelligenceV1p1beta1_DetectedLandmark
    :: GoogleCloudVideointelligenceV1p1beta1_DetectedLandmark
googleCloudVideointelligenceV1p1beta1_DetectedLandmark =
  GoogleCloudVideointelligenceV1p1beta1_DetectedLandmark'
    { _gcvvdl2Confidence = Nothing
    , _gcvvdl2Point = Nothing
    , _gcvvdl2Name = Nothing
    }


-- | The confidence score of the detected landmark. Range [0, 1].
gcvvdl2Confidence :: Lens' GoogleCloudVideointelligenceV1p1beta1_DetectedLandmark (Maybe Double)
gcvvdl2Confidence
  = lens _gcvvdl2Confidence
      (\ s a -> s{_gcvvdl2Confidence = a})
      . mapping _Coerce

-- | The 2D point of the detected landmark using the normalized image
-- coordindate system. The normalized coordinates have the range from 0 to
-- 1.
gcvvdl2Point :: Lens' GoogleCloudVideointelligenceV1p1beta1_DetectedLandmark (Maybe GoogleCloudVideointelligenceV1p1beta1_NormalizedVertex)
gcvvdl2Point
  = lens _gcvvdl2Point (\ s a -> s{_gcvvdl2Point = a})

-- | The name of this landmark, for example, left_hand, right_shoulder.
gcvvdl2Name :: Lens' GoogleCloudVideointelligenceV1p1beta1_DetectedLandmark (Maybe Text)
gcvvdl2Name
  = lens _gcvvdl2Name (\ s a -> s{_gcvvdl2Name = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p1beta1_DetectedLandmark
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p1beta1DetectedLandmark"
              (\ o ->
                 GoogleCloudVideointelligenceV1p1beta1_DetectedLandmark'
                   <$>
                   (o .:? "confidence") <*> (o .:? "point") <*>
                     (o .:? "name"))

instance ToJSON
           GoogleCloudVideointelligenceV1p1beta1_DetectedLandmark
         where
        toJSON
          GoogleCloudVideointelligenceV1p1beta1_DetectedLandmark'{..}
          = object
              (catMaybes
                 [("confidence" .=) <$> _gcvvdl2Confidence,
                  ("point" .=) <$> _gcvvdl2Point,
                  ("name" .=) <$> _gcvvdl2Name])

-- | Video annotation progress. Included in the \`metadata\` field of the
-- \`Operation\` returned by the \`GetOperation\` call of the
-- \`google::longrunning::Operations\` service.
--
-- /See:/ 'googleCloudVideointelligenceV1_AnnotateVideoProgress' smart constructor.
newtype GoogleCloudVideointelligenceV1_AnnotateVideoProgress =
  GoogleCloudVideointelligenceV1_AnnotateVideoProgress'
    { _gcvvavpcAnnotationProgress :: Maybe [GoogleCloudVideointelligenceV1_VideoAnnotationProgress]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1_AnnotateVideoProgress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvavpcAnnotationProgress'
googleCloudVideointelligenceV1_AnnotateVideoProgress
    :: GoogleCloudVideointelligenceV1_AnnotateVideoProgress
googleCloudVideointelligenceV1_AnnotateVideoProgress =
  GoogleCloudVideointelligenceV1_AnnotateVideoProgress'
    {_gcvvavpcAnnotationProgress = Nothing}


-- | Progress metadata for all videos specified in \`AnnotateVideoRequest\`.
gcvvavpcAnnotationProgress :: Lens' GoogleCloudVideointelligenceV1_AnnotateVideoProgress [GoogleCloudVideointelligenceV1_VideoAnnotationProgress]
gcvvavpcAnnotationProgress
  = lens _gcvvavpcAnnotationProgress
      (\ s a -> s{_gcvvavpcAnnotationProgress = a})
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
                    _gcvvavpcAnnotationProgress])

-- | Deprecated. No effect.
--
-- /See:/ 'googleCloudVideointelligenceV1_FaceAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1_FaceAnnotation =
  GoogleCloudVideointelligenceV1_FaceAnnotation'
    { _gcvvfa1Thumbnail :: !(Maybe Bytes)
    , _gcvvfa1Frames :: !(Maybe [GoogleCloudVideointelligenceV1_FaceFrame])
    , _gcvvfa1Segments :: !(Maybe [GoogleCloudVideointelligenceV1_FaceSegment])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1_FaceAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvfa1Thumbnail'
--
-- * 'gcvvfa1Frames'
--
-- * 'gcvvfa1Segments'
googleCloudVideointelligenceV1_FaceAnnotation
    :: GoogleCloudVideointelligenceV1_FaceAnnotation
googleCloudVideointelligenceV1_FaceAnnotation =
  GoogleCloudVideointelligenceV1_FaceAnnotation'
    { _gcvvfa1Thumbnail = Nothing
    , _gcvvfa1Frames = Nothing
    , _gcvvfa1Segments = Nothing
    }


-- | Thumbnail of a representative face view (in JPEG format).
gcvvfa1Thumbnail :: Lens' GoogleCloudVideointelligenceV1_FaceAnnotation (Maybe ByteString)
gcvvfa1Thumbnail
  = lens _gcvvfa1Thumbnail
      (\ s a -> s{_gcvvfa1Thumbnail = a})
      . mapping _Bytes

-- | All video frames where a face was detected.
gcvvfa1Frames :: Lens' GoogleCloudVideointelligenceV1_FaceAnnotation [GoogleCloudVideointelligenceV1_FaceFrame]
gcvvfa1Frames
  = lens _gcvvfa1Frames
      (\ s a -> s{_gcvvfa1Frames = a})
      . _Default
      . _Coerce

-- | All video segments where a face was detected.
gcvvfa1Segments :: Lens' GoogleCloudVideointelligenceV1_FaceAnnotation [GoogleCloudVideointelligenceV1_FaceSegment]
gcvvfa1Segments
  = lens _gcvvfa1Segments
      (\ s a -> s{_gcvvfa1Segments = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1_FaceAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1FaceAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1_FaceAnnotation' <$>
                   (o .:? "thumbnail") <*> (o .:? "frames" .!= mempty)
                     <*> (o .:? "segments" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1_FaceAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1_FaceAnnotation'{..}
          = object
              (catMaybes
                 [("thumbnail" .=) <$> _gcvvfa1Thumbnail,
                  ("frames" .=) <$> _gcvvfa1Frames,
                  ("segments" .=) <$> _gcvvfa1Segments])

-- | A track of an object instance.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_Track' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_Track =
  GoogleCloudVideointelligenceV1p2beta1_Track'
    { _gcvvt1Confidence :: !(Maybe (Textual Double))
    , _gcvvt1Attributes :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute])
    , _gcvvt1Segment :: !(Maybe GoogleCloudVideointelligenceV1p2beta1_VideoSegment)
    , _gcvvt1TimestampedObjects :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_TimestampedObject])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_Track' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvt1Confidence'
--
-- * 'gcvvt1Attributes'
--
-- * 'gcvvt1Segment'
--
-- * 'gcvvt1TimestampedObjects'
googleCloudVideointelligenceV1p2beta1_Track
    :: GoogleCloudVideointelligenceV1p2beta1_Track
googleCloudVideointelligenceV1p2beta1_Track =
  GoogleCloudVideointelligenceV1p2beta1_Track'
    { _gcvvt1Confidence = Nothing
    , _gcvvt1Attributes = Nothing
    , _gcvvt1Segment = Nothing
    , _gcvvt1TimestampedObjects = Nothing
    }


-- | Optional. The confidence score of the tracked object.
gcvvt1Confidence :: Lens' GoogleCloudVideointelligenceV1p2beta1_Track (Maybe Double)
gcvvt1Confidence
  = lens _gcvvt1Confidence
      (\ s a -> s{_gcvvt1Confidence = a})
      . mapping _Coerce

-- | Optional. Attributes in the track level.
gcvvt1Attributes :: Lens' GoogleCloudVideointelligenceV1p2beta1_Track [GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute]
gcvvt1Attributes
  = lens _gcvvt1Attributes
      (\ s a -> s{_gcvvt1Attributes = a})
      . _Default
      . _Coerce

-- | Video segment of a track.
gcvvt1Segment :: Lens' GoogleCloudVideointelligenceV1p2beta1_Track (Maybe GoogleCloudVideointelligenceV1p2beta1_VideoSegment)
gcvvt1Segment
  = lens _gcvvt1Segment
      (\ s a -> s{_gcvvt1Segment = a})

-- | The object with timestamp and attributes per frame in the track.
gcvvt1TimestampedObjects :: Lens' GoogleCloudVideointelligenceV1p2beta1_Track [GoogleCloudVideointelligenceV1p2beta1_TimestampedObject]
gcvvt1TimestampedObjects
  = lens _gcvvt1TimestampedObjects
      (\ s a -> s{_gcvvt1TimestampedObjects = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1p2beta1_Track
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p2beta1Track"
              (\ o ->
                 GoogleCloudVideointelligenceV1p2beta1_Track' <$>
                   (o .:? "confidence") <*>
                     (o .:? "attributes" .!= mempty)
                     <*> (o .:? "segment")
                     <*> (o .:? "timestampedObjects" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1p2beta1_Track
         where
        toJSON
          GoogleCloudVideointelligenceV1p2beta1_Track'{..}
          = object
              (catMaybes
                 [("confidence" .=) <$> _gcvvt1Confidence,
                  ("attributes" .=) <$> _gcvvt1Attributes,
                  ("segment" .=) <$> _gcvvt1Segment,
                  ("timestampedObjects" .=) <$>
                    _gcvvt1TimestampedObjects])

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

-- | Normalized bounding polygon for text (that might not be aligned with
-- axis). Contains list of the corner points in clockwise order starting
-- from top-left corner. For example, for a rectangular bounding box: When
-- the text is horizontal it might look like: 0----1 | | 3----2 When it\'s
-- clockwise rotated 180 degrees around the top-left corner it becomes:
-- 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3). Note
-- that values can be less than 0, or greater than 1 due to trignometric
-- calculations for location of the box.
--
-- /See:/ 'googleCloudVideointelligenceV1_NormalizedBoundingPoly' smart constructor.
newtype GoogleCloudVideointelligenceV1_NormalizedBoundingPoly =
  GoogleCloudVideointelligenceV1_NormalizedBoundingPoly'
    { _gcvvnbpcVertices :: Maybe [GoogleCloudVideointelligenceV1_NormalizedVertex]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1_NormalizedBoundingPoly' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvnbpcVertices'
googleCloudVideointelligenceV1_NormalizedBoundingPoly
    :: GoogleCloudVideointelligenceV1_NormalizedBoundingPoly
googleCloudVideointelligenceV1_NormalizedBoundingPoly =
  GoogleCloudVideointelligenceV1_NormalizedBoundingPoly'
    {_gcvvnbpcVertices = Nothing}


-- | Normalized vertices of the bounding polygon.
gcvvnbpcVertices :: Lens' GoogleCloudVideointelligenceV1_NormalizedBoundingPoly [GoogleCloudVideointelligenceV1_NormalizedVertex]
gcvvnbpcVertices
  = lens _gcvvnbpcVertices
      (\ s a -> s{_gcvvnbpcVertices = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1_NormalizedBoundingPoly
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1NormalizedBoundingPoly"
              (\ o ->
                 GoogleCloudVideointelligenceV1_NormalizedBoundingPoly'
                   <$> (o .:? "vertices" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1_NormalizedBoundingPoly
         where
        toJSON
          GoogleCloudVideointelligenceV1_NormalizedBoundingPoly'{..}
          = object
              (catMaybes [("vertices" .=) <$> _gcvvnbpcVertices])

-- | A vertex represents a 2D point in the image. NOTE: the normalized vertex
-- coordinates are relative to the original image and range from 0 to 1.
--
-- /See:/ 'googleCloudVideointelligenceV1_NormalizedVertex' smart constructor.
data GoogleCloudVideointelligenceV1_NormalizedVertex =
  GoogleCloudVideointelligenceV1_NormalizedVertex'
    { _gcvvnvcX :: !(Maybe (Textual Double))
    , _gcvvnvcY :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1_NormalizedVertex' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvnvcX'
--
-- * 'gcvvnvcY'
googleCloudVideointelligenceV1_NormalizedVertex
    :: GoogleCloudVideointelligenceV1_NormalizedVertex
googleCloudVideointelligenceV1_NormalizedVertex =
  GoogleCloudVideointelligenceV1_NormalizedVertex'
    {_gcvvnvcX = Nothing, _gcvvnvcY = Nothing}


-- | X coordinate.
gcvvnvcX :: Lens' GoogleCloudVideointelligenceV1_NormalizedVertex (Maybe Double)
gcvvnvcX
  = lens _gcvvnvcX (\ s a -> s{_gcvvnvcX = a}) .
      mapping _Coerce

-- | Y coordinate.
gcvvnvcY :: Lens' GoogleCloudVideointelligenceV1_NormalizedVertex (Maybe Double)
gcvvnvcY
  = lens _gcvvnvcY (\ s a -> s{_gcvvnvcY = a}) .
      mapping _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1_NormalizedVertex
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1NormalizedVertex"
              (\ o ->
                 GoogleCloudVideointelligenceV1_NormalizedVertex' <$>
                   (o .:? "x") <*> (o .:? "y"))

instance ToJSON
           GoogleCloudVideointelligenceV1_NormalizedVertex
         where
        toJSON
          GoogleCloudVideointelligenceV1_NormalizedVertex'{..}
          = object
              (catMaybes
                 [("x" .=) <$> _gcvvnvcX, ("y" .=) <$> _gcvvnvcY])

-- | Annotation progress for a single video.
--
-- /See:/ 'googleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress =
  GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress'
    { _gcvvvap1Feature :: !(Maybe GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgressFeature)
    , _gcvvvap1StartTime :: !(Maybe DateTime')
    , _gcvvvap1InputURI :: !(Maybe Text)
    , _gcvvvap1ProgressPercent :: !(Maybe (Textual Int32))
    , _gcvvvap1UpdateTime :: !(Maybe DateTime')
    , _gcvvvap1Segment :: !(Maybe GoogleCloudVideointelligenceV1p1beta1_VideoSegment)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvvap1Feature'
--
-- * 'gcvvvap1StartTime'
--
-- * 'gcvvvap1InputURI'
--
-- * 'gcvvvap1ProgressPercent'
--
-- * 'gcvvvap1UpdateTime'
--
-- * 'gcvvvap1Segment'
googleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress
    :: GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress
googleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress =
  GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress'
    { _gcvvvap1Feature = Nothing
    , _gcvvvap1StartTime = Nothing
    , _gcvvvap1InputURI = Nothing
    , _gcvvvap1ProgressPercent = Nothing
    , _gcvvvap1UpdateTime = Nothing
    , _gcvvvap1Segment = Nothing
    }


-- | Specifies which feature is being tracked if the request contains more
-- than one feature.
gcvvvap1Feature :: Lens' GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress (Maybe GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgressFeature)
gcvvvap1Feature
  = lens _gcvvvap1Feature
      (\ s a -> s{_gcvvvap1Feature = a})

-- | Time when the request was received.
gcvvvap1StartTime :: Lens' GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress (Maybe UTCTime)
gcvvvap1StartTime
  = lens _gcvvvap1StartTime
      (\ s a -> s{_gcvvvap1StartTime = a})
      . mapping _DateTime

-- | Video file location in [Cloud
-- Storage](https:\/\/cloud.google.com\/storage\/).
gcvvvap1InputURI :: Lens' GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress (Maybe Text)
gcvvvap1InputURI
  = lens _gcvvvap1InputURI
      (\ s a -> s{_gcvvvap1InputURI = a})

-- | Approximate percentage processed thus far. Guaranteed to be 100 when
-- fully processed.
gcvvvap1ProgressPercent :: Lens' GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress (Maybe Int32)
gcvvvap1ProgressPercent
  = lens _gcvvvap1ProgressPercent
      (\ s a -> s{_gcvvvap1ProgressPercent = a})
      . mapping _Coerce

-- | Time of the most recent update.
gcvvvap1UpdateTime :: Lens' GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress (Maybe UTCTime)
gcvvvap1UpdateTime
  = lens _gcvvvap1UpdateTime
      (\ s a -> s{_gcvvvap1UpdateTime = a})
      . mapping _DateTime

-- | Specifies which segment is being tracked if the request contains more
-- than one segment.
gcvvvap1Segment :: Lens' GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress (Maybe GoogleCloudVideointelligenceV1p1beta1_VideoSegment)
gcvvvap1Segment
  = lens _gcvvvap1Segment
      (\ s a -> s{_gcvvvap1Segment = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress"
              (\ o ->
                 GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress'
                   <$>
                   (o .:? "feature") <*> (o .:? "startTime") <*>
                     (o .:? "inputUri")
                     <*> (o .:? "progressPercent")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "segment"))

instance ToJSON
           GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress
         where
        toJSON
          GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress'{..}
          = object
              (catMaybes
                 [("feature" .=) <$> _gcvvvap1Feature,
                  ("startTime" .=) <$> _gcvvvap1StartTime,
                  ("inputUri" .=) <$> _gcvvvap1InputURI,
                  ("progressPercent" .=) <$> _gcvvvap1ProgressPercent,
                  ("updateTime" .=) <$> _gcvvvap1UpdateTime,
                  ("segment" .=) <$> _gcvvvap1Segment])

-- | Face detection annotation.
--
-- /See:/ 'googleCloudVideointelligenceV1beta2_FaceDetectionAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1beta2_FaceDetectionAnnotation =
  GoogleCloudVideointelligenceV1beta2_FaceDetectionAnnotation'
    { _goo1Thumbnail :: !(Maybe Bytes)
    , _goo1Tracks :: !(Maybe [GoogleCloudVideointelligenceV1beta2_Track])
    , _goo1Version :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_FaceDetectionAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'goo1Thumbnail'
--
-- * 'goo1Tracks'
--
-- * 'goo1Version'
googleCloudVideointelligenceV1beta2_FaceDetectionAnnotation
    :: GoogleCloudVideointelligenceV1beta2_FaceDetectionAnnotation
googleCloudVideointelligenceV1beta2_FaceDetectionAnnotation =
  GoogleCloudVideointelligenceV1beta2_FaceDetectionAnnotation'
    {_goo1Thumbnail = Nothing, _goo1Tracks = Nothing, _goo1Version = Nothing}


-- | The thumbnail of a person\'s face.
goo1Thumbnail :: Lens' GoogleCloudVideointelligenceV1beta2_FaceDetectionAnnotation (Maybe ByteString)
goo1Thumbnail
  = lens _goo1Thumbnail
      (\ s a -> s{_goo1Thumbnail = a})
      . mapping _Bytes

-- | The face tracks with attributes.
goo1Tracks :: Lens' GoogleCloudVideointelligenceV1beta2_FaceDetectionAnnotation [GoogleCloudVideointelligenceV1beta2_Track]
goo1Tracks
  = lens _goo1Tracks (\ s a -> s{_goo1Tracks = a}) .
      _Default
      . _Coerce

-- | Feature version.
goo1Version :: Lens' GoogleCloudVideointelligenceV1beta2_FaceDetectionAnnotation (Maybe Text)
goo1Version
  = lens _goo1Version (\ s a -> s{_goo1Version = a})

instance FromJSON
           GoogleCloudVideointelligenceV1beta2_FaceDetectionAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1beta2FaceDetectionAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1beta2_FaceDetectionAnnotation'
                   <$>
                   (o .:? "thumbnail") <*> (o .:? "tracks" .!= mempty)
                     <*> (o .:? "version"))

instance ToJSON
           GoogleCloudVideointelligenceV1beta2_FaceDetectionAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1beta2_FaceDetectionAnnotation'{..}
          = object
              (catMaybes
                 [("thumbnail" .=) <$> _goo1Thumbnail,
                  ("tracks" .=) <$> _goo1Tracks,
                  ("version" .=) <$> _goo1Version])

-- | A vertex represents a 2D point in the image. NOTE: the normalized vertex
-- coordinates are relative to the original image and range from 0 to 1.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_NormalizedVertex' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_NormalizedVertex =
  GoogleCloudVideointelligenceV1p3beta1_NormalizedVertex'
    { _ggX :: !(Maybe (Textual Double))
    , _ggY :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_NormalizedVertex' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggX'
--
-- * 'ggY'
googleCloudVideointelligenceV1p3beta1_NormalizedVertex
    :: GoogleCloudVideointelligenceV1p3beta1_NormalizedVertex
googleCloudVideointelligenceV1p3beta1_NormalizedVertex =
  GoogleCloudVideointelligenceV1p3beta1_NormalizedVertex'
    {_ggX = Nothing, _ggY = Nothing}


-- | X coordinate.
ggX :: Lens' GoogleCloudVideointelligenceV1p3beta1_NormalizedVertex (Maybe Double)
ggX
  = lens _ggX (\ s a -> s{_ggX = a}) . mapping _Coerce

-- | Y coordinate.
ggY :: Lens' GoogleCloudVideointelligenceV1p3beta1_NormalizedVertex (Maybe Double)
ggY
  = lens _ggY (\ s a -> s{_ggY = a}) . mapping _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_NormalizedVertex
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1NormalizedVertex"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_NormalizedVertex'
                   <$> (o .:? "x") <*> (o .:? "y"))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_NormalizedVertex
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_NormalizedVertex'{..}
          = object
              (catMaybes [("x" .=) <$> _ggX, ("y" .=) <$> _ggY])

-- | Video frame level annotation results for text annotation (OCR). Contains
-- information regarding timestamp and bounding box locations for the
-- frames containing detected OCR text snippets.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_TextFrame' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_TextFrame =
  GoogleCloudVideointelligenceV1p2beta1_TextFrame'
    { _g1RotatedBoundingBox :: !(Maybe GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly)
    , _g1TimeOffSet :: !(Maybe GDuration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_TextFrame' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'g1RotatedBoundingBox'
--
-- * 'g1TimeOffSet'
googleCloudVideointelligenceV1p2beta1_TextFrame
    :: GoogleCloudVideointelligenceV1p2beta1_TextFrame
googleCloudVideointelligenceV1p2beta1_TextFrame =
  GoogleCloudVideointelligenceV1p2beta1_TextFrame'
    {_g1RotatedBoundingBox = Nothing, _g1TimeOffSet = Nothing}


-- | Bounding polygon of the detected text for this frame.
g1RotatedBoundingBox :: Lens' GoogleCloudVideointelligenceV1p2beta1_TextFrame (Maybe GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly)
g1RotatedBoundingBox
  = lens _g1RotatedBoundingBox
      (\ s a -> s{_g1RotatedBoundingBox = a})

-- | Timestamp of this frame.
g1TimeOffSet :: Lens' GoogleCloudVideointelligenceV1p2beta1_TextFrame (Maybe Scientific)
g1TimeOffSet
  = lens _g1TimeOffSet (\ s a -> s{_g1TimeOffSet = a})
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
                 [("rotatedBoundingBox" .=) <$> _g1RotatedBoundingBox,
                  ("timeOffset" .=) <$> _g1TimeOffSet])

-- | Normalized bounding polygon for text (that might not be aligned with
-- axis). Contains list of the corner points in clockwise order starting
-- from top-left corner. For example, for a rectangular bounding box: When
-- the text is horizontal it might look like: 0----1 | | 3----2 When it\'s
-- clockwise rotated 180 degrees around the top-left corner it becomes:
-- 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3). Note
-- that values can be less than 0, or greater than 1 due to trignometric
-- calculations for location of the box.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_NormalizedBoundingPoly' smart constructor.
newtype GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingPoly =
  GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingPoly'
    { _ggVertices :: Maybe [GoogleCloudVideointelligenceV1p3beta1_NormalizedVertex]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingPoly' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggVertices'
googleCloudVideointelligenceV1p3beta1_NormalizedBoundingPoly
    :: GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingPoly
googleCloudVideointelligenceV1p3beta1_NormalizedBoundingPoly =
  GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingPoly'
    {_ggVertices = Nothing}


-- | Normalized vertices of the bounding polygon.
ggVertices :: Lens' GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingPoly [GoogleCloudVideointelligenceV1p3beta1_NormalizedVertex]
ggVertices
  = lens _ggVertices (\ s a -> s{_ggVertices = a}) .
      _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingPoly
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1NormalizedBoundingPoly"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingPoly'
                   <$> (o .:? "vertices" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingPoly
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingPoly'{..}
          = object
              (catMaybes [("vertices" .=) <$> _ggVertices])

-- | Label annotation.
--
-- /See:/ 'googleCloudVideointelligenceV1beta2_LabelAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1beta2_LabelAnnotation =
  GoogleCloudVideointelligenceV1beta2_LabelAnnotation'
    { _gcvvla2CategoryEntities :: !(Maybe [GoogleCloudVideointelligenceV1beta2_Entity])
    , _gcvvla2Frames :: !(Maybe [GoogleCloudVideointelligenceV1beta2_LabelFrame])
    , _gcvvla2Version :: !(Maybe Text)
    , _gcvvla2Segments :: !(Maybe [GoogleCloudVideointelligenceV1beta2_LabelSegment])
    , _gcvvla2Entity :: !(Maybe GoogleCloudVideointelligenceV1beta2_Entity)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_LabelAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvla2CategoryEntities'
--
-- * 'gcvvla2Frames'
--
-- * 'gcvvla2Version'
--
-- * 'gcvvla2Segments'
--
-- * 'gcvvla2Entity'
googleCloudVideointelligenceV1beta2_LabelAnnotation
    :: GoogleCloudVideointelligenceV1beta2_LabelAnnotation
googleCloudVideointelligenceV1beta2_LabelAnnotation =
  GoogleCloudVideointelligenceV1beta2_LabelAnnotation'
    { _gcvvla2CategoryEntities = Nothing
    , _gcvvla2Frames = Nothing
    , _gcvvla2Version = Nothing
    , _gcvvla2Segments = Nothing
    , _gcvvla2Entity = Nothing
    }


-- | Common categories for the detected entity. For example, when the label
-- is \`Terrier\`, the category is likely \`dog\`. And in some cases there
-- might be more than one categories e.g., \`Terrier\` could also be a
-- \`pet\`.
gcvvla2CategoryEntities :: Lens' GoogleCloudVideointelligenceV1beta2_LabelAnnotation [GoogleCloudVideointelligenceV1beta2_Entity]
gcvvla2CategoryEntities
  = lens _gcvvla2CategoryEntities
      (\ s a -> s{_gcvvla2CategoryEntities = a})
      . _Default
      . _Coerce

-- | All video frames where a label was detected.
gcvvla2Frames :: Lens' GoogleCloudVideointelligenceV1beta2_LabelAnnotation [GoogleCloudVideointelligenceV1beta2_LabelFrame]
gcvvla2Frames
  = lens _gcvvla2Frames
      (\ s a -> s{_gcvvla2Frames = a})
      . _Default
      . _Coerce

-- | Feature version.
gcvvla2Version :: Lens' GoogleCloudVideointelligenceV1beta2_LabelAnnotation (Maybe Text)
gcvvla2Version
  = lens _gcvvla2Version
      (\ s a -> s{_gcvvla2Version = a})

-- | All video segments where a label was detected.
gcvvla2Segments :: Lens' GoogleCloudVideointelligenceV1beta2_LabelAnnotation [GoogleCloudVideointelligenceV1beta2_LabelSegment]
gcvvla2Segments
  = lens _gcvvla2Segments
      (\ s a -> s{_gcvvla2Segments = a})
      . _Default
      . _Coerce

-- | Detected entity.
gcvvla2Entity :: Lens' GoogleCloudVideointelligenceV1beta2_LabelAnnotation (Maybe GoogleCloudVideointelligenceV1beta2_Entity)
gcvvla2Entity
  = lens _gcvvla2Entity
      (\ s a -> s{_gcvvla2Entity = a})

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
                     <*> (o .:? "version")
                     <*> (o .:? "segments" .!= mempty)
                     <*> (o .:? "entity"))

instance ToJSON
           GoogleCloudVideointelligenceV1beta2_LabelAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1beta2_LabelAnnotation'{..}
          = object
              (catMaybes
                 [("categoryEntities" .=) <$>
                    _gcvvla2CategoryEntities,
                  ("frames" .=) <$> _gcvvla2Frames,
                  ("version" .=) <$> _gcvvla2Version,
                  ("segments" .=) <$> _gcvvla2Segments,
                  ("entity" .=) <$> _gcvvla2Entity])

-- | \`StreamingAnnotateVideoResponse\` is the only message returned to the
-- client by \`StreamingAnnotateVideo\`. A series of zero or more
-- \`StreamingAnnotateVideoResponse\` messages are streamed back to the
-- client.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_StreamingAnnotateVideoResponse' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_StreamingAnnotateVideoResponse =
  GoogleCloudVideointelligenceV1p3beta1_StreamingAnnotateVideoResponse'
    { _gcvvsavrError :: !(Maybe GoogleRpc_Status)
    , _gcvvsavrAnnotationResults :: !(Maybe GoogleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults)
    , _gcvvsavrAnnotationResultsURI :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_StreamingAnnotateVideoResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvsavrError'
--
-- * 'gcvvsavrAnnotationResults'
--
-- * 'gcvvsavrAnnotationResultsURI'
googleCloudVideointelligenceV1p3beta1_StreamingAnnotateVideoResponse
    :: GoogleCloudVideointelligenceV1p3beta1_StreamingAnnotateVideoResponse
googleCloudVideointelligenceV1p3beta1_StreamingAnnotateVideoResponse =
  GoogleCloudVideointelligenceV1p3beta1_StreamingAnnotateVideoResponse'
    { _gcvvsavrError = Nothing
    , _gcvvsavrAnnotationResults = Nothing
    , _gcvvsavrAnnotationResultsURI = Nothing
    }


-- | If set, returns a google.rpc.Status message that specifies the error for
-- the operation.
gcvvsavrError :: Lens' GoogleCloudVideointelligenceV1p3beta1_StreamingAnnotateVideoResponse (Maybe GoogleRpc_Status)
gcvvsavrError
  = lens _gcvvsavrError
      (\ s a -> s{_gcvvsavrError = a})

-- | Streaming annotation results.
gcvvsavrAnnotationResults :: Lens' GoogleCloudVideointelligenceV1p3beta1_StreamingAnnotateVideoResponse (Maybe GoogleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults)
gcvvsavrAnnotationResults
  = lens _gcvvsavrAnnotationResults
      (\ s a -> s{_gcvvsavrAnnotationResults = a})

-- | Google Cloud Storage URI that stores annotation results of one streaming
-- session in JSON format. It is the annotation_result_storage_directory
-- from the request followed by \'\/cloud_project_number-session_id\'.
gcvvsavrAnnotationResultsURI :: Lens' GoogleCloudVideointelligenceV1p3beta1_StreamingAnnotateVideoResponse (Maybe Text)
gcvvsavrAnnotationResultsURI
  = lens _gcvvsavrAnnotationResultsURI
      (\ s a -> s{_gcvvsavrAnnotationResultsURI = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_StreamingAnnotateVideoResponse
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1StreamingAnnotateVideoResponse"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_StreamingAnnotateVideoResponse'
                   <$>
                   (o .:? "error") <*> (o .:? "annotationResults") <*>
                     (o .:? "annotationResultsUri"))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_StreamingAnnotateVideoResponse
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_StreamingAnnotateVideoResponse'{..}
          = object
              (catMaybes
                 [("error" .=) <$> _gcvvsavrError,
                  ("annotationResults" .=) <$>
                    _gcvvsavrAnnotationResults,
                  ("annotationResultsUri" .=) <$>
                    _gcvvsavrAnnotationResultsURI])

-- | A speech recognition result corresponding to a portion of the audio.
--
-- /See:/ 'googleCloudVideointelligenceV1p1beta1_SpeechTranscription' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription =
  GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription'
    { _g1Alternatives :: !(Maybe [GoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative])
    , _g1LanguageCode :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'g1Alternatives'
--
-- * 'g1LanguageCode'
googleCloudVideointelligenceV1p1beta1_SpeechTranscription
    :: GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription
googleCloudVideointelligenceV1p1beta1_SpeechTranscription =
  GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription'
    {_g1Alternatives = Nothing, _g1LanguageCode = Nothing}


-- | May contain one or more recognition hypotheses (up to the maximum
-- specified in \`max_alternatives\`). These alternatives are ordered in
-- terms of accuracy, with the top (first) alternative being the most
-- probable, as ranked by the recognizer.
g1Alternatives :: Lens' GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription [GoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative]
g1Alternatives
  = lens _g1Alternatives
      (\ s a -> s{_g1Alternatives = a})
      . _Default
      . _Coerce

-- | Output only. The
-- [BCP-47](https:\/\/www.rfc-editor.org\/rfc\/bcp\/bcp47.txt) language tag
-- of the language in this result. This language code was detected to have
-- the most likelihood of being spoken in the audio.
g1LanguageCode :: Lens' GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription (Maybe Text)
g1LanguageCode
  = lens _g1LanguageCode
      (\ s a -> s{_g1LanguageCode = a})

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
                 [("alternatives" .=) <$> _g1Alternatives,
                  ("languageCode" .=) <$> _g1LanguageCode])

-- | Annotation results for a single video.
--
-- /See:/ 'googleCloudVideointelligenceV1beta2_VideoAnnotationResults' smart constructor.
data GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults =
  GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults'
    { _gcvvvar1ShotAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1beta2_VideoSegment])
    , _gcvvvar1ShotLabelAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1beta2_LabelAnnotation])
    , _gcvvvar1FaceDetectionAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1beta2_FaceDetectionAnnotation])
    , _gcvvvar1FaceAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1beta2_FaceAnnotation])
    , _gcvvvar1InputURI :: !(Maybe Text)
    , _gcvvvar1Error :: !(Maybe GoogleRpc_Status)
    , _gcvvvar1ShotPresenceLabelAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1beta2_LabelAnnotation])
    , _gcvvvar1PersonDetectionAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1beta2_PersonDetectionAnnotation])
    , _gcvvvar1ObjectAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation])
    , _gcvvvar1FrameLabelAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1beta2_LabelAnnotation])
    , _gcvvvar1SpeechTranscriptions :: !(Maybe [GoogleCloudVideointelligenceV1beta2_SpeechTranscription])
    , _gcvvvar1SegmentPresenceLabelAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1beta2_LabelAnnotation])
    , _gcvvvar1LogoRecognitionAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation])
    , _gcvvvar1Segment :: !(Maybe GoogleCloudVideointelligenceV1beta2_VideoSegment)
    , _gcvvvar1TextAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1beta2_TextAnnotation])
    , _gcvvvar1SegmentLabelAnnotations :: !(Maybe [GoogleCloudVideointelligenceV1beta2_LabelAnnotation])
    , _gcvvvar1ExplicitAnnotation :: !(Maybe GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvvar1ShotAnnotations'
--
-- * 'gcvvvar1ShotLabelAnnotations'
--
-- * 'gcvvvar1FaceDetectionAnnotations'
--
-- * 'gcvvvar1FaceAnnotations'
--
-- * 'gcvvvar1InputURI'
--
-- * 'gcvvvar1Error'
--
-- * 'gcvvvar1ShotPresenceLabelAnnotations'
--
-- * 'gcvvvar1PersonDetectionAnnotations'
--
-- * 'gcvvvar1ObjectAnnotations'
--
-- * 'gcvvvar1FrameLabelAnnotations'
--
-- * 'gcvvvar1SpeechTranscriptions'
--
-- * 'gcvvvar1SegmentPresenceLabelAnnotations'
--
-- * 'gcvvvar1LogoRecognitionAnnotations'
--
-- * 'gcvvvar1Segment'
--
-- * 'gcvvvar1TextAnnotations'
--
-- * 'gcvvvar1SegmentLabelAnnotations'
--
-- * 'gcvvvar1ExplicitAnnotation'
googleCloudVideointelligenceV1beta2_VideoAnnotationResults
    :: GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults
googleCloudVideointelligenceV1beta2_VideoAnnotationResults =
  GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults'
    { _gcvvvar1ShotAnnotations = Nothing
    , _gcvvvar1ShotLabelAnnotations = Nothing
    , _gcvvvar1FaceDetectionAnnotations = Nothing
    , _gcvvvar1FaceAnnotations = Nothing
    , _gcvvvar1InputURI = Nothing
    , _gcvvvar1Error = Nothing
    , _gcvvvar1ShotPresenceLabelAnnotations = Nothing
    , _gcvvvar1PersonDetectionAnnotations = Nothing
    , _gcvvvar1ObjectAnnotations = Nothing
    , _gcvvvar1FrameLabelAnnotations = Nothing
    , _gcvvvar1SpeechTranscriptions = Nothing
    , _gcvvvar1SegmentPresenceLabelAnnotations = Nothing
    , _gcvvvar1LogoRecognitionAnnotations = Nothing
    , _gcvvvar1Segment = Nothing
    , _gcvvvar1TextAnnotations = Nothing
    , _gcvvvar1SegmentLabelAnnotations = Nothing
    , _gcvvvar1ExplicitAnnotation = Nothing
    }


-- | Shot annotations. Each shot is represented as a video segment.
gcvvvar1ShotAnnotations :: Lens' GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults [GoogleCloudVideointelligenceV1beta2_VideoSegment]
gcvvvar1ShotAnnotations
  = lens _gcvvvar1ShotAnnotations
      (\ s a -> s{_gcvvvar1ShotAnnotations = a})
      . _Default
      . _Coerce

-- | Topical label annotations on shot level. There is exactly one element
-- for each unique label.
gcvvvar1ShotLabelAnnotations :: Lens' GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults [GoogleCloudVideointelligenceV1beta2_LabelAnnotation]
gcvvvar1ShotLabelAnnotations
  = lens _gcvvvar1ShotLabelAnnotations
      (\ s a -> s{_gcvvvar1ShotLabelAnnotations = a})
      . _Default
      . _Coerce

-- | Face detection annotations.
gcvvvar1FaceDetectionAnnotations :: Lens' GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults [GoogleCloudVideointelligenceV1beta2_FaceDetectionAnnotation]
gcvvvar1FaceDetectionAnnotations
  = lens _gcvvvar1FaceDetectionAnnotations
      (\ s a -> s{_gcvvvar1FaceDetectionAnnotations = a})
      . _Default
      . _Coerce

-- | Deprecated. Please use \`face_detection_annotations\` instead.
gcvvvar1FaceAnnotations :: Lens' GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults [GoogleCloudVideointelligenceV1beta2_FaceAnnotation]
gcvvvar1FaceAnnotations
  = lens _gcvvvar1FaceAnnotations
      (\ s a -> s{_gcvvvar1FaceAnnotations = a})
      . _Default
      . _Coerce

-- | Video file location in [Cloud
-- Storage](https:\/\/cloud.google.com\/storage\/).
gcvvvar1InputURI :: Lens' GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults (Maybe Text)
gcvvvar1InputURI
  = lens _gcvvvar1InputURI
      (\ s a -> s{_gcvvvar1InputURI = a})

-- | If set, indicates an error. Note that for a single
-- \`AnnotateVideoRequest\` some videos may succeed and some may fail.
gcvvvar1Error :: Lens' GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults (Maybe GoogleRpc_Status)
gcvvvar1Error
  = lens _gcvvvar1Error
      (\ s a -> s{_gcvvvar1Error = a})

-- | Presence label annotations on shot level. There is exactly one element
-- for each unique label. Compared to the existing topical
-- \`shot_label_annotations\`, this field presents more fine-grained,
-- shot-level labels detected in video content and is made available only
-- when the client sets \`LabelDetectionConfig.model\` to
-- \"builtin\/latest\" in the request.
gcvvvar1ShotPresenceLabelAnnotations :: Lens' GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults [GoogleCloudVideointelligenceV1beta2_LabelAnnotation]
gcvvvar1ShotPresenceLabelAnnotations
  = lens _gcvvvar1ShotPresenceLabelAnnotations
      (\ s a ->
         s{_gcvvvar1ShotPresenceLabelAnnotations = a})
      . _Default
      . _Coerce

-- | Person detection annotations.
gcvvvar1PersonDetectionAnnotations :: Lens' GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults [GoogleCloudVideointelligenceV1beta2_PersonDetectionAnnotation]
gcvvvar1PersonDetectionAnnotations
  = lens _gcvvvar1PersonDetectionAnnotations
      (\ s a -> s{_gcvvvar1PersonDetectionAnnotations = a})
      . _Default
      . _Coerce

-- | Annotations for list of objects detected and tracked in video.
gcvvvar1ObjectAnnotations :: Lens' GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults [GoogleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation]
gcvvvar1ObjectAnnotations
  = lens _gcvvvar1ObjectAnnotations
      (\ s a -> s{_gcvvvar1ObjectAnnotations = a})
      . _Default
      . _Coerce

-- | Label annotations on frame level. There is exactly one element for each
-- unique label.
gcvvvar1FrameLabelAnnotations :: Lens' GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults [GoogleCloudVideointelligenceV1beta2_LabelAnnotation]
gcvvvar1FrameLabelAnnotations
  = lens _gcvvvar1FrameLabelAnnotations
      (\ s a -> s{_gcvvvar1FrameLabelAnnotations = a})
      . _Default
      . _Coerce

-- | Speech transcription.
gcvvvar1SpeechTranscriptions :: Lens' GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults [GoogleCloudVideointelligenceV1beta2_SpeechTranscription]
gcvvvar1SpeechTranscriptions
  = lens _gcvvvar1SpeechTranscriptions
      (\ s a -> s{_gcvvvar1SpeechTranscriptions = a})
      . _Default
      . _Coerce

-- | Presence label annotations on video level or user-specified segment
-- level. There is exactly one element for each unique label. Compared to
-- the existing topical \`segment_label_annotations\`, this field presents
-- more fine-grained, segment-level labels detected in video content and is
-- made available only when the client sets \`LabelDetectionConfig.model\`
-- to \"builtin\/latest\" in the request.
gcvvvar1SegmentPresenceLabelAnnotations :: Lens' GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults [GoogleCloudVideointelligenceV1beta2_LabelAnnotation]
gcvvvar1SegmentPresenceLabelAnnotations
  = lens _gcvvvar1SegmentPresenceLabelAnnotations
      (\ s a ->
         s{_gcvvvar1SegmentPresenceLabelAnnotations = a})
      . _Default
      . _Coerce

-- | Annotations for list of logos detected, tracked and recognized in video.
gcvvvar1LogoRecognitionAnnotations :: Lens' GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults [GoogleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation]
gcvvvar1LogoRecognitionAnnotations
  = lens _gcvvvar1LogoRecognitionAnnotations
      (\ s a -> s{_gcvvvar1LogoRecognitionAnnotations = a})
      . _Default
      . _Coerce

-- | Video segment on which the annotation is run.
gcvvvar1Segment :: Lens' GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults (Maybe GoogleCloudVideointelligenceV1beta2_VideoSegment)
gcvvvar1Segment
  = lens _gcvvvar1Segment
      (\ s a -> s{_gcvvvar1Segment = a})

-- | OCR text detection and tracking. Annotations for list of detected text
-- snippets. Each will have list of frame information associated with it.
gcvvvar1TextAnnotations :: Lens' GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults [GoogleCloudVideointelligenceV1beta2_TextAnnotation]
gcvvvar1TextAnnotations
  = lens _gcvvvar1TextAnnotations
      (\ s a -> s{_gcvvvar1TextAnnotations = a})
      . _Default
      . _Coerce

-- | Topical label annotations on video level or user-specified segment
-- level. There is exactly one element for each unique label.
gcvvvar1SegmentLabelAnnotations :: Lens' GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults [GoogleCloudVideointelligenceV1beta2_LabelAnnotation]
gcvvvar1SegmentLabelAnnotations
  = lens _gcvvvar1SegmentLabelAnnotations
      (\ s a -> s{_gcvvvar1SegmentLabelAnnotations = a})
      . _Default
      . _Coerce

-- | Explicit content annotation.
gcvvvar1ExplicitAnnotation :: Lens' GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults (Maybe GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation)
gcvvvar1ExplicitAnnotation
  = lens _gcvvvar1ExplicitAnnotation
      (\ s a -> s{_gcvvvar1ExplicitAnnotation = a})

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
                     <*> (o .:? "faceDetectionAnnotations" .!= mempty)
                     <*> (o .:? "faceAnnotations" .!= mempty)
                     <*> (o .:? "inputUri")
                     <*> (o .:? "error")
                     <*> (o .:? "shotPresenceLabelAnnotations" .!= mempty)
                     <*> (o .:? "personDetectionAnnotations" .!= mempty)
                     <*> (o .:? "objectAnnotations" .!= mempty)
                     <*> (o .:? "frameLabelAnnotations" .!= mempty)
                     <*> (o .:? "speechTranscriptions" .!= mempty)
                     <*>
                     (o .:? "segmentPresenceLabelAnnotations" .!= mempty)
                     <*> (o .:? "logoRecognitionAnnotations" .!= mempty)
                     <*> (o .:? "segment")
                     <*> (o .:? "textAnnotations" .!= mempty)
                     <*> (o .:? "segmentLabelAnnotations" .!= mempty)
                     <*> (o .:? "explicitAnnotation"))

instance ToJSON
           GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults
         where
        toJSON
          GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults'{..}
          = object
              (catMaybes
                 [("shotAnnotations" .=) <$> _gcvvvar1ShotAnnotations,
                  ("shotLabelAnnotations" .=) <$>
                    _gcvvvar1ShotLabelAnnotations,
                  ("faceDetectionAnnotations" .=) <$>
                    _gcvvvar1FaceDetectionAnnotations,
                  ("faceAnnotations" .=) <$> _gcvvvar1FaceAnnotations,
                  ("inputUri" .=) <$> _gcvvvar1InputURI,
                  ("error" .=) <$> _gcvvvar1Error,
                  ("shotPresenceLabelAnnotations" .=) <$>
                    _gcvvvar1ShotPresenceLabelAnnotations,
                  ("personDetectionAnnotations" .=) <$>
                    _gcvvvar1PersonDetectionAnnotations,
                  ("objectAnnotations" .=) <$>
                    _gcvvvar1ObjectAnnotations,
                  ("frameLabelAnnotations" .=) <$>
                    _gcvvvar1FrameLabelAnnotations,
                  ("speechTranscriptions" .=) <$>
                    _gcvvvar1SpeechTranscriptions,
                  ("segmentPresenceLabelAnnotations" .=) <$>
                    _gcvvvar1SegmentPresenceLabelAnnotations,
                  ("logoRecognitionAnnotations" .=) <$>
                    _gcvvvar1LogoRecognitionAnnotations,
                  ("segment" .=) <$> _gcvvvar1Segment,
                  ("textAnnotations" .=) <$> _gcvvvar1TextAnnotations,
                  ("segmentLabelAnnotations" .=) <$>
                    _gcvvvar1SegmentLabelAnnotations,
                  ("explicitAnnotation" .=) <$>
                    _gcvvvar1ExplicitAnnotation])

-- | Deprecated. No effect.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_FaceFrame' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_FaceFrame =
  GoogleCloudVideointelligenceV1p3beta1_FaceFrame'
    { _gcvvff1TimeOffSet :: !(Maybe GDuration)
    , _gcvvff1NormalizedBoundingBoxes :: !(Maybe [GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_FaceFrame' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvff1TimeOffSet'
--
-- * 'gcvvff1NormalizedBoundingBoxes'
googleCloudVideointelligenceV1p3beta1_FaceFrame
    :: GoogleCloudVideointelligenceV1p3beta1_FaceFrame
googleCloudVideointelligenceV1p3beta1_FaceFrame =
  GoogleCloudVideointelligenceV1p3beta1_FaceFrame'
    {_gcvvff1TimeOffSet = Nothing, _gcvvff1NormalizedBoundingBoxes = Nothing}


-- | Time-offset, relative to the beginning of the video, corresponding to
-- the video frame for this location.
gcvvff1TimeOffSet :: Lens' GoogleCloudVideointelligenceV1p3beta1_FaceFrame (Maybe Scientific)
gcvvff1TimeOffSet
  = lens _gcvvff1TimeOffSet
      (\ s a -> s{_gcvvff1TimeOffSet = a})
      . mapping _GDuration

-- | Normalized Bounding boxes in a frame. There can be more than one boxes
-- if the same face is detected in multiple locations within the current
-- frame.
gcvvff1NormalizedBoundingBoxes :: Lens' GoogleCloudVideointelligenceV1p3beta1_FaceFrame [GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox]
gcvvff1NormalizedBoundingBoxes
  = lens _gcvvff1NormalizedBoundingBoxes
      (\ s a -> s{_gcvvff1NormalizedBoundingBoxes = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_FaceFrame
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1FaceFrame"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_FaceFrame' <$>
                   (o .:? "timeOffset") <*>
                     (o .:? "normalizedBoundingBoxes" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_FaceFrame
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_FaceFrame'{..}
          = object
              (catMaybes
                 [("timeOffset" .=) <$> _gcvvff1TimeOffSet,
                  ("normalizedBoundingBoxes" .=) <$>
                    _gcvvff1NormalizedBoundingBoxes])

-- | Video segment level annotation results for label detection.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_LabelSegment' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_LabelSegment =
  GoogleCloudVideointelligenceV1p2beta1_LabelSegment'
    { _gcvvls1Confidence :: !(Maybe (Textual Double))
    , _gcvvls1Segment :: !(Maybe GoogleCloudVideointelligenceV1p2beta1_VideoSegment)
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

-- | A generic detected landmark represented by name in string format and a
-- 2D location.
--
-- /See:/ 'googleCloudVideointelligenceV1beta2_DetectedLandmark' smart constructor.
data GoogleCloudVideointelligenceV1beta2_DetectedLandmark =
  GoogleCloudVideointelligenceV1beta2_DetectedLandmark'
    { _g2Confidence :: !(Maybe (Textual Double))
    , _g2Point :: !(Maybe GoogleCloudVideointelligenceV1beta2_NormalizedVertex)
    , _g2Name :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_DetectedLandmark' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'g2Confidence'
--
-- * 'g2Point'
--
-- * 'g2Name'
googleCloudVideointelligenceV1beta2_DetectedLandmark
    :: GoogleCloudVideointelligenceV1beta2_DetectedLandmark
googleCloudVideointelligenceV1beta2_DetectedLandmark =
  GoogleCloudVideointelligenceV1beta2_DetectedLandmark'
    {_g2Confidence = Nothing, _g2Point = Nothing, _g2Name = Nothing}


-- | The confidence score of the detected landmark. Range [0, 1].
g2Confidence :: Lens' GoogleCloudVideointelligenceV1beta2_DetectedLandmark (Maybe Double)
g2Confidence
  = lens _g2Confidence (\ s a -> s{_g2Confidence = a})
      . mapping _Coerce

-- | The 2D point of the detected landmark using the normalized image
-- coordindate system. The normalized coordinates have the range from 0 to
-- 1.
g2Point :: Lens' GoogleCloudVideointelligenceV1beta2_DetectedLandmark (Maybe GoogleCloudVideointelligenceV1beta2_NormalizedVertex)
g2Point = lens _g2Point (\ s a -> s{_g2Point = a})

-- | The name of this landmark, for example, left_hand, right_shoulder.
g2Name :: Lens' GoogleCloudVideointelligenceV1beta2_DetectedLandmark (Maybe Text)
g2Name = lens _g2Name (\ s a -> s{_g2Name = a})

instance FromJSON
           GoogleCloudVideointelligenceV1beta2_DetectedLandmark
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1beta2DetectedLandmark"
              (\ o ->
                 GoogleCloudVideointelligenceV1beta2_DetectedLandmark'
                   <$>
                   (o .:? "confidence") <*> (o .:? "point") <*>
                     (o .:? "name"))

instance ToJSON
           GoogleCloudVideointelligenceV1beta2_DetectedLandmark
         where
        toJSON
          GoogleCloudVideointelligenceV1beta2_DetectedLandmark'{..}
          = object
              (catMaybes
                 [("confidence" .=) <$> _g2Confidence,
                  ("point" .=) <$> _g2Point, ("name" .=) <$> _g2Name])

-- | Deprecated. No effect.
--
-- /See:/ 'googleCloudVideointelligenceV1_FaceFrame' smart constructor.
data GoogleCloudVideointelligenceV1_FaceFrame =
  GoogleCloudVideointelligenceV1_FaceFrame'
    { _gcvvff2TimeOffSet :: !(Maybe GDuration)
    , _gcvvff2NormalizedBoundingBoxes :: !(Maybe [GoogleCloudVideointelligenceV1_NormalizedBoundingBox])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1_FaceFrame' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvff2TimeOffSet'
--
-- * 'gcvvff2NormalizedBoundingBoxes'
googleCloudVideointelligenceV1_FaceFrame
    :: GoogleCloudVideointelligenceV1_FaceFrame
googleCloudVideointelligenceV1_FaceFrame =
  GoogleCloudVideointelligenceV1_FaceFrame'
    {_gcvvff2TimeOffSet = Nothing, _gcvvff2NormalizedBoundingBoxes = Nothing}


-- | Time-offset, relative to the beginning of the video, corresponding to
-- the video frame for this location.
gcvvff2TimeOffSet :: Lens' GoogleCloudVideointelligenceV1_FaceFrame (Maybe Scientific)
gcvvff2TimeOffSet
  = lens _gcvvff2TimeOffSet
      (\ s a -> s{_gcvvff2TimeOffSet = a})
      . mapping _GDuration

-- | Normalized Bounding boxes in a frame. There can be more than one boxes
-- if the same face is detected in multiple locations within the current
-- frame.
gcvvff2NormalizedBoundingBoxes :: Lens' GoogleCloudVideointelligenceV1_FaceFrame [GoogleCloudVideointelligenceV1_NormalizedBoundingBox]
gcvvff2NormalizedBoundingBoxes
  = lens _gcvvff2NormalizedBoundingBoxes
      (\ s a -> s{_gcvvff2NormalizedBoundingBoxes = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1_FaceFrame
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1FaceFrame"
              (\ o ->
                 GoogleCloudVideointelligenceV1_FaceFrame' <$>
                   (o .:? "timeOffset") <*>
                     (o .:? "normalizedBoundingBoxes" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1_FaceFrame
         where
        toJSON GoogleCloudVideointelligenceV1_FaceFrame'{..}
          = object
              (catMaybes
                 [("timeOffset" .=) <$> _gcvvff2TimeOffSet,
                  ("normalizedBoundingBoxes" .=) <$>
                    _gcvvff2NormalizedBoundingBoxes])

-- | Normalized bounding box. The normalized vertex coordinates are relative
-- to the original image. Range: [0, 1].
--
-- /See:/ 'googleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox =
  GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox'
    { _gcvvnbbcBottom :: !(Maybe (Textual Double))
    , _gcvvnbbcLeft :: !(Maybe (Textual Double))
    , _gcvvnbbcRight :: !(Maybe (Textual Double))
    , _gcvvnbbcTop :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvnbbcBottom'
--
-- * 'gcvvnbbcLeft'
--
-- * 'gcvvnbbcRight'
--
-- * 'gcvvnbbcTop'
googleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox
    :: GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox
googleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox =
  GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox'
    { _gcvvnbbcBottom = Nothing
    , _gcvvnbbcLeft = Nothing
    , _gcvvnbbcRight = Nothing
    , _gcvvnbbcTop = Nothing
    }


-- | Bottom Y coordinate.
gcvvnbbcBottom :: Lens' GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox (Maybe Double)
gcvvnbbcBottom
  = lens _gcvvnbbcBottom
      (\ s a -> s{_gcvvnbbcBottom = a})
      . mapping _Coerce

-- | Left X coordinate.
gcvvnbbcLeft :: Lens' GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox (Maybe Double)
gcvvnbbcLeft
  = lens _gcvvnbbcLeft (\ s a -> s{_gcvvnbbcLeft = a})
      . mapping _Coerce

-- | Right X coordinate.
gcvvnbbcRight :: Lens' GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox (Maybe Double)
gcvvnbbcRight
  = lens _gcvvnbbcRight
      (\ s a -> s{_gcvvnbbcRight = a})
      . mapping _Coerce

-- | Top Y coordinate.
gcvvnbbcTop :: Lens' GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox (Maybe Double)
gcvvnbbcTop
  = lens _gcvvnbbcTop (\ s a -> s{_gcvvnbbcTop = a}) .
      mapping _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox"
              (\ o ->
                 GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox'
                   <$>
                   (o .:? "bottom") <*> (o .:? "left") <*>
                     (o .:? "right")
                     <*> (o .:? "top"))

instance ToJSON
           GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox
         where
        toJSON
          GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox'{..}
          = object
              (catMaybes
                 [("bottom" .=) <$> _gcvvnbbcBottom,
                  ("left" .=) <$> _gcvvnbbcLeft,
                  ("right" .=) <$> _gcvvnbbcRight,
                  ("top" .=) <$> _gcvvnbbcTop])

-- | Video segment level annotation results for text detection.
--
-- /See:/ 'googleCloudVideointelligenceV1p1beta1_TextSegment' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_TextSegment =
  GoogleCloudVideointelligenceV1p1beta1_TextSegment'
    { _gcvvts2Frames :: !(Maybe [GoogleCloudVideointelligenceV1p1beta1_TextFrame])
    , _gcvvts2Confidence :: !(Maybe (Textual Double))
    , _gcvvts2Segment :: !(Maybe GoogleCloudVideointelligenceV1p1beta1_VideoSegment)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_TextSegment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvts2Frames'
--
-- * 'gcvvts2Confidence'
--
-- * 'gcvvts2Segment'
googleCloudVideointelligenceV1p1beta1_TextSegment
    :: GoogleCloudVideointelligenceV1p1beta1_TextSegment
googleCloudVideointelligenceV1p1beta1_TextSegment =
  GoogleCloudVideointelligenceV1p1beta1_TextSegment'
    { _gcvvts2Frames = Nothing
    , _gcvvts2Confidence = Nothing
    , _gcvvts2Segment = Nothing
    }


-- | Information related to the frames where OCR detected text appears.
gcvvts2Frames :: Lens' GoogleCloudVideointelligenceV1p1beta1_TextSegment [GoogleCloudVideointelligenceV1p1beta1_TextFrame]
gcvvts2Frames
  = lens _gcvvts2Frames
      (\ s a -> s{_gcvvts2Frames = a})
      . _Default
      . _Coerce

-- | Confidence for the track of detected text. It is calculated as the
-- highest over all frames where OCR detected text appears.
gcvvts2Confidence :: Lens' GoogleCloudVideointelligenceV1p1beta1_TextSegment (Maybe Double)
gcvvts2Confidence
  = lens _gcvvts2Confidence
      (\ s a -> s{_gcvvts2Confidence = a})
      . mapping _Coerce

-- | Video segment where a text snippet was detected.
gcvvts2Segment :: Lens' GoogleCloudVideointelligenceV1p1beta1_TextSegment (Maybe GoogleCloudVideointelligenceV1p1beta1_VideoSegment)
gcvvts2Segment
  = lens _gcvvts2Segment
      (\ s a -> s{_gcvvts2Segment = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p1beta1_TextSegment
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p1beta1TextSegment"
              (\ o ->
                 GoogleCloudVideointelligenceV1p1beta1_TextSegment'
                   <$>
                   (o .:? "frames" .!= mempty) <*> (o .:? "confidence")
                     <*> (o .:? "segment"))

instance ToJSON
           GoogleCloudVideointelligenceV1p1beta1_TextSegment
         where
        toJSON
          GoogleCloudVideointelligenceV1p1beta1_TextSegment'{..}
          = object
              (catMaybes
                 [("frames" .=) <$> _gcvvts2Frames,
                  ("confidence" .=) <$> _gcvvts2Confidence,
                  ("segment" .=) <$> _gcvvts2Segment])

-- | The annotation result of a celebrity face track. RecognizedCelebrity
-- field could be empty if the face track does not have any matched
-- celebrities.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_CelebrityTrack' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_CelebrityTrack =
  GoogleCloudVideointelligenceV1p3beta1_CelebrityTrack'
    { _gcvvctCelebrities :: !(Maybe [GoogleCloudVideointelligenceV1p3beta1_RecognizedCelebrity])
    , _gcvvctFaceTrack :: !(Maybe GoogleCloudVideointelligenceV1p3beta1_Track)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_CelebrityTrack' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvctCelebrities'
--
-- * 'gcvvctFaceTrack'
googleCloudVideointelligenceV1p3beta1_CelebrityTrack
    :: GoogleCloudVideointelligenceV1p3beta1_CelebrityTrack
googleCloudVideointelligenceV1p3beta1_CelebrityTrack =
  GoogleCloudVideointelligenceV1p3beta1_CelebrityTrack'
    {_gcvvctCelebrities = Nothing, _gcvvctFaceTrack = Nothing}


-- | Top N match of the celebrities for the face in this track.
gcvvctCelebrities :: Lens' GoogleCloudVideointelligenceV1p3beta1_CelebrityTrack [GoogleCloudVideointelligenceV1p3beta1_RecognizedCelebrity]
gcvvctCelebrities
  = lens _gcvvctCelebrities
      (\ s a -> s{_gcvvctCelebrities = a})
      . _Default
      . _Coerce

-- | A track of a person\'s face.
gcvvctFaceTrack :: Lens' GoogleCloudVideointelligenceV1p3beta1_CelebrityTrack (Maybe GoogleCloudVideointelligenceV1p3beta1_Track)
gcvvctFaceTrack
  = lens _gcvvctFaceTrack
      (\ s a -> s{_gcvvctFaceTrack = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_CelebrityTrack
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1CelebrityTrack"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_CelebrityTrack'
                   <$>
                   (o .:? "celebrities" .!= mempty) <*>
                     (o .:? "faceTrack"))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_CelebrityTrack
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_CelebrityTrack'{..}
          = object
              (catMaybes
                 [("celebrities" .=) <$> _gcvvctCelebrities,
                  ("faceTrack" .=) <$> _gcvvctFaceTrack])

-- | A track of an object instance.
--
-- /See:/ 'googleCloudVideointelligenceV1beta2_Track' smart constructor.
data GoogleCloudVideointelligenceV1beta2_Track =
  GoogleCloudVideointelligenceV1beta2_Track'
    { _gcvvt2Confidence :: !(Maybe (Textual Double))
    , _gcvvt2Attributes :: !(Maybe [GoogleCloudVideointelligenceV1beta2_DetectedAttribute])
    , _gcvvt2Segment :: !(Maybe GoogleCloudVideointelligenceV1beta2_VideoSegment)
    , _gcvvt2TimestampedObjects :: !(Maybe [GoogleCloudVideointelligenceV1beta2_TimestampedObject])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_Track' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvt2Confidence'
--
-- * 'gcvvt2Attributes'
--
-- * 'gcvvt2Segment'
--
-- * 'gcvvt2TimestampedObjects'
googleCloudVideointelligenceV1beta2_Track
    :: GoogleCloudVideointelligenceV1beta2_Track
googleCloudVideointelligenceV1beta2_Track =
  GoogleCloudVideointelligenceV1beta2_Track'
    { _gcvvt2Confidence = Nothing
    , _gcvvt2Attributes = Nothing
    , _gcvvt2Segment = Nothing
    , _gcvvt2TimestampedObjects = Nothing
    }


-- | Optional. The confidence score of the tracked object.
gcvvt2Confidence :: Lens' GoogleCloudVideointelligenceV1beta2_Track (Maybe Double)
gcvvt2Confidence
  = lens _gcvvt2Confidence
      (\ s a -> s{_gcvvt2Confidence = a})
      . mapping _Coerce

-- | Optional. Attributes in the track level.
gcvvt2Attributes :: Lens' GoogleCloudVideointelligenceV1beta2_Track [GoogleCloudVideointelligenceV1beta2_DetectedAttribute]
gcvvt2Attributes
  = lens _gcvvt2Attributes
      (\ s a -> s{_gcvvt2Attributes = a})
      . _Default
      . _Coerce

-- | Video segment of a track.
gcvvt2Segment :: Lens' GoogleCloudVideointelligenceV1beta2_Track (Maybe GoogleCloudVideointelligenceV1beta2_VideoSegment)
gcvvt2Segment
  = lens _gcvvt2Segment
      (\ s a -> s{_gcvvt2Segment = a})

-- | The object with timestamp and attributes per frame in the track.
gcvvt2TimestampedObjects :: Lens' GoogleCloudVideointelligenceV1beta2_Track [GoogleCloudVideointelligenceV1beta2_TimestampedObject]
gcvvt2TimestampedObjects
  = lens _gcvvt2TimestampedObjects
      (\ s a -> s{_gcvvt2TimestampedObjects = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1beta2_Track
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1beta2Track"
              (\ o ->
                 GoogleCloudVideointelligenceV1beta2_Track' <$>
                   (o .:? "confidence") <*>
                     (o .:? "attributes" .!= mempty)
                     <*> (o .:? "segment")
                     <*> (o .:? "timestampedObjects" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1beta2_Track
         where
        toJSON GoogleCloudVideointelligenceV1beta2_Track'{..}
          = object
              (catMaybes
                 [("confidence" .=) <$> _gcvvt2Confidence,
                  ("attributes" .=) <$> _gcvvt2Attributes,
                  ("segment" .=) <$> _gcvvt2Segment,
                  ("timestampedObjects" .=) <$>
                    _gcvvt2TimestampedObjects])

-- | Video frame level annotations for object detection and tracking. This
-- field stores per frame location, time offset, and confidence.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_ObjectTrackingFrame' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingFrame =
  GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingFrame'
    { _gcvvotf2TimeOffSet :: !(Maybe GDuration)
    , _gcvvotf2NormalizedBoundingBox :: !(Maybe GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingFrame' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvotf2TimeOffSet'
--
-- * 'gcvvotf2NormalizedBoundingBox'
googleCloudVideointelligenceV1p3beta1_ObjectTrackingFrame
    :: GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingFrame
googleCloudVideointelligenceV1p3beta1_ObjectTrackingFrame =
  GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingFrame'
    {_gcvvotf2TimeOffSet = Nothing, _gcvvotf2NormalizedBoundingBox = Nothing}


-- | The timestamp of the frame in microseconds.
gcvvotf2TimeOffSet :: Lens' GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingFrame (Maybe Scientific)
gcvvotf2TimeOffSet
  = lens _gcvvotf2TimeOffSet
      (\ s a -> s{_gcvvotf2TimeOffSet = a})
      . mapping _GDuration

-- | The normalized bounding box location of this object track for the frame.
gcvvotf2NormalizedBoundingBox :: Lens' GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingFrame (Maybe GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox)
gcvvotf2NormalizedBoundingBox
  = lens _gcvvotf2NormalizedBoundingBox
      (\ s a -> s{_gcvvotf2NormalizedBoundingBox = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingFrame
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingFrame'
                   <$>
                   (o .:? "timeOffset") <*>
                     (o .:? "normalizedBoundingBox"))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingFrame
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingFrame'{..}
          = object
              (catMaybes
                 [("timeOffset" .=) <$> _gcvvotf2TimeOffSet,
                  ("normalizedBoundingBox" .=) <$>
                    _gcvvotf2NormalizedBoundingBox])

-- | Annotations corresponding to one tracked object.
--
-- /See:/ 'googleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation =
  GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation'
    { _gcvvota2Frames :: !(Maybe [GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame])
    , _gcvvota2Confidence :: !(Maybe (Textual Double))
    , _gcvvota2Version :: !(Maybe Text)
    , _gcvvota2TrackId :: !(Maybe (Textual Int64))
    , _gcvvota2Segment :: !(Maybe GoogleCloudVideointelligenceV1p1beta1_VideoSegment)
    , _gcvvota2Entity :: !(Maybe GoogleCloudVideointelligenceV1p1beta1_Entity)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvota2Frames'
--
-- * 'gcvvota2Confidence'
--
-- * 'gcvvota2Version'
--
-- * 'gcvvota2TrackId'
--
-- * 'gcvvota2Segment'
--
-- * 'gcvvota2Entity'
googleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation
    :: GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation
googleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation =
  GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation'
    { _gcvvota2Frames = Nothing
    , _gcvvota2Confidence = Nothing
    , _gcvvota2Version = Nothing
    , _gcvvota2TrackId = Nothing
    , _gcvvota2Segment = Nothing
    , _gcvvota2Entity = Nothing
    }


-- | Information corresponding to all frames where this object track appears.
-- Non-streaming batch mode: it may be one or multiple ObjectTrackingFrame
-- messages in frames. Streaming mode: it can only be one
-- ObjectTrackingFrame message in frames.
gcvvota2Frames :: Lens' GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation [GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame]
gcvvota2Frames
  = lens _gcvvota2Frames
      (\ s a -> s{_gcvvota2Frames = a})
      . _Default
      . _Coerce

-- | Object category\'s labeling confidence of this track.
gcvvota2Confidence :: Lens' GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation (Maybe Double)
gcvvota2Confidence
  = lens _gcvvota2Confidence
      (\ s a -> s{_gcvvota2Confidence = a})
      . mapping _Coerce

-- | Feature version.
gcvvota2Version :: Lens' GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation (Maybe Text)
gcvvota2Version
  = lens _gcvvota2Version
      (\ s a -> s{_gcvvota2Version = a})

-- | Streaming mode ONLY. In streaming mode, we do not know the end time of a
-- tracked object before it is completed. Hence, there is no VideoSegment
-- info returned. Instead, we provide a unique identifiable integer
-- track_id so that the customers can correlate the results of the ongoing
-- ObjectTrackAnnotation of the same track_id over time.
gcvvota2TrackId :: Lens' GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation (Maybe Int64)
gcvvota2TrackId
  = lens _gcvvota2TrackId
      (\ s a -> s{_gcvvota2TrackId = a})
      . mapping _Coerce

-- | Non-streaming batch mode ONLY. Each object track corresponds to one
-- video segment where it appears.
gcvvota2Segment :: Lens' GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation (Maybe GoogleCloudVideointelligenceV1p1beta1_VideoSegment)
gcvvota2Segment
  = lens _gcvvota2Segment
      (\ s a -> s{_gcvvota2Segment = a})

-- | Entity to specify the object category that this track is labeled as.
gcvvota2Entity :: Lens' GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation (Maybe GoogleCloudVideointelligenceV1p1beta1_Entity)
gcvvota2Entity
  = lens _gcvvota2Entity
      (\ s a -> s{_gcvvota2Entity = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation'
                   <$>
                   (o .:? "frames" .!= mempty) <*> (o .:? "confidence")
                     <*> (o .:? "version")
                     <*> (o .:? "trackId")
                     <*> (o .:? "segment")
                     <*> (o .:? "entity"))

instance ToJSON
           GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation'{..}
          = object
              (catMaybes
                 [("frames" .=) <$> _gcvvota2Frames,
                  ("confidence" .=) <$> _gcvvota2Confidence,
                  ("version" .=) <$> _gcvvota2Version,
                  ("trackId" .=) <$> _gcvvota2TrackId,
                  ("segment" .=) <$> _gcvvota2Segment,
                  ("entity" .=) <$> _gcvvota2Entity])

-- | Normalized bounding box. The normalized vertex coordinates are relative
-- to the original image. Range: [0, 1].
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox =
  GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox'
    { _ggBottom :: !(Maybe (Textual Double))
    , _ggLeft :: !(Maybe (Textual Double))
    , _ggRight :: !(Maybe (Textual Double))
    , _ggTop :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggBottom'
--
-- * 'ggLeft'
--
-- * 'ggRight'
--
-- * 'ggTop'
googleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox
    :: GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox
googleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox =
  GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox'
    { _ggBottom = Nothing
    , _ggLeft = Nothing
    , _ggRight = Nothing
    , _ggTop = Nothing
    }


-- | Bottom Y coordinate.
ggBottom :: Lens' GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox (Maybe Double)
ggBottom
  = lens _ggBottom (\ s a -> s{_ggBottom = a}) .
      mapping _Coerce

-- | Left X coordinate.
ggLeft :: Lens' GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox (Maybe Double)
ggLeft
  = lens _ggLeft (\ s a -> s{_ggLeft = a}) .
      mapping _Coerce

-- | Right X coordinate.
ggRight :: Lens' GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox (Maybe Double)
ggRight
  = lens _ggRight (\ s a -> s{_ggRight = a}) .
      mapping _Coerce

-- | Top Y coordinate.
ggTop :: Lens' GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox (Maybe Double)
ggTop
  = lens _ggTop (\ s a -> s{_ggTop = a}) .
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
                 [("bottom" .=) <$> _ggBottom,
                  ("left" .=) <$> _ggLeft, ("right" .=) <$> _ggRight,
                  ("top" .=) <$> _ggTop])

-- | Video segment level annotation results for text detection.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_TextSegment' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_TextSegment =
  GoogleCloudVideointelligenceV1p2beta1_TextSegment'
    { _goo2Frames :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_TextFrame])
    , _goo2Confidence :: !(Maybe (Textual Double))
    , _goo2Segment :: !(Maybe GoogleCloudVideointelligenceV1p2beta1_VideoSegment)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_TextSegment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'goo2Frames'
--
-- * 'goo2Confidence'
--
-- * 'goo2Segment'
googleCloudVideointelligenceV1p2beta1_TextSegment
    :: GoogleCloudVideointelligenceV1p2beta1_TextSegment
googleCloudVideointelligenceV1p2beta1_TextSegment =
  GoogleCloudVideointelligenceV1p2beta1_TextSegment'
    {_goo2Frames = Nothing, _goo2Confidence = Nothing, _goo2Segment = Nothing}


-- | Information related to the frames where OCR detected text appears.
goo2Frames :: Lens' GoogleCloudVideointelligenceV1p2beta1_TextSegment [GoogleCloudVideointelligenceV1p2beta1_TextFrame]
goo2Frames
  = lens _goo2Frames (\ s a -> s{_goo2Frames = a}) .
      _Default
      . _Coerce

-- | Confidence for the track of detected text. It is calculated as the
-- highest over all frames where OCR detected text appears.
goo2Confidence :: Lens' GoogleCloudVideointelligenceV1p2beta1_TextSegment (Maybe Double)
goo2Confidence
  = lens _goo2Confidence
      (\ s a -> s{_goo2Confidence = a})
      . mapping _Coerce

-- | Video segment where a text snippet was detected.
goo2Segment :: Lens' GoogleCloudVideointelligenceV1p2beta1_TextSegment (Maybe GoogleCloudVideointelligenceV1p2beta1_VideoSegment)
goo2Segment
  = lens _goo2Segment (\ s a -> s{_goo2Segment = a})

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
                 [("frames" .=) <$> _goo2Frames,
                  ("confidence" .=) <$> _goo2Confidence,
                  ("segment" .=) <$> _goo2Segment])

-- | A speech recognition result corresponding to a portion of the audio.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_SpeechTranscription' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription =
  GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription'
    { _goo1Alternatives :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative])
    , _goo1LanguageCode :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'goo1Alternatives'
--
-- * 'goo1LanguageCode'
googleCloudVideointelligenceV1p2beta1_SpeechTranscription
    :: GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription
googleCloudVideointelligenceV1p2beta1_SpeechTranscription =
  GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription'
    {_goo1Alternatives = Nothing, _goo1LanguageCode = Nothing}


-- | May contain one or more recognition hypotheses (up to the maximum
-- specified in \`max_alternatives\`). These alternatives are ordered in
-- terms of accuracy, with the top (first) alternative being the most
-- probable, as ranked by the recognizer.
goo1Alternatives :: Lens' GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription [GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative]
goo1Alternatives
  = lens _goo1Alternatives
      (\ s a -> s{_goo1Alternatives = a})
      . _Default
      . _Coerce

-- | Output only. The
-- [BCP-47](https:\/\/www.rfc-editor.org\/rfc\/bcp\/bcp47.txt) language tag
-- of the language in this result. This language code was detected to have
-- the most likelihood of being spoken in the audio.
goo1LanguageCode :: Lens' GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription (Maybe Text)
goo1LanguageCode
  = lens _goo1LanguageCode
      (\ s a -> s{_goo1LanguageCode = a})

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
                 [("alternatives" .=) <$> _goo1Alternatives,
                  ("languageCode" .=) <$> _goo1LanguageCode])

-- | The \`Status\` type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by [gRPC](https:\/\/github.com\/grpc). Each \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. You can find out more about this error model and how to work
-- with it in the [API Design
-- Guide](https:\/\/cloud.google.com\/apis\/design\/errors).
--
-- /See:/ 'googleRpc_Status' smart constructor.
data GoogleRpc_Status =
  GoogleRpc_Status'
    { _grsDetails :: !(Maybe [GoogleRpc_StatusDetailsItem])
    , _grsCode :: !(Maybe (Textual Int32))
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

-- | Video frame level annotations for object detection and tracking. This
-- field stores per frame location, time offset, and confidence.
--
-- /See:/ 'googleCloudVideointelligenceV1_ObjectTrackingFrame' smart constructor.
data GoogleCloudVideointelligenceV1_ObjectTrackingFrame =
  GoogleCloudVideointelligenceV1_ObjectTrackingFrame'
    { _g2TimeOffSet :: !(Maybe GDuration)
    , _g2NormalizedBoundingBox :: !(Maybe GoogleCloudVideointelligenceV1_NormalizedBoundingBox)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1_ObjectTrackingFrame' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'g2TimeOffSet'
--
-- * 'g2NormalizedBoundingBox'
googleCloudVideointelligenceV1_ObjectTrackingFrame
    :: GoogleCloudVideointelligenceV1_ObjectTrackingFrame
googleCloudVideointelligenceV1_ObjectTrackingFrame =
  GoogleCloudVideointelligenceV1_ObjectTrackingFrame'
    {_g2TimeOffSet = Nothing, _g2NormalizedBoundingBox = Nothing}


-- | The timestamp of the frame in microseconds.
g2TimeOffSet :: Lens' GoogleCloudVideointelligenceV1_ObjectTrackingFrame (Maybe Scientific)
g2TimeOffSet
  = lens _g2TimeOffSet (\ s a -> s{_g2TimeOffSet = a})
      . mapping _GDuration

-- | The normalized bounding box location of this object track for the frame.
g2NormalizedBoundingBox :: Lens' GoogleCloudVideointelligenceV1_ObjectTrackingFrame (Maybe GoogleCloudVideointelligenceV1_NormalizedBoundingBox)
g2NormalizedBoundingBox
  = lens _g2NormalizedBoundingBox
      (\ s a -> s{_g2NormalizedBoundingBox = a})

instance FromJSON
           GoogleCloudVideointelligenceV1_ObjectTrackingFrame
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1ObjectTrackingFrame"
              (\ o ->
                 GoogleCloudVideointelligenceV1_ObjectTrackingFrame'
                   <$>
                   (o .:? "timeOffset") <*>
                     (o .:? "normalizedBoundingBox"))

instance ToJSON
           GoogleCloudVideointelligenceV1_ObjectTrackingFrame
         where
        toJSON
          GoogleCloudVideointelligenceV1_ObjectTrackingFrame'{..}
          = object
              (catMaybes
                 [("timeOffset" .=) <$> _g2TimeOffSet,
                  ("normalizedBoundingBox" .=) <$>
                    _g2NormalizedBoundingBox])

-- | Deprecated. No effect.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_FaceAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_FaceAnnotation =
  GoogleCloudVideointelligenceV1p2beta1_FaceAnnotation'
    { _gcvvfa2Thumbnail :: !(Maybe Bytes)
    , _gcvvfa2Frames :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_FaceFrame])
    , _gcvvfa2Segments :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_FaceSegment])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_FaceAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvfa2Thumbnail'
--
-- * 'gcvvfa2Frames'
--
-- * 'gcvvfa2Segments'
googleCloudVideointelligenceV1p2beta1_FaceAnnotation
    :: GoogleCloudVideointelligenceV1p2beta1_FaceAnnotation
googleCloudVideointelligenceV1p2beta1_FaceAnnotation =
  GoogleCloudVideointelligenceV1p2beta1_FaceAnnotation'
    { _gcvvfa2Thumbnail = Nothing
    , _gcvvfa2Frames = Nothing
    , _gcvvfa2Segments = Nothing
    }


-- | Thumbnail of a representative face view (in JPEG format).
gcvvfa2Thumbnail :: Lens' GoogleCloudVideointelligenceV1p2beta1_FaceAnnotation (Maybe ByteString)
gcvvfa2Thumbnail
  = lens _gcvvfa2Thumbnail
      (\ s a -> s{_gcvvfa2Thumbnail = a})
      . mapping _Bytes

-- | All video frames where a face was detected.
gcvvfa2Frames :: Lens' GoogleCloudVideointelligenceV1p2beta1_FaceAnnotation [GoogleCloudVideointelligenceV1p2beta1_FaceFrame]
gcvvfa2Frames
  = lens _gcvvfa2Frames
      (\ s a -> s{_gcvvfa2Frames = a})
      . _Default
      . _Coerce

-- | All video segments where a face was detected.
gcvvfa2Segments :: Lens' GoogleCloudVideointelligenceV1p2beta1_FaceAnnotation [GoogleCloudVideointelligenceV1p2beta1_FaceSegment]
gcvvfa2Segments
  = lens _gcvvfa2Segments
      (\ s a -> s{_gcvvfa2Segments = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1p2beta1_FaceAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p2beta1FaceAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1p2beta1_FaceAnnotation'
                   <$>
                   (o .:? "thumbnail") <*> (o .:? "frames" .!= mempty)
                     <*> (o .:? "segments" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1p2beta1_FaceAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1p2beta1_FaceAnnotation'{..}
          = object
              (catMaybes
                 [("thumbnail" .=) <$> _gcvvfa2Thumbnail,
                  ("frames" .=) <$> _gcvvfa2Frames,
                  ("segments" .=) <$> _gcvvfa2Segments])

-- | Video segment level annotation results for face detection.
--
-- /See:/ 'googleCloudVideointelligenceV1beta2_FaceSegment' smart constructor.
newtype GoogleCloudVideointelligenceV1beta2_FaceSegment =
  GoogleCloudVideointelligenceV1beta2_FaceSegment'
    { _gcvvfs1Segment :: Maybe GoogleCloudVideointelligenceV1beta2_VideoSegment
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_FaceSegment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvfs1Segment'
googleCloudVideointelligenceV1beta2_FaceSegment
    :: GoogleCloudVideointelligenceV1beta2_FaceSegment
googleCloudVideointelligenceV1beta2_FaceSegment =
  GoogleCloudVideointelligenceV1beta2_FaceSegment' {_gcvvfs1Segment = Nothing}


-- | Video segment where a face was detected.
gcvvfs1Segment :: Lens' GoogleCloudVideointelligenceV1beta2_FaceSegment (Maybe GoogleCloudVideointelligenceV1beta2_VideoSegment)
gcvvfs1Segment
  = lens _gcvvfs1Segment
      (\ s a -> s{_gcvvfs1Segment = a})

instance FromJSON
           GoogleCloudVideointelligenceV1beta2_FaceSegment
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1beta2FaceSegment"
              (\ o ->
                 GoogleCloudVideointelligenceV1beta2_FaceSegment' <$>
                   (o .:? "segment"))

instance ToJSON
           GoogleCloudVideointelligenceV1beta2_FaceSegment
         where
        toJSON
          GoogleCloudVideointelligenceV1beta2_FaceSegment'{..}
          = object
              (catMaybes [("segment" .=) <$> _gcvvfs1Segment])

-- | Video segment.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_VideoSegment' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_VideoSegment =
  GoogleCloudVideointelligenceV1p3beta1_VideoSegment'
    { _gcvvvscStartTimeOffSet :: !(Maybe GDuration)
    , _gcvvvscEndTimeOffSet :: !(Maybe GDuration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_VideoSegment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvvscStartTimeOffSet'
--
-- * 'gcvvvscEndTimeOffSet'
googleCloudVideointelligenceV1p3beta1_VideoSegment
    :: GoogleCloudVideointelligenceV1p3beta1_VideoSegment
googleCloudVideointelligenceV1p3beta1_VideoSegment =
  GoogleCloudVideointelligenceV1p3beta1_VideoSegment'
    {_gcvvvscStartTimeOffSet = Nothing, _gcvvvscEndTimeOffSet = Nothing}


-- | Time-offset, relative to the beginning of the video, corresponding to
-- the start of the segment (inclusive).
gcvvvscStartTimeOffSet :: Lens' GoogleCloudVideointelligenceV1p3beta1_VideoSegment (Maybe Scientific)
gcvvvscStartTimeOffSet
  = lens _gcvvvscStartTimeOffSet
      (\ s a -> s{_gcvvvscStartTimeOffSet = a})
      . mapping _GDuration

-- | Time-offset, relative to the beginning of the video, corresponding to
-- the end of the segment (inclusive).
gcvvvscEndTimeOffSet :: Lens' GoogleCloudVideointelligenceV1p3beta1_VideoSegment (Maybe Scientific)
gcvvvscEndTimeOffSet
  = lens _gcvvvscEndTimeOffSet
      (\ s a -> s{_gcvvvscEndTimeOffSet = a})
      . mapping _GDuration

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_VideoSegment
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1VideoSegment"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_VideoSegment'
                   <$>
                   (o .:? "startTimeOffset") <*>
                     (o .:? "endTimeOffset"))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_VideoSegment
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_VideoSegment'{..}
          = object
              (catMaybes
                 [("startTimeOffset" .=) <$> _gcvvvscStartTimeOffSet,
                  ("endTimeOffset" .=) <$> _gcvvvscEndTimeOffSet])

-- | For tracking related features. An object at time_offset with attributes,
-- and located with normalized_bounding_box.
--
-- /See:/ 'googleCloudVideointelligenceV1_TimestampedObject' smart constructor.
data GoogleCloudVideointelligenceV1_TimestampedObject =
  GoogleCloudVideointelligenceV1_TimestampedObject'
    { _gcvvto2TimeOffSet :: !(Maybe GDuration)
    , _gcvvto2Attributes :: !(Maybe [GoogleCloudVideointelligenceV1_DetectedAttribute])
    , _gcvvto2NormalizedBoundingBox :: !(Maybe GoogleCloudVideointelligenceV1_NormalizedBoundingBox)
    , _gcvvto2Landmarks :: !(Maybe [GoogleCloudVideointelligenceV1_DetectedLandmark])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1_TimestampedObject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvto2TimeOffSet'
--
-- * 'gcvvto2Attributes'
--
-- * 'gcvvto2NormalizedBoundingBox'
--
-- * 'gcvvto2Landmarks'
googleCloudVideointelligenceV1_TimestampedObject
    :: GoogleCloudVideointelligenceV1_TimestampedObject
googleCloudVideointelligenceV1_TimestampedObject =
  GoogleCloudVideointelligenceV1_TimestampedObject'
    { _gcvvto2TimeOffSet = Nothing
    , _gcvvto2Attributes = Nothing
    , _gcvvto2NormalizedBoundingBox = Nothing
    , _gcvvto2Landmarks = Nothing
    }


-- | Time-offset, relative to the beginning of the video, corresponding to
-- the video frame for this object.
gcvvto2TimeOffSet :: Lens' GoogleCloudVideointelligenceV1_TimestampedObject (Maybe Scientific)
gcvvto2TimeOffSet
  = lens _gcvvto2TimeOffSet
      (\ s a -> s{_gcvvto2TimeOffSet = a})
      . mapping _GDuration

-- | Optional. The attributes of the object in the bounding box.
gcvvto2Attributes :: Lens' GoogleCloudVideointelligenceV1_TimestampedObject [GoogleCloudVideointelligenceV1_DetectedAttribute]
gcvvto2Attributes
  = lens _gcvvto2Attributes
      (\ s a -> s{_gcvvto2Attributes = a})
      . _Default
      . _Coerce

-- | Normalized Bounding box in a frame, where the object is located.
gcvvto2NormalizedBoundingBox :: Lens' GoogleCloudVideointelligenceV1_TimestampedObject (Maybe GoogleCloudVideointelligenceV1_NormalizedBoundingBox)
gcvvto2NormalizedBoundingBox
  = lens _gcvvto2NormalizedBoundingBox
      (\ s a -> s{_gcvvto2NormalizedBoundingBox = a})

-- | Optional. The detected landmarks.
gcvvto2Landmarks :: Lens' GoogleCloudVideointelligenceV1_TimestampedObject [GoogleCloudVideointelligenceV1_DetectedLandmark]
gcvvto2Landmarks
  = lens _gcvvto2Landmarks
      (\ s a -> s{_gcvvto2Landmarks = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1_TimestampedObject
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1TimestampedObject"
              (\ o ->
                 GoogleCloudVideointelligenceV1_TimestampedObject' <$>
                   (o .:? "timeOffset") <*>
                     (o .:? "attributes" .!= mempty)
                     <*> (o .:? "normalizedBoundingBox")
                     <*> (o .:? "landmarks" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1_TimestampedObject
         where
        toJSON
          GoogleCloudVideointelligenceV1_TimestampedObject'{..}
          = object
              (catMaybes
                 [("timeOffset" .=) <$> _gcvvto2TimeOffSet,
                  ("attributes" .=) <$> _gcvvto2Attributes,
                  ("normalizedBoundingBox" .=) <$>
                    _gcvvto2NormalizedBoundingBox,
                  ("landmarks" .=) <$> _gcvvto2Landmarks])

-- | A generic detected attribute represented by name in string format.
--
-- /See:/ 'googleCloudVideointelligenceV1_DetectedAttribute' smart constructor.
data GoogleCloudVideointelligenceV1_DetectedAttribute =
  GoogleCloudVideointelligenceV1_DetectedAttribute'
    { _gcvvda2Value :: !(Maybe Text)
    , _gcvvda2Confidence :: !(Maybe (Textual Double))
    , _gcvvda2Name :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1_DetectedAttribute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvda2Value'
--
-- * 'gcvvda2Confidence'
--
-- * 'gcvvda2Name'
googleCloudVideointelligenceV1_DetectedAttribute
    :: GoogleCloudVideointelligenceV1_DetectedAttribute
googleCloudVideointelligenceV1_DetectedAttribute =
  GoogleCloudVideointelligenceV1_DetectedAttribute'
    { _gcvvda2Value = Nothing
    , _gcvvda2Confidence = Nothing
    , _gcvvda2Name = Nothing
    }


-- | Text value of the detection result. For example, the value for
-- \"HairColor\" can be \"black\", \"blonde\", etc.
gcvvda2Value :: Lens' GoogleCloudVideointelligenceV1_DetectedAttribute (Maybe Text)
gcvvda2Value
  = lens _gcvvda2Value (\ s a -> s{_gcvvda2Value = a})

-- | Detected attribute confidence. Range [0, 1].
gcvvda2Confidence :: Lens' GoogleCloudVideointelligenceV1_DetectedAttribute (Maybe Double)
gcvvda2Confidence
  = lens _gcvvda2Confidence
      (\ s a -> s{_gcvvda2Confidence = a})
      . mapping _Coerce

-- | The name of the attribute, for example, glasses, dark_glasses,
-- mouth_open. A full list of supported type names will be provided in the
-- document.
gcvvda2Name :: Lens' GoogleCloudVideointelligenceV1_DetectedAttribute (Maybe Text)
gcvvda2Name
  = lens _gcvvda2Name (\ s a -> s{_gcvvda2Name = a})

instance FromJSON
           GoogleCloudVideointelligenceV1_DetectedAttribute
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1DetectedAttribute"
              (\ o ->
                 GoogleCloudVideointelligenceV1_DetectedAttribute' <$>
                   (o .:? "value") <*> (o .:? "confidence") <*>
                     (o .:? "name"))

instance ToJSON
           GoogleCloudVideointelligenceV1_DetectedAttribute
         where
        toJSON
          GoogleCloudVideointelligenceV1_DetectedAttribute'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _gcvvda2Value,
                  ("confidence" .=) <$> _gcvvda2Confidence,
                  ("name" .=) <$> _gcvvda2Name])

-- | Annotation corresponding to one detected, tracked and recognized logo
-- class.
--
-- /See:/ 'googleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation =
  GoogleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation'
    { _gcvvlra2Tracks :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_Track])
    , _gcvvlra2Segments :: !(Maybe [GoogleCloudVideointelligenceV1p2beta1_VideoSegment])
    , _gcvvlra2Entity :: !(Maybe GoogleCloudVideointelligenceV1p2beta1_Entity)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvlra2Tracks'
--
-- * 'gcvvlra2Segments'
--
-- * 'gcvvlra2Entity'
googleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation
    :: GoogleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation
googleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation =
  GoogleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation'
    { _gcvvlra2Tracks = Nothing
    , _gcvvlra2Segments = Nothing
    , _gcvvlra2Entity = Nothing
    }


-- | All logo tracks where the recognized logo appears. Each track
-- corresponds to one logo instance appearing in consecutive frames.
gcvvlra2Tracks :: Lens' GoogleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation [GoogleCloudVideointelligenceV1p2beta1_Track]
gcvvlra2Tracks
  = lens _gcvvlra2Tracks
      (\ s a -> s{_gcvvlra2Tracks = a})
      . _Default
      . _Coerce

-- | All video segments where the recognized logo appears. There might be
-- multiple instances of the same logo class appearing in one VideoSegment.
gcvvlra2Segments :: Lens' GoogleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation [GoogleCloudVideointelligenceV1p2beta1_VideoSegment]
gcvvlra2Segments
  = lens _gcvvlra2Segments
      (\ s a -> s{_gcvvlra2Segments = a})
      . _Default
      . _Coerce

-- | Entity category information to specify the logo class that all the logo
-- tracks within this LogoRecognitionAnnotation are recognized as.
gcvvlra2Entity :: Lens' GoogleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation (Maybe GoogleCloudVideointelligenceV1p2beta1_Entity)
gcvvlra2Entity
  = lens _gcvvlra2Entity
      (\ s a -> s{_gcvvlra2Entity = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p2beta1LogoRecognitionAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation'
                   <$>
                   (o .:? "tracks" .!= mempty) <*>
                     (o .:? "segments" .!= mempty)
                     <*> (o .:? "entity"))

instance ToJSON
           GoogleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation'{..}
          = object
              (catMaybes
                 [("tracks" .=) <$> _gcvvlra2Tracks,
                  ("segments" .=) <$> _gcvvlra2Segments,
                  ("entity" .=) <$> _gcvvlra2Entity])

-- | Annotations related to one detected OCR text snippet. This will contain
-- the corresponding text, confidence value, and frame level information
-- for each detection.
--
-- /See:/ 'googleCloudVideointelligenceV1_TextAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1_TextAnnotation =
  GoogleCloudVideointelligenceV1_TextAnnotation'
    { _gcvvta1Text :: !(Maybe Text)
    , _gcvvta1Version :: !(Maybe Text)
    , _gcvvta1Segments :: !(Maybe [GoogleCloudVideointelligenceV1_TextSegment])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1_TextAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvta1Text'
--
-- * 'gcvvta1Version'
--
-- * 'gcvvta1Segments'
googleCloudVideointelligenceV1_TextAnnotation
    :: GoogleCloudVideointelligenceV1_TextAnnotation
googleCloudVideointelligenceV1_TextAnnotation =
  GoogleCloudVideointelligenceV1_TextAnnotation'
    { _gcvvta1Text = Nothing
    , _gcvvta1Version = Nothing
    , _gcvvta1Segments = Nothing
    }


-- | The detected text.
gcvvta1Text :: Lens' GoogleCloudVideointelligenceV1_TextAnnotation (Maybe Text)
gcvvta1Text
  = lens _gcvvta1Text (\ s a -> s{_gcvvta1Text = a})

-- | Feature version.
gcvvta1Version :: Lens' GoogleCloudVideointelligenceV1_TextAnnotation (Maybe Text)
gcvvta1Version
  = lens _gcvvta1Version
      (\ s a -> s{_gcvvta1Version = a})

-- | All video segments where OCR detected text appears.
gcvvta1Segments :: Lens' GoogleCloudVideointelligenceV1_TextAnnotation [GoogleCloudVideointelligenceV1_TextSegment]
gcvvta1Segments
  = lens _gcvvta1Segments
      (\ s a -> s{_gcvvta1Segments = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1_TextAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1TextAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1_TextAnnotation' <$>
                   (o .:? "text") <*> (o .:? "version") <*>
                     (o .:? "segments" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1_TextAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1_TextAnnotation'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _gcvvta1Text,
                  ("version" .=) <$> _gcvvta1Version,
                  ("segments" .=) <$> _gcvvta1Segments])

-- | Video segment.
--
-- /See:/ 'googleCloudVideointelligenceV1_VideoSegment' smart constructor.
data GoogleCloudVideointelligenceV1_VideoSegment =
  GoogleCloudVideointelligenceV1_VideoSegment'
    { _ggStartTimeOffSet :: !(Maybe GDuration)
    , _ggEndTimeOffSet :: !(Maybe GDuration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1_VideoSegment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggStartTimeOffSet'
--
-- * 'ggEndTimeOffSet'
googleCloudVideointelligenceV1_VideoSegment
    :: GoogleCloudVideointelligenceV1_VideoSegment
googleCloudVideointelligenceV1_VideoSegment =
  GoogleCloudVideointelligenceV1_VideoSegment'
    {_ggStartTimeOffSet = Nothing, _ggEndTimeOffSet = Nothing}


-- | Time-offset, relative to the beginning of the video, corresponding to
-- the start of the segment (inclusive).
ggStartTimeOffSet :: Lens' GoogleCloudVideointelligenceV1_VideoSegment (Maybe Scientific)
ggStartTimeOffSet
  = lens _ggStartTimeOffSet
      (\ s a -> s{_ggStartTimeOffSet = a})
      . mapping _GDuration

-- | Time-offset, relative to the beginning of the video, corresponding to
-- the end of the segment (inclusive).
ggEndTimeOffSet :: Lens' GoogleCloudVideointelligenceV1_VideoSegment (Maybe Scientific)
ggEndTimeOffSet
  = lens _ggEndTimeOffSet
      (\ s a -> s{_ggEndTimeOffSet = a})
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
                 [("startTimeOffset" .=) <$> _ggStartTimeOffSet,
                  ("endTimeOffset" .=) <$> _ggEndTimeOffSet])

-- | For tracking related features. An object at time_offset with attributes,
-- and located with normalized_bounding_box.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_TimestampedObject' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_TimestampedObject =
  GoogleCloudVideointelligenceV1p3beta1_TimestampedObject'
    { _goo2TimeOffSet :: !(Maybe GDuration)
    , _goo2Attributes :: !(Maybe [GoogleCloudVideointelligenceV1p3beta1_DetectedAttribute])
    , _goo2NormalizedBoundingBox :: !(Maybe GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox)
    , _goo2Landmarks :: !(Maybe [GoogleCloudVideointelligenceV1p3beta1_DetectedLandmark])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_TimestampedObject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'goo2TimeOffSet'
--
-- * 'goo2Attributes'
--
-- * 'goo2NormalizedBoundingBox'
--
-- * 'goo2Landmarks'
googleCloudVideointelligenceV1p3beta1_TimestampedObject
    :: GoogleCloudVideointelligenceV1p3beta1_TimestampedObject
googleCloudVideointelligenceV1p3beta1_TimestampedObject =
  GoogleCloudVideointelligenceV1p3beta1_TimestampedObject'
    { _goo2TimeOffSet = Nothing
    , _goo2Attributes = Nothing
    , _goo2NormalizedBoundingBox = Nothing
    , _goo2Landmarks = Nothing
    }


-- | Time-offset, relative to the beginning of the video, corresponding to
-- the video frame for this object.
goo2TimeOffSet :: Lens' GoogleCloudVideointelligenceV1p3beta1_TimestampedObject (Maybe Scientific)
goo2TimeOffSet
  = lens _goo2TimeOffSet
      (\ s a -> s{_goo2TimeOffSet = a})
      . mapping _GDuration

-- | Optional. The attributes of the object in the bounding box.
goo2Attributes :: Lens' GoogleCloudVideointelligenceV1p3beta1_TimestampedObject [GoogleCloudVideointelligenceV1p3beta1_DetectedAttribute]
goo2Attributes
  = lens _goo2Attributes
      (\ s a -> s{_goo2Attributes = a})
      . _Default
      . _Coerce

-- | Normalized Bounding box in a frame, where the object is located.
goo2NormalizedBoundingBox :: Lens' GoogleCloudVideointelligenceV1p3beta1_TimestampedObject (Maybe GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox)
goo2NormalizedBoundingBox
  = lens _goo2NormalizedBoundingBox
      (\ s a -> s{_goo2NormalizedBoundingBox = a})

-- | Optional. The detected landmarks.
goo2Landmarks :: Lens' GoogleCloudVideointelligenceV1p3beta1_TimestampedObject [GoogleCloudVideointelligenceV1p3beta1_DetectedLandmark]
goo2Landmarks
  = lens _goo2Landmarks
      (\ s a -> s{_goo2Landmarks = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_TimestampedObject
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1TimestampedObject"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_TimestampedObject'
                   <$>
                   (o .:? "timeOffset") <*>
                     (o .:? "attributes" .!= mempty)
                     <*> (o .:? "normalizedBoundingBox")
                     <*> (o .:? "landmarks" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_TimestampedObject
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_TimestampedObject'{..}
          = object
              (catMaybes
                 [("timeOffset" .=) <$> _goo2TimeOffSet,
                  ("attributes" .=) <$> _goo2Attributes,
                  ("normalizedBoundingBox" .=) <$>
                    _goo2NormalizedBoundingBox,
                  ("landmarks" .=) <$> _goo2Landmarks])

-- | Explicit content annotation (based on per-frame visual signals only). If
-- no explicit content has been detected in a frame, no annotations are
-- present for that frame.
--
-- /See:/ 'googleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation =
  GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation'
    { _gcvveca2Frames :: !(Maybe [GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame])
    , _gcvveca2Version :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvveca2Frames'
--
-- * 'gcvveca2Version'
googleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation
    :: GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation
googleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation =
  GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation'
    {_gcvveca2Frames = Nothing, _gcvveca2Version = Nothing}


-- | All video frames where explicit content was detected.
gcvveca2Frames :: Lens' GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation [GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame]
gcvveca2Frames
  = lens _gcvveca2Frames
      (\ s a -> s{_gcvveca2Frames = a})
      . _Default
      . _Coerce

-- | Feature version.
gcvveca2Version :: Lens' GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation (Maybe Text)
gcvveca2Version
  = lens _gcvveca2Version
      (\ s a -> s{_gcvveca2Version = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation'
                   <$>
                   (o .:? "frames" .!= mempty) <*> (o .:? "version"))

instance ToJSON
           GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation'{..}
          = object
              (catMaybes
                 [("frames" .=) <$> _gcvveca2Frames,
                  ("version" .=) <$> _gcvveca2Version])

-- | A generic detected attribute represented by name in string format.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_DetectedAttribute' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_DetectedAttribute =
  GoogleCloudVideointelligenceV1p3beta1_DetectedAttribute'
    { _gcvvda3Value :: !(Maybe Text)
    , _gcvvda3Confidence :: !(Maybe (Textual Double))
    , _gcvvda3Name :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_DetectedAttribute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvda3Value'
--
-- * 'gcvvda3Confidence'
--
-- * 'gcvvda3Name'
googleCloudVideointelligenceV1p3beta1_DetectedAttribute
    :: GoogleCloudVideointelligenceV1p3beta1_DetectedAttribute
googleCloudVideointelligenceV1p3beta1_DetectedAttribute =
  GoogleCloudVideointelligenceV1p3beta1_DetectedAttribute'
    { _gcvvda3Value = Nothing
    , _gcvvda3Confidence = Nothing
    , _gcvvda3Name = Nothing
    }


-- | Text value of the detection result. For example, the value for
-- \"HairColor\" can be \"black\", \"blonde\", etc.
gcvvda3Value :: Lens' GoogleCloudVideointelligenceV1p3beta1_DetectedAttribute (Maybe Text)
gcvvda3Value
  = lens _gcvvda3Value (\ s a -> s{_gcvvda3Value = a})

-- | Detected attribute confidence. Range [0, 1].
gcvvda3Confidence :: Lens' GoogleCloudVideointelligenceV1p3beta1_DetectedAttribute (Maybe Double)
gcvvda3Confidence
  = lens _gcvvda3Confidence
      (\ s a -> s{_gcvvda3Confidence = a})
      . mapping _Coerce

-- | The name of the attribute, for example, glasses, dark_glasses,
-- mouth_open. A full list of supported type names will be provided in the
-- document.
gcvvda3Name :: Lens' GoogleCloudVideointelligenceV1p3beta1_DetectedAttribute (Maybe Text)
gcvvda3Name
  = lens _gcvvda3Name (\ s a -> s{_gcvvda3Name = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_DetectedAttribute
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1DetectedAttribute"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_DetectedAttribute'
                   <$>
                   (o .:? "value") <*> (o .:? "confidence") <*>
                     (o .:? "name"))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_DetectedAttribute
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_DetectedAttribute'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _gcvvda3Value,
                  ("confidence" .=) <$> _gcvvda3Confidence,
                  ("name" .=) <$> _gcvvda3Name])

-- | Annotations related to one detected OCR text snippet. This will contain
-- the corresponding text, confidence value, and frame level information
-- for each detection.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_TextAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_TextAnnotation =
  GoogleCloudVideointelligenceV1p3beta1_TextAnnotation'
    { _gcvvta2Text :: !(Maybe Text)
    , _gcvvta2Version :: !(Maybe Text)
    , _gcvvta2Segments :: !(Maybe [GoogleCloudVideointelligenceV1p3beta1_TextSegment])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_TextAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvta2Text'
--
-- * 'gcvvta2Version'
--
-- * 'gcvvta2Segments'
googleCloudVideointelligenceV1p3beta1_TextAnnotation
    :: GoogleCloudVideointelligenceV1p3beta1_TextAnnotation
googleCloudVideointelligenceV1p3beta1_TextAnnotation =
  GoogleCloudVideointelligenceV1p3beta1_TextAnnotation'
    { _gcvvta2Text = Nothing
    , _gcvvta2Version = Nothing
    , _gcvvta2Segments = Nothing
    }


-- | The detected text.
gcvvta2Text :: Lens' GoogleCloudVideointelligenceV1p3beta1_TextAnnotation (Maybe Text)
gcvvta2Text
  = lens _gcvvta2Text (\ s a -> s{_gcvvta2Text = a})

-- | Feature version.
gcvvta2Version :: Lens' GoogleCloudVideointelligenceV1p3beta1_TextAnnotation (Maybe Text)
gcvvta2Version
  = lens _gcvvta2Version
      (\ s a -> s{_gcvvta2Version = a})

-- | All video segments where OCR detected text appears.
gcvvta2Segments :: Lens' GoogleCloudVideointelligenceV1p3beta1_TextAnnotation [GoogleCloudVideointelligenceV1p3beta1_TextSegment]
gcvvta2Segments
  = lens _gcvvta2Segments
      (\ s a -> s{_gcvvta2Segments = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_TextAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1TextAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_TextAnnotation'
                   <$>
                   (o .:? "text") <*> (o .:? "version") <*>
                     (o .:? "segments" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_TextAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_TextAnnotation'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _gcvvta2Text,
                  ("version" .=) <$> _gcvvta2Version,
                  ("segments" .=) <$> _gcvvta2Segments])

-- | Video annotation response. Included in the \`response\` field of the
-- \`Operation\` returned by the \`GetOperation\` call of the
-- \`google::longrunning::Operations\` service.
--
-- /See:/ 'googleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse' smart constructor.
newtype GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse =
  GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse'
    { _ggAnnotationResults :: Maybe [GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggAnnotationResults'
googleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse
    :: GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse
googleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse =
  GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse'
    {_ggAnnotationResults = Nothing}


-- | Annotation results for all videos specified in \`AnnotateVideoRequest\`.
ggAnnotationResults :: Lens' GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse [GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults]
ggAnnotationResults
  = lens _ggAnnotationResults
      (\ s a -> s{_ggAnnotationResults = a})
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
                 [("annotationResults" .=) <$> _ggAnnotationResults])

-- | Video frame level annotation results for explicit content.
--
-- /See:/ 'googleCloudVideointelligenceV1beta2_ExplicitContentFrame' smart constructor.
data GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame =
  GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame'
    { _gcvvecf2TimeOffSet :: !(Maybe GDuration)
    , _gcvvecf2PornographyLikelihood :: !(Maybe GoogleCloudVideointelligenceV1beta2_ExplicitContentFramePornographyLikelihood)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvecf2TimeOffSet'
--
-- * 'gcvvecf2PornographyLikelihood'
googleCloudVideointelligenceV1beta2_ExplicitContentFrame
    :: GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame
googleCloudVideointelligenceV1beta2_ExplicitContentFrame =
  GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame'
    {_gcvvecf2TimeOffSet = Nothing, _gcvvecf2PornographyLikelihood = Nothing}


-- | Time-offset, relative to the beginning of the video, corresponding to
-- the video frame for this location.
gcvvecf2TimeOffSet :: Lens' GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame (Maybe Scientific)
gcvvecf2TimeOffSet
  = lens _gcvvecf2TimeOffSet
      (\ s a -> s{_gcvvecf2TimeOffSet = a})
      . mapping _GDuration

-- | Likelihood of the pornography content..
gcvvecf2PornographyLikelihood :: Lens' GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame (Maybe GoogleCloudVideointelligenceV1beta2_ExplicitContentFramePornographyLikelihood)
gcvvecf2PornographyLikelihood
  = lens _gcvvecf2PornographyLikelihood
      (\ s a -> s{_gcvvecf2PornographyLikelihood = a})

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
                 [("timeOffset" .=) <$> _gcvvecf2TimeOffSet,
                  ("pornographyLikelihood" .=) <$>
                    _gcvvecf2PornographyLikelihood])

-- | Config for EXPLICIT_CONTENT_DETECTION.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_ExplicitContentDetectionConfig' smart constructor.
newtype GoogleCloudVideointelligenceV1p3beta1_ExplicitContentDetectionConfig =
  GoogleCloudVideointelligenceV1p3beta1_ExplicitContentDetectionConfig'
    { _gcvvecdcModel :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_ExplicitContentDetectionConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvecdcModel'
googleCloudVideointelligenceV1p3beta1_ExplicitContentDetectionConfig
    :: GoogleCloudVideointelligenceV1p3beta1_ExplicitContentDetectionConfig
googleCloudVideointelligenceV1p3beta1_ExplicitContentDetectionConfig =
  GoogleCloudVideointelligenceV1p3beta1_ExplicitContentDetectionConfig'
    {_gcvvecdcModel = Nothing}


-- | Model to use for explicit content detection. Supported values:
-- \"builtin\/stable\" (the default if unset) and \"builtin\/latest\".
gcvvecdcModel :: Lens' GoogleCloudVideointelligenceV1p3beta1_ExplicitContentDetectionConfig (Maybe Text)
gcvvecdcModel
  = lens _gcvvecdcModel
      (\ s a -> s{_gcvvecdcModel = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_ExplicitContentDetectionConfig
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1ExplicitContentDetectionConfig"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_ExplicitContentDetectionConfig'
                   <$> (o .:? "model"))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_ExplicitContentDetectionConfig
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_ExplicitContentDetectionConfig'{..}
          = object
              (catMaybes [("model" .=) <$> _gcvvecdcModel])

-- | A track of an object instance.
--
-- /See:/ 'googleCloudVideointelligenceV1p1beta1_Track' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_Track =
  GoogleCloudVideointelligenceV1p1beta1_Track'
    { _gcvvt3Confidence :: !(Maybe (Textual Double))
    , _gcvvt3Attributes :: !(Maybe [GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute])
    , _gcvvt3Segment :: !(Maybe GoogleCloudVideointelligenceV1p1beta1_VideoSegment)
    , _gcvvt3TimestampedObjects :: !(Maybe [GoogleCloudVideointelligenceV1p1beta1_TimestampedObject])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_Track' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvt3Confidence'
--
-- * 'gcvvt3Attributes'
--
-- * 'gcvvt3Segment'
--
-- * 'gcvvt3TimestampedObjects'
googleCloudVideointelligenceV1p1beta1_Track
    :: GoogleCloudVideointelligenceV1p1beta1_Track
googleCloudVideointelligenceV1p1beta1_Track =
  GoogleCloudVideointelligenceV1p1beta1_Track'
    { _gcvvt3Confidence = Nothing
    , _gcvvt3Attributes = Nothing
    , _gcvvt3Segment = Nothing
    , _gcvvt3TimestampedObjects = Nothing
    }


-- | Optional. The confidence score of the tracked object.
gcvvt3Confidence :: Lens' GoogleCloudVideointelligenceV1p1beta1_Track (Maybe Double)
gcvvt3Confidence
  = lens _gcvvt3Confidence
      (\ s a -> s{_gcvvt3Confidence = a})
      . mapping _Coerce

-- | Optional. Attributes in the track level.
gcvvt3Attributes :: Lens' GoogleCloudVideointelligenceV1p1beta1_Track [GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute]
gcvvt3Attributes
  = lens _gcvvt3Attributes
      (\ s a -> s{_gcvvt3Attributes = a})
      . _Default
      . _Coerce

-- | Video segment of a track.
gcvvt3Segment :: Lens' GoogleCloudVideointelligenceV1p1beta1_Track (Maybe GoogleCloudVideointelligenceV1p1beta1_VideoSegment)
gcvvt3Segment
  = lens _gcvvt3Segment
      (\ s a -> s{_gcvvt3Segment = a})

-- | The object with timestamp and attributes per frame in the track.
gcvvt3TimestampedObjects :: Lens' GoogleCloudVideointelligenceV1p1beta1_Track [GoogleCloudVideointelligenceV1p1beta1_TimestampedObject]
gcvvt3TimestampedObjects
  = lens _gcvvt3TimestampedObjects
      (\ s a -> s{_gcvvt3TimestampedObjects = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVideointelligenceV1p1beta1_Track
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p1beta1Track"
              (\ o ->
                 GoogleCloudVideointelligenceV1p1beta1_Track' <$>
                   (o .:? "confidence") <*>
                     (o .:? "attributes" .!= mempty)
                     <*> (o .:? "segment")
                     <*> (o .:? "timestampedObjects" .!= mempty))

instance ToJSON
           GoogleCloudVideointelligenceV1p1beta1_Track
         where
        toJSON
          GoogleCloudVideointelligenceV1p1beta1_Track'{..}
          = object
              (catMaybes
                 [("confidence" .=) <$> _gcvvt3Confidence,
                  ("attributes" .=) <$> _gcvvt3Attributes,
                  ("segment" .=) <$> _gcvvt3Segment,
                  ("timestampedObjects" .=) <$>
                    _gcvvt3TimestampedObjects])

-- | Video segment level annotation results for label detection.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_LabelSegment' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_LabelSegment =
  GoogleCloudVideointelligenceV1p3beta1_LabelSegment'
    { _gcvvls2Confidence :: !(Maybe (Textual Double))
    , _gcvvls2Segment :: !(Maybe GoogleCloudVideointelligenceV1p3beta1_VideoSegment)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_LabelSegment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvls2Confidence'
--
-- * 'gcvvls2Segment'
googleCloudVideointelligenceV1p3beta1_LabelSegment
    :: GoogleCloudVideointelligenceV1p3beta1_LabelSegment
googleCloudVideointelligenceV1p3beta1_LabelSegment =
  GoogleCloudVideointelligenceV1p3beta1_LabelSegment'
    {_gcvvls2Confidence = Nothing, _gcvvls2Segment = Nothing}


-- | Confidence that the label is accurate. Range: [0, 1].
gcvvls2Confidence :: Lens' GoogleCloudVideointelligenceV1p3beta1_LabelSegment (Maybe Double)
gcvvls2Confidence
  = lens _gcvvls2Confidence
      (\ s a -> s{_gcvvls2Confidence = a})
      . mapping _Coerce

-- | Video segment where a label was detected.
gcvvls2Segment :: Lens' GoogleCloudVideointelligenceV1p3beta1_LabelSegment (Maybe GoogleCloudVideointelligenceV1p3beta1_VideoSegment)
gcvvls2Segment
  = lens _gcvvls2Segment
      (\ s a -> s{_gcvvls2Segment = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_LabelSegment
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1LabelSegment"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_LabelSegment'
                   <$> (o .:? "confidence") <*> (o .:? "segment"))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_LabelSegment
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_LabelSegment'{..}
          = object
              (catMaybes
                 [("confidence" .=) <$> _gcvvls2Confidence,
                  ("segment" .=) <$> _gcvvls2Segment])

-- | Person detection annotation per video.
--
-- /See:/ 'googleCloudVideointelligenceV1p3beta1_PersonDetectionAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_PersonDetectionAnnotation =
  GoogleCloudVideointelligenceV1p3beta1_PersonDetectionAnnotation'
    { _gcvvpda1Tracks :: !(Maybe [GoogleCloudVideointelligenceV1p3beta1_Track])
    , _gcvvpda1Version :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_PersonDetectionAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvpda1Tracks'
--
-- * 'gcvvpda1Version'
googleCloudVideointelligenceV1p3beta1_PersonDetectionAnnotation
    :: GoogleCloudVideointelligenceV1p3beta1_PersonDetectionAnnotation
googleCloudVideointelligenceV1p3beta1_PersonDetectionAnnotation =
  GoogleCloudVideointelligenceV1p3beta1_PersonDetectionAnnotation'
    {_gcvvpda1Tracks = Nothing, _gcvvpda1Version = Nothing}


-- | The detected tracks of a person.
gcvvpda1Tracks :: Lens' GoogleCloudVideointelligenceV1p3beta1_PersonDetectionAnnotation [GoogleCloudVideointelligenceV1p3beta1_Track]
gcvvpda1Tracks
  = lens _gcvvpda1Tracks
      (\ s a -> s{_gcvvpda1Tracks = a})
      . _Default
      . _Coerce

-- | Feature version.
gcvvpda1Version :: Lens' GoogleCloudVideointelligenceV1p3beta1_PersonDetectionAnnotation (Maybe Text)
gcvvpda1Version
  = lens _gcvvpda1Version
      (\ s a -> s{_gcvvpda1Version = a})

instance FromJSON
           GoogleCloudVideointelligenceV1p3beta1_PersonDetectionAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1p3beta1PersonDetectionAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1p3beta1_PersonDetectionAnnotation'
                   <$>
                   (o .:? "tracks" .!= mempty) <*> (o .:? "version"))

instance ToJSON
           GoogleCloudVideointelligenceV1p3beta1_PersonDetectionAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1p3beta1_PersonDetectionAnnotation'{..}
          = object
              (catMaybes
                 [("tracks" .=) <$> _gcvvpda1Tracks,
                  ("version" .=) <$> _gcvvpda1Version])

-- | Video segment level annotation results for label detection.
--
-- /See:/ 'googleCloudVideointelligenceV1_LabelSegment' smart constructor.
data GoogleCloudVideointelligenceV1_LabelSegment =
  GoogleCloudVideointelligenceV1_LabelSegment'
    { _gcvvls3Confidence :: !(Maybe (Textual Double))
    , _gcvvls3Segment :: !(Maybe GoogleCloudVideointelligenceV1_VideoSegment)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1_LabelSegment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvls3Confidence'
--
-- * 'gcvvls3Segment'
googleCloudVideointelligenceV1_LabelSegment
    :: GoogleCloudVideointelligenceV1_LabelSegment
googleCloudVideointelligenceV1_LabelSegment =
  GoogleCloudVideointelligenceV1_LabelSegment'
    {_gcvvls3Confidence = Nothing, _gcvvls3Segment = Nothing}


-- | Confidence that the label is accurate. Range: [0, 1].
gcvvls3Confidence :: Lens' GoogleCloudVideointelligenceV1_LabelSegment (Maybe Double)
gcvvls3Confidence
  = lens _gcvvls3Confidence
      (\ s a -> s{_gcvvls3Confidence = a})
      . mapping _Coerce

-- | Video segment where a label was detected.
gcvvls3Segment :: Lens' GoogleCloudVideointelligenceV1_LabelSegment (Maybe GoogleCloudVideointelligenceV1_VideoSegment)
gcvvls3Segment
  = lens _gcvvls3Segment
      (\ s a -> s{_gcvvls3Segment = a})

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
                 [("confidence" .=) <$> _gcvvls3Confidence,
                  ("segment" .=) <$> _gcvvls3Segment])

-- | Annotations corresponding to one tracked object.
--
-- /See:/ 'googleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation =
  GoogleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation'
    { _gcvvota3Frames :: !(Maybe [GoogleCloudVideointelligenceV1beta2_ObjectTrackingFrame])
    , _gcvvota3Confidence :: !(Maybe (Textual Double))
    , _gcvvota3Version :: !(Maybe Text)
    , _gcvvota3TrackId :: !(Maybe (Textual Int64))
    , _gcvvota3Segment :: !(Maybe GoogleCloudVideointelligenceV1beta2_VideoSegment)
    , _gcvvota3Entity :: !(Maybe GoogleCloudVideointelligenceV1beta2_Entity)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvota3Frames'
--
-- * 'gcvvota3Confidence'
--
-- * 'gcvvota3Version'
--
-- * 'gcvvota3TrackId'
--
-- * 'gcvvota3Segment'
--
-- * 'gcvvota3Entity'
googleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation
    :: GoogleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation
googleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation =
  GoogleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation'
    { _gcvvota3Frames = Nothing
    , _gcvvota3Confidence = Nothing
    , _gcvvota3Version = Nothing
    , _gcvvota3TrackId = Nothing
    , _gcvvota3Segment = Nothing
    , _gcvvota3Entity = Nothing
    }


-- | Information corresponding to all frames where this object track appears.
-- Non-streaming batch mode: it may be one or multiple ObjectTrackingFrame
-- messages in frames. Streaming mode: it can only be one
-- ObjectTrackingFrame message in frames.
gcvvota3Frames :: Lens' GoogleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation [GoogleCloudVideointelligenceV1beta2_ObjectTrackingFrame]
gcvvota3Frames
  = lens _gcvvota3Frames
      (\ s a -> s{_gcvvota3Frames = a})
      . _Default
      . _Coerce

-- | Object category\'s labeling confidence of this track.
gcvvota3Confidence :: Lens' GoogleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation (Maybe Double)
gcvvota3Confidence
  = lens _gcvvota3Confidence
      (\ s a -> s{_gcvvota3Confidence = a})
      . mapping _Coerce

-- | Feature version.
gcvvota3Version :: Lens' GoogleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation (Maybe Text)
gcvvota3Version
  = lens _gcvvota3Version
      (\ s a -> s{_gcvvota3Version = a})

-- | Streaming mode ONLY. In streaming mode, we do not know the end time of a
-- tracked object before it is completed. Hence, there is no VideoSegment
-- info returned. Instead, we provide a unique identifiable integer
-- track_id so that the customers can correlate the results of the ongoing
-- ObjectTrackAnnotation of the same track_id over time.
gcvvota3TrackId :: Lens' GoogleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation (Maybe Int64)
gcvvota3TrackId
  = lens _gcvvota3TrackId
      (\ s a -> s{_gcvvota3TrackId = a})
      . mapping _Coerce

-- | Non-streaming batch mode ONLY. Each object track corresponds to one
-- video segment where it appears.
gcvvota3Segment :: Lens' GoogleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation (Maybe GoogleCloudVideointelligenceV1beta2_VideoSegment)
gcvvota3Segment
  = lens _gcvvota3Segment
      (\ s a -> s{_gcvvota3Segment = a})

-- | Entity to specify the object category that this track is labeled as.
gcvvota3Entity :: Lens' GoogleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation (Maybe GoogleCloudVideointelligenceV1beta2_Entity)
gcvvota3Entity
  = lens _gcvvota3Entity
      (\ s a -> s{_gcvvota3Entity = a})

instance FromJSON
           GoogleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation'
                   <$>
                   (o .:? "frames" .!= mempty) <*> (o .:? "confidence")
                     <*> (o .:? "version")
                     <*> (o .:? "trackId")
                     <*> (o .:? "segment")
                     <*> (o .:? "entity"))

instance ToJSON
           GoogleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation'{..}
          = object
              (catMaybes
                 [("frames" .=) <$> _gcvvota3Frames,
                  ("confidence" .=) <$> _gcvvota3Confidence,
                  ("version" .=) <$> _gcvvota3Version,
                  ("trackId" .=) <$> _gcvvota3TrackId,
                  ("segment" .=) <$> _gcvvota3Segment,
                  ("entity" .=) <$> _gcvvota3Entity])

-- | Person detection annotation per video.
--
-- /See:/ 'googleCloudVideointelligenceV1_PersonDetectionAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1_PersonDetectionAnnotation =
  GoogleCloudVideointelligenceV1_PersonDetectionAnnotation'
    { _gcvvpda2Tracks :: !(Maybe [GoogleCloudVideointelligenceV1_Track])
    , _gcvvpda2Version :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVideointelligenceV1_PersonDetectionAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvpda2Tracks'
--
-- * 'gcvvpda2Version'
googleCloudVideointelligenceV1_PersonDetectionAnnotation
    :: GoogleCloudVideointelligenceV1_PersonDetectionAnnotation
googleCloudVideointelligenceV1_PersonDetectionAnnotation =
  GoogleCloudVideointelligenceV1_PersonDetectionAnnotation'
    {_gcvvpda2Tracks = Nothing, _gcvvpda2Version = Nothing}


-- | The detected tracks of a person.
gcvvpda2Tracks :: Lens' GoogleCloudVideointelligenceV1_PersonDetectionAnnotation [GoogleCloudVideointelligenceV1_Track]
gcvvpda2Tracks
  = lens _gcvvpda2Tracks
      (\ s a -> s{_gcvvpda2Tracks = a})
      . _Default
      . _Coerce

-- | Feature version.
gcvvpda2Version :: Lens' GoogleCloudVideointelligenceV1_PersonDetectionAnnotation (Maybe Text)
gcvvpda2Version
  = lens _gcvvpda2Version
      (\ s a -> s{_gcvvpda2Version = a})

instance FromJSON
           GoogleCloudVideointelligenceV1_PersonDetectionAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVideointelligenceV1PersonDetectionAnnotation"
              (\ o ->
                 GoogleCloudVideointelligenceV1_PersonDetectionAnnotation'
                   <$>
                   (o .:? "tracks" .!= mempty) <*> (o .:? "version"))

instance ToJSON
           GoogleCloudVideointelligenceV1_PersonDetectionAnnotation
         where
        toJSON
          GoogleCloudVideointelligenceV1_PersonDetectionAnnotation'{..}
          = object
              (catMaybes
                 [("tracks" .=) <$> _gcvvpda2Tracks,
                  ("version" .=) <$> _gcvvpda2Version])
