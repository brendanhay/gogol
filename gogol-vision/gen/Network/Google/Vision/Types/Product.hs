{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Vision.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Vision.Types.Product where

import Network.Google.Prelude
import Network.Google.Vision.Types.Sum

-- | Set of detected objects with bounding boxes.
--
-- /See:/ 'googleCloudVisionV1p1beta1LocalizedObjectAnnotation' smart constructor.
data GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation =
  GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation'
    { _gcvvloaLanguageCode :: !(Maybe Text)
    , _gcvvloaScore :: !(Maybe (Textual Double))
    , _gcvvloaBoundingPoly :: !(Maybe GoogleCloudVisionV1p1beta1BoundingPoly)
    , _gcvvloaName :: !(Maybe Text)
    , _gcvvloaMid :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvloaLanguageCode'
--
-- * 'gcvvloaScore'
--
-- * 'gcvvloaBoundingPoly'
--
-- * 'gcvvloaName'
--
-- * 'gcvvloaMid'
googleCloudVisionV1p1beta1LocalizedObjectAnnotation
    :: GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation
googleCloudVisionV1p1beta1LocalizedObjectAnnotation =
  GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation'
    { _gcvvloaLanguageCode = Nothing
    , _gcvvloaScore = Nothing
    , _gcvvloaBoundingPoly = Nothing
    , _gcvvloaName = Nothing
    , _gcvvloaMid = Nothing
    }


-- | The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more
-- information, see
-- http:\/\/www.unicode.org\/reports\/tr35\/#Unicode_locale_identifier.
gcvvloaLanguageCode :: Lens' GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation (Maybe Text)
gcvvloaLanguageCode
  = lens _gcvvloaLanguageCode
      (\ s a -> s{_gcvvloaLanguageCode = a})

-- | Score of the result. Range [0, 1].
gcvvloaScore :: Lens' GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation (Maybe Double)
gcvvloaScore
  = lens _gcvvloaScore (\ s a -> s{_gcvvloaScore = a})
      . mapping _Coerce

-- | Image region to which this object belongs. This must be populated.
gcvvloaBoundingPoly :: Lens' GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation (Maybe GoogleCloudVisionV1p1beta1BoundingPoly)
gcvvloaBoundingPoly
  = lens _gcvvloaBoundingPoly
      (\ s a -> s{_gcvvloaBoundingPoly = a})

-- | Object name, expressed in its \`language_code\` language.
gcvvloaName :: Lens' GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation (Maybe Text)
gcvvloaName
  = lens _gcvvloaName (\ s a -> s{_gcvvloaName = a})

-- | Object ID that should align with EntityAnnotation mid.
gcvvloaMid :: Lens' GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation (Maybe Text)
gcvvloaMid
  = lens _gcvvloaMid (\ s a -> s{_gcvvloaMid = a})

instance FromJSON
           GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation"
              (\ o ->
                 GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation'
                   <$>
                   (o .:? "languageCode") <*> (o .:? "score") <*>
                     (o .:? "boundingPoly")
                     <*> (o .:? "name")
                     <*> (o .:? "mid"))

instance ToJSON
           GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation
         where
        toJSON
          GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _gcvvloaLanguageCode,
                  ("score" .=) <$> _gcvvloaScore,
                  ("boundingPoly" .=) <$> _gcvvloaBoundingPoly,
                  ("name" .=) <$> _gcvvloaName,
                  ("mid" .=) <$> _gcvvloaMid])

-- | An object that represents a latitude\/longitude pair. This is expressed
-- as a pair of doubles to represent degrees latitude and degrees
-- longitude. Unless specified otherwise, this object must conform to the
-- WGS84 standard. Values must be within normalized ranges.
--
-- /See:/ 'latLng' smart constructor.
data LatLng =
  LatLng'
    { _llLatitude :: !(Maybe (Textual Double))
    , _llLongitude :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LatLng' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llLatitude'
--
-- * 'llLongitude'
latLng
    :: LatLng
latLng = LatLng' {_llLatitude = Nothing, _llLongitude = Nothing}


-- | The latitude in degrees. It must be in the range [-90.0, +90.0].
llLatitude :: Lens' LatLng (Maybe Double)
llLatitude
  = lens _llLatitude (\ s a -> s{_llLatitude = a}) .
      mapping _Coerce

-- | The longitude in degrees. It must be in the range [-180.0, +180.0].
llLongitude :: Lens' LatLng (Maybe Double)
llLongitude
  = lens _llLongitude (\ s a -> s{_llLongitude = a}) .
      mapping _Coerce

instance FromJSON LatLng where
        parseJSON
          = withObject "LatLng"
              (\ o ->
                 LatLng' <$>
                   (o .:? "latitude") <*> (o .:? "longitude"))

instance ToJSON LatLng where
        toJSON LatLng'{..}
          = object
              (catMaybes
                 [("latitude" .=) <$> _llLatitude,
                  ("longitude" .=) <$> _llLongitude])

-- | The desired output location and metadata.
--
-- /See:/ 'googleCloudVisionV1p1beta1OutputConfig' smart constructor.
data GoogleCloudVisionV1p1beta1OutputConfig =
  GoogleCloudVisionV1p1beta1OutputConfig'
    { _gcvvocGcsDestination :: !(Maybe GoogleCloudVisionV1p1beta1GcsDestination)
    , _gcvvocBatchSize :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1OutputConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvocGcsDestination'
--
-- * 'gcvvocBatchSize'
googleCloudVisionV1p1beta1OutputConfig
    :: GoogleCloudVisionV1p1beta1OutputConfig
googleCloudVisionV1p1beta1OutputConfig =
  GoogleCloudVisionV1p1beta1OutputConfig'
    {_gcvvocGcsDestination = Nothing, _gcvvocBatchSize = Nothing}


-- | The Google Cloud Storage location to write the output(s) to.
gcvvocGcsDestination :: Lens' GoogleCloudVisionV1p1beta1OutputConfig (Maybe GoogleCloudVisionV1p1beta1GcsDestination)
gcvvocGcsDestination
  = lens _gcvvocGcsDestination
      (\ s a -> s{_gcvvocGcsDestination = a})

-- | The max number of response protos to put into each output JSON file on
-- Google Cloud Storage. The valid range is [1, 100]. If not specified, the
-- default value is 20. For example, for one pdf file with 100 pages, 100
-- response protos will be generated. If \`batch_size\` = 20, then 5 json
-- files each containing 20 response protos will be written under the
-- prefix \`gcs_destination\`.\`uri\`. Currently, batch_size only applies
-- to GcsDestination, with potential future support for other output
-- configurations.
gcvvocBatchSize :: Lens' GoogleCloudVisionV1p1beta1OutputConfig (Maybe Int32)
gcvvocBatchSize
  = lens _gcvvocBatchSize
      (\ s a -> s{_gcvvocBatchSize = a})
      . mapping _Coerce

instance FromJSON
           GoogleCloudVisionV1p1beta1OutputConfig
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p1beta1OutputConfig"
              (\ o ->
                 GoogleCloudVisionV1p1beta1OutputConfig' <$>
                   (o .:? "gcsDestination") <*> (o .:? "batchSize"))

instance ToJSON
           GoogleCloudVisionV1p1beta1OutputConfig
         where
        toJSON GoogleCloudVisionV1p1beta1OutputConfig'{..}
          = object
              (catMaybes
                 [("gcsDestination" .=) <$> _gcvvocGcsDestination,
                  ("batchSize" .=) <$> _gcvvocBatchSize])

-- | A product label represented as a key-value pair.
--
-- /See:/ 'googleCloudVisionV1p3beta1ProductKeyValue' smart constructor.
data GoogleCloudVisionV1p3beta1ProductKeyValue =
  GoogleCloudVisionV1p3beta1ProductKeyValue'
    { _gcvvpkvValue :: !(Maybe Text)
    , _gcvvpkvKey :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1ProductKeyValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvpkvValue'
--
-- * 'gcvvpkvKey'
googleCloudVisionV1p3beta1ProductKeyValue
    :: GoogleCloudVisionV1p3beta1ProductKeyValue
googleCloudVisionV1p3beta1ProductKeyValue =
  GoogleCloudVisionV1p3beta1ProductKeyValue'
    {_gcvvpkvValue = Nothing, _gcvvpkvKey = Nothing}


-- | The value of the label attached to the product. Cannot be empty and
-- cannot exceed 128 bytes.
gcvvpkvValue :: Lens' GoogleCloudVisionV1p3beta1ProductKeyValue (Maybe Text)
gcvvpkvValue
  = lens _gcvvpkvValue (\ s a -> s{_gcvvpkvValue = a})

-- | The key of the label attached to the product. Cannot be empty and cannot
-- exceed 128 bytes.
gcvvpkvKey :: Lens' GoogleCloudVisionV1p3beta1ProductKeyValue (Maybe Text)
gcvvpkvKey
  = lens _gcvvpkvKey (\ s a -> s{_gcvvpkvKey = a})

instance FromJSON
           GoogleCloudVisionV1p3beta1ProductKeyValue
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p3beta1ProductKeyValue"
              (\ o ->
                 GoogleCloudVisionV1p3beta1ProductKeyValue' <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON
           GoogleCloudVisionV1p3beta1ProductKeyValue
         where
        toJSON GoogleCloudVisionV1p3beta1ProductKeyValue'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _gcvvpkvValue,
                  ("key" .=) <$> _gcvvpkvKey])

-- | Contains metadata for the BatchAnnotateImages operation.
--
-- /See:/ 'googleCloudVisionV1p4beta1OperationMetadata' smart constructor.
data GoogleCloudVisionV1p4beta1OperationMetadata =
  GoogleCloudVisionV1p4beta1OperationMetadata'
    { _gcvvomState :: !(Maybe GoogleCloudVisionV1p4beta1OperationMetadataState)
    , _gcvvomUpdateTime :: !(Maybe DateTime')
    , _gcvvomCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvomState'
--
-- * 'gcvvomUpdateTime'
--
-- * 'gcvvomCreateTime'
googleCloudVisionV1p4beta1OperationMetadata
    :: GoogleCloudVisionV1p4beta1OperationMetadata
googleCloudVisionV1p4beta1OperationMetadata =
  GoogleCloudVisionV1p4beta1OperationMetadata'
    { _gcvvomState = Nothing
    , _gcvvomUpdateTime = Nothing
    , _gcvvomCreateTime = Nothing
    }


-- | Current state of the batch operation.
gcvvomState :: Lens' GoogleCloudVisionV1p4beta1OperationMetadata (Maybe GoogleCloudVisionV1p4beta1OperationMetadataState)
gcvvomState
  = lens _gcvvomState (\ s a -> s{_gcvvomState = a})

-- | The time when the operation result was last updated.
gcvvomUpdateTime :: Lens' GoogleCloudVisionV1p4beta1OperationMetadata (Maybe UTCTime)
gcvvomUpdateTime
  = lens _gcvvomUpdateTime
      (\ s a -> s{_gcvvomUpdateTime = a})
      . mapping _DateTime

-- | The time when the batch request was received.
gcvvomCreateTime :: Lens' GoogleCloudVisionV1p4beta1OperationMetadata (Maybe UTCTime)
gcvvomCreateTime
  = lens _gcvvomCreateTime
      (\ s a -> s{_gcvvomCreateTime = a})
      . mapping _DateTime

instance FromJSON
           GoogleCloudVisionV1p4beta1OperationMetadata
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p4beta1OperationMetadata"
              (\ o ->
                 GoogleCloudVisionV1p4beta1OperationMetadata' <$>
                   (o .:? "state") <*> (o .:? "updateTime") <*>
                     (o .:? "createTime"))

instance ToJSON
           GoogleCloudVisionV1p4beta1OperationMetadata
         where
        toJSON
          GoogleCloudVisionV1p4beta1OperationMetadata'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _gcvvomState,
                  ("updateTime" .=) <$> _gcvvomUpdateTime,
                  ("createTime" .=) <$> _gcvvomCreateTime])

-- | Response to an async batch file annotation request.
--
-- /See:/ 'googleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse' smart constructor.
newtype GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse =
  GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse'
    { _gcvvabafrResponses :: Maybe [GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvabafrResponses'
googleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse
    :: GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse
googleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse =
  GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse'
    {_gcvvabafrResponses = Nothing}


-- | The list of file annotation responses, one for each request in
-- AsyncBatchAnnotateFilesRequest.
gcvvabafrResponses :: Lens' GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse [GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse]
gcvvabafrResponses
  = lens _gcvvabafrResponses
      (\ s a -> s{_gcvvabafrResponses = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse"
              (\ o ->
                 GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse'
                   <$> (o .:? "responses" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse
         where
        toJSON
          GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse'{..}
          = object
              (catMaybes
                 [("responses" .=) <$> _gcvvabafrResponses])

-- | If an image was produced from a file (e.g. a PDF), this message gives
-- information about the source of that image.
--
-- /See:/ 'googleCloudVisionV1p3beta1ImageAnnotationContext' smart constructor.
data GoogleCloudVisionV1p3beta1ImageAnnotationContext =
  GoogleCloudVisionV1p3beta1ImageAnnotationContext'
    { _gcvviacURI :: !(Maybe Text)
    , _gcvviacPageNumber :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1ImageAnnotationContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvviacURI'
--
-- * 'gcvviacPageNumber'
googleCloudVisionV1p3beta1ImageAnnotationContext
    :: GoogleCloudVisionV1p3beta1ImageAnnotationContext
googleCloudVisionV1p3beta1ImageAnnotationContext =
  GoogleCloudVisionV1p3beta1ImageAnnotationContext'
    {_gcvviacURI = Nothing, _gcvviacPageNumber = Nothing}


-- | The URI of the file used to produce the image.
gcvviacURI :: Lens' GoogleCloudVisionV1p3beta1ImageAnnotationContext (Maybe Text)
gcvviacURI
  = lens _gcvviacURI (\ s a -> s{_gcvviacURI = a})

-- | If the file was a PDF or TIFF, this field gives the page number within
-- the file used to produce the image.
gcvviacPageNumber :: Lens' GoogleCloudVisionV1p3beta1ImageAnnotationContext (Maybe Int32)
gcvviacPageNumber
  = lens _gcvviacPageNumber
      (\ s a -> s{_gcvviacPageNumber = a})
      . mapping _Coerce

instance FromJSON
           GoogleCloudVisionV1p3beta1ImageAnnotationContext
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p3beta1ImageAnnotationContext"
              (\ o ->
                 GoogleCloudVisionV1p3beta1ImageAnnotationContext' <$>
                   (o .:? "uri") <*> (o .:? "pageNumber"))

instance ToJSON
           GoogleCloudVisionV1p3beta1ImageAnnotationContext
         where
        toJSON
          GoogleCloudVisionV1p3beta1ImageAnnotationContext'{..}
          = object
              (catMaybes
                 [("uri" .=) <$> _gcvviacURI,
                  ("pageNumber" .=) <$> _gcvviacPageNumber])

-- | Prediction for what the object in the bounding box is.
--
-- /See:/ 'googleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation' smart constructor.
data GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation =
  GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation'
    { _gcvvpsroaLanguageCode :: !(Maybe Text)
    , _gcvvpsroaScore :: !(Maybe (Textual Double))
    , _gcvvpsroaName :: !(Maybe Text)
    , _gcvvpsroaMid :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvpsroaLanguageCode'
--
-- * 'gcvvpsroaScore'
--
-- * 'gcvvpsroaName'
--
-- * 'gcvvpsroaMid'
googleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation
    :: GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation
googleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation =
  GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation'
    { _gcvvpsroaLanguageCode = Nothing
    , _gcvvpsroaScore = Nothing
    , _gcvvpsroaName = Nothing
    , _gcvvpsroaMid = Nothing
    }


-- | The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more
-- information, see
-- http:\/\/www.unicode.org\/reports\/tr35\/#Unicode_locale_identifier.
gcvvpsroaLanguageCode :: Lens' GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation (Maybe Text)
gcvvpsroaLanguageCode
  = lens _gcvvpsroaLanguageCode
      (\ s a -> s{_gcvvpsroaLanguageCode = a})

-- | Score of the result. Range [0, 1].
gcvvpsroaScore :: Lens' GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation (Maybe Double)
gcvvpsroaScore
  = lens _gcvvpsroaScore
      (\ s a -> s{_gcvvpsroaScore = a})
      . mapping _Coerce

-- | Object name, expressed in its \`language_code\` language.
gcvvpsroaName :: Lens' GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation (Maybe Text)
gcvvpsroaName
  = lens _gcvvpsroaName
      (\ s a -> s{_gcvvpsroaName = a})

-- | Object ID that should align with EntityAnnotation mid.
gcvvpsroaMid :: Lens' GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation (Maybe Text)
gcvvpsroaMid
  = lens _gcvvpsroaMid (\ s a -> s{_gcvvpsroaMid = a})

instance FromJSON
           GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation"
              (\ o ->
                 GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation'
                   <$>
                   (o .:? "languageCode") <*> (o .:? "score") <*>
                     (o .:? "name")
                     <*> (o .:? "mid"))

instance ToJSON
           GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation
         where
        toJSON
          GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _gcvvpsroaLanguageCode,
                  ("score" .=) <$> _gcvvpsroaScore,
                  ("name" .=) <$> _gcvvpsroaName,
                  ("mid" .=) <$> _gcvvpsroaMid])

-- | A \`Property\` consists of a user-supplied name\/value pair.
--
-- /See:/ 'googleCloudVisionV1p3beta1Property' smart constructor.
data GoogleCloudVisionV1p3beta1Property =
  GoogleCloudVisionV1p3beta1Property'
    { _gcvvpUint64Value :: !(Maybe (Textual Word64))
    , _gcvvpValue :: !(Maybe Text)
    , _gcvvpName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1Property' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvpUint64Value'
--
-- * 'gcvvpValue'
--
-- * 'gcvvpName'
googleCloudVisionV1p3beta1Property
    :: GoogleCloudVisionV1p3beta1Property
googleCloudVisionV1p3beta1Property =
  GoogleCloudVisionV1p3beta1Property'
    {_gcvvpUint64Value = Nothing, _gcvvpValue = Nothing, _gcvvpName = Nothing}


-- | Value of numeric properties.
gcvvpUint64Value :: Lens' GoogleCloudVisionV1p3beta1Property (Maybe Word64)
gcvvpUint64Value
  = lens _gcvvpUint64Value
      (\ s a -> s{_gcvvpUint64Value = a})
      . mapping _Coerce

-- | Value of the property.
gcvvpValue :: Lens' GoogleCloudVisionV1p3beta1Property (Maybe Text)
gcvvpValue
  = lens _gcvvpValue (\ s a -> s{_gcvvpValue = a})

-- | Name of the property.
gcvvpName :: Lens' GoogleCloudVisionV1p3beta1Property (Maybe Text)
gcvvpName
  = lens _gcvvpName (\ s a -> s{_gcvvpName = a})

instance FromJSON GoogleCloudVisionV1p3beta1Property
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p3beta1Property"
              (\ o ->
                 GoogleCloudVisionV1p3beta1Property' <$>
                   (o .:? "uint64Value") <*> (o .:? "value") <*>
                     (o .:? "name"))

instance ToJSON GoogleCloudVisionV1p3beta1Property
         where
        toJSON GoogleCloudVisionV1p3beta1Property'{..}
          = object
              (catMaybes
                 [("uint64Value" .=) <$> _gcvvpUint64Value,
                  ("value" .=) <$> _gcvvpValue,
                  ("name" .=) <$> _gcvvpName])

-- | Detected language for a structural component.
--
-- /See:/ 'googleCloudVisionV1p2beta1TextAnnotationDetectedLanguage' smart constructor.
data GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage =
  GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage'
    { _gcvvtadlLanguageCode :: !(Maybe Text)
    , _gcvvtadlConfidence :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvtadlLanguageCode'
--
-- * 'gcvvtadlConfidence'
googleCloudVisionV1p2beta1TextAnnotationDetectedLanguage
    :: GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage
googleCloudVisionV1p2beta1TextAnnotationDetectedLanguage =
  GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage'
    {_gcvvtadlLanguageCode = Nothing, _gcvvtadlConfidence = Nothing}


-- | The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more
-- information, see
-- http:\/\/www.unicode.org\/reports\/tr35\/#Unicode_locale_identifier.
gcvvtadlLanguageCode :: Lens' GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage (Maybe Text)
gcvvtadlLanguageCode
  = lens _gcvvtadlLanguageCode
      (\ s a -> s{_gcvvtadlLanguageCode = a})

-- | Confidence of detected language. Range [0, 1].
gcvvtadlConfidence :: Lens' GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage (Maybe Double)
gcvvtadlConfidence
  = lens _gcvvtadlConfidence
      (\ s a -> s{_gcvvtadlConfidence = a})
      . mapping _Coerce

instance FromJSON
           GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage"
              (\ o ->
                 GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage'
                   <$> (o .:? "languageCode") <*> (o .:? "confidence"))

instance ToJSON
           GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage
         where
        toJSON
          GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _gcvvtadlLanguageCode,
                  ("confidence" .=) <$> _gcvvtadlConfidence])

-- | A product label represented as a key-value pair.
--
-- /See:/ 'keyValue' smart constructor.
data KeyValue =
  KeyValue'
    { _kvValue :: !(Maybe Text)
    , _kvKey :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'KeyValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'kvValue'
--
-- * 'kvKey'
keyValue
    :: KeyValue
keyValue = KeyValue' {_kvValue = Nothing, _kvKey = Nothing}


-- | The value of the label attached to the product. Cannot be empty and
-- cannot exceed 128 bytes.
kvValue :: Lens' KeyValue (Maybe Text)
kvValue = lens _kvValue (\ s a -> s{_kvValue = a})

-- | The key of the label attached to the product. Cannot be empty and cannot
-- exceed 128 bytes.
kvKey :: Lens' KeyValue (Maybe Text)
kvKey = lens _kvKey (\ s a -> s{_kvKey = a})

instance FromJSON KeyValue where
        parseJSON
          = withObject "KeyValue"
              (\ o ->
                 KeyValue' <$> (o .:? "value") <*> (o .:? "key"))

instance ToJSON KeyValue where
        toJSON KeyValue'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _kvValue, ("key" .=) <$> _kvKey])

-- | Response to an image annotation request.
--
-- /See:/ 'googleCloudVisionV1p2beta1AnnotateImageResponse' smart constructor.
data GoogleCloudVisionV1p2beta1AnnotateImageResponse =
  GoogleCloudVisionV1p2beta1AnnotateImageResponse'
    { _gcvvairLogoAnnotations :: !(Maybe [GoogleCloudVisionV1p2beta1EntityAnnotation])
    , _gcvvairProductSearchResults :: !(Maybe GoogleCloudVisionV1p2beta1ProductSearchResults)
    , _gcvvairContext :: !(Maybe GoogleCloudVisionV1p2beta1ImageAnnotationContext)
    , _gcvvairLabelAnnotations :: !(Maybe [GoogleCloudVisionV1p2beta1EntityAnnotation])
    , _gcvvairFaceAnnotations :: !(Maybe [GoogleCloudVisionV1p2beta1FaceAnnotation])
    , _gcvvairError :: !(Maybe Status)
    , _gcvvairWebDetection :: !(Maybe GoogleCloudVisionV1p2beta1WebDetection)
    , _gcvvairSafeSearchAnnotation :: !(Maybe GoogleCloudVisionV1p2beta1SafeSearchAnnotation)
    , _gcvvairLandmarkAnnotations :: !(Maybe [GoogleCloudVisionV1p2beta1EntityAnnotation])
    , _gcvvairLocalizedObjectAnnotations :: !(Maybe [GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation])
    , _gcvvairTextAnnotations :: !(Maybe [GoogleCloudVisionV1p2beta1EntityAnnotation])
    , _gcvvairCropHintsAnnotation :: !(Maybe GoogleCloudVisionV1p2beta1CropHintsAnnotation)
    , _gcvvairFullTextAnnotation :: !(Maybe GoogleCloudVisionV1p2beta1TextAnnotation)
    , _gcvvairImagePropertiesAnnotation :: !(Maybe GoogleCloudVisionV1p2beta1ImageProperties)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1AnnotateImageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvairLogoAnnotations'
--
-- * 'gcvvairProductSearchResults'
--
-- * 'gcvvairContext'
--
-- * 'gcvvairLabelAnnotations'
--
-- * 'gcvvairFaceAnnotations'
--
-- * 'gcvvairError'
--
-- * 'gcvvairWebDetection'
--
-- * 'gcvvairSafeSearchAnnotation'
--
-- * 'gcvvairLandmarkAnnotations'
--
-- * 'gcvvairLocalizedObjectAnnotations'
--
-- * 'gcvvairTextAnnotations'
--
-- * 'gcvvairCropHintsAnnotation'
--
-- * 'gcvvairFullTextAnnotation'
--
-- * 'gcvvairImagePropertiesAnnotation'
googleCloudVisionV1p2beta1AnnotateImageResponse
    :: GoogleCloudVisionV1p2beta1AnnotateImageResponse
googleCloudVisionV1p2beta1AnnotateImageResponse =
  GoogleCloudVisionV1p2beta1AnnotateImageResponse'
    { _gcvvairLogoAnnotations = Nothing
    , _gcvvairProductSearchResults = Nothing
    , _gcvvairContext = Nothing
    , _gcvvairLabelAnnotations = Nothing
    , _gcvvairFaceAnnotations = Nothing
    , _gcvvairError = Nothing
    , _gcvvairWebDetection = Nothing
    , _gcvvairSafeSearchAnnotation = Nothing
    , _gcvvairLandmarkAnnotations = Nothing
    , _gcvvairLocalizedObjectAnnotations = Nothing
    , _gcvvairTextAnnotations = Nothing
    , _gcvvairCropHintsAnnotation = Nothing
    , _gcvvairFullTextAnnotation = Nothing
    , _gcvvairImagePropertiesAnnotation = Nothing
    }


-- | If present, logo detection has completed successfully.
gcvvairLogoAnnotations :: Lens' GoogleCloudVisionV1p2beta1AnnotateImageResponse [GoogleCloudVisionV1p2beta1EntityAnnotation]
gcvvairLogoAnnotations
  = lens _gcvvairLogoAnnotations
      (\ s a -> s{_gcvvairLogoAnnotations = a})
      . _Default
      . _Coerce

-- | If present, product search has completed successfully.
gcvvairProductSearchResults :: Lens' GoogleCloudVisionV1p2beta1AnnotateImageResponse (Maybe GoogleCloudVisionV1p2beta1ProductSearchResults)
gcvvairProductSearchResults
  = lens _gcvvairProductSearchResults
      (\ s a -> s{_gcvvairProductSearchResults = a})

-- | If present, contextual information is needed to understand where this
-- image comes from.
gcvvairContext :: Lens' GoogleCloudVisionV1p2beta1AnnotateImageResponse (Maybe GoogleCloudVisionV1p2beta1ImageAnnotationContext)
gcvvairContext
  = lens _gcvvairContext
      (\ s a -> s{_gcvvairContext = a})

-- | If present, label detection has completed successfully.
gcvvairLabelAnnotations :: Lens' GoogleCloudVisionV1p2beta1AnnotateImageResponse [GoogleCloudVisionV1p2beta1EntityAnnotation]
gcvvairLabelAnnotations
  = lens _gcvvairLabelAnnotations
      (\ s a -> s{_gcvvairLabelAnnotations = a})
      . _Default
      . _Coerce

-- | If present, face detection has completed successfully.
gcvvairFaceAnnotations :: Lens' GoogleCloudVisionV1p2beta1AnnotateImageResponse [GoogleCloudVisionV1p2beta1FaceAnnotation]
gcvvairFaceAnnotations
  = lens _gcvvairFaceAnnotations
      (\ s a -> s{_gcvvairFaceAnnotations = a})
      . _Default
      . _Coerce

-- | If set, represents the error message for the operation. Note that
-- filled-in image annotations are guaranteed to be correct, even when
-- \`error\` is set.
gcvvairError :: Lens' GoogleCloudVisionV1p2beta1AnnotateImageResponse (Maybe Status)
gcvvairError
  = lens _gcvvairError (\ s a -> s{_gcvvairError = a})

-- | If present, web detection has completed successfully.
gcvvairWebDetection :: Lens' GoogleCloudVisionV1p2beta1AnnotateImageResponse (Maybe GoogleCloudVisionV1p2beta1WebDetection)
gcvvairWebDetection
  = lens _gcvvairWebDetection
      (\ s a -> s{_gcvvairWebDetection = a})

-- | If present, safe-search annotation has completed successfully.
gcvvairSafeSearchAnnotation :: Lens' GoogleCloudVisionV1p2beta1AnnotateImageResponse (Maybe GoogleCloudVisionV1p2beta1SafeSearchAnnotation)
gcvvairSafeSearchAnnotation
  = lens _gcvvairSafeSearchAnnotation
      (\ s a -> s{_gcvvairSafeSearchAnnotation = a})

-- | If present, landmark detection has completed successfully.
gcvvairLandmarkAnnotations :: Lens' GoogleCloudVisionV1p2beta1AnnotateImageResponse [GoogleCloudVisionV1p2beta1EntityAnnotation]
gcvvairLandmarkAnnotations
  = lens _gcvvairLandmarkAnnotations
      (\ s a -> s{_gcvvairLandmarkAnnotations = a})
      . _Default
      . _Coerce

-- | If present, localized object detection has completed successfully. This
-- will be sorted descending by confidence score.
gcvvairLocalizedObjectAnnotations :: Lens' GoogleCloudVisionV1p2beta1AnnotateImageResponse [GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation]
gcvvairLocalizedObjectAnnotations
  = lens _gcvvairLocalizedObjectAnnotations
      (\ s a -> s{_gcvvairLocalizedObjectAnnotations = a})
      . _Default
      . _Coerce

-- | If present, text (OCR) detection has completed successfully.
gcvvairTextAnnotations :: Lens' GoogleCloudVisionV1p2beta1AnnotateImageResponse [GoogleCloudVisionV1p2beta1EntityAnnotation]
gcvvairTextAnnotations
  = lens _gcvvairTextAnnotations
      (\ s a -> s{_gcvvairTextAnnotations = a})
      . _Default
      . _Coerce

-- | If present, crop hints have completed successfully.
gcvvairCropHintsAnnotation :: Lens' GoogleCloudVisionV1p2beta1AnnotateImageResponse (Maybe GoogleCloudVisionV1p2beta1CropHintsAnnotation)
gcvvairCropHintsAnnotation
  = lens _gcvvairCropHintsAnnotation
      (\ s a -> s{_gcvvairCropHintsAnnotation = a})

-- | If present, text (OCR) detection or document (OCR) text detection has
-- completed successfully. This annotation provides the structural
-- hierarchy for the OCR detected text.
gcvvairFullTextAnnotation :: Lens' GoogleCloudVisionV1p2beta1AnnotateImageResponse (Maybe GoogleCloudVisionV1p2beta1TextAnnotation)
gcvvairFullTextAnnotation
  = lens _gcvvairFullTextAnnotation
      (\ s a -> s{_gcvvairFullTextAnnotation = a})

-- | If present, image properties were extracted successfully.
gcvvairImagePropertiesAnnotation :: Lens' GoogleCloudVisionV1p2beta1AnnotateImageResponse (Maybe GoogleCloudVisionV1p2beta1ImageProperties)
gcvvairImagePropertiesAnnotation
  = lens _gcvvairImagePropertiesAnnotation
      (\ s a -> s{_gcvvairImagePropertiesAnnotation = a})

instance FromJSON
           GoogleCloudVisionV1p2beta1AnnotateImageResponse
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p2beta1AnnotateImageResponse"
              (\ o ->
                 GoogleCloudVisionV1p2beta1AnnotateImageResponse' <$>
                   (o .:? "logoAnnotations" .!= mempty) <*>
                     (o .:? "productSearchResults")
                     <*> (o .:? "context")
                     <*> (o .:? "labelAnnotations" .!= mempty)
                     <*> (o .:? "faceAnnotations" .!= mempty)
                     <*> (o .:? "error")
                     <*> (o .:? "webDetection")
                     <*> (o .:? "safeSearchAnnotation")
                     <*> (o .:? "landmarkAnnotations" .!= mempty)
                     <*> (o .:? "localizedObjectAnnotations" .!= mempty)
                     <*> (o .:? "textAnnotations" .!= mempty)
                     <*> (o .:? "cropHintsAnnotation")
                     <*> (o .:? "fullTextAnnotation")
                     <*> (o .:? "imagePropertiesAnnotation"))

instance ToJSON
           GoogleCloudVisionV1p2beta1AnnotateImageResponse
         where
        toJSON
          GoogleCloudVisionV1p2beta1AnnotateImageResponse'{..}
          = object
              (catMaybes
                 [("logoAnnotations" .=) <$> _gcvvairLogoAnnotations,
                  ("productSearchResults" .=) <$>
                    _gcvvairProductSearchResults,
                  ("context" .=) <$> _gcvvairContext,
                  ("labelAnnotations" .=) <$> _gcvvairLabelAnnotations,
                  ("faceAnnotations" .=) <$> _gcvvairFaceAnnotations,
                  ("error" .=) <$> _gcvvairError,
                  ("webDetection" .=) <$> _gcvvairWebDetection,
                  ("safeSearchAnnotation" .=) <$>
                    _gcvvairSafeSearchAnnotation,
                  ("landmarkAnnotations" .=) <$>
                    _gcvvairLandmarkAnnotations,
                  ("localizedObjectAnnotations" .=) <$>
                    _gcvvairLocalizedObjectAnnotations,
                  ("textAnnotations" .=) <$> _gcvvairTextAnnotations,
                  ("cropHintsAnnotation" .=) <$>
                    _gcvvairCropHintsAnnotation,
                  ("fullTextAnnotation" .=) <$>
                    _gcvvairFullTextAnnotation,
                  ("imagePropertiesAnnotation" .=) <$>
                    _gcvvairImagePropertiesAnnotation])

-- | Response message for the \`ImportProductSets\` method. This message is
-- returned by the google.longrunning.Operations.GetOperation method in the
-- returned google.longrunning.Operation.response field.
--
-- /See:/ 'importProductSetsResponse' smart constructor.
data ImportProductSetsResponse =
  ImportProductSetsResponse'
    { _ipsrReferenceImages :: !(Maybe [ReferenceImage])
    , _ipsrStatuses :: !(Maybe [Status])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ImportProductSetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ipsrReferenceImages'
--
-- * 'ipsrStatuses'
importProductSetsResponse
    :: ImportProductSetsResponse
importProductSetsResponse =
  ImportProductSetsResponse'
    {_ipsrReferenceImages = Nothing, _ipsrStatuses = Nothing}


-- | The list of reference_images that are imported successfully.
ipsrReferenceImages :: Lens' ImportProductSetsResponse [ReferenceImage]
ipsrReferenceImages
  = lens _ipsrReferenceImages
      (\ s a -> s{_ipsrReferenceImages = a})
      . _Default
      . _Coerce

-- | The rpc status for each ImportProductSet request, including both
-- successes and errors. The number of statuses here matches the number of
-- lines in the csv file, and statuses[i] stores the success or failure
-- status of processing the i-th line of the csv, starting from line 0.
ipsrStatuses :: Lens' ImportProductSetsResponse [Status]
ipsrStatuses
  = lens _ipsrStatuses (\ s a -> s{_ipsrStatuses = a})
      . _Default
      . _Coerce

instance FromJSON ImportProductSetsResponse where
        parseJSON
          = withObject "ImportProductSetsResponse"
              (\ o ->
                 ImportProductSetsResponse' <$>
                   (o .:? "referenceImages" .!= mempty) <*>
                     (o .:? "statuses" .!= mempty))

instance ToJSON ImportProductSetsResponse where
        toJSON ImportProductSetsResponse'{..}
          = object
              (catMaybes
                 [("referenceImages" .=) <$> _ipsrReferenceImages,
                  ("statuses" .=) <$> _ipsrStatuses])

-- | A single symbol representation.
--
-- /See:/ 'googleCloudVisionV1p2beta1Symbol' smart constructor.
data GoogleCloudVisionV1p2beta1Symbol =
  GoogleCloudVisionV1p2beta1Symbol'
    { _gcvvsProperty :: !(Maybe GoogleCloudVisionV1p2beta1TextAnnotationTextProperty)
    , _gcvvsBoundingBox :: !(Maybe GoogleCloudVisionV1p2beta1BoundingPoly)
    , _gcvvsText :: !(Maybe Text)
    , _gcvvsConfidence :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1Symbol' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvsProperty'
--
-- * 'gcvvsBoundingBox'
--
-- * 'gcvvsText'
--
-- * 'gcvvsConfidence'
googleCloudVisionV1p2beta1Symbol
    :: GoogleCloudVisionV1p2beta1Symbol
googleCloudVisionV1p2beta1Symbol =
  GoogleCloudVisionV1p2beta1Symbol'
    { _gcvvsProperty = Nothing
    , _gcvvsBoundingBox = Nothing
    , _gcvvsText = Nothing
    , _gcvvsConfidence = Nothing
    }


-- | Additional information detected for the symbol.
gcvvsProperty :: Lens' GoogleCloudVisionV1p2beta1Symbol (Maybe GoogleCloudVisionV1p2beta1TextAnnotationTextProperty)
gcvvsProperty
  = lens _gcvvsProperty
      (\ s a -> s{_gcvvsProperty = a})

-- | The bounding box for the symbol. The vertices are in the order of
-- top-left, top-right, bottom-right, bottom-left. When a rotation of the
-- bounding box is detected the rotation is represented as around the
-- top-left corner as defined when the text is read in the \'natural\'
-- orientation. For example: * when the text is horizontal it might look
-- like: 0----1 | | 3----2 * when it\'s rotated 180 degrees around the
-- top-left corner it becomes: 2----3 | | 1----0 and the vertex order will
-- still be (0, 1, 2, 3).
gcvvsBoundingBox :: Lens' GoogleCloudVisionV1p2beta1Symbol (Maybe GoogleCloudVisionV1p2beta1BoundingPoly)
gcvvsBoundingBox
  = lens _gcvvsBoundingBox
      (\ s a -> s{_gcvvsBoundingBox = a})

-- | The actual UTF-8 representation of the symbol.
gcvvsText :: Lens' GoogleCloudVisionV1p2beta1Symbol (Maybe Text)
gcvvsText
  = lens _gcvvsText (\ s a -> s{_gcvvsText = a})

-- | Confidence of the OCR results for the symbol. Range [0, 1].
gcvvsConfidence :: Lens' GoogleCloudVisionV1p2beta1Symbol (Maybe Double)
gcvvsConfidence
  = lens _gcvvsConfidence
      (\ s a -> s{_gcvvsConfidence = a})
      . mapping _Coerce

instance FromJSON GoogleCloudVisionV1p2beta1Symbol
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p2beta1Symbol"
              (\ o ->
                 GoogleCloudVisionV1p2beta1Symbol' <$>
                   (o .:? "property") <*> (o .:? "boundingBox") <*>
                     (o .:? "text")
                     <*> (o .:? "confidence"))

instance ToJSON GoogleCloudVisionV1p2beta1Symbol
         where
        toJSON GoogleCloudVisionV1p2beta1Symbol'{..}
          = object
              (catMaybes
                 [("property" .=) <$> _gcvvsProperty,
                  ("boundingBox" .=) <$> _gcvvsBoundingBox,
                  ("text" .=) <$> _gcvvsText,
                  ("confidence" .=) <$> _gcvvsConfidence])

-- | Structural unit of text representing a number of words in certain order.
--
-- /See:/ 'googleCloudVisionV1p2beta1Paragraph' smart constructor.
data GoogleCloudVisionV1p2beta1Paragraph =
  GoogleCloudVisionV1p2beta1Paragraph'
    { _gcvvpProperty :: !(Maybe GoogleCloudVisionV1p2beta1TextAnnotationTextProperty)
    , _gcvvpBoundingBox :: !(Maybe GoogleCloudVisionV1p2beta1BoundingPoly)
    , _gcvvpConfidence :: !(Maybe (Textual Double))
    , _gcvvpWords :: !(Maybe [GoogleCloudVisionV1p2beta1Word])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1Paragraph' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvpProperty'
--
-- * 'gcvvpBoundingBox'
--
-- * 'gcvvpConfidence'
--
-- * 'gcvvpWords'
googleCloudVisionV1p2beta1Paragraph
    :: GoogleCloudVisionV1p2beta1Paragraph
googleCloudVisionV1p2beta1Paragraph =
  GoogleCloudVisionV1p2beta1Paragraph'
    { _gcvvpProperty = Nothing
    , _gcvvpBoundingBox = Nothing
    , _gcvvpConfidence = Nothing
    , _gcvvpWords = Nothing
    }


-- | Additional information detected for the paragraph.
gcvvpProperty :: Lens' GoogleCloudVisionV1p2beta1Paragraph (Maybe GoogleCloudVisionV1p2beta1TextAnnotationTextProperty)
gcvvpProperty
  = lens _gcvvpProperty
      (\ s a -> s{_gcvvpProperty = a})

-- | The bounding box for the paragraph. The vertices are in the order of
-- top-left, top-right, bottom-right, bottom-left. When a rotation of the
-- bounding box is detected the rotation is represented as around the
-- top-left corner as defined when the text is read in the \'natural\'
-- orientation. For example: * when the text is horizontal it might look
-- like: 0----1 | | 3----2 * when it\'s rotated 180 degrees around the
-- top-left corner it becomes: 2----3 | | 1----0 and the vertex order will
-- still be (0, 1, 2, 3).
gcvvpBoundingBox :: Lens' GoogleCloudVisionV1p2beta1Paragraph (Maybe GoogleCloudVisionV1p2beta1BoundingPoly)
gcvvpBoundingBox
  = lens _gcvvpBoundingBox
      (\ s a -> s{_gcvvpBoundingBox = a})

-- | Confidence of the OCR results for the paragraph. Range [0, 1].
gcvvpConfidence :: Lens' GoogleCloudVisionV1p2beta1Paragraph (Maybe Double)
gcvvpConfidence
  = lens _gcvvpConfidence
      (\ s a -> s{_gcvvpConfidence = a})
      . mapping _Coerce

-- | List of all words in this paragraph.
gcvvpWords :: Lens' GoogleCloudVisionV1p2beta1Paragraph [GoogleCloudVisionV1p2beta1Word]
gcvvpWords
  = lens _gcvvpWords (\ s a -> s{_gcvvpWords = a}) .
      _Default
      . _Coerce

instance FromJSON GoogleCloudVisionV1p2beta1Paragraph
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p2beta1Paragraph"
              (\ o ->
                 GoogleCloudVisionV1p2beta1Paragraph' <$>
                   (o .:? "property") <*> (o .:? "boundingBox") <*>
                     (o .:? "confidence")
                     <*> (o .:? "words" .!= mempty))

instance ToJSON GoogleCloudVisionV1p2beta1Paragraph
         where
        toJSON GoogleCloudVisionV1p2beta1Paragraph'{..}
          = object
              (catMaybes
                 [("property" .=) <$> _gcvvpProperty,
                  ("boundingBox" .=) <$> _gcvvpBoundingBox,
                  ("confidence" .=) <$> _gcvvpConfidence,
                  ("words" .=) <$> _gcvvpWords])

-- | The \`Status\` type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by [gRPC](https:\/\/github.com\/grpc). Each \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. You can find out more about this error model and how to work
-- with it in the [API Design
-- Guide](https:\/\/cloud.google.com\/apis\/design\/errors).
--
-- /See:/ 'status' smart constructor.
data Status =
  Status'
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode :: !(Maybe (Textual Int32))
    , _sMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Status' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sDetails'
--
-- * 'sCode'
--
-- * 'sMessage'
status
    :: Status
status = Status' {_sDetails = Nothing, _sCode = Nothing, _sMessage = Nothing}


-- | A list of messages that carry the error details. There is a common set
-- of message types for APIs to use.
sDetails :: Lens' Status [StatusDetailsItem]
sDetails
  = lens _sDetails (\ s a -> s{_sDetails = a}) .
      _Default
      . _Coerce

-- | The status code, which should be an enum value of google.rpc.Code.
sCode :: Lens' Status (Maybe Int32)
sCode
  = lens _sCode (\ s a -> s{_sCode = a}) .
      mapping _Coerce

-- | A developer-facing error message, which should be in English. Any
-- user-facing error message should be localized and sent in the
-- google.rpc.Status.details field, or localized by the client.
sMessage :: Lens' Status (Maybe Text)
sMessage = lens _sMessage (\ s a -> s{_sMessage = a})

instance FromJSON Status where
        parseJSON
          = withObject "Status"
              (\ o ->
                 Status' <$>
                   (o .:? "details" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON Status where
        toJSON Status'{..}
          = object
              (catMaybes
                 [("details" .=) <$> _sDetails,
                  ("code" .=) <$> _sCode,
                  ("message" .=) <$> _sMessage])

-- | A face annotation object contains the results of face detection.
--
-- /See:/ 'googleCloudVisionV1p2beta1FaceAnnotation' smart constructor.
data GoogleCloudVisionV1p2beta1FaceAnnotation =
  GoogleCloudVisionV1p2beta1FaceAnnotation'
    { _gcvvfaTiltAngle :: !(Maybe (Textual Double))
    , _gcvvfaBlurredLikelihood :: !(Maybe GoogleCloudVisionV1p2beta1FaceAnnotationBlurredLikelihood)
    , _gcvvfaBoundingPoly :: !(Maybe GoogleCloudVisionV1p2beta1BoundingPoly)
    , _gcvvfaSurpriseLikelihood :: !(Maybe GoogleCloudVisionV1p2beta1FaceAnnotationSurpriseLikelihood)
    , _gcvvfaLandmarkingConfidence :: !(Maybe (Textual Double))
    , _gcvvfaPanAngle :: !(Maybe (Textual Double))
    , _gcvvfaRollAngle :: !(Maybe (Textual Double))
    , _gcvvfaUnderExposedLikelihood :: !(Maybe GoogleCloudVisionV1p2beta1FaceAnnotationUnderExposedLikelihood)
    , _gcvvfaFdBoundingPoly :: !(Maybe GoogleCloudVisionV1p2beta1BoundingPoly)
    , _gcvvfaAngerLikelihood :: !(Maybe GoogleCloudVisionV1p2beta1FaceAnnotationAngerLikelihood)
    , _gcvvfaDetectionConfidence :: !(Maybe (Textual Double))
    , _gcvvfaHeadwearLikelihood :: !(Maybe GoogleCloudVisionV1p2beta1FaceAnnotationHeadwearLikelihood)
    , _gcvvfaSorrowLikelihood :: !(Maybe GoogleCloudVisionV1p2beta1FaceAnnotationSorrowLikelihood)
    , _gcvvfaJoyLikelihood :: !(Maybe GoogleCloudVisionV1p2beta1FaceAnnotationJoyLikelihood)
    , _gcvvfaLandmarks :: !(Maybe [GoogleCloudVisionV1p2beta1FaceAnnotationLandmark])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1FaceAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvfaTiltAngle'
--
-- * 'gcvvfaBlurredLikelihood'
--
-- * 'gcvvfaBoundingPoly'
--
-- * 'gcvvfaSurpriseLikelihood'
--
-- * 'gcvvfaLandmarkingConfidence'
--
-- * 'gcvvfaPanAngle'
--
-- * 'gcvvfaRollAngle'
--
-- * 'gcvvfaUnderExposedLikelihood'
--
-- * 'gcvvfaFdBoundingPoly'
--
-- * 'gcvvfaAngerLikelihood'
--
-- * 'gcvvfaDetectionConfidence'
--
-- * 'gcvvfaHeadwearLikelihood'
--
-- * 'gcvvfaSorrowLikelihood'
--
-- * 'gcvvfaJoyLikelihood'
--
-- * 'gcvvfaLandmarks'
googleCloudVisionV1p2beta1FaceAnnotation
    :: GoogleCloudVisionV1p2beta1FaceAnnotation
googleCloudVisionV1p2beta1FaceAnnotation =
  GoogleCloudVisionV1p2beta1FaceAnnotation'
    { _gcvvfaTiltAngle = Nothing
    , _gcvvfaBlurredLikelihood = Nothing
    , _gcvvfaBoundingPoly = Nothing
    , _gcvvfaSurpriseLikelihood = Nothing
    , _gcvvfaLandmarkingConfidence = Nothing
    , _gcvvfaPanAngle = Nothing
    , _gcvvfaRollAngle = Nothing
    , _gcvvfaUnderExposedLikelihood = Nothing
    , _gcvvfaFdBoundingPoly = Nothing
    , _gcvvfaAngerLikelihood = Nothing
    , _gcvvfaDetectionConfidence = Nothing
    , _gcvvfaHeadwearLikelihood = Nothing
    , _gcvvfaSorrowLikelihood = Nothing
    , _gcvvfaJoyLikelihood = Nothing
    , _gcvvfaLandmarks = Nothing
    }


-- | Pitch angle, which indicates the upwards\/downwards angle that the face
-- is pointing relative to the image\'s horizontal plane. Range [-180,180].
gcvvfaTiltAngle :: Lens' GoogleCloudVisionV1p2beta1FaceAnnotation (Maybe Double)
gcvvfaTiltAngle
  = lens _gcvvfaTiltAngle
      (\ s a -> s{_gcvvfaTiltAngle = a})
      . mapping _Coerce

-- | Blurred likelihood.
gcvvfaBlurredLikelihood :: Lens' GoogleCloudVisionV1p2beta1FaceAnnotation (Maybe GoogleCloudVisionV1p2beta1FaceAnnotationBlurredLikelihood)
gcvvfaBlurredLikelihood
  = lens _gcvvfaBlurredLikelihood
      (\ s a -> s{_gcvvfaBlurredLikelihood = a})

-- | The bounding polygon around the face. The coordinates of the bounding
-- box are in the original image\'s scale. The bounding box is computed to
-- \"frame\" the face in accordance with human expectations. It is based on
-- the landmarker results. Note that one or more x and\/or y coordinates
-- may not be generated in the \`BoundingPoly\` (the polygon will be
-- unbounded) if only a partial face appears in the image to be annotated.
gcvvfaBoundingPoly :: Lens' GoogleCloudVisionV1p2beta1FaceAnnotation (Maybe GoogleCloudVisionV1p2beta1BoundingPoly)
gcvvfaBoundingPoly
  = lens _gcvvfaBoundingPoly
      (\ s a -> s{_gcvvfaBoundingPoly = a})

-- | Surprise likelihood.
gcvvfaSurpriseLikelihood :: Lens' GoogleCloudVisionV1p2beta1FaceAnnotation (Maybe GoogleCloudVisionV1p2beta1FaceAnnotationSurpriseLikelihood)
gcvvfaSurpriseLikelihood
  = lens _gcvvfaSurpriseLikelihood
      (\ s a -> s{_gcvvfaSurpriseLikelihood = a})

-- | Face landmarking confidence. Range [0, 1].
gcvvfaLandmarkingConfidence :: Lens' GoogleCloudVisionV1p2beta1FaceAnnotation (Maybe Double)
gcvvfaLandmarkingConfidence
  = lens _gcvvfaLandmarkingConfidence
      (\ s a -> s{_gcvvfaLandmarkingConfidence = a})
      . mapping _Coerce

-- | Yaw angle, which indicates the leftward\/rightward angle that the face
-- is pointing relative to the vertical plane perpendicular to the image.
-- Range [-180,180].
gcvvfaPanAngle :: Lens' GoogleCloudVisionV1p2beta1FaceAnnotation (Maybe Double)
gcvvfaPanAngle
  = lens _gcvvfaPanAngle
      (\ s a -> s{_gcvvfaPanAngle = a})
      . mapping _Coerce

-- | Roll angle, which indicates the amount of clockwise\/anti-clockwise
-- rotation of the face relative to the image vertical about the axis
-- perpendicular to the face. Range [-180,180].
gcvvfaRollAngle :: Lens' GoogleCloudVisionV1p2beta1FaceAnnotation (Maybe Double)
gcvvfaRollAngle
  = lens _gcvvfaRollAngle
      (\ s a -> s{_gcvvfaRollAngle = a})
      . mapping _Coerce

-- | Under-exposed likelihood.
gcvvfaUnderExposedLikelihood :: Lens' GoogleCloudVisionV1p2beta1FaceAnnotation (Maybe GoogleCloudVisionV1p2beta1FaceAnnotationUnderExposedLikelihood)
gcvvfaUnderExposedLikelihood
  = lens _gcvvfaUnderExposedLikelihood
      (\ s a -> s{_gcvvfaUnderExposedLikelihood = a})

-- | The \`fd_bounding_poly\` bounding polygon is tighter than the
-- \`boundingPoly\`, and encloses only the skin part of the face.
-- Typically, it is used to eliminate the face from any image analysis that
-- detects the \"amount of skin\" visible in an image. It is not based on
-- the landmarker results, only on the initial face detection, hence the fd
-- (face detection) prefix.
gcvvfaFdBoundingPoly :: Lens' GoogleCloudVisionV1p2beta1FaceAnnotation (Maybe GoogleCloudVisionV1p2beta1BoundingPoly)
gcvvfaFdBoundingPoly
  = lens _gcvvfaFdBoundingPoly
      (\ s a -> s{_gcvvfaFdBoundingPoly = a})

-- | Anger likelihood.
gcvvfaAngerLikelihood :: Lens' GoogleCloudVisionV1p2beta1FaceAnnotation (Maybe GoogleCloudVisionV1p2beta1FaceAnnotationAngerLikelihood)
gcvvfaAngerLikelihood
  = lens _gcvvfaAngerLikelihood
      (\ s a -> s{_gcvvfaAngerLikelihood = a})

-- | Detection confidence. Range [0, 1].
gcvvfaDetectionConfidence :: Lens' GoogleCloudVisionV1p2beta1FaceAnnotation (Maybe Double)
gcvvfaDetectionConfidence
  = lens _gcvvfaDetectionConfidence
      (\ s a -> s{_gcvvfaDetectionConfidence = a})
      . mapping _Coerce

-- | Headwear likelihood.
gcvvfaHeadwearLikelihood :: Lens' GoogleCloudVisionV1p2beta1FaceAnnotation (Maybe GoogleCloudVisionV1p2beta1FaceAnnotationHeadwearLikelihood)
gcvvfaHeadwearLikelihood
  = lens _gcvvfaHeadwearLikelihood
      (\ s a -> s{_gcvvfaHeadwearLikelihood = a})

-- | Sorrow likelihood.
gcvvfaSorrowLikelihood :: Lens' GoogleCloudVisionV1p2beta1FaceAnnotation (Maybe GoogleCloudVisionV1p2beta1FaceAnnotationSorrowLikelihood)
gcvvfaSorrowLikelihood
  = lens _gcvvfaSorrowLikelihood
      (\ s a -> s{_gcvvfaSorrowLikelihood = a})

-- | Joy likelihood.
gcvvfaJoyLikelihood :: Lens' GoogleCloudVisionV1p2beta1FaceAnnotation (Maybe GoogleCloudVisionV1p2beta1FaceAnnotationJoyLikelihood)
gcvvfaJoyLikelihood
  = lens _gcvvfaJoyLikelihood
      (\ s a -> s{_gcvvfaJoyLikelihood = a})

-- | Detected face landmarks.
gcvvfaLandmarks :: Lens' GoogleCloudVisionV1p2beta1FaceAnnotation [GoogleCloudVisionV1p2beta1FaceAnnotationLandmark]
gcvvfaLandmarks
  = lens _gcvvfaLandmarks
      (\ s a -> s{_gcvvfaLandmarks = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p2beta1FaceAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p2beta1FaceAnnotation"
              (\ o ->
                 GoogleCloudVisionV1p2beta1FaceAnnotation' <$>
                   (o .:? "tiltAngle") <*> (o .:? "blurredLikelihood")
                     <*> (o .:? "boundingPoly")
                     <*> (o .:? "surpriseLikelihood")
                     <*> (o .:? "landmarkingConfidence")
                     <*> (o .:? "panAngle")
                     <*> (o .:? "rollAngle")
                     <*> (o .:? "underExposedLikelihood")
                     <*> (o .:? "fdBoundingPoly")
                     <*> (o .:? "angerLikelihood")
                     <*> (o .:? "detectionConfidence")
                     <*> (o .:? "headwearLikelihood")
                     <*> (o .:? "sorrowLikelihood")
                     <*> (o .:? "joyLikelihood")
                     <*> (o .:? "landmarks" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p2beta1FaceAnnotation
         where
        toJSON GoogleCloudVisionV1p2beta1FaceAnnotation'{..}
          = object
              (catMaybes
                 [("tiltAngle" .=) <$> _gcvvfaTiltAngle,
                  ("blurredLikelihood" .=) <$>
                    _gcvvfaBlurredLikelihood,
                  ("boundingPoly" .=) <$> _gcvvfaBoundingPoly,
                  ("surpriseLikelihood" .=) <$>
                    _gcvvfaSurpriseLikelihood,
                  ("landmarkingConfidence" .=) <$>
                    _gcvvfaLandmarkingConfidence,
                  ("panAngle" .=) <$> _gcvvfaPanAngle,
                  ("rollAngle" .=) <$> _gcvvfaRollAngle,
                  ("underExposedLikelihood" .=) <$>
                    _gcvvfaUnderExposedLikelihood,
                  ("fdBoundingPoly" .=) <$> _gcvvfaFdBoundingPoly,
                  ("angerLikelihood" .=) <$> _gcvvfaAngerLikelihood,
                  ("detectionConfidence" .=) <$>
                    _gcvvfaDetectionConfidence,
                  ("headwearLikelihood" .=) <$>
                    _gcvvfaHeadwearLikelihood,
                  ("sorrowLikelihood" .=) <$> _gcvvfaSorrowLikelihood,
                  ("joyLikelihood" .=) <$> _gcvvfaJoyLikelihood,
                  ("landmarks" .=) <$> _gcvvfaLandmarks])

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
--
-- /See:/ 'operationSchema' smart constructor.
newtype OperationSchema =
  OperationSchema'
    { _osAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationSchema' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osAddtional'
operationSchema
    :: HashMap Text JSONValue -- ^ 'osAddtional'
    -> OperationSchema
operationSchema pOsAddtional_ =
  OperationSchema' {_osAddtional = _Coerce # pOsAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
osAddtional :: Lens' OperationSchema (HashMap Text JSONValue)
osAddtional
  = lens _osAddtional (\ s a -> s{_osAddtional = a}) .
      _Coerce

instance FromJSON OperationSchema where
        parseJSON
          = withObject "OperationSchema"
              (\ o -> OperationSchema' <$> (parseJSONObject o))

instance ToJSON OperationSchema where
        toJSON = toJSON . _osAddtional

-- | Set of features pertaining to the image, computed by computer vision
-- methods over safe-search verticals (for example, adult, spoof, medical,
-- violence).
--
-- /See:/ 'googleCloudVisionV1p4beta1SafeSearchAnnotation' smart constructor.
data GoogleCloudVisionV1p4beta1SafeSearchAnnotation =
  GoogleCloudVisionV1p4beta1SafeSearchAnnotation'
    { _gcvvssaSpoof :: !(Maybe GoogleCloudVisionV1p4beta1SafeSearchAnnotationSpoof)
    , _gcvvssaRacy :: !(Maybe GoogleCloudVisionV1p4beta1SafeSearchAnnotationRacy)
    , _gcvvssaAdult :: !(Maybe GoogleCloudVisionV1p4beta1SafeSearchAnnotationAdult)
    , _gcvvssaMedical :: !(Maybe GoogleCloudVisionV1p4beta1SafeSearchAnnotationMedical)
    , _gcvvssaViolence :: !(Maybe GoogleCloudVisionV1p4beta1SafeSearchAnnotationViolence)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1SafeSearchAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvssaSpoof'
--
-- * 'gcvvssaRacy'
--
-- * 'gcvvssaAdult'
--
-- * 'gcvvssaMedical'
--
-- * 'gcvvssaViolence'
googleCloudVisionV1p4beta1SafeSearchAnnotation
    :: GoogleCloudVisionV1p4beta1SafeSearchAnnotation
googleCloudVisionV1p4beta1SafeSearchAnnotation =
  GoogleCloudVisionV1p4beta1SafeSearchAnnotation'
    { _gcvvssaSpoof = Nothing
    , _gcvvssaRacy = Nothing
    , _gcvvssaAdult = Nothing
    , _gcvvssaMedical = Nothing
    , _gcvvssaViolence = Nothing
    }


-- | Spoof likelihood. The likelihood that an modification was made to the
-- image\'s canonical version to make it appear funny or offensive.
gcvvssaSpoof :: Lens' GoogleCloudVisionV1p4beta1SafeSearchAnnotation (Maybe GoogleCloudVisionV1p4beta1SafeSearchAnnotationSpoof)
gcvvssaSpoof
  = lens _gcvvssaSpoof (\ s a -> s{_gcvvssaSpoof = a})

-- | Likelihood that the request image contains racy content. Racy content
-- may include (but is not limited to) skimpy or sheer clothing,
-- strategically covered nudity, lewd or provocative poses, or close-ups of
-- sensitive body areas.
gcvvssaRacy :: Lens' GoogleCloudVisionV1p4beta1SafeSearchAnnotation (Maybe GoogleCloudVisionV1p4beta1SafeSearchAnnotationRacy)
gcvvssaRacy
  = lens _gcvvssaRacy (\ s a -> s{_gcvvssaRacy = a})

-- | Represents the adult content likelihood for the image. Adult content may
-- contain elements such as nudity, pornographic images or cartoons, or
-- sexual activities.
gcvvssaAdult :: Lens' GoogleCloudVisionV1p4beta1SafeSearchAnnotation (Maybe GoogleCloudVisionV1p4beta1SafeSearchAnnotationAdult)
gcvvssaAdult
  = lens _gcvvssaAdult (\ s a -> s{_gcvvssaAdult = a})

-- | Likelihood that this is a medical image.
gcvvssaMedical :: Lens' GoogleCloudVisionV1p4beta1SafeSearchAnnotation (Maybe GoogleCloudVisionV1p4beta1SafeSearchAnnotationMedical)
gcvvssaMedical
  = lens _gcvvssaMedical
      (\ s a -> s{_gcvvssaMedical = a})

-- | Likelihood that this image contains violent content.
gcvvssaViolence :: Lens' GoogleCloudVisionV1p4beta1SafeSearchAnnotation (Maybe GoogleCloudVisionV1p4beta1SafeSearchAnnotationViolence)
gcvvssaViolence
  = lens _gcvvssaViolence
      (\ s a -> s{_gcvvssaViolence = a})

instance FromJSON
           GoogleCloudVisionV1p4beta1SafeSearchAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p4beta1SafeSearchAnnotation"
              (\ o ->
                 GoogleCloudVisionV1p4beta1SafeSearchAnnotation' <$>
                   (o .:? "spoof") <*> (o .:? "racy") <*>
                     (o .:? "adult")
                     <*> (o .:? "medical")
                     <*> (o .:? "violence"))

instance ToJSON
           GoogleCloudVisionV1p4beta1SafeSearchAnnotation
         where
        toJSON
          GoogleCloudVisionV1p4beta1SafeSearchAnnotation'{..}
          = object
              (catMaybes
                 [("spoof" .=) <$> _gcvvssaSpoof,
                  ("racy" .=) <$> _gcvvssaRacy,
                  ("adult" .=) <$> _gcvvssaAdult,
                  ("medical" .=) <$> _gcvvssaMedical,
                  ("violence" .=) <$> _gcvvssaViolence])

-- | Single crop hint that is used to generate a new crop when serving an
-- image.
--
-- /See:/ 'googleCloudVisionV1p1beta1CropHint' smart constructor.
data GoogleCloudVisionV1p1beta1CropHint =
  GoogleCloudVisionV1p1beta1CropHint'
    { _gcvvchBoundingPoly :: !(Maybe GoogleCloudVisionV1p1beta1BoundingPoly)
    , _gcvvchConfidence :: !(Maybe (Textual Double))
    , _gcvvchImportanceFraction :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1CropHint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvchBoundingPoly'
--
-- * 'gcvvchConfidence'
--
-- * 'gcvvchImportanceFraction'
googleCloudVisionV1p1beta1CropHint
    :: GoogleCloudVisionV1p1beta1CropHint
googleCloudVisionV1p1beta1CropHint =
  GoogleCloudVisionV1p1beta1CropHint'
    { _gcvvchBoundingPoly = Nothing
    , _gcvvchConfidence = Nothing
    , _gcvvchImportanceFraction = Nothing
    }


-- | The bounding polygon for the crop region. The coordinates of the
-- bounding box are in the original image\'s scale.
gcvvchBoundingPoly :: Lens' GoogleCloudVisionV1p1beta1CropHint (Maybe GoogleCloudVisionV1p1beta1BoundingPoly)
gcvvchBoundingPoly
  = lens _gcvvchBoundingPoly
      (\ s a -> s{_gcvvchBoundingPoly = a})

-- | Confidence of this being a salient region. Range [0, 1].
gcvvchConfidence :: Lens' GoogleCloudVisionV1p1beta1CropHint (Maybe Double)
gcvvchConfidence
  = lens _gcvvchConfidence
      (\ s a -> s{_gcvvchConfidence = a})
      . mapping _Coerce

-- | Fraction of importance of this salient region with respect to the
-- original image.
gcvvchImportanceFraction :: Lens' GoogleCloudVisionV1p1beta1CropHint (Maybe Double)
gcvvchImportanceFraction
  = lens _gcvvchImportanceFraction
      (\ s a -> s{_gcvvchImportanceFraction = a})
      . mapping _Coerce

instance FromJSON GoogleCloudVisionV1p1beta1CropHint
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p1beta1CropHint"
              (\ o ->
                 GoogleCloudVisionV1p1beta1CropHint' <$>
                   (o .:? "boundingPoly") <*> (o .:? "confidence") <*>
                     (o .:? "importanceFraction"))

instance ToJSON GoogleCloudVisionV1p1beta1CropHint
         where
        toJSON GoogleCloudVisionV1p1beta1CropHint'{..}
          = object
              (catMaybes
                 [("boundingPoly" .=) <$> _gcvvchBoundingPoly,
                  ("confidence" .=) <$> _gcvvchConfidence,
                  ("importanceFraction" .=) <$>
                    _gcvvchImportanceFraction])

-- | Stores image properties, such as dominant colors.
--
-- /See:/ 'googleCloudVisionV1p2beta1ImageProperties' smart constructor.
newtype GoogleCloudVisionV1p2beta1ImageProperties =
  GoogleCloudVisionV1p2beta1ImageProperties'
    { _gcvvipDominantColors :: Maybe GoogleCloudVisionV1p2beta1DominantColorsAnnotation
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1ImageProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvipDominantColors'
googleCloudVisionV1p2beta1ImageProperties
    :: GoogleCloudVisionV1p2beta1ImageProperties
googleCloudVisionV1p2beta1ImageProperties =
  GoogleCloudVisionV1p2beta1ImageProperties' {_gcvvipDominantColors = Nothing}


-- | If present, dominant colors completed successfully.
gcvvipDominantColors :: Lens' GoogleCloudVisionV1p2beta1ImageProperties (Maybe GoogleCloudVisionV1p2beta1DominantColorsAnnotation)
gcvvipDominantColors
  = lens _gcvvipDominantColors
      (\ s a -> s{_gcvvipDominantColors = a})

instance FromJSON
           GoogleCloudVisionV1p2beta1ImageProperties
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p2beta1ImageProperties"
              (\ o ->
                 GoogleCloudVisionV1p2beta1ImageProperties' <$>
                   (o .:? "dominantColors"))

instance ToJSON
           GoogleCloudVisionV1p2beta1ImageProperties
         where
        toJSON GoogleCloudVisionV1p2beta1ImageProperties'{..}
          = object
              (catMaybes
                 [("dominantColors" .=) <$> _gcvvipDominantColors])

-- | Results for a product search request.
--
-- /See:/ 'googleCloudVisionV1p3beta1ProductSearchResults' smart constructor.
data GoogleCloudVisionV1p3beta1ProductSearchResults =
  GoogleCloudVisionV1p3beta1ProductSearchResults'
    { _gcvvpsrProductGroupedResults :: !(Maybe [GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult])
    , _gcvvpsrResults :: !(Maybe [GoogleCloudVisionV1p3beta1ProductSearchResultsResult])
    , _gcvvpsrIndexTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1ProductSearchResults' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvpsrProductGroupedResults'
--
-- * 'gcvvpsrResults'
--
-- * 'gcvvpsrIndexTime'
googleCloudVisionV1p3beta1ProductSearchResults
    :: GoogleCloudVisionV1p3beta1ProductSearchResults
googleCloudVisionV1p3beta1ProductSearchResults =
  GoogleCloudVisionV1p3beta1ProductSearchResults'
    { _gcvvpsrProductGroupedResults = Nothing
    , _gcvvpsrResults = Nothing
    , _gcvvpsrIndexTime = Nothing
    }


-- | List of results grouped by products detected in the query image. Each
-- entry corresponds to one bounding polygon in the query image, and
-- contains the matching products specific to that region. There may be
-- duplicate product matches in the union of all the per-product results.
gcvvpsrProductGroupedResults :: Lens' GoogleCloudVisionV1p3beta1ProductSearchResults [GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult]
gcvvpsrProductGroupedResults
  = lens _gcvvpsrProductGroupedResults
      (\ s a -> s{_gcvvpsrProductGroupedResults = a})
      . _Default
      . _Coerce

-- | List of results, one for each product match.
gcvvpsrResults :: Lens' GoogleCloudVisionV1p3beta1ProductSearchResults [GoogleCloudVisionV1p3beta1ProductSearchResultsResult]
gcvvpsrResults
  = lens _gcvvpsrResults
      (\ s a -> s{_gcvvpsrResults = a})
      . _Default
      . _Coerce

-- | Timestamp of the index which provided these results. Products added to
-- the product set and products removed from the product set after this
-- time are not reflected in the current results.
gcvvpsrIndexTime :: Lens' GoogleCloudVisionV1p3beta1ProductSearchResults (Maybe UTCTime)
gcvvpsrIndexTime
  = lens _gcvvpsrIndexTime
      (\ s a -> s{_gcvvpsrIndexTime = a})
      . mapping _DateTime

instance FromJSON
           GoogleCloudVisionV1p3beta1ProductSearchResults
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p3beta1ProductSearchResults"
              (\ o ->
                 GoogleCloudVisionV1p3beta1ProductSearchResults' <$>
                   (o .:? "productGroupedResults" .!= mempty) <*>
                     (o .:? "results" .!= mempty)
                     <*> (o .:? "indexTime"))

instance ToJSON
           GoogleCloudVisionV1p3beta1ProductSearchResults
         where
        toJSON
          GoogleCloudVisionV1p3beta1ProductSearchResults'{..}
          = object
              (catMaybes
                 [("productGroupedResults" .=) <$>
                    _gcvvpsrProductGroupedResults,
                  ("results" .=) <$> _gcvvpsrResults,
                  ("indexTime" .=) <$> _gcvvpsrIndexTime])

-- | The desired output location and metadata.
--
-- /See:/ 'googleCloudVisionV1p2beta1OutputConfig' smart constructor.
data GoogleCloudVisionV1p2beta1OutputConfig =
  GoogleCloudVisionV1p2beta1OutputConfig'
    { _gGcsDestination :: !(Maybe GoogleCloudVisionV1p2beta1GcsDestination)
    , _gBatchSize :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1OutputConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gGcsDestination'
--
-- * 'gBatchSize'
googleCloudVisionV1p2beta1OutputConfig
    :: GoogleCloudVisionV1p2beta1OutputConfig
googleCloudVisionV1p2beta1OutputConfig =
  GoogleCloudVisionV1p2beta1OutputConfig'
    {_gGcsDestination = Nothing, _gBatchSize = Nothing}


-- | The Google Cloud Storage location to write the output(s) to.
gGcsDestination :: Lens' GoogleCloudVisionV1p2beta1OutputConfig (Maybe GoogleCloudVisionV1p2beta1GcsDestination)
gGcsDestination
  = lens _gGcsDestination
      (\ s a -> s{_gGcsDestination = a})

-- | The max number of response protos to put into each output JSON file on
-- Google Cloud Storage. The valid range is [1, 100]. If not specified, the
-- default value is 20. For example, for one pdf file with 100 pages, 100
-- response protos will be generated. If \`batch_size\` = 20, then 5 json
-- files each containing 20 response protos will be written under the
-- prefix \`gcs_destination\`.\`uri\`. Currently, batch_size only applies
-- to GcsDestination, with potential future support for other output
-- configurations.
gBatchSize :: Lens' GoogleCloudVisionV1p2beta1OutputConfig (Maybe Int32)
gBatchSize
  = lens _gBatchSize (\ s a -> s{_gBatchSize = a}) .
      mapping _Coerce

instance FromJSON
           GoogleCloudVisionV1p2beta1OutputConfig
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p2beta1OutputConfig"
              (\ o ->
                 GoogleCloudVisionV1p2beta1OutputConfig' <$>
                   (o .:? "gcsDestination") <*> (o .:? "batchSize"))

instance ToJSON
           GoogleCloudVisionV1p2beta1OutputConfig
         where
        toJSON GoogleCloudVisionV1p2beta1OutputConfig'{..}
          = object
              (catMaybes
                 [("gcsDestination" .=) <$> _gGcsDestination,
                  ("batchSize" .=) <$> _gBatchSize])

-- | Detected language for a structural component.
--
-- /See:/ 'googleCloudVisionV1p1beta1TextAnnotationDetectedLanguage' smart constructor.
data GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage =
  GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage'
    { _gLanguageCode :: !(Maybe Text)
    , _gConfidence :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gLanguageCode'
--
-- * 'gConfidence'
googleCloudVisionV1p1beta1TextAnnotationDetectedLanguage
    :: GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage
googleCloudVisionV1p1beta1TextAnnotationDetectedLanguage =
  GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage'
    {_gLanguageCode = Nothing, _gConfidence = Nothing}


-- | The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more
-- information, see
-- http:\/\/www.unicode.org\/reports\/tr35\/#Unicode_locale_identifier.
gLanguageCode :: Lens' GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage (Maybe Text)
gLanguageCode
  = lens _gLanguageCode
      (\ s a -> s{_gLanguageCode = a})

-- | Confidence of detected language. Range [0, 1].
gConfidence :: Lens' GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage (Maybe Double)
gConfidence
  = lens _gConfidence (\ s a -> s{_gConfidence = a}) .
      mapping _Coerce

instance FromJSON
           GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage"
              (\ o ->
                 GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage'
                   <$> (o .:? "languageCode") <*> (o .:? "confidence"))

instance ToJSON
           GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage
         where
        toJSON
          GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _gLanguageCode,
                  ("confidence" .=) <$> _gConfidence])

-- | A single symbol representation.
--
-- /See:/ 'googleCloudVisionV1p1beta1Symbol' smart constructor.
data GoogleCloudVisionV1p1beta1Symbol =
  GoogleCloudVisionV1p1beta1Symbol'
    { _gooProperty :: !(Maybe GoogleCloudVisionV1p1beta1TextAnnotationTextProperty)
    , _gooBoundingBox :: !(Maybe GoogleCloudVisionV1p1beta1BoundingPoly)
    , _gooText :: !(Maybe Text)
    , _gooConfidence :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1Symbol' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooProperty'
--
-- * 'gooBoundingBox'
--
-- * 'gooText'
--
-- * 'gooConfidence'
googleCloudVisionV1p1beta1Symbol
    :: GoogleCloudVisionV1p1beta1Symbol
googleCloudVisionV1p1beta1Symbol =
  GoogleCloudVisionV1p1beta1Symbol'
    { _gooProperty = Nothing
    , _gooBoundingBox = Nothing
    , _gooText = Nothing
    , _gooConfidence = Nothing
    }


-- | Additional information detected for the symbol.
gooProperty :: Lens' GoogleCloudVisionV1p1beta1Symbol (Maybe GoogleCloudVisionV1p1beta1TextAnnotationTextProperty)
gooProperty
  = lens _gooProperty (\ s a -> s{_gooProperty = a})

-- | The bounding box for the symbol. The vertices are in the order of
-- top-left, top-right, bottom-right, bottom-left. When a rotation of the
-- bounding box is detected the rotation is represented as around the
-- top-left corner as defined when the text is read in the \'natural\'
-- orientation. For example: * when the text is horizontal it might look
-- like: 0----1 | | 3----2 * when it\'s rotated 180 degrees around the
-- top-left corner it becomes: 2----3 | | 1----0 and the vertex order will
-- still be (0, 1, 2, 3).
gooBoundingBox :: Lens' GoogleCloudVisionV1p1beta1Symbol (Maybe GoogleCloudVisionV1p1beta1BoundingPoly)
gooBoundingBox
  = lens _gooBoundingBox
      (\ s a -> s{_gooBoundingBox = a})

-- | The actual UTF-8 representation of the symbol.
gooText :: Lens' GoogleCloudVisionV1p1beta1Symbol (Maybe Text)
gooText = lens _gooText (\ s a -> s{_gooText = a})

-- | Confidence of the OCR results for the symbol. Range [0, 1].
gooConfidence :: Lens' GoogleCloudVisionV1p1beta1Symbol (Maybe Double)
gooConfidence
  = lens _gooConfidence
      (\ s a -> s{_gooConfidence = a})
      . mapping _Coerce

instance FromJSON GoogleCloudVisionV1p1beta1Symbol
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p1beta1Symbol"
              (\ o ->
                 GoogleCloudVisionV1p1beta1Symbol' <$>
                   (o .:? "property") <*> (o .:? "boundingBox") <*>
                     (o .:? "text")
                     <*> (o .:? "confidence"))

instance ToJSON GoogleCloudVisionV1p1beta1Symbol
         where
        toJSON GoogleCloudVisionV1p1beta1Symbol'{..}
          = object
              (catMaybes
                 [("property" .=) <$> _gooProperty,
                  ("boundingBox" .=) <$> _gooBoundingBox,
                  ("text" .=) <$> _gooText,
                  ("confidence" .=) <$> _gooConfidence])

-- | If an image was produced from a file (e.g. a PDF), this message gives
-- information about the source of that image.
--
-- /See:/ 'imageAnnotationContext' smart constructor.
data ImageAnnotationContext =
  ImageAnnotationContext'
    { _iacURI :: !(Maybe Text)
    , _iacPageNumber :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ImageAnnotationContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iacURI'
--
-- * 'iacPageNumber'
imageAnnotationContext
    :: ImageAnnotationContext
imageAnnotationContext =
  ImageAnnotationContext' {_iacURI = Nothing, _iacPageNumber = Nothing}


-- | The URI of the file used to produce the image.
iacURI :: Lens' ImageAnnotationContext (Maybe Text)
iacURI = lens _iacURI (\ s a -> s{_iacURI = a})

-- | If the file was a PDF or TIFF, this field gives the page number within
-- the file used to produce the image.
iacPageNumber :: Lens' ImageAnnotationContext (Maybe Int32)
iacPageNumber
  = lens _iacPageNumber
      (\ s a -> s{_iacPageNumber = a})
      . mapping _Coerce

instance FromJSON ImageAnnotationContext where
        parseJSON
          = withObject "ImageAnnotationContext"
              (\ o ->
                 ImageAnnotationContext' <$>
                   (o .:? "uri") <*> (o .:? "pageNumber"))

instance ToJSON ImageAnnotationContext where
        toJSON ImageAnnotationContext'{..}
          = object
              (catMaybes
                 [("uri" .=) <$> _iacURI,
                  ("pageNumber" .=) <$> _iacPageNumber])

-- | Single crop hint that is used to generate a new crop when serving an
-- image.
--
-- /See:/ 'googleCloudVisionV1p2beta1CropHint' smart constructor.
data GoogleCloudVisionV1p2beta1CropHint =
  GoogleCloudVisionV1p2beta1CropHint'
    { _gcvvchcBoundingPoly :: !(Maybe GoogleCloudVisionV1p2beta1BoundingPoly)
    , _gcvvchcConfidence :: !(Maybe (Textual Double))
    , _gcvvchcImportanceFraction :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1CropHint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvchcBoundingPoly'
--
-- * 'gcvvchcConfidence'
--
-- * 'gcvvchcImportanceFraction'
googleCloudVisionV1p2beta1CropHint
    :: GoogleCloudVisionV1p2beta1CropHint
googleCloudVisionV1p2beta1CropHint =
  GoogleCloudVisionV1p2beta1CropHint'
    { _gcvvchcBoundingPoly = Nothing
    , _gcvvchcConfidence = Nothing
    , _gcvvchcImportanceFraction = Nothing
    }


-- | The bounding polygon for the crop region. The coordinates of the
-- bounding box are in the original image\'s scale.
gcvvchcBoundingPoly :: Lens' GoogleCloudVisionV1p2beta1CropHint (Maybe GoogleCloudVisionV1p2beta1BoundingPoly)
gcvvchcBoundingPoly
  = lens _gcvvchcBoundingPoly
      (\ s a -> s{_gcvvchcBoundingPoly = a})

-- | Confidence of this being a salient region. Range [0, 1].
gcvvchcConfidence :: Lens' GoogleCloudVisionV1p2beta1CropHint (Maybe Double)
gcvvchcConfidence
  = lens _gcvvchcConfidence
      (\ s a -> s{_gcvvchcConfidence = a})
      . mapping _Coerce

-- | Fraction of importance of this salient region with respect to the
-- original image.
gcvvchcImportanceFraction :: Lens' GoogleCloudVisionV1p2beta1CropHint (Maybe Double)
gcvvchcImportanceFraction
  = lens _gcvvchcImportanceFraction
      (\ s a -> s{_gcvvchcImportanceFraction = a})
      . mapping _Coerce

instance FromJSON GoogleCloudVisionV1p2beta1CropHint
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p2beta1CropHint"
              (\ o ->
                 GoogleCloudVisionV1p2beta1CropHint' <$>
                   (o .:? "boundingPoly") <*> (o .:? "confidence") <*>
                     (o .:? "importanceFraction"))

instance ToJSON GoogleCloudVisionV1p2beta1CropHint
         where
        toJSON GoogleCloudVisionV1p2beta1CropHint'{..}
          = object
              (catMaybes
                 [("boundingPoly" .=) <$> _gcvvchcBoundingPoly,
                  ("confidence" .=) <$> _gcvvchcConfidence,
                  ("importanceFraction" .=) <$>
                    _gcvvchcImportanceFraction])

-- | A \`Property\` consists of a user-supplied name\/value pair.
--
-- /See:/ 'property' smart constructor.
data Property =
  Property'
    { _pUint64Value :: !(Maybe (Textual Word64))
    , _pValue :: !(Maybe Text)
    , _pName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Property' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pUint64Value'
--
-- * 'pValue'
--
-- * 'pName'
property
    :: Property
property =
  Property' {_pUint64Value = Nothing, _pValue = Nothing, _pName = Nothing}


-- | Value of numeric properties.
pUint64Value :: Lens' Property (Maybe Word64)
pUint64Value
  = lens _pUint64Value (\ s a -> s{_pUint64Value = a})
      . mapping _Coerce

-- | Value of the property.
pValue :: Lens' Property (Maybe Text)
pValue = lens _pValue (\ s a -> s{_pValue = a})

-- | Name of the property.
pName :: Lens' Property (Maybe Text)
pName = lens _pName (\ s a -> s{_pName = a})

instance FromJSON Property where
        parseJSON
          = withObject "Property"
              (\ o ->
                 Property' <$>
                   (o .:? "uint64Value") <*> (o .:? "value") <*>
                     (o .:? "name"))

instance ToJSON Property where
        toJSON Property'{..}
          = object
              (catMaybes
                 [("uint64Value" .=) <$> _pUint64Value,
                  ("value" .=) <$> _pValue, ("name" .=) <$> _pName])

-- | A Product contains ReferenceImages.
--
-- /See:/ 'googleCloudVisionV1p4beta1Product' smart constructor.
data GoogleCloudVisionV1p4beta1Product =
  GoogleCloudVisionV1p4beta1Product'
    { _gName :: !(Maybe Text)
    , _gDisplayName :: !(Maybe Text)
    , _gProductCategory :: !(Maybe Text)
    , _gProductLabels :: !(Maybe [GoogleCloudVisionV1p4beta1ProductKeyValue])
    , _gDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1Product' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gName'
--
-- * 'gDisplayName'
--
-- * 'gProductCategory'
--
-- * 'gProductLabels'
--
-- * 'gDescription'
googleCloudVisionV1p4beta1Product
    :: GoogleCloudVisionV1p4beta1Product
googleCloudVisionV1p4beta1Product =
  GoogleCloudVisionV1p4beta1Product'
    { _gName = Nothing
    , _gDisplayName = Nothing
    , _gProductCategory = Nothing
    , _gProductLabels = Nothing
    , _gDescription = Nothing
    }


-- | The resource name of the product. Format is:
-- \`projects\/PROJECT_ID\/locations\/LOC_ID\/products\/PRODUCT_ID\`. This
-- field is ignored when creating a product.
gName :: Lens' GoogleCloudVisionV1p4beta1Product (Maybe Text)
gName = lens _gName (\ s a -> s{_gName = a})

-- | The user-provided name for this Product. Must not be empty. Must be at
-- most 4096 characters long.
gDisplayName :: Lens' GoogleCloudVisionV1p4beta1Product (Maybe Text)
gDisplayName
  = lens _gDisplayName (\ s a -> s{_gDisplayName = a})

-- | Immutable. The category for the product identified by the reference
-- image. This should be one of \"homegoods-v2\", \"apparel-v2\",
-- \"toys-v2\", \"packagedgoods-v1\" or \"general-v1\". The legacy
-- categories \"homegoods\", \"apparel\", and \"toys\" are still supported,
-- but these should not be used for new products.
gProductCategory :: Lens' GoogleCloudVisionV1p4beta1Product (Maybe Text)
gProductCategory
  = lens _gProductCategory
      (\ s a -> s{_gProductCategory = a})

-- | Key-value pairs that can be attached to a product. At query time,
-- constraints can be specified based on the product_labels. Note that
-- integer values can be provided as strings, e.g. \"1199\". Only strings
-- with integer values can match a range-based restriction which is to be
-- supported soon. Multiple values can be assigned to the same key. One
-- product may have up to 500 product_labels. Notice that the total number
-- of distinct product_labels over all products in one ProductSet cannot
-- exceed 1M, otherwise the product search pipeline will refuse to work for
-- that ProductSet.
gProductLabels :: Lens' GoogleCloudVisionV1p4beta1Product [GoogleCloudVisionV1p4beta1ProductKeyValue]
gProductLabels
  = lens _gProductLabels
      (\ s a -> s{_gProductLabels = a})
      . _Default
      . _Coerce

-- | User-provided metadata to be stored with this product. Must be at most
-- 4096 characters long.
gDescription :: Lens' GoogleCloudVisionV1p4beta1Product (Maybe Text)
gDescription
  = lens _gDescription (\ s a -> s{_gDescription = a})

instance FromJSON GoogleCloudVisionV1p4beta1Product
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p4beta1Product"
              (\ o ->
                 GoogleCloudVisionV1p4beta1Product' <$>
                   (o .:? "name") <*> (o .:? "displayName") <*>
                     (o .:? "productCategory")
                     <*> (o .:? "productLabels" .!= mempty)
                     <*> (o .:? "description"))

instance ToJSON GoogleCloudVisionV1p4beta1Product
         where
        toJSON GoogleCloudVisionV1p4beta1Product'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _gName,
                  ("displayName" .=) <$> _gDisplayName,
                  ("productCategory" .=) <$> _gProductCategory,
                  ("productLabels" .=) <$> _gProductLabels,
                  ("description" .=) <$> _gDescription])

-- | Response to an async batch image annotation request.
--
-- /See:/ 'asyncBatchAnnotateImagesResponse' smart constructor.
newtype AsyncBatchAnnotateImagesResponse =
  AsyncBatchAnnotateImagesResponse'
    { _abairOutputConfig :: Maybe OutputConfig
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AsyncBatchAnnotateImagesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'abairOutputConfig'
asyncBatchAnnotateImagesResponse
    :: AsyncBatchAnnotateImagesResponse
asyncBatchAnnotateImagesResponse =
  AsyncBatchAnnotateImagesResponse' {_abairOutputConfig = Nothing}


-- | The output location and metadata from AsyncBatchAnnotateImagesRequest.
abairOutputConfig :: Lens' AsyncBatchAnnotateImagesResponse (Maybe OutputConfig)
abairOutputConfig
  = lens _abairOutputConfig
      (\ s a -> s{_abairOutputConfig = a})

instance FromJSON AsyncBatchAnnotateImagesResponse
         where
        parseJSON
          = withObject "AsyncBatchAnnotateImagesResponse"
              (\ o ->
                 AsyncBatchAnnotateImagesResponse' <$>
                   (o .:? "outputConfig"))

instance ToJSON AsyncBatchAnnotateImagesResponse
         where
        toJSON AsyncBatchAnnotateImagesResponse'{..}
          = object
              (catMaybes
                 [("outputConfig" .=) <$> _abairOutputConfig])

-- | A face annotation object contains the results of face detection.
--
-- /See:/ 'googleCloudVisionV1p1beta1FaceAnnotation' smart constructor.
data GoogleCloudVisionV1p1beta1FaceAnnotation =
  GoogleCloudVisionV1p1beta1FaceAnnotation'
    { _gTiltAngle :: !(Maybe (Textual Double))
    , _gBlurredLikelihood :: !(Maybe GoogleCloudVisionV1p1beta1FaceAnnotationBlurredLikelihood)
    , _gBoundingPoly :: !(Maybe GoogleCloudVisionV1p1beta1BoundingPoly)
    , _gSurpriseLikelihood :: !(Maybe GoogleCloudVisionV1p1beta1FaceAnnotationSurpriseLikelihood)
    , _gLandmarkingConfidence :: !(Maybe (Textual Double))
    , _gPanAngle :: !(Maybe (Textual Double))
    , _gRollAngle :: !(Maybe (Textual Double))
    , _gUnderExposedLikelihood :: !(Maybe GoogleCloudVisionV1p1beta1FaceAnnotationUnderExposedLikelihood)
    , _gFdBoundingPoly :: !(Maybe GoogleCloudVisionV1p1beta1BoundingPoly)
    , _gAngerLikelihood :: !(Maybe GoogleCloudVisionV1p1beta1FaceAnnotationAngerLikelihood)
    , _gDetectionConfidence :: !(Maybe (Textual Double))
    , _gHeadwearLikelihood :: !(Maybe GoogleCloudVisionV1p1beta1FaceAnnotationHeadwearLikelihood)
    , _gSorrowLikelihood :: !(Maybe GoogleCloudVisionV1p1beta1FaceAnnotationSorrowLikelihood)
    , _gJoyLikelihood :: !(Maybe GoogleCloudVisionV1p1beta1FaceAnnotationJoyLikelihood)
    , _gLandmarks :: !(Maybe [GoogleCloudVisionV1p1beta1FaceAnnotationLandmark])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1FaceAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gTiltAngle'
--
-- * 'gBlurredLikelihood'
--
-- * 'gBoundingPoly'
--
-- * 'gSurpriseLikelihood'
--
-- * 'gLandmarkingConfidence'
--
-- * 'gPanAngle'
--
-- * 'gRollAngle'
--
-- * 'gUnderExposedLikelihood'
--
-- * 'gFdBoundingPoly'
--
-- * 'gAngerLikelihood'
--
-- * 'gDetectionConfidence'
--
-- * 'gHeadwearLikelihood'
--
-- * 'gSorrowLikelihood'
--
-- * 'gJoyLikelihood'
--
-- * 'gLandmarks'
googleCloudVisionV1p1beta1FaceAnnotation
    :: GoogleCloudVisionV1p1beta1FaceAnnotation
googleCloudVisionV1p1beta1FaceAnnotation =
  GoogleCloudVisionV1p1beta1FaceAnnotation'
    { _gTiltAngle = Nothing
    , _gBlurredLikelihood = Nothing
    , _gBoundingPoly = Nothing
    , _gSurpriseLikelihood = Nothing
    , _gLandmarkingConfidence = Nothing
    , _gPanAngle = Nothing
    , _gRollAngle = Nothing
    , _gUnderExposedLikelihood = Nothing
    , _gFdBoundingPoly = Nothing
    , _gAngerLikelihood = Nothing
    , _gDetectionConfidence = Nothing
    , _gHeadwearLikelihood = Nothing
    , _gSorrowLikelihood = Nothing
    , _gJoyLikelihood = Nothing
    , _gLandmarks = Nothing
    }


-- | Pitch angle, which indicates the upwards\/downwards angle that the face
-- is pointing relative to the image\'s horizontal plane. Range [-180,180].
gTiltAngle :: Lens' GoogleCloudVisionV1p1beta1FaceAnnotation (Maybe Double)
gTiltAngle
  = lens _gTiltAngle (\ s a -> s{_gTiltAngle = a}) .
      mapping _Coerce

-- | Blurred likelihood.
gBlurredLikelihood :: Lens' GoogleCloudVisionV1p1beta1FaceAnnotation (Maybe GoogleCloudVisionV1p1beta1FaceAnnotationBlurredLikelihood)
gBlurredLikelihood
  = lens _gBlurredLikelihood
      (\ s a -> s{_gBlurredLikelihood = a})

-- | The bounding polygon around the face. The coordinates of the bounding
-- box are in the original image\'s scale. The bounding box is computed to
-- \"frame\" the face in accordance with human expectations. It is based on
-- the landmarker results. Note that one or more x and\/or y coordinates
-- may not be generated in the \`BoundingPoly\` (the polygon will be
-- unbounded) if only a partial face appears in the image to be annotated.
gBoundingPoly :: Lens' GoogleCloudVisionV1p1beta1FaceAnnotation (Maybe GoogleCloudVisionV1p1beta1BoundingPoly)
gBoundingPoly
  = lens _gBoundingPoly
      (\ s a -> s{_gBoundingPoly = a})

-- | Surprise likelihood.
gSurpriseLikelihood :: Lens' GoogleCloudVisionV1p1beta1FaceAnnotation (Maybe GoogleCloudVisionV1p1beta1FaceAnnotationSurpriseLikelihood)
gSurpriseLikelihood
  = lens _gSurpriseLikelihood
      (\ s a -> s{_gSurpriseLikelihood = a})

-- | Face landmarking confidence. Range [0, 1].
gLandmarkingConfidence :: Lens' GoogleCloudVisionV1p1beta1FaceAnnotation (Maybe Double)
gLandmarkingConfidence
  = lens _gLandmarkingConfidence
      (\ s a -> s{_gLandmarkingConfidence = a})
      . mapping _Coerce

-- | Yaw angle, which indicates the leftward\/rightward angle that the face
-- is pointing relative to the vertical plane perpendicular to the image.
-- Range [-180,180].
gPanAngle :: Lens' GoogleCloudVisionV1p1beta1FaceAnnotation (Maybe Double)
gPanAngle
  = lens _gPanAngle (\ s a -> s{_gPanAngle = a}) .
      mapping _Coerce

-- | Roll angle, which indicates the amount of clockwise\/anti-clockwise
-- rotation of the face relative to the image vertical about the axis
-- perpendicular to the face. Range [-180,180].
gRollAngle :: Lens' GoogleCloudVisionV1p1beta1FaceAnnotation (Maybe Double)
gRollAngle
  = lens _gRollAngle (\ s a -> s{_gRollAngle = a}) .
      mapping _Coerce

-- | Under-exposed likelihood.
gUnderExposedLikelihood :: Lens' GoogleCloudVisionV1p1beta1FaceAnnotation (Maybe GoogleCloudVisionV1p1beta1FaceAnnotationUnderExposedLikelihood)
gUnderExposedLikelihood
  = lens _gUnderExposedLikelihood
      (\ s a -> s{_gUnderExposedLikelihood = a})

-- | The \`fd_bounding_poly\` bounding polygon is tighter than the
-- \`boundingPoly\`, and encloses only the skin part of the face.
-- Typically, it is used to eliminate the face from any image analysis that
-- detects the \"amount of skin\" visible in an image. It is not based on
-- the landmarker results, only on the initial face detection, hence the fd
-- (face detection) prefix.
gFdBoundingPoly :: Lens' GoogleCloudVisionV1p1beta1FaceAnnotation (Maybe GoogleCloudVisionV1p1beta1BoundingPoly)
gFdBoundingPoly
  = lens _gFdBoundingPoly
      (\ s a -> s{_gFdBoundingPoly = a})

-- | Anger likelihood.
gAngerLikelihood :: Lens' GoogleCloudVisionV1p1beta1FaceAnnotation (Maybe GoogleCloudVisionV1p1beta1FaceAnnotationAngerLikelihood)
gAngerLikelihood
  = lens _gAngerLikelihood
      (\ s a -> s{_gAngerLikelihood = a})

-- | Detection confidence. Range [0, 1].
gDetectionConfidence :: Lens' GoogleCloudVisionV1p1beta1FaceAnnotation (Maybe Double)
gDetectionConfidence
  = lens _gDetectionConfidence
      (\ s a -> s{_gDetectionConfidence = a})
      . mapping _Coerce

-- | Headwear likelihood.
gHeadwearLikelihood :: Lens' GoogleCloudVisionV1p1beta1FaceAnnotation (Maybe GoogleCloudVisionV1p1beta1FaceAnnotationHeadwearLikelihood)
gHeadwearLikelihood
  = lens _gHeadwearLikelihood
      (\ s a -> s{_gHeadwearLikelihood = a})

-- | Sorrow likelihood.
gSorrowLikelihood :: Lens' GoogleCloudVisionV1p1beta1FaceAnnotation (Maybe GoogleCloudVisionV1p1beta1FaceAnnotationSorrowLikelihood)
gSorrowLikelihood
  = lens _gSorrowLikelihood
      (\ s a -> s{_gSorrowLikelihood = a})

-- | Joy likelihood.
gJoyLikelihood :: Lens' GoogleCloudVisionV1p1beta1FaceAnnotation (Maybe GoogleCloudVisionV1p1beta1FaceAnnotationJoyLikelihood)
gJoyLikelihood
  = lens _gJoyLikelihood
      (\ s a -> s{_gJoyLikelihood = a})

-- | Detected face landmarks.
gLandmarks :: Lens' GoogleCloudVisionV1p1beta1FaceAnnotation [GoogleCloudVisionV1p1beta1FaceAnnotationLandmark]
gLandmarks
  = lens _gLandmarks (\ s a -> s{_gLandmarks = a}) .
      _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p1beta1FaceAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p1beta1FaceAnnotation"
              (\ o ->
                 GoogleCloudVisionV1p1beta1FaceAnnotation' <$>
                   (o .:? "tiltAngle") <*> (o .:? "blurredLikelihood")
                     <*> (o .:? "boundingPoly")
                     <*> (o .:? "surpriseLikelihood")
                     <*> (o .:? "landmarkingConfidence")
                     <*> (o .:? "panAngle")
                     <*> (o .:? "rollAngle")
                     <*> (o .:? "underExposedLikelihood")
                     <*> (o .:? "fdBoundingPoly")
                     <*> (o .:? "angerLikelihood")
                     <*> (o .:? "detectionConfidence")
                     <*> (o .:? "headwearLikelihood")
                     <*> (o .:? "sorrowLikelihood")
                     <*> (o .:? "joyLikelihood")
                     <*> (o .:? "landmarks" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p1beta1FaceAnnotation
         where
        toJSON GoogleCloudVisionV1p1beta1FaceAnnotation'{..}
          = object
              (catMaybes
                 [("tiltAngle" .=) <$> _gTiltAngle,
                  ("blurredLikelihood" .=) <$> _gBlurredLikelihood,
                  ("boundingPoly" .=) <$> _gBoundingPoly,
                  ("surpriseLikelihood" .=) <$> _gSurpriseLikelihood,
                  ("landmarkingConfidence" .=) <$>
                    _gLandmarkingConfidence,
                  ("panAngle" .=) <$> _gPanAngle,
                  ("rollAngle" .=) <$> _gRollAngle,
                  ("underExposedLikelihood" .=) <$>
                    _gUnderExposedLikelihood,
                  ("fdBoundingPoly" .=) <$> _gFdBoundingPoly,
                  ("angerLikelihood" .=) <$> _gAngerLikelihood,
                  ("detectionConfidence" .=) <$> _gDetectionConfidence,
                  ("headwearLikelihood" .=) <$> _gHeadwearLikelihood,
                  ("sorrowLikelihood" .=) <$> _gSorrowLikelihood,
                  ("joyLikelihood" .=) <$> _gJoyLikelihood,
                  ("landmarks" .=) <$> _gLandmarks])

-- | The desired input location and metadata.
--
-- /See:/ 'googleCloudVisionV1p3beta1InputConfig' smart constructor.
data GoogleCloudVisionV1p3beta1InputConfig =
  GoogleCloudVisionV1p3beta1InputConfig'
    { _gcvvicGcsSource :: !(Maybe GoogleCloudVisionV1p3beta1GcsSource)
    , _gcvvicContent :: !(Maybe Bytes)
    , _gcvvicMimeType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1InputConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvicGcsSource'
--
-- * 'gcvvicContent'
--
-- * 'gcvvicMimeType'
googleCloudVisionV1p3beta1InputConfig
    :: GoogleCloudVisionV1p3beta1InputConfig
googleCloudVisionV1p3beta1InputConfig =
  GoogleCloudVisionV1p3beta1InputConfig'
    { _gcvvicGcsSource = Nothing
    , _gcvvicContent = Nothing
    , _gcvvicMimeType = Nothing
    }


-- | The Google Cloud Storage location to read the input from.
gcvvicGcsSource :: Lens' GoogleCloudVisionV1p3beta1InputConfig (Maybe GoogleCloudVisionV1p3beta1GcsSource)
gcvvicGcsSource
  = lens _gcvvicGcsSource
      (\ s a -> s{_gcvvicGcsSource = a})

-- | File content, represented as a stream of bytes. Note: As with all
-- \`bytes\` fields, protobuffers use a pure binary representation, whereas
-- JSON representations use base64. Currently, this field only works for
-- BatchAnnotateFiles requests. It does not work for
-- AsyncBatchAnnotateFiles requests.
gcvvicContent :: Lens' GoogleCloudVisionV1p3beta1InputConfig (Maybe ByteString)
gcvvicContent
  = lens _gcvvicContent
      (\ s a -> s{_gcvvicContent = a})
      . mapping _Bytes

-- | The type of the file. Currently only \"application\/pdf\",
-- \"image\/tiff\" and \"image\/gif\" are supported. Wildcards are not
-- supported.
gcvvicMimeType :: Lens' GoogleCloudVisionV1p3beta1InputConfig (Maybe Text)
gcvvicMimeType
  = lens _gcvvicMimeType
      (\ s a -> s{_gcvvicMimeType = a})

instance FromJSON
           GoogleCloudVisionV1p3beta1InputConfig
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p3beta1InputConfig"
              (\ o ->
                 GoogleCloudVisionV1p3beta1InputConfig' <$>
                   (o .:? "gcsSource") <*> (o .:? "content") <*>
                     (o .:? "mimeType"))

instance ToJSON GoogleCloudVisionV1p3beta1InputConfig
         where
        toJSON GoogleCloudVisionV1p3beta1InputConfig'{..}
          = object
              (catMaybes
                 [("gcsSource" .=) <$> _gcvvicGcsSource,
                  ("content" .=) <$> _gcvvicContent,
                  ("mimeType" .=) <$> _gcvvicMimeType])

-- | Metadata for web pages.
--
-- /See:/ 'googleCloudVisionV1p3beta1WebDetectionWebPage' smart constructor.
data GoogleCloudVisionV1p3beta1WebDetectionWebPage =
  GoogleCloudVisionV1p3beta1WebDetectionWebPage'
    { _gcvvwdwpScore :: !(Maybe (Textual Double))
    , _gcvvwdwpURL :: !(Maybe Text)
    , _gcvvwdwpPageTitle :: !(Maybe Text)
    , _gcvvwdwpPartialMatchingImages :: !(Maybe [GoogleCloudVisionV1p3beta1WebDetectionWebImage])
    , _gcvvwdwpFullMatchingImages :: !(Maybe [GoogleCloudVisionV1p3beta1WebDetectionWebImage])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1WebDetectionWebPage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvwdwpScore'
--
-- * 'gcvvwdwpURL'
--
-- * 'gcvvwdwpPageTitle'
--
-- * 'gcvvwdwpPartialMatchingImages'
--
-- * 'gcvvwdwpFullMatchingImages'
googleCloudVisionV1p3beta1WebDetectionWebPage
    :: GoogleCloudVisionV1p3beta1WebDetectionWebPage
googleCloudVisionV1p3beta1WebDetectionWebPage =
  GoogleCloudVisionV1p3beta1WebDetectionWebPage'
    { _gcvvwdwpScore = Nothing
    , _gcvvwdwpURL = Nothing
    , _gcvvwdwpPageTitle = Nothing
    , _gcvvwdwpPartialMatchingImages = Nothing
    , _gcvvwdwpFullMatchingImages = Nothing
    }


-- | (Deprecated) Overall relevancy score for the web page.
gcvvwdwpScore :: Lens' GoogleCloudVisionV1p3beta1WebDetectionWebPage (Maybe Double)
gcvvwdwpScore
  = lens _gcvvwdwpScore
      (\ s a -> s{_gcvvwdwpScore = a})
      . mapping _Coerce

-- | The result web page URL.
gcvvwdwpURL :: Lens' GoogleCloudVisionV1p3beta1WebDetectionWebPage (Maybe Text)
gcvvwdwpURL
  = lens _gcvvwdwpURL (\ s a -> s{_gcvvwdwpURL = a})

-- | Title for the web page, may contain HTML markups.
gcvvwdwpPageTitle :: Lens' GoogleCloudVisionV1p3beta1WebDetectionWebPage (Maybe Text)
gcvvwdwpPageTitle
  = lens _gcvvwdwpPageTitle
      (\ s a -> s{_gcvvwdwpPageTitle = a})

-- | Partial matching images on the page. Those images are similar enough to
-- share some key-point features. For example an original image will likely
-- have partial matching for its crops.
gcvvwdwpPartialMatchingImages :: Lens' GoogleCloudVisionV1p3beta1WebDetectionWebPage [GoogleCloudVisionV1p3beta1WebDetectionWebImage]
gcvvwdwpPartialMatchingImages
  = lens _gcvvwdwpPartialMatchingImages
      (\ s a -> s{_gcvvwdwpPartialMatchingImages = a})
      . _Default
      . _Coerce

-- | Fully matching images on the page. Can include resized copies of the
-- query image.
gcvvwdwpFullMatchingImages :: Lens' GoogleCloudVisionV1p3beta1WebDetectionWebPage [GoogleCloudVisionV1p3beta1WebDetectionWebImage]
gcvvwdwpFullMatchingImages
  = lens _gcvvwdwpFullMatchingImages
      (\ s a -> s{_gcvvwdwpFullMatchingImages = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p3beta1WebDetectionWebPage
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p3beta1WebDetectionWebPage"
              (\ o ->
                 GoogleCloudVisionV1p3beta1WebDetectionWebPage' <$>
                   (o .:? "score") <*> (o .:? "url") <*>
                     (o .:? "pageTitle")
                     <*> (o .:? "partialMatchingImages" .!= mempty)
                     <*> (o .:? "fullMatchingImages" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p3beta1WebDetectionWebPage
         where
        toJSON
          GoogleCloudVisionV1p3beta1WebDetectionWebPage'{..}
          = object
              (catMaybes
                 [("score" .=) <$> _gcvvwdwpScore,
                  ("url" .=) <$> _gcvvwdwpURL,
                  ("pageTitle" .=) <$> _gcvvwdwpPageTitle,
                  ("partialMatchingImages" .=) <$>
                    _gcvvwdwpPartialMatchingImages,
                  ("fullMatchingImages" .=) <$>
                    _gcvvwdwpFullMatchingImages])

-- | Results for a product search request.
--
-- /See:/ 'productSearchResults' smart constructor.
data ProductSearchResults =
  ProductSearchResults'
    { _psrProductGroupedResults :: !(Maybe [GroupedResult])
    , _psrResults :: !(Maybe [Result])
    , _psrIndexTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductSearchResults' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psrProductGroupedResults'
--
-- * 'psrResults'
--
-- * 'psrIndexTime'
productSearchResults
    :: ProductSearchResults
productSearchResults =
  ProductSearchResults'
    { _psrProductGroupedResults = Nothing
    , _psrResults = Nothing
    , _psrIndexTime = Nothing
    }


-- | List of results grouped by products detected in the query image. Each
-- entry corresponds to one bounding polygon in the query image, and
-- contains the matching products specific to that region. There may be
-- duplicate product matches in the union of all the per-product results.
psrProductGroupedResults :: Lens' ProductSearchResults [GroupedResult]
psrProductGroupedResults
  = lens _psrProductGroupedResults
      (\ s a -> s{_psrProductGroupedResults = a})
      . _Default
      . _Coerce

-- | List of results, one for each product match.
psrResults :: Lens' ProductSearchResults [Result]
psrResults
  = lens _psrResults (\ s a -> s{_psrResults = a}) .
      _Default
      . _Coerce

-- | Timestamp of the index which provided these results. Products added to
-- the product set and products removed from the product set after this
-- time are not reflected in the current results.
psrIndexTime :: Lens' ProductSearchResults (Maybe UTCTime)
psrIndexTime
  = lens _psrIndexTime (\ s a -> s{_psrIndexTime = a})
      . mapping _DateTime

instance FromJSON ProductSearchResults where
        parseJSON
          = withObject "ProductSearchResults"
              (\ o ->
                 ProductSearchResults' <$>
                   (o .:? "productGroupedResults" .!= mempty) <*>
                     (o .:? "results" .!= mempty)
                     <*> (o .:? "indexTime"))

instance ToJSON ProductSearchResults where
        toJSON ProductSearchResults'{..}
          = object
              (catMaybes
                 [("productGroupedResults" .=) <$>
                    _psrProductGroupedResults,
                  ("results" .=) <$> _psrResults,
                  ("indexTime" .=) <$> _psrIndexTime])

-- | Prediction for what the object in the bounding box is.
--
-- /See:/ 'googleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation' smart constructor.
data GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation =
  GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation'
    { _gooLanguageCode :: !(Maybe Text)
    , _gooScore :: !(Maybe (Textual Double))
    , _gooName :: !(Maybe Text)
    , _gooMid :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooLanguageCode'
--
-- * 'gooScore'
--
-- * 'gooName'
--
-- * 'gooMid'
googleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation
    :: GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation
googleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation =
  GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation'
    { _gooLanguageCode = Nothing
    , _gooScore = Nothing
    , _gooName = Nothing
    , _gooMid = Nothing
    }


-- | The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more
-- information, see
-- http:\/\/www.unicode.org\/reports\/tr35\/#Unicode_locale_identifier.
gooLanguageCode :: Lens' GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation (Maybe Text)
gooLanguageCode
  = lens _gooLanguageCode
      (\ s a -> s{_gooLanguageCode = a})

-- | Score of the result. Range [0, 1].
gooScore :: Lens' GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation (Maybe Double)
gooScore
  = lens _gooScore (\ s a -> s{_gooScore = a}) .
      mapping _Coerce

-- | Object name, expressed in its \`language_code\` language.
gooName :: Lens' GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation (Maybe Text)
gooName = lens _gooName (\ s a -> s{_gooName = a})

-- | Object ID that should align with EntityAnnotation mid.
gooMid :: Lens' GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation (Maybe Text)
gooMid = lens _gooMid (\ s a -> s{_gooMid = a})

instance FromJSON
           GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation"
              (\ o ->
                 GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation'
                   <$>
                   (o .:? "languageCode") <*> (o .:? "score") <*>
                     (o .:? "name")
                     <*> (o .:? "mid"))

instance ToJSON
           GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation
         where
        toJSON
          GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _gooLanguageCode,
                  ("score" .=) <$> _gooScore, ("name" .=) <$> _gooName,
                  ("mid" .=) <$> _gooMid])

-- | Request for async image annotation for a list of images.
--
-- /See:/ 'googleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest' smart constructor.
data GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest =
  GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest'
    { _gcvvabairParent :: !(Maybe Text)
    , _gcvvabairRequests :: !(Maybe [GoogleCloudVisionV1p2beta1AnnotateImageRequest])
    , _gcvvabairOutputConfig :: !(Maybe GoogleCloudVisionV1p2beta1OutputConfig)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvabairParent'
--
-- * 'gcvvabairRequests'
--
-- * 'gcvvabairOutputConfig'
googleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest
    :: GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest
googleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest =
  GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest'
    { _gcvvabairParent = Nothing
    , _gcvvabairRequests = Nothing
    , _gcvvabairOutputConfig = Nothing
    }


-- | Optional. Target project and location to make a call. Format:
-- \`projects\/{project-id}\/locations\/{location-id}\`. If no parent is
-- specified, a region will be chosen automatically. Supported
-- location-ids: \`us\`: USA country only, \`asia\`: East asia areas, like
-- Japan, Taiwan, \`eu\`: The European Union. Example:
-- \`projects\/project-A\/locations\/eu\`.
gcvvabairParent :: Lens' GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest (Maybe Text)
gcvvabairParent
  = lens _gcvvabairParent
      (\ s a -> s{_gcvvabairParent = a})

-- | Required. Individual image annotation requests for this batch.
gcvvabairRequests :: Lens' GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest [GoogleCloudVisionV1p2beta1AnnotateImageRequest]
gcvvabairRequests
  = lens _gcvvabairRequests
      (\ s a -> s{_gcvvabairRequests = a})
      . _Default
      . _Coerce

-- | Required. The desired output location and metadata (e.g. format).
gcvvabairOutputConfig :: Lens' GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest (Maybe GoogleCloudVisionV1p2beta1OutputConfig)
gcvvabairOutputConfig
  = lens _gcvvabairOutputConfig
      (\ s a -> s{_gcvvabairOutputConfig = a})

instance FromJSON
           GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest"
              (\ o ->
                 GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest'
                   <$>
                   (o .:? "parent") <*> (o .:? "requests" .!= mempty)
                     <*> (o .:? "outputConfig"))

instance ToJSON
           GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest
         where
        toJSON
          GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest'{..}
          = object
              (catMaybes
                 [("parent" .=) <$> _gcvvabairParent,
                  ("requests" .=) <$> _gcvvabairRequests,
                  ("outputConfig" .=) <$> _gcvvabairOutputConfig])

-- | Set of dominant colors and their corresponding scores.
--
-- /See:/ 'googleCloudVisionV1p4beta1DominantColorsAnnotation' smart constructor.
newtype GoogleCloudVisionV1p4beta1DominantColorsAnnotation =
  GoogleCloudVisionV1p4beta1DominantColorsAnnotation'
    { _gcvvdcaColors :: Maybe [GoogleCloudVisionV1p4beta1ColorInfo]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1DominantColorsAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvdcaColors'
googleCloudVisionV1p4beta1DominantColorsAnnotation
    :: GoogleCloudVisionV1p4beta1DominantColorsAnnotation
googleCloudVisionV1p4beta1DominantColorsAnnotation =
  GoogleCloudVisionV1p4beta1DominantColorsAnnotation' {_gcvvdcaColors = Nothing}


-- | RGB color values with their score and pixel fraction.
gcvvdcaColors :: Lens' GoogleCloudVisionV1p4beta1DominantColorsAnnotation [GoogleCloudVisionV1p4beta1ColorInfo]
gcvvdcaColors
  = lens _gcvvdcaColors
      (\ s a -> s{_gcvvdcaColors = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p4beta1DominantColorsAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p4beta1DominantColorsAnnotation"
              (\ o ->
                 GoogleCloudVisionV1p4beta1DominantColorsAnnotation'
                   <$> (o .:? "colors" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p4beta1DominantColorsAnnotation
         where
        toJSON
          GoogleCloudVisionV1p4beta1DominantColorsAnnotation'{..}
          = object
              (catMaybes [("colors" .=) <$> _gcvvdcaColors])

-- | A face-specific landmark (for example, a face feature).
--
-- /See:/ 'landmark' smart constructor.
data Landmark =
  Landmark'
    { _lType :: !(Maybe LandmarkType)
    , _lPosition :: !(Maybe Position)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Landmark' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lType'
--
-- * 'lPosition'
landmark
    :: Landmark
landmark = Landmark' {_lType = Nothing, _lPosition = Nothing}


-- | Face landmark type.
lType :: Lens' Landmark (Maybe LandmarkType)
lType = lens _lType (\ s a -> s{_lType = a})

-- | Face landmark position.
lPosition :: Lens' Landmark (Maybe Position)
lPosition
  = lens _lPosition (\ s a -> s{_lPosition = a})

instance FromJSON Landmark where
        parseJSON
          = withObject "Landmark"
              (\ o ->
                 Landmark' <$> (o .:? "type") <*> (o .:? "position"))

instance ToJSON Landmark where
        toJSON Landmark'{..}
          = object
              (catMaybes
                 [("type" .=) <$> _lType,
                  ("position" .=) <$> _lPosition])

-- | Set of features pertaining to the image, computed by computer vision
-- methods over safe-search verticals (for example, adult, spoof, medical,
-- violence).
--
-- /See:/ 'googleCloudVisionV1p2beta1SafeSearchAnnotation' smart constructor.
data GoogleCloudVisionV1p2beta1SafeSearchAnnotation =
  GoogleCloudVisionV1p2beta1SafeSearchAnnotation'
    { _gSpoof :: !(Maybe GoogleCloudVisionV1p2beta1SafeSearchAnnotationSpoof)
    , _gRacy :: !(Maybe GoogleCloudVisionV1p2beta1SafeSearchAnnotationRacy)
    , _gAdult :: !(Maybe GoogleCloudVisionV1p2beta1SafeSearchAnnotationAdult)
    , _gMedical :: !(Maybe GoogleCloudVisionV1p2beta1SafeSearchAnnotationMedical)
    , _gViolence :: !(Maybe GoogleCloudVisionV1p2beta1SafeSearchAnnotationViolence)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1SafeSearchAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gSpoof'
--
-- * 'gRacy'
--
-- * 'gAdult'
--
-- * 'gMedical'
--
-- * 'gViolence'
googleCloudVisionV1p2beta1SafeSearchAnnotation
    :: GoogleCloudVisionV1p2beta1SafeSearchAnnotation
googleCloudVisionV1p2beta1SafeSearchAnnotation =
  GoogleCloudVisionV1p2beta1SafeSearchAnnotation'
    { _gSpoof = Nothing
    , _gRacy = Nothing
    , _gAdult = Nothing
    , _gMedical = Nothing
    , _gViolence = Nothing
    }


-- | Spoof likelihood. The likelihood that an modification was made to the
-- image\'s canonical version to make it appear funny or offensive.
gSpoof :: Lens' GoogleCloudVisionV1p2beta1SafeSearchAnnotation (Maybe GoogleCloudVisionV1p2beta1SafeSearchAnnotationSpoof)
gSpoof = lens _gSpoof (\ s a -> s{_gSpoof = a})

-- | Likelihood that the request image contains racy content. Racy content
-- may include (but is not limited to) skimpy or sheer clothing,
-- strategically covered nudity, lewd or provocative poses, or close-ups of
-- sensitive body areas.
gRacy :: Lens' GoogleCloudVisionV1p2beta1SafeSearchAnnotation (Maybe GoogleCloudVisionV1p2beta1SafeSearchAnnotationRacy)
gRacy = lens _gRacy (\ s a -> s{_gRacy = a})

-- | Represents the adult content likelihood for the image. Adult content may
-- contain elements such as nudity, pornographic images or cartoons, or
-- sexual activities.
gAdult :: Lens' GoogleCloudVisionV1p2beta1SafeSearchAnnotation (Maybe GoogleCloudVisionV1p2beta1SafeSearchAnnotationAdult)
gAdult = lens _gAdult (\ s a -> s{_gAdult = a})

-- | Likelihood that this is a medical image.
gMedical :: Lens' GoogleCloudVisionV1p2beta1SafeSearchAnnotation (Maybe GoogleCloudVisionV1p2beta1SafeSearchAnnotationMedical)
gMedical = lens _gMedical (\ s a -> s{_gMedical = a})

-- | Likelihood that this image contains violent content.
gViolence :: Lens' GoogleCloudVisionV1p2beta1SafeSearchAnnotation (Maybe GoogleCloudVisionV1p2beta1SafeSearchAnnotationViolence)
gViolence
  = lens _gViolence (\ s a -> s{_gViolence = a})

instance FromJSON
           GoogleCloudVisionV1p2beta1SafeSearchAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p2beta1SafeSearchAnnotation"
              (\ o ->
                 GoogleCloudVisionV1p2beta1SafeSearchAnnotation' <$>
                   (o .:? "spoof") <*> (o .:? "racy") <*>
                     (o .:? "adult")
                     <*> (o .:? "medical")
                     <*> (o .:? "violence"))

instance ToJSON
           GoogleCloudVisionV1p2beta1SafeSearchAnnotation
         where
        toJSON
          GoogleCloudVisionV1p2beta1SafeSearchAnnotation'{..}
          = object
              (catMaybes
                 [("spoof" .=) <$> _gSpoof, ("racy" .=) <$> _gRacy,
                  ("adult" .=) <$> _gAdult,
                  ("medical" .=) <$> _gMedical,
                  ("violence" .=) <$> _gViolence])

-- | Response to an image annotation request.
--
-- /See:/ 'googleCloudVisionV1p4beta1AnnotateImageResponse' smart constructor.
data GoogleCloudVisionV1p4beta1AnnotateImageResponse =
  GoogleCloudVisionV1p4beta1AnnotateImageResponse'
    { _gLogoAnnotations :: !(Maybe [GoogleCloudVisionV1p4beta1EntityAnnotation])
    , _gProductSearchResults :: !(Maybe GoogleCloudVisionV1p4beta1ProductSearchResults)
    , _gContext :: !(Maybe GoogleCloudVisionV1p4beta1ImageAnnotationContext)
    , _gLabelAnnotations :: !(Maybe [GoogleCloudVisionV1p4beta1EntityAnnotation])
    , _gFaceAnnotations :: !(Maybe [GoogleCloudVisionV1p4beta1FaceAnnotation])
    , _gError :: !(Maybe Status)
    , _gWebDetection :: !(Maybe GoogleCloudVisionV1p4beta1WebDetection)
    , _gSafeSearchAnnotation :: !(Maybe GoogleCloudVisionV1p4beta1SafeSearchAnnotation)
    , _gLandmarkAnnotations :: !(Maybe [GoogleCloudVisionV1p4beta1EntityAnnotation])
    , _gLocalizedObjectAnnotations :: !(Maybe [GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation])
    , _gTextAnnotations :: !(Maybe [GoogleCloudVisionV1p4beta1EntityAnnotation])
    , _gCropHintsAnnotation :: !(Maybe GoogleCloudVisionV1p4beta1CropHintsAnnotation)
    , _gFullTextAnnotation :: !(Maybe GoogleCloudVisionV1p4beta1TextAnnotation)
    , _gImagePropertiesAnnotation :: !(Maybe GoogleCloudVisionV1p4beta1ImageProperties)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1AnnotateImageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gLogoAnnotations'
--
-- * 'gProductSearchResults'
--
-- * 'gContext'
--
-- * 'gLabelAnnotations'
--
-- * 'gFaceAnnotations'
--
-- * 'gError'
--
-- * 'gWebDetection'
--
-- * 'gSafeSearchAnnotation'
--
-- * 'gLandmarkAnnotations'
--
-- * 'gLocalizedObjectAnnotations'
--
-- * 'gTextAnnotations'
--
-- * 'gCropHintsAnnotation'
--
-- * 'gFullTextAnnotation'
--
-- * 'gImagePropertiesAnnotation'
googleCloudVisionV1p4beta1AnnotateImageResponse
    :: GoogleCloudVisionV1p4beta1AnnotateImageResponse
googleCloudVisionV1p4beta1AnnotateImageResponse =
  GoogleCloudVisionV1p4beta1AnnotateImageResponse'
    { _gLogoAnnotations = Nothing
    , _gProductSearchResults = Nothing
    , _gContext = Nothing
    , _gLabelAnnotations = Nothing
    , _gFaceAnnotations = Nothing
    , _gError = Nothing
    , _gWebDetection = Nothing
    , _gSafeSearchAnnotation = Nothing
    , _gLandmarkAnnotations = Nothing
    , _gLocalizedObjectAnnotations = Nothing
    , _gTextAnnotations = Nothing
    , _gCropHintsAnnotation = Nothing
    , _gFullTextAnnotation = Nothing
    , _gImagePropertiesAnnotation = Nothing
    }


-- | If present, logo detection has completed successfully.
gLogoAnnotations :: Lens' GoogleCloudVisionV1p4beta1AnnotateImageResponse [GoogleCloudVisionV1p4beta1EntityAnnotation]
gLogoAnnotations
  = lens _gLogoAnnotations
      (\ s a -> s{_gLogoAnnotations = a})
      . _Default
      . _Coerce

-- | If present, product search has completed successfully.
gProductSearchResults :: Lens' GoogleCloudVisionV1p4beta1AnnotateImageResponse (Maybe GoogleCloudVisionV1p4beta1ProductSearchResults)
gProductSearchResults
  = lens _gProductSearchResults
      (\ s a -> s{_gProductSearchResults = a})

-- | If present, contextual information is needed to understand where this
-- image comes from.
gContext :: Lens' GoogleCloudVisionV1p4beta1AnnotateImageResponse (Maybe GoogleCloudVisionV1p4beta1ImageAnnotationContext)
gContext = lens _gContext (\ s a -> s{_gContext = a})

-- | If present, label detection has completed successfully.
gLabelAnnotations :: Lens' GoogleCloudVisionV1p4beta1AnnotateImageResponse [GoogleCloudVisionV1p4beta1EntityAnnotation]
gLabelAnnotations
  = lens _gLabelAnnotations
      (\ s a -> s{_gLabelAnnotations = a})
      . _Default
      . _Coerce

-- | If present, face detection has completed successfully.
gFaceAnnotations :: Lens' GoogleCloudVisionV1p4beta1AnnotateImageResponse [GoogleCloudVisionV1p4beta1FaceAnnotation]
gFaceAnnotations
  = lens _gFaceAnnotations
      (\ s a -> s{_gFaceAnnotations = a})
      . _Default
      . _Coerce

-- | If set, represents the error message for the operation. Note that
-- filled-in image annotations are guaranteed to be correct, even when
-- \`error\` is set.
gError :: Lens' GoogleCloudVisionV1p4beta1AnnotateImageResponse (Maybe Status)
gError = lens _gError (\ s a -> s{_gError = a})

-- | If present, web detection has completed successfully.
gWebDetection :: Lens' GoogleCloudVisionV1p4beta1AnnotateImageResponse (Maybe GoogleCloudVisionV1p4beta1WebDetection)
gWebDetection
  = lens _gWebDetection
      (\ s a -> s{_gWebDetection = a})

-- | If present, safe-search annotation has completed successfully.
gSafeSearchAnnotation :: Lens' GoogleCloudVisionV1p4beta1AnnotateImageResponse (Maybe GoogleCloudVisionV1p4beta1SafeSearchAnnotation)
gSafeSearchAnnotation
  = lens _gSafeSearchAnnotation
      (\ s a -> s{_gSafeSearchAnnotation = a})

-- | If present, landmark detection has completed successfully.
gLandmarkAnnotations :: Lens' GoogleCloudVisionV1p4beta1AnnotateImageResponse [GoogleCloudVisionV1p4beta1EntityAnnotation]
gLandmarkAnnotations
  = lens _gLandmarkAnnotations
      (\ s a -> s{_gLandmarkAnnotations = a})
      . _Default
      . _Coerce

-- | If present, localized object detection has completed successfully. This
-- will be sorted descending by confidence score.
gLocalizedObjectAnnotations :: Lens' GoogleCloudVisionV1p4beta1AnnotateImageResponse [GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation]
gLocalizedObjectAnnotations
  = lens _gLocalizedObjectAnnotations
      (\ s a -> s{_gLocalizedObjectAnnotations = a})
      . _Default
      . _Coerce

-- | If present, text (OCR) detection has completed successfully.
gTextAnnotations :: Lens' GoogleCloudVisionV1p4beta1AnnotateImageResponse [GoogleCloudVisionV1p4beta1EntityAnnotation]
gTextAnnotations
  = lens _gTextAnnotations
      (\ s a -> s{_gTextAnnotations = a})
      . _Default
      . _Coerce

-- | If present, crop hints have completed successfully.
gCropHintsAnnotation :: Lens' GoogleCloudVisionV1p4beta1AnnotateImageResponse (Maybe GoogleCloudVisionV1p4beta1CropHintsAnnotation)
gCropHintsAnnotation
  = lens _gCropHintsAnnotation
      (\ s a -> s{_gCropHintsAnnotation = a})

-- | If present, text (OCR) detection or document (OCR) text detection has
-- completed successfully. This annotation provides the structural
-- hierarchy for the OCR detected text.
gFullTextAnnotation :: Lens' GoogleCloudVisionV1p4beta1AnnotateImageResponse (Maybe GoogleCloudVisionV1p4beta1TextAnnotation)
gFullTextAnnotation
  = lens _gFullTextAnnotation
      (\ s a -> s{_gFullTextAnnotation = a})

-- | If present, image properties were extracted successfully.
gImagePropertiesAnnotation :: Lens' GoogleCloudVisionV1p4beta1AnnotateImageResponse (Maybe GoogleCloudVisionV1p4beta1ImageProperties)
gImagePropertiesAnnotation
  = lens _gImagePropertiesAnnotation
      (\ s a -> s{_gImagePropertiesAnnotation = a})

instance FromJSON
           GoogleCloudVisionV1p4beta1AnnotateImageResponse
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p4beta1AnnotateImageResponse"
              (\ o ->
                 GoogleCloudVisionV1p4beta1AnnotateImageResponse' <$>
                   (o .:? "logoAnnotations" .!= mempty) <*>
                     (o .:? "productSearchResults")
                     <*> (o .:? "context")
                     <*> (o .:? "labelAnnotations" .!= mempty)
                     <*> (o .:? "faceAnnotations" .!= mempty)
                     <*> (o .:? "error")
                     <*> (o .:? "webDetection")
                     <*> (o .:? "safeSearchAnnotation")
                     <*> (o .:? "landmarkAnnotations" .!= mempty)
                     <*> (o .:? "localizedObjectAnnotations" .!= mempty)
                     <*> (o .:? "textAnnotations" .!= mempty)
                     <*> (o .:? "cropHintsAnnotation")
                     <*> (o .:? "fullTextAnnotation")
                     <*> (o .:? "imagePropertiesAnnotation"))

instance ToJSON
           GoogleCloudVisionV1p4beta1AnnotateImageResponse
         where
        toJSON
          GoogleCloudVisionV1p4beta1AnnotateImageResponse'{..}
          = object
              (catMaybes
                 [("logoAnnotations" .=) <$> _gLogoAnnotations,
                  ("productSearchResults" .=) <$>
                    _gProductSearchResults,
                  ("context" .=) <$> _gContext,
                  ("labelAnnotations" .=) <$> _gLabelAnnotations,
                  ("faceAnnotations" .=) <$> _gFaceAnnotations,
                  ("error" .=) <$> _gError,
                  ("webDetection" .=) <$> _gWebDetection,
                  ("safeSearchAnnotation" .=) <$>
                    _gSafeSearchAnnotation,
                  ("landmarkAnnotations" .=) <$> _gLandmarkAnnotations,
                  ("localizedObjectAnnotations" .=) <$>
                    _gLocalizedObjectAnnotations,
                  ("textAnnotations" .=) <$> _gTextAnnotations,
                  ("cropHintsAnnotation" .=) <$> _gCropHintsAnnotation,
                  ("fullTextAnnotation" .=) <$> _gFullTextAnnotation,
                  ("imagePropertiesAnnotation" .=) <$>
                    _gImagePropertiesAnnotation])

-- | Contains metadata for the BatchAnnotateImages operation.
--
-- /See:/ 'googleCloudVisionV1p2beta1OperationMetadata' smart constructor.
data GoogleCloudVisionV1p2beta1OperationMetadata =
  GoogleCloudVisionV1p2beta1OperationMetadata'
    { _gState :: !(Maybe GoogleCloudVisionV1p2beta1OperationMetadataState)
    , _gUpdateTime :: !(Maybe DateTime')
    , _gCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gState'
--
-- * 'gUpdateTime'
--
-- * 'gCreateTime'
googleCloudVisionV1p2beta1OperationMetadata
    :: GoogleCloudVisionV1p2beta1OperationMetadata
googleCloudVisionV1p2beta1OperationMetadata =
  GoogleCloudVisionV1p2beta1OperationMetadata'
    {_gState = Nothing, _gUpdateTime = Nothing, _gCreateTime = Nothing}


-- | Current state of the batch operation.
gState :: Lens' GoogleCloudVisionV1p2beta1OperationMetadata (Maybe GoogleCloudVisionV1p2beta1OperationMetadataState)
gState = lens _gState (\ s a -> s{_gState = a})

-- | The time when the operation result was last updated.
gUpdateTime :: Lens' GoogleCloudVisionV1p2beta1OperationMetadata (Maybe UTCTime)
gUpdateTime
  = lens _gUpdateTime (\ s a -> s{_gUpdateTime = a}) .
      mapping _DateTime

-- | The time when the batch request was received.
gCreateTime :: Lens' GoogleCloudVisionV1p2beta1OperationMetadata (Maybe UTCTime)
gCreateTime
  = lens _gCreateTime (\ s a -> s{_gCreateTime = a}) .
      mapping _DateTime

instance FromJSON
           GoogleCloudVisionV1p2beta1OperationMetadata
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p2beta1OperationMetadata"
              (\ o ->
                 GoogleCloudVisionV1p2beta1OperationMetadata' <$>
                   (o .:? "state") <*> (o .:? "updateTime") <*>
                     (o .:? "createTime"))

instance ToJSON
           GoogleCloudVisionV1p2beta1OperationMetadata
         where
        toJSON
          GoogleCloudVisionV1p2beta1OperationMetadata'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _gState,
                  ("updateTime" .=) <$> _gUpdateTime,
                  ("createTime" .=) <$> _gCreateTime])

-- | Detected language for a structural component.
--
-- /See:/ 'googleCloudVisionV1p4beta1TextAnnotationDetectedLanguage' smart constructor.
data GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage =
  GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage'
    { _gcvvtadlcLanguageCode :: !(Maybe Text)
    , _gcvvtadlcConfidence :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvtadlcLanguageCode'
--
-- * 'gcvvtadlcConfidence'
googleCloudVisionV1p4beta1TextAnnotationDetectedLanguage
    :: GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage
googleCloudVisionV1p4beta1TextAnnotationDetectedLanguage =
  GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage'
    {_gcvvtadlcLanguageCode = Nothing, _gcvvtadlcConfidence = Nothing}


-- | The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more
-- information, see
-- http:\/\/www.unicode.org\/reports\/tr35\/#Unicode_locale_identifier.
gcvvtadlcLanguageCode :: Lens' GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage (Maybe Text)
gcvvtadlcLanguageCode
  = lens _gcvvtadlcLanguageCode
      (\ s a -> s{_gcvvtadlcLanguageCode = a})

-- | Confidence of detected language. Range [0, 1].
gcvvtadlcConfidence :: Lens' GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage (Maybe Double)
gcvvtadlcConfidence
  = lens _gcvvtadlcConfidence
      (\ s a -> s{_gcvvtadlcConfidence = a})
      . mapping _Coerce

instance FromJSON
           GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage"
              (\ o ->
                 GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage'
                   <$> (o .:? "languageCode") <*> (o .:? "confidence"))

instance ToJSON
           GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage
         where
        toJSON
          GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _gcvvtadlcLanguageCode,
                  ("confidence" .=) <$> _gcvvtadlcConfidence])

-- | Set of crop hints that are used to generate new crops when serving
-- images.
--
-- /See:/ 'googleCloudVisionV1p3beta1CropHintsAnnotation' smart constructor.
newtype GoogleCloudVisionV1p3beta1CropHintsAnnotation =
  GoogleCloudVisionV1p3beta1CropHintsAnnotation'
    { _gcvvchaCropHints :: Maybe [GoogleCloudVisionV1p3beta1CropHint]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1CropHintsAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvchaCropHints'
googleCloudVisionV1p3beta1CropHintsAnnotation
    :: GoogleCloudVisionV1p3beta1CropHintsAnnotation
googleCloudVisionV1p3beta1CropHintsAnnotation =
  GoogleCloudVisionV1p3beta1CropHintsAnnotation' {_gcvvchaCropHints = Nothing}


-- | Crop hint results.
gcvvchaCropHints :: Lens' GoogleCloudVisionV1p3beta1CropHintsAnnotation [GoogleCloudVisionV1p3beta1CropHint]
gcvvchaCropHints
  = lens _gcvvchaCropHints
      (\ s a -> s{_gcvvchaCropHints = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p3beta1CropHintsAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p3beta1CropHintsAnnotation"
              (\ o ->
                 GoogleCloudVisionV1p3beta1CropHintsAnnotation' <$>
                   (o .:? "cropHints" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p3beta1CropHintsAnnotation
         where
        toJSON
          GoogleCloudVisionV1p3beta1CropHintsAnnotation'{..}
          = object
              (catMaybes [("cropHints" .=) <$> _gcvvchaCropHints])

-- | Color information consists of RGB channels, score, and the fraction of
-- the image that the color occupies in the image.
--
-- /See:/ 'googleCloudVisionV1p1beta1ColorInfo' smart constructor.
data GoogleCloudVisionV1p1beta1ColorInfo =
  GoogleCloudVisionV1p1beta1ColorInfo'
    { _gcvvciColor :: !(Maybe Color)
    , _gcvvciScore :: !(Maybe (Textual Double))
    , _gcvvciPixelFraction :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1ColorInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvciColor'
--
-- * 'gcvvciScore'
--
-- * 'gcvvciPixelFraction'
googleCloudVisionV1p1beta1ColorInfo
    :: GoogleCloudVisionV1p1beta1ColorInfo
googleCloudVisionV1p1beta1ColorInfo =
  GoogleCloudVisionV1p1beta1ColorInfo'
    { _gcvvciColor = Nothing
    , _gcvvciScore = Nothing
    , _gcvvciPixelFraction = Nothing
    }


-- | RGB components of the color.
gcvvciColor :: Lens' GoogleCloudVisionV1p1beta1ColorInfo (Maybe Color)
gcvvciColor
  = lens _gcvvciColor (\ s a -> s{_gcvvciColor = a})

-- | Image-specific score for this color. Value in range [0, 1].
gcvvciScore :: Lens' GoogleCloudVisionV1p1beta1ColorInfo (Maybe Double)
gcvvciScore
  = lens _gcvvciScore (\ s a -> s{_gcvvciScore = a}) .
      mapping _Coerce

-- | The fraction of pixels the color occupies in the image. Value in range
-- [0, 1].
gcvvciPixelFraction :: Lens' GoogleCloudVisionV1p1beta1ColorInfo (Maybe Double)
gcvvciPixelFraction
  = lens _gcvvciPixelFraction
      (\ s a -> s{_gcvvciPixelFraction = a})
      . mapping _Coerce

instance FromJSON GoogleCloudVisionV1p1beta1ColorInfo
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p1beta1ColorInfo"
              (\ o ->
                 GoogleCloudVisionV1p1beta1ColorInfo' <$>
                   (o .:? "color") <*> (o .:? "score") <*>
                     (o .:? "pixelFraction"))

instance ToJSON GoogleCloudVisionV1p1beta1ColorInfo
         where
        toJSON GoogleCloudVisionV1p1beta1ColorInfo'{..}
          = object
              (catMaybes
                 [("color" .=) <$> _gcvvciColor,
                  ("score" .=) <$> _gcvvciScore,
                  ("pixelFraction" .=) <$> _gcvvciPixelFraction])

-- | The Google Cloud Storage location where the input will be read from.
--
-- /See:/ 'gcsSource' smart constructor.
newtype GcsSource =
  GcsSource'
    { _gsURI :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GcsSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsURI'
gcsSource
    :: GcsSource
gcsSource = GcsSource' {_gsURI = Nothing}


-- | Google Cloud Storage URI for the input file. This must only be a Google
-- Cloud Storage object. Wildcards are not currently supported.
gsURI :: Lens' GcsSource (Maybe Text)
gsURI = lens _gsURI (\ s a -> s{_gsURI = a})

instance FromJSON GcsSource where
        parseJSON
          = withObject "GcsSource"
              (\ o -> GcsSource' <$> (o .:? "uri"))

instance ToJSON GcsSource where
        toJSON GcsSource'{..}
          = object (catMaybes [("uri" .=) <$> _gsURI])

-- | Detected start or end of a structural component.
--
-- /See:/ 'googleCloudVisionV1p1beta1TextAnnotationDetectedBreak' smart constructor.
data GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak =
  GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak'
    { _gcvvtadbIsPrefix :: !(Maybe Bool)
    , _gcvvtadbType :: !(Maybe GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreakType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvtadbIsPrefix'
--
-- * 'gcvvtadbType'
googleCloudVisionV1p1beta1TextAnnotationDetectedBreak
    :: GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak
googleCloudVisionV1p1beta1TextAnnotationDetectedBreak =
  GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak'
    {_gcvvtadbIsPrefix = Nothing, _gcvvtadbType = Nothing}


-- | True if break prepends the element.
gcvvtadbIsPrefix :: Lens' GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak (Maybe Bool)
gcvvtadbIsPrefix
  = lens _gcvvtadbIsPrefix
      (\ s a -> s{_gcvvtadbIsPrefix = a})

-- | Detected break type.
gcvvtadbType :: Lens' GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak (Maybe GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreakType)
gcvvtadbType
  = lens _gcvvtadbType (\ s a -> s{_gcvvtadbType = a})

instance FromJSON
           GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak"
              (\ o ->
                 GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak'
                   <$> (o .:? "isPrefix") <*> (o .:? "type"))

instance ToJSON
           GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak
         where
        toJSON
          GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak'{..}
          = object
              (catMaybes
                 [("isPrefix" .=) <$> _gcvvtadbIsPrefix,
                  ("type" .=) <$> _gcvvtadbType])

-- | Structural unit of text representing a number of words in certain order.
--
-- /See:/ 'googleCloudVisionV1p4beta1Paragraph' smart constructor.
data GoogleCloudVisionV1p4beta1Paragraph =
  GoogleCloudVisionV1p4beta1Paragraph'
    { _gcvvpcProperty :: !(Maybe GoogleCloudVisionV1p4beta1TextAnnotationTextProperty)
    , _gcvvpcBoundingBox :: !(Maybe GoogleCloudVisionV1p4beta1BoundingPoly)
    , _gcvvpcConfidence :: !(Maybe (Textual Double))
    , _gcvvpcWords :: !(Maybe [GoogleCloudVisionV1p4beta1Word])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1Paragraph' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvpcProperty'
--
-- * 'gcvvpcBoundingBox'
--
-- * 'gcvvpcConfidence'
--
-- * 'gcvvpcWords'
googleCloudVisionV1p4beta1Paragraph
    :: GoogleCloudVisionV1p4beta1Paragraph
googleCloudVisionV1p4beta1Paragraph =
  GoogleCloudVisionV1p4beta1Paragraph'
    { _gcvvpcProperty = Nothing
    , _gcvvpcBoundingBox = Nothing
    , _gcvvpcConfidence = Nothing
    , _gcvvpcWords = Nothing
    }


-- | Additional information detected for the paragraph.
gcvvpcProperty :: Lens' GoogleCloudVisionV1p4beta1Paragraph (Maybe GoogleCloudVisionV1p4beta1TextAnnotationTextProperty)
gcvvpcProperty
  = lens _gcvvpcProperty
      (\ s a -> s{_gcvvpcProperty = a})

-- | The bounding box for the paragraph. The vertices are in the order of
-- top-left, top-right, bottom-right, bottom-left. When a rotation of the
-- bounding box is detected the rotation is represented as around the
-- top-left corner as defined when the text is read in the \'natural\'
-- orientation. For example: * when the text is horizontal it might look
-- like: 0----1 | | 3----2 * when it\'s rotated 180 degrees around the
-- top-left corner it becomes: 2----3 | | 1----0 and the vertex order will
-- still be (0, 1, 2, 3).
gcvvpcBoundingBox :: Lens' GoogleCloudVisionV1p4beta1Paragraph (Maybe GoogleCloudVisionV1p4beta1BoundingPoly)
gcvvpcBoundingBox
  = lens _gcvvpcBoundingBox
      (\ s a -> s{_gcvvpcBoundingBox = a})

-- | Confidence of the OCR results for the paragraph. Range [0, 1].
gcvvpcConfidence :: Lens' GoogleCloudVisionV1p4beta1Paragraph (Maybe Double)
gcvvpcConfidence
  = lens _gcvvpcConfidence
      (\ s a -> s{_gcvvpcConfidence = a})
      . mapping _Coerce

-- | List of all words in this paragraph.
gcvvpcWords :: Lens' GoogleCloudVisionV1p4beta1Paragraph [GoogleCloudVisionV1p4beta1Word]
gcvvpcWords
  = lens _gcvvpcWords (\ s a -> s{_gcvvpcWords = a}) .
      _Default
      . _Coerce

instance FromJSON GoogleCloudVisionV1p4beta1Paragraph
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p4beta1Paragraph"
              (\ o ->
                 GoogleCloudVisionV1p4beta1Paragraph' <$>
                   (o .:? "property") <*> (o .:? "boundingBox") <*>
                     (o .:? "confidence")
                     <*> (o .:? "words" .!= mempty))

instance ToJSON GoogleCloudVisionV1p4beta1Paragraph
         where
        toJSON GoogleCloudVisionV1p4beta1Paragraph'{..}
          = object
              (catMaybes
                 [("property" .=) <$> _gcvvpcProperty,
                  ("boundingBox" .=) <$> _gcvvpcBoundingBox,
                  ("confidence" .=) <$> _gcvvpcConfidence,
                  ("words" .=) <$> _gcvvpcWords])

-- | Set of dominant colors and their corresponding scores.
--
-- /See:/ 'googleCloudVisionV1p1beta1DominantColorsAnnotation' smart constructor.
newtype GoogleCloudVisionV1p1beta1DominantColorsAnnotation =
  GoogleCloudVisionV1p1beta1DominantColorsAnnotation'
    { _gColors :: Maybe [GoogleCloudVisionV1p1beta1ColorInfo]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1DominantColorsAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gColors'
googleCloudVisionV1p1beta1DominantColorsAnnotation
    :: GoogleCloudVisionV1p1beta1DominantColorsAnnotation
googleCloudVisionV1p1beta1DominantColorsAnnotation =
  GoogleCloudVisionV1p1beta1DominantColorsAnnotation' {_gColors = Nothing}


-- | RGB color values with their score and pixel fraction.
gColors :: Lens' GoogleCloudVisionV1p1beta1DominantColorsAnnotation [GoogleCloudVisionV1p1beta1ColorInfo]
gColors
  = lens _gColors (\ s a -> s{_gColors = a}) . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p1beta1DominantColorsAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p1beta1DominantColorsAnnotation"
              (\ o ->
                 GoogleCloudVisionV1p1beta1DominantColorsAnnotation'
                   <$> (o .:? "colors" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p1beta1DominantColorsAnnotation
         where
        toJSON
          GoogleCloudVisionV1p1beta1DominantColorsAnnotation'{..}
          = object (catMaybes [("colors" .=) <$> _gColors])

-- | A single symbol representation.
--
-- /See:/ 'googleCloudVisionV1p4beta1Symbol' smart constructor.
data GoogleCloudVisionV1p4beta1Symbol =
  GoogleCloudVisionV1p4beta1Symbol'
    { _gcvvscProperty :: !(Maybe GoogleCloudVisionV1p4beta1TextAnnotationTextProperty)
    , _gcvvscBoundingBox :: !(Maybe GoogleCloudVisionV1p4beta1BoundingPoly)
    , _gcvvscText :: !(Maybe Text)
    , _gcvvscConfidence :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1Symbol' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvscProperty'
--
-- * 'gcvvscBoundingBox'
--
-- * 'gcvvscText'
--
-- * 'gcvvscConfidence'
googleCloudVisionV1p4beta1Symbol
    :: GoogleCloudVisionV1p4beta1Symbol
googleCloudVisionV1p4beta1Symbol =
  GoogleCloudVisionV1p4beta1Symbol'
    { _gcvvscProperty = Nothing
    , _gcvvscBoundingBox = Nothing
    , _gcvvscText = Nothing
    , _gcvvscConfidence = Nothing
    }


-- | Additional information detected for the symbol.
gcvvscProperty :: Lens' GoogleCloudVisionV1p4beta1Symbol (Maybe GoogleCloudVisionV1p4beta1TextAnnotationTextProperty)
gcvvscProperty
  = lens _gcvvscProperty
      (\ s a -> s{_gcvvscProperty = a})

-- | The bounding box for the symbol. The vertices are in the order of
-- top-left, top-right, bottom-right, bottom-left. When a rotation of the
-- bounding box is detected the rotation is represented as around the
-- top-left corner as defined when the text is read in the \'natural\'
-- orientation. For example: * when the text is horizontal it might look
-- like: 0----1 | | 3----2 * when it\'s rotated 180 degrees around the
-- top-left corner it becomes: 2----3 | | 1----0 and the vertex order will
-- still be (0, 1, 2, 3).
gcvvscBoundingBox :: Lens' GoogleCloudVisionV1p4beta1Symbol (Maybe GoogleCloudVisionV1p4beta1BoundingPoly)
gcvvscBoundingBox
  = lens _gcvvscBoundingBox
      (\ s a -> s{_gcvvscBoundingBox = a})

-- | The actual UTF-8 representation of the symbol.
gcvvscText :: Lens' GoogleCloudVisionV1p4beta1Symbol (Maybe Text)
gcvvscText
  = lens _gcvvscText (\ s a -> s{_gcvvscText = a})

-- | Confidence of the OCR results for the symbol. Range [0, 1].
gcvvscConfidence :: Lens' GoogleCloudVisionV1p4beta1Symbol (Maybe Double)
gcvvscConfidence
  = lens _gcvvscConfidence
      (\ s a -> s{_gcvvscConfidence = a})
      . mapping _Coerce

instance FromJSON GoogleCloudVisionV1p4beta1Symbol
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p4beta1Symbol"
              (\ o ->
                 GoogleCloudVisionV1p4beta1Symbol' <$>
                   (o .:? "property") <*> (o .:? "boundingBox") <*>
                     (o .:? "text")
                     <*> (o .:? "confidence"))

instance ToJSON GoogleCloudVisionV1p4beta1Symbol
         where
        toJSON GoogleCloudVisionV1p4beta1Symbol'{..}
          = object
              (catMaybes
                 [("property" .=) <$> _gcvvscProperty,
                  ("boundingBox" .=) <$> _gcvvscBoundingBox,
                  ("text" .=) <$> _gcvvscText,
                  ("confidence" .=) <$> _gcvvscConfidence])

-- | Response to an async batch file annotation request.
--
-- /See:/ 'googleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse' smart constructor.
newtype GoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse =
  GoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse'
    { _gResponses :: Maybe [GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gResponses'
googleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse
    :: GoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse
googleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse =
  GoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse'
    {_gResponses = Nothing}


-- | The list of file annotation responses, one for each request in
-- AsyncBatchAnnotateFilesRequest.
gResponses :: Lens' GoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse [GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse]
gResponses
  = lens _gResponses (\ s a -> s{_gResponses = a}) .
      _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse"
              (\ o ->
                 GoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse'
                   <$> (o .:? "responses" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse
         where
        toJSON
          GoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse'{..}
          = object
              (catMaybes [("responses" .=) <$> _gResponses])

-- | Label to provide extra metadata for the web detection.
--
-- /See:/ 'googleCloudVisionV1p3beta1WebDetectionWebLabel' smart constructor.
data GoogleCloudVisionV1p3beta1WebDetectionWebLabel =
  GoogleCloudVisionV1p3beta1WebDetectionWebLabel'
    { _gcvvwdwlLanguageCode :: !(Maybe Text)
    , _gcvvwdwlLabel :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1WebDetectionWebLabel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvwdwlLanguageCode'
--
-- * 'gcvvwdwlLabel'
googleCloudVisionV1p3beta1WebDetectionWebLabel
    :: GoogleCloudVisionV1p3beta1WebDetectionWebLabel
googleCloudVisionV1p3beta1WebDetectionWebLabel =
  GoogleCloudVisionV1p3beta1WebDetectionWebLabel'
    {_gcvvwdwlLanguageCode = Nothing, _gcvvwdwlLabel = Nothing}


-- | The BCP-47 language code for \`label\`, such as \"en-US\" or
-- \"sr-Latn\". For more information, see
-- http:\/\/www.unicode.org\/reports\/tr35\/#Unicode_locale_identifier.
gcvvwdwlLanguageCode :: Lens' GoogleCloudVisionV1p3beta1WebDetectionWebLabel (Maybe Text)
gcvvwdwlLanguageCode
  = lens _gcvvwdwlLanguageCode
      (\ s a -> s{_gcvvwdwlLanguageCode = a})

-- | Label for extra metadata.
gcvvwdwlLabel :: Lens' GoogleCloudVisionV1p3beta1WebDetectionWebLabel (Maybe Text)
gcvvwdwlLabel
  = lens _gcvvwdwlLabel
      (\ s a -> s{_gcvvwdwlLabel = a})

instance FromJSON
           GoogleCloudVisionV1p3beta1WebDetectionWebLabel
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p3beta1WebDetectionWebLabel"
              (\ o ->
                 GoogleCloudVisionV1p3beta1WebDetectionWebLabel' <$>
                   (o .:? "languageCode") <*> (o .:? "label"))

instance ToJSON
           GoogleCloudVisionV1p3beta1WebDetectionWebLabel
         where
        toJSON
          GoogleCloudVisionV1p3beta1WebDetectionWebLabel'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _gcvvwdwlLanguageCode,
                  ("label" .=) <$> _gcvvwdwlLabel])

-- | Stores image properties, such as dominant colors.
--
-- /See:/ 'googleCloudVisionV1p4beta1ImageProperties' smart constructor.
newtype GoogleCloudVisionV1p4beta1ImageProperties =
  GoogleCloudVisionV1p4beta1ImageProperties'
    { _gDominantColors :: Maybe GoogleCloudVisionV1p4beta1DominantColorsAnnotation
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1ImageProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gDominantColors'
googleCloudVisionV1p4beta1ImageProperties
    :: GoogleCloudVisionV1p4beta1ImageProperties
googleCloudVisionV1p4beta1ImageProperties =
  GoogleCloudVisionV1p4beta1ImageProperties' {_gDominantColors = Nothing}


-- | If present, dominant colors completed successfully.
gDominantColors :: Lens' GoogleCloudVisionV1p4beta1ImageProperties (Maybe GoogleCloudVisionV1p4beta1DominantColorsAnnotation)
gDominantColors
  = lens _gDominantColors
      (\ s a -> s{_gDominantColors = a})

instance FromJSON
           GoogleCloudVisionV1p4beta1ImageProperties
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p4beta1ImageProperties"
              (\ o ->
                 GoogleCloudVisionV1p4beta1ImageProperties' <$>
                   (o .:? "dominantColors"))

instance ToJSON
           GoogleCloudVisionV1p4beta1ImageProperties
         where
        toJSON GoogleCloudVisionV1p4beta1ImageProperties'{..}
          = object
              (catMaybes
                 [("dominantColors" .=) <$> _gDominantColors])

-- | Image context and\/or feature-specific parameters.
--
-- /See:/ 'googleCloudVisionV1p2beta1ImageContext' smart constructor.
data GoogleCloudVisionV1p2beta1ImageContext =
  GoogleCloudVisionV1p2beta1ImageContext'
    { _gcvvicCropHintsParams :: !(Maybe GoogleCloudVisionV1p2beta1CropHintsParams)
    , _gcvvicWebDetectionParams :: !(Maybe GoogleCloudVisionV1p2beta1WebDetectionParams)
    , _gcvvicProductSearchParams :: !(Maybe GoogleCloudVisionV1p2beta1ProductSearchParams)
    , _gcvvicLanguageHints :: !(Maybe [Text])
    , _gcvvicLatLongRect :: !(Maybe GoogleCloudVisionV1p2beta1LatLongRect)
    , _gcvvicTextDetectionParams :: !(Maybe GoogleCloudVisionV1p2beta1TextDetectionParams)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1ImageContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvicCropHintsParams'
--
-- * 'gcvvicWebDetectionParams'
--
-- * 'gcvvicProductSearchParams'
--
-- * 'gcvvicLanguageHints'
--
-- * 'gcvvicLatLongRect'
--
-- * 'gcvvicTextDetectionParams'
googleCloudVisionV1p2beta1ImageContext
    :: GoogleCloudVisionV1p2beta1ImageContext
googleCloudVisionV1p2beta1ImageContext =
  GoogleCloudVisionV1p2beta1ImageContext'
    { _gcvvicCropHintsParams = Nothing
    , _gcvvicWebDetectionParams = Nothing
    , _gcvvicProductSearchParams = Nothing
    , _gcvvicLanguageHints = Nothing
    , _gcvvicLatLongRect = Nothing
    , _gcvvicTextDetectionParams = Nothing
    }


-- | Parameters for crop hints annotation request.
gcvvicCropHintsParams :: Lens' GoogleCloudVisionV1p2beta1ImageContext (Maybe GoogleCloudVisionV1p2beta1CropHintsParams)
gcvvicCropHintsParams
  = lens _gcvvicCropHintsParams
      (\ s a -> s{_gcvvicCropHintsParams = a})

-- | Parameters for web detection.
gcvvicWebDetectionParams :: Lens' GoogleCloudVisionV1p2beta1ImageContext (Maybe GoogleCloudVisionV1p2beta1WebDetectionParams)
gcvvicWebDetectionParams
  = lens _gcvvicWebDetectionParams
      (\ s a -> s{_gcvvicWebDetectionParams = a})

-- | Parameters for product search.
gcvvicProductSearchParams :: Lens' GoogleCloudVisionV1p2beta1ImageContext (Maybe GoogleCloudVisionV1p2beta1ProductSearchParams)
gcvvicProductSearchParams
  = lens _gcvvicProductSearchParams
      (\ s a -> s{_gcvvicProductSearchParams = a})

-- | List of languages to use for TEXT_DETECTION. In most cases, an empty
-- value yields the best results since it enables automatic language
-- detection. For languages based on the Latin alphabet, setting
-- \`language_hints\` is not needed. In rare cases, when the language of
-- the text in the image is known, setting a hint will help get better
-- results (although it will be a significant hindrance if the hint is
-- wrong). Text detection returns an error if one or more of the specified
-- languages is not one of the [supported
-- languages](https:\/\/cloud.google.com\/vision\/docs\/languages).
gcvvicLanguageHints :: Lens' GoogleCloudVisionV1p2beta1ImageContext [Text]
gcvvicLanguageHints
  = lens _gcvvicLanguageHints
      (\ s a -> s{_gcvvicLanguageHints = a})
      . _Default
      . _Coerce

-- | Not used.
gcvvicLatLongRect :: Lens' GoogleCloudVisionV1p2beta1ImageContext (Maybe GoogleCloudVisionV1p2beta1LatLongRect)
gcvvicLatLongRect
  = lens _gcvvicLatLongRect
      (\ s a -> s{_gcvvicLatLongRect = a})

-- | Parameters for text detection and document text detection.
gcvvicTextDetectionParams :: Lens' GoogleCloudVisionV1p2beta1ImageContext (Maybe GoogleCloudVisionV1p2beta1TextDetectionParams)
gcvvicTextDetectionParams
  = lens _gcvvicTextDetectionParams
      (\ s a -> s{_gcvvicTextDetectionParams = a})

instance FromJSON
           GoogleCloudVisionV1p2beta1ImageContext
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p2beta1ImageContext"
              (\ o ->
                 GoogleCloudVisionV1p2beta1ImageContext' <$>
                   (o .:? "cropHintsParams") <*>
                     (o .:? "webDetectionParams")
                     <*> (o .:? "productSearchParams")
                     <*> (o .:? "languageHints" .!= mempty)
                     <*> (o .:? "latLongRect")
                     <*> (o .:? "textDetectionParams"))

instance ToJSON
           GoogleCloudVisionV1p2beta1ImageContext
         where
        toJSON GoogleCloudVisionV1p2beta1ImageContext'{..}
          = object
              (catMaybes
                 [("cropHintsParams" .=) <$> _gcvvicCropHintsParams,
                  ("webDetectionParams" .=) <$>
                    _gcvvicWebDetectionParams,
                  ("productSearchParams" .=) <$>
                    _gcvvicProductSearchParams,
                  ("languageHints" .=) <$> _gcvvicLanguageHints,
                  ("latLongRect" .=) <$> _gcvvicLatLongRect,
                  ("textDetectionParams" .=) <$>
                    _gcvvicTextDetectionParams])

-- | Additional information detected on the structural component.
--
-- /See:/ 'textProperty' smart constructor.
data TextProperty =
  TextProperty'
    { _tpDetectedLanguages :: !(Maybe [DetectedLanguage])
    , _tpDetectedBreak :: !(Maybe DetectedBreak)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TextProperty' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpDetectedLanguages'
--
-- * 'tpDetectedBreak'
textProperty
    :: TextProperty
textProperty =
  TextProperty' {_tpDetectedLanguages = Nothing, _tpDetectedBreak = Nothing}


-- | A list of detected languages together with confidence.
tpDetectedLanguages :: Lens' TextProperty [DetectedLanguage]
tpDetectedLanguages
  = lens _tpDetectedLanguages
      (\ s a -> s{_tpDetectedLanguages = a})
      . _Default
      . _Coerce

-- | Detected start or end of a text segment.
tpDetectedBreak :: Lens' TextProperty (Maybe DetectedBreak)
tpDetectedBreak
  = lens _tpDetectedBreak
      (\ s a -> s{_tpDetectedBreak = a})

instance FromJSON TextProperty where
        parseJSON
          = withObject "TextProperty"
              (\ o ->
                 TextProperty' <$>
                   (o .:? "detectedLanguages" .!= mempty) <*>
                     (o .:? "detectedBreak"))

instance ToJSON TextProperty where
        toJSON TextProperty'{..}
          = object
              (catMaybes
                 [("detectedLanguages" .=) <$> _tpDetectedLanguages,
                  ("detectedBreak" .=) <$> _tpDetectedBreak])

-- | A face annotation object contains the results of face detection.
--
-- /See:/ 'googleCloudVisionV1p4beta1FaceAnnotation' smart constructor.
data GoogleCloudVisionV1p4beta1FaceAnnotation =
  GoogleCloudVisionV1p4beta1FaceAnnotation'
    { _gooTiltAngle :: !(Maybe (Textual Double))
    , _gooBlurredLikelihood :: !(Maybe GoogleCloudVisionV1p4beta1FaceAnnotationBlurredLikelihood)
    , _gooBoundingPoly :: !(Maybe GoogleCloudVisionV1p4beta1BoundingPoly)
    , _gooSurpriseLikelihood :: !(Maybe GoogleCloudVisionV1p4beta1FaceAnnotationSurpriseLikelihood)
    , _gooRecognitionResult :: !(Maybe [GoogleCloudVisionV1p4beta1FaceRecognitionResult])
    , _gooLandmarkingConfidence :: !(Maybe (Textual Double))
    , _gooPanAngle :: !(Maybe (Textual Double))
    , _gooRollAngle :: !(Maybe (Textual Double))
    , _gooUnderExposedLikelihood :: !(Maybe GoogleCloudVisionV1p4beta1FaceAnnotationUnderExposedLikelihood)
    , _gooFdBoundingPoly :: !(Maybe GoogleCloudVisionV1p4beta1BoundingPoly)
    , _gooAngerLikelihood :: !(Maybe GoogleCloudVisionV1p4beta1FaceAnnotationAngerLikelihood)
    , _gooDetectionConfidence :: !(Maybe (Textual Double))
    , _gooHeadwearLikelihood :: !(Maybe GoogleCloudVisionV1p4beta1FaceAnnotationHeadwearLikelihood)
    , _gooSorrowLikelihood :: !(Maybe GoogleCloudVisionV1p4beta1FaceAnnotationSorrowLikelihood)
    , _gooJoyLikelihood :: !(Maybe GoogleCloudVisionV1p4beta1FaceAnnotationJoyLikelihood)
    , _gooLandmarks :: !(Maybe [GoogleCloudVisionV1p4beta1FaceAnnotationLandmark])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1FaceAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooTiltAngle'
--
-- * 'gooBlurredLikelihood'
--
-- * 'gooBoundingPoly'
--
-- * 'gooSurpriseLikelihood'
--
-- * 'gooRecognitionResult'
--
-- * 'gooLandmarkingConfidence'
--
-- * 'gooPanAngle'
--
-- * 'gooRollAngle'
--
-- * 'gooUnderExposedLikelihood'
--
-- * 'gooFdBoundingPoly'
--
-- * 'gooAngerLikelihood'
--
-- * 'gooDetectionConfidence'
--
-- * 'gooHeadwearLikelihood'
--
-- * 'gooSorrowLikelihood'
--
-- * 'gooJoyLikelihood'
--
-- * 'gooLandmarks'
googleCloudVisionV1p4beta1FaceAnnotation
    :: GoogleCloudVisionV1p4beta1FaceAnnotation
googleCloudVisionV1p4beta1FaceAnnotation =
  GoogleCloudVisionV1p4beta1FaceAnnotation'
    { _gooTiltAngle = Nothing
    , _gooBlurredLikelihood = Nothing
    , _gooBoundingPoly = Nothing
    , _gooSurpriseLikelihood = Nothing
    , _gooRecognitionResult = Nothing
    , _gooLandmarkingConfidence = Nothing
    , _gooPanAngle = Nothing
    , _gooRollAngle = Nothing
    , _gooUnderExposedLikelihood = Nothing
    , _gooFdBoundingPoly = Nothing
    , _gooAngerLikelihood = Nothing
    , _gooDetectionConfidence = Nothing
    , _gooHeadwearLikelihood = Nothing
    , _gooSorrowLikelihood = Nothing
    , _gooJoyLikelihood = Nothing
    , _gooLandmarks = Nothing
    }


-- | Pitch angle, which indicates the upwards\/downwards angle that the face
-- is pointing relative to the image\'s horizontal plane. Range [-180,180].
gooTiltAngle :: Lens' GoogleCloudVisionV1p4beta1FaceAnnotation (Maybe Double)
gooTiltAngle
  = lens _gooTiltAngle (\ s a -> s{_gooTiltAngle = a})
      . mapping _Coerce

-- | Blurred likelihood.
gooBlurredLikelihood :: Lens' GoogleCloudVisionV1p4beta1FaceAnnotation (Maybe GoogleCloudVisionV1p4beta1FaceAnnotationBlurredLikelihood)
gooBlurredLikelihood
  = lens _gooBlurredLikelihood
      (\ s a -> s{_gooBlurredLikelihood = a})

-- | The bounding polygon around the face. The coordinates of the bounding
-- box are in the original image\'s scale. The bounding box is computed to
-- \"frame\" the face in accordance with human expectations. It is based on
-- the landmarker results. Note that one or more x and\/or y coordinates
-- may not be generated in the \`BoundingPoly\` (the polygon will be
-- unbounded) if only a partial face appears in the image to be annotated.
gooBoundingPoly :: Lens' GoogleCloudVisionV1p4beta1FaceAnnotation (Maybe GoogleCloudVisionV1p4beta1BoundingPoly)
gooBoundingPoly
  = lens _gooBoundingPoly
      (\ s a -> s{_gooBoundingPoly = a})

-- | Surprise likelihood.
gooSurpriseLikelihood :: Lens' GoogleCloudVisionV1p4beta1FaceAnnotation (Maybe GoogleCloudVisionV1p4beta1FaceAnnotationSurpriseLikelihood)
gooSurpriseLikelihood
  = lens _gooSurpriseLikelihood
      (\ s a -> s{_gooSurpriseLikelihood = a})

-- | Additional recognition information. Only computed if
-- image_context.face_recognition_params is provided, **and** a match is
-- found to a Celebrity in the input CelebritySet. This field is sorted in
-- order of decreasing confidence values.
gooRecognitionResult :: Lens' GoogleCloudVisionV1p4beta1FaceAnnotation [GoogleCloudVisionV1p4beta1FaceRecognitionResult]
gooRecognitionResult
  = lens _gooRecognitionResult
      (\ s a -> s{_gooRecognitionResult = a})
      . _Default
      . _Coerce

-- | Face landmarking confidence. Range [0, 1].
gooLandmarkingConfidence :: Lens' GoogleCloudVisionV1p4beta1FaceAnnotation (Maybe Double)
gooLandmarkingConfidence
  = lens _gooLandmarkingConfidence
      (\ s a -> s{_gooLandmarkingConfidence = a})
      . mapping _Coerce

-- | Yaw angle, which indicates the leftward\/rightward angle that the face
-- is pointing relative to the vertical plane perpendicular to the image.
-- Range [-180,180].
gooPanAngle :: Lens' GoogleCloudVisionV1p4beta1FaceAnnotation (Maybe Double)
gooPanAngle
  = lens _gooPanAngle (\ s a -> s{_gooPanAngle = a}) .
      mapping _Coerce

-- | Roll angle, which indicates the amount of clockwise\/anti-clockwise
-- rotation of the face relative to the image vertical about the axis
-- perpendicular to the face. Range [-180,180].
gooRollAngle :: Lens' GoogleCloudVisionV1p4beta1FaceAnnotation (Maybe Double)
gooRollAngle
  = lens _gooRollAngle (\ s a -> s{_gooRollAngle = a})
      . mapping _Coerce

-- | Under-exposed likelihood.
gooUnderExposedLikelihood :: Lens' GoogleCloudVisionV1p4beta1FaceAnnotation (Maybe GoogleCloudVisionV1p4beta1FaceAnnotationUnderExposedLikelihood)
gooUnderExposedLikelihood
  = lens _gooUnderExposedLikelihood
      (\ s a -> s{_gooUnderExposedLikelihood = a})

-- | The \`fd_bounding_poly\` bounding polygon is tighter than the
-- \`boundingPoly\`, and encloses only the skin part of the face.
-- Typically, it is used to eliminate the face from any image analysis that
-- detects the \"amount of skin\" visible in an image. It is not based on
-- the landmarker results, only on the initial face detection, hence the fd
-- (face detection) prefix.
gooFdBoundingPoly :: Lens' GoogleCloudVisionV1p4beta1FaceAnnotation (Maybe GoogleCloudVisionV1p4beta1BoundingPoly)
gooFdBoundingPoly
  = lens _gooFdBoundingPoly
      (\ s a -> s{_gooFdBoundingPoly = a})

-- | Anger likelihood.
gooAngerLikelihood :: Lens' GoogleCloudVisionV1p4beta1FaceAnnotation (Maybe GoogleCloudVisionV1p4beta1FaceAnnotationAngerLikelihood)
gooAngerLikelihood
  = lens _gooAngerLikelihood
      (\ s a -> s{_gooAngerLikelihood = a})

-- | Detection confidence. Range [0, 1].
gooDetectionConfidence :: Lens' GoogleCloudVisionV1p4beta1FaceAnnotation (Maybe Double)
gooDetectionConfidence
  = lens _gooDetectionConfidence
      (\ s a -> s{_gooDetectionConfidence = a})
      . mapping _Coerce

-- | Headwear likelihood.
gooHeadwearLikelihood :: Lens' GoogleCloudVisionV1p4beta1FaceAnnotation (Maybe GoogleCloudVisionV1p4beta1FaceAnnotationHeadwearLikelihood)
gooHeadwearLikelihood
  = lens _gooHeadwearLikelihood
      (\ s a -> s{_gooHeadwearLikelihood = a})

-- | Sorrow likelihood.
gooSorrowLikelihood :: Lens' GoogleCloudVisionV1p4beta1FaceAnnotation (Maybe GoogleCloudVisionV1p4beta1FaceAnnotationSorrowLikelihood)
gooSorrowLikelihood
  = lens _gooSorrowLikelihood
      (\ s a -> s{_gooSorrowLikelihood = a})

-- | Joy likelihood.
gooJoyLikelihood :: Lens' GoogleCloudVisionV1p4beta1FaceAnnotation (Maybe GoogleCloudVisionV1p4beta1FaceAnnotationJoyLikelihood)
gooJoyLikelihood
  = lens _gooJoyLikelihood
      (\ s a -> s{_gooJoyLikelihood = a})

-- | Detected face landmarks.
gooLandmarks :: Lens' GoogleCloudVisionV1p4beta1FaceAnnotation [GoogleCloudVisionV1p4beta1FaceAnnotationLandmark]
gooLandmarks
  = lens _gooLandmarks (\ s a -> s{_gooLandmarks = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p4beta1FaceAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p4beta1FaceAnnotation"
              (\ o ->
                 GoogleCloudVisionV1p4beta1FaceAnnotation' <$>
                   (o .:? "tiltAngle") <*> (o .:? "blurredLikelihood")
                     <*> (o .:? "boundingPoly")
                     <*> (o .:? "surpriseLikelihood")
                     <*> (o .:? "recognitionResult" .!= mempty)
                     <*> (o .:? "landmarkingConfidence")
                     <*> (o .:? "panAngle")
                     <*> (o .:? "rollAngle")
                     <*> (o .:? "underExposedLikelihood")
                     <*> (o .:? "fdBoundingPoly")
                     <*> (o .:? "angerLikelihood")
                     <*> (o .:? "detectionConfidence")
                     <*> (o .:? "headwearLikelihood")
                     <*> (o .:? "sorrowLikelihood")
                     <*> (o .:? "joyLikelihood")
                     <*> (o .:? "landmarks" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p4beta1FaceAnnotation
         where
        toJSON GoogleCloudVisionV1p4beta1FaceAnnotation'{..}
          = object
              (catMaybes
                 [("tiltAngle" .=) <$> _gooTiltAngle,
                  ("blurredLikelihood" .=) <$> _gooBlurredLikelihood,
                  ("boundingPoly" .=) <$> _gooBoundingPoly,
                  ("surpriseLikelihood" .=) <$> _gooSurpriseLikelihood,
                  ("recognitionResult" .=) <$> _gooRecognitionResult,
                  ("landmarkingConfidence" .=) <$>
                    _gooLandmarkingConfidence,
                  ("panAngle" .=) <$> _gooPanAngle,
                  ("rollAngle" .=) <$> _gooRollAngle,
                  ("underExposedLikelihood" .=) <$>
                    _gooUnderExposedLikelihood,
                  ("fdBoundingPoly" .=) <$> _gooFdBoundingPoly,
                  ("angerLikelihood" .=) <$> _gooAngerLikelihood,
                  ("detectionConfidence" .=) <$>
                    _gooDetectionConfidence,
                  ("headwearLikelihood" .=) <$> _gooHeadwearLikelihood,
                  ("sorrowLikelihood" .=) <$> _gooSorrowLikelihood,
                  ("joyLikelihood" .=) <$> _gooJoyLikelihood,
                  ("landmarks" .=) <$> _gooLandmarks])

-- | TextAnnotation contains a structured representation of OCR extracted
-- text. The hierarchy of an OCR extracted text structure is like this:
-- TextAnnotation -> Page -> Block -> Paragraph -> Word -> Symbol Each
-- structural component, starting from Page, may further have their own
-- properties. Properties describe detected languages, breaks etc.. Please
-- refer to the TextAnnotation.TextProperty message definition below for
-- more detail.
--
-- /See:/ 'textAnnotation' smart constructor.
data TextAnnotation =
  TextAnnotation'
    { _taText :: !(Maybe Text)
    , _taPages :: !(Maybe [Page])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TextAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'taText'
--
-- * 'taPages'
textAnnotation
    :: TextAnnotation
textAnnotation = TextAnnotation' {_taText = Nothing, _taPages = Nothing}


-- | UTF-8 text detected on the pages.
taText :: Lens' TextAnnotation (Maybe Text)
taText = lens _taText (\ s a -> s{_taText = a})

-- | List of pages detected by OCR.
taPages :: Lens' TextAnnotation [Page]
taPages
  = lens _taPages (\ s a -> s{_taPages = a}) . _Default
      . _Coerce

instance FromJSON TextAnnotation where
        parseJSON
          = withObject "TextAnnotation"
              (\ o ->
                 TextAnnotation' <$>
                   (o .:? "text") <*> (o .:? "pages" .!= mempty))

instance ToJSON TextAnnotation where
        toJSON TextAnnotation'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _taText, ("pages" .=) <$> _taPages])

-- | Information about a product.
--
-- /See:/ 'googleCloudVisionV1p3beta1ProductSearchResultsResult' smart constructor.
data GoogleCloudVisionV1p3beta1ProductSearchResultsResult =
  GoogleCloudVisionV1p3beta1ProductSearchResultsResult'
    { _gcvvpsrrImage :: !(Maybe Text)
    , _gcvvpsrrScore :: !(Maybe (Textual Double))
    , _gcvvpsrrProduct :: !(Maybe GoogleCloudVisionV1p3beta1Product)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1ProductSearchResultsResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvpsrrImage'
--
-- * 'gcvvpsrrScore'
--
-- * 'gcvvpsrrProduct'
googleCloudVisionV1p3beta1ProductSearchResultsResult
    :: GoogleCloudVisionV1p3beta1ProductSearchResultsResult
googleCloudVisionV1p3beta1ProductSearchResultsResult =
  GoogleCloudVisionV1p3beta1ProductSearchResultsResult'
    { _gcvvpsrrImage = Nothing
    , _gcvvpsrrScore = Nothing
    , _gcvvpsrrProduct = Nothing
    }


-- | The resource name of the image from the product that is the closest
-- match to the query.
gcvvpsrrImage :: Lens' GoogleCloudVisionV1p3beta1ProductSearchResultsResult (Maybe Text)
gcvvpsrrImage
  = lens _gcvvpsrrImage
      (\ s a -> s{_gcvvpsrrImage = a})

-- | A confidence level on the match, ranging from 0 (no confidence) to 1
-- (full confidence).
gcvvpsrrScore :: Lens' GoogleCloudVisionV1p3beta1ProductSearchResultsResult (Maybe Double)
gcvvpsrrScore
  = lens _gcvvpsrrScore
      (\ s a -> s{_gcvvpsrrScore = a})
      . mapping _Coerce

-- | The Product.
gcvvpsrrProduct :: Lens' GoogleCloudVisionV1p3beta1ProductSearchResultsResult (Maybe GoogleCloudVisionV1p3beta1Product)
gcvvpsrrProduct
  = lens _gcvvpsrrProduct
      (\ s a -> s{_gcvvpsrrProduct = a})

instance FromJSON
           GoogleCloudVisionV1p3beta1ProductSearchResultsResult
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p3beta1ProductSearchResultsResult"
              (\ o ->
                 GoogleCloudVisionV1p3beta1ProductSearchResultsResult'
                   <$>
                   (o .:? "image") <*> (o .:? "score") <*>
                     (o .:? "product"))

instance ToJSON
           GoogleCloudVisionV1p3beta1ProductSearchResultsResult
         where
        toJSON
          GoogleCloudVisionV1p3beta1ProductSearchResultsResult'{..}
          = object
              (catMaybes
                 [("image" .=) <$> _gcvvpsrrImage,
                  ("score" .=) <$> _gcvvpsrrScore,
                  ("product" .=) <$> _gcvvpsrrProduct])

-- | Structural unit of text representing a number of words in certain order.
--
-- /See:/ 'googleCloudVisionV1p3beta1Paragraph' smart constructor.
data GoogleCloudVisionV1p3beta1Paragraph =
  GoogleCloudVisionV1p3beta1Paragraph'
    { _ggProperty :: !(Maybe GoogleCloudVisionV1p3beta1TextAnnotationTextProperty)
    , _ggBoundingBox :: !(Maybe GoogleCloudVisionV1p3beta1BoundingPoly)
    , _ggConfidence :: !(Maybe (Textual Double))
    , _ggWords :: !(Maybe [GoogleCloudVisionV1p3beta1Word])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1Paragraph' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggProperty'
--
-- * 'ggBoundingBox'
--
-- * 'ggConfidence'
--
-- * 'ggWords'
googleCloudVisionV1p3beta1Paragraph
    :: GoogleCloudVisionV1p3beta1Paragraph
googleCloudVisionV1p3beta1Paragraph =
  GoogleCloudVisionV1p3beta1Paragraph'
    { _ggProperty = Nothing
    , _ggBoundingBox = Nothing
    , _ggConfidence = Nothing
    , _ggWords = Nothing
    }


-- | Additional information detected for the paragraph.
ggProperty :: Lens' GoogleCloudVisionV1p3beta1Paragraph (Maybe GoogleCloudVisionV1p3beta1TextAnnotationTextProperty)
ggProperty
  = lens _ggProperty (\ s a -> s{_ggProperty = a})

-- | The bounding box for the paragraph. The vertices are in the order of
-- top-left, top-right, bottom-right, bottom-left. When a rotation of the
-- bounding box is detected the rotation is represented as around the
-- top-left corner as defined when the text is read in the \'natural\'
-- orientation. For example: * when the text is horizontal it might look
-- like: 0----1 | | 3----2 * when it\'s rotated 180 degrees around the
-- top-left corner it becomes: 2----3 | | 1----0 and the vertex order will
-- still be (0, 1, 2, 3).
ggBoundingBox :: Lens' GoogleCloudVisionV1p3beta1Paragraph (Maybe GoogleCloudVisionV1p3beta1BoundingPoly)
ggBoundingBox
  = lens _ggBoundingBox
      (\ s a -> s{_ggBoundingBox = a})

-- | Confidence of the OCR results for the paragraph. Range [0, 1].
ggConfidence :: Lens' GoogleCloudVisionV1p3beta1Paragraph (Maybe Double)
ggConfidence
  = lens _ggConfidence (\ s a -> s{_ggConfidence = a})
      . mapping _Coerce

-- | List of all words in this paragraph.
ggWords :: Lens' GoogleCloudVisionV1p3beta1Paragraph [GoogleCloudVisionV1p3beta1Word]
ggWords
  = lens _ggWords (\ s a -> s{_ggWords = a}) . _Default
      . _Coerce

instance FromJSON GoogleCloudVisionV1p3beta1Paragraph
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p3beta1Paragraph"
              (\ o ->
                 GoogleCloudVisionV1p3beta1Paragraph' <$>
                   (o .:? "property") <*> (o .:? "boundingBox") <*>
                     (o .:? "confidence")
                     <*> (o .:? "words" .!= mempty))

instance ToJSON GoogleCloudVisionV1p3beta1Paragraph
         where
        toJSON GoogleCloudVisionV1p3beta1Paragraph'{..}
          = object
              (catMaybes
                 [("property" .=) <$> _ggProperty,
                  ("boundingBox" .=) <$> _ggBoundingBox,
                  ("confidence" .=) <$> _ggConfidence,
                  ("words" .=) <$> _ggWords])

-- | A vertex represents a 2D point in the image. NOTE: the normalized vertex
-- coordinates are relative to the original image and range from 0 to 1.
--
-- /See:/ 'googleCloudVisionV1p4beta1NormalizedVertex' smart constructor.
data GoogleCloudVisionV1p4beta1NormalizedVertex =
  GoogleCloudVisionV1p4beta1NormalizedVertex'
    { _gcvvnvX :: !(Maybe (Textual Double))
    , _gcvvnvY :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1NormalizedVertex' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvnvX'
--
-- * 'gcvvnvY'
googleCloudVisionV1p4beta1NormalizedVertex
    :: GoogleCloudVisionV1p4beta1NormalizedVertex
googleCloudVisionV1p4beta1NormalizedVertex =
  GoogleCloudVisionV1p4beta1NormalizedVertex'
    {_gcvvnvX = Nothing, _gcvvnvY = Nothing}


-- | X coordinate.
gcvvnvX :: Lens' GoogleCloudVisionV1p4beta1NormalizedVertex (Maybe Double)
gcvvnvX
  = lens _gcvvnvX (\ s a -> s{_gcvvnvX = a}) .
      mapping _Coerce

-- | Y coordinate.
gcvvnvY :: Lens' GoogleCloudVisionV1p4beta1NormalizedVertex (Maybe Double)
gcvvnvY
  = lens _gcvvnvY (\ s a -> s{_gcvvnvY = a}) .
      mapping _Coerce

instance FromJSON
           GoogleCloudVisionV1p4beta1NormalizedVertex
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p4beta1NormalizedVertex"
              (\ o ->
                 GoogleCloudVisionV1p4beta1NormalizedVertex' <$>
                   (o .:? "x") <*> (o .:? "y"))

instance ToJSON
           GoogleCloudVisionV1p4beta1NormalizedVertex
         where
        toJSON
          GoogleCloudVisionV1p4beta1NormalizedVertex'{..}
          = object
              (catMaybes
                 [("x" .=) <$> _gcvvnvX, ("y" .=) <$> _gcvvnvY])

-- | Entity deduced from similar images on the Internet.
--
-- /See:/ 'googleCloudVisionV1p1beta1WebDetectionWebEntity' smart constructor.
data GoogleCloudVisionV1p1beta1WebDetectionWebEntity =
  GoogleCloudVisionV1p1beta1WebDetectionWebEntity'
    { _gcvvwdweScore :: !(Maybe (Textual Double))
    , _gcvvwdweEntityId :: !(Maybe Text)
    , _gcvvwdweDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1WebDetectionWebEntity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvwdweScore'
--
-- * 'gcvvwdweEntityId'
--
-- * 'gcvvwdweDescription'
googleCloudVisionV1p1beta1WebDetectionWebEntity
    :: GoogleCloudVisionV1p1beta1WebDetectionWebEntity
googleCloudVisionV1p1beta1WebDetectionWebEntity =
  GoogleCloudVisionV1p1beta1WebDetectionWebEntity'
    { _gcvvwdweScore = Nothing
    , _gcvvwdweEntityId = Nothing
    , _gcvvwdweDescription = Nothing
    }


-- | Overall relevancy score for the entity. Not normalized and not
-- comparable across different image queries.
gcvvwdweScore :: Lens' GoogleCloudVisionV1p1beta1WebDetectionWebEntity (Maybe Double)
gcvvwdweScore
  = lens _gcvvwdweScore
      (\ s a -> s{_gcvvwdweScore = a})
      . mapping _Coerce

-- | Opaque entity ID.
gcvvwdweEntityId :: Lens' GoogleCloudVisionV1p1beta1WebDetectionWebEntity (Maybe Text)
gcvvwdweEntityId
  = lens _gcvvwdweEntityId
      (\ s a -> s{_gcvvwdweEntityId = a})

-- | Canonical description of the entity, in English.
gcvvwdweDescription :: Lens' GoogleCloudVisionV1p1beta1WebDetectionWebEntity (Maybe Text)
gcvvwdweDescription
  = lens _gcvvwdweDescription
      (\ s a -> s{_gcvvwdweDescription = a})

instance FromJSON
           GoogleCloudVisionV1p1beta1WebDetectionWebEntity
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p1beta1WebDetectionWebEntity"
              (\ o ->
                 GoogleCloudVisionV1p1beta1WebDetectionWebEntity' <$>
                   (o .:? "score") <*> (o .:? "entityId") <*>
                     (o .:? "description"))

instance ToJSON
           GoogleCloudVisionV1p1beta1WebDetectionWebEntity
         where
        toJSON
          GoogleCloudVisionV1p1beta1WebDetectionWebEntity'{..}
          = object
              (catMaybes
                 [("score" .=) <$> _gcvvwdweScore,
                  ("entityId" .=) <$> _gcvvwdweEntityId,
                  ("description" .=) <$> _gcvvwdweDescription])

-- | Response to a single file annotation request. A file may contain one or
-- more images, which individually have their own responses.
--
-- /See:/ 'googleCloudVisionV1p2beta1AnnotateFileResponse' smart constructor.
data GoogleCloudVisionV1p2beta1AnnotateFileResponse =
  GoogleCloudVisionV1p2beta1AnnotateFileResponse'
    { _gcvvafrResponses :: !(Maybe [GoogleCloudVisionV1p2beta1AnnotateImageResponse])
    , _gcvvafrError :: !(Maybe Status)
    , _gcvvafrInputConfig :: !(Maybe GoogleCloudVisionV1p2beta1InputConfig)
    , _gcvvafrTotalPages :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1AnnotateFileResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvafrResponses'
--
-- * 'gcvvafrError'
--
-- * 'gcvvafrInputConfig'
--
-- * 'gcvvafrTotalPages'
googleCloudVisionV1p2beta1AnnotateFileResponse
    :: GoogleCloudVisionV1p2beta1AnnotateFileResponse
googleCloudVisionV1p2beta1AnnotateFileResponse =
  GoogleCloudVisionV1p2beta1AnnotateFileResponse'
    { _gcvvafrResponses = Nothing
    , _gcvvafrError = Nothing
    , _gcvvafrInputConfig = Nothing
    , _gcvvafrTotalPages = Nothing
    }


-- | Individual responses to images found within the file. This field will be
-- empty if the \`error\` field is set.
gcvvafrResponses :: Lens' GoogleCloudVisionV1p2beta1AnnotateFileResponse [GoogleCloudVisionV1p2beta1AnnotateImageResponse]
gcvvafrResponses
  = lens _gcvvafrResponses
      (\ s a -> s{_gcvvafrResponses = a})
      . _Default
      . _Coerce

-- | If set, represents the error message for the failed request. The
-- \`responses\` field will not be set in this case.
gcvvafrError :: Lens' GoogleCloudVisionV1p2beta1AnnotateFileResponse (Maybe Status)
gcvvafrError
  = lens _gcvvafrError (\ s a -> s{_gcvvafrError = a})

-- | Information about the file for which this response is generated.
gcvvafrInputConfig :: Lens' GoogleCloudVisionV1p2beta1AnnotateFileResponse (Maybe GoogleCloudVisionV1p2beta1InputConfig)
gcvvafrInputConfig
  = lens _gcvvafrInputConfig
      (\ s a -> s{_gcvvafrInputConfig = a})

-- | This field gives the total number of pages in the file.
gcvvafrTotalPages :: Lens' GoogleCloudVisionV1p2beta1AnnotateFileResponse (Maybe Int32)
gcvvafrTotalPages
  = lens _gcvvafrTotalPages
      (\ s a -> s{_gcvvafrTotalPages = a})
      . mapping _Coerce

instance FromJSON
           GoogleCloudVisionV1p2beta1AnnotateFileResponse
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p2beta1AnnotateFileResponse"
              (\ o ->
                 GoogleCloudVisionV1p2beta1AnnotateFileResponse' <$>
                   (o .:? "responses" .!= mempty) <*> (o .:? "error")
                     <*> (o .:? "inputConfig")
                     <*> (o .:? "totalPages"))

instance ToJSON
           GoogleCloudVisionV1p2beta1AnnotateFileResponse
         where
        toJSON
          GoogleCloudVisionV1p2beta1AnnotateFileResponse'{..}
          = object
              (catMaybes
                 [("responses" .=) <$> _gcvvafrResponses,
                  ("error" .=) <$> _gcvvafrError,
                  ("inputConfig" .=) <$> _gcvvafrInputConfig,
                  ("totalPages" .=) <$> _gcvvafrTotalPages])

-- | A word representation.
--
-- /See:/ 'googleCloudVisionV1p3beta1Word' smart constructor.
data GoogleCloudVisionV1p3beta1Word =
  GoogleCloudVisionV1p3beta1Word'
    { _gcvvwProperty :: !(Maybe GoogleCloudVisionV1p3beta1TextAnnotationTextProperty)
    , _gcvvwBoundingBox :: !(Maybe GoogleCloudVisionV1p3beta1BoundingPoly)
    , _gcvvwSymbols :: !(Maybe [GoogleCloudVisionV1p3beta1Symbol])
    , _gcvvwConfidence :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1Word' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvwProperty'
--
-- * 'gcvvwBoundingBox'
--
-- * 'gcvvwSymbols'
--
-- * 'gcvvwConfidence'
googleCloudVisionV1p3beta1Word
    :: GoogleCloudVisionV1p3beta1Word
googleCloudVisionV1p3beta1Word =
  GoogleCloudVisionV1p3beta1Word'
    { _gcvvwProperty = Nothing
    , _gcvvwBoundingBox = Nothing
    , _gcvvwSymbols = Nothing
    , _gcvvwConfidence = Nothing
    }


-- | Additional information detected for the word.
gcvvwProperty :: Lens' GoogleCloudVisionV1p3beta1Word (Maybe GoogleCloudVisionV1p3beta1TextAnnotationTextProperty)
gcvvwProperty
  = lens _gcvvwProperty
      (\ s a -> s{_gcvvwProperty = a})

-- | The bounding box for the word. The vertices are in the order of
-- top-left, top-right, bottom-right, bottom-left. When a rotation of the
-- bounding box is detected the rotation is represented as around the
-- top-left corner as defined when the text is read in the \'natural\'
-- orientation. For example: * when the text is horizontal it might look
-- like: 0----1 | | 3----2 * when it\'s rotated 180 degrees around the
-- top-left corner it becomes: 2----3 | | 1----0 and the vertex order will
-- still be (0, 1, 2, 3).
gcvvwBoundingBox :: Lens' GoogleCloudVisionV1p3beta1Word (Maybe GoogleCloudVisionV1p3beta1BoundingPoly)
gcvvwBoundingBox
  = lens _gcvvwBoundingBox
      (\ s a -> s{_gcvvwBoundingBox = a})

-- | List of symbols in the word. The order of the symbols follows the
-- natural reading order.
gcvvwSymbols :: Lens' GoogleCloudVisionV1p3beta1Word [GoogleCloudVisionV1p3beta1Symbol]
gcvvwSymbols
  = lens _gcvvwSymbols (\ s a -> s{_gcvvwSymbols = a})
      . _Default
      . _Coerce

-- | Confidence of the OCR results for the word. Range [0, 1].
gcvvwConfidence :: Lens' GoogleCloudVisionV1p3beta1Word (Maybe Double)
gcvvwConfidence
  = lens _gcvvwConfidence
      (\ s a -> s{_gcvvwConfidence = a})
      . mapping _Coerce

instance FromJSON GoogleCloudVisionV1p3beta1Word
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p3beta1Word"
              (\ o ->
                 GoogleCloudVisionV1p3beta1Word' <$>
                   (o .:? "property") <*> (o .:? "boundingBox") <*>
                     (o .:? "symbols" .!= mempty)
                     <*> (o .:? "confidence"))

instance ToJSON GoogleCloudVisionV1p3beta1Word where
        toJSON GoogleCloudVisionV1p3beta1Word'{..}
          = object
              (catMaybes
                 [("property" .=) <$> _gcvvwProperty,
                  ("boundingBox" .=) <$> _gcvvwBoundingBox,
                  ("symbols" .=) <$> _gcvvwSymbols,
                  ("confidence" .=) <$> _gcvvwConfidence])

-- | Set of detected objects with bounding boxes.
--
-- /See:/ 'localizedObjectAnnotation' smart constructor.
data LocalizedObjectAnnotation =
  LocalizedObjectAnnotation'
    { _loaLanguageCode :: !(Maybe Text)
    , _loaScore :: !(Maybe (Textual Double))
    , _loaBoundingPoly :: !(Maybe BoundingPoly)
    , _loaName :: !(Maybe Text)
    , _loaMid :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocalizedObjectAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'loaLanguageCode'
--
-- * 'loaScore'
--
-- * 'loaBoundingPoly'
--
-- * 'loaName'
--
-- * 'loaMid'
localizedObjectAnnotation
    :: LocalizedObjectAnnotation
localizedObjectAnnotation =
  LocalizedObjectAnnotation'
    { _loaLanguageCode = Nothing
    , _loaScore = Nothing
    , _loaBoundingPoly = Nothing
    , _loaName = Nothing
    , _loaMid = Nothing
    }


-- | The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more
-- information, see
-- http:\/\/www.unicode.org\/reports\/tr35\/#Unicode_locale_identifier.
loaLanguageCode :: Lens' LocalizedObjectAnnotation (Maybe Text)
loaLanguageCode
  = lens _loaLanguageCode
      (\ s a -> s{_loaLanguageCode = a})

-- | Score of the result. Range [0, 1].
loaScore :: Lens' LocalizedObjectAnnotation (Maybe Double)
loaScore
  = lens _loaScore (\ s a -> s{_loaScore = a}) .
      mapping _Coerce

-- | Image region to which this object belongs. This must be populated.
loaBoundingPoly :: Lens' LocalizedObjectAnnotation (Maybe BoundingPoly)
loaBoundingPoly
  = lens _loaBoundingPoly
      (\ s a -> s{_loaBoundingPoly = a})

-- | Object name, expressed in its \`language_code\` language.
loaName :: Lens' LocalizedObjectAnnotation (Maybe Text)
loaName = lens _loaName (\ s a -> s{_loaName = a})

-- | Object ID that should align with EntityAnnotation mid.
loaMid :: Lens' LocalizedObjectAnnotation (Maybe Text)
loaMid = lens _loaMid (\ s a -> s{_loaMid = a})

instance FromJSON LocalizedObjectAnnotation where
        parseJSON
          = withObject "LocalizedObjectAnnotation"
              (\ o ->
                 LocalizedObjectAnnotation' <$>
                   (o .:? "languageCode") <*> (o .:? "score") <*>
                     (o .:? "boundingPoly")
                     <*> (o .:? "name")
                     <*> (o .:? "mid"))

instance ToJSON LocalizedObjectAnnotation where
        toJSON LocalizedObjectAnnotation'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _loaLanguageCode,
                  ("score" .=) <$> _loaScore,
                  ("boundingPoly" .=) <$> _loaBoundingPoly,
                  ("name" .=) <$> _loaName, ("mid" .=) <$> _loaMid])

-- | Relevant information for the image from the Internet.
--
-- /See:/ 'googleCloudVisionV1p2beta1WebDetection' smart constructor.
data GoogleCloudVisionV1p2beta1WebDetection =
  GoogleCloudVisionV1p2beta1WebDetection'
    { _gcvvwdVisuallySimilarImages :: !(Maybe [GoogleCloudVisionV1p2beta1WebDetectionWebImage])
    , _gcvvwdBestGuessLabels :: !(Maybe [GoogleCloudVisionV1p2beta1WebDetectionWebLabel])
    , _gcvvwdPagesWithMatchingImages :: !(Maybe [GoogleCloudVisionV1p2beta1WebDetectionWebPage])
    , _gcvvwdPartialMatchingImages :: !(Maybe [GoogleCloudVisionV1p2beta1WebDetectionWebImage])
    , _gcvvwdFullMatchingImages :: !(Maybe [GoogleCloudVisionV1p2beta1WebDetectionWebImage])
    , _gcvvwdWebEntities :: !(Maybe [GoogleCloudVisionV1p2beta1WebDetectionWebEntity])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1WebDetection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvwdVisuallySimilarImages'
--
-- * 'gcvvwdBestGuessLabels'
--
-- * 'gcvvwdPagesWithMatchingImages'
--
-- * 'gcvvwdPartialMatchingImages'
--
-- * 'gcvvwdFullMatchingImages'
--
-- * 'gcvvwdWebEntities'
googleCloudVisionV1p2beta1WebDetection
    :: GoogleCloudVisionV1p2beta1WebDetection
googleCloudVisionV1p2beta1WebDetection =
  GoogleCloudVisionV1p2beta1WebDetection'
    { _gcvvwdVisuallySimilarImages = Nothing
    , _gcvvwdBestGuessLabels = Nothing
    , _gcvvwdPagesWithMatchingImages = Nothing
    , _gcvvwdPartialMatchingImages = Nothing
    , _gcvvwdFullMatchingImages = Nothing
    , _gcvvwdWebEntities = Nothing
    }


-- | The visually similar image results.
gcvvwdVisuallySimilarImages :: Lens' GoogleCloudVisionV1p2beta1WebDetection [GoogleCloudVisionV1p2beta1WebDetectionWebImage]
gcvvwdVisuallySimilarImages
  = lens _gcvvwdVisuallySimilarImages
      (\ s a -> s{_gcvvwdVisuallySimilarImages = a})
      . _Default
      . _Coerce

-- | The service\'s best guess as to the topic of the request image. Inferred
-- from similar images on the open web.
gcvvwdBestGuessLabels :: Lens' GoogleCloudVisionV1p2beta1WebDetection [GoogleCloudVisionV1p2beta1WebDetectionWebLabel]
gcvvwdBestGuessLabels
  = lens _gcvvwdBestGuessLabels
      (\ s a -> s{_gcvvwdBestGuessLabels = a})
      . _Default
      . _Coerce

-- | Web pages containing the matching images from the Internet.
gcvvwdPagesWithMatchingImages :: Lens' GoogleCloudVisionV1p2beta1WebDetection [GoogleCloudVisionV1p2beta1WebDetectionWebPage]
gcvvwdPagesWithMatchingImages
  = lens _gcvvwdPagesWithMatchingImages
      (\ s a -> s{_gcvvwdPagesWithMatchingImages = a})
      . _Default
      . _Coerce

-- | Partial matching images from the Internet. Those images are similar
-- enough to share some key-point features. For example an original image
-- will likely have partial matching for its crops.
gcvvwdPartialMatchingImages :: Lens' GoogleCloudVisionV1p2beta1WebDetection [GoogleCloudVisionV1p2beta1WebDetectionWebImage]
gcvvwdPartialMatchingImages
  = lens _gcvvwdPartialMatchingImages
      (\ s a -> s{_gcvvwdPartialMatchingImages = a})
      . _Default
      . _Coerce

-- | Fully matching images from the Internet. Can include resized copies of
-- the query image.
gcvvwdFullMatchingImages :: Lens' GoogleCloudVisionV1p2beta1WebDetection [GoogleCloudVisionV1p2beta1WebDetectionWebImage]
gcvvwdFullMatchingImages
  = lens _gcvvwdFullMatchingImages
      (\ s a -> s{_gcvvwdFullMatchingImages = a})
      . _Default
      . _Coerce

-- | Deduced entities from similar images on the Internet.
gcvvwdWebEntities :: Lens' GoogleCloudVisionV1p2beta1WebDetection [GoogleCloudVisionV1p2beta1WebDetectionWebEntity]
gcvvwdWebEntities
  = lens _gcvvwdWebEntities
      (\ s a -> s{_gcvvwdWebEntities = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p2beta1WebDetection
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p2beta1WebDetection"
              (\ o ->
                 GoogleCloudVisionV1p2beta1WebDetection' <$>
                   (o .:? "visuallySimilarImages" .!= mempty) <*>
                     (o .:? "bestGuessLabels" .!= mempty)
                     <*> (o .:? "pagesWithMatchingImages" .!= mempty)
                     <*> (o .:? "partialMatchingImages" .!= mempty)
                     <*> (o .:? "fullMatchingImages" .!= mempty)
                     <*> (o .:? "webEntities" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p2beta1WebDetection
         where
        toJSON GoogleCloudVisionV1p2beta1WebDetection'{..}
          = object
              (catMaybes
                 [("visuallySimilarImages" .=) <$>
                    _gcvvwdVisuallySimilarImages,
                  ("bestGuessLabels" .=) <$> _gcvvwdBestGuessLabels,
                  ("pagesWithMatchingImages" .=) <$>
                    _gcvvwdPagesWithMatchingImages,
                  ("partialMatchingImages" .=) <$>
                    _gcvvwdPartialMatchingImages,
                  ("fullMatchingImages" .=) <$>
                    _gcvvwdFullMatchingImages,
                  ("webEntities" .=) <$> _gcvvwdWebEntities])

-- | This resource represents a long-running operation that is the result of
-- a network API call.
--
-- /See:/ 'operation' smart constructor.
data Operation =
  Operation'
    { _oDone :: !(Maybe Bool)
    , _oError :: !(Maybe Status)
    , _oResponse :: !(Maybe OperationResponse)
    , _oName :: !(Maybe Text)
    , _oMetadata :: !(Maybe OperationSchema)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Operation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oDone'
--
-- * 'oError'
--
-- * 'oResponse'
--
-- * 'oName'
--
-- * 'oMetadata'
operation
    :: Operation
operation =
  Operation'
    { _oDone = Nothing
    , _oError = Nothing
    , _oResponse = Nothing
    , _oName = Nothing
    , _oMetadata = Nothing
    }


-- | If the value is \`false\`, it means the operation is still in progress.
-- If \`true\`, the operation is completed, and either \`error\` or
-- \`response\` is available.
oDone :: Lens' Operation (Maybe Bool)
oDone = lens _oDone (\ s a -> s{_oDone = a})

-- | The error result of the operation in case of failure or cancellation.
oError :: Lens' Operation (Maybe Status)
oError = lens _oError (\ s a -> s{_oError = a})

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
oResponse :: Lens' Operation (Maybe OperationResponse)
oResponse
  = lens _oResponse (\ s a -> s{_oResponse = a})

-- | The server-assigned name, which is only unique within the same service
-- that originally returns it. If you use the default HTTP mapping, the
-- \`name\` should be a resource name ending with
-- \`operations\/{unique_id}\`.
oName :: Lens' Operation (Maybe Text)
oName = lens _oName (\ s a -> s{_oName = a})

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
oMetadata :: Lens' Operation (Maybe OperationSchema)
oMetadata
  = lens _oMetadata (\ s a -> s{_oMetadata = a})

instance FromJSON Operation where
        parseJSON
          = withObject "Operation"
              (\ o ->
                 Operation' <$>
                   (o .:? "done") <*> (o .:? "error") <*>
                     (o .:? "response")
                     <*> (o .:? "name")
                     <*> (o .:? "metadata"))

instance ToJSON Operation where
        toJSON Operation'{..}
          = object
              (catMaybes
                 [("done" .=) <$> _oDone, ("error" .=) <$> _oError,
                  ("response" .=) <$> _oResponse,
                  ("name" .=) <$> _oName,
                  ("metadata" .=) <$> _oMetadata])

-- | Represents a color in the RGBA color space. This representation is
-- designed for simplicity of conversion to\/from color representations in
-- various languages over compactness. For example, the fields of this
-- representation can be trivially provided to the constructor of
-- \`java.awt.Color\` in Java; it can also be trivially provided to
-- UIColor\'s \`+colorWithRed:green:blue:alpha\` method in iOS; and, with
-- just a little work, it can be easily formatted into a CSS \`rgba()\`
-- string in JavaScript. This reference page doesn\'t carry information
-- about the absolute color space that should be used to interpret the RGB
-- value (e.g. sRGB, Adobe RGB, DCI-P3, BT.2020, etc.). By default,
-- applications should assume the sRGB color space. When color equality
-- needs to be decided, implementations, unless documented otherwise, treat
-- two colors as equal if all their red, green, blue, and alpha values each
-- differ by at most 1e-5. Example (Java): import com.google.type.Color;
-- \/\/ ... public static java.awt.Color fromProto(Color protocolor) {
-- float alpha = protocolor.hasAlpha() ? protocolor.getAlpha().getValue() :
-- 1.0; return new java.awt.Color( protocolor.getRed(),
-- protocolor.getGreen(), protocolor.getBlue(), alpha); } public static
-- Color toProto(java.awt.Color color) { float red = (float)
-- color.getRed(); float green = (float) color.getGreen(); float blue =
-- (float) color.getBlue(); float denominator = 255.0; Color.Builder
-- resultBuilder = Color .newBuilder() .setRed(red \/ denominator)
-- .setGreen(green \/ denominator) .setBlue(blue \/ denominator); int alpha
-- = color.getAlpha(); if (alpha != 255) { result.setAlpha( FloatValue
-- .newBuilder() .setValue(((float) alpha) \/ denominator) .build()); }
-- return resultBuilder.build(); } \/\/ ... Example (iOS \/ Obj-C): \/\/
-- ... static UIColor* fromProto(Color* protocolor) { float red =
-- [protocolor red]; float green = [protocolor green]; float blue =
-- [protocolor blue]; FloatValue* alpha_wrapper = [protocolor alpha]; float
-- alpha = 1.0; if (alpha_wrapper != nil) { alpha = [alpha_wrapper value];
-- } return [UIColor colorWithRed:red green:green blue:blue alpha:alpha]; }
-- static Color* toProto(UIColor* color) { CGFloat red, green, blue, alpha;
-- if (![color getRed:&red green:&green blue:&blue alpha:&alpha]) { return
-- nil; } Color* result = [[Color alloc] init]; [result setRed:red];
-- [result setGreen:green]; [result setBlue:blue]; if (alpha \<= 0.9999) {
-- [result setAlpha:floatWrapperWithValue(alpha)]; } [result autorelease];
-- return result; } \/\/ ... Example (JavaScript): \/\/ ... var
-- protoToCssColor = function(rgb_color) { var redFrac = rgb_color.red ||
-- 0.0; var greenFrac = rgb_color.green || 0.0; var blueFrac =
-- rgb_color.blue || 0.0; var red = Math.floor(redFrac * 255); var green =
-- Math.floor(greenFrac * 255); var blue = Math.floor(blueFrac * 255); if
-- (!(\'alpha\' in rgb_color)) { return rgbToCssColor(red, green, blue); }
-- var alphaFrac = rgb_color.alpha.value || 0.0; var rgbParams = [red,
-- green, blue].join(\',\'); return [\'rgba(\', rgbParams, \',\',
-- alphaFrac, \')\'].join(\'\'); }; var rgbToCssColor = function(red,
-- green, blue) { var rgbNumber = new Number((red \<\< 16) | (green \<\< 8)
-- | blue); var hexString = rgbNumber.toString(16); var missingZeros = 6 -
-- hexString.length; var resultBuilder = [\'#\']; for (var i = 0; i \<
-- missingZeros; i++) { resultBuilder.push(\'0\'); }
-- resultBuilder.push(hexString); return resultBuilder.join(\'\'); }; \/\/
-- ...
--
-- /See:/ 'color' smart constructor.
data Color =
  Color'
    { _cRed :: !(Maybe (Textual Double))
    , _cAlpha :: !(Maybe (Textual Double))
    , _cGreen :: !(Maybe (Textual Double))
    , _cBlue :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Color' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cRed'
--
-- * 'cAlpha'
--
-- * 'cGreen'
--
-- * 'cBlue'
color
    :: Color
color =
  Color'
    {_cRed = Nothing, _cAlpha = Nothing, _cGreen = Nothing, _cBlue = Nothing}


-- | The amount of red in the color as a value in the interval [0, 1].
cRed :: Lens' Color (Maybe Double)
cRed
  = lens _cRed (\ s a -> s{_cRed = a}) .
      mapping _Coerce

-- | The fraction of this color that should be applied to the pixel. That is,
-- the final pixel color is defined by the equation: \`pixel color = alpha
-- * (this color) + (1.0 - alpha) * (background color)\` This means that a
-- value of 1.0 corresponds to a solid color, whereas a value of 0.0
-- corresponds to a completely transparent color. This uses a wrapper
-- message rather than a simple float scalar so that it is possible to
-- distinguish between a default value and the value being unset. If
-- omitted, this color object is rendered as a solid color (as if the alpha
-- value had been explicitly given a value of 1.0).
cAlpha :: Lens' Color (Maybe Double)
cAlpha
  = lens _cAlpha (\ s a -> s{_cAlpha = a}) .
      mapping _Coerce

-- | The amount of green in the color as a value in the interval [0, 1].
cGreen :: Lens' Color (Maybe Double)
cGreen
  = lens _cGreen (\ s a -> s{_cGreen = a}) .
      mapping _Coerce

-- | The amount of blue in the color as a value in the interval [0, 1].
cBlue :: Lens' Color (Maybe Double)
cBlue
  = lens _cBlue (\ s a -> s{_cBlue = a}) .
      mapping _Coerce

instance FromJSON Color where
        parseJSON
          = withObject "Color"
              (\ o ->
                 Color' <$>
                   (o .:? "red") <*> (o .:? "alpha") <*> (o .:? "green")
                     <*> (o .:? "blue"))

instance ToJSON Color where
        toJSON Color'{..}
          = object
              (catMaybes
                 [("red" .=) <$> _cRed, ("alpha" .=) <$> _cAlpha,
                  ("green" .=) <$> _cGreen, ("blue" .=) <$> _cBlue])

-- | A 3D position in the image, used primarily for Face detection landmarks.
-- A valid Position must have both x and y coordinates. The position
-- coordinates are in the same scale as the original image.
--
-- /See:/ 'googleCloudVisionV1p4beta1Position' smart constructor.
data GoogleCloudVisionV1p4beta1Position =
  GoogleCloudVisionV1p4beta1Position'
    { _gcvvpZ :: !(Maybe (Textual Double))
    , _gcvvpX :: !(Maybe (Textual Double))
    , _gcvvpY :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1Position' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvpZ'
--
-- * 'gcvvpX'
--
-- * 'gcvvpY'
googleCloudVisionV1p4beta1Position
    :: GoogleCloudVisionV1p4beta1Position
googleCloudVisionV1p4beta1Position =
  GoogleCloudVisionV1p4beta1Position'
    {_gcvvpZ = Nothing, _gcvvpX = Nothing, _gcvvpY = Nothing}


-- | Z coordinate (or depth).
gcvvpZ :: Lens' GoogleCloudVisionV1p4beta1Position (Maybe Double)
gcvvpZ
  = lens _gcvvpZ (\ s a -> s{_gcvvpZ = a}) .
      mapping _Coerce

-- | X coordinate.
gcvvpX :: Lens' GoogleCloudVisionV1p4beta1Position (Maybe Double)
gcvvpX
  = lens _gcvvpX (\ s a -> s{_gcvvpX = a}) .
      mapping _Coerce

-- | Y coordinate.
gcvvpY :: Lens' GoogleCloudVisionV1p4beta1Position (Maybe Double)
gcvvpY
  = lens _gcvvpY (\ s a -> s{_gcvvpY = a}) .
      mapping _Coerce

instance FromJSON GoogleCloudVisionV1p4beta1Position
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p4beta1Position"
              (\ o ->
                 GoogleCloudVisionV1p4beta1Position' <$>
                   (o .:? "z") <*> (o .:? "x") <*> (o .:? "y"))

instance ToJSON GoogleCloudVisionV1p4beta1Position
         where
        toJSON GoogleCloudVisionV1p4beta1Position'{..}
          = object
              (catMaybes
                 [("z" .=) <$> _gcvvpZ, ("x" .=) <$> _gcvvpX,
                  ("y" .=) <$> _gcvvpY])

-- | A product label represented as a key-value pair.
--
-- /See:/ 'googleCloudVisionV1p2beta1ProductKeyValue' smart constructor.
data GoogleCloudVisionV1p2beta1ProductKeyValue =
  GoogleCloudVisionV1p2beta1ProductKeyValue'
    { _gValue :: !(Maybe Text)
    , _gKey :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1ProductKeyValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gValue'
--
-- * 'gKey'
googleCloudVisionV1p2beta1ProductKeyValue
    :: GoogleCloudVisionV1p2beta1ProductKeyValue
googleCloudVisionV1p2beta1ProductKeyValue =
  GoogleCloudVisionV1p2beta1ProductKeyValue'
    {_gValue = Nothing, _gKey = Nothing}


-- | The value of the label attached to the product. Cannot be empty and
-- cannot exceed 128 bytes.
gValue :: Lens' GoogleCloudVisionV1p2beta1ProductKeyValue (Maybe Text)
gValue = lens _gValue (\ s a -> s{_gValue = a})

-- | The key of the label attached to the product. Cannot be empty and cannot
-- exceed 128 bytes.
gKey :: Lens' GoogleCloudVisionV1p2beta1ProductKeyValue (Maybe Text)
gKey = lens _gKey (\ s a -> s{_gKey = a})

instance FromJSON
           GoogleCloudVisionV1p2beta1ProductKeyValue
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p2beta1ProductKeyValue"
              (\ o ->
                 GoogleCloudVisionV1p2beta1ProductKeyValue' <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON
           GoogleCloudVisionV1p2beta1ProductKeyValue
         where
        toJSON GoogleCloudVisionV1p2beta1ProductKeyValue'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _gValue, ("key" .=) <$> _gKey])

-- | A face-specific landmark (for example, a face feature).
--
-- /See:/ 'googleCloudVisionV1p1beta1FaceAnnotationLandmark' smart constructor.
data GoogleCloudVisionV1p1beta1FaceAnnotationLandmark =
  GoogleCloudVisionV1p1beta1FaceAnnotationLandmark'
    { _gcvvfalType :: !(Maybe GoogleCloudVisionV1p1beta1FaceAnnotationLandmarkType)
    , _gcvvfalPosition :: !(Maybe GoogleCloudVisionV1p1beta1Position)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1FaceAnnotationLandmark' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvfalType'
--
-- * 'gcvvfalPosition'
googleCloudVisionV1p1beta1FaceAnnotationLandmark
    :: GoogleCloudVisionV1p1beta1FaceAnnotationLandmark
googleCloudVisionV1p1beta1FaceAnnotationLandmark =
  GoogleCloudVisionV1p1beta1FaceAnnotationLandmark'
    {_gcvvfalType = Nothing, _gcvvfalPosition = Nothing}


-- | Face landmark type.
gcvvfalType :: Lens' GoogleCloudVisionV1p1beta1FaceAnnotationLandmark (Maybe GoogleCloudVisionV1p1beta1FaceAnnotationLandmarkType)
gcvvfalType
  = lens _gcvvfalType (\ s a -> s{_gcvvfalType = a})

-- | Face landmark position.
gcvvfalPosition :: Lens' GoogleCloudVisionV1p1beta1FaceAnnotationLandmark (Maybe GoogleCloudVisionV1p1beta1Position)
gcvvfalPosition
  = lens _gcvvfalPosition
      (\ s a -> s{_gcvvfalPosition = a})

instance FromJSON
           GoogleCloudVisionV1p1beta1FaceAnnotationLandmark
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p1beta1FaceAnnotationLandmark"
              (\ o ->
                 GoogleCloudVisionV1p1beta1FaceAnnotationLandmark' <$>
                   (o .:? "type") <*> (o .:? "position"))

instance ToJSON
           GoogleCloudVisionV1p1beta1FaceAnnotationLandmark
         where
        toJSON
          GoogleCloudVisionV1p1beta1FaceAnnotationLandmark'{..}
          = object
              (catMaybes
                 [("type" .=) <$> _gcvvfalType,
                  ("position" .=) <$> _gcvvfalPosition])

-- | Response to an async batch file annotation request.
--
-- /See:/ 'googleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse' smart constructor.
newtype GoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse =
  GoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse'
    { _gooResponses :: Maybe [GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooResponses'
googleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse
    :: GoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse
googleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse =
  GoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse'
    {_gooResponses = Nothing}


-- | The list of file annotation responses, one for each request in
-- AsyncBatchAnnotateFilesRequest.
gooResponses :: Lens' GoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse [GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse]
gooResponses
  = lens _gooResponses (\ s a -> s{_gooResponses = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse"
              (\ o ->
                 GoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse'
                   <$> (o .:? "responses" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse
         where
        toJSON
          GoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse'{..}
          = object
              (catMaybes [("responses" .=) <$> _gooResponses])

-- | Set of detected entity features.
--
-- /See:/ 'googleCloudVisionV1p1beta1EntityAnnotation' smart constructor.
data GoogleCloudVisionV1p1beta1EntityAnnotation =
  GoogleCloudVisionV1p1beta1EntityAnnotation'
    { _gcvveaScore :: !(Maybe (Textual Double))
    , _gcvveaTopicality :: !(Maybe (Textual Double))
    , _gcvveaLocale :: !(Maybe Text)
    , _gcvveaBoundingPoly :: !(Maybe GoogleCloudVisionV1p1beta1BoundingPoly)
    , _gcvveaConfidence :: !(Maybe (Textual Double))
    , _gcvveaMid :: !(Maybe Text)
    , _gcvveaLocations :: !(Maybe [GoogleCloudVisionV1p1beta1LocationInfo])
    , _gcvveaDescription :: !(Maybe Text)
    , _gcvveaProperties :: !(Maybe [GoogleCloudVisionV1p1beta1Property])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1EntityAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvveaScore'
--
-- * 'gcvveaTopicality'
--
-- * 'gcvveaLocale'
--
-- * 'gcvveaBoundingPoly'
--
-- * 'gcvveaConfidence'
--
-- * 'gcvveaMid'
--
-- * 'gcvveaLocations'
--
-- * 'gcvveaDescription'
--
-- * 'gcvveaProperties'
googleCloudVisionV1p1beta1EntityAnnotation
    :: GoogleCloudVisionV1p1beta1EntityAnnotation
googleCloudVisionV1p1beta1EntityAnnotation =
  GoogleCloudVisionV1p1beta1EntityAnnotation'
    { _gcvveaScore = Nothing
    , _gcvveaTopicality = Nothing
    , _gcvveaLocale = Nothing
    , _gcvveaBoundingPoly = Nothing
    , _gcvveaConfidence = Nothing
    , _gcvveaMid = Nothing
    , _gcvveaLocations = Nothing
    , _gcvveaDescription = Nothing
    , _gcvveaProperties = Nothing
    }


-- | Overall score of the result. Range [0, 1].
gcvveaScore :: Lens' GoogleCloudVisionV1p1beta1EntityAnnotation (Maybe Double)
gcvveaScore
  = lens _gcvveaScore (\ s a -> s{_gcvveaScore = a}) .
      mapping _Coerce

-- | The relevancy of the ICA (Image Content Annotation) label to the image.
-- For example, the relevancy of \"tower\" is likely higher to an image
-- containing the detected \"Eiffel Tower\" than to an image containing a
-- detected distant towering building, even though the confidence that
-- there is a tower in each image may be the same. Range [0, 1].
gcvveaTopicality :: Lens' GoogleCloudVisionV1p1beta1EntityAnnotation (Maybe Double)
gcvveaTopicality
  = lens _gcvveaTopicality
      (\ s a -> s{_gcvveaTopicality = a})
      . mapping _Coerce

-- | The language code for the locale in which the entity textual
-- \`description\` is expressed.
gcvveaLocale :: Lens' GoogleCloudVisionV1p1beta1EntityAnnotation (Maybe Text)
gcvveaLocale
  = lens _gcvveaLocale (\ s a -> s{_gcvveaLocale = a})

-- | Image region to which this entity belongs. Not produced for
-- \`LABEL_DETECTION\` features.
gcvveaBoundingPoly :: Lens' GoogleCloudVisionV1p1beta1EntityAnnotation (Maybe GoogleCloudVisionV1p1beta1BoundingPoly)
gcvveaBoundingPoly
  = lens _gcvveaBoundingPoly
      (\ s a -> s{_gcvveaBoundingPoly = a})

-- | **Deprecated. Use \`score\` instead.** The accuracy of the entity
-- detection in an image. For example, for an image in which the \"Eiffel
-- Tower\" entity is detected, this field represents the confidence that
-- there is a tower in the query image. Range [0, 1].
gcvveaConfidence :: Lens' GoogleCloudVisionV1p1beta1EntityAnnotation (Maybe Double)
gcvveaConfidence
  = lens _gcvveaConfidence
      (\ s a -> s{_gcvveaConfidence = a})
      . mapping _Coerce

-- | Opaque entity ID. Some IDs may be available in [Google Knowledge Graph
-- Search API](https:\/\/developers.google.com\/knowledge-graph\/).
gcvveaMid :: Lens' GoogleCloudVisionV1p1beta1EntityAnnotation (Maybe Text)
gcvveaMid
  = lens _gcvveaMid (\ s a -> s{_gcvveaMid = a})

-- | The location information for the detected entity. Multiple
-- \`LocationInfo\` elements can be present because one location may
-- indicate the location of the scene in the image, and another location
-- may indicate the location of the place where the image was taken.
-- Location information is usually present for landmarks.
gcvveaLocations :: Lens' GoogleCloudVisionV1p1beta1EntityAnnotation [GoogleCloudVisionV1p1beta1LocationInfo]
gcvveaLocations
  = lens _gcvveaLocations
      (\ s a -> s{_gcvveaLocations = a})
      . _Default
      . _Coerce

-- | Entity textual description, expressed in its \`locale\` language.
gcvveaDescription :: Lens' GoogleCloudVisionV1p1beta1EntityAnnotation (Maybe Text)
gcvveaDescription
  = lens _gcvveaDescription
      (\ s a -> s{_gcvveaDescription = a})

-- | Some entities may have optional user-supplied \`Property\` (name\/value)
-- fields, such a score or string that qualifies the entity.
gcvveaProperties :: Lens' GoogleCloudVisionV1p1beta1EntityAnnotation [GoogleCloudVisionV1p1beta1Property]
gcvveaProperties
  = lens _gcvveaProperties
      (\ s a -> s{_gcvveaProperties = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p1beta1EntityAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p1beta1EntityAnnotation"
              (\ o ->
                 GoogleCloudVisionV1p1beta1EntityAnnotation' <$>
                   (o .:? "score") <*> (o .:? "topicality") <*>
                     (o .:? "locale")
                     <*> (o .:? "boundingPoly")
                     <*> (o .:? "confidence")
                     <*> (o .:? "mid")
                     <*> (o .:? "locations" .!= mempty)
                     <*> (o .:? "description")
                     <*> (o .:? "properties" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p1beta1EntityAnnotation
         where
        toJSON
          GoogleCloudVisionV1p1beta1EntityAnnotation'{..}
          = object
              (catMaybes
                 [("score" .=) <$> _gcvveaScore,
                  ("topicality" .=) <$> _gcvveaTopicality,
                  ("locale" .=) <$> _gcvveaLocale,
                  ("boundingPoly" .=) <$> _gcvveaBoundingPoly,
                  ("confidence" .=) <$> _gcvveaConfidence,
                  ("mid" .=) <$> _gcvveaMid,
                  ("locations" .=) <$> _gcvveaLocations,
                  ("description" .=) <$> _gcvveaDescription,
                  ("properties" .=) <$> _gcvveaProperties])

-- | Response to an image annotation request.
--
-- /See:/ 'googleCloudVisionV1p3beta1AnnotateImageResponse' smart constructor.
data GoogleCloudVisionV1p3beta1AnnotateImageResponse =
  GoogleCloudVisionV1p3beta1AnnotateImageResponse'
    { _gooLogoAnnotations :: !(Maybe [GoogleCloudVisionV1p3beta1EntityAnnotation])
    , _gooProductSearchResults :: !(Maybe GoogleCloudVisionV1p3beta1ProductSearchResults)
    , _gooContext :: !(Maybe GoogleCloudVisionV1p3beta1ImageAnnotationContext)
    , _gooLabelAnnotations :: !(Maybe [GoogleCloudVisionV1p3beta1EntityAnnotation])
    , _gooFaceAnnotations :: !(Maybe [GoogleCloudVisionV1p3beta1FaceAnnotation])
    , _gooError :: !(Maybe Status)
    , _gooWebDetection :: !(Maybe GoogleCloudVisionV1p3beta1WebDetection)
    , _gooSafeSearchAnnotation :: !(Maybe GoogleCloudVisionV1p3beta1SafeSearchAnnotation)
    , _gooLandmarkAnnotations :: !(Maybe [GoogleCloudVisionV1p3beta1EntityAnnotation])
    , _gooLocalizedObjectAnnotations :: !(Maybe [GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation])
    , _gooTextAnnotations :: !(Maybe [GoogleCloudVisionV1p3beta1EntityAnnotation])
    , _gooCropHintsAnnotation :: !(Maybe GoogleCloudVisionV1p3beta1CropHintsAnnotation)
    , _gooFullTextAnnotation :: !(Maybe GoogleCloudVisionV1p3beta1TextAnnotation)
    , _gooImagePropertiesAnnotation :: !(Maybe GoogleCloudVisionV1p3beta1ImageProperties)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1AnnotateImageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooLogoAnnotations'
--
-- * 'gooProductSearchResults'
--
-- * 'gooContext'
--
-- * 'gooLabelAnnotations'
--
-- * 'gooFaceAnnotations'
--
-- * 'gooError'
--
-- * 'gooWebDetection'
--
-- * 'gooSafeSearchAnnotation'
--
-- * 'gooLandmarkAnnotations'
--
-- * 'gooLocalizedObjectAnnotations'
--
-- * 'gooTextAnnotations'
--
-- * 'gooCropHintsAnnotation'
--
-- * 'gooFullTextAnnotation'
--
-- * 'gooImagePropertiesAnnotation'
googleCloudVisionV1p3beta1AnnotateImageResponse
    :: GoogleCloudVisionV1p3beta1AnnotateImageResponse
googleCloudVisionV1p3beta1AnnotateImageResponse =
  GoogleCloudVisionV1p3beta1AnnotateImageResponse'
    { _gooLogoAnnotations = Nothing
    , _gooProductSearchResults = Nothing
    , _gooContext = Nothing
    , _gooLabelAnnotations = Nothing
    , _gooFaceAnnotations = Nothing
    , _gooError = Nothing
    , _gooWebDetection = Nothing
    , _gooSafeSearchAnnotation = Nothing
    , _gooLandmarkAnnotations = Nothing
    , _gooLocalizedObjectAnnotations = Nothing
    , _gooTextAnnotations = Nothing
    , _gooCropHintsAnnotation = Nothing
    , _gooFullTextAnnotation = Nothing
    , _gooImagePropertiesAnnotation = Nothing
    }


-- | If present, logo detection has completed successfully.
gooLogoAnnotations :: Lens' GoogleCloudVisionV1p3beta1AnnotateImageResponse [GoogleCloudVisionV1p3beta1EntityAnnotation]
gooLogoAnnotations
  = lens _gooLogoAnnotations
      (\ s a -> s{_gooLogoAnnotations = a})
      . _Default
      . _Coerce

-- | If present, product search has completed successfully.
gooProductSearchResults :: Lens' GoogleCloudVisionV1p3beta1AnnotateImageResponse (Maybe GoogleCloudVisionV1p3beta1ProductSearchResults)
gooProductSearchResults
  = lens _gooProductSearchResults
      (\ s a -> s{_gooProductSearchResults = a})

-- | If present, contextual information is needed to understand where this
-- image comes from.
gooContext :: Lens' GoogleCloudVisionV1p3beta1AnnotateImageResponse (Maybe GoogleCloudVisionV1p3beta1ImageAnnotationContext)
gooContext
  = lens _gooContext (\ s a -> s{_gooContext = a})

-- | If present, label detection has completed successfully.
gooLabelAnnotations :: Lens' GoogleCloudVisionV1p3beta1AnnotateImageResponse [GoogleCloudVisionV1p3beta1EntityAnnotation]
gooLabelAnnotations
  = lens _gooLabelAnnotations
      (\ s a -> s{_gooLabelAnnotations = a})
      . _Default
      . _Coerce

-- | If present, face detection has completed successfully.
gooFaceAnnotations :: Lens' GoogleCloudVisionV1p3beta1AnnotateImageResponse [GoogleCloudVisionV1p3beta1FaceAnnotation]
gooFaceAnnotations
  = lens _gooFaceAnnotations
      (\ s a -> s{_gooFaceAnnotations = a})
      . _Default
      . _Coerce

-- | If set, represents the error message for the operation. Note that
-- filled-in image annotations are guaranteed to be correct, even when
-- \`error\` is set.
gooError :: Lens' GoogleCloudVisionV1p3beta1AnnotateImageResponse (Maybe Status)
gooError = lens _gooError (\ s a -> s{_gooError = a})

-- | If present, web detection has completed successfully.
gooWebDetection :: Lens' GoogleCloudVisionV1p3beta1AnnotateImageResponse (Maybe GoogleCloudVisionV1p3beta1WebDetection)
gooWebDetection
  = lens _gooWebDetection
      (\ s a -> s{_gooWebDetection = a})

-- | If present, safe-search annotation has completed successfully.
gooSafeSearchAnnotation :: Lens' GoogleCloudVisionV1p3beta1AnnotateImageResponse (Maybe GoogleCloudVisionV1p3beta1SafeSearchAnnotation)
gooSafeSearchAnnotation
  = lens _gooSafeSearchAnnotation
      (\ s a -> s{_gooSafeSearchAnnotation = a})

-- | If present, landmark detection has completed successfully.
gooLandmarkAnnotations :: Lens' GoogleCloudVisionV1p3beta1AnnotateImageResponse [GoogleCloudVisionV1p3beta1EntityAnnotation]
gooLandmarkAnnotations
  = lens _gooLandmarkAnnotations
      (\ s a -> s{_gooLandmarkAnnotations = a})
      . _Default
      . _Coerce

-- | If present, localized object detection has completed successfully. This
-- will be sorted descending by confidence score.
gooLocalizedObjectAnnotations :: Lens' GoogleCloudVisionV1p3beta1AnnotateImageResponse [GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation]
gooLocalizedObjectAnnotations
  = lens _gooLocalizedObjectAnnotations
      (\ s a -> s{_gooLocalizedObjectAnnotations = a})
      . _Default
      . _Coerce

-- | If present, text (OCR) detection has completed successfully.
gooTextAnnotations :: Lens' GoogleCloudVisionV1p3beta1AnnotateImageResponse [GoogleCloudVisionV1p3beta1EntityAnnotation]
gooTextAnnotations
  = lens _gooTextAnnotations
      (\ s a -> s{_gooTextAnnotations = a})
      . _Default
      . _Coerce

-- | If present, crop hints have completed successfully.
gooCropHintsAnnotation :: Lens' GoogleCloudVisionV1p3beta1AnnotateImageResponse (Maybe GoogleCloudVisionV1p3beta1CropHintsAnnotation)
gooCropHintsAnnotation
  = lens _gooCropHintsAnnotation
      (\ s a -> s{_gooCropHintsAnnotation = a})

-- | If present, text (OCR) detection or document (OCR) text detection has
-- completed successfully. This annotation provides the structural
-- hierarchy for the OCR detected text.
gooFullTextAnnotation :: Lens' GoogleCloudVisionV1p3beta1AnnotateImageResponse (Maybe GoogleCloudVisionV1p3beta1TextAnnotation)
gooFullTextAnnotation
  = lens _gooFullTextAnnotation
      (\ s a -> s{_gooFullTextAnnotation = a})

-- | If present, image properties were extracted successfully.
gooImagePropertiesAnnotation :: Lens' GoogleCloudVisionV1p3beta1AnnotateImageResponse (Maybe GoogleCloudVisionV1p3beta1ImageProperties)
gooImagePropertiesAnnotation
  = lens _gooImagePropertiesAnnotation
      (\ s a -> s{_gooImagePropertiesAnnotation = a})

instance FromJSON
           GoogleCloudVisionV1p3beta1AnnotateImageResponse
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p3beta1AnnotateImageResponse"
              (\ o ->
                 GoogleCloudVisionV1p3beta1AnnotateImageResponse' <$>
                   (o .:? "logoAnnotations" .!= mempty) <*>
                     (o .:? "productSearchResults")
                     <*> (o .:? "context")
                     <*> (o .:? "labelAnnotations" .!= mempty)
                     <*> (o .:? "faceAnnotations" .!= mempty)
                     <*> (o .:? "error")
                     <*> (o .:? "webDetection")
                     <*> (o .:? "safeSearchAnnotation")
                     <*> (o .:? "landmarkAnnotations" .!= mempty)
                     <*> (o .:? "localizedObjectAnnotations" .!= mempty)
                     <*> (o .:? "textAnnotations" .!= mempty)
                     <*> (o .:? "cropHintsAnnotation")
                     <*> (o .:? "fullTextAnnotation")
                     <*> (o .:? "imagePropertiesAnnotation"))

instance ToJSON
           GoogleCloudVisionV1p3beta1AnnotateImageResponse
         where
        toJSON
          GoogleCloudVisionV1p3beta1AnnotateImageResponse'{..}
          = object
              (catMaybes
                 [("logoAnnotations" .=) <$> _gooLogoAnnotations,
                  ("productSearchResults" .=) <$>
                    _gooProductSearchResults,
                  ("context" .=) <$> _gooContext,
                  ("labelAnnotations" .=) <$> _gooLabelAnnotations,
                  ("faceAnnotations" .=) <$> _gooFaceAnnotations,
                  ("error" .=) <$> _gooError,
                  ("webDetection" .=) <$> _gooWebDetection,
                  ("safeSearchAnnotation" .=) <$>
                    _gooSafeSearchAnnotation,
                  ("landmarkAnnotations" .=) <$>
                    _gooLandmarkAnnotations,
                  ("localizedObjectAnnotations" .=) <$>
                    _gooLocalizedObjectAnnotations,
                  ("textAnnotations" .=) <$> _gooTextAnnotations,
                  ("cropHintsAnnotation" .=) <$>
                    _gooCropHintsAnnotation,
                  ("fullTextAnnotation" .=) <$> _gooFullTextAnnotation,
                  ("imagePropertiesAnnotation" .=) <$>
                    _gooImagePropertiesAnnotation])

-- | Stores image properties, such as dominant colors.
--
-- /See:/ 'googleCloudVisionV1p3beta1ImageProperties' smart constructor.
newtype GoogleCloudVisionV1p3beta1ImageProperties =
  GoogleCloudVisionV1p3beta1ImageProperties'
    { _gcvvipsDominantColors :: Maybe GoogleCloudVisionV1p3beta1DominantColorsAnnotation
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1ImageProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvipsDominantColors'
googleCloudVisionV1p3beta1ImageProperties
    :: GoogleCloudVisionV1p3beta1ImageProperties
googleCloudVisionV1p3beta1ImageProperties =
  GoogleCloudVisionV1p3beta1ImageProperties' {_gcvvipsDominantColors = Nothing}


-- | If present, dominant colors completed successfully.
gcvvipsDominantColors :: Lens' GoogleCloudVisionV1p3beta1ImageProperties (Maybe GoogleCloudVisionV1p3beta1DominantColorsAnnotation)
gcvvipsDominantColors
  = lens _gcvvipsDominantColors
      (\ s a -> s{_gcvvipsDominantColors = a})

instance FromJSON
           GoogleCloudVisionV1p3beta1ImageProperties
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p3beta1ImageProperties"
              (\ o ->
                 GoogleCloudVisionV1p3beta1ImageProperties' <$>
                   (o .:? "dominantColors"))

instance ToJSON
           GoogleCloudVisionV1p3beta1ImageProperties
         where
        toJSON GoogleCloudVisionV1p3beta1ImageProperties'{..}
          = object
              (catMaybes
                 [("dominantColors" .=) <$> _gcvvipsDominantColors])

-- | Set of crop hints that are used to generate new crops when serving
-- images.
--
-- /See:/ 'googleCloudVisionV1p4beta1CropHintsAnnotation' smart constructor.
newtype GoogleCloudVisionV1p4beta1CropHintsAnnotation =
  GoogleCloudVisionV1p4beta1CropHintsAnnotation'
    { _gCropHints :: Maybe [GoogleCloudVisionV1p4beta1CropHint]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1CropHintsAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gCropHints'
googleCloudVisionV1p4beta1CropHintsAnnotation
    :: GoogleCloudVisionV1p4beta1CropHintsAnnotation
googleCloudVisionV1p4beta1CropHintsAnnotation =
  GoogleCloudVisionV1p4beta1CropHintsAnnotation' {_gCropHints = Nothing}


-- | Crop hint results.
gCropHints :: Lens' GoogleCloudVisionV1p4beta1CropHintsAnnotation [GoogleCloudVisionV1p4beta1CropHint]
gCropHints
  = lens _gCropHints (\ s a -> s{_gCropHints = a}) .
      _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p4beta1CropHintsAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p4beta1CropHintsAnnotation"
              (\ o ->
                 GoogleCloudVisionV1p4beta1CropHintsAnnotation' <$>
                   (o .:? "cropHints" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p4beta1CropHintsAnnotation
         where
        toJSON
          GoogleCloudVisionV1p4beta1CropHintsAnnotation'{..}
          = object
              (catMaybes [("cropHints" .=) <$> _gCropHints])

-- | External image source (Google Cloud Storage or web URL image location).
--
-- /See:/ 'googleCloudVisionV1p2beta1ImageSource' smart constructor.
data GoogleCloudVisionV1p2beta1ImageSource =
  GoogleCloudVisionV1p2beta1ImageSource'
    { _gcvvisGcsImageURI :: !(Maybe Text)
    , _gcvvisImageURI :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1ImageSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvisGcsImageURI'
--
-- * 'gcvvisImageURI'
googleCloudVisionV1p2beta1ImageSource
    :: GoogleCloudVisionV1p2beta1ImageSource
googleCloudVisionV1p2beta1ImageSource =
  GoogleCloudVisionV1p2beta1ImageSource'
    {_gcvvisGcsImageURI = Nothing, _gcvvisImageURI = Nothing}


-- | **Use \`image_uri\` instead.** The Google Cloud Storage URI of the form
-- \`gs:\/\/bucket_name\/object_name\`. Object versioning is not supported.
-- See [Google Cloud Storage Request
-- URIs](https:\/\/cloud.google.com\/storage\/docs\/reference-uris) for
-- more info.
gcvvisGcsImageURI :: Lens' GoogleCloudVisionV1p2beta1ImageSource (Maybe Text)
gcvvisGcsImageURI
  = lens _gcvvisGcsImageURI
      (\ s a -> s{_gcvvisGcsImageURI = a})

-- | The URI of the source image. Can be either: 1. A Google Cloud Storage
-- URI of the form \`gs:\/\/bucket_name\/object_name\`. Object versioning
-- is not supported. See [Google Cloud Storage Request
-- URIs](https:\/\/cloud.google.com\/storage\/docs\/reference-uris) for
-- more info. 2. A publicly-accessible image HTTP\/HTTPS URL. When fetching
-- images from HTTP\/HTTPS URLs, Google cannot guarantee that the request
-- will be completed. Your request may fail if the specified host denies
-- the request (e.g. due to request throttling or DOS prevention), or if
-- Google throttles requests to the site for abuse prevention. You should
-- not depend on externally-hosted images for production applications. When
-- both \`gcs_image_uri\` and \`image_uri\` are specified, \`image_uri\`
-- takes precedence.
gcvvisImageURI :: Lens' GoogleCloudVisionV1p2beta1ImageSource (Maybe Text)
gcvvisImageURI
  = lens _gcvvisImageURI
      (\ s a -> s{_gcvvisImageURI = a})

instance FromJSON
           GoogleCloudVisionV1p2beta1ImageSource
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p2beta1ImageSource"
              (\ o ->
                 GoogleCloudVisionV1p2beta1ImageSource' <$>
                   (o .:? "gcsImageUri") <*> (o .:? "imageUri"))

instance ToJSON GoogleCloudVisionV1p2beta1ImageSource
         where
        toJSON GoogleCloudVisionV1p2beta1ImageSource'{..}
          = object
              (catMaybes
                 [("gcsImageUri" .=) <$> _gcvvisGcsImageURI,
                  ("imageUri" .=) <$> _gcvvisImageURI])

-- | A face-specific landmark (for example, a face feature).
--
-- /See:/ 'googleCloudVisionV1p4beta1FaceAnnotationLandmark' smart constructor.
data GoogleCloudVisionV1p4beta1FaceAnnotationLandmark =
  GoogleCloudVisionV1p4beta1FaceAnnotationLandmark'
    { _gType :: !(Maybe GoogleCloudVisionV1p4beta1FaceAnnotationLandmarkType)
    , _gPosition :: !(Maybe GoogleCloudVisionV1p4beta1Position)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1FaceAnnotationLandmark' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gType'
--
-- * 'gPosition'
googleCloudVisionV1p4beta1FaceAnnotationLandmark
    :: GoogleCloudVisionV1p4beta1FaceAnnotationLandmark
googleCloudVisionV1p4beta1FaceAnnotationLandmark =
  GoogleCloudVisionV1p4beta1FaceAnnotationLandmark'
    {_gType = Nothing, _gPosition = Nothing}


-- | Face landmark type.
gType :: Lens' GoogleCloudVisionV1p4beta1FaceAnnotationLandmark (Maybe GoogleCloudVisionV1p4beta1FaceAnnotationLandmarkType)
gType = lens _gType (\ s a -> s{_gType = a})

-- | Face landmark position.
gPosition :: Lens' GoogleCloudVisionV1p4beta1FaceAnnotationLandmark (Maybe GoogleCloudVisionV1p4beta1Position)
gPosition
  = lens _gPosition (\ s a -> s{_gPosition = a})

instance FromJSON
           GoogleCloudVisionV1p4beta1FaceAnnotationLandmark
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p4beta1FaceAnnotationLandmark"
              (\ o ->
                 GoogleCloudVisionV1p4beta1FaceAnnotationLandmark' <$>
                   (o .:? "type") <*> (o .:? "position"))

instance ToJSON
           GoogleCloudVisionV1p4beta1FaceAnnotationLandmark
         where
        toJSON
          GoogleCloudVisionV1p4beta1FaceAnnotationLandmark'{..}
          = object
              (catMaybes
                 [("type" .=) <$> _gType,
                  ("position" .=) <$> _gPosition])

-- | Set of detected entity features.
--
-- /See:/ 'googleCloudVisionV1p4beta1EntityAnnotation' smart constructor.
data GoogleCloudVisionV1p4beta1EntityAnnotation =
  GoogleCloudVisionV1p4beta1EntityAnnotation'
    { _gcvveacScore :: !(Maybe (Textual Double))
    , _gcvveacTopicality :: !(Maybe (Textual Double))
    , _gcvveacLocale :: !(Maybe Text)
    , _gcvveacBoundingPoly :: !(Maybe GoogleCloudVisionV1p4beta1BoundingPoly)
    , _gcvveacConfidence :: !(Maybe (Textual Double))
    , _gcvveacMid :: !(Maybe Text)
    , _gcvveacLocations :: !(Maybe [GoogleCloudVisionV1p4beta1LocationInfo])
    , _gcvveacDescription :: !(Maybe Text)
    , _gcvveacProperties :: !(Maybe [GoogleCloudVisionV1p4beta1Property])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1EntityAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvveacScore'
--
-- * 'gcvveacTopicality'
--
-- * 'gcvveacLocale'
--
-- * 'gcvveacBoundingPoly'
--
-- * 'gcvveacConfidence'
--
-- * 'gcvveacMid'
--
-- * 'gcvveacLocations'
--
-- * 'gcvveacDescription'
--
-- * 'gcvveacProperties'
googleCloudVisionV1p4beta1EntityAnnotation
    :: GoogleCloudVisionV1p4beta1EntityAnnotation
googleCloudVisionV1p4beta1EntityAnnotation =
  GoogleCloudVisionV1p4beta1EntityAnnotation'
    { _gcvveacScore = Nothing
    , _gcvveacTopicality = Nothing
    , _gcvveacLocale = Nothing
    , _gcvveacBoundingPoly = Nothing
    , _gcvveacConfidence = Nothing
    , _gcvveacMid = Nothing
    , _gcvveacLocations = Nothing
    , _gcvveacDescription = Nothing
    , _gcvveacProperties = Nothing
    }


-- | Overall score of the result. Range [0, 1].
gcvveacScore :: Lens' GoogleCloudVisionV1p4beta1EntityAnnotation (Maybe Double)
gcvveacScore
  = lens _gcvveacScore (\ s a -> s{_gcvveacScore = a})
      . mapping _Coerce

-- | The relevancy of the ICA (Image Content Annotation) label to the image.
-- For example, the relevancy of \"tower\" is likely higher to an image
-- containing the detected \"Eiffel Tower\" than to an image containing a
-- detected distant towering building, even though the confidence that
-- there is a tower in each image may be the same. Range [0, 1].
gcvveacTopicality :: Lens' GoogleCloudVisionV1p4beta1EntityAnnotation (Maybe Double)
gcvveacTopicality
  = lens _gcvveacTopicality
      (\ s a -> s{_gcvveacTopicality = a})
      . mapping _Coerce

-- | The language code for the locale in which the entity textual
-- \`description\` is expressed.
gcvveacLocale :: Lens' GoogleCloudVisionV1p4beta1EntityAnnotation (Maybe Text)
gcvveacLocale
  = lens _gcvveacLocale
      (\ s a -> s{_gcvveacLocale = a})

-- | Image region to which this entity belongs. Not produced for
-- \`LABEL_DETECTION\` features.
gcvveacBoundingPoly :: Lens' GoogleCloudVisionV1p4beta1EntityAnnotation (Maybe GoogleCloudVisionV1p4beta1BoundingPoly)
gcvveacBoundingPoly
  = lens _gcvveacBoundingPoly
      (\ s a -> s{_gcvveacBoundingPoly = a})

-- | **Deprecated. Use \`score\` instead.** The accuracy of the entity
-- detection in an image. For example, for an image in which the \"Eiffel
-- Tower\" entity is detected, this field represents the confidence that
-- there is a tower in the query image. Range [0, 1].
gcvveacConfidence :: Lens' GoogleCloudVisionV1p4beta1EntityAnnotation (Maybe Double)
gcvveacConfidence
  = lens _gcvveacConfidence
      (\ s a -> s{_gcvveacConfidence = a})
      . mapping _Coerce

-- | Opaque entity ID. Some IDs may be available in [Google Knowledge Graph
-- Search API](https:\/\/developers.google.com\/knowledge-graph\/).
gcvveacMid :: Lens' GoogleCloudVisionV1p4beta1EntityAnnotation (Maybe Text)
gcvveacMid
  = lens _gcvveacMid (\ s a -> s{_gcvveacMid = a})

-- | The location information for the detected entity. Multiple
-- \`LocationInfo\` elements can be present because one location may
-- indicate the location of the scene in the image, and another location
-- may indicate the location of the place where the image was taken.
-- Location information is usually present for landmarks.
gcvveacLocations :: Lens' GoogleCloudVisionV1p4beta1EntityAnnotation [GoogleCloudVisionV1p4beta1LocationInfo]
gcvveacLocations
  = lens _gcvveacLocations
      (\ s a -> s{_gcvveacLocations = a})
      . _Default
      . _Coerce

-- | Entity textual description, expressed in its \`locale\` language.
gcvveacDescription :: Lens' GoogleCloudVisionV1p4beta1EntityAnnotation (Maybe Text)
gcvveacDescription
  = lens _gcvveacDescription
      (\ s a -> s{_gcvveacDescription = a})

-- | Some entities may have optional user-supplied \`Property\` (name\/value)
-- fields, such a score or string that qualifies the entity.
gcvveacProperties :: Lens' GoogleCloudVisionV1p4beta1EntityAnnotation [GoogleCloudVisionV1p4beta1Property]
gcvveacProperties
  = lens _gcvveacProperties
      (\ s a -> s{_gcvveacProperties = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p4beta1EntityAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p4beta1EntityAnnotation"
              (\ o ->
                 GoogleCloudVisionV1p4beta1EntityAnnotation' <$>
                   (o .:? "score") <*> (o .:? "topicality") <*>
                     (o .:? "locale")
                     <*> (o .:? "boundingPoly")
                     <*> (o .:? "confidence")
                     <*> (o .:? "mid")
                     <*> (o .:? "locations" .!= mempty)
                     <*> (o .:? "description")
                     <*> (o .:? "properties" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p4beta1EntityAnnotation
         where
        toJSON
          GoogleCloudVisionV1p4beta1EntityAnnotation'{..}
          = object
              (catMaybes
                 [("score" .=) <$> _gcvveacScore,
                  ("topicality" .=) <$> _gcvveacTopicality,
                  ("locale" .=) <$> _gcvveacLocale,
                  ("boundingPoly" .=) <$> _gcvveacBoundingPoly,
                  ("confidence" .=) <$> _gcvveacConfidence,
                  ("mid" .=) <$> _gcvveacMid,
                  ("locations" .=) <$> _gcvveacLocations,
                  ("description" .=) <$> _gcvveacDescription,
                  ("properties" .=) <$> _gcvveacProperties])

-- | Detected page from OCR.
--
-- /See:/ 'googleCloudVisionV1p3beta1Page' smart constructor.
data GoogleCloudVisionV1p3beta1Page =
  GoogleCloudVisionV1p3beta1Page'
    { _goooProperty :: !(Maybe GoogleCloudVisionV1p3beta1TextAnnotationTextProperty)
    , _goooHeight :: !(Maybe (Textual Int32))
    , _goooBlocks :: !(Maybe [GoogleCloudVisionV1p3beta1Block])
    , _goooWidth :: !(Maybe (Textual Int32))
    , _goooConfidence :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1Page' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'goooProperty'
--
-- * 'goooHeight'
--
-- * 'goooBlocks'
--
-- * 'goooWidth'
--
-- * 'goooConfidence'
googleCloudVisionV1p3beta1Page
    :: GoogleCloudVisionV1p3beta1Page
googleCloudVisionV1p3beta1Page =
  GoogleCloudVisionV1p3beta1Page'
    { _goooProperty = Nothing
    , _goooHeight = Nothing
    , _goooBlocks = Nothing
    , _goooWidth = Nothing
    , _goooConfidence = Nothing
    }


-- | Additional information detected on the page.
goooProperty :: Lens' GoogleCloudVisionV1p3beta1Page (Maybe GoogleCloudVisionV1p3beta1TextAnnotationTextProperty)
goooProperty
  = lens _goooProperty (\ s a -> s{_goooProperty = a})

-- | Page height. For PDFs the unit is points. For images (including TIFFs)
-- the unit is pixels.
goooHeight :: Lens' GoogleCloudVisionV1p3beta1Page (Maybe Int32)
goooHeight
  = lens _goooHeight (\ s a -> s{_goooHeight = a}) .
      mapping _Coerce

-- | List of blocks of text, images etc on this page.
goooBlocks :: Lens' GoogleCloudVisionV1p3beta1Page [GoogleCloudVisionV1p3beta1Block]
goooBlocks
  = lens _goooBlocks (\ s a -> s{_goooBlocks = a}) .
      _Default
      . _Coerce

-- | Page width. For PDFs the unit is points. For images (including TIFFs)
-- the unit is pixels.
goooWidth :: Lens' GoogleCloudVisionV1p3beta1Page (Maybe Int32)
goooWidth
  = lens _goooWidth (\ s a -> s{_goooWidth = a}) .
      mapping _Coerce

-- | Confidence of the OCR results on the page. Range [0, 1].
goooConfidence :: Lens' GoogleCloudVisionV1p3beta1Page (Maybe Double)
goooConfidence
  = lens _goooConfidence
      (\ s a -> s{_goooConfidence = a})
      . mapping _Coerce

instance FromJSON GoogleCloudVisionV1p3beta1Page
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p3beta1Page"
              (\ o ->
                 GoogleCloudVisionV1p3beta1Page' <$>
                   (o .:? "property") <*> (o .:? "height") <*>
                     (o .:? "blocks" .!= mempty)
                     <*> (o .:? "width")
                     <*> (o .:? "confidence"))

instance ToJSON GoogleCloudVisionV1p3beta1Page where
        toJSON GoogleCloudVisionV1p3beta1Page'{..}
          = object
              (catMaybes
                 [("property" .=) <$> _goooProperty,
                  ("height" .=) <$> _goooHeight,
                  ("blocks" .=) <$> _goooBlocks,
                  ("width" .=) <$> _goooWidth,
                  ("confidence" .=) <$> _goooConfidence])

-- | Logical element on the page.
--
-- /See:/ 'googleCloudVisionV1p1beta1Block' smart constructor.
data GoogleCloudVisionV1p1beta1Block =
  GoogleCloudVisionV1p1beta1Block'
    { _gcvvbProperty :: !(Maybe GoogleCloudVisionV1p1beta1TextAnnotationTextProperty)
    , _gcvvbBoundingBox :: !(Maybe GoogleCloudVisionV1p1beta1BoundingPoly)
    , _gcvvbParagraphs :: !(Maybe [GoogleCloudVisionV1p1beta1Paragraph])
    , _gcvvbConfidence :: !(Maybe (Textual Double))
    , _gcvvbBlockType :: !(Maybe GoogleCloudVisionV1p1beta1BlockBlockType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1Block' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvbProperty'
--
-- * 'gcvvbBoundingBox'
--
-- * 'gcvvbParagraphs'
--
-- * 'gcvvbConfidence'
--
-- * 'gcvvbBlockType'
googleCloudVisionV1p1beta1Block
    :: GoogleCloudVisionV1p1beta1Block
googleCloudVisionV1p1beta1Block =
  GoogleCloudVisionV1p1beta1Block'
    { _gcvvbProperty = Nothing
    , _gcvvbBoundingBox = Nothing
    , _gcvvbParagraphs = Nothing
    , _gcvvbConfidence = Nothing
    , _gcvvbBlockType = Nothing
    }


-- | Additional information detected for the block.
gcvvbProperty :: Lens' GoogleCloudVisionV1p1beta1Block (Maybe GoogleCloudVisionV1p1beta1TextAnnotationTextProperty)
gcvvbProperty
  = lens _gcvvbProperty
      (\ s a -> s{_gcvvbProperty = a})

-- | The bounding box for the block. The vertices are in the order of
-- top-left, top-right, bottom-right, bottom-left. When a rotation of the
-- bounding box is detected the rotation is represented as around the
-- top-left corner as defined when the text is read in the \'natural\'
-- orientation. For example: * when the text is horizontal it might look
-- like: 0----1 | | 3----2 * when it\'s rotated 180 degrees around the
-- top-left corner it becomes: 2----3 | | 1----0 and the vertex order will
-- still be (0, 1, 2, 3).
gcvvbBoundingBox :: Lens' GoogleCloudVisionV1p1beta1Block (Maybe GoogleCloudVisionV1p1beta1BoundingPoly)
gcvvbBoundingBox
  = lens _gcvvbBoundingBox
      (\ s a -> s{_gcvvbBoundingBox = a})

-- | List of paragraphs in this block (if this blocks is of type text).
gcvvbParagraphs :: Lens' GoogleCloudVisionV1p1beta1Block [GoogleCloudVisionV1p1beta1Paragraph]
gcvvbParagraphs
  = lens _gcvvbParagraphs
      (\ s a -> s{_gcvvbParagraphs = a})
      . _Default
      . _Coerce

-- | Confidence of the OCR results on the block. Range [0, 1].
gcvvbConfidence :: Lens' GoogleCloudVisionV1p1beta1Block (Maybe Double)
gcvvbConfidence
  = lens _gcvvbConfidence
      (\ s a -> s{_gcvvbConfidence = a})
      . mapping _Coerce

-- | Detected block type (text, image etc) for this block.
gcvvbBlockType :: Lens' GoogleCloudVisionV1p1beta1Block (Maybe GoogleCloudVisionV1p1beta1BlockBlockType)
gcvvbBlockType
  = lens _gcvvbBlockType
      (\ s a -> s{_gcvvbBlockType = a})

instance FromJSON GoogleCloudVisionV1p1beta1Block
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p1beta1Block"
              (\ o ->
                 GoogleCloudVisionV1p1beta1Block' <$>
                   (o .:? "property") <*> (o .:? "boundingBox") <*>
                     (o .:? "paragraphs" .!= mempty)
                     <*> (o .:? "confidence")
                     <*> (o .:? "blockType"))

instance ToJSON GoogleCloudVisionV1p1beta1Block where
        toJSON GoogleCloudVisionV1p1beta1Block'{..}
          = object
              (catMaybes
                 [("property" .=) <$> _gcvvbProperty,
                  ("boundingBox" .=) <$> _gcvvbBoundingBox,
                  ("paragraphs" .=) <$> _gcvvbParagraphs,
                  ("confidence" .=) <$> _gcvvbConfidence,
                  ("blockType" .=) <$> _gcvvbBlockType])

-- | The Google Cloud Storage location where the output will be written to.
--
-- /See:/ 'googleCloudVisionV1p3beta1GcsDestination' smart constructor.
newtype GoogleCloudVisionV1p3beta1GcsDestination =
  GoogleCloudVisionV1p3beta1GcsDestination'
    { _gcvvgdURI :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1GcsDestination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvgdURI'
googleCloudVisionV1p3beta1GcsDestination
    :: GoogleCloudVisionV1p3beta1GcsDestination
googleCloudVisionV1p3beta1GcsDestination =
  GoogleCloudVisionV1p3beta1GcsDestination' {_gcvvgdURI = Nothing}


-- | Google Cloud Storage URI prefix where the results will be stored.
-- Results will be in JSON format and preceded by its corresponding input
-- URI prefix. This field can either represent a gcs file prefix or gcs
-- directory. In either case, the uri should be unique because in order to
-- get all of the output files, you will need to do a wildcard gcs search
-- on the uri prefix you provide. Examples: * File Prefix:
-- gs:\/\/bucket-name\/here\/filenameprefix The output files will be
-- created in gs:\/\/bucket-name\/here\/ and the names of the output files
-- will begin with \"filenameprefix\". * Directory Prefix:
-- gs:\/\/bucket-name\/some\/location\/ The output files will be created in
-- gs:\/\/bucket-name\/some\/location\/ and the names of the output files
-- could be anything because there was no filename prefix specified. If
-- multiple outputs, each response is still AnnotateFileResponse, each of
-- which contains some subset of the full list of AnnotateImageResponse.
-- Multiple outputs can happen if, for example, the output JSON is too
-- large and overflows into multiple sharded files.
gcvvgdURI :: Lens' GoogleCloudVisionV1p3beta1GcsDestination (Maybe Text)
gcvvgdURI
  = lens _gcvvgdURI (\ s a -> s{_gcvvgdURI = a})

instance FromJSON
           GoogleCloudVisionV1p3beta1GcsDestination
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p3beta1GcsDestination"
              (\ o ->
                 GoogleCloudVisionV1p3beta1GcsDestination' <$>
                   (o .:? "uri"))

instance ToJSON
           GoogleCloudVisionV1p3beta1GcsDestination
         where
        toJSON GoogleCloudVisionV1p3beta1GcsDestination'{..}
          = object (catMaybes [("uri" .=) <$> _gcvvgdURI])

-- | A Product contains ReferenceImages.
--
-- /See:/ 'googleCloudVisionV1p3beta1Product' smart constructor.
data GoogleCloudVisionV1p3beta1Product =
  GoogleCloudVisionV1p3beta1Product'
    { _gcvvpcName :: !(Maybe Text)
    , _gcvvpcDisplayName :: !(Maybe Text)
    , _gcvvpcProductCategory :: !(Maybe Text)
    , _gcvvpcProductLabels :: !(Maybe [GoogleCloudVisionV1p3beta1ProductKeyValue])
    , _gcvvpcDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1Product' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvpcName'
--
-- * 'gcvvpcDisplayName'
--
-- * 'gcvvpcProductCategory'
--
-- * 'gcvvpcProductLabels'
--
-- * 'gcvvpcDescription'
googleCloudVisionV1p3beta1Product
    :: GoogleCloudVisionV1p3beta1Product
googleCloudVisionV1p3beta1Product =
  GoogleCloudVisionV1p3beta1Product'
    { _gcvvpcName = Nothing
    , _gcvvpcDisplayName = Nothing
    , _gcvvpcProductCategory = Nothing
    , _gcvvpcProductLabels = Nothing
    , _gcvvpcDescription = Nothing
    }


-- | The resource name of the product. Format is:
-- \`projects\/PROJECT_ID\/locations\/LOC_ID\/products\/PRODUCT_ID\`. This
-- field is ignored when creating a product.
gcvvpcName :: Lens' GoogleCloudVisionV1p3beta1Product (Maybe Text)
gcvvpcName
  = lens _gcvvpcName (\ s a -> s{_gcvvpcName = a})

-- | The user-provided name for this Product. Must not be empty. Must be at
-- most 4096 characters long.
gcvvpcDisplayName :: Lens' GoogleCloudVisionV1p3beta1Product (Maybe Text)
gcvvpcDisplayName
  = lens _gcvvpcDisplayName
      (\ s a -> s{_gcvvpcDisplayName = a})

-- | Immutable. The category for the product identified by the reference
-- image. This should be one of \"homegoods-v2\", \"apparel-v2\",
-- \"toys-v2\", \"packagedgoods-v1\" or \"general-v1\". The legacy
-- categories \"homegoods\", \"apparel\", and \"toys\" are still supported,
-- but these should not be used for new products.
gcvvpcProductCategory :: Lens' GoogleCloudVisionV1p3beta1Product (Maybe Text)
gcvvpcProductCategory
  = lens _gcvvpcProductCategory
      (\ s a -> s{_gcvvpcProductCategory = a})

-- | Key-value pairs that can be attached to a product. At query time,
-- constraints can be specified based on the product_labels. Note that
-- integer values can be provided as strings, e.g. \"1199\". Only strings
-- with integer values can match a range-based restriction which is to be
-- supported soon. Multiple values can be assigned to the same key. One
-- product may have up to 500 product_labels. Notice that the total number
-- of distinct product_labels over all products in one ProductSet cannot
-- exceed 1M, otherwise the product search pipeline will refuse to work for
-- that ProductSet.
gcvvpcProductLabels :: Lens' GoogleCloudVisionV1p3beta1Product [GoogleCloudVisionV1p3beta1ProductKeyValue]
gcvvpcProductLabels
  = lens _gcvvpcProductLabels
      (\ s a -> s{_gcvvpcProductLabels = a})
      . _Default
      . _Coerce

-- | User-provided metadata to be stored with this product. Must be at most
-- 4096 characters long.
gcvvpcDescription :: Lens' GoogleCloudVisionV1p3beta1Product (Maybe Text)
gcvvpcDescription
  = lens _gcvvpcDescription
      (\ s a -> s{_gcvvpcDescription = a})

instance FromJSON GoogleCloudVisionV1p3beta1Product
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p3beta1Product"
              (\ o ->
                 GoogleCloudVisionV1p3beta1Product' <$>
                   (o .:? "name") <*> (o .:? "displayName") <*>
                     (o .:? "productCategory")
                     <*> (o .:? "productLabels" .!= mempty)
                     <*> (o .:? "description"))

instance ToJSON GoogleCloudVisionV1p3beta1Product
         where
        toJSON GoogleCloudVisionV1p3beta1Product'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _gcvvpcName,
                  ("displayName" .=) <$> _gcvvpcDisplayName,
                  ("productCategory" .=) <$> _gcvvpcProductCategory,
                  ("productLabels" .=) <$> _gcvvpcProductLabels,
                  ("description" .=) <$> _gcvvpcDescription])

-- | A \`ReferenceImage\` represents a product image and its associated
-- metadata, such as bounding boxes.
--
-- /See:/ 'googleCloudVisionV1p4beta1ReferenceImage' smart constructor.
data GoogleCloudVisionV1p4beta1ReferenceImage =
  GoogleCloudVisionV1p4beta1ReferenceImage'
    { _gcvvriURI :: !(Maybe Text)
    , _gcvvriName :: !(Maybe Text)
    , _gcvvriBoundingPolys :: !(Maybe [GoogleCloudVisionV1p4beta1BoundingPoly])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1ReferenceImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvriURI'
--
-- * 'gcvvriName'
--
-- * 'gcvvriBoundingPolys'
googleCloudVisionV1p4beta1ReferenceImage
    :: GoogleCloudVisionV1p4beta1ReferenceImage
googleCloudVisionV1p4beta1ReferenceImage =
  GoogleCloudVisionV1p4beta1ReferenceImage'
    { _gcvvriURI = Nothing
    , _gcvvriName = Nothing
    , _gcvvriBoundingPolys = Nothing
    }


-- | Required. The Google Cloud Storage URI of the reference image. The URI
-- must start with \`gs:\/\/\`.
gcvvriURI :: Lens' GoogleCloudVisionV1p4beta1ReferenceImage (Maybe Text)
gcvvriURI
  = lens _gcvvriURI (\ s a -> s{_gcvvriURI = a})

-- | The resource name of the reference image. Format is:
-- \`projects\/PROJECT_ID\/locations\/LOC_ID\/products\/PRODUCT_ID\/referenceImages\/IMAGE_ID\`.
-- This field is ignored when creating a reference image.
gcvvriName :: Lens' GoogleCloudVisionV1p4beta1ReferenceImage (Maybe Text)
gcvvriName
  = lens _gcvvriName (\ s a -> s{_gcvvriName = a})

-- | Optional. Bounding polygons around the areas of interest in the
-- reference image. If this field is empty, the system will try to detect
-- regions of interest. At most 10 bounding polygons will be used. The
-- provided shape is converted into a non-rotated rectangle. Once
-- converted, the small edge of the rectangle must be greater than or equal
-- to 300 pixels. The aspect ratio must be 1:4 or less (i.e. 1:3 is ok; 1:5
-- is not).
gcvvriBoundingPolys :: Lens' GoogleCloudVisionV1p4beta1ReferenceImage [GoogleCloudVisionV1p4beta1BoundingPoly]
gcvvriBoundingPolys
  = lens _gcvvriBoundingPolys
      (\ s a -> s{_gcvvriBoundingPolys = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p4beta1ReferenceImage
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p4beta1ReferenceImage"
              (\ o ->
                 GoogleCloudVisionV1p4beta1ReferenceImage' <$>
                   (o .:? "uri") <*> (o .:? "name") <*>
                     (o .:? "boundingPolys" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p4beta1ReferenceImage
         where
        toJSON GoogleCloudVisionV1p4beta1ReferenceImage'{..}
          = object
              (catMaybes
                 [("uri" .=) <$> _gcvvriURI,
                  ("name" .=) <$> _gcvvriName,
                  ("boundingPolys" .=) <$> _gcvvriBoundingPolys])

-- | The desired input location and metadata.
--
-- /See:/ 'googleCloudVisionV1p4beta1InputConfig' smart constructor.
data GoogleCloudVisionV1p4beta1InputConfig =
  GoogleCloudVisionV1p4beta1InputConfig'
    { _gGcsSource :: !(Maybe GoogleCloudVisionV1p4beta1GcsSource)
    , _gContent :: !(Maybe Bytes)
    , _gMimeType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1InputConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gGcsSource'
--
-- * 'gContent'
--
-- * 'gMimeType'
googleCloudVisionV1p4beta1InputConfig
    :: GoogleCloudVisionV1p4beta1InputConfig
googleCloudVisionV1p4beta1InputConfig =
  GoogleCloudVisionV1p4beta1InputConfig'
    {_gGcsSource = Nothing, _gContent = Nothing, _gMimeType = Nothing}


-- | The Google Cloud Storage location to read the input from.
gGcsSource :: Lens' GoogleCloudVisionV1p4beta1InputConfig (Maybe GoogleCloudVisionV1p4beta1GcsSource)
gGcsSource
  = lens _gGcsSource (\ s a -> s{_gGcsSource = a})

-- | File content, represented as a stream of bytes. Note: As with all
-- \`bytes\` fields, protobuffers use a pure binary representation, whereas
-- JSON representations use base64. Currently, this field only works for
-- BatchAnnotateFiles requests. It does not work for
-- AsyncBatchAnnotateFiles requests.
gContent :: Lens' GoogleCloudVisionV1p4beta1InputConfig (Maybe ByteString)
gContent
  = lens _gContent (\ s a -> s{_gContent = a}) .
      mapping _Bytes

-- | The type of the file. Currently only \"application\/pdf\",
-- \"image\/tiff\" and \"image\/gif\" are supported. Wildcards are not
-- supported.
gMimeType :: Lens' GoogleCloudVisionV1p4beta1InputConfig (Maybe Text)
gMimeType
  = lens _gMimeType (\ s a -> s{_gMimeType = a})

instance FromJSON
           GoogleCloudVisionV1p4beta1InputConfig
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p4beta1InputConfig"
              (\ o ->
                 GoogleCloudVisionV1p4beta1InputConfig' <$>
                   (o .:? "gcsSource") <*> (o .:? "content") <*>
                     (o .:? "mimeType"))

instance ToJSON GoogleCloudVisionV1p4beta1InputConfig
         where
        toJSON GoogleCloudVisionV1p4beta1InputConfig'{..}
          = object
              (catMaybes
                 [("gcsSource" .=) <$> _gGcsSource,
                  ("content" .=) <$> _gContent,
                  ("mimeType" .=) <$> _gMimeType])

-- | Metadata for the batch operations such as the current state. This is
-- included in the \`metadata\` field of the \`Operation\` returned by the
-- \`GetOperation\` call of the \`google::longrunning::Operations\`
-- service.
--
-- /See:/ 'googleCloudVisionV1p4beta1BatchOperationMetadata' smart constructor.
data GoogleCloudVisionV1p4beta1BatchOperationMetadata =
  GoogleCloudVisionV1p4beta1BatchOperationMetadata'
    { _gcvvbomState :: !(Maybe GoogleCloudVisionV1p4beta1BatchOperationMetadataState)
    , _gcvvbomEndTime :: !(Maybe DateTime')
    , _gcvvbomSubmitTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1BatchOperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvbomState'
--
-- * 'gcvvbomEndTime'
--
-- * 'gcvvbomSubmitTime'
googleCloudVisionV1p4beta1BatchOperationMetadata
    :: GoogleCloudVisionV1p4beta1BatchOperationMetadata
googleCloudVisionV1p4beta1BatchOperationMetadata =
  GoogleCloudVisionV1p4beta1BatchOperationMetadata'
    { _gcvvbomState = Nothing
    , _gcvvbomEndTime = Nothing
    , _gcvvbomSubmitTime = Nothing
    }


-- | The current state of the batch operation.
gcvvbomState :: Lens' GoogleCloudVisionV1p4beta1BatchOperationMetadata (Maybe GoogleCloudVisionV1p4beta1BatchOperationMetadataState)
gcvvbomState
  = lens _gcvvbomState (\ s a -> s{_gcvvbomState = a})

-- | The time when the batch request is finished and
-- google.longrunning.Operation.done is set to true.
gcvvbomEndTime :: Lens' GoogleCloudVisionV1p4beta1BatchOperationMetadata (Maybe UTCTime)
gcvvbomEndTime
  = lens _gcvvbomEndTime
      (\ s a -> s{_gcvvbomEndTime = a})
      . mapping _DateTime

-- | The time when the batch request was submitted to the server.
gcvvbomSubmitTime :: Lens' GoogleCloudVisionV1p4beta1BatchOperationMetadata (Maybe UTCTime)
gcvvbomSubmitTime
  = lens _gcvvbomSubmitTime
      (\ s a -> s{_gcvvbomSubmitTime = a})
      . mapping _DateTime

instance FromJSON
           GoogleCloudVisionV1p4beta1BatchOperationMetadata
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p4beta1BatchOperationMetadata"
              (\ o ->
                 GoogleCloudVisionV1p4beta1BatchOperationMetadata' <$>
                   (o .:? "state") <*> (o .:? "endTime") <*>
                     (o .:? "submitTime"))

instance ToJSON
           GoogleCloudVisionV1p4beta1BatchOperationMetadata
         where
        toJSON
          GoogleCloudVisionV1p4beta1BatchOperationMetadata'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _gcvvbomState,
                  ("endTime" .=) <$> _gcvvbomEndTime,
                  ("submitTime" .=) <$> _gcvvbomSubmitTime])

-- | A bounding polygon for the detected image annotation.
--
-- /See:/ 'boundingPoly' smart constructor.
data BoundingPoly =
  BoundingPoly'
    { _bpNormalizedVertices :: !(Maybe [NormalizedVertex])
    , _bpVertices :: !(Maybe [Vertex])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BoundingPoly' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bpNormalizedVertices'
--
-- * 'bpVertices'
boundingPoly
    :: BoundingPoly
boundingPoly =
  BoundingPoly' {_bpNormalizedVertices = Nothing, _bpVertices = Nothing}


-- | The bounding polygon normalized vertices.
bpNormalizedVertices :: Lens' BoundingPoly [NormalizedVertex]
bpNormalizedVertices
  = lens _bpNormalizedVertices
      (\ s a -> s{_bpNormalizedVertices = a})
      . _Default
      . _Coerce

-- | The bounding polygon vertices.
bpVertices :: Lens' BoundingPoly [Vertex]
bpVertices
  = lens _bpVertices (\ s a -> s{_bpVertices = a}) .
      _Default
      . _Coerce

instance FromJSON BoundingPoly where
        parseJSON
          = withObject "BoundingPoly"
              (\ o ->
                 BoundingPoly' <$>
                   (o .:? "normalizedVertices" .!= mempty) <*>
                     (o .:? "vertices" .!= mempty))

instance ToJSON BoundingPoly where
        toJSON BoundingPoly'{..}
          = object
              (catMaybes
                 [("normalizedVertices" .=) <$> _bpNormalizedVertices,
                  ("vertices" .=) <$> _bpVertices])

-- | A vertex represents a 2D point in the image. NOTE: the normalized vertex
-- coordinates are relative to the original image and range from 0 to 1.
--
-- /See:/ 'googleCloudVisionV1p1beta1NormalizedVertex' smart constructor.
data GoogleCloudVisionV1p1beta1NormalizedVertex =
  GoogleCloudVisionV1p1beta1NormalizedVertex'
    { _gX :: !(Maybe (Textual Double))
    , _gY :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1NormalizedVertex' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gX'
--
-- * 'gY'
googleCloudVisionV1p1beta1NormalizedVertex
    :: GoogleCloudVisionV1p1beta1NormalizedVertex
googleCloudVisionV1p1beta1NormalizedVertex =
  GoogleCloudVisionV1p1beta1NormalizedVertex' {_gX = Nothing, _gY = Nothing}


-- | X coordinate.
gX :: Lens' GoogleCloudVisionV1p1beta1NormalizedVertex (Maybe Double)
gX = lens _gX (\ s a -> s{_gX = a}) . mapping _Coerce

-- | Y coordinate.
gY :: Lens' GoogleCloudVisionV1p1beta1NormalizedVertex (Maybe Double)
gY = lens _gY (\ s a -> s{_gY = a}) . mapping _Coerce

instance FromJSON
           GoogleCloudVisionV1p1beta1NormalizedVertex
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p1beta1NormalizedVertex"
              (\ o ->
                 GoogleCloudVisionV1p1beta1NormalizedVertex' <$>
                   (o .:? "x") <*> (o .:? "y"))

instance ToJSON
           GoogleCloudVisionV1p1beta1NormalizedVertex
         where
        toJSON
          GoogleCloudVisionV1p1beta1NormalizedVertex'{..}
          = object
              (catMaybes [("x" .=) <$> _gX, ("y" .=) <$> _gY])

-- | Detected entity location information.
--
-- /See:/ 'googleCloudVisionV1p3beta1LocationInfo' smart constructor.
newtype GoogleCloudVisionV1p3beta1LocationInfo =
  GoogleCloudVisionV1p3beta1LocationInfo'
    { _gcvvliLatLng :: Maybe LatLng
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1LocationInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvliLatLng'
googleCloudVisionV1p3beta1LocationInfo
    :: GoogleCloudVisionV1p3beta1LocationInfo
googleCloudVisionV1p3beta1LocationInfo =
  GoogleCloudVisionV1p3beta1LocationInfo' {_gcvvliLatLng = Nothing}


-- | lat\/long location coordinates.
gcvvliLatLng :: Lens' GoogleCloudVisionV1p3beta1LocationInfo (Maybe LatLng)
gcvvliLatLng
  = lens _gcvvliLatLng (\ s a -> s{_gcvvliLatLng = a})

instance FromJSON
           GoogleCloudVisionV1p3beta1LocationInfo
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p3beta1LocationInfo"
              (\ o ->
                 GoogleCloudVisionV1p3beta1LocationInfo' <$>
                   (o .:? "latLng"))

instance ToJSON
           GoogleCloudVisionV1p3beta1LocationInfo
         where
        toJSON GoogleCloudVisionV1p3beta1LocationInfo'{..}
          = object
              (catMaybes [("latLng" .=) <$> _gcvvliLatLng])

-- | Metadata for web pages.
--
-- /See:/ 'googleCloudVisionV1p4beta1WebDetectionWebPage' smart constructor.
data GoogleCloudVisionV1p4beta1WebDetectionWebPage =
  GoogleCloudVisionV1p4beta1WebDetectionWebPage'
    { _gScore :: !(Maybe (Textual Double))
    , _gURL :: !(Maybe Text)
    , _gPageTitle :: !(Maybe Text)
    , _gPartialMatchingImages :: !(Maybe [GoogleCloudVisionV1p4beta1WebDetectionWebImage])
    , _gFullMatchingImages :: !(Maybe [GoogleCloudVisionV1p4beta1WebDetectionWebImage])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1WebDetectionWebPage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gScore'
--
-- * 'gURL'
--
-- * 'gPageTitle'
--
-- * 'gPartialMatchingImages'
--
-- * 'gFullMatchingImages'
googleCloudVisionV1p4beta1WebDetectionWebPage
    :: GoogleCloudVisionV1p4beta1WebDetectionWebPage
googleCloudVisionV1p4beta1WebDetectionWebPage =
  GoogleCloudVisionV1p4beta1WebDetectionWebPage'
    { _gScore = Nothing
    , _gURL = Nothing
    , _gPageTitle = Nothing
    , _gPartialMatchingImages = Nothing
    , _gFullMatchingImages = Nothing
    }


-- | (Deprecated) Overall relevancy score for the web page.
gScore :: Lens' GoogleCloudVisionV1p4beta1WebDetectionWebPage (Maybe Double)
gScore
  = lens _gScore (\ s a -> s{_gScore = a}) .
      mapping _Coerce

-- | The result web page URL.
gURL :: Lens' GoogleCloudVisionV1p4beta1WebDetectionWebPage (Maybe Text)
gURL = lens _gURL (\ s a -> s{_gURL = a})

-- | Title for the web page, may contain HTML markups.
gPageTitle :: Lens' GoogleCloudVisionV1p4beta1WebDetectionWebPage (Maybe Text)
gPageTitle
  = lens _gPageTitle (\ s a -> s{_gPageTitle = a})

-- | Partial matching images on the page. Those images are similar enough to
-- share some key-point features. For example an original image will likely
-- have partial matching for its crops.
gPartialMatchingImages :: Lens' GoogleCloudVisionV1p4beta1WebDetectionWebPage [GoogleCloudVisionV1p4beta1WebDetectionWebImage]
gPartialMatchingImages
  = lens _gPartialMatchingImages
      (\ s a -> s{_gPartialMatchingImages = a})
      . _Default
      . _Coerce

-- | Fully matching images on the page. Can include resized copies of the
-- query image.
gFullMatchingImages :: Lens' GoogleCloudVisionV1p4beta1WebDetectionWebPage [GoogleCloudVisionV1p4beta1WebDetectionWebImage]
gFullMatchingImages
  = lens _gFullMatchingImages
      (\ s a -> s{_gFullMatchingImages = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p4beta1WebDetectionWebPage
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p4beta1WebDetectionWebPage"
              (\ o ->
                 GoogleCloudVisionV1p4beta1WebDetectionWebPage' <$>
                   (o .:? "score") <*> (o .:? "url") <*>
                     (o .:? "pageTitle")
                     <*> (o .:? "partialMatchingImages" .!= mempty)
                     <*> (o .:? "fullMatchingImages" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p4beta1WebDetectionWebPage
         where
        toJSON
          GoogleCloudVisionV1p4beta1WebDetectionWebPage'{..}
          = object
              (catMaybes
                 [("score" .=) <$> _gScore, ("url" .=) <$> _gURL,
                  ("pageTitle" .=) <$> _gPageTitle,
                  ("partialMatchingImages" .=) <$>
                    _gPartialMatchingImages,
                  ("fullMatchingImages" .=) <$> _gFullMatchingImages])

-- | A list of file annotation responses.
--
-- /See:/ 'batchAnnotateFilesResponse' smart constructor.
newtype BatchAnnotateFilesResponse =
  BatchAnnotateFilesResponse'
    { _bafrResponses :: Maybe [AnnotateFileResponse]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchAnnotateFilesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bafrResponses'
batchAnnotateFilesResponse
    :: BatchAnnotateFilesResponse
batchAnnotateFilesResponse =
  BatchAnnotateFilesResponse' {_bafrResponses = Nothing}


-- | The list of file annotation responses, each response corresponding to
-- each AnnotateFileRequest in BatchAnnotateFilesRequest.
bafrResponses :: Lens' BatchAnnotateFilesResponse [AnnotateFileResponse]
bafrResponses
  = lens _bafrResponses
      (\ s a -> s{_bafrResponses = a})
      . _Default
      . _Coerce

instance FromJSON BatchAnnotateFilesResponse where
        parseJSON
          = withObject "BatchAnnotateFilesResponse"
              (\ o ->
                 BatchAnnotateFilesResponse' <$>
                   (o .:? "responses" .!= mempty))

instance ToJSON BatchAnnotateFilesResponse where
        toJSON BatchAnnotateFilesResponse'{..}
          = object
              (catMaybes [("responses" .=) <$> _bafrResponses])

-- | A vertex represents a 2D point in the image. NOTE: the vertex
-- coordinates are in the same scale as the original image.
--
-- /See:/ 'vertex' smart constructor.
data Vertex =
  Vertex'
    { _vX :: !(Maybe (Textual Int32))
    , _vY :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Vertex' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vX'
--
-- * 'vY'
vertex
    :: Vertex
vertex = Vertex' {_vX = Nothing, _vY = Nothing}


-- | X coordinate.
vX :: Lens' Vertex (Maybe Int32)
vX = lens _vX (\ s a -> s{_vX = a}) . mapping _Coerce

-- | Y coordinate.
vY :: Lens' Vertex (Maybe Int32)
vY = lens _vY (\ s a -> s{_vY = a}) . mapping _Coerce

instance FromJSON Vertex where
        parseJSON
          = withObject "Vertex"
              (\ o -> Vertex' <$> (o .:? "x") <*> (o .:? "y"))

instance ToJSON Vertex where
        toJSON Vertex'{..}
          = object
              (catMaybes [("x" .=) <$> _vX, ("y" .=) <$> _vY])

-- | A 3D position in the image, used primarily for Face detection landmarks.
-- A valid Position must have both x and y coordinates. The position
-- coordinates are in the same scale as the original image.
--
-- /See:/ 'googleCloudVisionV1p1beta1Position' smart constructor.
data GoogleCloudVisionV1p1beta1Position =
  GoogleCloudVisionV1p1beta1Position'
    { _gooZ :: !(Maybe (Textual Double))
    , _gooX :: !(Maybe (Textual Double))
    , _gooY :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1Position' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooZ'
--
-- * 'gooX'
--
-- * 'gooY'
googleCloudVisionV1p1beta1Position
    :: GoogleCloudVisionV1p1beta1Position
googleCloudVisionV1p1beta1Position =
  GoogleCloudVisionV1p1beta1Position'
    {_gooZ = Nothing, _gooX = Nothing, _gooY = Nothing}


-- | Z coordinate (or depth).
gooZ :: Lens' GoogleCloudVisionV1p1beta1Position (Maybe Double)
gooZ
  = lens _gooZ (\ s a -> s{_gooZ = a}) .
      mapping _Coerce

-- | X coordinate.
gooX :: Lens' GoogleCloudVisionV1p1beta1Position (Maybe Double)
gooX
  = lens _gooX (\ s a -> s{_gooX = a}) .
      mapping _Coerce

-- | Y coordinate.
gooY :: Lens' GoogleCloudVisionV1p1beta1Position (Maybe Double)
gooY
  = lens _gooY (\ s a -> s{_gooY = a}) .
      mapping _Coerce

instance FromJSON GoogleCloudVisionV1p1beta1Position
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p1beta1Position"
              (\ o ->
                 GoogleCloudVisionV1p1beta1Position' <$>
                   (o .:? "z") <*> (o .:? "x") <*> (o .:? "y"))

instance ToJSON GoogleCloudVisionV1p1beta1Position
         where
        toJSON GoogleCloudVisionV1p1beta1Position'{..}
          = object
              (catMaybes
                 [("z" .=) <$> _gooZ, ("x" .=) <$> _gooX,
                  ("y" .=) <$> _gooY])

-- | The response for a single offline file annotation request.
--
-- /See:/ 'googleCloudVisionV1p1beta1AsyncAnnotateFileResponse' smart constructor.
newtype GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse =
  GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse'
    { _gcvvaafrOutputConfig :: Maybe GoogleCloudVisionV1p1beta1OutputConfig
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvaafrOutputConfig'
googleCloudVisionV1p1beta1AsyncAnnotateFileResponse
    :: GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse
googleCloudVisionV1p1beta1AsyncAnnotateFileResponse =
  GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse'
    {_gcvvaafrOutputConfig = Nothing}


-- | The output location and metadata from AsyncAnnotateFileRequest.
gcvvaafrOutputConfig :: Lens' GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse (Maybe GoogleCloudVisionV1p1beta1OutputConfig)
gcvvaafrOutputConfig
  = lens _gcvvaafrOutputConfig
      (\ s a -> s{_gcvvaafrOutputConfig = a})

instance FromJSON
           GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse"
              (\ o ->
                 GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse'
                   <$> (o .:? "outputConfig"))

instance ToJSON
           GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse
         where
        toJSON
          GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse'{..}
          = object
              (catMaybes
                 [("outputConfig" .=) <$> _gcvvaafrOutputConfig])

-- | Metadata for online images.
--
-- /See:/ 'googleCloudVisionV1p3beta1WebDetectionWebImage' smart constructor.
data GoogleCloudVisionV1p3beta1WebDetectionWebImage =
  GoogleCloudVisionV1p3beta1WebDetectionWebImage'
    { _gcvvwdwiScore :: !(Maybe (Textual Double))
    , _gcvvwdwiURL :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1WebDetectionWebImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvwdwiScore'
--
-- * 'gcvvwdwiURL'
googleCloudVisionV1p3beta1WebDetectionWebImage
    :: GoogleCloudVisionV1p3beta1WebDetectionWebImage
googleCloudVisionV1p3beta1WebDetectionWebImage =
  GoogleCloudVisionV1p3beta1WebDetectionWebImage'
    {_gcvvwdwiScore = Nothing, _gcvvwdwiURL = Nothing}


-- | (Deprecated) Overall relevancy score for the image.
gcvvwdwiScore :: Lens' GoogleCloudVisionV1p3beta1WebDetectionWebImage (Maybe Double)
gcvvwdwiScore
  = lens _gcvvwdwiScore
      (\ s a -> s{_gcvvwdwiScore = a})
      . mapping _Coerce

-- | The result image URL.
gcvvwdwiURL :: Lens' GoogleCloudVisionV1p3beta1WebDetectionWebImage (Maybe Text)
gcvvwdwiURL
  = lens _gcvvwdwiURL (\ s a -> s{_gcvvwdwiURL = a})

instance FromJSON
           GoogleCloudVisionV1p3beta1WebDetectionWebImage
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p3beta1WebDetectionWebImage"
              (\ o ->
                 GoogleCloudVisionV1p3beta1WebDetectionWebImage' <$>
                   (o .:? "score") <*> (o .:? "url"))

instance ToJSON
           GoogleCloudVisionV1p3beta1WebDetectionWebImage
         where
        toJSON
          GoogleCloudVisionV1p3beta1WebDetectionWebImage'{..}
          = object
              (catMaybes
                 [("score" .=) <$> _gcvvwdwiScore,
                  ("url" .=) <$> _gcvvwdwiURL])

-- | A vertex represents a 2D point in the image. NOTE: the vertex
-- coordinates are in the same scale as the original image.
--
-- /See:/ 'googleCloudVisionV1p3beta1Vertex' smart constructor.
data GoogleCloudVisionV1p3beta1Vertex =
  GoogleCloudVisionV1p3beta1Vertex'
    { _gcvvvX :: !(Maybe (Textual Int32))
    , _gcvvvY :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1Vertex' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvvX'
--
-- * 'gcvvvY'
googleCloudVisionV1p3beta1Vertex
    :: GoogleCloudVisionV1p3beta1Vertex
googleCloudVisionV1p3beta1Vertex =
  GoogleCloudVisionV1p3beta1Vertex' {_gcvvvX = Nothing, _gcvvvY = Nothing}


-- | X coordinate.
gcvvvX :: Lens' GoogleCloudVisionV1p3beta1Vertex (Maybe Int32)
gcvvvX
  = lens _gcvvvX (\ s a -> s{_gcvvvX = a}) .
      mapping _Coerce

-- | Y coordinate.
gcvvvY :: Lens' GoogleCloudVisionV1p3beta1Vertex (Maybe Int32)
gcvvvY
  = lens _gcvvvY (\ s a -> s{_gcvvvY = a}) .
      mapping _Coerce

instance FromJSON GoogleCloudVisionV1p3beta1Vertex
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p3beta1Vertex"
              (\ o ->
                 GoogleCloudVisionV1p3beta1Vertex' <$>
                   (o .:? "x") <*> (o .:? "y"))

instance ToJSON GoogleCloudVisionV1p3beta1Vertex
         where
        toJSON GoogleCloudVisionV1p3beta1Vertex'{..}
          = object
              (catMaybes
                 [("x" .=) <$> _gcvvvX, ("y" .=) <$> _gcvvvY])

-- | Entity deduced from similar images on the Internet.
--
-- /See:/ 'webEntity' smart constructor.
data WebEntity =
  WebEntity'
    { _weScore :: !(Maybe (Textual Double))
    , _weEntityId :: !(Maybe Text)
    , _weDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WebEntity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'weScore'
--
-- * 'weEntityId'
--
-- * 'weDescription'
webEntity
    :: WebEntity
webEntity =
  WebEntity'
    {_weScore = Nothing, _weEntityId = Nothing, _weDescription = Nothing}


-- | Overall relevancy score for the entity. Not normalized and not
-- comparable across different image queries.
weScore :: Lens' WebEntity (Maybe Double)
weScore
  = lens _weScore (\ s a -> s{_weScore = a}) .
      mapping _Coerce

-- | Opaque entity ID.
weEntityId :: Lens' WebEntity (Maybe Text)
weEntityId
  = lens _weEntityId (\ s a -> s{_weEntityId = a})

-- | Canonical description of the entity, in English.
weDescription :: Lens' WebEntity (Maybe Text)
weDescription
  = lens _weDescription
      (\ s a -> s{_weDescription = a})

instance FromJSON WebEntity where
        parseJSON
          = withObject "WebEntity"
              (\ o ->
                 WebEntity' <$>
                   (o .:? "score") <*> (o .:? "entityId") <*>
                     (o .:? "description"))

instance ToJSON WebEntity where
        toJSON WebEntity'{..}
          = object
              (catMaybes
                 [("score" .=) <$> _weScore,
                  ("entityId" .=) <$> _weEntityId,
                  ("description" .=) <$> _weDescription])

-- | Response to a batch image annotation request.
--
-- /See:/ 'googleCloudVisionV1p2beta1BatchAnnotateImagesResponse' smart constructor.
newtype GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse =
  GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse'
    { _gcvvbairResponses :: Maybe [GoogleCloudVisionV1p2beta1AnnotateImageResponse]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvbairResponses'
googleCloudVisionV1p2beta1BatchAnnotateImagesResponse
    :: GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse
googleCloudVisionV1p2beta1BatchAnnotateImagesResponse =
  GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse'
    {_gcvvbairResponses = Nothing}


-- | Individual responses to image annotation requests within the batch.
gcvvbairResponses :: Lens' GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse [GoogleCloudVisionV1p2beta1AnnotateImageResponse]
gcvvbairResponses
  = lens _gcvvbairResponses
      (\ s a -> s{_gcvvbairResponses = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse"
              (\ o ->
                 GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse'
                   <$> (o .:? "responses" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse
         where
        toJSON
          GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse'{..}
          = object
              (catMaybes [("responses" .=) <$> _gcvvbairResponses])

-- | The Google Cloud Storage location where the input will be read from.
--
-- /See:/ 'googleCloudVisionV1p1beta1GcsSource' smart constructor.
newtype GoogleCloudVisionV1p1beta1GcsSource =
  GoogleCloudVisionV1p1beta1GcsSource'
    { _gcvvgsURI :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1GcsSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvgsURI'
googleCloudVisionV1p1beta1GcsSource
    :: GoogleCloudVisionV1p1beta1GcsSource
googleCloudVisionV1p1beta1GcsSource =
  GoogleCloudVisionV1p1beta1GcsSource' {_gcvvgsURI = Nothing}


-- | Google Cloud Storage URI for the input file. This must only be a Google
-- Cloud Storage object. Wildcards are not currently supported.
gcvvgsURI :: Lens' GoogleCloudVisionV1p1beta1GcsSource (Maybe Text)
gcvvgsURI
  = lens _gcvvgsURI (\ s a -> s{_gcvvgsURI = a})

instance FromJSON GoogleCloudVisionV1p1beta1GcsSource
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p1beta1GcsSource"
              (\ o ->
                 GoogleCloudVisionV1p1beta1GcsSource' <$>
                   (o .:? "uri"))

instance ToJSON GoogleCloudVisionV1p1beta1GcsSource
         where
        toJSON GoogleCloudVisionV1p1beta1GcsSource'{..}
          = object (catMaybes [("uri" .=) <$> _gcvvgsURI])

-- | Set of crop hints that are used to generate new crops when serving
-- images.
--
-- /See:/ 'googleCloudVisionV1p2beta1CropHintsAnnotation' smart constructor.
newtype GoogleCloudVisionV1p2beta1CropHintsAnnotation =
  GoogleCloudVisionV1p2beta1CropHintsAnnotation'
    { _gooCropHints :: Maybe [GoogleCloudVisionV1p2beta1CropHint]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1CropHintsAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooCropHints'
googleCloudVisionV1p2beta1CropHintsAnnotation
    :: GoogleCloudVisionV1p2beta1CropHintsAnnotation
googleCloudVisionV1p2beta1CropHintsAnnotation =
  GoogleCloudVisionV1p2beta1CropHintsAnnotation' {_gooCropHints = Nothing}


-- | Crop hint results.
gooCropHints :: Lens' GoogleCloudVisionV1p2beta1CropHintsAnnotation [GoogleCloudVisionV1p2beta1CropHint]
gooCropHints
  = lens _gooCropHints (\ s a -> s{_gooCropHints = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p2beta1CropHintsAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p2beta1CropHintsAnnotation"
              (\ o ->
                 GoogleCloudVisionV1p2beta1CropHintsAnnotation' <$>
                   (o .:? "cropHints" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p2beta1CropHintsAnnotation
         where
        toJSON
          GoogleCloudVisionV1p2beta1CropHintsAnnotation'{..}
          = object
              (catMaybes [("cropHints" .=) <$> _gooCropHints])

-- | Relevant information for the image from the Internet.
--
-- /See:/ 'googleCloudVisionV1p4beta1WebDetection' smart constructor.
data GoogleCloudVisionV1p4beta1WebDetection =
  GoogleCloudVisionV1p4beta1WebDetection'
    { _gooVisuallySimilarImages :: !(Maybe [GoogleCloudVisionV1p4beta1WebDetectionWebImage])
    , _gooBestGuessLabels :: !(Maybe [GoogleCloudVisionV1p4beta1WebDetectionWebLabel])
    , _gooPagesWithMatchingImages :: !(Maybe [GoogleCloudVisionV1p4beta1WebDetectionWebPage])
    , _gooPartialMatchingImages :: !(Maybe [GoogleCloudVisionV1p4beta1WebDetectionWebImage])
    , _gooFullMatchingImages :: !(Maybe [GoogleCloudVisionV1p4beta1WebDetectionWebImage])
    , _gooWebEntities :: !(Maybe [GoogleCloudVisionV1p4beta1WebDetectionWebEntity])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1WebDetection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooVisuallySimilarImages'
--
-- * 'gooBestGuessLabels'
--
-- * 'gooPagesWithMatchingImages'
--
-- * 'gooPartialMatchingImages'
--
-- * 'gooFullMatchingImages'
--
-- * 'gooWebEntities'
googleCloudVisionV1p4beta1WebDetection
    :: GoogleCloudVisionV1p4beta1WebDetection
googleCloudVisionV1p4beta1WebDetection =
  GoogleCloudVisionV1p4beta1WebDetection'
    { _gooVisuallySimilarImages = Nothing
    , _gooBestGuessLabels = Nothing
    , _gooPagesWithMatchingImages = Nothing
    , _gooPartialMatchingImages = Nothing
    , _gooFullMatchingImages = Nothing
    , _gooWebEntities = Nothing
    }


-- | The visually similar image results.
gooVisuallySimilarImages :: Lens' GoogleCloudVisionV1p4beta1WebDetection [GoogleCloudVisionV1p4beta1WebDetectionWebImage]
gooVisuallySimilarImages
  = lens _gooVisuallySimilarImages
      (\ s a -> s{_gooVisuallySimilarImages = a})
      . _Default
      . _Coerce

-- | The service\'s best guess as to the topic of the request image. Inferred
-- from similar images on the open web.
gooBestGuessLabels :: Lens' GoogleCloudVisionV1p4beta1WebDetection [GoogleCloudVisionV1p4beta1WebDetectionWebLabel]
gooBestGuessLabels
  = lens _gooBestGuessLabels
      (\ s a -> s{_gooBestGuessLabels = a})
      . _Default
      . _Coerce

-- | Web pages containing the matching images from the Internet.
gooPagesWithMatchingImages :: Lens' GoogleCloudVisionV1p4beta1WebDetection [GoogleCloudVisionV1p4beta1WebDetectionWebPage]
gooPagesWithMatchingImages
  = lens _gooPagesWithMatchingImages
      (\ s a -> s{_gooPagesWithMatchingImages = a})
      . _Default
      . _Coerce

-- | Partial matching images from the Internet. Those images are similar
-- enough to share some key-point features. For example an original image
-- will likely have partial matching for its crops.
gooPartialMatchingImages :: Lens' GoogleCloudVisionV1p4beta1WebDetection [GoogleCloudVisionV1p4beta1WebDetectionWebImage]
gooPartialMatchingImages
  = lens _gooPartialMatchingImages
      (\ s a -> s{_gooPartialMatchingImages = a})
      . _Default
      . _Coerce

-- | Fully matching images from the Internet. Can include resized copies of
-- the query image.
gooFullMatchingImages :: Lens' GoogleCloudVisionV1p4beta1WebDetection [GoogleCloudVisionV1p4beta1WebDetectionWebImage]
gooFullMatchingImages
  = lens _gooFullMatchingImages
      (\ s a -> s{_gooFullMatchingImages = a})
      . _Default
      . _Coerce

-- | Deduced entities from similar images on the Internet.
gooWebEntities :: Lens' GoogleCloudVisionV1p4beta1WebDetection [GoogleCloudVisionV1p4beta1WebDetectionWebEntity]
gooWebEntities
  = lens _gooWebEntities
      (\ s a -> s{_gooWebEntities = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p4beta1WebDetection
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p4beta1WebDetection"
              (\ o ->
                 GoogleCloudVisionV1p4beta1WebDetection' <$>
                   (o .:? "visuallySimilarImages" .!= mempty) <*>
                     (o .:? "bestGuessLabels" .!= mempty)
                     <*> (o .:? "pagesWithMatchingImages" .!= mempty)
                     <*> (o .:? "partialMatchingImages" .!= mempty)
                     <*> (o .:? "fullMatchingImages" .!= mempty)
                     <*> (o .:? "webEntities" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p4beta1WebDetection
         where
        toJSON GoogleCloudVisionV1p4beta1WebDetection'{..}
          = object
              (catMaybes
                 [("visuallySimilarImages" .=) <$>
                    _gooVisuallySimilarImages,
                  ("bestGuessLabels" .=) <$> _gooBestGuessLabels,
                  ("pagesWithMatchingImages" .=) <$>
                    _gooPagesWithMatchingImages,
                  ("partialMatchingImages" .=) <$>
                    _gooPartialMatchingImages,
                  ("fullMatchingImages" .=) <$> _gooFullMatchingImages,
                  ("webEntities" .=) <$> _gooWebEntities])

-- | The Google Cloud Storage location where the output will be written to.
--
-- /See:/ 'gcsDestination' smart constructor.
newtype GcsDestination =
  GcsDestination'
    { _gdURI :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GcsDestination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdURI'
gcsDestination
    :: GcsDestination
gcsDestination = GcsDestination' {_gdURI = Nothing}


-- | Google Cloud Storage URI prefix where the results will be stored.
-- Results will be in JSON format and preceded by its corresponding input
-- URI prefix. This field can either represent a gcs file prefix or gcs
-- directory. In either case, the uri should be unique because in order to
-- get all of the output files, you will need to do a wildcard gcs search
-- on the uri prefix you provide. Examples: * File Prefix:
-- gs:\/\/bucket-name\/here\/filenameprefix The output files will be
-- created in gs:\/\/bucket-name\/here\/ and the names of the output files
-- will begin with \"filenameprefix\". * Directory Prefix:
-- gs:\/\/bucket-name\/some\/location\/ The output files will be created in
-- gs:\/\/bucket-name\/some\/location\/ and the names of the output files
-- could be anything because there was no filename prefix specified. If
-- multiple outputs, each response is still AnnotateFileResponse, each of
-- which contains some subset of the full list of AnnotateImageResponse.
-- Multiple outputs can happen if, for example, the output JSON is too
-- large and overflows into multiple sharded files.
gdURI :: Lens' GcsDestination (Maybe Text)
gdURI = lens _gdURI (\ s a -> s{_gdURI = a})

instance FromJSON GcsDestination where
        parseJSON
          = withObject "GcsDestination"
              (\ o -> GcsDestination' <$> (o .:? "uri"))

instance ToJSON GcsDestination where
        toJSON GcsDestination'{..}
          = object (catMaybes [("uri" .=) <$> _gdURI])

-- | A bounding polygon for the detected image annotation.
--
-- /See:/ 'googleCloudVisionV1p3beta1BoundingPoly' smart constructor.
data GoogleCloudVisionV1p3beta1BoundingPoly =
  GoogleCloudVisionV1p3beta1BoundingPoly'
    { _gcvvbpNormalizedVertices :: !(Maybe [GoogleCloudVisionV1p3beta1NormalizedVertex])
    , _gcvvbpVertices :: !(Maybe [GoogleCloudVisionV1p3beta1Vertex])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1BoundingPoly' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvbpNormalizedVertices'
--
-- * 'gcvvbpVertices'
googleCloudVisionV1p3beta1BoundingPoly
    :: GoogleCloudVisionV1p3beta1BoundingPoly
googleCloudVisionV1p3beta1BoundingPoly =
  GoogleCloudVisionV1p3beta1BoundingPoly'
    {_gcvvbpNormalizedVertices = Nothing, _gcvvbpVertices = Nothing}


-- | The bounding polygon normalized vertices.
gcvvbpNormalizedVertices :: Lens' GoogleCloudVisionV1p3beta1BoundingPoly [GoogleCloudVisionV1p3beta1NormalizedVertex]
gcvvbpNormalizedVertices
  = lens _gcvvbpNormalizedVertices
      (\ s a -> s{_gcvvbpNormalizedVertices = a})
      . _Default
      . _Coerce

-- | The bounding polygon vertices.
gcvvbpVertices :: Lens' GoogleCloudVisionV1p3beta1BoundingPoly [GoogleCloudVisionV1p3beta1Vertex]
gcvvbpVertices
  = lens _gcvvbpVertices
      (\ s a -> s{_gcvvbpVertices = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p3beta1BoundingPoly
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p3beta1BoundingPoly"
              (\ o ->
                 GoogleCloudVisionV1p3beta1BoundingPoly' <$>
                   (o .:? "normalizedVertices" .!= mempty) <*>
                     (o .:? "vertices" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p3beta1BoundingPoly
         where
        toJSON GoogleCloudVisionV1p3beta1BoundingPoly'{..}
          = object
              (catMaybes
                 [("normalizedVertices" .=) <$>
                    _gcvvbpNormalizedVertices,
                  ("vertices" .=) <$> _gcvvbpVertices])

-- | A vertex represents a 2D point in the image. NOTE: the normalized vertex
-- coordinates are relative to the original image and range from 0 to 1.
--
-- /See:/ 'googleCloudVisionV1p2beta1NormalizedVertex' smart constructor.
data GoogleCloudVisionV1p2beta1NormalizedVertex =
  GoogleCloudVisionV1p2beta1NormalizedVertex'
    { _gcvvnvcX :: !(Maybe (Textual Double))
    , _gcvvnvcY :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1NormalizedVertex' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvnvcX'
--
-- * 'gcvvnvcY'
googleCloudVisionV1p2beta1NormalizedVertex
    :: GoogleCloudVisionV1p2beta1NormalizedVertex
googleCloudVisionV1p2beta1NormalizedVertex =
  GoogleCloudVisionV1p2beta1NormalizedVertex'
    {_gcvvnvcX = Nothing, _gcvvnvcY = Nothing}


-- | X coordinate.
gcvvnvcX :: Lens' GoogleCloudVisionV1p2beta1NormalizedVertex (Maybe Double)
gcvvnvcX
  = lens _gcvvnvcX (\ s a -> s{_gcvvnvcX = a}) .
      mapping _Coerce

-- | Y coordinate.
gcvvnvcY :: Lens' GoogleCloudVisionV1p2beta1NormalizedVertex (Maybe Double)
gcvvnvcY
  = lens _gcvvnvcY (\ s a -> s{_gcvvnvcY = a}) .
      mapping _Coerce

instance FromJSON
           GoogleCloudVisionV1p2beta1NormalizedVertex
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p2beta1NormalizedVertex"
              (\ o ->
                 GoogleCloudVisionV1p2beta1NormalizedVertex' <$>
                   (o .:? "x") <*> (o .:? "y"))

instance ToJSON
           GoogleCloudVisionV1p2beta1NormalizedVertex
         where
        toJSON
          GoogleCloudVisionV1p2beta1NormalizedVertex'{..}
          = object
              (catMaybes
                 [("x" .=) <$> _gcvvnvcX, ("y" .=) <$> _gcvvnvcY])

-- | A 3D position in the image, used primarily for Face detection landmarks.
-- A valid Position must have both x and y coordinates. The position
-- coordinates are in the same scale as the original image.
--
-- /See:/ 'googleCloudVisionV1p2beta1Position' smart constructor.
data GoogleCloudVisionV1p2beta1Position =
  GoogleCloudVisionV1p2beta1Position'
    { _gcvvpcZ :: !(Maybe (Textual Double))
    , _gcvvpcX :: !(Maybe (Textual Double))
    , _gcvvpcY :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1Position' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvpcZ'
--
-- * 'gcvvpcX'
--
-- * 'gcvvpcY'
googleCloudVisionV1p2beta1Position
    :: GoogleCloudVisionV1p2beta1Position
googleCloudVisionV1p2beta1Position =
  GoogleCloudVisionV1p2beta1Position'
    {_gcvvpcZ = Nothing, _gcvvpcX = Nothing, _gcvvpcY = Nothing}


-- | Z coordinate (or depth).
gcvvpcZ :: Lens' GoogleCloudVisionV1p2beta1Position (Maybe Double)
gcvvpcZ
  = lens _gcvvpcZ (\ s a -> s{_gcvvpcZ = a}) .
      mapping _Coerce

-- | X coordinate.
gcvvpcX :: Lens' GoogleCloudVisionV1p2beta1Position (Maybe Double)
gcvvpcX
  = lens _gcvvpcX (\ s a -> s{_gcvvpcX = a}) .
      mapping _Coerce

-- | Y coordinate.
gcvvpcY :: Lens' GoogleCloudVisionV1p2beta1Position (Maybe Double)
gcvvpcY
  = lens _gcvvpcY (\ s a -> s{_gcvvpcY = a}) .
      mapping _Coerce

instance FromJSON GoogleCloudVisionV1p2beta1Position
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p2beta1Position"
              (\ o ->
                 GoogleCloudVisionV1p2beta1Position' <$>
                   (o .:? "z") <*> (o .:? "x") <*> (o .:? "y"))

instance ToJSON GoogleCloudVisionV1p2beta1Position
         where
        toJSON GoogleCloudVisionV1p2beta1Position'{..}
          = object
              (catMaybes
                 [("z" .=) <$> _gcvvpcZ, ("x" .=) <$> _gcvvpcX,
                  ("y" .=) <$> _gcvvpcY])

-- | Additional information detected on the structural component.
--
-- /See:/ 'googleCloudVisionV1p3beta1TextAnnotationTextProperty' smart constructor.
data GoogleCloudVisionV1p3beta1TextAnnotationTextProperty =
  GoogleCloudVisionV1p3beta1TextAnnotationTextProperty'
    { _gcvvtatpDetectedLanguages :: !(Maybe [GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage])
    , _gcvvtatpDetectedBreak :: !(Maybe GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1TextAnnotationTextProperty' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvtatpDetectedLanguages'
--
-- * 'gcvvtatpDetectedBreak'
googleCloudVisionV1p3beta1TextAnnotationTextProperty
    :: GoogleCloudVisionV1p3beta1TextAnnotationTextProperty
googleCloudVisionV1p3beta1TextAnnotationTextProperty =
  GoogleCloudVisionV1p3beta1TextAnnotationTextProperty'
    {_gcvvtatpDetectedLanguages = Nothing, _gcvvtatpDetectedBreak = Nothing}


-- | A list of detected languages together with confidence.
gcvvtatpDetectedLanguages :: Lens' GoogleCloudVisionV1p3beta1TextAnnotationTextProperty [GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage]
gcvvtatpDetectedLanguages
  = lens _gcvvtatpDetectedLanguages
      (\ s a -> s{_gcvvtatpDetectedLanguages = a})
      . _Default
      . _Coerce

-- | Detected start or end of a text segment.
gcvvtatpDetectedBreak :: Lens' GoogleCloudVisionV1p3beta1TextAnnotationTextProperty (Maybe GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak)
gcvvtatpDetectedBreak
  = lens _gcvvtatpDetectedBreak
      (\ s a -> s{_gcvvtatpDetectedBreak = a})

instance FromJSON
           GoogleCloudVisionV1p3beta1TextAnnotationTextProperty
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p3beta1TextAnnotationTextProperty"
              (\ o ->
                 GoogleCloudVisionV1p3beta1TextAnnotationTextProperty'
                   <$>
                   (o .:? "detectedLanguages" .!= mempty) <*>
                     (o .:? "detectedBreak"))

instance ToJSON
           GoogleCloudVisionV1p3beta1TextAnnotationTextProperty
         where
        toJSON
          GoogleCloudVisionV1p3beta1TextAnnotationTextProperty'{..}
          = object
              (catMaybes
                 [("detectedLanguages" .=) <$>
                    _gcvvtatpDetectedLanguages,
                  ("detectedBreak" .=) <$> _gcvvtatpDetectedBreak])

-- | Detected entity location information.
--
-- /See:/ 'locationInfo' smart constructor.
newtype LocationInfo =
  LocationInfo'
    { _liLatLng :: Maybe LatLng
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocationInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'liLatLng'
locationInfo
    :: LocationInfo
locationInfo = LocationInfo' {_liLatLng = Nothing}


-- | lat\/long location coordinates.
liLatLng :: Lens' LocationInfo (Maybe LatLng)
liLatLng = lens _liLatLng (\ s a -> s{_liLatLng = a})

instance FromJSON LocationInfo where
        parseJSON
          = withObject "LocationInfo"
              (\ o -> LocationInfo' <$> (o .:? "latLng"))

instance ToJSON LocationInfo where
        toJSON LocationInfo'{..}
          = object (catMaybes [("latLng" .=) <$> _liLatLng])

--
-- /See:/ 'statusDetailsItem' smart constructor.
newtype StatusDetailsItem =
  StatusDetailsItem'
    { _sdiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdiAddtional'
statusDetailsItem
    :: HashMap Text JSONValue -- ^ 'sdiAddtional'
    -> StatusDetailsItem
statusDetailsItem pSdiAddtional_ =
  StatusDetailsItem' {_sdiAddtional = _Coerce # pSdiAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
sdiAddtional :: Lens' StatusDetailsItem (HashMap Text JSONValue)
sdiAddtional
  = lens _sdiAddtional (\ s a -> s{_sdiAddtional = a})
      . _Coerce

instance FromJSON StatusDetailsItem where
        parseJSON
          = withObject "StatusDetailsItem"
              (\ o -> StatusDetailsItem' <$> (parseJSONObject o))

instance ToJSON StatusDetailsItem where
        toJSON = toJSON . _sdiAddtional

-- | Response to a single file annotation request. A file may contain one or
-- more images, which individually have their own responses.
--
-- /See:/ 'googleCloudVisionV1p4beta1AnnotateFileResponse' smart constructor.
data GoogleCloudVisionV1p4beta1AnnotateFileResponse =
  GoogleCloudVisionV1p4beta1AnnotateFileResponse'
    { _gcvvafrcResponses :: !(Maybe [GoogleCloudVisionV1p4beta1AnnotateImageResponse])
    , _gcvvafrcError :: !(Maybe Status)
    , _gcvvafrcInputConfig :: !(Maybe GoogleCloudVisionV1p4beta1InputConfig)
    , _gcvvafrcTotalPages :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1AnnotateFileResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvafrcResponses'
--
-- * 'gcvvafrcError'
--
-- * 'gcvvafrcInputConfig'
--
-- * 'gcvvafrcTotalPages'
googleCloudVisionV1p4beta1AnnotateFileResponse
    :: GoogleCloudVisionV1p4beta1AnnotateFileResponse
googleCloudVisionV1p4beta1AnnotateFileResponse =
  GoogleCloudVisionV1p4beta1AnnotateFileResponse'
    { _gcvvafrcResponses = Nothing
    , _gcvvafrcError = Nothing
    , _gcvvafrcInputConfig = Nothing
    , _gcvvafrcTotalPages = Nothing
    }


-- | Individual responses to images found within the file. This field will be
-- empty if the \`error\` field is set.
gcvvafrcResponses :: Lens' GoogleCloudVisionV1p4beta1AnnotateFileResponse [GoogleCloudVisionV1p4beta1AnnotateImageResponse]
gcvvafrcResponses
  = lens _gcvvafrcResponses
      (\ s a -> s{_gcvvafrcResponses = a})
      . _Default
      . _Coerce

-- | If set, represents the error message for the failed request. The
-- \`responses\` field will not be set in this case.
gcvvafrcError :: Lens' GoogleCloudVisionV1p4beta1AnnotateFileResponse (Maybe Status)
gcvvafrcError
  = lens _gcvvafrcError
      (\ s a -> s{_gcvvafrcError = a})

-- | Information about the file for which this response is generated.
gcvvafrcInputConfig :: Lens' GoogleCloudVisionV1p4beta1AnnotateFileResponse (Maybe GoogleCloudVisionV1p4beta1InputConfig)
gcvvafrcInputConfig
  = lens _gcvvafrcInputConfig
      (\ s a -> s{_gcvvafrcInputConfig = a})

-- | This field gives the total number of pages in the file.
gcvvafrcTotalPages :: Lens' GoogleCloudVisionV1p4beta1AnnotateFileResponse (Maybe Int32)
gcvvafrcTotalPages
  = lens _gcvvafrcTotalPages
      (\ s a -> s{_gcvvafrcTotalPages = a})
      . mapping _Coerce

instance FromJSON
           GoogleCloudVisionV1p4beta1AnnotateFileResponse
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p4beta1AnnotateFileResponse"
              (\ o ->
                 GoogleCloudVisionV1p4beta1AnnotateFileResponse' <$>
                   (o .:? "responses" .!= mempty) <*> (o .:? "error")
                     <*> (o .:? "inputConfig")
                     <*> (o .:? "totalPages"))

instance ToJSON
           GoogleCloudVisionV1p4beta1AnnotateFileResponse
         where
        toJSON
          GoogleCloudVisionV1p4beta1AnnotateFileResponse'{..}
          = object
              (catMaybes
                 [("responses" .=) <$> _gcvvafrcResponses,
                  ("error" .=) <$> _gcvvafrcError,
                  ("inputConfig" .=) <$> _gcvvafrcInputConfig,
                  ("totalPages" .=) <$> _gcvvafrcTotalPages])

-- | Detected page from OCR.
--
-- /See:/ 'page' smart constructor.
data Page =
  Page'
    { _pProperty :: !(Maybe TextProperty)
    , _pHeight :: !(Maybe (Textual Int32))
    , _pBlocks :: !(Maybe [Block])
    , _pWidth :: !(Maybe (Textual Int32))
    , _pConfidence :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Page' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pProperty'
--
-- * 'pHeight'
--
-- * 'pBlocks'
--
-- * 'pWidth'
--
-- * 'pConfidence'
page
    :: Page
page =
  Page'
    { _pProperty = Nothing
    , _pHeight = Nothing
    , _pBlocks = Nothing
    , _pWidth = Nothing
    , _pConfidence = Nothing
    }


-- | Additional information detected on the page.
pProperty :: Lens' Page (Maybe TextProperty)
pProperty
  = lens _pProperty (\ s a -> s{_pProperty = a})

-- | Page height. For PDFs the unit is points. For images (including TIFFs)
-- the unit is pixels.
pHeight :: Lens' Page (Maybe Int32)
pHeight
  = lens _pHeight (\ s a -> s{_pHeight = a}) .
      mapping _Coerce

-- | List of blocks of text, images etc on this page.
pBlocks :: Lens' Page [Block]
pBlocks
  = lens _pBlocks (\ s a -> s{_pBlocks = a}) . _Default
      . _Coerce

-- | Page width. For PDFs the unit is points. For images (including TIFFs)
-- the unit is pixels.
pWidth :: Lens' Page (Maybe Int32)
pWidth
  = lens _pWidth (\ s a -> s{_pWidth = a}) .
      mapping _Coerce

-- | Confidence of the OCR results on the page. Range [0, 1].
pConfidence :: Lens' Page (Maybe Double)
pConfidence
  = lens _pConfidence (\ s a -> s{_pConfidence = a}) .
      mapping _Coerce

instance FromJSON Page where
        parseJSON
          = withObject "Page"
              (\ o ->
                 Page' <$>
                   (o .:? "property") <*> (o .:? "height") <*>
                     (o .:? "blocks" .!= mempty)
                     <*> (o .:? "width")
                     <*> (o .:? "confidence"))

instance ToJSON Page where
        toJSON Page'{..}
          = object
              (catMaybes
                 [("property" .=) <$> _pProperty,
                  ("height" .=) <$> _pHeight,
                  ("blocks" .=) <$> _pBlocks, ("width" .=) <$> _pWidth,
                  ("confidence" .=) <$> _pConfidence])

-- | Color information consists of RGB channels, score, and the fraction of
-- the image that the color occupies in the image.
--
-- /See:/ 'colorInfo' smart constructor.
data ColorInfo =
  ColorInfo'
    { _ciColor :: !(Maybe Color)
    , _ciScore :: !(Maybe (Textual Double))
    , _ciPixelFraction :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ColorInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciColor'
--
-- * 'ciScore'
--
-- * 'ciPixelFraction'
colorInfo
    :: ColorInfo
colorInfo =
  ColorInfo'
    {_ciColor = Nothing, _ciScore = Nothing, _ciPixelFraction = Nothing}


-- | RGB components of the color.
ciColor :: Lens' ColorInfo (Maybe Color)
ciColor = lens _ciColor (\ s a -> s{_ciColor = a})

-- | Image-specific score for this color. Value in range [0, 1].
ciScore :: Lens' ColorInfo (Maybe Double)
ciScore
  = lens _ciScore (\ s a -> s{_ciScore = a}) .
      mapping _Coerce

-- | The fraction of pixels the color occupies in the image. Value in range
-- [0, 1].
ciPixelFraction :: Lens' ColorInfo (Maybe Double)
ciPixelFraction
  = lens _ciPixelFraction
      (\ s a -> s{_ciPixelFraction = a})
      . mapping _Coerce

instance FromJSON ColorInfo where
        parseJSON
          = withObject "ColorInfo"
              (\ o ->
                 ColorInfo' <$>
                   (o .:? "color") <*> (o .:? "score") <*>
                     (o .:? "pixelFraction"))

instance ToJSON ColorInfo where
        toJSON ColorInfo'{..}
          = object
              (catMaybes
                 [("color" .=) <$> _ciColor,
                  ("score" .=) <$> _ciScore,
                  ("pixelFraction" .=) <$> _ciPixelFraction])

-- | Information about a face\'s identity.
--
-- /See:/ 'googleCloudVisionV1p4beta1FaceRecognitionResult' smart constructor.
data GoogleCloudVisionV1p4beta1FaceRecognitionResult =
  GoogleCloudVisionV1p4beta1FaceRecognitionResult'
    { _gcvvfrrCelebrity :: !(Maybe GoogleCloudVisionV1p4beta1Celebrity)
    , _gcvvfrrConfidence :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1FaceRecognitionResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvfrrCelebrity'
--
-- * 'gcvvfrrConfidence'
googleCloudVisionV1p4beta1FaceRecognitionResult
    :: GoogleCloudVisionV1p4beta1FaceRecognitionResult
googleCloudVisionV1p4beta1FaceRecognitionResult =
  GoogleCloudVisionV1p4beta1FaceRecognitionResult'
    {_gcvvfrrCelebrity = Nothing, _gcvvfrrConfidence = Nothing}


-- | The Celebrity that this face was matched to.
gcvvfrrCelebrity :: Lens' GoogleCloudVisionV1p4beta1FaceRecognitionResult (Maybe GoogleCloudVisionV1p4beta1Celebrity)
gcvvfrrCelebrity
  = lens _gcvvfrrCelebrity
      (\ s a -> s{_gcvvfrrCelebrity = a})

-- | Recognition confidence. Range [0, 1].
gcvvfrrConfidence :: Lens' GoogleCloudVisionV1p4beta1FaceRecognitionResult (Maybe Double)
gcvvfrrConfidence
  = lens _gcvvfrrConfidence
      (\ s a -> s{_gcvvfrrConfidence = a})
      . mapping _Coerce

instance FromJSON
           GoogleCloudVisionV1p4beta1FaceRecognitionResult
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p4beta1FaceRecognitionResult"
              (\ o ->
                 GoogleCloudVisionV1p4beta1FaceRecognitionResult' <$>
                   (o .:? "celebrity") <*> (o .:? "confidence"))

instance ToJSON
           GoogleCloudVisionV1p4beta1FaceRecognitionResult
         where
        toJSON
          GoogleCloudVisionV1p4beta1FaceRecognitionResult'{..}
          = object
              (catMaybes
                 [("celebrity" .=) <$> _gcvvfrrCelebrity,
                  ("confidence" .=) <$> _gcvvfrrConfidence])

-- | A product label represented as a key-value pair.
--
-- /See:/ 'googleCloudVisionV1p4beta1ProductKeyValue' smart constructor.
data GoogleCloudVisionV1p4beta1ProductKeyValue =
  GoogleCloudVisionV1p4beta1ProductKeyValue'
    { _gooValue :: !(Maybe Text)
    , _gooKey :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1ProductKeyValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooValue'
--
-- * 'gooKey'
googleCloudVisionV1p4beta1ProductKeyValue
    :: GoogleCloudVisionV1p4beta1ProductKeyValue
googleCloudVisionV1p4beta1ProductKeyValue =
  GoogleCloudVisionV1p4beta1ProductKeyValue'
    {_gooValue = Nothing, _gooKey = Nothing}


-- | The value of the label attached to the product. Cannot be empty and
-- cannot exceed 128 bytes.
gooValue :: Lens' GoogleCloudVisionV1p4beta1ProductKeyValue (Maybe Text)
gooValue = lens _gooValue (\ s a -> s{_gooValue = a})

-- | The key of the label attached to the product. Cannot be empty and cannot
-- exceed 128 bytes.
gooKey :: Lens' GoogleCloudVisionV1p4beta1ProductKeyValue (Maybe Text)
gooKey = lens _gooKey (\ s a -> s{_gooKey = a})

instance FromJSON
           GoogleCloudVisionV1p4beta1ProductKeyValue
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p4beta1ProductKeyValue"
              (\ o ->
                 GoogleCloudVisionV1p4beta1ProductKeyValue' <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON
           GoogleCloudVisionV1p4beta1ProductKeyValue
         where
        toJSON GoogleCloudVisionV1p4beta1ProductKeyValue'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _gooValue, ("key" .=) <$> _gooKey])

-- | Contains metadata for the BatchAnnotateImages operation.
--
-- /See:/ 'googleCloudVisionV1p3beta1OperationMetadata' smart constructor.
data GoogleCloudVisionV1p3beta1OperationMetadata =
  GoogleCloudVisionV1p3beta1OperationMetadata'
    { _gooState :: !(Maybe GoogleCloudVisionV1p3beta1OperationMetadataState)
    , _gooUpdateTime :: !(Maybe DateTime')
    , _gooCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooState'
--
-- * 'gooUpdateTime'
--
-- * 'gooCreateTime'
googleCloudVisionV1p3beta1OperationMetadata
    :: GoogleCloudVisionV1p3beta1OperationMetadata
googleCloudVisionV1p3beta1OperationMetadata =
  GoogleCloudVisionV1p3beta1OperationMetadata'
    {_gooState = Nothing, _gooUpdateTime = Nothing, _gooCreateTime = Nothing}


-- | Current state of the batch operation.
gooState :: Lens' GoogleCloudVisionV1p3beta1OperationMetadata (Maybe GoogleCloudVisionV1p3beta1OperationMetadataState)
gooState = lens _gooState (\ s a -> s{_gooState = a})

-- | The time when the operation result was last updated.
gooUpdateTime :: Lens' GoogleCloudVisionV1p3beta1OperationMetadata (Maybe UTCTime)
gooUpdateTime
  = lens _gooUpdateTime
      (\ s a -> s{_gooUpdateTime = a})
      . mapping _DateTime

-- | The time when the batch request was received.
gooCreateTime :: Lens' GoogleCloudVisionV1p3beta1OperationMetadata (Maybe UTCTime)
gooCreateTime
  = lens _gooCreateTime
      (\ s a -> s{_gooCreateTime = a})
      . mapping _DateTime

instance FromJSON
           GoogleCloudVisionV1p3beta1OperationMetadata
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p3beta1OperationMetadata"
              (\ o ->
                 GoogleCloudVisionV1p3beta1OperationMetadata' <$>
                   (o .:? "state") <*> (o .:? "updateTime") <*>
                     (o .:? "createTime"))

instance ToJSON
           GoogleCloudVisionV1p3beta1OperationMetadata
         where
        toJSON
          GoogleCloudVisionV1p3beta1OperationMetadata'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _gooState,
                  ("updateTime" .=) <$> _gooUpdateTime,
                  ("createTime" .=) <$> _gooCreateTime])

-- | The type of Google Cloud Vision API detection to perform, and the
-- maximum number of results to return for that type. Multiple \`Feature\`
-- objects can be specified in the \`features\` list.
--
-- /See:/ 'googleCloudVisionV1p2beta1Feature' smart constructor.
data GoogleCloudVisionV1p2beta1Feature =
  GoogleCloudVisionV1p2beta1Feature'
    { _gcvvfModel :: !(Maybe Text)
    , _gcvvfType :: !(Maybe GoogleCloudVisionV1p2beta1FeatureType)
    , _gcvvfMaxResults :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1Feature' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvfModel'
--
-- * 'gcvvfType'
--
-- * 'gcvvfMaxResults'
googleCloudVisionV1p2beta1Feature
    :: GoogleCloudVisionV1p2beta1Feature
googleCloudVisionV1p2beta1Feature =
  GoogleCloudVisionV1p2beta1Feature'
    {_gcvvfModel = Nothing, _gcvvfType = Nothing, _gcvvfMaxResults = Nothing}


-- | Model to use for the feature. Supported values: \"builtin\/stable\" (the
-- default if unset) and \"builtin\/latest\".
gcvvfModel :: Lens' GoogleCloudVisionV1p2beta1Feature (Maybe Text)
gcvvfModel
  = lens _gcvvfModel (\ s a -> s{_gcvvfModel = a})

-- | The feature type.
gcvvfType :: Lens' GoogleCloudVisionV1p2beta1Feature (Maybe GoogleCloudVisionV1p2beta1FeatureType)
gcvvfType
  = lens _gcvvfType (\ s a -> s{_gcvvfType = a})

-- | Maximum number of results of this type. Does not apply to
-- \`TEXT_DETECTION\`, \`DOCUMENT_TEXT_DETECTION\`, or \`CROP_HINTS\`.
gcvvfMaxResults :: Lens' GoogleCloudVisionV1p2beta1Feature (Maybe Int32)
gcvvfMaxResults
  = lens _gcvvfMaxResults
      (\ s a -> s{_gcvvfMaxResults = a})
      . mapping _Coerce

instance FromJSON GoogleCloudVisionV1p2beta1Feature
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p2beta1Feature"
              (\ o ->
                 GoogleCloudVisionV1p2beta1Feature' <$>
                   (o .:? "model") <*> (o .:? "type") <*>
                     (o .:? "maxResults"))

instance ToJSON GoogleCloudVisionV1p2beta1Feature
         where
        toJSON GoogleCloudVisionV1p2beta1Feature'{..}
          = object
              (catMaybes
                 [("model" .=) <$> _gcvvfModel,
                  ("type" .=) <$> _gcvvfType,
                  ("maxResults" .=) <$> _gcvvfMaxResults])

-- | Label to provide extra metadata for the web detection.
--
-- /See:/ 'webLabel' smart constructor.
data WebLabel =
  WebLabel'
    { _wlLanguageCode :: !(Maybe Text)
    , _wlLabel :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WebLabel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wlLanguageCode'
--
-- * 'wlLabel'
webLabel
    :: WebLabel
webLabel = WebLabel' {_wlLanguageCode = Nothing, _wlLabel = Nothing}


-- | The BCP-47 language code for \`label\`, such as \"en-US\" or
-- \"sr-Latn\". For more information, see
-- http:\/\/www.unicode.org\/reports\/tr35\/#Unicode_locale_identifier.
wlLanguageCode :: Lens' WebLabel (Maybe Text)
wlLanguageCode
  = lens _wlLanguageCode
      (\ s a -> s{_wlLanguageCode = a})

-- | Label for extra metadata.
wlLabel :: Lens' WebLabel (Maybe Text)
wlLabel = lens _wlLabel (\ s a -> s{_wlLabel = a})

instance FromJSON WebLabel where
        parseJSON
          = withObject "WebLabel"
              (\ o ->
                 WebLabel' <$>
                   (o .:? "languageCode") <*> (o .:? "label"))

instance ToJSON WebLabel where
        toJSON WebLabel'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _wlLanguageCode,
                  ("label" .=) <$> _wlLabel])

-- | A product label represented as a key-value pair.
--
-- /See:/ 'googleCloudVisionV1p1beta1ProductKeyValue' smart constructor.
data GoogleCloudVisionV1p1beta1ProductKeyValue =
  GoogleCloudVisionV1p1beta1ProductKeyValue'
    { _gcvvpkvcValue :: !(Maybe Text)
    , _gcvvpkvcKey :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1ProductKeyValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvpkvcValue'
--
-- * 'gcvvpkvcKey'
googleCloudVisionV1p1beta1ProductKeyValue
    :: GoogleCloudVisionV1p1beta1ProductKeyValue
googleCloudVisionV1p1beta1ProductKeyValue =
  GoogleCloudVisionV1p1beta1ProductKeyValue'
    {_gcvvpkvcValue = Nothing, _gcvvpkvcKey = Nothing}


-- | The value of the label attached to the product. Cannot be empty and
-- cannot exceed 128 bytes.
gcvvpkvcValue :: Lens' GoogleCloudVisionV1p1beta1ProductKeyValue (Maybe Text)
gcvvpkvcValue
  = lens _gcvvpkvcValue
      (\ s a -> s{_gcvvpkvcValue = a})

-- | The key of the label attached to the product. Cannot be empty and cannot
-- exceed 128 bytes.
gcvvpkvcKey :: Lens' GoogleCloudVisionV1p1beta1ProductKeyValue (Maybe Text)
gcvvpkvcKey
  = lens _gcvvpkvcKey (\ s a -> s{_gcvvpkvcKey = a})

instance FromJSON
           GoogleCloudVisionV1p1beta1ProductKeyValue
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p1beta1ProductKeyValue"
              (\ o ->
                 GoogleCloudVisionV1p1beta1ProductKeyValue' <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON
           GoogleCloudVisionV1p1beta1ProductKeyValue
         where
        toJSON GoogleCloudVisionV1p1beta1ProductKeyValue'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _gcvvpkvcValue,
                  ("key" .=) <$> _gcvvpkvcKey])

-- | If an image was produced from a file (e.g. a PDF), this message gives
-- information about the source of that image.
--
-- /See:/ 'googleCloudVisionV1p1beta1ImageAnnotationContext' smart constructor.
data GoogleCloudVisionV1p1beta1ImageAnnotationContext =
  GoogleCloudVisionV1p1beta1ImageAnnotationContext'
    { _gURI :: !(Maybe Text)
    , _gPageNumber :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1ImageAnnotationContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gURI'
--
-- * 'gPageNumber'
googleCloudVisionV1p1beta1ImageAnnotationContext
    :: GoogleCloudVisionV1p1beta1ImageAnnotationContext
googleCloudVisionV1p1beta1ImageAnnotationContext =
  GoogleCloudVisionV1p1beta1ImageAnnotationContext'
    {_gURI = Nothing, _gPageNumber = Nothing}


-- | The URI of the file used to produce the image.
gURI :: Lens' GoogleCloudVisionV1p1beta1ImageAnnotationContext (Maybe Text)
gURI = lens _gURI (\ s a -> s{_gURI = a})

-- | If the file was a PDF or TIFF, this field gives the page number within
-- the file used to produce the image.
gPageNumber :: Lens' GoogleCloudVisionV1p1beta1ImageAnnotationContext (Maybe Int32)
gPageNumber
  = lens _gPageNumber (\ s a -> s{_gPageNumber = a}) .
      mapping _Coerce

instance FromJSON
           GoogleCloudVisionV1p1beta1ImageAnnotationContext
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p1beta1ImageAnnotationContext"
              (\ o ->
                 GoogleCloudVisionV1p1beta1ImageAnnotationContext' <$>
                   (o .:? "uri") <*> (o .:? "pageNumber"))

instance ToJSON
           GoogleCloudVisionV1p1beta1ImageAnnotationContext
         where
        toJSON
          GoogleCloudVisionV1p1beta1ImageAnnotationContext'{..}
          = object
              (catMaybes
                 [("uri" .=) <$> _gURI,
                  ("pageNumber" .=) <$> _gPageNumber])

-- | The Google Cloud Storage location where the input will be read from.
--
-- /See:/ 'googleCloudVisionV1p4beta1GcsSource' smart constructor.
newtype GoogleCloudVisionV1p4beta1GcsSource =
  GoogleCloudVisionV1p4beta1GcsSource'
    { _gooURI :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1GcsSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooURI'
googleCloudVisionV1p4beta1GcsSource
    :: GoogleCloudVisionV1p4beta1GcsSource
googleCloudVisionV1p4beta1GcsSource =
  GoogleCloudVisionV1p4beta1GcsSource' {_gooURI = Nothing}


-- | Google Cloud Storage URI for the input file. This must only be a Google
-- Cloud Storage object. Wildcards are not currently supported.
gooURI :: Lens' GoogleCloudVisionV1p4beta1GcsSource (Maybe Text)
gooURI = lens _gooURI (\ s a -> s{_gooURI = a})

instance FromJSON GoogleCloudVisionV1p4beta1GcsSource
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p4beta1GcsSource"
              (\ o ->
                 GoogleCloudVisionV1p4beta1GcsSource' <$>
                   (o .:? "uri"))

instance ToJSON GoogleCloudVisionV1p4beta1GcsSource
         where
        toJSON GoogleCloudVisionV1p4beta1GcsSource'{..}
          = object (catMaybes [("uri" .=) <$> _gooURI])

-- | TextAnnotation contains a structured representation of OCR extracted
-- text. The hierarchy of an OCR extracted text structure is like this:
-- TextAnnotation -> Page -> Block -> Paragraph -> Word -> Symbol Each
-- structural component, starting from Page, may further have their own
-- properties. Properties describe detected languages, breaks etc.. Please
-- refer to the TextAnnotation.TextProperty message definition below for
-- more detail.
--
-- /See:/ 'googleCloudVisionV1p4beta1TextAnnotation' smart constructor.
data GoogleCloudVisionV1p4beta1TextAnnotation =
  GoogleCloudVisionV1p4beta1TextAnnotation'
    { _gcvvtaText :: !(Maybe Text)
    , _gcvvtaPages :: !(Maybe [GoogleCloudVisionV1p4beta1Page])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1TextAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvtaText'
--
-- * 'gcvvtaPages'
googleCloudVisionV1p4beta1TextAnnotation
    :: GoogleCloudVisionV1p4beta1TextAnnotation
googleCloudVisionV1p4beta1TextAnnotation =
  GoogleCloudVisionV1p4beta1TextAnnotation'
    {_gcvvtaText = Nothing, _gcvvtaPages = Nothing}


-- | UTF-8 text detected on the pages.
gcvvtaText :: Lens' GoogleCloudVisionV1p4beta1TextAnnotation (Maybe Text)
gcvvtaText
  = lens _gcvvtaText (\ s a -> s{_gcvvtaText = a})

-- | List of pages detected by OCR.
gcvvtaPages :: Lens' GoogleCloudVisionV1p4beta1TextAnnotation [GoogleCloudVisionV1p4beta1Page]
gcvvtaPages
  = lens _gcvvtaPages (\ s a -> s{_gcvvtaPages = a}) .
      _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p4beta1TextAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p4beta1TextAnnotation"
              (\ o ->
                 GoogleCloudVisionV1p4beta1TextAnnotation' <$>
                   (o .:? "text") <*> (o .:? "pages" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p4beta1TextAnnotation
         where
        toJSON GoogleCloudVisionV1p4beta1TextAnnotation'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _gcvvtaText,
                  ("pages" .=) <$> _gcvvtaPages])

-- | Structural unit of text representing a number of words in certain order.
--
-- /See:/ 'paragraph' smart constructor.
data Paragraph =
  Paragraph'
    { _parProperty :: !(Maybe TextProperty)
    , _parBoundingBox :: !(Maybe BoundingPoly)
    , _parConfidence :: !(Maybe (Textual Double))
    , _parWords :: !(Maybe [Word])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Paragraph' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'parProperty'
--
-- * 'parBoundingBox'
--
-- * 'parConfidence'
--
-- * 'parWords'
paragraph
    :: Paragraph
paragraph =
  Paragraph'
    { _parProperty = Nothing
    , _parBoundingBox = Nothing
    , _parConfidence = Nothing
    , _parWords = Nothing
    }


-- | Additional information detected for the paragraph.
parProperty :: Lens' Paragraph (Maybe TextProperty)
parProperty
  = lens _parProperty (\ s a -> s{_parProperty = a})

-- | The bounding box for the paragraph. The vertices are in the order of
-- top-left, top-right, bottom-right, bottom-left. When a rotation of the
-- bounding box is detected the rotation is represented as around the
-- top-left corner as defined when the text is read in the \'natural\'
-- orientation. For example: * when the text is horizontal it might look
-- like: 0----1 | | 3----2 * when it\'s rotated 180 degrees around the
-- top-left corner it becomes: 2----3 | | 1----0 and the vertex order will
-- still be (0, 1, 2, 3).
parBoundingBox :: Lens' Paragraph (Maybe BoundingPoly)
parBoundingBox
  = lens _parBoundingBox
      (\ s a -> s{_parBoundingBox = a})

-- | Confidence of the OCR results for the paragraph. Range [0, 1].
parConfidence :: Lens' Paragraph (Maybe Double)
parConfidence
  = lens _parConfidence
      (\ s a -> s{_parConfidence = a})
      . mapping _Coerce

-- | List of all words in this paragraph.
parWords :: Lens' Paragraph [Word]
parWords
  = lens _parWords (\ s a -> s{_parWords = a}) .
      _Default
      . _Coerce

instance FromJSON Paragraph where
        parseJSON
          = withObject "Paragraph"
              (\ o ->
                 Paragraph' <$>
                   (o .:? "property") <*> (o .:? "boundingBox") <*>
                     (o .:? "confidence")
                     <*> (o .:? "words" .!= mempty))

instance ToJSON Paragraph where
        toJSON Paragraph'{..}
          = object
              (catMaybes
                 [("property" .=) <$> _parProperty,
                  ("boundingBox" .=) <$> _parBoundingBox,
                  ("confidence" .=) <$> _parConfidence,
                  ("words" .=) <$> _parWords])

-- | A single symbol representation.
--
-- /See:/ 'symbol' smart constructor.
data Symbol =
  Symbol'
    { _sProperty :: !(Maybe TextProperty)
    , _sBoundingBox :: !(Maybe BoundingPoly)
    , _sText :: !(Maybe Text)
    , _sConfidence :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Symbol' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sProperty'
--
-- * 'sBoundingBox'
--
-- * 'sText'
--
-- * 'sConfidence'
symbol
    :: Symbol
symbol =
  Symbol'
    { _sProperty = Nothing
    , _sBoundingBox = Nothing
    , _sText = Nothing
    , _sConfidence = Nothing
    }


-- | Additional information detected for the symbol.
sProperty :: Lens' Symbol (Maybe TextProperty)
sProperty
  = lens _sProperty (\ s a -> s{_sProperty = a})

-- | The bounding box for the symbol. The vertices are in the order of
-- top-left, top-right, bottom-right, bottom-left. When a rotation of the
-- bounding box is detected the rotation is represented as around the
-- top-left corner as defined when the text is read in the \'natural\'
-- orientation. For example: * when the text is horizontal it might look
-- like: 0----1 | | 3----2 * when it\'s rotated 180 degrees around the
-- top-left corner it becomes: 2----3 | | 1----0 and the vertex order will
-- still be (0, 1, 2, 3).
sBoundingBox :: Lens' Symbol (Maybe BoundingPoly)
sBoundingBox
  = lens _sBoundingBox (\ s a -> s{_sBoundingBox = a})

-- | The actual UTF-8 representation of the symbol.
sText :: Lens' Symbol (Maybe Text)
sText = lens _sText (\ s a -> s{_sText = a})

-- | Confidence of the OCR results for the symbol. Range [0, 1].
sConfidence :: Lens' Symbol (Maybe Double)
sConfidence
  = lens _sConfidence (\ s a -> s{_sConfidence = a}) .
      mapping _Coerce

instance FromJSON Symbol where
        parseJSON
          = withObject "Symbol"
              (\ o ->
                 Symbol' <$>
                   (o .:? "property") <*> (o .:? "boundingBox") <*>
                     (o .:? "text")
                     <*> (o .:? "confidence"))

instance ToJSON Symbol where
        toJSON Symbol'{..}
          = object
              (catMaybes
                 [("property" .=) <$> _sProperty,
                  ("boundingBox" .=) <$> _sBoundingBox,
                  ("text" .=) <$> _sText,
                  ("confidence" .=) <$> _sConfidence])

-- | Response to an image annotation request.
--
-- /See:/ 'annotateImageResponse' smart constructor.
data AnnotateImageResponse =
  AnnotateImageResponse'
    { _airLogoAnnotations :: !(Maybe [EntityAnnotation])
    , _airProductSearchResults :: !(Maybe ProductSearchResults)
    , _airContext :: !(Maybe ImageAnnotationContext)
    , _airLabelAnnotations :: !(Maybe [EntityAnnotation])
    , _airFaceAnnotations :: !(Maybe [FaceAnnotation])
    , _airError :: !(Maybe Status)
    , _airWebDetection :: !(Maybe WebDetection)
    , _airSafeSearchAnnotation :: !(Maybe SafeSearchAnnotation)
    , _airLandmarkAnnotations :: !(Maybe [EntityAnnotation])
    , _airLocalizedObjectAnnotations :: !(Maybe [LocalizedObjectAnnotation])
    , _airTextAnnotations :: !(Maybe [EntityAnnotation])
    , _airCropHintsAnnotation :: !(Maybe CropHintsAnnotation)
    , _airFullTextAnnotation :: !(Maybe TextAnnotation)
    , _airImagePropertiesAnnotation :: !(Maybe ImageProperties)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AnnotateImageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'airLogoAnnotations'
--
-- * 'airProductSearchResults'
--
-- * 'airContext'
--
-- * 'airLabelAnnotations'
--
-- * 'airFaceAnnotations'
--
-- * 'airError'
--
-- * 'airWebDetection'
--
-- * 'airSafeSearchAnnotation'
--
-- * 'airLandmarkAnnotations'
--
-- * 'airLocalizedObjectAnnotations'
--
-- * 'airTextAnnotations'
--
-- * 'airCropHintsAnnotation'
--
-- * 'airFullTextAnnotation'
--
-- * 'airImagePropertiesAnnotation'
annotateImageResponse
    :: AnnotateImageResponse
annotateImageResponse =
  AnnotateImageResponse'
    { _airLogoAnnotations = Nothing
    , _airProductSearchResults = Nothing
    , _airContext = Nothing
    , _airLabelAnnotations = Nothing
    , _airFaceAnnotations = Nothing
    , _airError = Nothing
    , _airWebDetection = Nothing
    , _airSafeSearchAnnotation = Nothing
    , _airLandmarkAnnotations = Nothing
    , _airLocalizedObjectAnnotations = Nothing
    , _airTextAnnotations = Nothing
    , _airCropHintsAnnotation = Nothing
    , _airFullTextAnnotation = Nothing
    , _airImagePropertiesAnnotation = Nothing
    }


-- | If present, logo detection has completed successfully.
airLogoAnnotations :: Lens' AnnotateImageResponse [EntityAnnotation]
airLogoAnnotations
  = lens _airLogoAnnotations
      (\ s a -> s{_airLogoAnnotations = a})
      . _Default
      . _Coerce

-- | If present, product search has completed successfully.
airProductSearchResults :: Lens' AnnotateImageResponse (Maybe ProductSearchResults)
airProductSearchResults
  = lens _airProductSearchResults
      (\ s a -> s{_airProductSearchResults = a})

-- | If present, contextual information is needed to understand where this
-- image comes from.
airContext :: Lens' AnnotateImageResponse (Maybe ImageAnnotationContext)
airContext
  = lens _airContext (\ s a -> s{_airContext = a})

-- | If present, label detection has completed successfully.
airLabelAnnotations :: Lens' AnnotateImageResponse [EntityAnnotation]
airLabelAnnotations
  = lens _airLabelAnnotations
      (\ s a -> s{_airLabelAnnotations = a})
      . _Default
      . _Coerce

-- | If present, face detection has completed successfully.
airFaceAnnotations :: Lens' AnnotateImageResponse [FaceAnnotation]
airFaceAnnotations
  = lens _airFaceAnnotations
      (\ s a -> s{_airFaceAnnotations = a})
      . _Default
      . _Coerce

-- | If set, represents the error message for the operation. Note that
-- filled-in image annotations are guaranteed to be correct, even when
-- \`error\` is set.
airError :: Lens' AnnotateImageResponse (Maybe Status)
airError = lens _airError (\ s a -> s{_airError = a})

-- | If present, web detection has completed successfully.
airWebDetection :: Lens' AnnotateImageResponse (Maybe WebDetection)
airWebDetection
  = lens _airWebDetection
      (\ s a -> s{_airWebDetection = a})

-- | If present, safe-search annotation has completed successfully.
airSafeSearchAnnotation :: Lens' AnnotateImageResponse (Maybe SafeSearchAnnotation)
airSafeSearchAnnotation
  = lens _airSafeSearchAnnotation
      (\ s a -> s{_airSafeSearchAnnotation = a})

-- | If present, landmark detection has completed successfully.
airLandmarkAnnotations :: Lens' AnnotateImageResponse [EntityAnnotation]
airLandmarkAnnotations
  = lens _airLandmarkAnnotations
      (\ s a -> s{_airLandmarkAnnotations = a})
      . _Default
      . _Coerce

-- | If present, localized object detection has completed successfully. This
-- will be sorted descending by confidence score.
airLocalizedObjectAnnotations :: Lens' AnnotateImageResponse [LocalizedObjectAnnotation]
airLocalizedObjectAnnotations
  = lens _airLocalizedObjectAnnotations
      (\ s a -> s{_airLocalizedObjectAnnotations = a})
      . _Default
      . _Coerce

-- | If present, text (OCR) detection has completed successfully.
airTextAnnotations :: Lens' AnnotateImageResponse [EntityAnnotation]
airTextAnnotations
  = lens _airTextAnnotations
      (\ s a -> s{_airTextAnnotations = a})
      . _Default
      . _Coerce

-- | If present, crop hints have completed successfully.
airCropHintsAnnotation :: Lens' AnnotateImageResponse (Maybe CropHintsAnnotation)
airCropHintsAnnotation
  = lens _airCropHintsAnnotation
      (\ s a -> s{_airCropHintsAnnotation = a})

-- | If present, text (OCR) detection or document (OCR) text detection has
-- completed successfully. This annotation provides the structural
-- hierarchy for the OCR detected text.
airFullTextAnnotation :: Lens' AnnotateImageResponse (Maybe TextAnnotation)
airFullTextAnnotation
  = lens _airFullTextAnnotation
      (\ s a -> s{_airFullTextAnnotation = a})

-- | If present, image properties were extracted successfully.
airImagePropertiesAnnotation :: Lens' AnnotateImageResponse (Maybe ImageProperties)
airImagePropertiesAnnotation
  = lens _airImagePropertiesAnnotation
      (\ s a -> s{_airImagePropertiesAnnotation = a})

instance FromJSON AnnotateImageResponse where
        parseJSON
          = withObject "AnnotateImageResponse"
              (\ o ->
                 AnnotateImageResponse' <$>
                   (o .:? "logoAnnotations" .!= mempty) <*>
                     (o .:? "productSearchResults")
                     <*> (o .:? "context")
                     <*> (o .:? "labelAnnotations" .!= mempty)
                     <*> (o .:? "faceAnnotations" .!= mempty)
                     <*> (o .:? "error")
                     <*> (o .:? "webDetection")
                     <*> (o .:? "safeSearchAnnotation")
                     <*> (o .:? "landmarkAnnotations" .!= mempty)
                     <*> (o .:? "localizedObjectAnnotations" .!= mempty)
                     <*> (o .:? "textAnnotations" .!= mempty)
                     <*> (o .:? "cropHintsAnnotation")
                     <*> (o .:? "fullTextAnnotation")
                     <*> (o .:? "imagePropertiesAnnotation"))

instance ToJSON AnnotateImageResponse where
        toJSON AnnotateImageResponse'{..}
          = object
              (catMaybes
                 [("logoAnnotations" .=) <$> _airLogoAnnotations,
                  ("productSearchResults" .=) <$>
                    _airProductSearchResults,
                  ("context" .=) <$> _airContext,
                  ("labelAnnotations" .=) <$> _airLabelAnnotations,
                  ("faceAnnotations" .=) <$> _airFaceAnnotations,
                  ("error" .=) <$> _airError,
                  ("webDetection" .=) <$> _airWebDetection,
                  ("safeSearchAnnotation" .=) <$>
                    _airSafeSearchAnnotation,
                  ("landmarkAnnotations" .=) <$>
                    _airLandmarkAnnotations,
                  ("localizedObjectAnnotations" .=) <$>
                    _airLocalizedObjectAnnotations,
                  ("textAnnotations" .=) <$> _airTextAnnotations,
                  ("cropHintsAnnotation" .=) <$>
                    _airCropHintsAnnotation,
                  ("fullTextAnnotation" .=) <$> _airFullTextAnnotation,
                  ("imagePropertiesAnnotation" .=) <$>
                    _airImagePropertiesAnnotation])

-- | The desired output location and metadata.
--
-- /See:/ 'googleCloudVisionV1p3beta1OutputConfig' smart constructor.
data GoogleCloudVisionV1p3beta1OutputConfig =
  GoogleCloudVisionV1p3beta1OutputConfig'
    { _gooGcsDestination :: !(Maybe GoogleCloudVisionV1p3beta1GcsDestination)
    , _gooBatchSize :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1OutputConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooGcsDestination'
--
-- * 'gooBatchSize'
googleCloudVisionV1p3beta1OutputConfig
    :: GoogleCloudVisionV1p3beta1OutputConfig
googleCloudVisionV1p3beta1OutputConfig =
  GoogleCloudVisionV1p3beta1OutputConfig'
    {_gooGcsDestination = Nothing, _gooBatchSize = Nothing}


-- | The Google Cloud Storage location to write the output(s) to.
gooGcsDestination :: Lens' GoogleCloudVisionV1p3beta1OutputConfig (Maybe GoogleCloudVisionV1p3beta1GcsDestination)
gooGcsDestination
  = lens _gooGcsDestination
      (\ s a -> s{_gooGcsDestination = a})

-- | The max number of response protos to put into each output JSON file on
-- Google Cloud Storage. The valid range is [1, 100]. If not specified, the
-- default value is 20. For example, for one pdf file with 100 pages, 100
-- response protos will be generated. If \`batch_size\` = 20, then 5 json
-- files each containing 20 response protos will be written under the
-- prefix \`gcs_destination\`.\`uri\`. Currently, batch_size only applies
-- to GcsDestination, with potential future support for other output
-- configurations.
gooBatchSize :: Lens' GoogleCloudVisionV1p3beta1OutputConfig (Maybe Int32)
gooBatchSize
  = lens _gooBatchSize (\ s a -> s{_gooBatchSize = a})
      . mapping _Coerce

instance FromJSON
           GoogleCloudVisionV1p3beta1OutputConfig
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p3beta1OutputConfig"
              (\ o ->
                 GoogleCloudVisionV1p3beta1OutputConfig' <$>
                   (o .:? "gcsDestination") <*> (o .:? "batchSize"))

instance ToJSON
           GoogleCloudVisionV1p3beta1OutputConfig
         where
        toJSON GoogleCloudVisionV1p3beta1OutputConfig'{..}
          = object
              (catMaybes
                 [("gcsDestination" .=) <$> _gooGcsDestination,
                  ("batchSize" .=) <$> _gooBatchSize])

-- | Stores image properties, such as dominant colors.
--
-- /See:/ 'imageProperties' smart constructor.
newtype ImageProperties =
  ImageProperties'
    { _ipDominantColors :: Maybe DominantColorsAnnotation
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ImageProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ipDominantColors'
imageProperties
    :: ImageProperties
imageProperties = ImageProperties' {_ipDominantColors = Nothing}


-- | If present, dominant colors completed successfully.
ipDominantColors :: Lens' ImageProperties (Maybe DominantColorsAnnotation)
ipDominantColors
  = lens _ipDominantColors
      (\ s a -> s{_ipDominantColors = a})

instance FromJSON ImageProperties where
        parseJSON
          = withObject "ImageProperties"
              (\ o ->
                 ImageProperties' <$> (o .:? "dominantColors"))

instance ToJSON ImageProperties where
        toJSON ImageProperties'{..}
          = object
              (catMaybes
                 [("dominantColors" .=) <$> _ipDominantColors])

-- | Set of detected objects with bounding boxes.
--
-- /See:/ 'googleCloudVisionV1p3beta1LocalizedObjectAnnotation' smart constructor.
data GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation =
  GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation'
    { _gcvvloacLanguageCode :: !(Maybe Text)
    , _gcvvloacScore :: !(Maybe (Textual Double))
    , _gcvvloacBoundingPoly :: !(Maybe GoogleCloudVisionV1p3beta1BoundingPoly)
    , _gcvvloacName :: !(Maybe Text)
    , _gcvvloacMid :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvloacLanguageCode'
--
-- * 'gcvvloacScore'
--
-- * 'gcvvloacBoundingPoly'
--
-- * 'gcvvloacName'
--
-- * 'gcvvloacMid'
googleCloudVisionV1p3beta1LocalizedObjectAnnotation
    :: GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation
googleCloudVisionV1p3beta1LocalizedObjectAnnotation =
  GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation'
    { _gcvvloacLanguageCode = Nothing
    , _gcvvloacScore = Nothing
    , _gcvvloacBoundingPoly = Nothing
    , _gcvvloacName = Nothing
    , _gcvvloacMid = Nothing
    }


-- | The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more
-- information, see
-- http:\/\/www.unicode.org\/reports\/tr35\/#Unicode_locale_identifier.
gcvvloacLanguageCode :: Lens' GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation (Maybe Text)
gcvvloacLanguageCode
  = lens _gcvvloacLanguageCode
      (\ s a -> s{_gcvvloacLanguageCode = a})

-- | Score of the result. Range [0, 1].
gcvvloacScore :: Lens' GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation (Maybe Double)
gcvvloacScore
  = lens _gcvvloacScore
      (\ s a -> s{_gcvvloacScore = a})
      . mapping _Coerce

-- | Image region to which this object belongs. This must be populated.
gcvvloacBoundingPoly :: Lens' GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation (Maybe GoogleCloudVisionV1p3beta1BoundingPoly)
gcvvloacBoundingPoly
  = lens _gcvvloacBoundingPoly
      (\ s a -> s{_gcvvloacBoundingPoly = a})

-- | Object name, expressed in its \`language_code\` language.
gcvvloacName :: Lens' GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation (Maybe Text)
gcvvloacName
  = lens _gcvvloacName (\ s a -> s{_gcvvloacName = a})

-- | Object ID that should align with EntityAnnotation mid.
gcvvloacMid :: Lens' GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation (Maybe Text)
gcvvloacMid
  = lens _gcvvloacMid (\ s a -> s{_gcvvloacMid = a})

instance FromJSON
           GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation"
              (\ o ->
                 GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation'
                   <$>
                   (o .:? "languageCode") <*> (o .:? "score") <*>
                     (o .:? "boundingPoly")
                     <*> (o .:? "name")
                     <*> (o .:? "mid"))

instance ToJSON
           GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation
         where
        toJSON
          GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _gcvvloacLanguageCode,
                  ("score" .=) <$> _gcvvloacScore,
                  ("boundingPoly" .=) <$> _gcvvloacBoundingPoly,
                  ("name" .=) <$> _gcvvloacName,
                  ("mid" .=) <$> _gcvvloacMid])

-- | Entity deduced from similar images on the Internet.
--
-- /See:/ 'googleCloudVisionV1p2beta1WebDetectionWebEntity' smart constructor.
data GoogleCloudVisionV1p2beta1WebDetectionWebEntity =
  GoogleCloudVisionV1p2beta1WebDetectionWebEntity'
    { _gcvvwdwecScore :: !(Maybe (Textual Double))
    , _gcvvwdwecEntityId :: !(Maybe Text)
    , _gcvvwdwecDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1WebDetectionWebEntity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvwdwecScore'
--
-- * 'gcvvwdwecEntityId'
--
-- * 'gcvvwdwecDescription'
googleCloudVisionV1p2beta1WebDetectionWebEntity
    :: GoogleCloudVisionV1p2beta1WebDetectionWebEntity
googleCloudVisionV1p2beta1WebDetectionWebEntity =
  GoogleCloudVisionV1p2beta1WebDetectionWebEntity'
    { _gcvvwdwecScore = Nothing
    , _gcvvwdwecEntityId = Nothing
    , _gcvvwdwecDescription = Nothing
    }


-- | Overall relevancy score for the entity. Not normalized and not
-- comparable across different image queries.
gcvvwdwecScore :: Lens' GoogleCloudVisionV1p2beta1WebDetectionWebEntity (Maybe Double)
gcvvwdwecScore
  = lens _gcvvwdwecScore
      (\ s a -> s{_gcvvwdwecScore = a})
      . mapping _Coerce

-- | Opaque entity ID.
gcvvwdwecEntityId :: Lens' GoogleCloudVisionV1p2beta1WebDetectionWebEntity (Maybe Text)
gcvvwdwecEntityId
  = lens _gcvvwdwecEntityId
      (\ s a -> s{_gcvvwdwecEntityId = a})

-- | Canonical description of the entity, in English.
gcvvwdwecDescription :: Lens' GoogleCloudVisionV1p2beta1WebDetectionWebEntity (Maybe Text)
gcvvwdwecDescription
  = lens _gcvvwdwecDescription
      (\ s a -> s{_gcvvwdwecDescription = a})

instance FromJSON
           GoogleCloudVisionV1p2beta1WebDetectionWebEntity
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p2beta1WebDetectionWebEntity"
              (\ o ->
                 GoogleCloudVisionV1p2beta1WebDetectionWebEntity' <$>
                   (o .:? "score") <*> (o .:? "entityId") <*>
                     (o .:? "description"))

instance ToJSON
           GoogleCloudVisionV1p2beta1WebDetectionWebEntity
         where
        toJSON
          GoogleCloudVisionV1p2beta1WebDetectionWebEntity'{..}
          = object
              (catMaybes
                 [("score" .=) <$> _gcvvwdwecScore,
                  ("entityId" .=) <$> _gcvvwdwecEntityId,
                  ("description" .=) <$> _gcvvwdwecDescription])

-- | Response to an async batch file annotation request.
--
-- /See:/ 'asyncBatchAnnotateFilesResponse' smart constructor.
newtype AsyncBatchAnnotateFilesResponse =
  AsyncBatchAnnotateFilesResponse'
    { _abafrResponses :: Maybe [AsyncAnnotateFileResponse]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AsyncBatchAnnotateFilesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'abafrResponses'
asyncBatchAnnotateFilesResponse
    :: AsyncBatchAnnotateFilesResponse
asyncBatchAnnotateFilesResponse =
  AsyncBatchAnnotateFilesResponse' {_abafrResponses = Nothing}


-- | The list of file annotation responses, one for each request in
-- AsyncBatchAnnotateFilesRequest.
abafrResponses :: Lens' AsyncBatchAnnotateFilesResponse [AsyncAnnotateFileResponse]
abafrResponses
  = lens _abafrResponses
      (\ s a -> s{_abafrResponses = a})
      . _Default
      . _Coerce

instance FromJSON AsyncBatchAnnotateFilesResponse
         where
        parseJSON
          = withObject "AsyncBatchAnnotateFilesResponse"
              (\ o ->
                 AsyncBatchAnnotateFilesResponse' <$>
                   (o .:? "responses" .!= mempty))

instance ToJSON AsyncBatchAnnotateFilesResponse where
        toJSON AsyncBatchAnnotateFilesResponse'{..}
          = object
              (catMaybes [("responses" .=) <$> _abafrResponses])

-- | Single crop hint that is used to generate a new crop when serving an
-- image.
--
-- /See:/ 'googleCloudVisionV1p3beta1CropHint' smart constructor.
data GoogleCloudVisionV1p3beta1CropHint =
  GoogleCloudVisionV1p3beta1CropHint'
    { _gcvvch1BoundingPoly :: !(Maybe GoogleCloudVisionV1p3beta1BoundingPoly)
    , _gcvvch1Confidence :: !(Maybe (Textual Double))
    , _gcvvch1ImportanceFraction :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1CropHint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvch1BoundingPoly'
--
-- * 'gcvvch1Confidence'
--
-- * 'gcvvch1ImportanceFraction'
googleCloudVisionV1p3beta1CropHint
    :: GoogleCloudVisionV1p3beta1CropHint
googleCloudVisionV1p3beta1CropHint =
  GoogleCloudVisionV1p3beta1CropHint'
    { _gcvvch1BoundingPoly = Nothing
    , _gcvvch1Confidence = Nothing
    , _gcvvch1ImportanceFraction = Nothing
    }


-- | The bounding polygon for the crop region. The coordinates of the
-- bounding box are in the original image\'s scale.
gcvvch1BoundingPoly :: Lens' GoogleCloudVisionV1p3beta1CropHint (Maybe GoogleCloudVisionV1p3beta1BoundingPoly)
gcvvch1BoundingPoly
  = lens _gcvvch1BoundingPoly
      (\ s a -> s{_gcvvch1BoundingPoly = a})

-- | Confidence of this being a salient region. Range [0, 1].
gcvvch1Confidence :: Lens' GoogleCloudVisionV1p3beta1CropHint (Maybe Double)
gcvvch1Confidence
  = lens _gcvvch1Confidence
      (\ s a -> s{_gcvvch1Confidence = a})
      . mapping _Coerce

-- | Fraction of importance of this salient region with respect to the
-- original image.
gcvvch1ImportanceFraction :: Lens' GoogleCloudVisionV1p3beta1CropHint (Maybe Double)
gcvvch1ImportanceFraction
  = lens _gcvvch1ImportanceFraction
      (\ s a -> s{_gcvvch1ImportanceFraction = a})
      . mapping _Coerce

instance FromJSON GoogleCloudVisionV1p3beta1CropHint
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p3beta1CropHint"
              (\ o ->
                 GoogleCloudVisionV1p3beta1CropHint' <$>
                   (o .:? "boundingPoly") <*> (o .:? "confidence") <*>
                     (o .:? "importanceFraction"))

instance ToJSON GoogleCloudVisionV1p3beta1CropHint
         where
        toJSON GoogleCloudVisionV1p3beta1CropHint'{..}
          = object
              (catMaybes
                 [("boundingPoly" .=) <$> _gcvvch1BoundingPoly,
                  ("confidence" .=) <$> _gcvvch1Confidence,
                  ("importanceFraction" .=) <$>
                    _gcvvch1ImportanceFraction])

-- | A face annotation object contains the results of face detection.
--
-- /See:/ 'faceAnnotation' smart constructor.
data FaceAnnotation =
  FaceAnnotation'
    { _faTiltAngle :: !(Maybe (Textual Double))
    , _faBlurredLikelihood :: !(Maybe FaceAnnotationBlurredLikelihood)
    , _faBoundingPoly :: !(Maybe BoundingPoly)
    , _faSurpriseLikelihood :: !(Maybe FaceAnnotationSurpriseLikelihood)
    , _faLandmarkingConfidence :: !(Maybe (Textual Double))
    , _faPanAngle :: !(Maybe (Textual Double))
    , _faRollAngle :: !(Maybe (Textual Double))
    , _faUnderExposedLikelihood :: !(Maybe FaceAnnotationUnderExposedLikelihood)
    , _faFdBoundingPoly :: !(Maybe BoundingPoly)
    , _faAngerLikelihood :: !(Maybe FaceAnnotationAngerLikelihood)
    , _faDetectionConfidence :: !(Maybe (Textual Double))
    , _faHeadwearLikelihood :: !(Maybe FaceAnnotationHeadwearLikelihood)
    , _faSorrowLikelihood :: !(Maybe FaceAnnotationSorrowLikelihood)
    , _faJoyLikelihood :: !(Maybe FaceAnnotationJoyLikelihood)
    , _faLandmarks :: !(Maybe [Landmark])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FaceAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'faTiltAngle'
--
-- * 'faBlurredLikelihood'
--
-- * 'faBoundingPoly'
--
-- * 'faSurpriseLikelihood'
--
-- * 'faLandmarkingConfidence'
--
-- * 'faPanAngle'
--
-- * 'faRollAngle'
--
-- * 'faUnderExposedLikelihood'
--
-- * 'faFdBoundingPoly'
--
-- * 'faAngerLikelihood'
--
-- * 'faDetectionConfidence'
--
-- * 'faHeadwearLikelihood'
--
-- * 'faSorrowLikelihood'
--
-- * 'faJoyLikelihood'
--
-- * 'faLandmarks'
faceAnnotation
    :: FaceAnnotation
faceAnnotation =
  FaceAnnotation'
    { _faTiltAngle = Nothing
    , _faBlurredLikelihood = Nothing
    , _faBoundingPoly = Nothing
    , _faSurpriseLikelihood = Nothing
    , _faLandmarkingConfidence = Nothing
    , _faPanAngle = Nothing
    , _faRollAngle = Nothing
    , _faUnderExposedLikelihood = Nothing
    , _faFdBoundingPoly = Nothing
    , _faAngerLikelihood = Nothing
    , _faDetectionConfidence = Nothing
    , _faHeadwearLikelihood = Nothing
    , _faSorrowLikelihood = Nothing
    , _faJoyLikelihood = Nothing
    , _faLandmarks = Nothing
    }


-- | Pitch angle, which indicates the upwards\/downwards angle that the face
-- is pointing relative to the image\'s horizontal plane. Range [-180,180].
faTiltAngle :: Lens' FaceAnnotation (Maybe Double)
faTiltAngle
  = lens _faTiltAngle (\ s a -> s{_faTiltAngle = a}) .
      mapping _Coerce

-- | Blurred likelihood.
faBlurredLikelihood :: Lens' FaceAnnotation (Maybe FaceAnnotationBlurredLikelihood)
faBlurredLikelihood
  = lens _faBlurredLikelihood
      (\ s a -> s{_faBlurredLikelihood = a})

-- | The bounding polygon around the face. The coordinates of the bounding
-- box are in the original image\'s scale. The bounding box is computed to
-- \"frame\" the face in accordance with human expectations. It is based on
-- the landmarker results. Note that one or more x and\/or y coordinates
-- may not be generated in the \`BoundingPoly\` (the polygon will be
-- unbounded) if only a partial face appears in the image to be annotated.
faBoundingPoly :: Lens' FaceAnnotation (Maybe BoundingPoly)
faBoundingPoly
  = lens _faBoundingPoly
      (\ s a -> s{_faBoundingPoly = a})

-- | Surprise likelihood.
faSurpriseLikelihood :: Lens' FaceAnnotation (Maybe FaceAnnotationSurpriseLikelihood)
faSurpriseLikelihood
  = lens _faSurpriseLikelihood
      (\ s a -> s{_faSurpriseLikelihood = a})

-- | Face landmarking confidence. Range [0, 1].
faLandmarkingConfidence :: Lens' FaceAnnotation (Maybe Double)
faLandmarkingConfidence
  = lens _faLandmarkingConfidence
      (\ s a -> s{_faLandmarkingConfidence = a})
      . mapping _Coerce

-- | Yaw angle, which indicates the leftward\/rightward angle that the face
-- is pointing relative to the vertical plane perpendicular to the image.
-- Range [-180,180].
faPanAngle :: Lens' FaceAnnotation (Maybe Double)
faPanAngle
  = lens _faPanAngle (\ s a -> s{_faPanAngle = a}) .
      mapping _Coerce

-- | Roll angle, which indicates the amount of clockwise\/anti-clockwise
-- rotation of the face relative to the image vertical about the axis
-- perpendicular to the face. Range [-180,180].
faRollAngle :: Lens' FaceAnnotation (Maybe Double)
faRollAngle
  = lens _faRollAngle (\ s a -> s{_faRollAngle = a}) .
      mapping _Coerce

-- | Under-exposed likelihood.
faUnderExposedLikelihood :: Lens' FaceAnnotation (Maybe FaceAnnotationUnderExposedLikelihood)
faUnderExposedLikelihood
  = lens _faUnderExposedLikelihood
      (\ s a -> s{_faUnderExposedLikelihood = a})

-- | The \`fd_bounding_poly\` bounding polygon is tighter than the
-- \`boundingPoly\`, and encloses only the skin part of the face.
-- Typically, it is used to eliminate the face from any image analysis that
-- detects the \"amount of skin\" visible in an image. It is not based on
-- the landmarker results, only on the initial face detection, hence the fd
-- (face detection) prefix.
faFdBoundingPoly :: Lens' FaceAnnotation (Maybe BoundingPoly)
faFdBoundingPoly
  = lens _faFdBoundingPoly
      (\ s a -> s{_faFdBoundingPoly = a})

-- | Anger likelihood.
faAngerLikelihood :: Lens' FaceAnnotation (Maybe FaceAnnotationAngerLikelihood)
faAngerLikelihood
  = lens _faAngerLikelihood
      (\ s a -> s{_faAngerLikelihood = a})

-- | Detection confidence. Range [0, 1].
faDetectionConfidence :: Lens' FaceAnnotation (Maybe Double)
faDetectionConfidence
  = lens _faDetectionConfidence
      (\ s a -> s{_faDetectionConfidence = a})
      . mapping _Coerce

-- | Headwear likelihood.
faHeadwearLikelihood :: Lens' FaceAnnotation (Maybe FaceAnnotationHeadwearLikelihood)
faHeadwearLikelihood
  = lens _faHeadwearLikelihood
      (\ s a -> s{_faHeadwearLikelihood = a})

-- | Sorrow likelihood.
faSorrowLikelihood :: Lens' FaceAnnotation (Maybe FaceAnnotationSorrowLikelihood)
faSorrowLikelihood
  = lens _faSorrowLikelihood
      (\ s a -> s{_faSorrowLikelihood = a})

-- | Joy likelihood.
faJoyLikelihood :: Lens' FaceAnnotation (Maybe FaceAnnotationJoyLikelihood)
faJoyLikelihood
  = lens _faJoyLikelihood
      (\ s a -> s{_faJoyLikelihood = a})

-- | Detected face landmarks.
faLandmarks :: Lens' FaceAnnotation [Landmark]
faLandmarks
  = lens _faLandmarks (\ s a -> s{_faLandmarks = a}) .
      _Default
      . _Coerce

instance FromJSON FaceAnnotation where
        parseJSON
          = withObject "FaceAnnotation"
              (\ o ->
                 FaceAnnotation' <$>
                   (o .:? "tiltAngle") <*> (o .:? "blurredLikelihood")
                     <*> (o .:? "boundingPoly")
                     <*> (o .:? "surpriseLikelihood")
                     <*> (o .:? "landmarkingConfidence")
                     <*> (o .:? "panAngle")
                     <*> (o .:? "rollAngle")
                     <*> (o .:? "underExposedLikelihood")
                     <*> (o .:? "fdBoundingPoly")
                     <*> (o .:? "angerLikelihood")
                     <*> (o .:? "detectionConfidence")
                     <*> (o .:? "headwearLikelihood")
                     <*> (o .:? "sorrowLikelihood")
                     <*> (o .:? "joyLikelihood")
                     <*> (o .:? "landmarks" .!= mempty))

instance ToJSON FaceAnnotation where
        toJSON FaceAnnotation'{..}
          = object
              (catMaybes
                 [("tiltAngle" .=) <$> _faTiltAngle,
                  ("blurredLikelihood" .=) <$> _faBlurredLikelihood,
                  ("boundingPoly" .=) <$> _faBoundingPoly,
                  ("surpriseLikelihood" .=) <$> _faSurpriseLikelihood,
                  ("landmarkingConfidence" .=) <$>
                    _faLandmarkingConfidence,
                  ("panAngle" .=) <$> _faPanAngle,
                  ("rollAngle" .=) <$> _faRollAngle,
                  ("underExposedLikelihood" .=) <$>
                    _faUnderExposedLikelihood,
                  ("fdBoundingPoly" .=) <$> _faFdBoundingPoly,
                  ("angerLikelihood" .=) <$> _faAngerLikelihood,
                  ("detectionConfidence" .=) <$>
                    _faDetectionConfidence,
                  ("headwearLikelihood" .=) <$> _faHeadwearLikelihood,
                  ("sorrowLikelihood" .=) <$> _faSorrowLikelihood,
                  ("joyLikelihood" .=) <$> _faJoyLikelihood,
                  ("landmarks" .=) <$> _faLandmarks])

-- | A \`Property\` consists of a user-supplied name\/value pair.
--
-- /See:/ 'googleCloudVisionV1p1beta1Property' smart constructor.
data GoogleCloudVisionV1p1beta1Property =
  GoogleCloudVisionV1p1beta1Property'
    { _ggUint64Value :: !(Maybe (Textual Word64))
    , _ggValue :: !(Maybe Text)
    , _ggName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1Property' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggUint64Value'
--
-- * 'ggValue'
--
-- * 'ggName'
googleCloudVisionV1p1beta1Property
    :: GoogleCloudVisionV1p1beta1Property
googleCloudVisionV1p1beta1Property =
  GoogleCloudVisionV1p1beta1Property'
    {_ggUint64Value = Nothing, _ggValue = Nothing, _ggName = Nothing}


-- | Value of numeric properties.
ggUint64Value :: Lens' GoogleCloudVisionV1p1beta1Property (Maybe Word64)
ggUint64Value
  = lens _ggUint64Value
      (\ s a -> s{_ggUint64Value = a})
      . mapping _Coerce

-- | Value of the property.
ggValue :: Lens' GoogleCloudVisionV1p1beta1Property (Maybe Text)
ggValue = lens _ggValue (\ s a -> s{_ggValue = a})

-- | Name of the property.
ggName :: Lens' GoogleCloudVisionV1p1beta1Property (Maybe Text)
ggName = lens _ggName (\ s a -> s{_ggName = a})

instance FromJSON GoogleCloudVisionV1p1beta1Property
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p1beta1Property"
              (\ o ->
                 GoogleCloudVisionV1p1beta1Property' <$>
                   (o .:? "uint64Value") <*> (o .:? "value") <*>
                     (o .:? "name"))

instance ToJSON GoogleCloudVisionV1p1beta1Property
         where
        toJSON GoogleCloudVisionV1p1beta1Property'{..}
          = object
              (catMaybes
                 [("uint64Value" .=) <$> _ggUint64Value,
                  ("value" .=) <$> _ggValue, ("name" .=) <$> _ggName])

-- | Results for a product search request.
--
-- /See:/ 'googleCloudVisionV1p1beta1ProductSearchResults' smart constructor.
data GoogleCloudVisionV1p1beta1ProductSearchResults =
  GoogleCloudVisionV1p1beta1ProductSearchResults'
    { _gProductGroupedResults :: !(Maybe [GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult])
    , _gResults :: !(Maybe [GoogleCloudVisionV1p1beta1ProductSearchResultsResult])
    , _gIndexTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1ProductSearchResults' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gProductGroupedResults'
--
-- * 'gResults'
--
-- * 'gIndexTime'
googleCloudVisionV1p1beta1ProductSearchResults
    :: GoogleCloudVisionV1p1beta1ProductSearchResults
googleCloudVisionV1p1beta1ProductSearchResults =
  GoogleCloudVisionV1p1beta1ProductSearchResults'
    { _gProductGroupedResults = Nothing
    , _gResults = Nothing
    , _gIndexTime = Nothing
    }


-- | List of results grouped by products detected in the query image. Each
-- entry corresponds to one bounding polygon in the query image, and
-- contains the matching products specific to that region. There may be
-- duplicate product matches in the union of all the per-product results.
gProductGroupedResults :: Lens' GoogleCloudVisionV1p1beta1ProductSearchResults [GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult]
gProductGroupedResults
  = lens _gProductGroupedResults
      (\ s a -> s{_gProductGroupedResults = a})
      . _Default
      . _Coerce

-- | List of results, one for each product match.
gResults :: Lens' GoogleCloudVisionV1p1beta1ProductSearchResults [GoogleCloudVisionV1p1beta1ProductSearchResultsResult]
gResults
  = lens _gResults (\ s a -> s{_gResults = a}) .
      _Default
      . _Coerce

-- | Timestamp of the index which provided these results. Products added to
-- the product set and products removed from the product set after this
-- time are not reflected in the current results.
gIndexTime :: Lens' GoogleCloudVisionV1p1beta1ProductSearchResults (Maybe UTCTime)
gIndexTime
  = lens _gIndexTime (\ s a -> s{_gIndexTime = a}) .
      mapping _DateTime

instance FromJSON
           GoogleCloudVisionV1p1beta1ProductSearchResults
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p1beta1ProductSearchResults"
              (\ o ->
                 GoogleCloudVisionV1p1beta1ProductSearchResults' <$>
                   (o .:? "productGroupedResults" .!= mempty) <*>
                     (o .:? "results" .!= mempty)
                     <*> (o .:? "indexTime"))

instance ToJSON
           GoogleCloudVisionV1p1beta1ProductSearchResults
         where
        toJSON
          GoogleCloudVisionV1p1beta1ProductSearchResults'{..}
          = object
              (catMaybes
                 [("productGroupedResults" .=) <$>
                    _gProductGroupedResults,
                  ("results" .=) <$> _gResults,
                  ("indexTime" .=) <$> _gIndexTime])

-- | Prediction for what the object in the bounding box is.
--
-- /See:/ 'googleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation' smart constructor.
data GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation =
  GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation'
    { _gcvvpsroacLanguageCode :: !(Maybe Text)
    , _gcvvpsroacScore :: !(Maybe (Textual Double))
    , _gcvvpsroacName :: !(Maybe Text)
    , _gcvvpsroacMid :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvpsroacLanguageCode'
--
-- * 'gcvvpsroacScore'
--
-- * 'gcvvpsroacName'
--
-- * 'gcvvpsroacMid'
googleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation
    :: GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation
googleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation =
  GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation'
    { _gcvvpsroacLanguageCode = Nothing
    , _gcvvpsroacScore = Nothing
    , _gcvvpsroacName = Nothing
    , _gcvvpsroacMid = Nothing
    }


-- | The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more
-- information, see
-- http:\/\/www.unicode.org\/reports\/tr35\/#Unicode_locale_identifier.
gcvvpsroacLanguageCode :: Lens' GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation (Maybe Text)
gcvvpsroacLanguageCode
  = lens _gcvvpsroacLanguageCode
      (\ s a -> s{_gcvvpsroacLanguageCode = a})

-- | Score of the result. Range [0, 1].
gcvvpsroacScore :: Lens' GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation (Maybe Double)
gcvvpsroacScore
  = lens _gcvvpsroacScore
      (\ s a -> s{_gcvvpsroacScore = a})
      . mapping _Coerce

-- | Object name, expressed in its \`language_code\` language.
gcvvpsroacName :: Lens' GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation (Maybe Text)
gcvvpsroacName
  = lens _gcvvpsroacName
      (\ s a -> s{_gcvvpsroacName = a})

-- | Object ID that should align with EntityAnnotation mid.
gcvvpsroacMid :: Lens' GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation (Maybe Text)
gcvvpsroacMid
  = lens _gcvvpsroacMid
      (\ s a -> s{_gcvvpsroacMid = a})

instance FromJSON
           GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation"
              (\ o ->
                 GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation'
                   <$>
                   (o .:? "languageCode") <*> (o .:? "score") <*>
                     (o .:? "name")
                     <*> (o .:? "mid"))

instance ToJSON
           GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation
         where
        toJSON
          GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _gcvvpsroacLanguageCode,
                  ("score" .=) <$> _gcvvpsroacScore,
                  ("name" .=) <$> _gcvvpsroacName,
                  ("mid" .=) <$> _gcvvpsroacMid])

-- | Rectangle determined by min and max \`LatLng\` pairs.
--
-- /See:/ 'googleCloudVisionV1p2beta1LatLongRect' smart constructor.
data GoogleCloudVisionV1p2beta1LatLongRect =
  GoogleCloudVisionV1p2beta1LatLongRect'
    { _gcvvllrMaxLatLng :: !(Maybe LatLng)
    , _gcvvllrMinLatLng :: !(Maybe LatLng)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1LatLongRect' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvllrMaxLatLng'
--
-- * 'gcvvllrMinLatLng'
googleCloudVisionV1p2beta1LatLongRect
    :: GoogleCloudVisionV1p2beta1LatLongRect
googleCloudVisionV1p2beta1LatLongRect =
  GoogleCloudVisionV1p2beta1LatLongRect'
    {_gcvvllrMaxLatLng = Nothing, _gcvvllrMinLatLng = Nothing}


-- | Max lat\/long pair.
gcvvllrMaxLatLng :: Lens' GoogleCloudVisionV1p2beta1LatLongRect (Maybe LatLng)
gcvvllrMaxLatLng
  = lens _gcvvllrMaxLatLng
      (\ s a -> s{_gcvvllrMaxLatLng = a})

-- | Min lat\/long pair.
gcvvllrMinLatLng :: Lens' GoogleCloudVisionV1p2beta1LatLongRect (Maybe LatLng)
gcvvllrMinLatLng
  = lens _gcvvllrMinLatLng
      (\ s a -> s{_gcvvllrMinLatLng = a})

instance FromJSON
           GoogleCloudVisionV1p2beta1LatLongRect
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p2beta1LatLongRect"
              (\ o ->
                 GoogleCloudVisionV1p2beta1LatLongRect' <$>
                   (o .:? "maxLatLng") <*> (o .:? "minLatLng"))

instance ToJSON GoogleCloudVisionV1p2beta1LatLongRect
         where
        toJSON GoogleCloudVisionV1p2beta1LatLongRect'{..}
          = object
              (catMaybes
                 [("maxLatLng" .=) <$> _gcvvllrMaxLatLng,
                  ("minLatLng" .=) <$> _gcvvllrMinLatLng])

-- | Prediction for what the object in the bounding box is.
--
-- /See:/ 'googleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation' smart constructor.
data GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation =
  GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation'
    { _goooLanguageCode :: !(Maybe Text)
    , _goooScore :: !(Maybe (Textual Double))
    , _goooName :: !(Maybe Text)
    , _goooMid :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'goooLanguageCode'
--
-- * 'goooScore'
--
-- * 'goooName'
--
-- * 'goooMid'
googleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation
    :: GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation
googleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation =
  GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation'
    { _goooLanguageCode = Nothing
    , _goooScore = Nothing
    , _goooName = Nothing
    , _goooMid = Nothing
    }


-- | The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more
-- information, see
-- http:\/\/www.unicode.org\/reports\/tr35\/#Unicode_locale_identifier.
goooLanguageCode :: Lens' GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation (Maybe Text)
goooLanguageCode
  = lens _goooLanguageCode
      (\ s a -> s{_goooLanguageCode = a})

-- | Score of the result. Range [0, 1].
goooScore :: Lens' GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation (Maybe Double)
goooScore
  = lens _goooScore (\ s a -> s{_goooScore = a}) .
      mapping _Coerce

-- | Object name, expressed in its \`language_code\` language.
goooName :: Lens' GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation (Maybe Text)
goooName = lens _goooName (\ s a -> s{_goooName = a})

-- | Object ID that should align with EntityAnnotation mid.
goooMid :: Lens' GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation (Maybe Text)
goooMid = lens _goooMid (\ s a -> s{_goooMid = a})

instance FromJSON
           GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation"
              (\ o ->
                 GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation'
                   <$>
                   (o .:? "languageCode") <*> (o .:? "score") <*>
                     (o .:? "name")
                     <*> (o .:? "mid"))

instance ToJSON
           GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation
         where
        toJSON
          GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _goooLanguageCode,
                  ("score" .=) <$> _goooScore,
                  ("name" .=) <$> _goooName, ("mid" .=) <$> _goooMid])

-- | Detected start or end of a structural component.
--
-- /See:/ 'detectedBreak' smart constructor.
data DetectedBreak =
  DetectedBreak'
    { _dbIsPrefix :: !(Maybe Bool)
    , _dbType :: !(Maybe DetectedBreakType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DetectedBreak' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbIsPrefix'
--
-- * 'dbType'
detectedBreak
    :: DetectedBreak
detectedBreak = DetectedBreak' {_dbIsPrefix = Nothing, _dbType = Nothing}


-- | True if break prepends the element.
dbIsPrefix :: Lens' DetectedBreak (Maybe Bool)
dbIsPrefix
  = lens _dbIsPrefix (\ s a -> s{_dbIsPrefix = a})

-- | Detected break type.
dbType :: Lens' DetectedBreak (Maybe DetectedBreakType)
dbType = lens _dbType (\ s a -> s{_dbType = a})

instance FromJSON DetectedBreak where
        parseJSON
          = withObject "DetectedBreak"
              (\ o ->
                 DetectedBreak' <$>
                   (o .:? "isPrefix") <*> (o .:? "type"))

instance ToJSON DetectedBreak where
        toJSON DetectedBreak'{..}
          = object
              (catMaybes
                 [("isPrefix" .=) <$> _dbIsPrefix,
                  ("type" .=) <$> _dbType])

-- | Information about a product.
--
-- /See:/ 'result' smart constructor.
data Result =
  Result'
    { _rImage :: !(Maybe Text)
    , _rScore :: !(Maybe (Textual Double))
    , _rProduct :: !(Maybe Product)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Result' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rImage'
--
-- * 'rScore'
--
-- * 'rProduct'
result
    :: Result
result = Result' {_rImage = Nothing, _rScore = Nothing, _rProduct = Nothing}


-- | The resource name of the image from the product that is the closest
-- match to the query.
rImage :: Lens' Result (Maybe Text)
rImage = lens _rImage (\ s a -> s{_rImage = a})

-- | A confidence level on the match, ranging from 0 (no confidence) to 1
-- (full confidence).
rScore :: Lens' Result (Maybe Double)
rScore
  = lens _rScore (\ s a -> s{_rScore = a}) .
      mapping _Coerce

-- | The Product.
rProduct :: Lens' Result (Maybe Product)
rProduct = lens _rProduct (\ s a -> s{_rProduct = a})

instance FromJSON Result where
        parseJSON
          = withObject "Result"
              (\ o ->
                 Result' <$>
                   (o .:? "image") <*> (o .:? "score") <*>
                     (o .:? "product"))

instance ToJSON Result where
        toJSON Result'{..}
          = object
              (catMaybes
                 [("image" .=) <$> _rImage, ("score" .=) <$> _rScore,
                  ("product" .=) <$> _rProduct])

-- | Information about the products similar to a single product in a query
-- image.
--
-- /See:/ 'googleCloudVisionV1p1beta1ProductSearchResultsGroupedResult' smart constructor.
data GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult =
  GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult'
    { _gcvvpsrgrResults :: !(Maybe [GoogleCloudVisionV1p1beta1ProductSearchResultsResult])
    , _gcvvpsrgrBoundingPoly :: !(Maybe GoogleCloudVisionV1p1beta1BoundingPoly)
    , _gcvvpsrgrObjectAnnotations :: !(Maybe [GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvpsrgrResults'
--
-- * 'gcvvpsrgrBoundingPoly'
--
-- * 'gcvvpsrgrObjectAnnotations'
googleCloudVisionV1p1beta1ProductSearchResultsGroupedResult
    :: GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult
googleCloudVisionV1p1beta1ProductSearchResultsGroupedResult =
  GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult'
    { _gcvvpsrgrResults = Nothing
    , _gcvvpsrgrBoundingPoly = Nothing
    , _gcvvpsrgrObjectAnnotations = Nothing
    }


-- | List of results, one for each product match.
gcvvpsrgrResults :: Lens' GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult [GoogleCloudVisionV1p1beta1ProductSearchResultsResult]
gcvvpsrgrResults
  = lens _gcvvpsrgrResults
      (\ s a -> s{_gcvvpsrgrResults = a})
      . _Default
      . _Coerce

-- | The bounding polygon around the product detected in the query image.
gcvvpsrgrBoundingPoly :: Lens' GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult (Maybe GoogleCloudVisionV1p1beta1BoundingPoly)
gcvvpsrgrBoundingPoly
  = lens _gcvvpsrgrBoundingPoly
      (\ s a -> s{_gcvvpsrgrBoundingPoly = a})

-- | List of generic predictions for the object in the bounding box.
gcvvpsrgrObjectAnnotations :: Lens' GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult [GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation]
gcvvpsrgrObjectAnnotations
  = lens _gcvvpsrgrObjectAnnotations
      (\ s a -> s{_gcvvpsrgrObjectAnnotations = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult"
              (\ o ->
                 GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult'
                   <$>
                   (o .:? "results" .!= mempty) <*>
                     (o .:? "boundingPoly")
                     <*> (o .:? "objectAnnotations" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult
         where
        toJSON
          GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult'{..}
          = object
              (catMaybes
                 [("results" .=) <$> _gcvvpsrgrResults,
                  ("boundingPoly" .=) <$> _gcvvpsrgrBoundingPoly,
                  ("objectAnnotations" .=) <$>
                    _gcvvpsrgrObjectAnnotations])

-- | Set of features pertaining to the image, computed by computer vision
-- methods over safe-search verticals (for example, adult, spoof, medical,
-- violence).
--
-- /See:/ 'googleCloudVisionV1p1beta1SafeSearchAnnotation' smart constructor.
data GoogleCloudVisionV1p1beta1SafeSearchAnnotation =
  GoogleCloudVisionV1p1beta1SafeSearchAnnotation'
    { _gooSpoof :: !(Maybe GoogleCloudVisionV1p1beta1SafeSearchAnnotationSpoof)
    , _gooRacy :: !(Maybe GoogleCloudVisionV1p1beta1SafeSearchAnnotationRacy)
    , _gooAdult :: !(Maybe GoogleCloudVisionV1p1beta1SafeSearchAnnotationAdult)
    , _gooMedical :: !(Maybe GoogleCloudVisionV1p1beta1SafeSearchAnnotationMedical)
    , _gooViolence :: !(Maybe GoogleCloudVisionV1p1beta1SafeSearchAnnotationViolence)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1SafeSearchAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooSpoof'
--
-- * 'gooRacy'
--
-- * 'gooAdult'
--
-- * 'gooMedical'
--
-- * 'gooViolence'
googleCloudVisionV1p1beta1SafeSearchAnnotation
    :: GoogleCloudVisionV1p1beta1SafeSearchAnnotation
googleCloudVisionV1p1beta1SafeSearchAnnotation =
  GoogleCloudVisionV1p1beta1SafeSearchAnnotation'
    { _gooSpoof = Nothing
    , _gooRacy = Nothing
    , _gooAdult = Nothing
    , _gooMedical = Nothing
    , _gooViolence = Nothing
    }


-- | Spoof likelihood. The likelihood that an modification was made to the
-- image\'s canonical version to make it appear funny or offensive.
gooSpoof :: Lens' GoogleCloudVisionV1p1beta1SafeSearchAnnotation (Maybe GoogleCloudVisionV1p1beta1SafeSearchAnnotationSpoof)
gooSpoof = lens _gooSpoof (\ s a -> s{_gooSpoof = a})

-- | Likelihood that the request image contains racy content. Racy content
-- may include (but is not limited to) skimpy or sheer clothing,
-- strategically covered nudity, lewd or provocative poses, or close-ups of
-- sensitive body areas.
gooRacy :: Lens' GoogleCloudVisionV1p1beta1SafeSearchAnnotation (Maybe GoogleCloudVisionV1p1beta1SafeSearchAnnotationRacy)
gooRacy = lens _gooRacy (\ s a -> s{_gooRacy = a})

-- | Represents the adult content likelihood for the image. Adult content may
-- contain elements such as nudity, pornographic images or cartoons, or
-- sexual activities.
gooAdult :: Lens' GoogleCloudVisionV1p1beta1SafeSearchAnnotation (Maybe GoogleCloudVisionV1p1beta1SafeSearchAnnotationAdult)
gooAdult = lens _gooAdult (\ s a -> s{_gooAdult = a})

-- | Likelihood that this is a medical image.
gooMedical :: Lens' GoogleCloudVisionV1p1beta1SafeSearchAnnotation (Maybe GoogleCloudVisionV1p1beta1SafeSearchAnnotationMedical)
gooMedical
  = lens _gooMedical (\ s a -> s{_gooMedical = a})

-- | Likelihood that this image contains violent content.
gooViolence :: Lens' GoogleCloudVisionV1p1beta1SafeSearchAnnotation (Maybe GoogleCloudVisionV1p1beta1SafeSearchAnnotationViolence)
gooViolence
  = lens _gooViolence (\ s a -> s{_gooViolence = a})

instance FromJSON
           GoogleCloudVisionV1p1beta1SafeSearchAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p1beta1SafeSearchAnnotation"
              (\ o ->
                 GoogleCloudVisionV1p1beta1SafeSearchAnnotation' <$>
                   (o .:? "spoof") <*> (o .:? "racy") <*>
                     (o .:? "adult")
                     <*> (o .:? "medical")
                     <*> (o .:? "violence"))

instance ToJSON
           GoogleCloudVisionV1p1beta1SafeSearchAnnotation
         where
        toJSON
          GoogleCloudVisionV1p1beta1SafeSearchAnnotation'{..}
          = object
              (catMaybes
                 [("spoof" .=) <$> _gooSpoof,
                  ("racy" .=) <$> _gooRacy, ("adult" .=) <$> _gooAdult,
                  ("medical" .=) <$> _gooMedical,
                  ("violence" .=) <$> _gooViolence])

-- | Single crop hint that is used to generate a new crop when serving an
-- image.
--
-- /See:/ 'googleCloudVisionV1p4beta1CropHint' smart constructor.
data GoogleCloudVisionV1p4beta1CropHint =
  GoogleCloudVisionV1p4beta1CropHint'
    { _g1BoundingPoly :: !(Maybe GoogleCloudVisionV1p4beta1BoundingPoly)
    , _g1Confidence :: !(Maybe (Textual Double))
    , _g1ImportanceFraction :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1CropHint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'g1BoundingPoly'
--
-- * 'g1Confidence'
--
-- * 'g1ImportanceFraction'
googleCloudVisionV1p4beta1CropHint
    :: GoogleCloudVisionV1p4beta1CropHint
googleCloudVisionV1p4beta1CropHint =
  GoogleCloudVisionV1p4beta1CropHint'
    { _g1BoundingPoly = Nothing
    , _g1Confidence = Nothing
    , _g1ImportanceFraction = Nothing
    }


-- | The bounding polygon for the crop region. The coordinates of the
-- bounding box are in the original image\'s scale.
g1BoundingPoly :: Lens' GoogleCloudVisionV1p4beta1CropHint (Maybe GoogleCloudVisionV1p4beta1BoundingPoly)
g1BoundingPoly
  = lens _g1BoundingPoly
      (\ s a -> s{_g1BoundingPoly = a})

-- | Confidence of this being a salient region. Range [0, 1].
g1Confidence :: Lens' GoogleCloudVisionV1p4beta1CropHint (Maybe Double)
g1Confidence
  = lens _g1Confidence (\ s a -> s{_g1Confidence = a})
      . mapping _Coerce

-- | Fraction of importance of this salient region with respect to the
-- original image.
g1ImportanceFraction :: Lens' GoogleCloudVisionV1p4beta1CropHint (Maybe Double)
g1ImportanceFraction
  = lens _g1ImportanceFraction
      (\ s a -> s{_g1ImportanceFraction = a})
      . mapping _Coerce

instance FromJSON GoogleCloudVisionV1p4beta1CropHint
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p4beta1CropHint"
              (\ o ->
                 GoogleCloudVisionV1p4beta1CropHint' <$>
                   (o .:? "boundingPoly") <*> (o .:? "confidence") <*>
                     (o .:? "importanceFraction"))

instance ToJSON GoogleCloudVisionV1p4beta1CropHint
         where
        toJSON GoogleCloudVisionV1p4beta1CropHint'{..}
          = object
              (catMaybes
                 [("boundingPoly" .=) <$> _g1BoundingPoly,
                  ("confidence" .=) <$> _g1Confidence,
                  ("importanceFraction" .=) <$> _g1ImportanceFraction])

-- | A Product contains ReferenceImages.
--
-- /See:/ 'googleCloudVisionV1p2beta1Product' smart constructor.
data GoogleCloudVisionV1p2beta1Product =
  GoogleCloudVisionV1p2beta1Product'
    { _gcvvp1Name :: !(Maybe Text)
    , _gcvvp1DisplayName :: !(Maybe Text)
    , _gcvvp1ProductCategory :: !(Maybe Text)
    , _gcvvp1ProductLabels :: !(Maybe [GoogleCloudVisionV1p2beta1ProductKeyValue])
    , _gcvvp1Description :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1Product' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvp1Name'
--
-- * 'gcvvp1DisplayName'
--
-- * 'gcvvp1ProductCategory'
--
-- * 'gcvvp1ProductLabels'
--
-- * 'gcvvp1Description'
googleCloudVisionV1p2beta1Product
    :: GoogleCloudVisionV1p2beta1Product
googleCloudVisionV1p2beta1Product =
  GoogleCloudVisionV1p2beta1Product'
    { _gcvvp1Name = Nothing
    , _gcvvp1DisplayName = Nothing
    , _gcvvp1ProductCategory = Nothing
    , _gcvvp1ProductLabels = Nothing
    , _gcvvp1Description = Nothing
    }


-- | The resource name of the product. Format is:
-- \`projects\/PROJECT_ID\/locations\/LOC_ID\/products\/PRODUCT_ID\`. This
-- field is ignored when creating a product.
gcvvp1Name :: Lens' GoogleCloudVisionV1p2beta1Product (Maybe Text)
gcvvp1Name
  = lens _gcvvp1Name (\ s a -> s{_gcvvp1Name = a})

-- | The user-provided name for this Product. Must not be empty. Must be at
-- most 4096 characters long.
gcvvp1DisplayName :: Lens' GoogleCloudVisionV1p2beta1Product (Maybe Text)
gcvvp1DisplayName
  = lens _gcvvp1DisplayName
      (\ s a -> s{_gcvvp1DisplayName = a})

-- | Immutable. The category for the product identified by the reference
-- image. This should be one of \"homegoods-v2\", \"apparel-v2\",
-- \"toys-v2\", \"packagedgoods-v1\" or \"general-v1\". The legacy
-- categories \"homegoods\", \"apparel\", and \"toys\" are still supported,
-- but these should not be used for new products.
gcvvp1ProductCategory :: Lens' GoogleCloudVisionV1p2beta1Product (Maybe Text)
gcvvp1ProductCategory
  = lens _gcvvp1ProductCategory
      (\ s a -> s{_gcvvp1ProductCategory = a})

-- | Key-value pairs that can be attached to a product. At query time,
-- constraints can be specified based on the product_labels. Note that
-- integer values can be provided as strings, e.g. \"1199\". Only strings
-- with integer values can match a range-based restriction which is to be
-- supported soon. Multiple values can be assigned to the same key. One
-- product may have up to 500 product_labels. Notice that the total number
-- of distinct product_labels over all products in one ProductSet cannot
-- exceed 1M, otherwise the product search pipeline will refuse to work for
-- that ProductSet.
gcvvp1ProductLabels :: Lens' GoogleCloudVisionV1p2beta1Product [GoogleCloudVisionV1p2beta1ProductKeyValue]
gcvvp1ProductLabels
  = lens _gcvvp1ProductLabels
      (\ s a -> s{_gcvvp1ProductLabels = a})
      . _Default
      . _Coerce

-- | User-provided metadata to be stored with this product. Must be at most
-- 4096 characters long.
gcvvp1Description :: Lens' GoogleCloudVisionV1p2beta1Product (Maybe Text)
gcvvp1Description
  = lens _gcvvp1Description
      (\ s a -> s{_gcvvp1Description = a})

instance FromJSON GoogleCloudVisionV1p2beta1Product
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p2beta1Product"
              (\ o ->
                 GoogleCloudVisionV1p2beta1Product' <$>
                   (o .:? "name") <*> (o .:? "displayName") <*>
                     (o .:? "productCategory")
                     <*> (o .:? "productLabels" .!= mempty)
                     <*> (o .:? "description"))

instance ToJSON GoogleCloudVisionV1p2beta1Product
         where
        toJSON GoogleCloudVisionV1p2beta1Product'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _gcvvp1Name,
                  ("displayName" .=) <$> _gcvvp1DisplayName,
                  ("productCategory" .=) <$> _gcvvp1ProductCategory,
                  ("productLabels" .=) <$> _gcvvp1ProductLabels,
                  ("description" .=) <$> _gcvvp1Description])

-- | Logical element on the page.
--
-- /See:/ 'block' smart constructor.
data Block =
  Block'
    { _bProperty :: !(Maybe TextProperty)
    , _bBoundingBox :: !(Maybe BoundingPoly)
    , _bParagraphs :: !(Maybe [Paragraph])
    , _bConfidence :: !(Maybe (Textual Double))
    , _bBlockType :: !(Maybe BlockBlockType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Block' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bProperty'
--
-- * 'bBoundingBox'
--
-- * 'bParagraphs'
--
-- * 'bConfidence'
--
-- * 'bBlockType'
block
    :: Block
block =
  Block'
    { _bProperty = Nothing
    , _bBoundingBox = Nothing
    , _bParagraphs = Nothing
    , _bConfidence = Nothing
    , _bBlockType = Nothing
    }


-- | Additional information detected for the block.
bProperty :: Lens' Block (Maybe TextProperty)
bProperty
  = lens _bProperty (\ s a -> s{_bProperty = a})

-- | The bounding box for the block. The vertices are in the order of
-- top-left, top-right, bottom-right, bottom-left. When a rotation of the
-- bounding box is detected the rotation is represented as around the
-- top-left corner as defined when the text is read in the \'natural\'
-- orientation. For example: * when the text is horizontal it might look
-- like: 0----1 | | 3----2 * when it\'s rotated 180 degrees around the
-- top-left corner it becomes: 2----3 | | 1----0 and the vertex order will
-- still be (0, 1, 2, 3).
bBoundingBox :: Lens' Block (Maybe BoundingPoly)
bBoundingBox
  = lens _bBoundingBox (\ s a -> s{_bBoundingBox = a})

-- | List of paragraphs in this block (if this blocks is of type text).
bParagraphs :: Lens' Block [Paragraph]
bParagraphs
  = lens _bParagraphs (\ s a -> s{_bParagraphs = a}) .
      _Default
      . _Coerce

-- | Confidence of the OCR results on the block. Range [0, 1].
bConfidence :: Lens' Block (Maybe Double)
bConfidence
  = lens _bConfidence (\ s a -> s{_bConfidence = a}) .
      mapping _Coerce

-- | Detected block type (text, image etc) for this block.
bBlockType :: Lens' Block (Maybe BlockBlockType)
bBlockType
  = lens _bBlockType (\ s a -> s{_bBlockType = a})

instance FromJSON Block where
        parseJSON
          = withObject "Block"
              (\ o ->
                 Block' <$>
                   (o .:? "property") <*> (o .:? "boundingBox") <*>
                     (o .:? "paragraphs" .!= mempty)
                     <*> (o .:? "confidence")
                     <*> (o .:? "blockType"))

instance ToJSON Block where
        toJSON Block'{..}
          = object
              (catMaybes
                 [("property" .=) <$> _bProperty,
                  ("boundingBox" .=) <$> _bBoundingBox,
                  ("paragraphs" .=) <$> _bParagraphs,
                  ("confidence" .=) <$> _bConfidence,
                  ("blockType" .=) <$> _bBlockType])

-- | The desired output location and metadata.
--
-- /See:/ 'googleCloudVisionV1p4beta1OutputConfig' smart constructor.
data GoogleCloudVisionV1p4beta1OutputConfig =
  GoogleCloudVisionV1p4beta1OutputConfig'
    { _gcvvoccGcsDestination :: !(Maybe GoogleCloudVisionV1p4beta1GcsDestination)
    , _gcvvoccBatchSize :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1OutputConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvoccGcsDestination'
--
-- * 'gcvvoccBatchSize'
googleCloudVisionV1p4beta1OutputConfig
    :: GoogleCloudVisionV1p4beta1OutputConfig
googleCloudVisionV1p4beta1OutputConfig =
  GoogleCloudVisionV1p4beta1OutputConfig'
    {_gcvvoccGcsDestination = Nothing, _gcvvoccBatchSize = Nothing}


-- | The Google Cloud Storage location to write the output(s) to.
gcvvoccGcsDestination :: Lens' GoogleCloudVisionV1p4beta1OutputConfig (Maybe GoogleCloudVisionV1p4beta1GcsDestination)
gcvvoccGcsDestination
  = lens _gcvvoccGcsDestination
      (\ s a -> s{_gcvvoccGcsDestination = a})

-- | The max number of response protos to put into each output JSON file on
-- Google Cloud Storage. The valid range is [1, 100]. If not specified, the
-- default value is 20. For example, for one pdf file with 100 pages, 100
-- response protos will be generated. If \`batch_size\` = 20, then 5 json
-- files each containing 20 response protos will be written under the
-- prefix \`gcs_destination\`.\`uri\`. Currently, batch_size only applies
-- to GcsDestination, with potential future support for other output
-- configurations.
gcvvoccBatchSize :: Lens' GoogleCloudVisionV1p4beta1OutputConfig (Maybe Int32)
gcvvoccBatchSize
  = lens _gcvvoccBatchSize
      (\ s a -> s{_gcvvoccBatchSize = a})
      . mapping _Coerce

instance FromJSON
           GoogleCloudVisionV1p4beta1OutputConfig
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p4beta1OutputConfig"
              (\ o ->
                 GoogleCloudVisionV1p4beta1OutputConfig' <$>
                   (o .:? "gcsDestination") <*> (o .:? "batchSize"))

instance ToJSON
           GoogleCloudVisionV1p4beta1OutputConfig
         where
        toJSON GoogleCloudVisionV1p4beta1OutputConfig'{..}
          = object
              (catMaybes
                 [("gcsDestination" .=) <$> _gcvvoccGcsDestination,
                  ("batchSize" .=) <$> _gcvvoccBatchSize])

-- | An offline file annotation request.
--
-- /See:/ 'googleCloudVisionV1p2beta1AsyncAnnotateFileRequest' smart constructor.
data GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest =
  GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest'
    { _gInputConfig :: !(Maybe GoogleCloudVisionV1p2beta1InputConfig)
    , _gFeatures :: !(Maybe [GoogleCloudVisionV1p2beta1Feature])
    , _gOutputConfig :: !(Maybe GoogleCloudVisionV1p2beta1OutputConfig)
    , _gImageContext :: !(Maybe GoogleCloudVisionV1p2beta1ImageContext)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gInputConfig'
--
-- * 'gFeatures'
--
-- * 'gOutputConfig'
--
-- * 'gImageContext'
googleCloudVisionV1p2beta1AsyncAnnotateFileRequest
    :: GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest
googleCloudVisionV1p2beta1AsyncAnnotateFileRequest =
  GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest'
    { _gInputConfig = Nothing
    , _gFeatures = Nothing
    , _gOutputConfig = Nothing
    , _gImageContext = Nothing
    }


-- | Required. Information about the input file.
gInputConfig :: Lens' GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest (Maybe GoogleCloudVisionV1p2beta1InputConfig)
gInputConfig
  = lens _gInputConfig (\ s a -> s{_gInputConfig = a})

-- | Required. Requested features.
gFeatures :: Lens' GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest [GoogleCloudVisionV1p2beta1Feature]
gFeatures
  = lens _gFeatures (\ s a -> s{_gFeatures = a}) .
      _Default
      . _Coerce

-- | Required. The desired output location and metadata (e.g. format).
gOutputConfig :: Lens' GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest (Maybe GoogleCloudVisionV1p2beta1OutputConfig)
gOutputConfig
  = lens _gOutputConfig
      (\ s a -> s{_gOutputConfig = a})

-- | Additional context that may accompany the image(s) in the file.
gImageContext :: Lens' GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest (Maybe GoogleCloudVisionV1p2beta1ImageContext)
gImageContext
  = lens _gImageContext
      (\ s a -> s{_gImageContext = a})

instance FromJSON
           GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest"
              (\ o ->
                 GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest'
                   <$>
                   (o .:? "inputConfig") <*>
                     (o .:? "features" .!= mempty)
                     <*> (o .:? "outputConfig")
                     <*> (o .:? "imageContext"))

instance ToJSON
           GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest
         where
        toJSON
          GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest'{..}
          = object
              (catMaybes
                 [("inputConfig" .=) <$> _gInputConfig,
                  ("features" .=) <$> _gFeatures,
                  ("outputConfig" .=) <$> _gOutputConfig,
                  ("imageContext" .=) <$> _gImageContext])

-- | Set of dominant colors and their corresponding scores.
--
-- /See:/ 'googleCloudVisionV1p2beta1DominantColorsAnnotation' smart constructor.
newtype GoogleCloudVisionV1p2beta1DominantColorsAnnotation =
  GoogleCloudVisionV1p2beta1DominantColorsAnnotation'
    { _gooColors :: Maybe [GoogleCloudVisionV1p2beta1ColorInfo]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1DominantColorsAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooColors'
googleCloudVisionV1p2beta1DominantColorsAnnotation
    :: GoogleCloudVisionV1p2beta1DominantColorsAnnotation
googleCloudVisionV1p2beta1DominantColorsAnnotation =
  GoogleCloudVisionV1p2beta1DominantColorsAnnotation' {_gooColors = Nothing}


-- | RGB color values with their score and pixel fraction.
gooColors :: Lens' GoogleCloudVisionV1p2beta1DominantColorsAnnotation [GoogleCloudVisionV1p2beta1ColorInfo]
gooColors
  = lens _gooColors (\ s a -> s{_gooColors = a}) .
      _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p2beta1DominantColorsAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p2beta1DominantColorsAnnotation"
              (\ o ->
                 GoogleCloudVisionV1p2beta1DominantColorsAnnotation'
                   <$> (o .:? "colors" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p2beta1DominantColorsAnnotation
         where
        toJSON
          GoogleCloudVisionV1p2beta1DominantColorsAnnotation'{..}
          = object (catMaybes [("colors" .=) <$> _gooColors])

-- | TextAnnotation contains a structured representation of OCR extracted
-- text. The hierarchy of an OCR extracted text structure is like this:
-- TextAnnotation -> Page -> Block -> Paragraph -> Word -> Symbol Each
-- structural component, starting from Page, may further have their own
-- properties. Properties describe detected languages, breaks etc.. Please
-- refer to the TextAnnotation.TextProperty message definition below for
-- more detail.
--
-- /See:/ 'googleCloudVisionV1p3beta1TextAnnotation' smart constructor.
data GoogleCloudVisionV1p3beta1TextAnnotation =
  GoogleCloudVisionV1p3beta1TextAnnotation'
    { _gText :: !(Maybe Text)
    , _gPages :: !(Maybe [GoogleCloudVisionV1p3beta1Page])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1TextAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gText'
--
-- * 'gPages'
googleCloudVisionV1p3beta1TextAnnotation
    :: GoogleCloudVisionV1p3beta1TextAnnotation
googleCloudVisionV1p3beta1TextAnnotation =
  GoogleCloudVisionV1p3beta1TextAnnotation'
    {_gText = Nothing, _gPages = Nothing}


-- | UTF-8 text detected on the pages.
gText :: Lens' GoogleCloudVisionV1p3beta1TextAnnotation (Maybe Text)
gText = lens _gText (\ s a -> s{_gText = a})

-- | List of pages detected by OCR.
gPages :: Lens' GoogleCloudVisionV1p3beta1TextAnnotation [GoogleCloudVisionV1p3beta1Page]
gPages
  = lens _gPages (\ s a -> s{_gPages = a}) . _Default .
      _Coerce

instance FromJSON
           GoogleCloudVisionV1p3beta1TextAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p3beta1TextAnnotation"
              (\ o ->
                 GoogleCloudVisionV1p3beta1TextAnnotation' <$>
                   (o .:? "text") <*> (o .:? "pages" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p3beta1TextAnnotation
         where
        toJSON GoogleCloudVisionV1p3beta1TextAnnotation'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _gText, ("pages" .=) <$> _gPages])

-- | The response for a single offline file annotation request.
--
-- /See:/ 'asyncAnnotateFileResponse' smart constructor.
newtype AsyncAnnotateFileResponse =
  AsyncAnnotateFileResponse'
    { _aafrOutputConfig :: Maybe OutputConfig
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AsyncAnnotateFileResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aafrOutputConfig'
asyncAnnotateFileResponse
    :: AsyncAnnotateFileResponse
asyncAnnotateFileResponse =
  AsyncAnnotateFileResponse' {_aafrOutputConfig = Nothing}


-- | The output location and metadata from AsyncAnnotateFileRequest.
aafrOutputConfig :: Lens' AsyncAnnotateFileResponse (Maybe OutputConfig)
aafrOutputConfig
  = lens _aafrOutputConfig
      (\ s a -> s{_aafrOutputConfig = a})

instance FromJSON AsyncAnnotateFileResponse where
        parseJSON
          = withObject "AsyncAnnotateFileResponse"
              (\ o ->
                 AsyncAnnotateFileResponse' <$>
                   (o .:? "outputConfig"))

instance ToJSON AsyncAnnotateFileResponse where
        toJSON AsyncAnnotateFileResponse'{..}
          = object
              (catMaybes
                 [("outputConfig" .=) <$> _aafrOutputConfig])

-- | The desired input location and metadata.
--
-- /See:/ 'inputConfig' smart constructor.
data InputConfig =
  InputConfig'
    { _icGcsSource :: !(Maybe GcsSource)
    , _icContent :: !(Maybe Bytes)
    , _icMimeType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InputConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icGcsSource'
--
-- * 'icContent'
--
-- * 'icMimeType'
inputConfig
    :: InputConfig
inputConfig =
  InputConfig'
    {_icGcsSource = Nothing, _icContent = Nothing, _icMimeType = Nothing}


-- | The Google Cloud Storage location to read the input from.
icGcsSource :: Lens' InputConfig (Maybe GcsSource)
icGcsSource
  = lens _icGcsSource (\ s a -> s{_icGcsSource = a})

-- | File content, represented as a stream of bytes. Note: As with all
-- \`bytes\` fields, protobuffers use a pure binary representation, whereas
-- JSON representations use base64. Currently, this field only works for
-- BatchAnnotateFiles requests. It does not work for
-- AsyncBatchAnnotateFiles requests.
icContent :: Lens' InputConfig (Maybe ByteString)
icContent
  = lens _icContent (\ s a -> s{_icContent = a}) .
      mapping _Bytes

-- | The type of the file. Currently only \"application\/pdf\",
-- \"image\/tiff\" and \"image\/gif\" are supported. Wildcards are not
-- supported.
icMimeType :: Lens' InputConfig (Maybe Text)
icMimeType
  = lens _icMimeType (\ s a -> s{_icMimeType = a})

instance FromJSON InputConfig where
        parseJSON
          = withObject "InputConfig"
              (\ o ->
                 InputConfig' <$>
                   (o .:? "gcsSource") <*> (o .:? "content") <*>
                     (o .:? "mimeType"))

instance ToJSON InputConfig where
        toJSON InputConfig'{..}
          = object
              (catMaybes
                 [("gcsSource" .=) <$> _icGcsSource,
                  ("content" .=) <$> _icContent,
                  ("mimeType" .=) <$> _icMimeType])

-- | Set of detected entity features.
--
-- /See:/ 'entityAnnotation' smart constructor.
data EntityAnnotation =
  EntityAnnotation'
    { _eaScore :: !(Maybe (Textual Double))
    , _eaTopicality :: !(Maybe (Textual Double))
    , _eaLocale :: !(Maybe Text)
    , _eaBoundingPoly :: !(Maybe BoundingPoly)
    , _eaConfidence :: !(Maybe (Textual Double))
    , _eaMid :: !(Maybe Text)
    , _eaLocations :: !(Maybe [LocationInfo])
    , _eaDescription :: !(Maybe Text)
    , _eaProperties :: !(Maybe [Property])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EntityAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eaScore'
--
-- * 'eaTopicality'
--
-- * 'eaLocale'
--
-- * 'eaBoundingPoly'
--
-- * 'eaConfidence'
--
-- * 'eaMid'
--
-- * 'eaLocations'
--
-- * 'eaDescription'
--
-- * 'eaProperties'
entityAnnotation
    :: EntityAnnotation
entityAnnotation =
  EntityAnnotation'
    { _eaScore = Nothing
    , _eaTopicality = Nothing
    , _eaLocale = Nothing
    , _eaBoundingPoly = Nothing
    , _eaConfidence = Nothing
    , _eaMid = Nothing
    , _eaLocations = Nothing
    , _eaDescription = Nothing
    , _eaProperties = Nothing
    }


-- | Overall score of the result. Range [0, 1].
eaScore :: Lens' EntityAnnotation (Maybe Double)
eaScore
  = lens _eaScore (\ s a -> s{_eaScore = a}) .
      mapping _Coerce

-- | The relevancy of the ICA (Image Content Annotation) label to the image.
-- For example, the relevancy of \"tower\" is likely higher to an image
-- containing the detected \"Eiffel Tower\" than to an image containing a
-- detected distant towering building, even though the confidence that
-- there is a tower in each image may be the same. Range [0, 1].
eaTopicality :: Lens' EntityAnnotation (Maybe Double)
eaTopicality
  = lens _eaTopicality (\ s a -> s{_eaTopicality = a})
      . mapping _Coerce

-- | The language code for the locale in which the entity textual
-- \`description\` is expressed.
eaLocale :: Lens' EntityAnnotation (Maybe Text)
eaLocale = lens _eaLocale (\ s a -> s{_eaLocale = a})

-- | Image region to which this entity belongs. Not produced for
-- \`LABEL_DETECTION\` features.
eaBoundingPoly :: Lens' EntityAnnotation (Maybe BoundingPoly)
eaBoundingPoly
  = lens _eaBoundingPoly
      (\ s a -> s{_eaBoundingPoly = a})

-- | **Deprecated. Use \`score\` instead.** The accuracy of the entity
-- detection in an image. For example, for an image in which the \"Eiffel
-- Tower\" entity is detected, this field represents the confidence that
-- there is a tower in the query image. Range [0, 1].
eaConfidence :: Lens' EntityAnnotation (Maybe Double)
eaConfidence
  = lens _eaConfidence (\ s a -> s{_eaConfidence = a})
      . mapping _Coerce

-- | Opaque entity ID. Some IDs may be available in [Google Knowledge Graph
-- Search API](https:\/\/developers.google.com\/knowledge-graph\/).
eaMid :: Lens' EntityAnnotation (Maybe Text)
eaMid = lens _eaMid (\ s a -> s{_eaMid = a})

-- | The location information for the detected entity. Multiple
-- \`LocationInfo\` elements can be present because one location may
-- indicate the location of the scene in the image, and another location
-- may indicate the location of the place where the image was taken.
-- Location information is usually present for landmarks.
eaLocations :: Lens' EntityAnnotation [LocationInfo]
eaLocations
  = lens _eaLocations (\ s a -> s{_eaLocations = a}) .
      _Default
      . _Coerce

-- | Entity textual description, expressed in its \`locale\` language.
eaDescription :: Lens' EntityAnnotation (Maybe Text)
eaDescription
  = lens _eaDescription
      (\ s a -> s{_eaDescription = a})

-- | Some entities may have optional user-supplied \`Property\` (name\/value)
-- fields, such a score or string that qualifies the entity.
eaProperties :: Lens' EntityAnnotation [Property]
eaProperties
  = lens _eaProperties (\ s a -> s{_eaProperties = a})
      . _Default
      . _Coerce

instance FromJSON EntityAnnotation where
        parseJSON
          = withObject "EntityAnnotation"
              (\ o ->
                 EntityAnnotation' <$>
                   (o .:? "score") <*> (o .:? "topicality") <*>
                     (o .:? "locale")
                     <*> (o .:? "boundingPoly")
                     <*> (o .:? "confidence")
                     <*> (o .:? "mid")
                     <*> (o .:? "locations" .!= mempty)
                     <*> (o .:? "description")
                     <*> (o .:? "properties" .!= mempty))

instance ToJSON EntityAnnotation where
        toJSON EntityAnnotation'{..}
          = object
              (catMaybes
                 [("score" .=) <$> _eaScore,
                  ("topicality" .=) <$> _eaTopicality,
                  ("locale" .=) <$> _eaLocale,
                  ("boundingPoly" .=) <$> _eaBoundingPoly,
                  ("confidence" .=) <$> _eaConfidence,
                  ("mid" .=) <$> _eaMid,
                  ("locations" .=) <$> _eaLocations,
                  ("description" .=) <$> _eaDescription,
                  ("properties" .=) <$> _eaProperties])

-- | Parameters for text detections. This is used to control TEXT_DETECTION
-- and DOCUMENT_TEXT_DETECTION features.
--
-- /See:/ 'googleCloudVisionV1p2beta1TextDetectionParams' smart constructor.
newtype GoogleCloudVisionV1p2beta1TextDetectionParams =
  GoogleCloudVisionV1p2beta1TextDetectionParams'
    { _gcvvtdpEnableTextDetectionConfidenceScore :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1TextDetectionParams' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvtdpEnableTextDetectionConfidenceScore'
googleCloudVisionV1p2beta1TextDetectionParams
    :: GoogleCloudVisionV1p2beta1TextDetectionParams
googleCloudVisionV1p2beta1TextDetectionParams =
  GoogleCloudVisionV1p2beta1TextDetectionParams'
    {_gcvvtdpEnableTextDetectionConfidenceScore = Nothing}


-- | By default, Cloud Vision API only includes confidence score for
-- DOCUMENT_TEXT_DETECTION result. Set the flag to true to include
-- confidence score for TEXT_DETECTION as well.
gcvvtdpEnableTextDetectionConfidenceScore :: Lens' GoogleCloudVisionV1p2beta1TextDetectionParams (Maybe Bool)
gcvvtdpEnableTextDetectionConfidenceScore
  = lens _gcvvtdpEnableTextDetectionConfidenceScore
      (\ s a ->
         s{_gcvvtdpEnableTextDetectionConfidenceScore = a})

instance FromJSON
           GoogleCloudVisionV1p2beta1TextDetectionParams
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p2beta1TextDetectionParams"
              (\ o ->
                 GoogleCloudVisionV1p2beta1TextDetectionParams' <$>
                   (o .:? "enableTextDetectionConfidenceScore"))

instance ToJSON
           GoogleCloudVisionV1p2beta1TextDetectionParams
         where
        toJSON
          GoogleCloudVisionV1p2beta1TextDetectionParams'{..}
          = object
              (catMaybes
                 [("enableTextDetectionConfidenceScore" .=) <$>
                    _gcvvtdpEnableTextDetectionConfidenceScore])

-- | Information about the products similar to a single product in a query
-- image.
--
-- /See:/ 'googleCloudVisionV1p4beta1ProductSearchResultsGroupedResult' smart constructor.
data GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult =
  GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult'
    { _gcvvpsrgrcResults :: !(Maybe [GoogleCloudVisionV1p4beta1ProductSearchResultsResult])
    , _gcvvpsrgrcBoundingPoly :: !(Maybe GoogleCloudVisionV1p4beta1BoundingPoly)
    , _gcvvpsrgrcObjectAnnotations :: !(Maybe [GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvpsrgrcResults'
--
-- * 'gcvvpsrgrcBoundingPoly'
--
-- * 'gcvvpsrgrcObjectAnnotations'
googleCloudVisionV1p4beta1ProductSearchResultsGroupedResult
    :: GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult
googleCloudVisionV1p4beta1ProductSearchResultsGroupedResult =
  GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult'
    { _gcvvpsrgrcResults = Nothing
    , _gcvvpsrgrcBoundingPoly = Nothing
    , _gcvvpsrgrcObjectAnnotations = Nothing
    }


-- | List of results, one for each product match.
gcvvpsrgrcResults :: Lens' GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult [GoogleCloudVisionV1p4beta1ProductSearchResultsResult]
gcvvpsrgrcResults
  = lens _gcvvpsrgrcResults
      (\ s a -> s{_gcvvpsrgrcResults = a})
      . _Default
      . _Coerce

-- | The bounding polygon around the product detected in the query image.
gcvvpsrgrcBoundingPoly :: Lens' GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult (Maybe GoogleCloudVisionV1p4beta1BoundingPoly)
gcvvpsrgrcBoundingPoly
  = lens _gcvvpsrgrcBoundingPoly
      (\ s a -> s{_gcvvpsrgrcBoundingPoly = a})

-- | List of generic predictions for the object in the bounding box.
gcvvpsrgrcObjectAnnotations :: Lens' GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult [GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation]
gcvvpsrgrcObjectAnnotations
  = lens _gcvvpsrgrcObjectAnnotations
      (\ s a -> s{_gcvvpsrgrcObjectAnnotations = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult"
              (\ o ->
                 GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult'
                   <$>
                   (o .:? "results" .!= mempty) <*>
                     (o .:? "boundingPoly")
                     <*> (o .:? "objectAnnotations" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult
         where
        toJSON
          GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult'{..}
          = object
              (catMaybes
                 [("results" .=) <$> _gcvvpsrgrcResults,
                  ("boundingPoly" .=) <$> _gcvvpsrgrcBoundingPoly,
                  ("objectAnnotations" .=) <$>
                    _gcvvpsrgrcObjectAnnotations])

-- | Additional information detected on the structural component.
--
-- /See:/ 'googleCloudVisionV1p4beta1TextAnnotationTextProperty' smart constructor.
data GoogleCloudVisionV1p4beta1TextAnnotationTextProperty =
  GoogleCloudVisionV1p4beta1TextAnnotationTextProperty'
    { _gDetectedLanguages :: !(Maybe [GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage])
    , _gDetectedBreak :: !(Maybe GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1TextAnnotationTextProperty' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gDetectedLanguages'
--
-- * 'gDetectedBreak'
googleCloudVisionV1p4beta1TextAnnotationTextProperty
    :: GoogleCloudVisionV1p4beta1TextAnnotationTextProperty
googleCloudVisionV1p4beta1TextAnnotationTextProperty =
  GoogleCloudVisionV1p4beta1TextAnnotationTextProperty'
    {_gDetectedLanguages = Nothing, _gDetectedBreak = Nothing}


-- | A list of detected languages together with confidence.
gDetectedLanguages :: Lens' GoogleCloudVisionV1p4beta1TextAnnotationTextProperty [GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage]
gDetectedLanguages
  = lens _gDetectedLanguages
      (\ s a -> s{_gDetectedLanguages = a})
      . _Default
      . _Coerce

-- | Detected start or end of a text segment.
gDetectedBreak :: Lens' GoogleCloudVisionV1p4beta1TextAnnotationTextProperty (Maybe GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak)
gDetectedBreak
  = lens _gDetectedBreak
      (\ s a -> s{_gDetectedBreak = a})

instance FromJSON
           GoogleCloudVisionV1p4beta1TextAnnotationTextProperty
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p4beta1TextAnnotationTextProperty"
              (\ o ->
                 GoogleCloudVisionV1p4beta1TextAnnotationTextProperty'
                   <$>
                   (o .:? "detectedLanguages" .!= mempty) <*>
                     (o .:? "detectedBreak"))

instance ToJSON
           GoogleCloudVisionV1p4beta1TextAnnotationTextProperty
         where
        toJSON
          GoogleCloudVisionV1p4beta1TextAnnotationTextProperty'{..}
          = object
              (catMaybes
                 [("detectedLanguages" .=) <$> _gDetectedLanguages,
                  ("detectedBreak" .=) <$> _gDetectedBreak])

-- | A \`ReferenceImage\` represents a product image and its associated
-- metadata, such as bounding boxes.
--
-- /See:/ 'referenceImage' smart constructor.
data ReferenceImage =
  ReferenceImage'
    { _riURI :: !(Maybe Text)
    , _riName :: !(Maybe Text)
    , _riBoundingPolys :: !(Maybe [BoundingPoly])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReferenceImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riURI'
--
-- * 'riName'
--
-- * 'riBoundingPolys'
referenceImage
    :: ReferenceImage
referenceImage =
  ReferenceImage'
    {_riURI = Nothing, _riName = Nothing, _riBoundingPolys = Nothing}


-- | Required. The Google Cloud Storage URI of the reference image. The URI
-- must start with \`gs:\/\/\`.
riURI :: Lens' ReferenceImage (Maybe Text)
riURI = lens _riURI (\ s a -> s{_riURI = a})

-- | The resource name of the reference image. Format is:
-- \`projects\/PROJECT_ID\/locations\/LOC_ID\/products\/PRODUCT_ID\/referenceImages\/IMAGE_ID\`.
-- This field is ignored when creating a reference image.
riName :: Lens' ReferenceImage (Maybe Text)
riName = lens _riName (\ s a -> s{_riName = a})

-- | Optional. Bounding polygons around the areas of interest in the
-- reference image. If this field is empty, the system will try to detect
-- regions of interest. At most 10 bounding polygons will be used. The
-- provided shape is converted into a non-rotated rectangle. Once
-- converted, the small edge of the rectangle must be greater than or equal
-- to 300 pixels. The aspect ratio must be 1:4 or less (i.e. 1:3 is ok; 1:5
-- is not).
riBoundingPolys :: Lens' ReferenceImage [BoundingPoly]
riBoundingPolys
  = lens _riBoundingPolys
      (\ s a -> s{_riBoundingPolys = a})
      . _Default
      . _Coerce

instance FromJSON ReferenceImage where
        parseJSON
          = withObject "ReferenceImage"
              (\ o ->
                 ReferenceImage' <$>
                   (o .:? "uri") <*> (o .:? "name") <*>
                     (o .:? "boundingPolys" .!= mempty))

instance ToJSON ReferenceImage where
        toJSON ReferenceImage'{..}
          = object
              (catMaybes
                 [("uri" .=) <$> _riURI, ("name" .=) <$> _riName,
                  ("boundingPolys" .=) <$> _riBoundingPolys])

-- | A vertex represents a 2D point in the image. NOTE: the vertex
-- coordinates are in the same scale as the original image.
--
-- /See:/ 'googleCloudVisionV1p4beta1Vertex' smart constructor.
data GoogleCloudVisionV1p4beta1Vertex =
  GoogleCloudVisionV1p4beta1Vertex'
    { _gcvvvcX :: !(Maybe (Textual Int32))
    , _gcvvvcY :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1Vertex' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvvcX'
--
-- * 'gcvvvcY'
googleCloudVisionV1p4beta1Vertex
    :: GoogleCloudVisionV1p4beta1Vertex
googleCloudVisionV1p4beta1Vertex =
  GoogleCloudVisionV1p4beta1Vertex' {_gcvvvcX = Nothing, _gcvvvcY = Nothing}


-- | X coordinate.
gcvvvcX :: Lens' GoogleCloudVisionV1p4beta1Vertex (Maybe Int32)
gcvvvcX
  = lens _gcvvvcX (\ s a -> s{_gcvvvcX = a}) .
      mapping _Coerce

-- | Y coordinate.
gcvvvcY :: Lens' GoogleCloudVisionV1p4beta1Vertex (Maybe Int32)
gcvvvcY
  = lens _gcvvvcY (\ s a -> s{_gcvvvcY = a}) .
      mapping _Coerce

instance FromJSON GoogleCloudVisionV1p4beta1Vertex
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p4beta1Vertex"
              (\ o ->
                 GoogleCloudVisionV1p4beta1Vertex' <$>
                   (o .:? "x") <*> (o .:? "y"))

instance ToJSON GoogleCloudVisionV1p4beta1Vertex
         where
        toJSON GoogleCloudVisionV1p4beta1Vertex'{..}
          = object
              (catMaybes
                 [("x" .=) <$> _gcvvvcX, ("y" .=) <$> _gcvvvcY])

-- | Metadata for the batch operations such as the current state. This is
-- included in the \`metadata\` field of the \`Operation\` returned by the
-- \`GetOperation\` call of the \`google::longrunning::Operations\`
-- service.
--
-- /See:/ 'batchOperationMetadata' smart constructor.
data BatchOperationMetadata =
  BatchOperationMetadata'
    { _bomState :: !(Maybe BatchOperationMetadataState)
    , _bomEndTime :: !(Maybe DateTime')
    , _bomSubmitTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchOperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bomState'
--
-- * 'bomEndTime'
--
-- * 'bomSubmitTime'
batchOperationMetadata
    :: BatchOperationMetadata
batchOperationMetadata =
  BatchOperationMetadata'
    {_bomState = Nothing, _bomEndTime = Nothing, _bomSubmitTime = Nothing}


-- | The current state of the batch operation.
bomState :: Lens' BatchOperationMetadata (Maybe BatchOperationMetadataState)
bomState = lens _bomState (\ s a -> s{_bomState = a})

-- | The time when the batch request is finished and
-- google.longrunning.Operation.done is set to true.
bomEndTime :: Lens' BatchOperationMetadata (Maybe UTCTime)
bomEndTime
  = lens _bomEndTime (\ s a -> s{_bomEndTime = a}) .
      mapping _DateTime

-- | The time when the batch request was submitted to the server.
bomSubmitTime :: Lens' BatchOperationMetadata (Maybe UTCTime)
bomSubmitTime
  = lens _bomSubmitTime
      (\ s a -> s{_bomSubmitTime = a})
      . mapping _DateTime

instance FromJSON BatchOperationMetadata where
        parseJSON
          = withObject "BatchOperationMetadata"
              (\ o ->
                 BatchOperationMetadata' <$>
                   (o .:? "state") <*> (o .:? "endTime") <*>
                     (o .:? "submitTime"))

instance ToJSON BatchOperationMetadata where
        toJSON BatchOperationMetadata'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _bomState,
                  ("endTime" .=) <$> _bomEndTime,
                  ("submitTime" .=) <$> _bomSubmitTime])

-- | Relevant information for the image from the Internet.
--
-- /See:/ 'googleCloudVisionV1p3beta1WebDetection' smart constructor.
data GoogleCloudVisionV1p3beta1WebDetection =
  GoogleCloudVisionV1p3beta1WebDetection'
    { _gcvvwdcVisuallySimilarImages :: !(Maybe [GoogleCloudVisionV1p3beta1WebDetectionWebImage])
    , _gcvvwdcBestGuessLabels :: !(Maybe [GoogleCloudVisionV1p3beta1WebDetectionWebLabel])
    , _gcvvwdcPagesWithMatchingImages :: !(Maybe [GoogleCloudVisionV1p3beta1WebDetectionWebPage])
    , _gcvvwdcPartialMatchingImages :: !(Maybe [GoogleCloudVisionV1p3beta1WebDetectionWebImage])
    , _gcvvwdcFullMatchingImages :: !(Maybe [GoogleCloudVisionV1p3beta1WebDetectionWebImage])
    , _gcvvwdcWebEntities :: !(Maybe [GoogleCloudVisionV1p3beta1WebDetectionWebEntity])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1WebDetection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvwdcVisuallySimilarImages'
--
-- * 'gcvvwdcBestGuessLabels'
--
-- * 'gcvvwdcPagesWithMatchingImages'
--
-- * 'gcvvwdcPartialMatchingImages'
--
-- * 'gcvvwdcFullMatchingImages'
--
-- * 'gcvvwdcWebEntities'
googleCloudVisionV1p3beta1WebDetection
    :: GoogleCloudVisionV1p3beta1WebDetection
googleCloudVisionV1p3beta1WebDetection =
  GoogleCloudVisionV1p3beta1WebDetection'
    { _gcvvwdcVisuallySimilarImages = Nothing
    , _gcvvwdcBestGuessLabels = Nothing
    , _gcvvwdcPagesWithMatchingImages = Nothing
    , _gcvvwdcPartialMatchingImages = Nothing
    , _gcvvwdcFullMatchingImages = Nothing
    , _gcvvwdcWebEntities = Nothing
    }


-- | The visually similar image results.
gcvvwdcVisuallySimilarImages :: Lens' GoogleCloudVisionV1p3beta1WebDetection [GoogleCloudVisionV1p3beta1WebDetectionWebImage]
gcvvwdcVisuallySimilarImages
  = lens _gcvvwdcVisuallySimilarImages
      (\ s a -> s{_gcvvwdcVisuallySimilarImages = a})
      . _Default
      . _Coerce

-- | The service\'s best guess as to the topic of the request image. Inferred
-- from similar images on the open web.
gcvvwdcBestGuessLabels :: Lens' GoogleCloudVisionV1p3beta1WebDetection [GoogleCloudVisionV1p3beta1WebDetectionWebLabel]
gcvvwdcBestGuessLabels
  = lens _gcvvwdcBestGuessLabels
      (\ s a -> s{_gcvvwdcBestGuessLabels = a})
      . _Default
      . _Coerce

-- | Web pages containing the matching images from the Internet.
gcvvwdcPagesWithMatchingImages :: Lens' GoogleCloudVisionV1p3beta1WebDetection [GoogleCloudVisionV1p3beta1WebDetectionWebPage]
gcvvwdcPagesWithMatchingImages
  = lens _gcvvwdcPagesWithMatchingImages
      (\ s a -> s{_gcvvwdcPagesWithMatchingImages = a})
      . _Default
      . _Coerce

-- | Partial matching images from the Internet. Those images are similar
-- enough to share some key-point features. For example an original image
-- will likely have partial matching for its crops.
gcvvwdcPartialMatchingImages :: Lens' GoogleCloudVisionV1p3beta1WebDetection [GoogleCloudVisionV1p3beta1WebDetectionWebImage]
gcvvwdcPartialMatchingImages
  = lens _gcvvwdcPartialMatchingImages
      (\ s a -> s{_gcvvwdcPartialMatchingImages = a})
      . _Default
      . _Coerce

-- | Fully matching images from the Internet. Can include resized copies of
-- the query image.
gcvvwdcFullMatchingImages :: Lens' GoogleCloudVisionV1p3beta1WebDetection [GoogleCloudVisionV1p3beta1WebDetectionWebImage]
gcvvwdcFullMatchingImages
  = lens _gcvvwdcFullMatchingImages
      (\ s a -> s{_gcvvwdcFullMatchingImages = a})
      . _Default
      . _Coerce

-- | Deduced entities from similar images on the Internet.
gcvvwdcWebEntities :: Lens' GoogleCloudVisionV1p3beta1WebDetection [GoogleCloudVisionV1p3beta1WebDetectionWebEntity]
gcvvwdcWebEntities
  = lens _gcvvwdcWebEntities
      (\ s a -> s{_gcvvwdcWebEntities = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p3beta1WebDetection
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p3beta1WebDetection"
              (\ o ->
                 GoogleCloudVisionV1p3beta1WebDetection' <$>
                   (o .:? "visuallySimilarImages" .!= mempty) <*>
                     (o .:? "bestGuessLabels" .!= mempty)
                     <*> (o .:? "pagesWithMatchingImages" .!= mempty)
                     <*> (o .:? "partialMatchingImages" .!= mempty)
                     <*> (o .:? "fullMatchingImages" .!= mempty)
                     <*> (o .:? "webEntities" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p3beta1WebDetection
         where
        toJSON GoogleCloudVisionV1p3beta1WebDetection'{..}
          = object
              (catMaybes
                 [("visuallySimilarImages" .=) <$>
                    _gcvvwdcVisuallySimilarImages,
                  ("bestGuessLabels" .=) <$> _gcvvwdcBestGuessLabels,
                  ("pagesWithMatchingImages" .=) <$>
                    _gcvvwdcPagesWithMatchingImages,
                  ("partialMatchingImages" .=) <$>
                    _gcvvwdcPartialMatchingImages,
                  ("fullMatchingImages" .=) <$>
                    _gcvvwdcFullMatchingImages,
                  ("webEntities" .=) <$> _gcvvwdcWebEntities])

-- | Detected language for a structural component.
--
-- /See:/ 'detectedLanguage' smart constructor.
data DetectedLanguage =
  DetectedLanguage'
    { _dlLanguageCode :: !(Maybe Text)
    , _dlConfidence :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DetectedLanguage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlLanguageCode'
--
-- * 'dlConfidence'
detectedLanguage
    :: DetectedLanguage
detectedLanguage =
  DetectedLanguage' {_dlLanguageCode = Nothing, _dlConfidence = Nothing}


-- | The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more
-- information, see
-- http:\/\/www.unicode.org\/reports\/tr35\/#Unicode_locale_identifier.
dlLanguageCode :: Lens' DetectedLanguage (Maybe Text)
dlLanguageCode
  = lens _dlLanguageCode
      (\ s a -> s{_dlLanguageCode = a})

-- | Confidence of detected language. Range [0, 1].
dlConfidence :: Lens' DetectedLanguage (Maybe Double)
dlConfidence
  = lens _dlConfidence (\ s a -> s{_dlConfidence = a})
      . mapping _Coerce

instance FromJSON DetectedLanguage where
        parseJSON
          = withObject "DetectedLanguage"
              (\ o ->
                 DetectedLanguage' <$>
                   (o .:? "languageCode") <*> (o .:? "confidence"))

instance ToJSON DetectedLanguage where
        toJSON DetectedLanguage'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _dlLanguageCode,
                  ("confidence" .=) <$> _dlConfidence])

-- | Response to a single file annotation request. A file may contain one or
-- more images, which individually have their own responses.
--
-- /See:/ 'googleCloudVisionV1p3beta1AnnotateFileResponse' smart constructor.
data GoogleCloudVisionV1p3beta1AnnotateFileResponse =
  GoogleCloudVisionV1p3beta1AnnotateFileResponse'
    { _ggResponses :: !(Maybe [GoogleCloudVisionV1p3beta1AnnotateImageResponse])
    , _ggError :: !(Maybe Status)
    , _ggInputConfig :: !(Maybe GoogleCloudVisionV1p3beta1InputConfig)
    , _ggTotalPages :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1AnnotateFileResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggResponses'
--
-- * 'ggError'
--
-- * 'ggInputConfig'
--
-- * 'ggTotalPages'
googleCloudVisionV1p3beta1AnnotateFileResponse
    :: GoogleCloudVisionV1p3beta1AnnotateFileResponse
googleCloudVisionV1p3beta1AnnotateFileResponse =
  GoogleCloudVisionV1p3beta1AnnotateFileResponse'
    { _ggResponses = Nothing
    , _ggError = Nothing
    , _ggInputConfig = Nothing
    , _ggTotalPages = Nothing
    }


-- | Individual responses to images found within the file. This field will be
-- empty if the \`error\` field is set.
ggResponses :: Lens' GoogleCloudVisionV1p3beta1AnnotateFileResponse [GoogleCloudVisionV1p3beta1AnnotateImageResponse]
ggResponses
  = lens _ggResponses (\ s a -> s{_ggResponses = a}) .
      _Default
      . _Coerce

-- | If set, represents the error message for the failed request. The
-- \`responses\` field will not be set in this case.
ggError :: Lens' GoogleCloudVisionV1p3beta1AnnotateFileResponse (Maybe Status)
ggError = lens _ggError (\ s a -> s{_ggError = a})

-- | Information about the file for which this response is generated.
ggInputConfig :: Lens' GoogleCloudVisionV1p3beta1AnnotateFileResponse (Maybe GoogleCloudVisionV1p3beta1InputConfig)
ggInputConfig
  = lens _ggInputConfig
      (\ s a -> s{_ggInputConfig = a})

-- | This field gives the total number of pages in the file.
ggTotalPages :: Lens' GoogleCloudVisionV1p3beta1AnnotateFileResponse (Maybe Int32)
ggTotalPages
  = lens _ggTotalPages (\ s a -> s{_ggTotalPages = a})
      . mapping _Coerce

instance FromJSON
           GoogleCloudVisionV1p3beta1AnnotateFileResponse
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p3beta1AnnotateFileResponse"
              (\ o ->
                 GoogleCloudVisionV1p3beta1AnnotateFileResponse' <$>
                   (o .:? "responses" .!= mempty) <*> (o .:? "error")
                     <*> (o .:? "inputConfig")
                     <*> (o .:? "totalPages"))

instance ToJSON
           GoogleCloudVisionV1p3beta1AnnotateFileResponse
         where
        toJSON
          GoogleCloudVisionV1p3beta1AnnotateFileResponse'{..}
          = object
              (catMaybes
                 [("responses" .=) <$> _ggResponses,
                  ("error" .=) <$> _ggError,
                  ("inputConfig" .=) <$> _ggInputConfig,
                  ("totalPages" .=) <$> _ggTotalPages])

-- | Information about a product.
--
-- /See:/ 'googleCloudVisionV1p2beta1ProductSearchResultsResult' smart constructor.
data GoogleCloudVisionV1p2beta1ProductSearchResultsResult =
  GoogleCloudVisionV1p2beta1ProductSearchResultsResult'
    { _gcvvpsrrcImage :: !(Maybe Text)
    , _gcvvpsrrcScore :: !(Maybe (Textual Double))
    , _gcvvpsrrcProduct :: !(Maybe GoogleCloudVisionV1p2beta1Product)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1ProductSearchResultsResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvpsrrcImage'
--
-- * 'gcvvpsrrcScore'
--
-- * 'gcvvpsrrcProduct'
googleCloudVisionV1p2beta1ProductSearchResultsResult
    :: GoogleCloudVisionV1p2beta1ProductSearchResultsResult
googleCloudVisionV1p2beta1ProductSearchResultsResult =
  GoogleCloudVisionV1p2beta1ProductSearchResultsResult'
    { _gcvvpsrrcImage = Nothing
    , _gcvvpsrrcScore = Nothing
    , _gcvvpsrrcProduct = Nothing
    }


-- | The resource name of the image from the product that is the closest
-- match to the query.
gcvvpsrrcImage :: Lens' GoogleCloudVisionV1p2beta1ProductSearchResultsResult (Maybe Text)
gcvvpsrrcImage
  = lens _gcvvpsrrcImage
      (\ s a -> s{_gcvvpsrrcImage = a})

-- | A confidence level on the match, ranging from 0 (no confidence) to 1
-- (full confidence).
gcvvpsrrcScore :: Lens' GoogleCloudVisionV1p2beta1ProductSearchResultsResult (Maybe Double)
gcvvpsrrcScore
  = lens _gcvvpsrrcScore
      (\ s a -> s{_gcvvpsrrcScore = a})
      . mapping _Coerce

-- | The Product.
gcvvpsrrcProduct :: Lens' GoogleCloudVisionV1p2beta1ProductSearchResultsResult (Maybe GoogleCloudVisionV1p2beta1Product)
gcvvpsrrcProduct
  = lens _gcvvpsrrcProduct
      (\ s a -> s{_gcvvpsrrcProduct = a})

instance FromJSON
           GoogleCloudVisionV1p2beta1ProductSearchResultsResult
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p2beta1ProductSearchResultsResult"
              (\ o ->
                 GoogleCloudVisionV1p2beta1ProductSearchResultsResult'
                   <$>
                   (o .:? "image") <*> (o .:? "score") <*>
                     (o .:? "product"))

instance ToJSON
           GoogleCloudVisionV1p2beta1ProductSearchResultsResult
         where
        toJSON
          GoogleCloudVisionV1p2beta1ProductSearchResultsResult'{..}
          = object
              (catMaybes
                 [("image" .=) <$> _gcvvpsrrcImage,
                  ("score" .=) <$> _gcvvpsrrcScore,
                  ("product" .=) <$> _gcvvpsrrcProduct])

-- | Metadata for online images.
--
-- /See:/ 'googleCloudVisionV1p4beta1WebDetectionWebImage' smart constructor.
data GoogleCloudVisionV1p4beta1WebDetectionWebImage =
  GoogleCloudVisionV1p4beta1WebDetectionWebImage'
    { _gcvvwdwicScore :: !(Maybe (Textual Double))
    , _gcvvwdwicURL :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1WebDetectionWebImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvwdwicScore'
--
-- * 'gcvvwdwicURL'
googleCloudVisionV1p4beta1WebDetectionWebImage
    :: GoogleCloudVisionV1p4beta1WebDetectionWebImage
googleCloudVisionV1p4beta1WebDetectionWebImage =
  GoogleCloudVisionV1p4beta1WebDetectionWebImage'
    {_gcvvwdwicScore = Nothing, _gcvvwdwicURL = Nothing}


-- | (Deprecated) Overall relevancy score for the image.
gcvvwdwicScore :: Lens' GoogleCloudVisionV1p4beta1WebDetectionWebImage (Maybe Double)
gcvvwdwicScore
  = lens _gcvvwdwicScore
      (\ s a -> s{_gcvvwdwicScore = a})
      . mapping _Coerce

-- | The result image URL.
gcvvwdwicURL :: Lens' GoogleCloudVisionV1p4beta1WebDetectionWebImage (Maybe Text)
gcvvwdwicURL
  = lens _gcvvwdwicURL (\ s a -> s{_gcvvwdwicURL = a})

instance FromJSON
           GoogleCloudVisionV1p4beta1WebDetectionWebImage
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p4beta1WebDetectionWebImage"
              (\ o ->
                 GoogleCloudVisionV1p4beta1WebDetectionWebImage' <$>
                   (o .:? "score") <*> (o .:? "url"))

instance ToJSON
           GoogleCloudVisionV1p4beta1WebDetectionWebImage
         where
        toJSON
          GoogleCloudVisionV1p4beta1WebDetectionWebImage'{..}
          = object
              (catMaybes
                 [("score" .=) <$> _gcvvwdwicScore,
                  ("url" .=) <$> _gcvvwdwicURL])

-- | A bounding polygon for the detected image annotation.
--
-- /See:/ 'googleCloudVisionV1p4beta1BoundingPoly' smart constructor.
data GoogleCloudVisionV1p4beta1BoundingPoly =
  GoogleCloudVisionV1p4beta1BoundingPoly'
    { _gNormalizedVertices :: !(Maybe [GoogleCloudVisionV1p4beta1NormalizedVertex])
    , _gVertices :: !(Maybe [GoogleCloudVisionV1p4beta1Vertex])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1BoundingPoly' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gNormalizedVertices'
--
-- * 'gVertices'
googleCloudVisionV1p4beta1BoundingPoly
    :: GoogleCloudVisionV1p4beta1BoundingPoly
googleCloudVisionV1p4beta1BoundingPoly =
  GoogleCloudVisionV1p4beta1BoundingPoly'
    {_gNormalizedVertices = Nothing, _gVertices = Nothing}


-- | The bounding polygon normalized vertices.
gNormalizedVertices :: Lens' GoogleCloudVisionV1p4beta1BoundingPoly [GoogleCloudVisionV1p4beta1NormalizedVertex]
gNormalizedVertices
  = lens _gNormalizedVertices
      (\ s a -> s{_gNormalizedVertices = a})
      . _Default
      . _Coerce

-- | The bounding polygon vertices.
gVertices :: Lens' GoogleCloudVisionV1p4beta1BoundingPoly [GoogleCloudVisionV1p4beta1Vertex]
gVertices
  = lens _gVertices (\ s a -> s{_gVertices = a}) .
      _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p4beta1BoundingPoly
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p4beta1BoundingPoly"
              (\ o ->
                 GoogleCloudVisionV1p4beta1BoundingPoly' <$>
                   (o .:? "normalizedVertices" .!= mempty) <*>
                     (o .:? "vertices" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p4beta1BoundingPoly
         where
        toJSON GoogleCloudVisionV1p4beta1BoundingPoly'{..}
          = object
              (catMaybes
                 [("normalizedVertices" .=) <$> _gNormalizedVertices,
                  ("vertices" .=) <$> _gVertices])

-- | A word representation.
--
-- /See:/ 'googleCloudVisionV1p2beta1Word' smart constructor.
data GoogleCloudVisionV1p2beta1Word =
  GoogleCloudVisionV1p2beta1Word'
    { _gcvvwcProperty :: !(Maybe GoogleCloudVisionV1p2beta1TextAnnotationTextProperty)
    , _gcvvwcBoundingBox :: !(Maybe GoogleCloudVisionV1p2beta1BoundingPoly)
    , _gcvvwcSymbols :: !(Maybe [GoogleCloudVisionV1p2beta1Symbol])
    , _gcvvwcConfidence :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1Word' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvwcProperty'
--
-- * 'gcvvwcBoundingBox'
--
-- * 'gcvvwcSymbols'
--
-- * 'gcvvwcConfidence'
googleCloudVisionV1p2beta1Word
    :: GoogleCloudVisionV1p2beta1Word
googleCloudVisionV1p2beta1Word =
  GoogleCloudVisionV1p2beta1Word'
    { _gcvvwcProperty = Nothing
    , _gcvvwcBoundingBox = Nothing
    , _gcvvwcSymbols = Nothing
    , _gcvvwcConfidence = Nothing
    }


-- | Additional information detected for the word.
gcvvwcProperty :: Lens' GoogleCloudVisionV1p2beta1Word (Maybe GoogleCloudVisionV1p2beta1TextAnnotationTextProperty)
gcvvwcProperty
  = lens _gcvvwcProperty
      (\ s a -> s{_gcvvwcProperty = a})

-- | The bounding box for the word. The vertices are in the order of
-- top-left, top-right, bottom-right, bottom-left. When a rotation of the
-- bounding box is detected the rotation is represented as around the
-- top-left corner as defined when the text is read in the \'natural\'
-- orientation. For example: * when the text is horizontal it might look
-- like: 0----1 | | 3----2 * when it\'s rotated 180 degrees around the
-- top-left corner it becomes: 2----3 | | 1----0 and the vertex order will
-- still be (0, 1, 2, 3).
gcvvwcBoundingBox :: Lens' GoogleCloudVisionV1p2beta1Word (Maybe GoogleCloudVisionV1p2beta1BoundingPoly)
gcvvwcBoundingBox
  = lens _gcvvwcBoundingBox
      (\ s a -> s{_gcvvwcBoundingBox = a})

-- | List of symbols in the word. The order of the symbols follows the
-- natural reading order.
gcvvwcSymbols :: Lens' GoogleCloudVisionV1p2beta1Word [GoogleCloudVisionV1p2beta1Symbol]
gcvvwcSymbols
  = lens _gcvvwcSymbols
      (\ s a -> s{_gcvvwcSymbols = a})
      . _Default
      . _Coerce

-- | Confidence of the OCR results for the word. Range [0, 1].
gcvvwcConfidence :: Lens' GoogleCloudVisionV1p2beta1Word (Maybe Double)
gcvvwcConfidence
  = lens _gcvvwcConfidence
      (\ s a -> s{_gcvvwcConfidence = a})
      . mapping _Coerce

instance FromJSON GoogleCloudVisionV1p2beta1Word
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p2beta1Word"
              (\ o ->
                 GoogleCloudVisionV1p2beta1Word' <$>
                   (o .:? "property") <*> (o .:? "boundingBox") <*>
                     (o .:? "symbols" .!= mempty)
                     <*> (o .:? "confidence"))

instance ToJSON GoogleCloudVisionV1p2beta1Word where
        toJSON GoogleCloudVisionV1p2beta1Word'{..}
          = object
              (catMaybes
                 [("property" .=) <$> _gcvvwcProperty,
                  ("boundingBox" .=) <$> _gcvvwcBoundingBox,
                  ("symbols" .=) <$> _gcvvwcSymbols,
                  ("confidence" .=) <$> _gcvvwcConfidence])

-- | A list of file annotation responses.
--
-- /See:/ 'googleCloudVisionV1p4beta1BatchAnnotateFilesResponse' smart constructor.
newtype GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse =
  GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse'
    { _gcvvbafrResponses :: Maybe [GoogleCloudVisionV1p4beta1AnnotateFileResponse]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvbafrResponses'
googleCloudVisionV1p4beta1BatchAnnotateFilesResponse
    :: GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse
googleCloudVisionV1p4beta1BatchAnnotateFilesResponse =
  GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse'
    {_gcvvbafrResponses = Nothing}


-- | The list of file annotation responses, each response corresponding to
-- each AnnotateFileRequest in BatchAnnotateFilesRequest.
gcvvbafrResponses :: Lens' GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse [GoogleCloudVisionV1p4beta1AnnotateFileResponse]
gcvvbafrResponses
  = lens _gcvvbafrResponses
      (\ s a -> s{_gcvvbafrResponses = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse"
              (\ o ->
                 GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse'
                   <$> (o .:? "responses" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse
         where
        toJSON
          GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse'{..}
          = object
              (catMaybes [("responses" .=) <$> _gcvvbafrResponses])

-- | A word representation.
--
-- /See:/ 'googleCloudVisionV1p1beta1Word' smart constructor.
data GoogleCloudVisionV1p1beta1Word =
  GoogleCloudVisionV1p1beta1Word'
    { _gcvvw1Property :: !(Maybe GoogleCloudVisionV1p1beta1TextAnnotationTextProperty)
    , _gcvvw1BoundingBox :: !(Maybe GoogleCloudVisionV1p1beta1BoundingPoly)
    , _gcvvw1Symbols :: !(Maybe [GoogleCloudVisionV1p1beta1Symbol])
    , _gcvvw1Confidence :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1Word' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvw1Property'
--
-- * 'gcvvw1BoundingBox'
--
-- * 'gcvvw1Symbols'
--
-- * 'gcvvw1Confidence'
googleCloudVisionV1p1beta1Word
    :: GoogleCloudVisionV1p1beta1Word
googleCloudVisionV1p1beta1Word =
  GoogleCloudVisionV1p1beta1Word'
    { _gcvvw1Property = Nothing
    , _gcvvw1BoundingBox = Nothing
    , _gcvvw1Symbols = Nothing
    , _gcvvw1Confidence = Nothing
    }


-- | Additional information detected for the word.
gcvvw1Property :: Lens' GoogleCloudVisionV1p1beta1Word (Maybe GoogleCloudVisionV1p1beta1TextAnnotationTextProperty)
gcvvw1Property
  = lens _gcvvw1Property
      (\ s a -> s{_gcvvw1Property = a})

-- | The bounding box for the word. The vertices are in the order of
-- top-left, top-right, bottom-right, bottom-left. When a rotation of the
-- bounding box is detected the rotation is represented as around the
-- top-left corner as defined when the text is read in the \'natural\'
-- orientation. For example: * when the text is horizontal it might look
-- like: 0----1 | | 3----2 * when it\'s rotated 180 degrees around the
-- top-left corner it becomes: 2----3 | | 1----0 and the vertex order will
-- still be (0, 1, 2, 3).
gcvvw1BoundingBox :: Lens' GoogleCloudVisionV1p1beta1Word (Maybe GoogleCloudVisionV1p1beta1BoundingPoly)
gcvvw1BoundingBox
  = lens _gcvvw1BoundingBox
      (\ s a -> s{_gcvvw1BoundingBox = a})

-- | List of symbols in the word. The order of the symbols follows the
-- natural reading order.
gcvvw1Symbols :: Lens' GoogleCloudVisionV1p1beta1Word [GoogleCloudVisionV1p1beta1Symbol]
gcvvw1Symbols
  = lens _gcvvw1Symbols
      (\ s a -> s{_gcvvw1Symbols = a})
      . _Default
      . _Coerce

-- | Confidence of the OCR results for the word. Range [0, 1].
gcvvw1Confidence :: Lens' GoogleCloudVisionV1p1beta1Word (Maybe Double)
gcvvw1Confidence
  = lens _gcvvw1Confidence
      (\ s a -> s{_gcvvw1Confidence = a})
      . mapping _Coerce

instance FromJSON GoogleCloudVisionV1p1beta1Word
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p1beta1Word"
              (\ o ->
                 GoogleCloudVisionV1p1beta1Word' <$>
                   (o .:? "property") <*> (o .:? "boundingBox") <*>
                     (o .:? "symbols" .!= mempty)
                     <*> (o .:? "confidence"))

instance ToJSON GoogleCloudVisionV1p1beta1Word where
        toJSON GoogleCloudVisionV1p1beta1Word'{..}
          = object
              (catMaybes
                 [("property" .=) <$> _gcvvw1Property,
                  ("boundingBox" .=) <$> _gcvvw1BoundingBox,
                  ("symbols" .=) <$> _gcvvw1Symbols,
                  ("confidence" .=) <$> _gcvvw1Confidence])

-- | Information about a product.
--
-- /See:/ 'googleCloudVisionV1p1beta1ProductSearchResultsResult' smart constructor.
data GoogleCloudVisionV1p1beta1ProductSearchResultsResult =
  GoogleCloudVisionV1p1beta1ProductSearchResultsResult'
    { _ggImage :: !(Maybe Text)
    , _ggScore :: !(Maybe (Textual Double))
    , _ggProduct :: !(Maybe GoogleCloudVisionV1p1beta1Product)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1ProductSearchResultsResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggImage'
--
-- * 'ggScore'
--
-- * 'ggProduct'
googleCloudVisionV1p1beta1ProductSearchResultsResult
    :: GoogleCloudVisionV1p1beta1ProductSearchResultsResult
googleCloudVisionV1p1beta1ProductSearchResultsResult =
  GoogleCloudVisionV1p1beta1ProductSearchResultsResult'
    {_ggImage = Nothing, _ggScore = Nothing, _ggProduct = Nothing}


-- | The resource name of the image from the product that is the closest
-- match to the query.
ggImage :: Lens' GoogleCloudVisionV1p1beta1ProductSearchResultsResult (Maybe Text)
ggImage = lens _ggImage (\ s a -> s{_ggImage = a})

-- | A confidence level on the match, ranging from 0 (no confidence) to 1
-- (full confidence).
ggScore :: Lens' GoogleCloudVisionV1p1beta1ProductSearchResultsResult (Maybe Double)
ggScore
  = lens _ggScore (\ s a -> s{_ggScore = a}) .
      mapping _Coerce

-- | The Product.
ggProduct :: Lens' GoogleCloudVisionV1p1beta1ProductSearchResultsResult (Maybe GoogleCloudVisionV1p1beta1Product)
ggProduct
  = lens _ggProduct (\ s a -> s{_ggProduct = a})

instance FromJSON
           GoogleCloudVisionV1p1beta1ProductSearchResultsResult
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p1beta1ProductSearchResultsResult"
              (\ o ->
                 GoogleCloudVisionV1p1beta1ProductSearchResultsResult'
                   <$>
                   (o .:? "image") <*> (o .:? "score") <*>
                     (o .:? "product"))

instance ToJSON
           GoogleCloudVisionV1p1beta1ProductSearchResultsResult
         where
        toJSON
          GoogleCloudVisionV1p1beta1ProductSearchResultsResult'{..}
          = object
              (catMaybes
                 [("image" .=) <$> _ggImage,
                  ("score" .=) <$> _ggScore,
                  ("product" .=) <$> _ggProduct])

-- | Response message for the \`ImportProductSets\` method. This message is
-- returned by the google.longrunning.Operations.GetOperation method in the
-- returned google.longrunning.Operation.response field.
--
-- /See:/ 'googleCloudVisionV1p3beta1ImportProductSetsResponse' smart constructor.
data GoogleCloudVisionV1p3beta1ImportProductSetsResponse =
  GoogleCloudVisionV1p3beta1ImportProductSetsResponse'
    { _gcvvipsrReferenceImages :: !(Maybe [GoogleCloudVisionV1p3beta1ReferenceImage])
    , _gcvvipsrStatuses :: !(Maybe [Status])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1ImportProductSetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvipsrReferenceImages'
--
-- * 'gcvvipsrStatuses'
googleCloudVisionV1p3beta1ImportProductSetsResponse
    :: GoogleCloudVisionV1p3beta1ImportProductSetsResponse
googleCloudVisionV1p3beta1ImportProductSetsResponse =
  GoogleCloudVisionV1p3beta1ImportProductSetsResponse'
    {_gcvvipsrReferenceImages = Nothing, _gcvvipsrStatuses = Nothing}


-- | The list of reference_images that are imported successfully.
gcvvipsrReferenceImages :: Lens' GoogleCloudVisionV1p3beta1ImportProductSetsResponse [GoogleCloudVisionV1p3beta1ReferenceImage]
gcvvipsrReferenceImages
  = lens _gcvvipsrReferenceImages
      (\ s a -> s{_gcvvipsrReferenceImages = a})
      . _Default
      . _Coerce

-- | The rpc status for each ImportProductSet request, including both
-- successes and errors. The number of statuses here matches the number of
-- lines in the csv file, and statuses[i] stores the success or failure
-- status of processing the i-th line of the csv, starting from line 0.
gcvvipsrStatuses :: Lens' GoogleCloudVisionV1p3beta1ImportProductSetsResponse [Status]
gcvvipsrStatuses
  = lens _gcvvipsrStatuses
      (\ s a -> s{_gcvvipsrStatuses = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p3beta1ImportProductSetsResponse
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p3beta1ImportProductSetsResponse"
              (\ o ->
                 GoogleCloudVisionV1p3beta1ImportProductSetsResponse'
                   <$>
                   (o .:? "referenceImages" .!= mempty) <*>
                     (o .:? "statuses" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p3beta1ImportProductSetsResponse
         where
        toJSON
          GoogleCloudVisionV1p3beta1ImportProductSetsResponse'{..}
          = object
              (catMaybes
                 [("referenceImages" .=) <$> _gcvvipsrReferenceImages,
                  ("statuses" .=) <$> _gcvvipsrStatuses])

-- | Response to an async batch file annotation request.
--
-- /See:/ 'googleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse' smart constructor.
newtype GoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse =
  GoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse'
    { _gcvvabafrcResponses :: Maybe [GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvabafrcResponses'
googleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse
    :: GoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse
googleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse =
  GoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse'
    {_gcvvabafrcResponses = Nothing}


-- | The list of file annotation responses, one for each request in
-- AsyncBatchAnnotateFilesRequest.
gcvvabafrcResponses :: Lens' GoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse [GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse]
gcvvabafrcResponses
  = lens _gcvvabafrcResponses
      (\ s a -> s{_gcvvabafrcResponses = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse"
              (\ o ->
                 GoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse'
                   <$> (o .:? "responses" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse
         where
        toJSON
          GoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse'{..}
          = object
              (catMaybes
                 [("responses" .=) <$> _gcvvabafrcResponses])

-- | Color information consists of RGB channels, score, and the fraction of
-- the image that the color occupies in the image.
--
-- /See:/ 'googleCloudVisionV1p4beta1ColorInfo' smart constructor.
data GoogleCloudVisionV1p4beta1ColorInfo =
  GoogleCloudVisionV1p4beta1ColorInfo'
    { _gcvvcicColor :: !(Maybe Color)
    , _gcvvcicScore :: !(Maybe (Textual Double))
    , _gcvvcicPixelFraction :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1ColorInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvcicColor'
--
-- * 'gcvvcicScore'
--
-- * 'gcvvcicPixelFraction'
googleCloudVisionV1p4beta1ColorInfo
    :: GoogleCloudVisionV1p4beta1ColorInfo
googleCloudVisionV1p4beta1ColorInfo =
  GoogleCloudVisionV1p4beta1ColorInfo'
    { _gcvvcicColor = Nothing
    , _gcvvcicScore = Nothing
    , _gcvvcicPixelFraction = Nothing
    }


-- | RGB components of the color.
gcvvcicColor :: Lens' GoogleCloudVisionV1p4beta1ColorInfo (Maybe Color)
gcvvcicColor
  = lens _gcvvcicColor (\ s a -> s{_gcvvcicColor = a})

-- | Image-specific score for this color. Value in range [0, 1].
gcvvcicScore :: Lens' GoogleCloudVisionV1p4beta1ColorInfo (Maybe Double)
gcvvcicScore
  = lens _gcvvcicScore (\ s a -> s{_gcvvcicScore = a})
      . mapping _Coerce

-- | The fraction of pixels the color occupies in the image. Value in range
-- [0, 1].
gcvvcicPixelFraction :: Lens' GoogleCloudVisionV1p4beta1ColorInfo (Maybe Double)
gcvvcicPixelFraction
  = lens _gcvvcicPixelFraction
      (\ s a -> s{_gcvvcicPixelFraction = a})
      . mapping _Coerce

instance FromJSON GoogleCloudVisionV1p4beta1ColorInfo
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p4beta1ColorInfo"
              (\ o ->
                 GoogleCloudVisionV1p4beta1ColorInfo' <$>
                   (o .:? "color") <*> (o .:? "score") <*>
                     (o .:? "pixelFraction"))

instance ToJSON GoogleCloudVisionV1p4beta1ColorInfo
         where
        toJSON GoogleCloudVisionV1p4beta1ColorInfo'{..}
          = object
              (catMaybes
                 [("color" .=) <$> _gcvvcicColor,
                  ("score" .=) <$> _gcvvcicScore,
                  ("pixelFraction" .=) <$> _gcvvcicPixelFraction])

-- | A request to annotate one single file, e.g. a PDF, TIFF or GIF file.
--
-- /See:/ 'googleCloudVisionV1p2beta1AnnotateFileRequest' smart constructor.
data GoogleCloudVisionV1p2beta1AnnotateFileRequest =
  GoogleCloudVisionV1p2beta1AnnotateFileRequest'
    { _gooPages :: !(Maybe [Textual Int32])
    , _gooInputConfig :: !(Maybe GoogleCloudVisionV1p2beta1InputConfig)
    , _gooFeatures :: !(Maybe [GoogleCloudVisionV1p2beta1Feature])
    , _gooImageContext :: !(Maybe GoogleCloudVisionV1p2beta1ImageContext)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1AnnotateFileRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooPages'
--
-- * 'gooInputConfig'
--
-- * 'gooFeatures'
--
-- * 'gooImageContext'
googleCloudVisionV1p2beta1AnnotateFileRequest
    :: GoogleCloudVisionV1p2beta1AnnotateFileRequest
googleCloudVisionV1p2beta1AnnotateFileRequest =
  GoogleCloudVisionV1p2beta1AnnotateFileRequest'
    { _gooPages = Nothing
    , _gooInputConfig = Nothing
    , _gooFeatures = Nothing
    , _gooImageContext = Nothing
    }


-- | Pages of the file to perform image annotation. Pages starts from 1, we
-- assume the first page of the file is page 1. At most 5 pages are
-- supported per request. Pages can be negative. Page 1 means the first
-- page. Page 2 means the second page. Page -1 means the last page. Page -2
-- means the second to the last page. If the file is GIF instead of PDF or
-- TIFF, page refers to GIF frames. If this field is empty, by default the
-- service performs image annotation for the first 5 pages of the file.
gooPages :: Lens' GoogleCloudVisionV1p2beta1AnnotateFileRequest [Int32]
gooPages
  = lens _gooPages (\ s a -> s{_gooPages = a}) .
      _Default
      . _Coerce

-- | Required. Information about the input file.
gooInputConfig :: Lens' GoogleCloudVisionV1p2beta1AnnotateFileRequest (Maybe GoogleCloudVisionV1p2beta1InputConfig)
gooInputConfig
  = lens _gooInputConfig
      (\ s a -> s{_gooInputConfig = a})

-- | Required. Requested features.
gooFeatures :: Lens' GoogleCloudVisionV1p2beta1AnnotateFileRequest [GoogleCloudVisionV1p2beta1Feature]
gooFeatures
  = lens _gooFeatures (\ s a -> s{_gooFeatures = a}) .
      _Default
      . _Coerce

-- | Additional context that may accompany the image(s) in the file.
gooImageContext :: Lens' GoogleCloudVisionV1p2beta1AnnotateFileRequest (Maybe GoogleCloudVisionV1p2beta1ImageContext)
gooImageContext
  = lens _gooImageContext
      (\ s a -> s{_gooImageContext = a})

instance FromJSON
           GoogleCloudVisionV1p2beta1AnnotateFileRequest
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p2beta1AnnotateFileRequest"
              (\ o ->
                 GoogleCloudVisionV1p2beta1AnnotateFileRequest' <$>
                   (o .:? "pages" .!= mempty) <*> (o .:? "inputConfig")
                     <*> (o .:? "features" .!= mempty)
                     <*> (o .:? "imageContext"))

instance ToJSON
           GoogleCloudVisionV1p2beta1AnnotateFileRequest
         where
        toJSON
          GoogleCloudVisionV1p2beta1AnnotateFileRequest'{..}
          = object
              (catMaybes
                 [("pages" .=) <$> _gooPages,
                  ("inputConfig" .=) <$> _gooInputConfig,
                  ("features" .=) <$> _gooFeatures,
                  ("imageContext" .=) <$> _gooImageContext])

-- | Stores image properties, such as dominant colors.
--
-- /See:/ 'googleCloudVisionV1p1beta1ImageProperties' smart constructor.
newtype GoogleCloudVisionV1p1beta1ImageProperties =
  GoogleCloudVisionV1p1beta1ImageProperties'
    { _gooDominantColors :: Maybe GoogleCloudVisionV1p1beta1DominantColorsAnnotation
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1ImageProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooDominantColors'
googleCloudVisionV1p1beta1ImageProperties
    :: GoogleCloudVisionV1p1beta1ImageProperties
googleCloudVisionV1p1beta1ImageProperties =
  GoogleCloudVisionV1p1beta1ImageProperties' {_gooDominantColors = Nothing}


-- | If present, dominant colors completed successfully.
gooDominantColors :: Lens' GoogleCloudVisionV1p1beta1ImageProperties (Maybe GoogleCloudVisionV1p1beta1DominantColorsAnnotation)
gooDominantColors
  = lens _gooDominantColors
      (\ s a -> s{_gooDominantColors = a})

instance FromJSON
           GoogleCloudVisionV1p1beta1ImageProperties
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p1beta1ImageProperties"
              (\ o ->
                 GoogleCloudVisionV1p1beta1ImageProperties' <$>
                   (o .:? "dominantColors"))

instance ToJSON
           GoogleCloudVisionV1p1beta1ImageProperties
         where
        toJSON GoogleCloudVisionV1p1beta1ImageProperties'{..}
          = object
              (catMaybes
                 [("dominantColors" .=) <$> _gooDominantColors])

-- | Entity deduced from similar images on the Internet.
--
-- /See:/ 'googleCloudVisionV1p3beta1WebDetectionWebEntity' smart constructor.
data GoogleCloudVisionV1p3beta1WebDetectionWebEntity =
  GoogleCloudVisionV1p3beta1WebDetectionWebEntity'
    { _gcvvwdwe1Score :: !(Maybe (Textual Double))
    , _gcvvwdwe1EntityId :: !(Maybe Text)
    , _gcvvwdwe1Description :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1WebDetectionWebEntity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvwdwe1Score'
--
-- * 'gcvvwdwe1EntityId'
--
-- * 'gcvvwdwe1Description'
googleCloudVisionV1p3beta1WebDetectionWebEntity
    :: GoogleCloudVisionV1p3beta1WebDetectionWebEntity
googleCloudVisionV1p3beta1WebDetectionWebEntity =
  GoogleCloudVisionV1p3beta1WebDetectionWebEntity'
    { _gcvvwdwe1Score = Nothing
    , _gcvvwdwe1EntityId = Nothing
    , _gcvvwdwe1Description = Nothing
    }


-- | Overall relevancy score for the entity. Not normalized and not
-- comparable across different image queries.
gcvvwdwe1Score :: Lens' GoogleCloudVisionV1p3beta1WebDetectionWebEntity (Maybe Double)
gcvvwdwe1Score
  = lens _gcvvwdwe1Score
      (\ s a -> s{_gcvvwdwe1Score = a})
      . mapping _Coerce

-- | Opaque entity ID.
gcvvwdwe1EntityId :: Lens' GoogleCloudVisionV1p3beta1WebDetectionWebEntity (Maybe Text)
gcvvwdwe1EntityId
  = lens _gcvvwdwe1EntityId
      (\ s a -> s{_gcvvwdwe1EntityId = a})

-- | Canonical description of the entity, in English.
gcvvwdwe1Description :: Lens' GoogleCloudVisionV1p3beta1WebDetectionWebEntity (Maybe Text)
gcvvwdwe1Description
  = lens _gcvvwdwe1Description
      (\ s a -> s{_gcvvwdwe1Description = a})

instance FromJSON
           GoogleCloudVisionV1p3beta1WebDetectionWebEntity
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p3beta1WebDetectionWebEntity"
              (\ o ->
                 GoogleCloudVisionV1p3beta1WebDetectionWebEntity' <$>
                   (o .:? "score") <*> (o .:? "entityId") <*>
                     (o .:? "description"))

instance ToJSON
           GoogleCloudVisionV1p3beta1WebDetectionWebEntity
         where
        toJSON
          GoogleCloudVisionV1p3beta1WebDetectionWebEntity'{..}
          = object
              (catMaybes
                 [("score" .=) <$> _gcvvwdwe1Score,
                  ("entityId" .=) <$> _gcvvwdwe1EntityId,
                  ("description" .=) <$> _gcvvwdwe1Description])

-- | A Celebrity is a group of Faces with an identity.
--
-- /See:/ 'googleCloudVisionV1p4beta1Celebrity' smart constructor.
data GoogleCloudVisionV1p4beta1Celebrity =
  GoogleCloudVisionV1p4beta1Celebrity'
    { _gcvvcName :: !(Maybe Text)
    , _gcvvcDisplayName :: !(Maybe Text)
    , _gcvvcDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1Celebrity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvcName'
--
-- * 'gcvvcDisplayName'
--
-- * 'gcvvcDescription'
googleCloudVisionV1p4beta1Celebrity
    :: GoogleCloudVisionV1p4beta1Celebrity
googleCloudVisionV1p4beta1Celebrity =
  GoogleCloudVisionV1p4beta1Celebrity'
    { _gcvvcName = Nothing
    , _gcvvcDisplayName = Nothing
    , _gcvvcDescription = Nothing
    }


-- | The resource name of the preloaded Celebrity. Has the format
-- \`builtin\/{mid}\`.
gcvvcName :: Lens' GoogleCloudVisionV1p4beta1Celebrity (Maybe Text)
gcvvcName
  = lens _gcvvcName (\ s a -> s{_gcvvcName = a})

-- | The Celebrity\'s display name.
gcvvcDisplayName :: Lens' GoogleCloudVisionV1p4beta1Celebrity (Maybe Text)
gcvvcDisplayName
  = lens _gcvvcDisplayName
      (\ s a -> s{_gcvvcDisplayName = a})

-- | The Celebrity\'s description.
gcvvcDescription :: Lens' GoogleCloudVisionV1p4beta1Celebrity (Maybe Text)
gcvvcDescription
  = lens _gcvvcDescription
      (\ s a -> s{_gcvvcDescription = a})

instance FromJSON GoogleCloudVisionV1p4beta1Celebrity
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p4beta1Celebrity"
              (\ o ->
                 GoogleCloudVisionV1p4beta1Celebrity' <$>
                   (o .:? "name") <*> (o .:? "displayName") <*>
                     (o .:? "description"))

instance ToJSON GoogleCloudVisionV1p4beta1Celebrity
         where
        toJSON GoogleCloudVisionV1p4beta1Celebrity'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _gcvvcName,
                  ("displayName" .=) <$> _gcvvcDisplayName,
                  ("description" .=) <$> _gcvvcDescription])

-- | Response to an image annotation request.
--
-- /See:/ 'googleCloudVisionV1p1beta1AnnotateImageResponse' smart constructor.
data GoogleCloudVisionV1p1beta1AnnotateImageResponse =
  GoogleCloudVisionV1p1beta1AnnotateImageResponse'
    { _gcvvaircLogoAnnotations :: !(Maybe [GoogleCloudVisionV1p1beta1EntityAnnotation])
    , _gcvvaircProductSearchResults :: !(Maybe GoogleCloudVisionV1p1beta1ProductSearchResults)
    , _gcvvaircContext :: !(Maybe GoogleCloudVisionV1p1beta1ImageAnnotationContext)
    , _gcvvaircLabelAnnotations :: !(Maybe [GoogleCloudVisionV1p1beta1EntityAnnotation])
    , _gcvvaircFaceAnnotations :: !(Maybe [GoogleCloudVisionV1p1beta1FaceAnnotation])
    , _gcvvaircError :: !(Maybe Status)
    , _gcvvaircWebDetection :: !(Maybe GoogleCloudVisionV1p1beta1WebDetection)
    , _gcvvaircSafeSearchAnnotation :: !(Maybe GoogleCloudVisionV1p1beta1SafeSearchAnnotation)
    , _gcvvaircLandmarkAnnotations :: !(Maybe [GoogleCloudVisionV1p1beta1EntityAnnotation])
    , _gcvvaircLocalizedObjectAnnotations :: !(Maybe [GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation])
    , _gcvvaircTextAnnotations :: !(Maybe [GoogleCloudVisionV1p1beta1EntityAnnotation])
    , _gcvvaircCropHintsAnnotation :: !(Maybe GoogleCloudVisionV1p1beta1CropHintsAnnotation)
    , _gcvvaircFullTextAnnotation :: !(Maybe GoogleCloudVisionV1p1beta1TextAnnotation)
    , _gcvvaircImagePropertiesAnnotation :: !(Maybe GoogleCloudVisionV1p1beta1ImageProperties)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1AnnotateImageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvaircLogoAnnotations'
--
-- * 'gcvvaircProductSearchResults'
--
-- * 'gcvvaircContext'
--
-- * 'gcvvaircLabelAnnotations'
--
-- * 'gcvvaircFaceAnnotations'
--
-- * 'gcvvaircError'
--
-- * 'gcvvaircWebDetection'
--
-- * 'gcvvaircSafeSearchAnnotation'
--
-- * 'gcvvaircLandmarkAnnotations'
--
-- * 'gcvvaircLocalizedObjectAnnotations'
--
-- * 'gcvvaircTextAnnotations'
--
-- * 'gcvvaircCropHintsAnnotation'
--
-- * 'gcvvaircFullTextAnnotation'
--
-- * 'gcvvaircImagePropertiesAnnotation'
googleCloudVisionV1p1beta1AnnotateImageResponse
    :: GoogleCloudVisionV1p1beta1AnnotateImageResponse
googleCloudVisionV1p1beta1AnnotateImageResponse =
  GoogleCloudVisionV1p1beta1AnnotateImageResponse'
    { _gcvvaircLogoAnnotations = Nothing
    , _gcvvaircProductSearchResults = Nothing
    , _gcvvaircContext = Nothing
    , _gcvvaircLabelAnnotations = Nothing
    , _gcvvaircFaceAnnotations = Nothing
    , _gcvvaircError = Nothing
    , _gcvvaircWebDetection = Nothing
    , _gcvvaircSafeSearchAnnotation = Nothing
    , _gcvvaircLandmarkAnnotations = Nothing
    , _gcvvaircLocalizedObjectAnnotations = Nothing
    , _gcvvaircTextAnnotations = Nothing
    , _gcvvaircCropHintsAnnotation = Nothing
    , _gcvvaircFullTextAnnotation = Nothing
    , _gcvvaircImagePropertiesAnnotation = Nothing
    }


-- | If present, logo detection has completed successfully.
gcvvaircLogoAnnotations :: Lens' GoogleCloudVisionV1p1beta1AnnotateImageResponse [GoogleCloudVisionV1p1beta1EntityAnnotation]
gcvvaircLogoAnnotations
  = lens _gcvvaircLogoAnnotations
      (\ s a -> s{_gcvvaircLogoAnnotations = a})
      . _Default
      . _Coerce

-- | If present, product search has completed successfully.
gcvvaircProductSearchResults :: Lens' GoogleCloudVisionV1p1beta1AnnotateImageResponse (Maybe GoogleCloudVisionV1p1beta1ProductSearchResults)
gcvvaircProductSearchResults
  = lens _gcvvaircProductSearchResults
      (\ s a -> s{_gcvvaircProductSearchResults = a})

-- | If present, contextual information is needed to understand where this
-- image comes from.
gcvvaircContext :: Lens' GoogleCloudVisionV1p1beta1AnnotateImageResponse (Maybe GoogleCloudVisionV1p1beta1ImageAnnotationContext)
gcvvaircContext
  = lens _gcvvaircContext
      (\ s a -> s{_gcvvaircContext = a})

-- | If present, label detection has completed successfully.
gcvvaircLabelAnnotations :: Lens' GoogleCloudVisionV1p1beta1AnnotateImageResponse [GoogleCloudVisionV1p1beta1EntityAnnotation]
gcvvaircLabelAnnotations
  = lens _gcvvaircLabelAnnotations
      (\ s a -> s{_gcvvaircLabelAnnotations = a})
      . _Default
      . _Coerce

-- | If present, face detection has completed successfully.
gcvvaircFaceAnnotations :: Lens' GoogleCloudVisionV1p1beta1AnnotateImageResponse [GoogleCloudVisionV1p1beta1FaceAnnotation]
gcvvaircFaceAnnotations
  = lens _gcvvaircFaceAnnotations
      (\ s a -> s{_gcvvaircFaceAnnotations = a})
      . _Default
      . _Coerce

-- | If set, represents the error message for the operation. Note that
-- filled-in image annotations are guaranteed to be correct, even when
-- \`error\` is set.
gcvvaircError :: Lens' GoogleCloudVisionV1p1beta1AnnotateImageResponse (Maybe Status)
gcvvaircError
  = lens _gcvvaircError
      (\ s a -> s{_gcvvaircError = a})

-- | If present, web detection has completed successfully.
gcvvaircWebDetection :: Lens' GoogleCloudVisionV1p1beta1AnnotateImageResponse (Maybe GoogleCloudVisionV1p1beta1WebDetection)
gcvvaircWebDetection
  = lens _gcvvaircWebDetection
      (\ s a -> s{_gcvvaircWebDetection = a})

-- | If present, safe-search annotation has completed successfully.
gcvvaircSafeSearchAnnotation :: Lens' GoogleCloudVisionV1p1beta1AnnotateImageResponse (Maybe GoogleCloudVisionV1p1beta1SafeSearchAnnotation)
gcvvaircSafeSearchAnnotation
  = lens _gcvvaircSafeSearchAnnotation
      (\ s a -> s{_gcvvaircSafeSearchAnnotation = a})

-- | If present, landmark detection has completed successfully.
gcvvaircLandmarkAnnotations :: Lens' GoogleCloudVisionV1p1beta1AnnotateImageResponse [GoogleCloudVisionV1p1beta1EntityAnnotation]
gcvvaircLandmarkAnnotations
  = lens _gcvvaircLandmarkAnnotations
      (\ s a -> s{_gcvvaircLandmarkAnnotations = a})
      . _Default
      . _Coerce

-- | If present, localized object detection has completed successfully. This
-- will be sorted descending by confidence score.
gcvvaircLocalizedObjectAnnotations :: Lens' GoogleCloudVisionV1p1beta1AnnotateImageResponse [GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation]
gcvvaircLocalizedObjectAnnotations
  = lens _gcvvaircLocalizedObjectAnnotations
      (\ s a -> s{_gcvvaircLocalizedObjectAnnotations = a})
      . _Default
      . _Coerce

-- | If present, text (OCR) detection has completed successfully.
gcvvaircTextAnnotations :: Lens' GoogleCloudVisionV1p1beta1AnnotateImageResponse [GoogleCloudVisionV1p1beta1EntityAnnotation]
gcvvaircTextAnnotations
  = lens _gcvvaircTextAnnotations
      (\ s a -> s{_gcvvaircTextAnnotations = a})
      . _Default
      . _Coerce

-- | If present, crop hints have completed successfully.
gcvvaircCropHintsAnnotation :: Lens' GoogleCloudVisionV1p1beta1AnnotateImageResponse (Maybe GoogleCloudVisionV1p1beta1CropHintsAnnotation)
gcvvaircCropHintsAnnotation
  = lens _gcvvaircCropHintsAnnotation
      (\ s a -> s{_gcvvaircCropHintsAnnotation = a})

-- | If present, text (OCR) detection or document (OCR) text detection has
-- completed successfully. This annotation provides the structural
-- hierarchy for the OCR detected text.
gcvvaircFullTextAnnotation :: Lens' GoogleCloudVisionV1p1beta1AnnotateImageResponse (Maybe GoogleCloudVisionV1p1beta1TextAnnotation)
gcvvaircFullTextAnnotation
  = lens _gcvvaircFullTextAnnotation
      (\ s a -> s{_gcvvaircFullTextAnnotation = a})

-- | If present, image properties were extracted successfully.
gcvvaircImagePropertiesAnnotation :: Lens' GoogleCloudVisionV1p1beta1AnnotateImageResponse (Maybe GoogleCloudVisionV1p1beta1ImageProperties)
gcvvaircImagePropertiesAnnotation
  = lens _gcvvaircImagePropertiesAnnotation
      (\ s a -> s{_gcvvaircImagePropertiesAnnotation = a})

instance FromJSON
           GoogleCloudVisionV1p1beta1AnnotateImageResponse
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p1beta1AnnotateImageResponse"
              (\ o ->
                 GoogleCloudVisionV1p1beta1AnnotateImageResponse' <$>
                   (o .:? "logoAnnotations" .!= mempty) <*>
                     (o .:? "productSearchResults")
                     <*> (o .:? "context")
                     <*> (o .:? "labelAnnotations" .!= mempty)
                     <*> (o .:? "faceAnnotations" .!= mempty)
                     <*> (o .:? "error")
                     <*> (o .:? "webDetection")
                     <*> (o .:? "safeSearchAnnotation")
                     <*> (o .:? "landmarkAnnotations" .!= mempty)
                     <*> (o .:? "localizedObjectAnnotations" .!= mempty)
                     <*> (o .:? "textAnnotations" .!= mempty)
                     <*> (o .:? "cropHintsAnnotation")
                     <*> (o .:? "fullTextAnnotation")
                     <*> (o .:? "imagePropertiesAnnotation"))

instance ToJSON
           GoogleCloudVisionV1p1beta1AnnotateImageResponse
         where
        toJSON
          GoogleCloudVisionV1p1beta1AnnotateImageResponse'{..}
          = object
              (catMaybes
                 [("logoAnnotations" .=) <$> _gcvvaircLogoAnnotations,
                  ("productSearchResults" .=) <$>
                    _gcvvaircProductSearchResults,
                  ("context" .=) <$> _gcvvaircContext,
                  ("labelAnnotations" .=) <$>
                    _gcvvaircLabelAnnotations,
                  ("faceAnnotations" .=) <$> _gcvvaircFaceAnnotations,
                  ("error" .=) <$> _gcvvaircError,
                  ("webDetection" .=) <$> _gcvvaircWebDetection,
                  ("safeSearchAnnotation" .=) <$>
                    _gcvvaircSafeSearchAnnotation,
                  ("landmarkAnnotations" .=) <$>
                    _gcvvaircLandmarkAnnotations,
                  ("localizedObjectAnnotations" .=) <$>
                    _gcvvaircLocalizedObjectAnnotations,
                  ("textAnnotations" .=) <$> _gcvvaircTextAnnotations,
                  ("cropHintsAnnotation" .=) <$>
                    _gcvvaircCropHintsAnnotation,
                  ("fullTextAnnotation" .=) <$>
                    _gcvvaircFullTextAnnotation,
                  ("imagePropertiesAnnotation" .=) <$>
                    _gcvvaircImagePropertiesAnnotation])

-- | A face-specific landmark (for example, a face feature).
--
-- /See:/ 'googleCloudVisionV1p3beta1FaceAnnotationLandmark' smart constructor.
data GoogleCloudVisionV1p3beta1FaceAnnotationLandmark =
  GoogleCloudVisionV1p3beta1FaceAnnotationLandmark'
    { _gooType :: !(Maybe GoogleCloudVisionV1p3beta1FaceAnnotationLandmarkType)
    , _gooPosition :: !(Maybe GoogleCloudVisionV1p3beta1Position)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1FaceAnnotationLandmark' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooType'
--
-- * 'gooPosition'
googleCloudVisionV1p3beta1FaceAnnotationLandmark
    :: GoogleCloudVisionV1p3beta1FaceAnnotationLandmark
googleCloudVisionV1p3beta1FaceAnnotationLandmark =
  GoogleCloudVisionV1p3beta1FaceAnnotationLandmark'
    {_gooType = Nothing, _gooPosition = Nothing}


-- | Face landmark type.
gooType :: Lens' GoogleCloudVisionV1p3beta1FaceAnnotationLandmark (Maybe GoogleCloudVisionV1p3beta1FaceAnnotationLandmarkType)
gooType = lens _gooType (\ s a -> s{_gooType = a})

-- | Face landmark position.
gooPosition :: Lens' GoogleCloudVisionV1p3beta1FaceAnnotationLandmark (Maybe GoogleCloudVisionV1p3beta1Position)
gooPosition
  = lens _gooPosition (\ s a -> s{_gooPosition = a})

instance FromJSON
           GoogleCloudVisionV1p3beta1FaceAnnotationLandmark
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p3beta1FaceAnnotationLandmark"
              (\ o ->
                 GoogleCloudVisionV1p3beta1FaceAnnotationLandmark' <$>
                   (o .:? "type") <*> (o .:? "position"))

instance ToJSON
           GoogleCloudVisionV1p3beta1FaceAnnotationLandmark
         where
        toJSON
          GoogleCloudVisionV1p3beta1FaceAnnotationLandmark'{..}
          = object
              (catMaybes
                 [("type" .=) <$> _gooType,
                  ("position" .=) <$> _gooPosition])

-- | Metadata for the batch operations such as the current state. This is
-- included in the \`metadata\` field of the \`Operation\` returned by the
-- \`GetOperation\` call of the \`google::longrunning::Operations\`
-- service.
--
-- /See:/ 'googleCloudVisionV1p3beta1BatchOperationMetadata' smart constructor.
data GoogleCloudVisionV1p3beta1BatchOperationMetadata =
  GoogleCloudVisionV1p3beta1BatchOperationMetadata'
    { _gcvvbomcState :: !(Maybe GoogleCloudVisionV1p3beta1BatchOperationMetadataState)
    , _gcvvbomcEndTime :: !(Maybe DateTime')
    , _gcvvbomcSubmitTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1BatchOperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvbomcState'
--
-- * 'gcvvbomcEndTime'
--
-- * 'gcvvbomcSubmitTime'
googleCloudVisionV1p3beta1BatchOperationMetadata
    :: GoogleCloudVisionV1p3beta1BatchOperationMetadata
googleCloudVisionV1p3beta1BatchOperationMetadata =
  GoogleCloudVisionV1p3beta1BatchOperationMetadata'
    { _gcvvbomcState = Nothing
    , _gcvvbomcEndTime = Nothing
    , _gcvvbomcSubmitTime = Nothing
    }


-- | The current state of the batch operation.
gcvvbomcState :: Lens' GoogleCloudVisionV1p3beta1BatchOperationMetadata (Maybe GoogleCloudVisionV1p3beta1BatchOperationMetadataState)
gcvvbomcState
  = lens _gcvvbomcState
      (\ s a -> s{_gcvvbomcState = a})

-- | The time when the batch request is finished and
-- google.longrunning.Operation.done is set to true.
gcvvbomcEndTime :: Lens' GoogleCloudVisionV1p3beta1BatchOperationMetadata (Maybe UTCTime)
gcvvbomcEndTime
  = lens _gcvvbomcEndTime
      (\ s a -> s{_gcvvbomcEndTime = a})
      . mapping _DateTime

-- | The time when the batch request was submitted to the server.
gcvvbomcSubmitTime :: Lens' GoogleCloudVisionV1p3beta1BatchOperationMetadata (Maybe UTCTime)
gcvvbomcSubmitTime
  = lens _gcvvbomcSubmitTime
      (\ s a -> s{_gcvvbomcSubmitTime = a})
      . mapping _DateTime

instance FromJSON
           GoogleCloudVisionV1p3beta1BatchOperationMetadata
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p3beta1BatchOperationMetadata"
              (\ o ->
                 GoogleCloudVisionV1p3beta1BatchOperationMetadata' <$>
                   (o .:? "state") <*> (o .:? "endTime") <*>
                     (o .:? "submitTime"))

instance ToJSON
           GoogleCloudVisionV1p3beta1BatchOperationMetadata
         where
        toJSON
          GoogleCloudVisionV1p3beta1BatchOperationMetadata'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _gcvvbomcState,
                  ("endTime" .=) <$> _gcvvbomcEndTime,
                  ("submitTime" .=) <$> _gcvvbomcSubmitTime])

-- | Metadata for online images.
--
-- /See:/ 'webImage' smart constructor.
data WebImage =
  WebImage'
    { _wiScore :: !(Maybe (Textual Double))
    , _wiURL :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WebImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wiScore'
--
-- * 'wiURL'
webImage
    :: WebImage
webImage = WebImage' {_wiScore = Nothing, _wiURL = Nothing}


-- | (Deprecated) Overall relevancy score for the image.
wiScore :: Lens' WebImage (Maybe Double)
wiScore
  = lens _wiScore (\ s a -> s{_wiScore = a}) .
      mapping _Coerce

-- | The result image URL.
wiURL :: Lens' WebImage (Maybe Text)
wiURL = lens _wiURL (\ s a -> s{_wiURL = a})

instance FromJSON WebImage where
        parseJSON
          = withObject "WebImage"
              (\ o ->
                 WebImage' <$> (o .:? "score") <*> (o .:? "url"))

instance ToJSON WebImage where
        toJSON WebImage'{..}
          = object
              (catMaybes
                 [("score" .=) <$> _wiScore, ("url" .=) <$> _wiURL])

-- | Structural unit of text representing a number of words in certain order.
--
-- /See:/ 'googleCloudVisionV1p1beta1Paragraph' smart constructor.
data GoogleCloudVisionV1p1beta1Paragraph =
  GoogleCloudVisionV1p1beta1Paragraph'
    { _gcvvp1Property :: !(Maybe GoogleCloudVisionV1p1beta1TextAnnotationTextProperty)
    , _gcvvp1BoundingBox :: !(Maybe GoogleCloudVisionV1p1beta1BoundingPoly)
    , _gcvvp1Confidence :: !(Maybe (Textual Double))
    , _gcvvp1Words :: !(Maybe [GoogleCloudVisionV1p1beta1Word])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1Paragraph' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvp1Property'
--
-- * 'gcvvp1BoundingBox'
--
-- * 'gcvvp1Confidence'
--
-- * 'gcvvp1Words'
googleCloudVisionV1p1beta1Paragraph
    :: GoogleCloudVisionV1p1beta1Paragraph
googleCloudVisionV1p1beta1Paragraph =
  GoogleCloudVisionV1p1beta1Paragraph'
    { _gcvvp1Property = Nothing
    , _gcvvp1BoundingBox = Nothing
    , _gcvvp1Confidence = Nothing
    , _gcvvp1Words = Nothing
    }


-- | Additional information detected for the paragraph.
gcvvp1Property :: Lens' GoogleCloudVisionV1p1beta1Paragraph (Maybe GoogleCloudVisionV1p1beta1TextAnnotationTextProperty)
gcvvp1Property
  = lens _gcvvp1Property
      (\ s a -> s{_gcvvp1Property = a})

-- | The bounding box for the paragraph. The vertices are in the order of
-- top-left, top-right, bottom-right, bottom-left. When a rotation of the
-- bounding box is detected the rotation is represented as around the
-- top-left corner as defined when the text is read in the \'natural\'
-- orientation. For example: * when the text is horizontal it might look
-- like: 0----1 | | 3----2 * when it\'s rotated 180 degrees around the
-- top-left corner it becomes: 2----3 | | 1----0 and the vertex order will
-- still be (0, 1, 2, 3).
gcvvp1BoundingBox :: Lens' GoogleCloudVisionV1p1beta1Paragraph (Maybe GoogleCloudVisionV1p1beta1BoundingPoly)
gcvvp1BoundingBox
  = lens _gcvvp1BoundingBox
      (\ s a -> s{_gcvvp1BoundingBox = a})

-- | Confidence of the OCR results for the paragraph. Range [0, 1].
gcvvp1Confidence :: Lens' GoogleCloudVisionV1p1beta1Paragraph (Maybe Double)
gcvvp1Confidence
  = lens _gcvvp1Confidence
      (\ s a -> s{_gcvvp1Confidence = a})
      . mapping _Coerce

-- | List of all words in this paragraph.
gcvvp1Words :: Lens' GoogleCloudVisionV1p1beta1Paragraph [GoogleCloudVisionV1p1beta1Word]
gcvvp1Words
  = lens _gcvvp1Words (\ s a -> s{_gcvvp1Words = a}) .
      _Default
      . _Coerce

instance FromJSON GoogleCloudVisionV1p1beta1Paragraph
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p1beta1Paragraph"
              (\ o ->
                 GoogleCloudVisionV1p1beta1Paragraph' <$>
                   (o .:? "property") <*> (o .:? "boundingBox") <*>
                     (o .:? "confidence")
                     <*> (o .:? "words" .!= mempty))

instance ToJSON GoogleCloudVisionV1p1beta1Paragraph
         where
        toJSON GoogleCloudVisionV1p1beta1Paragraph'{..}
          = object
              (catMaybes
                 [("property" .=) <$> _gcvvp1Property,
                  ("boundingBox" .=) <$> _gcvvp1BoundingBox,
                  ("confidence" .=) <$> _gcvvp1Confidence,
                  ("words" .=) <$> _gcvvp1Words])

-- | Relevant information for the image from the Internet.
--
-- /See:/ 'webDetection' smart constructor.
data WebDetection =
  WebDetection'
    { _wdVisuallySimilarImages :: !(Maybe [WebImage])
    , _wdBestGuessLabels :: !(Maybe [WebLabel])
    , _wdPagesWithMatchingImages :: !(Maybe [WebPage])
    , _wdPartialMatchingImages :: !(Maybe [WebImage])
    , _wdFullMatchingImages :: !(Maybe [WebImage])
    , _wdWebEntities :: !(Maybe [WebEntity])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WebDetection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wdVisuallySimilarImages'
--
-- * 'wdBestGuessLabels'
--
-- * 'wdPagesWithMatchingImages'
--
-- * 'wdPartialMatchingImages'
--
-- * 'wdFullMatchingImages'
--
-- * 'wdWebEntities'
webDetection
    :: WebDetection
webDetection =
  WebDetection'
    { _wdVisuallySimilarImages = Nothing
    , _wdBestGuessLabels = Nothing
    , _wdPagesWithMatchingImages = Nothing
    , _wdPartialMatchingImages = Nothing
    , _wdFullMatchingImages = Nothing
    , _wdWebEntities = Nothing
    }


-- | The visually similar image results.
wdVisuallySimilarImages :: Lens' WebDetection [WebImage]
wdVisuallySimilarImages
  = lens _wdVisuallySimilarImages
      (\ s a -> s{_wdVisuallySimilarImages = a})
      . _Default
      . _Coerce

-- | The service\'s best guess as to the topic of the request image. Inferred
-- from similar images on the open web.
wdBestGuessLabels :: Lens' WebDetection [WebLabel]
wdBestGuessLabels
  = lens _wdBestGuessLabels
      (\ s a -> s{_wdBestGuessLabels = a})
      . _Default
      . _Coerce

-- | Web pages containing the matching images from the Internet.
wdPagesWithMatchingImages :: Lens' WebDetection [WebPage]
wdPagesWithMatchingImages
  = lens _wdPagesWithMatchingImages
      (\ s a -> s{_wdPagesWithMatchingImages = a})
      . _Default
      . _Coerce

-- | Partial matching images from the Internet. Those images are similar
-- enough to share some key-point features. For example an original image
-- will likely have partial matching for its crops.
wdPartialMatchingImages :: Lens' WebDetection [WebImage]
wdPartialMatchingImages
  = lens _wdPartialMatchingImages
      (\ s a -> s{_wdPartialMatchingImages = a})
      . _Default
      . _Coerce

-- | Fully matching images from the Internet. Can include resized copies of
-- the query image.
wdFullMatchingImages :: Lens' WebDetection [WebImage]
wdFullMatchingImages
  = lens _wdFullMatchingImages
      (\ s a -> s{_wdFullMatchingImages = a})
      . _Default
      . _Coerce

-- | Deduced entities from similar images on the Internet.
wdWebEntities :: Lens' WebDetection [WebEntity]
wdWebEntities
  = lens _wdWebEntities
      (\ s a -> s{_wdWebEntities = a})
      . _Default
      . _Coerce

instance FromJSON WebDetection where
        parseJSON
          = withObject "WebDetection"
              (\ o ->
                 WebDetection' <$>
                   (o .:? "visuallySimilarImages" .!= mempty) <*>
                     (o .:? "bestGuessLabels" .!= mempty)
                     <*> (o .:? "pagesWithMatchingImages" .!= mempty)
                     <*> (o .:? "partialMatchingImages" .!= mempty)
                     <*> (o .:? "fullMatchingImages" .!= mempty)
                     <*> (o .:? "webEntities" .!= mempty))

instance ToJSON WebDetection where
        toJSON WebDetection'{..}
          = object
              (catMaybes
                 [("visuallySimilarImages" .=) <$>
                    _wdVisuallySimilarImages,
                  ("bestGuessLabels" .=) <$> _wdBestGuessLabels,
                  ("pagesWithMatchingImages" .=) <$>
                    _wdPagesWithMatchingImages,
                  ("partialMatchingImages" .=) <$>
                    _wdPartialMatchingImages,
                  ("fullMatchingImages" .=) <$> _wdFullMatchingImages,
                  ("webEntities" .=) <$> _wdWebEntities])

-- | Response to a single file annotation request. A file may contain one or
-- more images, which individually have their own responses.
--
-- /See:/ 'annotateFileResponse' smart constructor.
data AnnotateFileResponse =
  AnnotateFileResponse'
    { _afrResponses :: !(Maybe [AnnotateImageResponse])
    , _afrError :: !(Maybe Status)
    , _afrInputConfig :: !(Maybe InputConfig)
    , _afrTotalPages :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AnnotateFileResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'afrResponses'
--
-- * 'afrError'
--
-- * 'afrInputConfig'
--
-- * 'afrTotalPages'
annotateFileResponse
    :: AnnotateFileResponse
annotateFileResponse =
  AnnotateFileResponse'
    { _afrResponses = Nothing
    , _afrError = Nothing
    , _afrInputConfig = Nothing
    , _afrTotalPages = Nothing
    }


-- | Individual responses to images found within the file. This field will be
-- empty if the \`error\` field is set.
afrResponses :: Lens' AnnotateFileResponse [AnnotateImageResponse]
afrResponses
  = lens _afrResponses (\ s a -> s{_afrResponses = a})
      . _Default
      . _Coerce

-- | If set, represents the error message for the failed request. The
-- \`responses\` field will not be set in this case.
afrError :: Lens' AnnotateFileResponse (Maybe Status)
afrError = lens _afrError (\ s a -> s{_afrError = a})

-- | Information about the file for which this response is generated.
afrInputConfig :: Lens' AnnotateFileResponse (Maybe InputConfig)
afrInputConfig
  = lens _afrInputConfig
      (\ s a -> s{_afrInputConfig = a})

-- | This field gives the total number of pages in the file.
afrTotalPages :: Lens' AnnotateFileResponse (Maybe Int32)
afrTotalPages
  = lens _afrTotalPages
      (\ s a -> s{_afrTotalPages = a})
      . mapping _Coerce

instance FromJSON AnnotateFileResponse where
        parseJSON
          = withObject "AnnotateFileResponse"
              (\ o ->
                 AnnotateFileResponse' <$>
                   (o .:? "responses" .!= mempty) <*> (o .:? "error")
                     <*> (o .:? "inputConfig")
                     <*> (o .:? "totalPages"))

instance ToJSON AnnotateFileResponse where
        toJSON AnnotateFileResponse'{..}
          = object
              (catMaybes
                 [("responses" .=) <$> _afrResponses,
                  ("error" .=) <$> _afrError,
                  ("inputConfig" .=) <$> _afrInputConfig,
                  ("totalPages" .=) <$> _afrTotalPages])

-- | Set of detected entity features.
--
-- /See:/ 'googleCloudVisionV1p3beta1EntityAnnotation' smart constructor.
data GoogleCloudVisionV1p3beta1EntityAnnotation =
  GoogleCloudVisionV1p3beta1EntityAnnotation'
    { _gcvvea1Score :: !(Maybe (Textual Double))
    , _gcvvea1Topicality :: !(Maybe (Textual Double))
    , _gcvvea1Locale :: !(Maybe Text)
    , _gcvvea1BoundingPoly :: !(Maybe GoogleCloudVisionV1p3beta1BoundingPoly)
    , _gcvvea1Confidence :: !(Maybe (Textual Double))
    , _gcvvea1Mid :: !(Maybe Text)
    , _gcvvea1Locations :: !(Maybe [GoogleCloudVisionV1p3beta1LocationInfo])
    , _gcvvea1Description :: !(Maybe Text)
    , _gcvvea1Properties :: !(Maybe [GoogleCloudVisionV1p3beta1Property])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1EntityAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvea1Score'
--
-- * 'gcvvea1Topicality'
--
-- * 'gcvvea1Locale'
--
-- * 'gcvvea1BoundingPoly'
--
-- * 'gcvvea1Confidence'
--
-- * 'gcvvea1Mid'
--
-- * 'gcvvea1Locations'
--
-- * 'gcvvea1Description'
--
-- * 'gcvvea1Properties'
googleCloudVisionV1p3beta1EntityAnnotation
    :: GoogleCloudVisionV1p3beta1EntityAnnotation
googleCloudVisionV1p3beta1EntityAnnotation =
  GoogleCloudVisionV1p3beta1EntityAnnotation'
    { _gcvvea1Score = Nothing
    , _gcvvea1Topicality = Nothing
    , _gcvvea1Locale = Nothing
    , _gcvvea1BoundingPoly = Nothing
    , _gcvvea1Confidence = Nothing
    , _gcvvea1Mid = Nothing
    , _gcvvea1Locations = Nothing
    , _gcvvea1Description = Nothing
    , _gcvvea1Properties = Nothing
    }


-- | Overall score of the result. Range [0, 1].
gcvvea1Score :: Lens' GoogleCloudVisionV1p3beta1EntityAnnotation (Maybe Double)
gcvvea1Score
  = lens _gcvvea1Score (\ s a -> s{_gcvvea1Score = a})
      . mapping _Coerce

-- | The relevancy of the ICA (Image Content Annotation) label to the image.
-- For example, the relevancy of \"tower\" is likely higher to an image
-- containing the detected \"Eiffel Tower\" than to an image containing a
-- detected distant towering building, even though the confidence that
-- there is a tower in each image may be the same. Range [0, 1].
gcvvea1Topicality :: Lens' GoogleCloudVisionV1p3beta1EntityAnnotation (Maybe Double)
gcvvea1Topicality
  = lens _gcvvea1Topicality
      (\ s a -> s{_gcvvea1Topicality = a})
      . mapping _Coerce

-- | The language code for the locale in which the entity textual
-- \`description\` is expressed.
gcvvea1Locale :: Lens' GoogleCloudVisionV1p3beta1EntityAnnotation (Maybe Text)
gcvvea1Locale
  = lens _gcvvea1Locale
      (\ s a -> s{_gcvvea1Locale = a})

-- | Image region to which this entity belongs. Not produced for
-- \`LABEL_DETECTION\` features.
gcvvea1BoundingPoly :: Lens' GoogleCloudVisionV1p3beta1EntityAnnotation (Maybe GoogleCloudVisionV1p3beta1BoundingPoly)
gcvvea1BoundingPoly
  = lens _gcvvea1BoundingPoly
      (\ s a -> s{_gcvvea1BoundingPoly = a})

-- | **Deprecated. Use \`score\` instead.** The accuracy of the entity
-- detection in an image. For example, for an image in which the \"Eiffel
-- Tower\" entity is detected, this field represents the confidence that
-- there is a tower in the query image. Range [0, 1].
gcvvea1Confidence :: Lens' GoogleCloudVisionV1p3beta1EntityAnnotation (Maybe Double)
gcvvea1Confidence
  = lens _gcvvea1Confidence
      (\ s a -> s{_gcvvea1Confidence = a})
      . mapping _Coerce

-- | Opaque entity ID. Some IDs may be available in [Google Knowledge Graph
-- Search API](https:\/\/developers.google.com\/knowledge-graph\/).
gcvvea1Mid :: Lens' GoogleCloudVisionV1p3beta1EntityAnnotation (Maybe Text)
gcvvea1Mid
  = lens _gcvvea1Mid (\ s a -> s{_gcvvea1Mid = a})

-- | The location information for the detected entity. Multiple
-- \`LocationInfo\` elements can be present because one location may
-- indicate the location of the scene in the image, and another location
-- may indicate the location of the place where the image was taken.
-- Location information is usually present for landmarks.
gcvvea1Locations :: Lens' GoogleCloudVisionV1p3beta1EntityAnnotation [GoogleCloudVisionV1p3beta1LocationInfo]
gcvvea1Locations
  = lens _gcvvea1Locations
      (\ s a -> s{_gcvvea1Locations = a})
      . _Default
      . _Coerce

-- | Entity textual description, expressed in its \`locale\` language.
gcvvea1Description :: Lens' GoogleCloudVisionV1p3beta1EntityAnnotation (Maybe Text)
gcvvea1Description
  = lens _gcvvea1Description
      (\ s a -> s{_gcvvea1Description = a})

-- | Some entities may have optional user-supplied \`Property\` (name\/value)
-- fields, such a score or string that qualifies the entity.
gcvvea1Properties :: Lens' GoogleCloudVisionV1p3beta1EntityAnnotation [GoogleCloudVisionV1p3beta1Property]
gcvvea1Properties
  = lens _gcvvea1Properties
      (\ s a -> s{_gcvvea1Properties = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p3beta1EntityAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p3beta1EntityAnnotation"
              (\ o ->
                 GoogleCloudVisionV1p3beta1EntityAnnotation' <$>
                   (o .:? "score") <*> (o .:? "topicality") <*>
                     (o .:? "locale")
                     <*> (o .:? "boundingPoly")
                     <*> (o .:? "confidence")
                     <*> (o .:? "mid")
                     <*> (o .:? "locations" .!= mempty)
                     <*> (o .:? "description")
                     <*> (o .:? "properties" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p3beta1EntityAnnotation
         where
        toJSON
          GoogleCloudVisionV1p3beta1EntityAnnotation'{..}
          = object
              (catMaybes
                 [("score" .=) <$> _gcvvea1Score,
                  ("topicality" .=) <$> _gcvvea1Topicality,
                  ("locale" .=) <$> _gcvvea1Locale,
                  ("boundingPoly" .=) <$> _gcvvea1BoundingPoly,
                  ("confidence" .=) <$> _gcvvea1Confidence,
                  ("mid" .=) <$> _gcvvea1Mid,
                  ("locations" .=) <$> _gcvvea1Locations,
                  ("description" .=) <$> _gcvvea1Description,
                  ("properties" .=) <$> _gcvvea1Properties])

-- | Detected start or end of a structural component.
--
-- /See:/ 'googleCloudVisionV1p4beta1TextAnnotationDetectedBreak' smart constructor.
data GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak =
  GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak'
    { _gcvvtadbcIsPrefix :: !(Maybe Bool)
    , _gcvvtadbcType :: !(Maybe GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreakType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvtadbcIsPrefix'
--
-- * 'gcvvtadbcType'
googleCloudVisionV1p4beta1TextAnnotationDetectedBreak
    :: GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak
googleCloudVisionV1p4beta1TextAnnotationDetectedBreak =
  GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak'
    {_gcvvtadbcIsPrefix = Nothing, _gcvvtadbcType = Nothing}


-- | True if break prepends the element.
gcvvtadbcIsPrefix :: Lens' GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak (Maybe Bool)
gcvvtadbcIsPrefix
  = lens _gcvvtadbcIsPrefix
      (\ s a -> s{_gcvvtadbcIsPrefix = a})

-- | Detected break type.
gcvvtadbcType :: Lens' GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak (Maybe GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreakType)
gcvvtadbcType
  = lens _gcvvtadbcType
      (\ s a -> s{_gcvvtadbcType = a})

instance FromJSON
           GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak"
              (\ o ->
                 GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak'
                   <$> (o .:? "isPrefix") <*> (o .:? "type"))

instance ToJSON
           GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak
         where
        toJSON
          GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak'{..}
          = object
              (catMaybes
                 [("isPrefix" .=) <$> _gcvvtadbcIsPrefix,
                  ("type" .=) <$> _gcvvtadbcType])

-- | Information about the products similar to a single product in a query
-- image.
--
-- /See:/ 'groupedResult' smart constructor.
data GroupedResult =
  GroupedResult'
    { _grResults :: !(Maybe [Result])
    , _grBoundingPoly :: !(Maybe BoundingPoly)
    , _grObjectAnnotations :: !(Maybe [ObjectAnnotation])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupedResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grResults'
--
-- * 'grBoundingPoly'
--
-- * 'grObjectAnnotations'
groupedResult
    :: GroupedResult
groupedResult =
  GroupedResult'
    { _grResults = Nothing
    , _grBoundingPoly = Nothing
    , _grObjectAnnotations = Nothing
    }


-- | List of results, one for each product match.
grResults :: Lens' GroupedResult [Result]
grResults
  = lens _grResults (\ s a -> s{_grResults = a}) .
      _Default
      . _Coerce

-- | The bounding polygon around the product detected in the query image.
grBoundingPoly :: Lens' GroupedResult (Maybe BoundingPoly)
grBoundingPoly
  = lens _grBoundingPoly
      (\ s a -> s{_grBoundingPoly = a})

-- | List of generic predictions for the object in the bounding box.
grObjectAnnotations :: Lens' GroupedResult [ObjectAnnotation]
grObjectAnnotations
  = lens _grObjectAnnotations
      (\ s a -> s{_grObjectAnnotations = a})
      . _Default
      . _Coerce

instance FromJSON GroupedResult where
        parseJSON
          = withObject "GroupedResult"
              (\ o ->
                 GroupedResult' <$>
                   (o .:? "results" .!= mempty) <*>
                     (o .:? "boundingPoly")
                     <*> (o .:? "objectAnnotations" .!= mempty))

instance ToJSON GroupedResult where
        toJSON GroupedResult'{..}
          = object
              (catMaybes
                 [("results" .=) <$> _grResults,
                  ("boundingPoly" .=) <$> _grBoundingPoly,
                  ("objectAnnotations" .=) <$> _grObjectAnnotations])

-- | Detected page from OCR.
--
-- /See:/ 'googleCloudVisionV1p4beta1Page' smart constructor.
data GoogleCloudVisionV1p4beta1Page =
  GoogleCloudVisionV1p4beta1Page'
    { _goo1Property :: !(Maybe GoogleCloudVisionV1p4beta1TextAnnotationTextProperty)
    , _goo1Height :: !(Maybe (Textual Int32))
    , _goo1Blocks :: !(Maybe [GoogleCloudVisionV1p4beta1Block])
    , _goo1Width :: !(Maybe (Textual Int32))
    , _goo1Confidence :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1Page' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'goo1Property'
--
-- * 'goo1Height'
--
-- * 'goo1Blocks'
--
-- * 'goo1Width'
--
-- * 'goo1Confidence'
googleCloudVisionV1p4beta1Page
    :: GoogleCloudVisionV1p4beta1Page
googleCloudVisionV1p4beta1Page =
  GoogleCloudVisionV1p4beta1Page'
    { _goo1Property = Nothing
    , _goo1Height = Nothing
    , _goo1Blocks = Nothing
    , _goo1Width = Nothing
    , _goo1Confidence = Nothing
    }


-- | Additional information detected on the page.
goo1Property :: Lens' GoogleCloudVisionV1p4beta1Page (Maybe GoogleCloudVisionV1p4beta1TextAnnotationTextProperty)
goo1Property
  = lens _goo1Property (\ s a -> s{_goo1Property = a})

-- | Page height. For PDFs the unit is points. For images (including TIFFs)
-- the unit is pixels.
goo1Height :: Lens' GoogleCloudVisionV1p4beta1Page (Maybe Int32)
goo1Height
  = lens _goo1Height (\ s a -> s{_goo1Height = a}) .
      mapping _Coerce

-- | List of blocks of text, images etc on this page.
goo1Blocks :: Lens' GoogleCloudVisionV1p4beta1Page [GoogleCloudVisionV1p4beta1Block]
goo1Blocks
  = lens _goo1Blocks (\ s a -> s{_goo1Blocks = a}) .
      _Default
      . _Coerce

-- | Page width. For PDFs the unit is points. For images (including TIFFs)
-- the unit is pixels.
goo1Width :: Lens' GoogleCloudVisionV1p4beta1Page (Maybe Int32)
goo1Width
  = lens _goo1Width (\ s a -> s{_goo1Width = a}) .
      mapping _Coerce

-- | Confidence of the OCR results on the page. Range [0, 1].
goo1Confidence :: Lens' GoogleCloudVisionV1p4beta1Page (Maybe Double)
goo1Confidence
  = lens _goo1Confidence
      (\ s a -> s{_goo1Confidence = a})
      . mapping _Coerce

instance FromJSON GoogleCloudVisionV1p4beta1Page
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p4beta1Page"
              (\ o ->
                 GoogleCloudVisionV1p4beta1Page' <$>
                   (o .:? "property") <*> (o .:? "height") <*>
                     (o .:? "blocks" .!= mempty)
                     <*> (o .:? "width")
                     <*> (o .:? "confidence"))

instance ToJSON GoogleCloudVisionV1p4beta1Page where
        toJSON GoogleCloudVisionV1p4beta1Page'{..}
          = object
              (catMaybes
                 [("property" .=) <$> _goo1Property,
                  ("height" .=) <$> _goo1Height,
                  ("blocks" .=) <$> _goo1Blocks,
                  ("width" .=) <$> _goo1Width,
                  ("confidence" .=) <$> _goo1Confidence])

-- | The Google Cloud Storage location where the output will be written to.
--
-- /See:/ 'googleCloudVisionV1p4beta1GcsDestination' smart constructor.
newtype GoogleCloudVisionV1p4beta1GcsDestination =
  GoogleCloudVisionV1p4beta1GcsDestination'
    { _gcvvgdcURI :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1GcsDestination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvgdcURI'
googleCloudVisionV1p4beta1GcsDestination
    :: GoogleCloudVisionV1p4beta1GcsDestination
googleCloudVisionV1p4beta1GcsDestination =
  GoogleCloudVisionV1p4beta1GcsDestination' {_gcvvgdcURI = Nothing}


-- | Google Cloud Storage URI prefix where the results will be stored.
-- Results will be in JSON format and preceded by its corresponding input
-- URI prefix. This field can either represent a gcs file prefix or gcs
-- directory. In either case, the uri should be unique because in order to
-- get all of the output files, you will need to do a wildcard gcs search
-- on the uri prefix you provide. Examples: * File Prefix:
-- gs:\/\/bucket-name\/here\/filenameprefix The output files will be
-- created in gs:\/\/bucket-name\/here\/ and the names of the output files
-- will begin with \"filenameprefix\". * Directory Prefix:
-- gs:\/\/bucket-name\/some\/location\/ The output files will be created in
-- gs:\/\/bucket-name\/some\/location\/ and the names of the output files
-- could be anything because there was no filename prefix specified. If
-- multiple outputs, each response is still AnnotateFileResponse, each of
-- which contains some subset of the full list of AnnotateImageResponse.
-- Multiple outputs can happen if, for example, the output JSON is too
-- large and overflows into multiple sharded files.
gcvvgdcURI :: Lens' GoogleCloudVisionV1p4beta1GcsDestination (Maybe Text)
gcvvgdcURI
  = lens _gcvvgdcURI (\ s a -> s{_gcvvgdcURI = a})

instance FromJSON
           GoogleCloudVisionV1p4beta1GcsDestination
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p4beta1GcsDestination"
              (\ o ->
                 GoogleCloudVisionV1p4beta1GcsDestination' <$>
                   (o .:? "uri"))

instance ToJSON
           GoogleCloudVisionV1p4beta1GcsDestination
         where
        toJSON GoogleCloudVisionV1p4beta1GcsDestination'{..}
          = object (catMaybes [("uri" .=) <$> _gcvvgdcURI])

-- | A \`ReferenceImage\` represents a product image and its associated
-- metadata, such as bounding boxes.
--
-- /See:/ 'googleCloudVisionV1p3beta1ReferenceImage' smart constructor.
data GoogleCloudVisionV1p3beta1ReferenceImage =
  GoogleCloudVisionV1p3beta1ReferenceImage'
    { _gcvvricURI :: !(Maybe Text)
    , _gcvvricName :: !(Maybe Text)
    , _gcvvricBoundingPolys :: !(Maybe [GoogleCloudVisionV1p3beta1BoundingPoly])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1ReferenceImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvricURI'
--
-- * 'gcvvricName'
--
-- * 'gcvvricBoundingPolys'
googleCloudVisionV1p3beta1ReferenceImage
    :: GoogleCloudVisionV1p3beta1ReferenceImage
googleCloudVisionV1p3beta1ReferenceImage =
  GoogleCloudVisionV1p3beta1ReferenceImage'
    { _gcvvricURI = Nothing
    , _gcvvricName = Nothing
    , _gcvvricBoundingPolys = Nothing
    }


-- | Required. The Google Cloud Storage URI of the reference image. The URI
-- must start with \`gs:\/\/\`.
gcvvricURI :: Lens' GoogleCloudVisionV1p3beta1ReferenceImage (Maybe Text)
gcvvricURI
  = lens _gcvvricURI (\ s a -> s{_gcvvricURI = a})

-- | The resource name of the reference image. Format is:
-- \`projects\/PROJECT_ID\/locations\/LOC_ID\/products\/PRODUCT_ID\/referenceImages\/IMAGE_ID\`.
-- This field is ignored when creating a reference image.
gcvvricName :: Lens' GoogleCloudVisionV1p3beta1ReferenceImage (Maybe Text)
gcvvricName
  = lens _gcvvricName (\ s a -> s{_gcvvricName = a})

-- | Optional. Bounding polygons around the areas of interest in the
-- reference image. If this field is empty, the system will try to detect
-- regions of interest. At most 10 bounding polygons will be used. The
-- provided shape is converted into a non-rotated rectangle. Once
-- converted, the small edge of the rectangle must be greater than or equal
-- to 300 pixels. The aspect ratio must be 1:4 or less (i.e. 1:3 is ok; 1:5
-- is not).
gcvvricBoundingPolys :: Lens' GoogleCloudVisionV1p3beta1ReferenceImage [GoogleCloudVisionV1p3beta1BoundingPoly]
gcvvricBoundingPolys
  = lens _gcvvricBoundingPolys
      (\ s a -> s{_gcvvricBoundingPolys = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p3beta1ReferenceImage
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p3beta1ReferenceImage"
              (\ o ->
                 GoogleCloudVisionV1p3beta1ReferenceImage' <$>
                   (o .:? "uri") <*> (o .:? "name") <*>
                     (o .:? "boundingPolys" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p3beta1ReferenceImage
         where
        toJSON GoogleCloudVisionV1p3beta1ReferenceImage'{..}
          = object
              (catMaybes
                 [("uri" .=) <$> _gcvvricURI,
                  ("name" .=) <$> _gcvvricName,
                  ("boundingPolys" .=) <$> _gcvvricBoundingPolys])

-- | Detected entity location information.
--
-- /See:/ 'googleCloudVisionV1p4beta1LocationInfo' smart constructor.
newtype GoogleCloudVisionV1p4beta1LocationInfo =
  GoogleCloudVisionV1p4beta1LocationInfo'
    { _gLatLng :: Maybe LatLng
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1LocationInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gLatLng'
googleCloudVisionV1p4beta1LocationInfo
    :: GoogleCloudVisionV1p4beta1LocationInfo
googleCloudVisionV1p4beta1LocationInfo =
  GoogleCloudVisionV1p4beta1LocationInfo' {_gLatLng = Nothing}


-- | lat\/long location coordinates.
gLatLng :: Lens' GoogleCloudVisionV1p4beta1LocationInfo (Maybe LatLng)
gLatLng = lens _gLatLng (\ s a -> s{_gLatLng = a})

instance FromJSON
           GoogleCloudVisionV1p4beta1LocationInfo
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p4beta1LocationInfo"
              (\ o ->
                 GoogleCloudVisionV1p4beta1LocationInfo' <$>
                   (o .:? "latLng"))

instance ToJSON
           GoogleCloudVisionV1p4beta1LocationInfo
         where
        toJSON GoogleCloudVisionV1p4beta1LocationInfo'{..}
          = object (catMaybes [("latLng" .=) <$> _gLatLng])

-- | Set of detected objects with bounding boxes.
--
-- /See:/ 'googleCloudVisionV1p2beta1LocalizedObjectAnnotation' smart constructor.
data GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation =
  GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation'
    { _gcvvloa1LanguageCode :: !(Maybe Text)
    , _gcvvloa1Score :: !(Maybe (Textual Double))
    , _gcvvloa1BoundingPoly :: !(Maybe GoogleCloudVisionV1p2beta1BoundingPoly)
    , _gcvvloa1Name :: !(Maybe Text)
    , _gcvvloa1Mid :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvloa1LanguageCode'
--
-- * 'gcvvloa1Score'
--
-- * 'gcvvloa1BoundingPoly'
--
-- * 'gcvvloa1Name'
--
-- * 'gcvvloa1Mid'
googleCloudVisionV1p2beta1LocalizedObjectAnnotation
    :: GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation
googleCloudVisionV1p2beta1LocalizedObjectAnnotation =
  GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation'
    { _gcvvloa1LanguageCode = Nothing
    , _gcvvloa1Score = Nothing
    , _gcvvloa1BoundingPoly = Nothing
    , _gcvvloa1Name = Nothing
    , _gcvvloa1Mid = Nothing
    }


-- | The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more
-- information, see
-- http:\/\/www.unicode.org\/reports\/tr35\/#Unicode_locale_identifier.
gcvvloa1LanguageCode :: Lens' GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation (Maybe Text)
gcvvloa1LanguageCode
  = lens _gcvvloa1LanguageCode
      (\ s a -> s{_gcvvloa1LanguageCode = a})

-- | Score of the result. Range [0, 1].
gcvvloa1Score :: Lens' GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation (Maybe Double)
gcvvloa1Score
  = lens _gcvvloa1Score
      (\ s a -> s{_gcvvloa1Score = a})
      . mapping _Coerce

-- | Image region to which this object belongs. This must be populated.
gcvvloa1BoundingPoly :: Lens' GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation (Maybe GoogleCloudVisionV1p2beta1BoundingPoly)
gcvvloa1BoundingPoly
  = lens _gcvvloa1BoundingPoly
      (\ s a -> s{_gcvvloa1BoundingPoly = a})

-- | Object name, expressed in its \`language_code\` language.
gcvvloa1Name :: Lens' GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation (Maybe Text)
gcvvloa1Name
  = lens _gcvvloa1Name (\ s a -> s{_gcvvloa1Name = a})

-- | Object ID that should align with EntityAnnotation mid.
gcvvloa1Mid :: Lens' GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation (Maybe Text)
gcvvloa1Mid
  = lens _gcvvloa1Mid (\ s a -> s{_gcvvloa1Mid = a})

instance FromJSON
           GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation"
              (\ o ->
                 GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation'
                   <$>
                   (o .:? "languageCode") <*> (o .:? "score") <*>
                     (o .:? "boundingPoly")
                     <*> (o .:? "name")
                     <*> (o .:? "mid"))

instance ToJSON
           GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation
         where
        toJSON
          GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _gcvvloa1LanguageCode,
                  ("score" .=) <$> _gcvvloa1Score,
                  ("boundingPoly" .=) <$> _gcvvloa1BoundingPoly,
                  ("name" .=) <$> _gcvvloa1Name,
                  ("mid" .=) <$> _gcvvloa1Mid])

-- | Logical element on the page.
--
-- /See:/ 'googleCloudVisionV1p3beta1Block' smart constructor.
data GoogleCloudVisionV1p3beta1Block =
  GoogleCloudVisionV1p3beta1Block'
    { _gcvvbcProperty :: !(Maybe GoogleCloudVisionV1p3beta1TextAnnotationTextProperty)
    , _gcvvbcBoundingBox :: !(Maybe GoogleCloudVisionV1p3beta1BoundingPoly)
    , _gcvvbcParagraphs :: !(Maybe [GoogleCloudVisionV1p3beta1Paragraph])
    , _gcvvbcConfidence :: !(Maybe (Textual Double))
    , _gcvvbcBlockType :: !(Maybe GoogleCloudVisionV1p3beta1BlockBlockType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1Block' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvbcProperty'
--
-- * 'gcvvbcBoundingBox'
--
-- * 'gcvvbcParagraphs'
--
-- * 'gcvvbcConfidence'
--
-- * 'gcvvbcBlockType'
googleCloudVisionV1p3beta1Block
    :: GoogleCloudVisionV1p3beta1Block
googleCloudVisionV1p3beta1Block =
  GoogleCloudVisionV1p3beta1Block'
    { _gcvvbcProperty = Nothing
    , _gcvvbcBoundingBox = Nothing
    , _gcvvbcParagraphs = Nothing
    , _gcvvbcConfidence = Nothing
    , _gcvvbcBlockType = Nothing
    }


-- | Additional information detected for the block.
gcvvbcProperty :: Lens' GoogleCloudVisionV1p3beta1Block (Maybe GoogleCloudVisionV1p3beta1TextAnnotationTextProperty)
gcvvbcProperty
  = lens _gcvvbcProperty
      (\ s a -> s{_gcvvbcProperty = a})

-- | The bounding box for the block. The vertices are in the order of
-- top-left, top-right, bottom-right, bottom-left. When a rotation of the
-- bounding box is detected the rotation is represented as around the
-- top-left corner as defined when the text is read in the \'natural\'
-- orientation. For example: * when the text is horizontal it might look
-- like: 0----1 | | 3----2 * when it\'s rotated 180 degrees around the
-- top-left corner it becomes: 2----3 | | 1----0 and the vertex order will
-- still be (0, 1, 2, 3).
gcvvbcBoundingBox :: Lens' GoogleCloudVisionV1p3beta1Block (Maybe GoogleCloudVisionV1p3beta1BoundingPoly)
gcvvbcBoundingBox
  = lens _gcvvbcBoundingBox
      (\ s a -> s{_gcvvbcBoundingBox = a})

-- | List of paragraphs in this block (if this blocks is of type text).
gcvvbcParagraphs :: Lens' GoogleCloudVisionV1p3beta1Block [GoogleCloudVisionV1p3beta1Paragraph]
gcvvbcParagraphs
  = lens _gcvvbcParagraphs
      (\ s a -> s{_gcvvbcParagraphs = a})
      . _Default
      . _Coerce

-- | Confidence of the OCR results on the block. Range [0, 1].
gcvvbcConfidence :: Lens' GoogleCloudVisionV1p3beta1Block (Maybe Double)
gcvvbcConfidence
  = lens _gcvvbcConfidence
      (\ s a -> s{_gcvvbcConfidence = a})
      . mapping _Coerce

-- | Detected block type (text, image etc) for this block.
gcvvbcBlockType :: Lens' GoogleCloudVisionV1p3beta1Block (Maybe GoogleCloudVisionV1p3beta1BlockBlockType)
gcvvbcBlockType
  = lens _gcvvbcBlockType
      (\ s a -> s{_gcvvbcBlockType = a})

instance FromJSON GoogleCloudVisionV1p3beta1Block
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p3beta1Block"
              (\ o ->
                 GoogleCloudVisionV1p3beta1Block' <$>
                   (o .:? "property") <*> (o .:? "boundingBox") <*>
                     (o .:? "paragraphs" .!= mempty)
                     <*> (o .:? "confidence")
                     <*> (o .:? "blockType"))

instance ToJSON GoogleCloudVisionV1p3beta1Block where
        toJSON GoogleCloudVisionV1p3beta1Block'{..}
          = object
              (catMaybes
                 [("property" .=) <$> _gcvvbcProperty,
                  ("boundingBox" .=) <$> _gcvvbcBoundingBox,
                  ("paragraphs" .=) <$> _gcvvbcParagraphs,
                  ("confidence" .=) <$> _gcvvbcConfidence,
                  ("blockType" .=) <$> _gcvvbcBlockType])

-- | A word representation.
--
-- /See:/ 'googleCloudVisionV1p4beta1Word' smart constructor.
data GoogleCloudVisionV1p4beta1Word =
  GoogleCloudVisionV1p4beta1Word'
    { _gcvvw2Property :: !(Maybe GoogleCloudVisionV1p4beta1TextAnnotationTextProperty)
    , _gcvvw2BoundingBox :: !(Maybe GoogleCloudVisionV1p4beta1BoundingPoly)
    , _gcvvw2Symbols :: !(Maybe [GoogleCloudVisionV1p4beta1Symbol])
    , _gcvvw2Confidence :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1Word' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvw2Property'
--
-- * 'gcvvw2BoundingBox'
--
-- * 'gcvvw2Symbols'
--
-- * 'gcvvw2Confidence'
googleCloudVisionV1p4beta1Word
    :: GoogleCloudVisionV1p4beta1Word
googleCloudVisionV1p4beta1Word =
  GoogleCloudVisionV1p4beta1Word'
    { _gcvvw2Property = Nothing
    , _gcvvw2BoundingBox = Nothing
    , _gcvvw2Symbols = Nothing
    , _gcvvw2Confidence = Nothing
    }


-- | Additional information detected for the word.
gcvvw2Property :: Lens' GoogleCloudVisionV1p4beta1Word (Maybe GoogleCloudVisionV1p4beta1TextAnnotationTextProperty)
gcvvw2Property
  = lens _gcvvw2Property
      (\ s a -> s{_gcvvw2Property = a})

-- | The bounding box for the word. The vertices are in the order of
-- top-left, top-right, bottom-right, bottom-left. When a rotation of the
-- bounding box is detected the rotation is represented as around the
-- top-left corner as defined when the text is read in the \'natural\'
-- orientation. For example: * when the text is horizontal it might look
-- like: 0----1 | | 3----2 * when it\'s rotated 180 degrees around the
-- top-left corner it becomes: 2----3 | | 1----0 and the vertex order will
-- still be (0, 1, 2, 3).
gcvvw2BoundingBox :: Lens' GoogleCloudVisionV1p4beta1Word (Maybe GoogleCloudVisionV1p4beta1BoundingPoly)
gcvvw2BoundingBox
  = lens _gcvvw2BoundingBox
      (\ s a -> s{_gcvvw2BoundingBox = a})

-- | List of symbols in the word. The order of the symbols follows the
-- natural reading order.
gcvvw2Symbols :: Lens' GoogleCloudVisionV1p4beta1Word [GoogleCloudVisionV1p4beta1Symbol]
gcvvw2Symbols
  = lens _gcvvw2Symbols
      (\ s a -> s{_gcvvw2Symbols = a})
      . _Default
      . _Coerce

-- | Confidence of the OCR results for the word. Range [0, 1].
gcvvw2Confidence :: Lens' GoogleCloudVisionV1p4beta1Word (Maybe Double)
gcvvw2Confidence
  = lens _gcvvw2Confidence
      (\ s a -> s{_gcvvw2Confidence = a})
      . mapping _Coerce

instance FromJSON GoogleCloudVisionV1p4beta1Word
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p4beta1Word"
              (\ o ->
                 GoogleCloudVisionV1p4beta1Word' <$>
                   (o .:? "property") <*> (o .:? "boundingBox") <*>
                     (o .:? "symbols" .!= mempty)
                     <*> (o .:? "confidence"))

instance ToJSON GoogleCloudVisionV1p4beta1Word where
        toJSON GoogleCloudVisionV1p4beta1Word'{..}
          = object
              (catMaybes
                 [("property" .=) <$> _gcvvw2Property,
                  ("boundingBox" .=) <$> _gcvvw2BoundingBox,
                  ("symbols" .=) <$> _gcvvw2Symbols,
                  ("confidence" .=) <$> _gcvvw2Confidence])

-- | A vertex represents a 2D point in the image. NOTE: the vertex
-- coordinates are in the same scale as the original image.
--
-- /See:/ 'googleCloudVisionV1p2beta1Vertex' smart constructor.
data GoogleCloudVisionV1p2beta1Vertex =
  GoogleCloudVisionV1p2beta1Vertex'
    { _ggX :: !(Maybe (Textual Int32))
    , _ggY :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1Vertex' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggX'
--
-- * 'ggY'
googleCloudVisionV1p2beta1Vertex
    :: GoogleCloudVisionV1p2beta1Vertex
googleCloudVisionV1p2beta1Vertex =
  GoogleCloudVisionV1p2beta1Vertex' {_ggX = Nothing, _ggY = Nothing}


-- | X coordinate.
ggX :: Lens' GoogleCloudVisionV1p2beta1Vertex (Maybe Int32)
ggX
  = lens _ggX (\ s a -> s{_ggX = a}) . mapping _Coerce

-- | Y coordinate.
ggY :: Lens' GoogleCloudVisionV1p2beta1Vertex (Maybe Int32)
ggY
  = lens _ggY (\ s a -> s{_ggY = a}) . mapping _Coerce

instance FromJSON GoogleCloudVisionV1p2beta1Vertex
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p2beta1Vertex"
              (\ o ->
                 GoogleCloudVisionV1p2beta1Vertex' <$>
                   (o .:? "x") <*> (o .:? "y"))

instance ToJSON GoogleCloudVisionV1p2beta1Vertex
         where
        toJSON GoogleCloudVisionV1p2beta1Vertex'{..}
          = object
              (catMaybes [("x" .=) <$> _ggX, ("y" .=) <$> _ggY])

-- | The response for a single offline file annotation request.
--
-- /See:/ 'googleCloudVisionV1p3beta1AsyncAnnotateFileResponse' smart constructor.
newtype GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse =
  GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse'
    { _gooOutputConfig :: Maybe GoogleCloudVisionV1p3beta1OutputConfig
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooOutputConfig'
googleCloudVisionV1p3beta1AsyncAnnotateFileResponse
    :: GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse
googleCloudVisionV1p3beta1AsyncAnnotateFileResponse =
  GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse'
    {_gooOutputConfig = Nothing}


-- | The output location and metadata from AsyncAnnotateFileRequest.
gooOutputConfig :: Lens' GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse (Maybe GoogleCloudVisionV1p3beta1OutputConfig)
gooOutputConfig
  = lens _gooOutputConfig
      (\ s a -> s{_gooOutputConfig = a})

instance FromJSON
           GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse"
              (\ o ->
                 GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse'
                   <$> (o .:? "outputConfig"))

instance ToJSON
           GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse
         where
        toJSON
          GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse'{..}
          = object
              (catMaybes
                 [("outputConfig" .=) <$> _gooOutputConfig])

-- | Prediction for what the object in the bounding box is.
--
-- /See:/ 'objectAnnotation' smart constructor.
data ObjectAnnotation =
  ObjectAnnotation'
    { _oaLanguageCode :: !(Maybe Text)
    , _oaScore :: !(Maybe (Textual Double))
    , _oaName :: !(Maybe Text)
    , _oaMid :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ObjectAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oaLanguageCode'
--
-- * 'oaScore'
--
-- * 'oaName'
--
-- * 'oaMid'
objectAnnotation
    :: ObjectAnnotation
objectAnnotation =
  ObjectAnnotation'
    { _oaLanguageCode = Nothing
    , _oaScore = Nothing
    , _oaName = Nothing
    , _oaMid = Nothing
    }


-- | The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more
-- information, see
-- http:\/\/www.unicode.org\/reports\/tr35\/#Unicode_locale_identifier.
oaLanguageCode :: Lens' ObjectAnnotation (Maybe Text)
oaLanguageCode
  = lens _oaLanguageCode
      (\ s a -> s{_oaLanguageCode = a})

-- | Score of the result. Range [0, 1].
oaScore :: Lens' ObjectAnnotation (Maybe Double)
oaScore
  = lens _oaScore (\ s a -> s{_oaScore = a}) .
      mapping _Coerce

-- | Object name, expressed in its \`language_code\` language.
oaName :: Lens' ObjectAnnotation (Maybe Text)
oaName = lens _oaName (\ s a -> s{_oaName = a})

-- | Object ID that should align with EntityAnnotation mid.
oaMid :: Lens' ObjectAnnotation (Maybe Text)
oaMid = lens _oaMid (\ s a -> s{_oaMid = a})

instance FromJSON ObjectAnnotation where
        parseJSON
          = withObject "ObjectAnnotation"
              (\ o ->
                 ObjectAnnotation' <$>
                   (o .:? "languageCode") <*> (o .:? "score") <*>
                     (o .:? "name")
                     <*> (o .:? "mid"))

instance ToJSON ObjectAnnotation where
        toJSON ObjectAnnotation'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _oaLanguageCode,
                  ("score" .=) <$> _oaScore, ("name" .=) <$> _oaName,
                  ("mid" .=) <$> _oaMid])

-- | Additional information detected on the structural component.
--
-- /See:/ 'googleCloudVisionV1p2beta1TextAnnotationTextProperty' smart constructor.
data GoogleCloudVisionV1p2beta1TextAnnotationTextProperty =
  GoogleCloudVisionV1p2beta1TextAnnotationTextProperty'
    { _gooDetectedLanguages :: !(Maybe [GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage])
    , _gooDetectedBreak :: !(Maybe GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1TextAnnotationTextProperty' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooDetectedLanguages'
--
-- * 'gooDetectedBreak'
googleCloudVisionV1p2beta1TextAnnotationTextProperty
    :: GoogleCloudVisionV1p2beta1TextAnnotationTextProperty
googleCloudVisionV1p2beta1TextAnnotationTextProperty =
  GoogleCloudVisionV1p2beta1TextAnnotationTextProperty'
    {_gooDetectedLanguages = Nothing, _gooDetectedBreak = Nothing}


-- | A list of detected languages together with confidence.
gooDetectedLanguages :: Lens' GoogleCloudVisionV1p2beta1TextAnnotationTextProperty [GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage]
gooDetectedLanguages
  = lens _gooDetectedLanguages
      (\ s a -> s{_gooDetectedLanguages = a})
      . _Default
      . _Coerce

-- | Detected start or end of a text segment.
gooDetectedBreak :: Lens' GoogleCloudVisionV1p2beta1TextAnnotationTextProperty (Maybe GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak)
gooDetectedBreak
  = lens _gooDetectedBreak
      (\ s a -> s{_gooDetectedBreak = a})

instance FromJSON
           GoogleCloudVisionV1p2beta1TextAnnotationTextProperty
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p2beta1TextAnnotationTextProperty"
              (\ o ->
                 GoogleCloudVisionV1p2beta1TextAnnotationTextProperty'
                   <$>
                   (o .:? "detectedLanguages" .!= mempty) <*>
                     (o .:? "detectedBreak"))

instance ToJSON
           GoogleCloudVisionV1p2beta1TextAnnotationTextProperty
         where
        toJSON
          GoogleCloudVisionV1p2beta1TextAnnotationTextProperty'{..}
          = object
              (catMaybes
                 [("detectedLanguages" .=) <$> _gooDetectedLanguages,
                  ("detectedBreak" .=) <$> _gooDetectedBreak])

-- | A bounding polygon for the detected image annotation.
--
-- /See:/ 'googleCloudVisionV1p2beta1BoundingPoly' smart constructor.
data GoogleCloudVisionV1p2beta1BoundingPoly =
  GoogleCloudVisionV1p2beta1BoundingPoly'
    { _gooNormalizedVertices :: !(Maybe [GoogleCloudVisionV1p2beta1NormalizedVertex])
    , _gooVertices :: !(Maybe [GoogleCloudVisionV1p2beta1Vertex])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1BoundingPoly' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooNormalizedVertices'
--
-- * 'gooVertices'
googleCloudVisionV1p2beta1BoundingPoly
    :: GoogleCloudVisionV1p2beta1BoundingPoly
googleCloudVisionV1p2beta1BoundingPoly =
  GoogleCloudVisionV1p2beta1BoundingPoly'
    {_gooNormalizedVertices = Nothing, _gooVertices = Nothing}


-- | The bounding polygon normalized vertices.
gooNormalizedVertices :: Lens' GoogleCloudVisionV1p2beta1BoundingPoly [GoogleCloudVisionV1p2beta1NormalizedVertex]
gooNormalizedVertices
  = lens _gooNormalizedVertices
      (\ s a -> s{_gooNormalizedVertices = a})
      . _Default
      . _Coerce

-- | The bounding polygon vertices.
gooVertices :: Lens' GoogleCloudVisionV1p2beta1BoundingPoly [GoogleCloudVisionV1p2beta1Vertex]
gooVertices
  = lens _gooVertices (\ s a -> s{_gooVertices = a}) .
      _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p2beta1BoundingPoly
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p2beta1BoundingPoly"
              (\ o ->
                 GoogleCloudVisionV1p2beta1BoundingPoly' <$>
                   (o .:? "normalizedVertices" .!= mempty) <*>
                     (o .:? "vertices" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p2beta1BoundingPoly
         where
        toJSON GoogleCloudVisionV1p2beta1BoundingPoly'{..}
          = object
              (catMaybes
                 [("normalizedVertices" .=) <$>
                    _gooNormalizedVertices,
                  ("vertices" .=) <$> _gooVertices])

-- | A 3D position in the image, used primarily for Face detection landmarks.
-- A valid Position must have both x and y coordinates. The position
-- coordinates are in the same scale as the original image.
--
-- /See:/ 'googleCloudVisionV1p3beta1Position' smart constructor.
data GoogleCloudVisionV1p3beta1Position =
  GoogleCloudVisionV1p3beta1Position'
    { _goooZ :: !(Maybe (Textual Double))
    , _goooX :: !(Maybe (Textual Double))
    , _goooY :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1Position' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'goooZ'
--
-- * 'goooX'
--
-- * 'goooY'
googleCloudVisionV1p3beta1Position
    :: GoogleCloudVisionV1p3beta1Position
googleCloudVisionV1p3beta1Position =
  GoogleCloudVisionV1p3beta1Position'
    {_goooZ = Nothing, _goooX = Nothing, _goooY = Nothing}


-- | Z coordinate (or depth).
goooZ :: Lens' GoogleCloudVisionV1p3beta1Position (Maybe Double)
goooZ
  = lens _goooZ (\ s a -> s{_goooZ = a}) .
      mapping _Coerce

-- | X coordinate.
goooX :: Lens' GoogleCloudVisionV1p3beta1Position (Maybe Double)
goooX
  = lens _goooX (\ s a -> s{_goooX = a}) .
      mapping _Coerce

-- | Y coordinate.
goooY :: Lens' GoogleCloudVisionV1p3beta1Position (Maybe Double)
goooY
  = lens _goooY (\ s a -> s{_goooY = a}) .
      mapping _Coerce

instance FromJSON GoogleCloudVisionV1p3beta1Position
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p3beta1Position"
              (\ o ->
                 GoogleCloudVisionV1p3beta1Position' <$>
                   (o .:? "z") <*> (o .:? "x") <*> (o .:? "y"))

instance ToJSON GoogleCloudVisionV1p3beta1Position
         where
        toJSON GoogleCloudVisionV1p3beta1Position'{..}
          = object
              (catMaybes
                 [("z" .=) <$> _goooZ, ("x" .=) <$> _goooX,
                  ("y" .=) <$> _goooY])

-- | A list of file annotation responses.
--
-- /See:/ 'googleCloudVisionV1p2beta1BatchAnnotateFilesResponse' smart constructor.
newtype GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse =
  GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse'
    { _gcvvbafrcResponses :: Maybe [GoogleCloudVisionV1p2beta1AnnotateFileResponse]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvbafrcResponses'
googleCloudVisionV1p2beta1BatchAnnotateFilesResponse
    :: GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse
googleCloudVisionV1p2beta1BatchAnnotateFilesResponse =
  GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse'
    {_gcvvbafrcResponses = Nothing}


-- | The list of file annotation responses, each response corresponding to
-- each AnnotateFileRequest in BatchAnnotateFilesRequest.
gcvvbafrcResponses :: Lens' GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse [GoogleCloudVisionV1p2beta1AnnotateFileResponse]
gcvvbafrcResponses
  = lens _gcvvbafrcResponses
      (\ s a -> s{_gcvvbafrcResponses = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse"
              (\ o ->
                 GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse'
                   <$> (o .:? "responses" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse
         where
        toJSON
          GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse'{..}
          = object
              (catMaybes
                 [("responses" .=) <$> _gcvvbafrcResponses])

-- | Information about a product.
--
-- /See:/ 'googleCloudVisionV1p4beta1ProductSearchResultsResult' smart constructor.
data GoogleCloudVisionV1p4beta1ProductSearchResultsResult =
  GoogleCloudVisionV1p4beta1ProductSearchResultsResult'
    { _gcvvpsrr1Image :: !(Maybe Text)
    , _gcvvpsrr1Score :: !(Maybe (Textual Double))
    , _gcvvpsrr1Product :: !(Maybe GoogleCloudVisionV1p4beta1Product)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1ProductSearchResultsResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvpsrr1Image'
--
-- * 'gcvvpsrr1Score'
--
-- * 'gcvvpsrr1Product'
googleCloudVisionV1p4beta1ProductSearchResultsResult
    :: GoogleCloudVisionV1p4beta1ProductSearchResultsResult
googleCloudVisionV1p4beta1ProductSearchResultsResult =
  GoogleCloudVisionV1p4beta1ProductSearchResultsResult'
    { _gcvvpsrr1Image = Nothing
    , _gcvvpsrr1Score = Nothing
    , _gcvvpsrr1Product = Nothing
    }


-- | The resource name of the image from the product that is the closest
-- match to the query.
gcvvpsrr1Image :: Lens' GoogleCloudVisionV1p4beta1ProductSearchResultsResult (Maybe Text)
gcvvpsrr1Image
  = lens _gcvvpsrr1Image
      (\ s a -> s{_gcvvpsrr1Image = a})

-- | A confidence level on the match, ranging from 0 (no confidence) to 1
-- (full confidence).
gcvvpsrr1Score :: Lens' GoogleCloudVisionV1p4beta1ProductSearchResultsResult (Maybe Double)
gcvvpsrr1Score
  = lens _gcvvpsrr1Score
      (\ s a -> s{_gcvvpsrr1Score = a})
      . mapping _Coerce

-- | The Product.
gcvvpsrr1Product :: Lens' GoogleCloudVisionV1p4beta1ProductSearchResultsResult (Maybe GoogleCloudVisionV1p4beta1Product)
gcvvpsrr1Product
  = lens _gcvvpsrr1Product
      (\ s a -> s{_gcvvpsrr1Product = a})

instance FromJSON
           GoogleCloudVisionV1p4beta1ProductSearchResultsResult
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p4beta1ProductSearchResultsResult"
              (\ o ->
                 GoogleCloudVisionV1p4beta1ProductSearchResultsResult'
                   <$>
                   (o .:? "image") <*> (o .:? "score") <*>
                     (o .:? "product"))

instance ToJSON
           GoogleCloudVisionV1p4beta1ProductSearchResultsResult
         where
        toJSON
          GoogleCloudVisionV1p4beta1ProductSearchResultsResult'{..}
          = object
              (catMaybes
                 [("image" .=) <$> _gcvvpsrr1Image,
                  ("score" .=) <$> _gcvvpsrr1Score,
                  ("product" .=) <$> _gcvvpsrr1Product])

-- | The Google Cloud Storage location where the output will be written to.
--
-- /See:/ 'googleCloudVisionV1p1beta1GcsDestination' smart constructor.
newtype GoogleCloudVisionV1p1beta1GcsDestination =
  GoogleCloudVisionV1p1beta1GcsDestination'
    { _ggURI :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1GcsDestination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggURI'
googleCloudVisionV1p1beta1GcsDestination
    :: GoogleCloudVisionV1p1beta1GcsDestination
googleCloudVisionV1p1beta1GcsDestination =
  GoogleCloudVisionV1p1beta1GcsDestination' {_ggURI = Nothing}


-- | Google Cloud Storage URI prefix where the results will be stored.
-- Results will be in JSON format and preceded by its corresponding input
-- URI prefix. This field can either represent a gcs file prefix or gcs
-- directory. In either case, the uri should be unique because in order to
-- get all of the output files, you will need to do a wildcard gcs search
-- on the uri prefix you provide. Examples: * File Prefix:
-- gs:\/\/bucket-name\/here\/filenameprefix The output files will be
-- created in gs:\/\/bucket-name\/here\/ and the names of the output files
-- will begin with \"filenameprefix\". * Directory Prefix:
-- gs:\/\/bucket-name\/some\/location\/ The output files will be created in
-- gs:\/\/bucket-name\/some\/location\/ and the names of the output files
-- could be anything because there was no filename prefix specified. If
-- multiple outputs, each response is still AnnotateFileResponse, each of
-- which contains some subset of the full list of AnnotateImageResponse.
-- Multiple outputs can happen if, for example, the output JSON is too
-- large and overflows into multiple sharded files.
ggURI :: Lens' GoogleCloudVisionV1p1beta1GcsDestination (Maybe Text)
ggURI = lens _ggURI (\ s a -> s{_ggURI = a})

instance FromJSON
           GoogleCloudVisionV1p1beta1GcsDestination
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p1beta1GcsDestination"
              (\ o ->
                 GoogleCloudVisionV1p1beta1GcsDestination' <$>
                   (o .:? "uri"))

instance ToJSON
           GoogleCloudVisionV1p1beta1GcsDestination
         where
        toJSON GoogleCloudVisionV1p1beta1GcsDestination'{..}
          = object (catMaybes [("uri" .=) <$> _ggURI])

-- | Detected entity location information.
--
-- /See:/ 'googleCloudVisionV1p1beta1LocationInfo' smart constructor.
newtype GoogleCloudVisionV1p1beta1LocationInfo =
  GoogleCloudVisionV1p1beta1LocationInfo'
    { _gooLatLng :: Maybe LatLng
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1LocationInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooLatLng'
googleCloudVisionV1p1beta1LocationInfo
    :: GoogleCloudVisionV1p1beta1LocationInfo
googleCloudVisionV1p1beta1LocationInfo =
  GoogleCloudVisionV1p1beta1LocationInfo' {_gooLatLng = Nothing}


-- | lat\/long location coordinates.
gooLatLng :: Lens' GoogleCloudVisionV1p1beta1LocationInfo (Maybe LatLng)
gooLatLng
  = lens _gooLatLng (\ s a -> s{_gooLatLng = a})

instance FromJSON
           GoogleCloudVisionV1p1beta1LocationInfo
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p1beta1LocationInfo"
              (\ o ->
                 GoogleCloudVisionV1p1beta1LocationInfo' <$>
                   (o .:? "latLng"))

instance ToJSON
           GoogleCloudVisionV1p1beta1LocationInfo
         where
        toJSON GoogleCloudVisionV1p1beta1LocationInfo'{..}
          = object (catMaybes [("latLng" .=) <$> _gooLatLng])

-- | A Product contains ReferenceImages.
--
-- /See:/ 'googleCloudVisionV1p1beta1Product' smart constructor.
data GoogleCloudVisionV1p1beta1Product =
  GoogleCloudVisionV1p1beta1Product'
    { _g1Name :: !(Maybe Text)
    , _g1DisplayName :: !(Maybe Text)
    , _g1ProductCategory :: !(Maybe Text)
    , _g1ProductLabels :: !(Maybe [GoogleCloudVisionV1p1beta1ProductKeyValue])
    , _g1Description :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1Product' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'g1Name'
--
-- * 'g1DisplayName'
--
-- * 'g1ProductCategory'
--
-- * 'g1ProductLabels'
--
-- * 'g1Description'
googleCloudVisionV1p1beta1Product
    :: GoogleCloudVisionV1p1beta1Product
googleCloudVisionV1p1beta1Product =
  GoogleCloudVisionV1p1beta1Product'
    { _g1Name = Nothing
    , _g1DisplayName = Nothing
    , _g1ProductCategory = Nothing
    , _g1ProductLabels = Nothing
    , _g1Description = Nothing
    }


-- | The resource name of the product. Format is:
-- \`projects\/PROJECT_ID\/locations\/LOC_ID\/products\/PRODUCT_ID\`. This
-- field is ignored when creating a product.
g1Name :: Lens' GoogleCloudVisionV1p1beta1Product (Maybe Text)
g1Name = lens _g1Name (\ s a -> s{_g1Name = a})

-- | The user-provided name for this Product. Must not be empty. Must be at
-- most 4096 characters long.
g1DisplayName :: Lens' GoogleCloudVisionV1p1beta1Product (Maybe Text)
g1DisplayName
  = lens _g1DisplayName
      (\ s a -> s{_g1DisplayName = a})

-- | Immutable. The category for the product identified by the reference
-- image. This should be one of \"homegoods-v2\", \"apparel-v2\",
-- \"toys-v2\", \"packagedgoods-v1\" or \"general-v1\". The legacy
-- categories \"homegoods\", \"apparel\", and \"toys\" are still supported,
-- but these should not be used for new products.
g1ProductCategory :: Lens' GoogleCloudVisionV1p1beta1Product (Maybe Text)
g1ProductCategory
  = lens _g1ProductCategory
      (\ s a -> s{_g1ProductCategory = a})

-- | Key-value pairs that can be attached to a product. At query time,
-- constraints can be specified based on the product_labels. Note that
-- integer values can be provided as strings, e.g. \"1199\". Only strings
-- with integer values can match a range-based restriction which is to be
-- supported soon. Multiple values can be assigned to the same key. One
-- product may have up to 500 product_labels. Notice that the total number
-- of distinct product_labels over all products in one ProductSet cannot
-- exceed 1M, otherwise the product search pipeline will refuse to work for
-- that ProductSet.
g1ProductLabels :: Lens' GoogleCloudVisionV1p1beta1Product [GoogleCloudVisionV1p1beta1ProductKeyValue]
g1ProductLabels
  = lens _g1ProductLabels
      (\ s a -> s{_g1ProductLabels = a})
      . _Default
      . _Coerce

-- | User-provided metadata to be stored with this product. Must be at most
-- 4096 characters long.
g1Description :: Lens' GoogleCloudVisionV1p1beta1Product (Maybe Text)
g1Description
  = lens _g1Description
      (\ s a -> s{_g1Description = a})

instance FromJSON GoogleCloudVisionV1p1beta1Product
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p1beta1Product"
              (\ o ->
                 GoogleCloudVisionV1p1beta1Product' <$>
                   (o .:? "name") <*> (o .:? "displayName") <*>
                     (o .:? "productCategory")
                     <*> (o .:? "productLabels" .!= mempty)
                     <*> (o .:? "description"))

instance ToJSON GoogleCloudVisionV1p1beta1Product
         where
        toJSON GoogleCloudVisionV1p1beta1Product'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _g1Name,
                  ("displayName" .=) <$> _g1DisplayName,
                  ("productCategory" .=) <$> _g1ProductCategory,
                  ("productLabels" .=) <$> _g1ProductLabels,
                  ("description" .=) <$> _g1Description])

-- | A vertex represents a 2D point in the image. NOTE: the normalized vertex
-- coordinates are relative to the original image and range from 0 to 1.
--
-- /See:/ 'googleCloudVisionV1p3beta1NormalizedVertex' smart constructor.
data GoogleCloudVisionV1p3beta1NormalizedVertex =
  GoogleCloudVisionV1p3beta1NormalizedVertex'
    { _gcvvnv1X :: !(Maybe (Textual Double))
    , _gcvvnv1Y :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1NormalizedVertex' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvnv1X'
--
-- * 'gcvvnv1Y'
googleCloudVisionV1p3beta1NormalizedVertex
    :: GoogleCloudVisionV1p3beta1NormalizedVertex
googleCloudVisionV1p3beta1NormalizedVertex =
  GoogleCloudVisionV1p3beta1NormalizedVertex'
    {_gcvvnv1X = Nothing, _gcvvnv1Y = Nothing}


-- | X coordinate.
gcvvnv1X :: Lens' GoogleCloudVisionV1p3beta1NormalizedVertex (Maybe Double)
gcvvnv1X
  = lens _gcvvnv1X (\ s a -> s{_gcvvnv1X = a}) .
      mapping _Coerce

-- | Y coordinate.
gcvvnv1Y :: Lens' GoogleCloudVisionV1p3beta1NormalizedVertex (Maybe Double)
gcvvnv1Y
  = lens _gcvvnv1Y (\ s a -> s{_gcvvnv1Y = a}) .
      mapping _Coerce

instance FromJSON
           GoogleCloudVisionV1p3beta1NormalizedVertex
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p3beta1NormalizedVertex"
              (\ o ->
                 GoogleCloudVisionV1p3beta1NormalizedVertex' <$>
                   (o .:? "x") <*> (o .:? "y"))

instance ToJSON
           GoogleCloudVisionV1p3beta1NormalizedVertex
         where
        toJSON
          GoogleCloudVisionV1p3beta1NormalizedVertex'{..}
          = object
              (catMaybes
                 [("x" .=) <$> _gcvvnv1X, ("y" .=) <$> _gcvvnv1Y])

-- | Metadata for online images.
--
-- /See:/ 'googleCloudVisionV1p2beta1WebDetectionWebImage' smart constructor.
data GoogleCloudVisionV1p2beta1WebDetectionWebImage =
  GoogleCloudVisionV1p2beta1WebDetectionWebImage'
    { _gcvvwdwi1Score :: !(Maybe (Textual Double))
    , _gcvvwdwi1URL :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1WebDetectionWebImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvwdwi1Score'
--
-- * 'gcvvwdwi1URL'
googleCloudVisionV1p2beta1WebDetectionWebImage
    :: GoogleCloudVisionV1p2beta1WebDetectionWebImage
googleCloudVisionV1p2beta1WebDetectionWebImage =
  GoogleCloudVisionV1p2beta1WebDetectionWebImage'
    {_gcvvwdwi1Score = Nothing, _gcvvwdwi1URL = Nothing}


-- | (Deprecated) Overall relevancy score for the image.
gcvvwdwi1Score :: Lens' GoogleCloudVisionV1p2beta1WebDetectionWebImage (Maybe Double)
gcvvwdwi1Score
  = lens _gcvvwdwi1Score
      (\ s a -> s{_gcvvwdwi1Score = a})
      . mapping _Coerce

-- | The result image URL.
gcvvwdwi1URL :: Lens' GoogleCloudVisionV1p2beta1WebDetectionWebImage (Maybe Text)
gcvvwdwi1URL
  = lens _gcvvwdwi1URL (\ s a -> s{_gcvvwdwi1URL = a})

instance FromJSON
           GoogleCloudVisionV1p2beta1WebDetectionWebImage
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p2beta1WebDetectionWebImage"
              (\ o ->
                 GoogleCloudVisionV1p2beta1WebDetectionWebImage' <$>
                   (o .:? "score") <*> (o .:? "url"))

instance ToJSON
           GoogleCloudVisionV1p2beta1WebDetectionWebImage
         where
        toJSON
          GoogleCloudVisionV1p2beta1WebDetectionWebImage'{..}
          = object
              (catMaybes
                 [("score" .=) <$> _gcvvwdwi1Score,
                  ("url" .=) <$> _gcvvwdwi1URL])

-- | Detected page from OCR.
--
-- /See:/ 'googleCloudVisionV1p1beta1Page' smart constructor.
data GoogleCloudVisionV1p1beta1Page =
  GoogleCloudVisionV1p1beta1Page'
    { _gcvvp2Property :: !(Maybe GoogleCloudVisionV1p1beta1TextAnnotationTextProperty)
    , _gcvvp2Height :: !(Maybe (Textual Int32))
    , _gcvvp2Blocks :: !(Maybe [GoogleCloudVisionV1p1beta1Block])
    , _gcvvp2Width :: !(Maybe (Textual Int32))
    , _gcvvp2Confidence :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1Page' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvp2Property'
--
-- * 'gcvvp2Height'
--
-- * 'gcvvp2Blocks'
--
-- * 'gcvvp2Width'
--
-- * 'gcvvp2Confidence'
googleCloudVisionV1p1beta1Page
    :: GoogleCloudVisionV1p1beta1Page
googleCloudVisionV1p1beta1Page =
  GoogleCloudVisionV1p1beta1Page'
    { _gcvvp2Property = Nothing
    , _gcvvp2Height = Nothing
    , _gcvvp2Blocks = Nothing
    , _gcvvp2Width = Nothing
    , _gcvvp2Confidence = Nothing
    }


-- | Additional information detected on the page.
gcvvp2Property :: Lens' GoogleCloudVisionV1p1beta1Page (Maybe GoogleCloudVisionV1p1beta1TextAnnotationTextProperty)
gcvvp2Property
  = lens _gcvvp2Property
      (\ s a -> s{_gcvvp2Property = a})

-- | Page height. For PDFs the unit is points. For images (including TIFFs)
-- the unit is pixels.
gcvvp2Height :: Lens' GoogleCloudVisionV1p1beta1Page (Maybe Int32)
gcvvp2Height
  = lens _gcvvp2Height (\ s a -> s{_gcvvp2Height = a})
      . mapping _Coerce

-- | List of blocks of text, images etc on this page.
gcvvp2Blocks :: Lens' GoogleCloudVisionV1p1beta1Page [GoogleCloudVisionV1p1beta1Block]
gcvvp2Blocks
  = lens _gcvvp2Blocks (\ s a -> s{_gcvvp2Blocks = a})
      . _Default
      . _Coerce

-- | Page width. For PDFs the unit is points. For images (including TIFFs)
-- the unit is pixels.
gcvvp2Width :: Lens' GoogleCloudVisionV1p1beta1Page (Maybe Int32)
gcvvp2Width
  = lens _gcvvp2Width (\ s a -> s{_gcvvp2Width = a}) .
      mapping _Coerce

-- | Confidence of the OCR results on the page. Range [0, 1].
gcvvp2Confidence :: Lens' GoogleCloudVisionV1p1beta1Page (Maybe Double)
gcvvp2Confidence
  = lens _gcvvp2Confidence
      (\ s a -> s{_gcvvp2Confidence = a})
      . mapping _Coerce

instance FromJSON GoogleCloudVisionV1p1beta1Page
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p1beta1Page"
              (\ o ->
                 GoogleCloudVisionV1p1beta1Page' <$>
                   (o .:? "property") <*> (o .:? "height") <*>
                     (o .:? "blocks" .!= mempty)
                     <*> (o .:? "width")
                     <*> (o .:? "confidence"))

instance ToJSON GoogleCloudVisionV1p1beta1Page where
        toJSON GoogleCloudVisionV1p1beta1Page'{..}
          = object
              (catMaybes
                 [("property" .=) <$> _gcvvp2Property,
                  ("height" .=) <$> _gcvvp2Height,
                  ("blocks" .=) <$> _gcvvp2Blocks,
                  ("width" .=) <$> _gcvvp2Width,
                  ("confidence" .=) <$> _gcvvp2Confidence])

-- | Information about the products similar to a single product in a query
-- image.
--
-- /See:/ 'googleCloudVisionV1p2beta1ProductSearchResultsGroupedResult' smart constructor.
data GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult =
  GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult'
    { _ggResults :: !(Maybe [GoogleCloudVisionV1p2beta1ProductSearchResultsResult])
    , _ggBoundingPoly :: !(Maybe GoogleCloudVisionV1p2beta1BoundingPoly)
    , _ggObjectAnnotations :: !(Maybe [GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggResults'
--
-- * 'ggBoundingPoly'
--
-- * 'ggObjectAnnotations'
googleCloudVisionV1p2beta1ProductSearchResultsGroupedResult
    :: GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult
googleCloudVisionV1p2beta1ProductSearchResultsGroupedResult =
  GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult'
    { _ggResults = Nothing
    , _ggBoundingPoly = Nothing
    , _ggObjectAnnotations = Nothing
    }


-- | List of results, one for each product match.
ggResults :: Lens' GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult [GoogleCloudVisionV1p2beta1ProductSearchResultsResult]
ggResults
  = lens _ggResults (\ s a -> s{_ggResults = a}) .
      _Default
      . _Coerce

-- | The bounding polygon around the product detected in the query image.
ggBoundingPoly :: Lens' GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult (Maybe GoogleCloudVisionV1p2beta1BoundingPoly)
ggBoundingPoly
  = lens _ggBoundingPoly
      (\ s a -> s{_ggBoundingPoly = a})

-- | List of generic predictions for the object in the bounding box.
ggObjectAnnotations :: Lens' GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult [GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation]
ggObjectAnnotations
  = lens _ggObjectAnnotations
      (\ s a -> s{_ggObjectAnnotations = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult"
              (\ o ->
                 GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult'
                   <$>
                   (o .:? "results" .!= mempty) <*>
                     (o .:? "boundingPoly")
                     <*> (o .:? "objectAnnotations" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult
         where
        toJSON
          GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult'{..}
          = object
              (catMaybes
                 [("results" .=) <$> _ggResults,
                  ("boundingPoly" .=) <$> _ggBoundingPoly,
                  ("objectAnnotations" .=) <$> _ggObjectAnnotations])

-- | A single symbol representation.
--
-- /See:/ 'googleCloudVisionV1p3beta1Symbol' smart constructor.
data GoogleCloudVisionV1p3beta1Symbol =
  GoogleCloudVisionV1p3beta1Symbol'
    { _gcvvs1Property :: !(Maybe GoogleCloudVisionV1p3beta1TextAnnotationTextProperty)
    , _gcvvs1BoundingBox :: !(Maybe GoogleCloudVisionV1p3beta1BoundingPoly)
    , _gcvvs1Text :: !(Maybe Text)
    , _gcvvs1Confidence :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1Symbol' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvs1Property'
--
-- * 'gcvvs1BoundingBox'
--
-- * 'gcvvs1Text'
--
-- * 'gcvvs1Confidence'
googleCloudVisionV1p3beta1Symbol
    :: GoogleCloudVisionV1p3beta1Symbol
googleCloudVisionV1p3beta1Symbol =
  GoogleCloudVisionV1p3beta1Symbol'
    { _gcvvs1Property = Nothing
    , _gcvvs1BoundingBox = Nothing
    , _gcvvs1Text = Nothing
    , _gcvvs1Confidence = Nothing
    }


-- | Additional information detected for the symbol.
gcvvs1Property :: Lens' GoogleCloudVisionV1p3beta1Symbol (Maybe GoogleCloudVisionV1p3beta1TextAnnotationTextProperty)
gcvvs1Property
  = lens _gcvvs1Property
      (\ s a -> s{_gcvvs1Property = a})

-- | The bounding box for the symbol. The vertices are in the order of
-- top-left, top-right, bottom-right, bottom-left. When a rotation of the
-- bounding box is detected the rotation is represented as around the
-- top-left corner as defined when the text is read in the \'natural\'
-- orientation. For example: * when the text is horizontal it might look
-- like: 0----1 | | 3----2 * when it\'s rotated 180 degrees around the
-- top-left corner it becomes: 2----3 | | 1----0 and the vertex order will
-- still be (0, 1, 2, 3).
gcvvs1BoundingBox :: Lens' GoogleCloudVisionV1p3beta1Symbol (Maybe GoogleCloudVisionV1p3beta1BoundingPoly)
gcvvs1BoundingBox
  = lens _gcvvs1BoundingBox
      (\ s a -> s{_gcvvs1BoundingBox = a})

-- | The actual UTF-8 representation of the symbol.
gcvvs1Text :: Lens' GoogleCloudVisionV1p3beta1Symbol (Maybe Text)
gcvvs1Text
  = lens _gcvvs1Text (\ s a -> s{_gcvvs1Text = a})

-- | Confidence of the OCR results for the symbol. Range [0, 1].
gcvvs1Confidence :: Lens' GoogleCloudVisionV1p3beta1Symbol (Maybe Double)
gcvvs1Confidence
  = lens _gcvvs1Confidence
      (\ s a -> s{_gcvvs1Confidence = a})
      . mapping _Coerce

instance FromJSON GoogleCloudVisionV1p3beta1Symbol
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p3beta1Symbol"
              (\ o ->
                 GoogleCloudVisionV1p3beta1Symbol' <$>
                   (o .:? "property") <*> (o .:? "boundingBox") <*>
                     (o .:? "text")
                     <*> (o .:? "confidence"))

instance ToJSON GoogleCloudVisionV1p3beta1Symbol
         where
        toJSON GoogleCloudVisionV1p3beta1Symbol'{..}
          = object
              (catMaybes
                 [("property" .=) <$> _gcvvs1Property,
                  ("boundingBox" .=) <$> _gcvvs1BoundingBox,
                  ("text" .=) <$> _gcvvs1Text,
                  ("confidence" .=) <$> _gcvvs1Confidence])

-- | Single crop hint that is used to generate a new crop when serving an
-- image.
--
-- /See:/ 'cropHint' smart constructor.
data CropHint =
  CropHint'
    { _chBoundingPoly :: !(Maybe BoundingPoly)
    , _chConfidence :: !(Maybe (Textual Double))
    , _chImportanceFraction :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CropHint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chBoundingPoly'
--
-- * 'chConfidence'
--
-- * 'chImportanceFraction'
cropHint
    :: CropHint
cropHint =
  CropHint'
    { _chBoundingPoly = Nothing
    , _chConfidence = Nothing
    , _chImportanceFraction = Nothing
    }


-- | The bounding polygon for the crop region. The coordinates of the
-- bounding box are in the original image\'s scale.
chBoundingPoly :: Lens' CropHint (Maybe BoundingPoly)
chBoundingPoly
  = lens _chBoundingPoly
      (\ s a -> s{_chBoundingPoly = a})

-- | Confidence of this being a salient region. Range [0, 1].
chConfidence :: Lens' CropHint (Maybe Double)
chConfidence
  = lens _chConfidence (\ s a -> s{_chConfidence = a})
      . mapping _Coerce

-- | Fraction of importance of this salient region with respect to the
-- original image.
chImportanceFraction :: Lens' CropHint (Maybe Double)
chImportanceFraction
  = lens _chImportanceFraction
      (\ s a -> s{_chImportanceFraction = a})
      . mapping _Coerce

instance FromJSON CropHint where
        parseJSON
          = withObject "CropHint"
              (\ o ->
                 CropHint' <$>
                   (o .:? "boundingPoly") <*> (o .:? "confidence") <*>
                     (o .:? "importanceFraction"))

instance ToJSON CropHint where
        toJSON CropHint'{..}
          = object
              (catMaybes
                 [("boundingPoly" .=) <$> _chBoundingPoly,
                  ("confidence" .=) <$> _chConfidence,
                  ("importanceFraction" .=) <$> _chImportanceFraction])

-- | Client image to perform Google Cloud Vision API tasks over.
--
-- /See:/ 'googleCloudVisionV1p2beta1Image' smart constructor.
data GoogleCloudVisionV1p2beta1Image =
  GoogleCloudVisionV1p2beta1Image'
    { _gcvviContent :: !(Maybe Bytes)
    , _gcvviSource :: !(Maybe GoogleCloudVisionV1p2beta1ImageSource)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1Image' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvviContent'
--
-- * 'gcvviSource'
googleCloudVisionV1p2beta1Image
    :: GoogleCloudVisionV1p2beta1Image
googleCloudVisionV1p2beta1Image =
  GoogleCloudVisionV1p2beta1Image'
    {_gcvviContent = Nothing, _gcvviSource = Nothing}


-- | Image content, represented as a stream of bytes. Note: As with all
-- \`bytes\` fields, protobuffers use a pure binary representation, whereas
-- JSON representations use base64. Currently, this field only works for
-- BatchAnnotateImages requests. It does not work for
-- AsyncBatchAnnotateImages requests.
gcvviContent :: Lens' GoogleCloudVisionV1p2beta1Image (Maybe ByteString)
gcvviContent
  = lens _gcvviContent (\ s a -> s{_gcvviContent = a})
      . mapping _Bytes

-- | Google Cloud Storage image location, or publicly-accessible image URL.
-- If both \`content\` and \`source\` are provided for an image,
-- \`content\` takes precedence and is used to perform the image annotation
-- request.
gcvviSource :: Lens' GoogleCloudVisionV1p2beta1Image (Maybe GoogleCloudVisionV1p2beta1ImageSource)
gcvviSource
  = lens _gcvviSource (\ s a -> s{_gcvviSource = a})

instance FromJSON GoogleCloudVisionV1p2beta1Image
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p2beta1Image"
              (\ o ->
                 GoogleCloudVisionV1p2beta1Image' <$>
                   (o .:? "content") <*> (o .:? "source"))

instance ToJSON GoogleCloudVisionV1p2beta1Image where
        toJSON GoogleCloudVisionV1p2beta1Image'{..}
          = object
              (catMaybes
                 [("content" .=) <$> _gcvviContent,
                  ("source" .=) <$> _gcvviSource])

-- | The desired input location and metadata.
--
-- /See:/ 'googleCloudVisionV1p1beta1InputConfig' smart constructor.
data GoogleCloudVisionV1p1beta1InputConfig =
  GoogleCloudVisionV1p1beta1InputConfig'
    { _gooGcsSource :: !(Maybe GoogleCloudVisionV1p1beta1GcsSource)
    , _gooContent :: !(Maybe Bytes)
    , _gooMimeType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1InputConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooGcsSource'
--
-- * 'gooContent'
--
-- * 'gooMimeType'
googleCloudVisionV1p1beta1InputConfig
    :: GoogleCloudVisionV1p1beta1InputConfig
googleCloudVisionV1p1beta1InputConfig =
  GoogleCloudVisionV1p1beta1InputConfig'
    {_gooGcsSource = Nothing, _gooContent = Nothing, _gooMimeType = Nothing}


-- | The Google Cloud Storage location to read the input from.
gooGcsSource :: Lens' GoogleCloudVisionV1p1beta1InputConfig (Maybe GoogleCloudVisionV1p1beta1GcsSource)
gooGcsSource
  = lens _gooGcsSource (\ s a -> s{_gooGcsSource = a})

-- | File content, represented as a stream of bytes. Note: As with all
-- \`bytes\` fields, protobuffers use a pure binary representation, whereas
-- JSON representations use base64. Currently, this field only works for
-- BatchAnnotateFiles requests. It does not work for
-- AsyncBatchAnnotateFiles requests.
gooContent :: Lens' GoogleCloudVisionV1p1beta1InputConfig (Maybe ByteString)
gooContent
  = lens _gooContent (\ s a -> s{_gooContent = a}) .
      mapping _Bytes

-- | The type of the file. Currently only \"application\/pdf\",
-- \"image\/tiff\" and \"image\/gif\" are supported. Wildcards are not
-- supported.
gooMimeType :: Lens' GoogleCloudVisionV1p1beta1InputConfig (Maybe Text)
gooMimeType
  = lens _gooMimeType (\ s a -> s{_gooMimeType = a})

instance FromJSON
           GoogleCloudVisionV1p1beta1InputConfig
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p1beta1InputConfig"
              (\ o ->
                 GoogleCloudVisionV1p1beta1InputConfig' <$>
                   (o .:? "gcsSource") <*> (o .:? "content") <*>
                     (o .:? "mimeType"))

instance ToJSON GoogleCloudVisionV1p1beta1InputConfig
         where
        toJSON GoogleCloudVisionV1p1beta1InputConfig'{..}
          = object
              (catMaybes
                 [("gcsSource" .=) <$> _gooGcsSource,
                  ("content" .=) <$> _gooContent,
                  ("mimeType" .=) <$> _gooMimeType])

-- | If an image was produced from a file (e.g. a PDF), this message gives
-- information about the source of that image.
--
-- /See:/ 'googleCloudVisionV1p2beta1ImageAnnotationContext' smart constructor.
data GoogleCloudVisionV1p2beta1ImageAnnotationContext =
  GoogleCloudVisionV1p2beta1ImageAnnotationContext'
    { _gcvviaccURI :: !(Maybe Text)
    , _gcvviaccPageNumber :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1ImageAnnotationContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvviaccURI'
--
-- * 'gcvviaccPageNumber'
googleCloudVisionV1p2beta1ImageAnnotationContext
    :: GoogleCloudVisionV1p2beta1ImageAnnotationContext
googleCloudVisionV1p2beta1ImageAnnotationContext =
  GoogleCloudVisionV1p2beta1ImageAnnotationContext'
    {_gcvviaccURI = Nothing, _gcvviaccPageNumber = Nothing}


-- | The URI of the file used to produce the image.
gcvviaccURI :: Lens' GoogleCloudVisionV1p2beta1ImageAnnotationContext (Maybe Text)
gcvviaccURI
  = lens _gcvviaccURI (\ s a -> s{_gcvviaccURI = a})

-- | If the file was a PDF or TIFF, this field gives the page number within
-- the file used to produce the image.
gcvviaccPageNumber :: Lens' GoogleCloudVisionV1p2beta1ImageAnnotationContext (Maybe Int32)
gcvviaccPageNumber
  = lens _gcvviaccPageNumber
      (\ s a -> s{_gcvviaccPageNumber = a})
      . mapping _Coerce

instance FromJSON
           GoogleCloudVisionV1p2beta1ImageAnnotationContext
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p2beta1ImageAnnotationContext"
              (\ o ->
                 GoogleCloudVisionV1p2beta1ImageAnnotationContext' <$>
                   (o .:? "uri") <*> (o .:? "pageNumber"))

instance ToJSON
           GoogleCloudVisionV1p2beta1ImageAnnotationContext
         where
        toJSON
          GoogleCloudVisionV1p2beta1ImageAnnotationContext'{..}
          = object
              (catMaybes
                 [("uri" .=) <$> _gcvviaccURI,
                  ("pageNumber" .=) <$> _gcvviaccPageNumber])

-- | Results for a product search request.
--
-- /See:/ 'googleCloudVisionV1p2beta1ProductSearchResults' smart constructor.
data GoogleCloudVisionV1p2beta1ProductSearchResults =
  GoogleCloudVisionV1p2beta1ProductSearchResults'
    { _gcvvpsrsProductGroupedResults :: !(Maybe [GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult])
    , _gcvvpsrsResults :: !(Maybe [GoogleCloudVisionV1p2beta1ProductSearchResultsResult])
    , _gcvvpsrsIndexTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1ProductSearchResults' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvpsrsProductGroupedResults'
--
-- * 'gcvvpsrsResults'
--
-- * 'gcvvpsrsIndexTime'
googleCloudVisionV1p2beta1ProductSearchResults
    :: GoogleCloudVisionV1p2beta1ProductSearchResults
googleCloudVisionV1p2beta1ProductSearchResults =
  GoogleCloudVisionV1p2beta1ProductSearchResults'
    { _gcvvpsrsProductGroupedResults = Nothing
    , _gcvvpsrsResults = Nothing
    , _gcvvpsrsIndexTime = Nothing
    }


-- | List of results grouped by products detected in the query image. Each
-- entry corresponds to one bounding polygon in the query image, and
-- contains the matching products specific to that region. There may be
-- duplicate product matches in the union of all the per-product results.
gcvvpsrsProductGroupedResults :: Lens' GoogleCloudVisionV1p2beta1ProductSearchResults [GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult]
gcvvpsrsProductGroupedResults
  = lens _gcvvpsrsProductGroupedResults
      (\ s a -> s{_gcvvpsrsProductGroupedResults = a})
      . _Default
      . _Coerce

-- | List of results, one for each product match.
gcvvpsrsResults :: Lens' GoogleCloudVisionV1p2beta1ProductSearchResults [GoogleCloudVisionV1p2beta1ProductSearchResultsResult]
gcvvpsrsResults
  = lens _gcvvpsrsResults
      (\ s a -> s{_gcvvpsrsResults = a})
      . _Default
      . _Coerce

-- | Timestamp of the index which provided these results. Products added to
-- the product set and products removed from the product set after this
-- time are not reflected in the current results.
gcvvpsrsIndexTime :: Lens' GoogleCloudVisionV1p2beta1ProductSearchResults (Maybe UTCTime)
gcvvpsrsIndexTime
  = lens _gcvvpsrsIndexTime
      (\ s a -> s{_gcvvpsrsIndexTime = a})
      . mapping _DateTime

instance FromJSON
           GoogleCloudVisionV1p2beta1ProductSearchResults
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p2beta1ProductSearchResults"
              (\ o ->
                 GoogleCloudVisionV1p2beta1ProductSearchResults' <$>
                   (o .:? "productGroupedResults" .!= mempty) <*>
                     (o .:? "results" .!= mempty)
                     <*> (o .:? "indexTime"))

instance ToJSON
           GoogleCloudVisionV1p2beta1ProductSearchResults
         where
        toJSON
          GoogleCloudVisionV1p2beta1ProductSearchResults'{..}
          = object
              (catMaybes
                 [("productGroupedResults" .=) <$>
                    _gcvvpsrsProductGroupedResults,
                  ("results" .=) <$> _gcvvpsrsResults,
                  ("indexTime" .=) <$> _gcvvpsrsIndexTime])

-- | Logical element on the page.
--
-- /See:/ 'googleCloudVisionV1p4beta1Block' smart constructor.
data GoogleCloudVisionV1p4beta1Block =
  GoogleCloudVisionV1p4beta1Block'
    { _gcvvb1Property :: !(Maybe GoogleCloudVisionV1p4beta1TextAnnotationTextProperty)
    , _gcvvb1BoundingBox :: !(Maybe GoogleCloudVisionV1p4beta1BoundingPoly)
    , _gcvvb1Paragraphs :: !(Maybe [GoogleCloudVisionV1p4beta1Paragraph])
    , _gcvvb1Confidence :: !(Maybe (Textual Double))
    , _gcvvb1BlockType :: !(Maybe GoogleCloudVisionV1p4beta1BlockBlockType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1Block' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvb1Property'
--
-- * 'gcvvb1BoundingBox'
--
-- * 'gcvvb1Paragraphs'
--
-- * 'gcvvb1Confidence'
--
-- * 'gcvvb1BlockType'
googleCloudVisionV1p4beta1Block
    :: GoogleCloudVisionV1p4beta1Block
googleCloudVisionV1p4beta1Block =
  GoogleCloudVisionV1p4beta1Block'
    { _gcvvb1Property = Nothing
    , _gcvvb1BoundingBox = Nothing
    , _gcvvb1Paragraphs = Nothing
    , _gcvvb1Confidence = Nothing
    , _gcvvb1BlockType = Nothing
    }


-- | Additional information detected for the block.
gcvvb1Property :: Lens' GoogleCloudVisionV1p4beta1Block (Maybe GoogleCloudVisionV1p4beta1TextAnnotationTextProperty)
gcvvb1Property
  = lens _gcvvb1Property
      (\ s a -> s{_gcvvb1Property = a})

-- | The bounding box for the block. The vertices are in the order of
-- top-left, top-right, bottom-right, bottom-left. When a rotation of the
-- bounding box is detected the rotation is represented as around the
-- top-left corner as defined when the text is read in the \'natural\'
-- orientation. For example: * when the text is horizontal it might look
-- like: 0----1 | | 3----2 * when it\'s rotated 180 degrees around the
-- top-left corner it becomes: 2----3 | | 1----0 and the vertex order will
-- still be (0, 1, 2, 3).
gcvvb1BoundingBox :: Lens' GoogleCloudVisionV1p4beta1Block (Maybe GoogleCloudVisionV1p4beta1BoundingPoly)
gcvvb1BoundingBox
  = lens _gcvvb1BoundingBox
      (\ s a -> s{_gcvvb1BoundingBox = a})

-- | List of paragraphs in this block (if this blocks is of type text).
gcvvb1Paragraphs :: Lens' GoogleCloudVisionV1p4beta1Block [GoogleCloudVisionV1p4beta1Paragraph]
gcvvb1Paragraphs
  = lens _gcvvb1Paragraphs
      (\ s a -> s{_gcvvb1Paragraphs = a})
      . _Default
      . _Coerce

-- | Confidence of the OCR results on the block. Range [0, 1].
gcvvb1Confidence :: Lens' GoogleCloudVisionV1p4beta1Block (Maybe Double)
gcvvb1Confidence
  = lens _gcvvb1Confidence
      (\ s a -> s{_gcvvb1Confidence = a})
      . mapping _Coerce

-- | Detected block type (text, image etc) for this block.
gcvvb1BlockType :: Lens' GoogleCloudVisionV1p4beta1Block (Maybe GoogleCloudVisionV1p4beta1BlockBlockType)
gcvvb1BlockType
  = lens _gcvvb1BlockType
      (\ s a -> s{_gcvvb1BlockType = a})

instance FromJSON GoogleCloudVisionV1p4beta1Block
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p4beta1Block"
              (\ o ->
                 GoogleCloudVisionV1p4beta1Block' <$>
                   (o .:? "property") <*> (o .:? "boundingBox") <*>
                     (o .:? "paragraphs" .!= mempty)
                     <*> (o .:? "confidence")
                     <*> (o .:? "blockType"))

instance ToJSON GoogleCloudVisionV1p4beta1Block where
        toJSON GoogleCloudVisionV1p4beta1Block'{..}
          = object
              (catMaybes
                 [("property" .=) <$> _gcvvb1Property,
                  ("boundingBox" .=) <$> _gcvvb1BoundingBox,
                  ("paragraphs" .=) <$> _gcvvb1Paragraphs,
                  ("confidence" .=) <$> _gcvvb1Confidence,
                  ("blockType" .=) <$> _gcvvb1BlockType])

-- | A \`Property\` consists of a user-supplied name\/value pair.
--
-- /See:/ 'googleCloudVisionV1p2beta1Property' smart constructor.
data GoogleCloudVisionV1p2beta1Property =
  GoogleCloudVisionV1p2beta1Property'
    { _goo1Uint64Value :: !(Maybe (Textual Word64))
    , _goo1Value :: !(Maybe Text)
    , _goo1Name :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1Property' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'goo1Uint64Value'
--
-- * 'goo1Value'
--
-- * 'goo1Name'
googleCloudVisionV1p2beta1Property
    :: GoogleCloudVisionV1p2beta1Property
googleCloudVisionV1p2beta1Property =
  GoogleCloudVisionV1p2beta1Property'
    {_goo1Uint64Value = Nothing, _goo1Value = Nothing, _goo1Name = Nothing}


-- | Value of numeric properties.
goo1Uint64Value :: Lens' GoogleCloudVisionV1p2beta1Property (Maybe Word64)
goo1Uint64Value
  = lens _goo1Uint64Value
      (\ s a -> s{_goo1Uint64Value = a})
      . mapping _Coerce

-- | Value of the property.
goo1Value :: Lens' GoogleCloudVisionV1p2beta1Property (Maybe Text)
goo1Value
  = lens _goo1Value (\ s a -> s{_goo1Value = a})

-- | Name of the property.
goo1Name :: Lens' GoogleCloudVisionV1p2beta1Property (Maybe Text)
goo1Name = lens _goo1Name (\ s a -> s{_goo1Name = a})

instance FromJSON GoogleCloudVisionV1p2beta1Property
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p2beta1Property"
              (\ o ->
                 GoogleCloudVisionV1p2beta1Property' <$>
                   (o .:? "uint64Value") <*> (o .:? "value") <*>
                     (o .:? "name"))

instance ToJSON GoogleCloudVisionV1p2beta1Property
         where
        toJSON GoogleCloudVisionV1p2beta1Property'{..}
          = object
              (catMaybes
                 [("uint64Value" .=) <$> _goo1Uint64Value,
                  ("value" .=) <$> _goo1Value,
                  ("name" .=) <$> _goo1Name])

-- | Label to provide extra metadata for the web detection.
--
-- /See:/ 'googleCloudVisionV1p4beta1WebDetectionWebLabel' smart constructor.
data GoogleCloudVisionV1p4beta1WebDetectionWebLabel =
  GoogleCloudVisionV1p4beta1WebDetectionWebLabel'
    { _gcvvwdwlcLanguageCode :: !(Maybe Text)
    , _gcvvwdwlcLabel :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1WebDetectionWebLabel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvwdwlcLanguageCode'
--
-- * 'gcvvwdwlcLabel'
googleCloudVisionV1p4beta1WebDetectionWebLabel
    :: GoogleCloudVisionV1p4beta1WebDetectionWebLabel
googleCloudVisionV1p4beta1WebDetectionWebLabel =
  GoogleCloudVisionV1p4beta1WebDetectionWebLabel'
    {_gcvvwdwlcLanguageCode = Nothing, _gcvvwdwlcLabel = Nothing}


-- | The BCP-47 language code for \`label\`, such as \"en-US\" or
-- \"sr-Latn\". For more information, see
-- http:\/\/www.unicode.org\/reports\/tr35\/#Unicode_locale_identifier.
gcvvwdwlcLanguageCode :: Lens' GoogleCloudVisionV1p4beta1WebDetectionWebLabel (Maybe Text)
gcvvwdwlcLanguageCode
  = lens _gcvvwdwlcLanguageCode
      (\ s a -> s{_gcvvwdwlcLanguageCode = a})

-- | Label for extra metadata.
gcvvwdwlcLabel :: Lens' GoogleCloudVisionV1p4beta1WebDetectionWebLabel (Maybe Text)
gcvvwdwlcLabel
  = lens _gcvvwdwlcLabel
      (\ s a -> s{_gcvvwdwlcLabel = a})

instance FromJSON
           GoogleCloudVisionV1p4beta1WebDetectionWebLabel
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p4beta1WebDetectionWebLabel"
              (\ o ->
                 GoogleCloudVisionV1p4beta1WebDetectionWebLabel' <$>
                   (o .:? "languageCode") <*> (o .:? "label"))

instance ToJSON
           GoogleCloudVisionV1p4beta1WebDetectionWebLabel
         where
        toJSON
          GoogleCloudVisionV1p4beta1WebDetectionWebLabel'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _gcvvwdwlcLanguageCode,
                  ("label" .=) <$> _gcvvwdwlcLabel])

-- | A face annotation object contains the results of face detection.
--
-- /See:/ 'googleCloudVisionV1p3beta1FaceAnnotation' smart constructor.
data GoogleCloudVisionV1p3beta1FaceAnnotation =
  GoogleCloudVisionV1p3beta1FaceAnnotation'
    { _gcvvfacTiltAngle :: !(Maybe (Textual Double))
    , _gcvvfacBlurredLikelihood :: !(Maybe GoogleCloudVisionV1p3beta1FaceAnnotationBlurredLikelihood)
    , _gcvvfacBoundingPoly :: !(Maybe GoogleCloudVisionV1p3beta1BoundingPoly)
    , _gcvvfacSurpriseLikelihood :: !(Maybe GoogleCloudVisionV1p3beta1FaceAnnotationSurpriseLikelihood)
    , _gcvvfacLandmarkingConfidence :: !(Maybe (Textual Double))
    , _gcvvfacPanAngle :: !(Maybe (Textual Double))
    , _gcvvfacRollAngle :: !(Maybe (Textual Double))
    , _gcvvfacUnderExposedLikelihood :: !(Maybe GoogleCloudVisionV1p3beta1FaceAnnotationUnderExposedLikelihood)
    , _gcvvfacFdBoundingPoly :: !(Maybe GoogleCloudVisionV1p3beta1BoundingPoly)
    , _gcvvfacAngerLikelihood :: !(Maybe GoogleCloudVisionV1p3beta1FaceAnnotationAngerLikelihood)
    , _gcvvfacDetectionConfidence :: !(Maybe (Textual Double))
    , _gcvvfacHeadwearLikelihood :: !(Maybe GoogleCloudVisionV1p3beta1FaceAnnotationHeadwearLikelihood)
    , _gcvvfacSorrowLikelihood :: !(Maybe GoogleCloudVisionV1p3beta1FaceAnnotationSorrowLikelihood)
    , _gcvvfacJoyLikelihood :: !(Maybe GoogleCloudVisionV1p3beta1FaceAnnotationJoyLikelihood)
    , _gcvvfacLandmarks :: !(Maybe [GoogleCloudVisionV1p3beta1FaceAnnotationLandmark])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1FaceAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvfacTiltAngle'
--
-- * 'gcvvfacBlurredLikelihood'
--
-- * 'gcvvfacBoundingPoly'
--
-- * 'gcvvfacSurpriseLikelihood'
--
-- * 'gcvvfacLandmarkingConfidence'
--
-- * 'gcvvfacPanAngle'
--
-- * 'gcvvfacRollAngle'
--
-- * 'gcvvfacUnderExposedLikelihood'
--
-- * 'gcvvfacFdBoundingPoly'
--
-- * 'gcvvfacAngerLikelihood'
--
-- * 'gcvvfacDetectionConfidence'
--
-- * 'gcvvfacHeadwearLikelihood'
--
-- * 'gcvvfacSorrowLikelihood'
--
-- * 'gcvvfacJoyLikelihood'
--
-- * 'gcvvfacLandmarks'
googleCloudVisionV1p3beta1FaceAnnotation
    :: GoogleCloudVisionV1p3beta1FaceAnnotation
googleCloudVisionV1p3beta1FaceAnnotation =
  GoogleCloudVisionV1p3beta1FaceAnnotation'
    { _gcvvfacTiltAngle = Nothing
    , _gcvvfacBlurredLikelihood = Nothing
    , _gcvvfacBoundingPoly = Nothing
    , _gcvvfacSurpriseLikelihood = Nothing
    , _gcvvfacLandmarkingConfidence = Nothing
    , _gcvvfacPanAngle = Nothing
    , _gcvvfacRollAngle = Nothing
    , _gcvvfacUnderExposedLikelihood = Nothing
    , _gcvvfacFdBoundingPoly = Nothing
    , _gcvvfacAngerLikelihood = Nothing
    , _gcvvfacDetectionConfidence = Nothing
    , _gcvvfacHeadwearLikelihood = Nothing
    , _gcvvfacSorrowLikelihood = Nothing
    , _gcvvfacJoyLikelihood = Nothing
    , _gcvvfacLandmarks = Nothing
    }


-- | Pitch angle, which indicates the upwards\/downwards angle that the face
-- is pointing relative to the image\'s horizontal plane. Range [-180,180].
gcvvfacTiltAngle :: Lens' GoogleCloudVisionV1p3beta1FaceAnnotation (Maybe Double)
gcvvfacTiltAngle
  = lens _gcvvfacTiltAngle
      (\ s a -> s{_gcvvfacTiltAngle = a})
      . mapping _Coerce

-- | Blurred likelihood.
gcvvfacBlurredLikelihood :: Lens' GoogleCloudVisionV1p3beta1FaceAnnotation (Maybe GoogleCloudVisionV1p3beta1FaceAnnotationBlurredLikelihood)
gcvvfacBlurredLikelihood
  = lens _gcvvfacBlurredLikelihood
      (\ s a -> s{_gcvvfacBlurredLikelihood = a})

-- | The bounding polygon around the face. The coordinates of the bounding
-- box are in the original image\'s scale. The bounding box is computed to
-- \"frame\" the face in accordance with human expectations. It is based on
-- the landmarker results. Note that one or more x and\/or y coordinates
-- may not be generated in the \`BoundingPoly\` (the polygon will be
-- unbounded) if only a partial face appears in the image to be annotated.
gcvvfacBoundingPoly :: Lens' GoogleCloudVisionV1p3beta1FaceAnnotation (Maybe GoogleCloudVisionV1p3beta1BoundingPoly)
gcvvfacBoundingPoly
  = lens _gcvvfacBoundingPoly
      (\ s a -> s{_gcvvfacBoundingPoly = a})

-- | Surprise likelihood.
gcvvfacSurpriseLikelihood :: Lens' GoogleCloudVisionV1p3beta1FaceAnnotation (Maybe GoogleCloudVisionV1p3beta1FaceAnnotationSurpriseLikelihood)
gcvvfacSurpriseLikelihood
  = lens _gcvvfacSurpriseLikelihood
      (\ s a -> s{_gcvvfacSurpriseLikelihood = a})

-- | Face landmarking confidence. Range [0, 1].
gcvvfacLandmarkingConfidence :: Lens' GoogleCloudVisionV1p3beta1FaceAnnotation (Maybe Double)
gcvvfacLandmarkingConfidence
  = lens _gcvvfacLandmarkingConfidence
      (\ s a -> s{_gcvvfacLandmarkingConfidence = a})
      . mapping _Coerce

-- | Yaw angle, which indicates the leftward\/rightward angle that the face
-- is pointing relative to the vertical plane perpendicular to the image.
-- Range [-180,180].
gcvvfacPanAngle :: Lens' GoogleCloudVisionV1p3beta1FaceAnnotation (Maybe Double)
gcvvfacPanAngle
  = lens _gcvvfacPanAngle
      (\ s a -> s{_gcvvfacPanAngle = a})
      . mapping _Coerce

-- | Roll angle, which indicates the amount of clockwise\/anti-clockwise
-- rotation of the face relative to the image vertical about the axis
-- perpendicular to the face. Range [-180,180].
gcvvfacRollAngle :: Lens' GoogleCloudVisionV1p3beta1FaceAnnotation (Maybe Double)
gcvvfacRollAngle
  = lens _gcvvfacRollAngle
      (\ s a -> s{_gcvvfacRollAngle = a})
      . mapping _Coerce

-- | Under-exposed likelihood.
gcvvfacUnderExposedLikelihood :: Lens' GoogleCloudVisionV1p3beta1FaceAnnotation (Maybe GoogleCloudVisionV1p3beta1FaceAnnotationUnderExposedLikelihood)
gcvvfacUnderExposedLikelihood
  = lens _gcvvfacUnderExposedLikelihood
      (\ s a -> s{_gcvvfacUnderExposedLikelihood = a})

-- | The \`fd_bounding_poly\` bounding polygon is tighter than the
-- \`boundingPoly\`, and encloses only the skin part of the face.
-- Typically, it is used to eliminate the face from any image analysis that
-- detects the \"amount of skin\" visible in an image. It is not based on
-- the landmarker results, only on the initial face detection, hence the fd
-- (face detection) prefix.
gcvvfacFdBoundingPoly :: Lens' GoogleCloudVisionV1p3beta1FaceAnnotation (Maybe GoogleCloudVisionV1p3beta1BoundingPoly)
gcvvfacFdBoundingPoly
  = lens _gcvvfacFdBoundingPoly
      (\ s a -> s{_gcvvfacFdBoundingPoly = a})

-- | Anger likelihood.
gcvvfacAngerLikelihood :: Lens' GoogleCloudVisionV1p3beta1FaceAnnotation (Maybe GoogleCloudVisionV1p3beta1FaceAnnotationAngerLikelihood)
gcvvfacAngerLikelihood
  = lens _gcvvfacAngerLikelihood
      (\ s a -> s{_gcvvfacAngerLikelihood = a})

-- | Detection confidence. Range [0, 1].
gcvvfacDetectionConfidence :: Lens' GoogleCloudVisionV1p3beta1FaceAnnotation (Maybe Double)
gcvvfacDetectionConfidence
  = lens _gcvvfacDetectionConfidence
      (\ s a -> s{_gcvvfacDetectionConfidence = a})
      . mapping _Coerce

-- | Headwear likelihood.
gcvvfacHeadwearLikelihood :: Lens' GoogleCloudVisionV1p3beta1FaceAnnotation (Maybe GoogleCloudVisionV1p3beta1FaceAnnotationHeadwearLikelihood)
gcvvfacHeadwearLikelihood
  = lens _gcvvfacHeadwearLikelihood
      (\ s a -> s{_gcvvfacHeadwearLikelihood = a})

-- | Sorrow likelihood.
gcvvfacSorrowLikelihood :: Lens' GoogleCloudVisionV1p3beta1FaceAnnotation (Maybe GoogleCloudVisionV1p3beta1FaceAnnotationSorrowLikelihood)
gcvvfacSorrowLikelihood
  = lens _gcvvfacSorrowLikelihood
      (\ s a -> s{_gcvvfacSorrowLikelihood = a})

-- | Joy likelihood.
gcvvfacJoyLikelihood :: Lens' GoogleCloudVisionV1p3beta1FaceAnnotation (Maybe GoogleCloudVisionV1p3beta1FaceAnnotationJoyLikelihood)
gcvvfacJoyLikelihood
  = lens _gcvvfacJoyLikelihood
      (\ s a -> s{_gcvvfacJoyLikelihood = a})

-- | Detected face landmarks.
gcvvfacLandmarks :: Lens' GoogleCloudVisionV1p3beta1FaceAnnotation [GoogleCloudVisionV1p3beta1FaceAnnotationLandmark]
gcvvfacLandmarks
  = lens _gcvvfacLandmarks
      (\ s a -> s{_gcvvfacLandmarks = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p3beta1FaceAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p3beta1FaceAnnotation"
              (\ o ->
                 GoogleCloudVisionV1p3beta1FaceAnnotation' <$>
                   (o .:? "tiltAngle") <*> (o .:? "blurredLikelihood")
                     <*> (o .:? "boundingPoly")
                     <*> (o .:? "surpriseLikelihood")
                     <*> (o .:? "landmarkingConfidence")
                     <*> (o .:? "panAngle")
                     <*> (o .:? "rollAngle")
                     <*> (o .:? "underExposedLikelihood")
                     <*> (o .:? "fdBoundingPoly")
                     <*> (o .:? "angerLikelihood")
                     <*> (o .:? "detectionConfidence")
                     <*> (o .:? "headwearLikelihood")
                     <*> (o .:? "sorrowLikelihood")
                     <*> (o .:? "joyLikelihood")
                     <*> (o .:? "landmarks" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p3beta1FaceAnnotation
         where
        toJSON GoogleCloudVisionV1p3beta1FaceAnnotation'{..}
          = object
              (catMaybes
                 [("tiltAngle" .=) <$> _gcvvfacTiltAngle,
                  ("blurredLikelihood" .=) <$>
                    _gcvvfacBlurredLikelihood,
                  ("boundingPoly" .=) <$> _gcvvfacBoundingPoly,
                  ("surpriseLikelihood" .=) <$>
                    _gcvvfacSurpriseLikelihood,
                  ("landmarkingConfidence" .=) <$>
                    _gcvvfacLandmarkingConfidence,
                  ("panAngle" .=) <$> _gcvvfacPanAngle,
                  ("rollAngle" .=) <$> _gcvvfacRollAngle,
                  ("underExposedLikelihood" .=) <$>
                    _gcvvfacUnderExposedLikelihood,
                  ("fdBoundingPoly" .=) <$> _gcvvfacFdBoundingPoly,
                  ("angerLikelihood" .=) <$> _gcvvfacAngerLikelihood,
                  ("detectionConfidence" .=) <$>
                    _gcvvfacDetectionConfidence,
                  ("headwearLikelihood" .=) <$>
                    _gcvvfacHeadwearLikelihood,
                  ("sorrowLikelihood" .=) <$> _gcvvfacSorrowLikelihood,
                  ("joyLikelihood" .=) <$> _gcvvfacJoyLikelihood,
                  ("landmarks" .=) <$> _gcvvfacLandmarks])

-- | Detected language for a structural component.
--
-- /See:/ 'googleCloudVisionV1p3beta1TextAnnotationDetectedLanguage' smart constructor.
data GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage =
  GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage'
    { _gcvvtadl1LanguageCode :: !(Maybe Text)
    , _gcvvtadl1Confidence :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvtadl1LanguageCode'
--
-- * 'gcvvtadl1Confidence'
googleCloudVisionV1p3beta1TextAnnotationDetectedLanguage
    :: GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage
googleCloudVisionV1p3beta1TextAnnotationDetectedLanguage =
  GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage'
    {_gcvvtadl1LanguageCode = Nothing, _gcvvtadl1Confidence = Nothing}


-- | The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more
-- information, see
-- http:\/\/www.unicode.org\/reports\/tr35\/#Unicode_locale_identifier.
gcvvtadl1LanguageCode :: Lens' GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage (Maybe Text)
gcvvtadl1LanguageCode
  = lens _gcvvtadl1LanguageCode
      (\ s a -> s{_gcvvtadl1LanguageCode = a})

-- | Confidence of detected language. Range [0, 1].
gcvvtadl1Confidence :: Lens' GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage (Maybe Double)
gcvvtadl1Confidence
  = lens _gcvvtadl1Confidence
      (\ s a -> s{_gcvvtadl1Confidence = a})
      . mapping _Coerce

instance FromJSON
           GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage"
              (\ o ->
                 GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage'
                   <$> (o .:? "languageCode") <*> (o .:? "confidence"))

instance ToJSON
           GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage
         where
        toJSON
          GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _gcvvtadl1LanguageCode,
                  ("confidence" .=) <$> _gcvvtadl1Confidence])

-- | The response for a single offline file annotation request.
--
-- /See:/ 'googleCloudVisionV1p4beta1AsyncAnnotateFileResponse' smart constructor.
newtype GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse =
  GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse'
    { _gcvvaafrcOutputConfig :: Maybe GoogleCloudVisionV1p4beta1OutputConfig
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvaafrcOutputConfig'
googleCloudVisionV1p4beta1AsyncAnnotateFileResponse
    :: GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse
googleCloudVisionV1p4beta1AsyncAnnotateFileResponse =
  GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse'
    {_gcvvaafrcOutputConfig = Nothing}


-- | The output location and metadata from AsyncAnnotateFileRequest.
gcvvaafrcOutputConfig :: Lens' GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse (Maybe GoogleCloudVisionV1p4beta1OutputConfig)
gcvvaafrcOutputConfig
  = lens _gcvvaafrcOutputConfig
      (\ s a -> s{_gcvvaafrcOutputConfig = a})

instance FromJSON
           GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse"
              (\ o ->
                 GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse'
                   <$> (o .:? "outputConfig"))

instance ToJSON
           GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse
         where
        toJSON
          GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse'{..}
          = object
              (catMaybes
                 [("outputConfig" .=) <$> _gcvvaafrcOutputConfig])

-- | Metadata for web pages.
--
-- /See:/ 'googleCloudVisionV1p1beta1WebDetectionWebPage' smart constructor.
data GoogleCloudVisionV1p1beta1WebDetectionWebPage =
  GoogleCloudVisionV1p1beta1WebDetectionWebPage'
    { _gcvvwdwpcScore :: !(Maybe (Textual Double))
    , _gcvvwdwpcURL :: !(Maybe Text)
    , _gcvvwdwpcPageTitle :: !(Maybe Text)
    , _gcvvwdwpcPartialMatchingImages :: !(Maybe [GoogleCloudVisionV1p1beta1WebDetectionWebImage])
    , _gcvvwdwpcFullMatchingImages :: !(Maybe [GoogleCloudVisionV1p1beta1WebDetectionWebImage])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1WebDetectionWebPage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvwdwpcScore'
--
-- * 'gcvvwdwpcURL'
--
-- * 'gcvvwdwpcPageTitle'
--
-- * 'gcvvwdwpcPartialMatchingImages'
--
-- * 'gcvvwdwpcFullMatchingImages'
googleCloudVisionV1p1beta1WebDetectionWebPage
    :: GoogleCloudVisionV1p1beta1WebDetectionWebPage
googleCloudVisionV1p1beta1WebDetectionWebPage =
  GoogleCloudVisionV1p1beta1WebDetectionWebPage'
    { _gcvvwdwpcScore = Nothing
    , _gcvvwdwpcURL = Nothing
    , _gcvvwdwpcPageTitle = Nothing
    , _gcvvwdwpcPartialMatchingImages = Nothing
    , _gcvvwdwpcFullMatchingImages = Nothing
    }


-- | (Deprecated) Overall relevancy score for the web page.
gcvvwdwpcScore :: Lens' GoogleCloudVisionV1p1beta1WebDetectionWebPage (Maybe Double)
gcvvwdwpcScore
  = lens _gcvvwdwpcScore
      (\ s a -> s{_gcvvwdwpcScore = a})
      . mapping _Coerce

-- | The result web page URL.
gcvvwdwpcURL :: Lens' GoogleCloudVisionV1p1beta1WebDetectionWebPage (Maybe Text)
gcvvwdwpcURL
  = lens _gcvvwdwpcURL (\ s a -> s{_gcvvwdwpcURL = a})

-- | Title for the web page, may contain HTML markups.
gcvvwdwpcPageTitle :: Lens' GoogleCloudVisionV1p1beta1WebDetectionWebPage (Maybe Text)
gcvvwdwpcPageTitle
  = lens _gcvvwdwpcPageTitle
      (\ s a -> s{_gcvvwdwpcPageTitle = a})

-- | Partial matching images on the page. Those images are similar enough to
-- share some key-point features. For example an original image will likely
-- have partial matching for its crops.
gcvvwdwpcPartialMatchingImages :: Lens' GoogleCloudVisionV1p1beta1WebDetectionWebPage [GoogleCloudVisionV1p1beta1WebDetectionWebImage]
gcvvwdwpcPartialMatchingImages
  = lens _gcvvwdwpcPartialMatchingImages
      (\ s a -> s{_gcvvwdwpcPartialMatchingImages = a})
      . _Default
      . _Coerce

-- | Fully matching images on the page. Can include resized copies of the
-- query image.
gcvvwdwpcFullMatchingImages :: Lens' GoogleCloudVisionV1p1beta1WebDetectionWebPage [GoogleCloudVisionV1p1beta1WebDetectionWebImage]
gcvvwdwpcFullMatchingImages
  = lens _gcvvwdwpcFullMatchingImages
      (\ s a -> s{_gcvvwdwpcFullMatchingImages = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p1beta1WebDetectionWebPage
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p1beta1WebDetectionWebPage"
              (\ o ->
                 GoogleCloudVisionV1p1beta1WebDetectionWebPage' <$>
                   (o .:? "score") <*> (o .:? "url") <*>
                     (o .:? "pageTitle")
                     <*> (o .:? "partialMatchingImages" .!= mempty)
                     <*> (o .:? "fullMatchingImages" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p1beta1WebDetectionWebPage
         where
        toJSON
          GoogleCloudVisionV1p1beta1WebDetectionWebPage'{..}
          = object
              (catMaybes
                 [("score" .=) <$> _gcvvwdwpcScore,
                  ("url" .=) <$> _gcvvwdwpcURL,
                  ("pageTitle" .=) <$> _gcvvwdwpcPageTitle,
                  ("partialMatchingImages" .=) <$>
                    _gcvvwdwpcPartialMatchingImages,
                  ("fullMatchingImages" .=) <$>
                    _gcvvwdwpcFullMatchingImages])

-- | The desired output location and metadata.
--
-- /See:/ 'outputConfig' smart constructor.
data OutputConfig =
  OutputConfig'
    { _ocGcsDestination :: !(Maybe GcsDestination)
    , _ocBatchSize :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OutputConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocGcsDestination'
--
-- * 'ocBatchSize'
outputConfig
    :: OutputConfig
outputConfig =
  OutputConfig' {_ocGcsDestination = Nothing, _ocBatchSize = Nothing}


-- | The Google Cloud Storage location to write the output(s) to.
ocGcsDestination :: Lens' OutputConfig (Maybe GcsDestination)
ocGcsDestination
  = lens _ocGcsDestination
      (\ s a -> s{_ocGcsDestination = a})

-- | The max number of response protos to put into each output JSON file on
-- Google Cloud Storage. The valid range is [1, 100]. If not specified, the
-- default value is 20. For example, for one pdf file with 100 pages, 100
-- response protos will be generated. If \`batch_size\` = 20, then 5 json
-- files each containing 20 response protos will be written under the
-- prefix \`gcs_destination\`.\`uri\`. Currently, batch_size only applies
-- to GcsDestination, with potential future support for other output
-- configurations.
ocBatchSize :: Lens' OutputConfig (Maybe Int32)
ocBatchSize
  = lens _ocBatchSize (\ s a -> s{_ocBatchSize = a}) .
      mapping _Coerce

instance FromJSON OutputConfig where
        parseJSON
          = withObject "OutputConfig"
              (\ o ->
                 OutputConfig' <$>
                   (o .:? "gcsDestination") <*> (o .:? "batchSize"))

instance ToJSON OutputConfig where
        toJSON OutputConfig'{..}
          = object
              (catMaybes
                 [("gcsDestination" .=) <$> _ocGcsDestination,
                  ("batchSize" .=) <$> _ocBatchSize])

-- | Detected start or end of a structural component.
--
-- /See:/ 'googleCloudVisionV1p3beta1TextAnnotationDetectedBreak' smart constructor.
data GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak =
  GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak'
    { _ggIsPrefix :: !(Maybe Bool)
    , _ggType :: !(Maybe GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreakType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggIsPrefix'
--
-- * 'ggType'
googleCloudVisionV1p3beta1TextAnnotationDetectedBreak
    :: GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak
googleCloudVisionV1p3beta1TextAnnotationDetectedBreak =
  GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak'
    {_ggIsPrefix = Nothing, _ggType = Nothing}


-- | True if break prepends the element.
ggIsPrefix :: Lens' GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak (Maybe Bool)
ggIsPrefix
  = lens _ggIsPrefix (\ s a -> s{_ggIsPrefix = a})

-- | Detected break type.
ggType :: Lens' GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak (Maybe GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreakType)
ggType = lens _ggType (\ s a -> s{_ggType = a})

instance FromJSON
           GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak"
              (\ o ->
                 GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak'
                   <$> (o .:? "isPrefix") <*> (o .:? "type"))

instance ToJSON
           GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak
         where
        toJSON
          GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak'{..}
          = object
              (catMaybes
                 [("isPrefix" .=) <$> _ggIsPrefix,
                  ("type" .=) <$> _ggType])

-- | TextAnnotation contains a structured representation of OCR extracted
-- text. The hierarchy of an OCR extracted text structure is like this:
-- TextAnnotation -> Page -> Block -> Paragraph -> Word -> Symbol Each
-- structural component, starting from Page, may further have their own
-- properties. Properties describe detected languages, breaks etc.. Please
-- refer to the TextAnnotation.TextProperty message definition below for
-- more detail.
--
-- /See:/ 'googleCloudVisionV1p2beta1TextAnnotation' smart constructor.
data GoogleCloudVisionV1p2beta1TextAnnotation =
  GoogleCloudVisionV1p2beta1TextAnnotation'
    { _gcvvtacText :: !(Maybe Text)
    , _gcvvtacPages :: !(Maybe [GoogleCloudVisionV1p2beta1Page])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1TextAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvtacText'
--
-- * 'gcvvtacPages'
googleCloudVisionV1p2beta1TextAnnotation
    :: GoogleCloudVisionV1p2beta1TextAnnotation
googleCloudVisionV1p2beta1TextAnnotation =
  GoogleCloudVisionV1p2beta1TextAnnotation'
    {_gcvvtacText = Nothing, _gcvvtacPages = Nothing}


-- | UTF-8 text detected on the pages.
gcvvtacText :: Lens' GoogleCloudVisionV1p2beta1TextAnnotation (Maybe Text)
gcvvtacText
  = lens _gcvvtacText (\ s a -> s{_gcvvtacText = a})

-- | List of pages detected by OCR.
gcvvtacPages :: Lens' GoogleCloudVisionV1p2beta1TextAnnotation [GoogleCloudVisionV1p2beta1Page]
gcvvtacPages
  = lens _gcvvtacPages (\ s a -> s{_gcvvtacPages = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p2beta1TextAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p2beta1TextAnnotation"
              (\ o ->
                 GoogleCloudVisionV1p2beta1TextAnnotation' <$>
                   (o .:? "text") <*> (o .:? "pages" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p2beta1TextAnnotation
         where
        toJSON GoogleCloudVisionV1p2beta1TextAnnotation'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _gcvvtacText,
                  ("pages" .=) <$> _gcvvtacPages])

-- | Set of features pertaining to the image, computed by computer vision
-- methods over safe-search verticals (for example, adult, spoof, medical,
-- violence).
--
-- /See:/ 'safeSearchAnnotation' smart constructor.
data SafeSearchAnnotation =
  SafeSearchAnnotation'
    { _ssaSpoof :: !(Maybe SafeSearchAnnotationSpoof)
    , _ssaRacy :: !(Maybe SafeSearchAnnotationRacy)
    , _ssaAdult :: !(Maybe SafeSearchAnnotationAdult)
    , _ssaMedical :: !(Maybe SafeSearchAnnotationMedical)
    , _ssaViolence :: !(Maybe SafeSearchAnnotationViolence)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SafeSearchAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssaSpoof'
--
-- * 'ssaRacy'
--
-- * 'ssaAdult'
--
-- * 'ssaMedical'
--
-- * 'ssaViolence'
safeSearchAnnotation
    :: SafeSearchAnnotation
safeSearchAnnotation =
  SafeSearchAnnotation'
    { _ssaSpoof = Nothing
    , _ssaRacy = Nothing
    , _ssaAdult = Nothing
    , _ssaMedical = Nothing
    , _ssaViolence = Nothing
    }


-- | Spoof likelihood. The likelihood that an modification was made to the
-- image\'s canonical version to make it appear funny or offensive.
ssaSpoof :: Lens' SafeSearchAnnotation (Maybe SafeSearchAnnotationSpoof)
ssaSpoof = lens _ssaSpoof (\ s a -> s{_ssaSpoof = a})

-- | Likelihood that the request image contains racy content. Racy content
-- may include (but is not limited to) skimpy or sheer clothing,
-- strategically covered nudity, lewd or provocative poses, or close-ups of
-- sensitive body areas.
ssaRacy :: Lens' SafeSearchAnnotation (Maybe SafeSearchAnnotationRacy)
ssaRacy = lens _ssaRacy (\ s a -> s{_ssaRacy = a})

-- | Represents the adult content likelihood for the image. Adult content may
-- contain elements such as nudity, pornographic images or cartoons, or
-- sexual activities.
ssaAdult :: Lens' SafeSearchAnnotation (Maybe SafeSearchAnnotationAdult)
ssaAdult = lens _ssaAdult (\ s a -> s{_ssaAdult = a})

-- | Likelihood that this is a medical image.
ssaMedical :: Lens' SafeSearchAnnotation (Maybe SafeSearchAnnotationMedical)
ssaMedical
  = lens _ssaMedical (\ s a -> s{_ssaMedical = a})

-- | Likelihood that this image contains violent content.
ssaViolence :: Lens' SafeSearchAnnotation (Maybe SafeSearchAnnotationViolence)
ssaViolence
  = lens _ssaViolence (\ s a -> s{_ssaViolence = a})

instance FromJSON SafeSearchAnnotation where
        parseJSON
          = withObject "SafeSearchAnnotation"
              (\ o ->
                 SafeSearchAnnotation' <$>
                   (o .:? "spoof") <*> (o .:? "racy") <*>
                     (o .:? "adult")
                     <*> (o .:? "medical")
                     <*> (o .:? "violence"))

instance ToJSON SafeSearchAnnotation where
        toJSON SafeSearchAnnotation'{..}
          = object
              (catMaybes
                 [("spoof" .=) <$> _ssaSpoof,
                  ("racy" .=) <$> _ssaRacy, ("adult" .=) <$> _ssaAdult,
                  ("medical" .=) <$> _ssaMedical,
                  ("violence" .=) <$> _ssaViolence])

-- | Label to provide extra metadata for the web detection.
--
-- /See:/ 'googleCloudVisionV1p1beta1WebDetectionWebLabel' smart constructor.
data GoogleCloudVisionV1p1beta1WebDetectionWebLabel =
  GoogleCloudVisionV1p1beta1WebDetectionWebLabel'
    { _ggLanguageCode :: !(Maybe Text)
    , _ggLabel :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1WebDetectionWebLabel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggLanguageCode'
--
-- * 'ggLabel'
googleCloudVisionV1p1beta1WebDetectionWebLabel
    :: GoogleCloudVisionV1p1beta1WebDetectionWebLabel
googleCloudVisionV1p1beta1WebDetectionWebLabel =
  GoogleCloudVisionV1p1beta1WebDetectionWebLabel'
    {_ggLanguageCode = Nothing, _ggLabel = Nothing}


-- | The BCP-47 language code for \`label\`, such as \"en-US\" or
-- \"sr-Latn\". For more information, see
-- http:\/\/www.unicode.org\/reports\/tr35\/#Unicode_locale_identifier.
ggLanguageCode :: Lens' GoogleCloudVisionV1p1beta1WebDetectionWebLabel (Maybe Text)
ggLanguageCode
  = lens _ggLanguageCode
      (\ s a -> s{_ggLanguageCode = a})

-- | Label for extra metadata.
ggLabel :: Lens' GoogleCloudVisionV1p1beta1WebDetectionWebLabel (Maybe Text)
ggLabel = lens _ggLabel (\ s a -> s{_ggLabel = a})

instance FromJSON
           GoogleCloudVisionV1p1beta1WebDetectionWebLabel
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p1beta1WebDetectionWebLabel"
              (\ o ->
                 GoogleCloudVisionV1p1beta1WebDetectionWebLabel' <$>
                   (o .:? "languageCode") <*> (o .:? "label"))

instance ToJSON
           GoogleCloudVisionV1p1beta1WebDetectionWebLabel
         where
        toJSON
          GoogleCloudVisionV1p1beta1WebDetectionWebLabel'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _ggLanguageCode,
                  ("label" .=) <$> _ggLabel])

-- | Set of dominant colors and their corresponding scores.
--
-- /See:/ 'googleCloudVisionV1p3beta1DominantColorsAnnotation' smart constructor.
newtype GoogleCloudVisionV1p3beta1DominantColorsAnnotation =
  GoogleCloudVisionV1p3beta1DominantColorsAnnotation'
    { _gcvvdcacColors :: Maybe [GoogleCloudVisionV1p3beta1ColorInfo]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1DominantColorsAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvdcacColors'
googleCloudVisionV1p3beta1DominantColorsAnnotation
    :: GoogleCloudVisionV1p3beta1DominantColorsAnnotation
googleCloudVisionV1p3beta1DominantColorsAnnotation =
  GoogleCloudVisionV1p3beta1DominantColorsAnnotation'
    {_gcvvdcacColors = Nothing}


-- | RGB color values with their score and pixel fraction.
gcvvdcacColors :: Lens' GoogleCloudVisionV1p3beta1DominantColorsAnnotation [GoogleCloudVisionV1p3beta1ColorInfo]
gcvvdcacColors
  = lens _gcvvdcacColors
      (\ s a -> s{_gcvvdcacColors = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p3beta1DominantColorsAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p3beta1DominantColorsAnnotation"
              (\ o ->
                 GoogleCloudVisionV1p3beta1DominantColorsAnnotation'
                   <$> (o .:? "colors" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p3beta1DominantColorsAnnotation
         where
        toJSON
          GoogleCloudVisionV1p3beta1DominantColorsAnnotation'{..}
          = object
              (catMaybes [("colors" .=) <$> _gcvvdcacColors])

-- | Entity deduced from similar images on the Internet.
--
-- /See:/ 'googleCloudVisionV1p4beta1WebDetectionWebEntity' smart constructor.
data GoogleCloudVisionV1p4beta1WebDetectionWebEntity =
  GoogleCloudVisionV1p4beta1WebDetectionWebEntity'
    { _goo1Score :: !(Maybe (Textual Double))
    , _goo1EntityId :: !(Maybe Text)
    , _goo1Description :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1WebDetectionWebEntity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'goo1Score'
--
-- * 'goo1EntityId'
--
-- * 'goo1Description'
googleCloudVisionV1p4beta1WebDetectionWebEntity
    :: GoogleCloudVisionV1p4beta1WebDetectionWebEntity
googleCloudVisionV1p4beta1WebDetectionWebEntity =
  GoogleCloudVisionV1p4beta1WebDetectionWebEntity'
    {_goo1Score = Nothing, _goo1EntityId = Nothing, _goo1Description = Nothing}


-- | Overall relevancy score for the entity. Not normalized and not
-- comparable across different image queries.
goo1Score :: Lens' GoogleCloudVisionV1p4beta1WebDetectionWebEntity (Maybe Double)
goo1Score
  = lens _goo1Score (\ s a -> s{_goo1Score = a}) .
      mapping _Coerce

-- | Opaque entity ID.
goo1EntityId :: Lens' GoogleCloudVisionV1p4beta1WebDetectionWebEntity (Maybe Text)
goo1EntityId
  = lens _goo1EntityId (\ s a -> s{_goo1EntityId = a})

-- | Canonical description of the entity, in English.
goo1Description :: Lens' GoogleCloudVisionV1p4beta1WebDetectionWebEntity (Maybe Text)
goo1Description
  = lens _goo1Description
      (\ s a -> s{_goo1Description = a})

instance FromJSON
           GoogleCloudVisionV1p4beta1WebDetectionWebEntity
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p4beta1WebDetectionWebEntity"
              (\ o ->
                 GoogleCloudVisionV1p4beta1WebDetectionWebEntity' <$>
                   (o .:? "score") <*> (o .:? "entityId") <*>
                     (o .:? "description"))

instance ToJSON
           GoogleCloudVisionV1p4beta1WebDetectionWebEntity
         where
        toJSON
          GoogleCloudVisionV1p4beta1WebDetectionWebEntity'{..}
          = object
              (catMaybes
                 [("score" .=) <$> _goo1Score,
                  ("entityId" .=) <$> _goo1EntityId,
                  ("description" .=) <$> _goo1Description])

-- | Color information consists of RGB channels, score, and the fraction of
-- the image that the color occupies in the image.
--
-- /See:/ 'googleCloudVisionV1p3beta1ColorInfo' smart constructor.
data GoogleCloudVisionV1p3beta1ColorInfo =
  GoogleCloudVisionV1p3beta1ColorInfo'
    { _gcvvci1Color :: !(Maybe Color)
    , _gcvvci1Score :: !(Maybe (Textual Double))
    , _gcvvci1PixelFraction :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1ColorInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvci1Color'
--
-- * 'gcvvci1Score'
--
-- * 'gcvvci1PixelFraction'
googleCloudVisionV1p3beta1ColorInfo
    :: GoogleCloudVisionV1p3beta1ColorInfo
googleCloudVisionV1p3beta1ColorInfo =
  GoogleCloudVisionV1p3beta1ColorInfo'
    { _gcvvci1Color = Nothing
    , _gcvvci1Score = Nothing
    , _gcvvci1PixelFraction = Nothing
    }


-- | RGB components of the color.
gcvvci1Color :: Lens' GoogleCloudVisionV1p3beta1ColorInfo (Maybe Color)
gcvvci1Color
  = lens _gcvvci1Color (\ s a -> s{_gcvvci1Color = a})

-- | Image-specific score for this color. Value in range [0, 1].
gcvvci1Score :: Lens' GoogleCloudVisionV1p3beta1ColorInfo (Maybe Double)
gcvvci1Score
  = lens _gcvvci1Score (\ s a -> s{_gcvvci1Score = a})
      . mapping _Coerce

-- | The fraction of pixels the color occupies in the image. Value in range
-- [0, 1].
gcvvci1PixelFraction :: Lens' GoogleCloudVisionV1p3beta1ColorInfo (Maybe Double)
gcvvci1PixelFraction
  = lens _gcvvci1PixelFraction
      (\ s a -> s{_gcvvci1PixelFraction = a})
      . mapping _Coerce

instance FromJSON GoogleCloudVisionV1p3beta1ColorInfo
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p3beta1ColorInfo"
              (\ o ->
                 GoogleCloudVisionV1p3beta1ColorInfo' <$>
                   (o .:? "color") <*> (o .:? "score") <*>
                     (o .:? "pixelFraction"))

instance ToJSON GoogleCloudVisionV1p3beta1ColorInfo
         where
        toJSON GoogleCloudVisionV1p3beta1ColorInfo'{..}
          = object
              (catMaybes
                 [("color" .=) <$> _gcvvci1Color,
                  ("score" .=) <$> _gcvvci1Score,
                  ("pixelFraction" .=) <$> _gcvvci1PixelFraction])

-- | Parameters for crop hints annotation request.
--
-- /See:/ 'googleCloudVisionV1p2beta1CropHintsParams' smart constructor.
newtype GoogleCloudVisionV1p2beta1CropHintsParams =
  GoogleCloudVisionV1p2beta1CropHintsParams'
    { _gcvvchpAspectRatios :: Maybe [Textual Double]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1CropHintsParams' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvchpAspectRatios'
googleCloudVisionV1p2beta1CropHintsParams
    :: GoogleCloudVisionV1p2beta1CropHintsParams
googleCloudVisionV1p2beta1CropHintsParams =
  GoogleCloudVisionV1p2beta1CropHintsParams' {_gcvvchpAspectRatios = Nothing}


-- | Aspect ratios in floats, representing the ratio of the width to the
-- height of the image. For example, if the desired aspect ratio is 4\/3,
-- the corresponding float value should be 1.33333. If not specified, the
-- best possible crop is returned. The number of provided aspect ratios is
-- limited to a maximum of 16; any aspect ratios provided after the 16th
-- are ignored.
gcvvchpAspectRatios :: Lens' GoogleCloudVisionV1p2beta1CropHintsParams [Double]
gcvvchpAspectRatios
  = lens _gcvvchpAspectRatios
      (\ s a -> s{_gcvvchpAspectRatios = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p2beta1CropHintsParams
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p2beta1CropHintsParams"
              (\ o ->
                 GoogleCloudVisionV1p2beta1CropHintsParams' <$>
                   (o .:? "aspectRatios" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p2beta1CropHintsParams
         where
        toJSON GoogleCloudVisionV1p2beta1CropHintsParams'{..}
          = object
              (catMaybes
                 [("aspectRatios" .=) <$> _gcvvchpAspectRatios])

-- | A list of requests to annotate files using the BatchAnnotateFiles API.
--
-- /See:/ 'googleCloudVisionV1p2beta1BatchAnnotateFilesRequest' smart constructor.
data GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest =
  GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest'
    { _gcvvbafrParent :: !(Maybe Text)
    , _gcvvbafrRequests :: !(Maybe [GoogleCloudVisionV1p2beta1AnnotateFileRequest])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvbafrParent'
--
-- * 'gcvvbafrRequests'
googleCloudVisionV1p2beta1BatchAnnotateFilesRequest
    :: GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest
googleCloudVisionV1p2beta1BatchAnnotateFilesRequest =
  GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest'
    {_gcvvbafrParent = Nothing, _gcvvbafrRequests = Nothing}


-- | Optional. Target project and location to make a call. Format:
-- \`projects\/{project-id}\/locations\/{location-id}\`. If no parent is
-- specified, a region will be chosen automatically. Supported
-- location-ids: \`us\`: USA country only, \`asia\`: East asia areas, like
-- Japan, Taiwan, \`eu\`: The European Union. Example:
-- \`projects\/project-A\/locations\/eu\`.
gcvvbafrParent :: Lens' GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest (Maybe Text)
gcvvbafrParent
  = lens _gcvvbafrParent
      (\ s a -> s{_gcvvbafrParent = a})

-- | Required. The list of file annotation requests. Right now we support
-- only one AnnotateFileRequest in BatchAnnotateFilesRequest.
gcvvbafrRequests :: Lens' GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest [GoogleCloudVisionV1p2beta1AnnotateFileRequest]
gcvvbafrRequests
  = lens _gcvvbafrRequests
      (\ s a -> s{_gcvvbafrRequests = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest"
              (\ o ->
                 GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest'
                   <$>
                   (o .:? "parent") <*> (o .:? "requests" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest
         where
        toJSON
          GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest'{..}
          = object
              (catMaybes
                 [("parent" .=) <$> _gcvvbafrParent,
                  ("requests" .=) <$> _gcvvbafrRequests])

-- | Response message for the \`ImportProductSets\` method. This message is
-- returned by the google.longrunning.Operations.GetOperation method in the
-- returned google.longrunning.Operation.response field.
--
-- /See:/ 'googleCloudVisionV1p4beta1ImportProductSetsResponse' smart constructor.
data GoogleCloudVisionV1p4beta1ImportProductSetsResponse =
  GoogleCloudVisionV1p4beta1ImportProductSetsResponse'
    { _gReferenceImages :: !(Maybe [GoogleCloudVisionV1p4beta1ReferenceImage])
    , _gStatuses :: !(Maybe [Status])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1ImportProductSetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gReferenceImages'
--
-- * 'gStatuses'
googleCloudVisionV1p4beta1ImportProductSetsResponse
    :: GoogleCloudVisionV1p4beta1ImportProductSetsResponse
googleCloudVisionV1p4beta1ImportProductSetsResponse =
  GoogleCloudVisionV1p4beta1ImportProductSetsResponse'
    {_gReferenceImages = Nothing, _gStatuses = Nothing}


-- | The list of reference_images that are imported successfully.
gReferenceImages :: Lens' GoogleCloudVisionV1p4beta1ImportProductSetsResponse [GoogleCloudVisionV1p4beta1ReferenceImage]
gReferenceImages
  = lens _gReferenceImages
      (\ s a -> s{_gReferenceImages = a})
      . _Default
      . _Coerce

-- | The rpc status for each ImportProductSet request, including both
-- successes and errors. The number of statuses here matches the number of
-- lines in the csv file, and statuses[i] stores the success or failure
-- status of processing the i-th line of the csv, starting from line 0.
gStatuses :: Lens' GoogleCloudVisionV1p4beta1ImportProductSetsResponse [Status]
gStatuses
  = lens _gStatuses (\ s a -> s{_gStatuses = a}) .
      _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p4beta1ImportProductSetsResponse
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p4beta1ImportProductSetsResponse"
              (\ o ->
                 GoogleCloudVisionV1p4beta1ImportProductSetsResponse'
                   <$>
                   (o .:? "referenceImages" .!= mempty) <*>
                     (o .:? "statuses" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p4beta1ImportProductSetsResponse
         where
        toJSON
          GoogleCloudVisionV1p4beta1ImportProductSetsResponse'{..}
          = object
              (catMaybes
                 [("referenceImages" .=) <$> _gReferenceImages,
                  ("statuses" .=) <$> _gStatuses])

-- | Set of crop hints that are used to generate new crops when serving
-- images.
--
-- /See:/ 'googleCloudVisionV1p1beta1CropHintsAnnotation' smart constructor.
newtype GoogleCloudVisionV1p1beta1CropHintsAnnotation =
  GoogleCloudVisionV1p1beta1CropHintsAnnotation'
    { _gcvvchacCropHints :: Maybe [GoogleCloudVisionV1p1beta1CropHint]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1CropHintsAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvchacCropHints'
googleCloudVisionV1p1beta1CropHintsAnnotation
    :: GoogleCloudVisionV1p1beta1CropHintsAnnotation
googleCloudVisionV1p1beta1CropHintsAnnotation =
  GoogleCloudVisionV1p1beta1CropHintsAnnotation' {_gcvvchacCropHints = Nothing}


-- | Crop hint results.
gcvvchacCropHints :: Lens' GoogleCloudVisionV1p1beta1CropHintsAnnotation [GoogleCloudVisionV1p1beta1CropHint]
gcvvchacCropHints
  = lens _gcvvchacCropHints
      (\ s a -> s{_gcvvchacCropHints = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p1beta1CropHintsAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p1beta1CropHintsAnnotation"
              (\ o ->
                 GoogleCloudVisionV1p1beta1CropHintsAnnotation' <$>
                   (o .:? "cropHints" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p1beta1CropHintsAnnotation
         where
        toJSON
          GoogleCloudVisionV1p1beta1CropHintsAnnotation'{..}
          = object
              (catMaybes [("cropHints" .=) <$> _gcvvchacCropHints])

-- | The Google Cloud Storage location where the input will be read from.
--
-- /See:/ 'googleCloudVisionV1p2beta1GcsSource' smart constructor.
newtype GoogleCloudVisionV1p2beta1GcsSource =
  GoogleCloudVisionV1p2beta1GcsSource'
    { _gcvvgscURI :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1GcsSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvgscURI'
googleCloudVisionV1p2beta1GcsSource
    :: GoogleCloudVisionV1p2beta1GcsSource
googleCloudVisionV1p2beta1GcsSource =
  GoogleCloudVisionV1p2beta1GcsSource' {_gcvvgscURI = Nothing}


-- | Google Cloud Storage URI for the input file. This must only be a Google
-- Cloud Storage object. Wildcards are not currently supported.
gcvvgscURI :: Lens' GoogleCloudVisionV1p2beta1GcsSource (Maybe Text)
gcvvgscURI
  = lens _gcvvgscURI (\ s a -> s{_gcvvgscURI = a})

instance FromJSON GoogleCloudVisionV1p2beta1GcsSource
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p2beta1GcsSource"
              (\ o ->
                 GoogleCloudVisionV1p2beta1GcsSource' <$>
                   (o .:? "uri"))

instance ToJSON GoogleCloudVisionV1p2beta1GcsSource
         where
        toJSON GoogleCloudVisionV1p2beta1GcsSource'{..}
          = object (catMaybes [("uri" .=) <$> _gcvvgscURI])

-- | Contains metadata for the BatchAnnotateImages operation.
--
-- /See:/ 'operationMetadata' smart constructor.
data OperationMetadata =
  OperationMetadata'
    { _omState :: !(Maybe OperationMetadataState)
    , _omUpdateTime :: !(Maybe DateTime')
    , _omCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omState'
--
-- * 'omUpdateTime'
--
-- * 'omCreateTime'
operationMetadata
    :: OperationMetadata
operationMetadata =
  OperationMetadata'
    {_omState = Nothing, _omUpdateTime = Nothing, _omCreateTime = Nothing}


-- | Current state of the batch operation.
omState :: Lens' OperationMetadata (Maybe OperationMetadataState)
omState = lens _omState (\ s a -> s{_omState = a})

-- | The time when the operation result was last updated.
omUpdateTime :: Lens' OperationMetadata (Maybe UTCTime)
omUpdateTime
  = lens _omUpdateTime (\ s a -> s{_omUpdateTime = a})
      . mapping _DateTime

-- | The time when the batch request was received.
omCreateTime :: Lens' OperationMetadata (Maybe UTCTime)
omCreateTime
  = lens _omCreateTime (\ s a -> s{_omCreateTime = a})
      . mapping _DateTime

instance FromJSON OperationMetadata where
        parseJSON
          = withObject "OperationMetadata"
              (\ o ->
                 OperationMetadata' <$>
                   (o .:? "state") <*> (o .:? "updateTime") <*>
                     (o .:? "createTime"))

instance ToJSON OperationMetadata where
        toJSON OperationMetadata'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _omState,
                  ("updateTime" .=) <$> _omUpdateTime,
                  ("createTime" .=) <$> _omCreateTime])

-- | A Product contains ReferenceImages.
--
-- /See:/ 'product' smart constructor.
data Product =
  Product'
    { _proName :: !(Maybe Text)
    , _proDisplayName :: !(Maybe Text)
    , _proProductCategory :: !(Maybe Text)
    , _proProductLabels :: !(Maybe [KeyValue])
    , _proDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Product' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'proName'
--
-- * 'proDisplayName'
--
-- * 'proProductCategory'
--
-- * 'proProductLabels'
--
-- * 'proDescription'
product
    :: Product
product =
  Product'
    { _proName = Nothing
    , _proDisplayName = Nothing
    , _proProductCategory = Nothing
    , _proProductLabels = Nothing
    , _proDescription = Nothing
    }


-- | The resource name of the product. Format is:
-- \`projects\/PROJECT_ID\/locations\/LOC_ID\/products\/PRODUCT_ID\`. This
-- field is ignored when creating a product.
proName :: Lens' Product (Maybe Text)
proName = lens _proName (\ s a -> s{_proName = a})

-- | The user-provided name for this Product. Must not be empty. Must be at
-- most 4096 characters long.
proDisplayName :: Lens' Product (Maybe Text)
proDisplayName
  = lens _proDisplayName
      (\ s a -> s{_proDisplayName = a})

-- | Immutable. The category for the product identified by the reference
-- image. This should be one of \"homegoods-v2\", \"apparel-v2\",
-- \"toys-v2\", \"packagedgoods-v1\" or \"general-v1\". The legacy
-- categories \"homegoods\", \"apparel\", and \"toys\" are still supported,
-- but these should not be used for new products.
proProductCategory :: Lens' Product (Maybe Text)
proProductCategory
  = lens _proProductCategory
      (\ s a -> s{_proProductCategory = a})

-- | Key-value pairs that can be attached to a product. At query time,
-- constraints can be specified based on the product_labels. Note that
-- integer values can be provided as strings, e.g. \"1199\". Only strings
-- with integer values can match a range-based restriction which is to be
-- supported soon. Multiple values can be assigned to the same key. One
-- product may have up to 500 product_labels. Notice that the total number
-- of distinct product_labels over all products in one ProductSet cannot
-- exceed 1M, otherwise the product search pipeline will refuse to work for
-- that ProductSet.
proProductLabels :: Lens' Product [KeyValue]
proProductLabels
  = lens _proProductLabels
      (\ s a -> s{_proProductLabels = a})
      . _Default
      . _Coerce

-- | User-provided metadata to be stored with this product. Must be at most
-- 4096 characters long.
proDescription :: Lens' Product (Maybe Text)
proDescription
  = lens _proDescription
      (\ s a -> s{_proDescription = a})

instance FromJSON Product where
        parseJSON
          = withObject "Product"
              (\ o ->
                 Product' <$>
                   (o .:? "name") <*> (o .:? "displayName") <*>
                     (o .:? "productCategory")
                     <*> (o .:? "productLabels" .!= mempty)
                     <*> (o .:? "description"))

instance ToJSON Product where
        toJSON Product'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _proName,
                  ("displayName" .=) <$> _proDisplayName,
                  ("productCategory" .=) <$> _proProductCategory,
                  ("productLabels" .=) <$> _proProductLabels,
                  ("description" .=) <$> _proDescription])

-- | Logical element on the page.
--
-- /See:/ 'googleCloudVisionV1p2beta1Block' smart constructor.
data GoogleCloudVisionV1p2beta1Block =
  GoogleCloudVisionV1p2beta1Block'
    { _gcvvb2Property :: !(Maybe GoogleCloudVisionV1p2beta1TextAnnotationTextProperty)
    , _gcvvb2BoundingBox :: !(Maybe GoogleCloudVisionV1p2beta1BoundingPoly)
    , _gcvvb2Paragraphs :: !(Maybe [GoogleCloudVisionV1p2beta1Paragraph])
    , _gcvvb2Confidence :: !(Maybe (Textual Double))
    , _gcvvb2BlockType :: !(Maybe GoogleCloudVisionV1p2beta1BlockBlockType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1Block' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvb2Property'
--
-- * 'gcvvb2BoundingBox'
--
-- * 'gcvvb2Paragraphs'
--
-- * 'gcvvb2Confidence'
--
-- * 'gcvvb2BlockType'
googleCloudVisionV1p2beta1Block
    :: GoogleCloudVisionV1p2beta1Block
googleCloudVisionV1p2beta1Block =
  GoogleCloudVisionV1p2beta1Block'
    { _gcvvb2Property = Nothing
    , _gcvvb2BoundingBox = Nothing
    , _gcvvb2Paragraphs = Nothing
    , _gcvvb2Confidence = Nothing
    , _gcvvb2BlockType = Nothing
    }


-- | Additional information detected for the block.
gcvvb2Property :: Lens' GoogleCloudVisionV1p2beta1Block (Maybe GoogleCloudVisionV1p2beta1TextAnnotationTextProperty)
gcvvb2Property
  = lens _gcvvb2Property
      (\ s a -> s{_gcvvb2Property = a})

-- | The bounding box for the block. The vertices are in the order of
-- top-left, top-right, bottom-right, bottom-left. When a rotation of the
-- bounding box is detected the rotation is represented as around the
-- top-left corner as defined when the text is read in the \'natural\'
-- orientation. For example: * when the text is horizontal it might look
-- like: 0----1 | | 3----2 * when it\'s rotated 180 degrees around the
-- top-left corner it becomes: 2----3 | | 1----0 and the vertex order will
-- still be (0, 1, 2, 3).
gcvvb2BoundingBox :: Lens' GoogleCloudVisionV1p2beta1Block (Maybe GoogleCloudVisionV1p2beta1BoundingPoly)
gcvvb2BoundingBox
  = lens _gcvvb2BoundingBox
      (\ s a -> s{_gcvvb2BoundingBox = a})

-- | List of paragraphs in this block (if this blocks is of type text).
gcvvb2Paragraphs :: Lens' GoogleCloudVisionV1p2beta1Block [GoogleCloudVisionV1p2beta1Paragraph]
gcvvb2Paragraphs
  = lens _gcvvb2Paragraphs
      (\ s a -> s{_gcvvb2Paragraphs = a})
      . _Default
      . _Coerce

-- | Confidence of the OCR results on the block. Range [0, 1].
gcvvb2Confidence :: Lens' GoogleCloudVisionV1p2beta1Block (Maybe Double)
gcvvb2Confidence
  = lens _gcvvb2Confidence
      (\ s a -> s{_gcvvb2Confidence = a})
      . mapping _Coerce

-- | Detected block type (text, image etc) for this block.
gcvvb2BlockType :: Lens' GoogleCloudVisionV1p2beta1Block (Maybe GoogleCloudVisionV1p2beta1BlockBlockType)
gcvvb2BlockType
  = lens _gcvvb2BlockType
      (\ s a -> s{_gcvvb2BlockType = a})

instance FromJSON GoogleCloudVisionV1p2beta1Block
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p2beta1Block"
              (\ o ->
                 GoogleCloudVisionV1p2beta1Block' <$>
                   (o .:? "property") <*> (o .:? "boundingBox") <*>
                     (o .:? "paragraphs" .!= mempty)
                     <*> (o .:? "confidence")
                     <*> (o .:? "blockType"))

instance ToJSON GoogleCloudVisionV1p2beta1Block where
        toJSON GoogleCloudVisionV1p2beta1Block'{..}
          = object
              (catMaybes
                 [("property" .=) <$> _gcvvb2Property,
                  ("boundingBox" .=) <$> _gcvvb2BoundingBox,
                  ("paragraphs" .=) <$> _gcvvb2Paragraphs,
                  ("confidence" .=) <$> _gcvvb2Confidence,
                  ("blockType" .=) <$> _gcvvb2BlockType])

-- | Set of features pertaining to the image, computed by computer vision
-- methods over safe-search verticals (for example, adult, spoof, medical,
-- violence).
--
-- /See:/ 'googleCloudVisionV1p3beta1SafeSearchAnnotation' smart constructor.
data GoogleCloudVisionV1p3beta1SafeSearchAnnotation =
  GoogleCloudVisionV1p3beta1SafeSearchAnnotation'
    { _gcvvssacSpoof :: !(Maybe GoogleCloudVisionV1p3beta1SafeSearchAnnotationSpoof)
    , _gcvvssacRacy :: !(Maybe GoogleCloudVisionV1p3beta1SafeSearchAnnotationRacy)
    , _gcvvssacAdult :: !(Maybe GoogleCloudVisionV1p3beta1SafeSearchAnnotationAdult)
    , _gcvvssacMedical :: !(Maybe GoogleCloudVisionV1p3beta1SafeSearchAnnotationMedical)
    , _gcvvssacViolence :: !(Maybe GoogleCloudVisionV1p3beta1SafeSearchAnnotationViolence)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1SafeSearchAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvssacSpoof'
--
-- * 'gcvvssacRacy'
--
-- * 'gcvvssacAdult'
--
-- * 'gcvvssacMedical'
--
-- * 'gcvvssacViolence'
googleCloudVisionV1p3beta1SafeSearchAnnotation
    :: GoogleCloudVisionV1p3beta1SafeSearchAnnotation
googleCloudVisionV1p3beta1SafeSearchAnnotation =
  GoogleCloudVisionV1p3beta1SafeSearchAnnotation'
    { _gcvvssacSpoof = Nothing
    , _gcvvssacRacy = Nothing
    , _gcvvssacAdult = Nothing
    , _gcvvssacMedical = Nothing
    , _gcvvssacViolence = Nothing
    }


-- | Spoof likelihood. The likelihood that an modification was made to the
-- image\'s canonical version to make it appear funny or offensive.
gcvvssacSpoof :: Lens' GoogleCloudVisionV1p3beta1SafeSearchAnnotation (Maybe GoogleCloudVisionV1p3beta1SafeSearchAnnotationSpoof)
gcvvssacSpoof
  = lens _gcvvssacSpoof
      (\ s a -> s{_gcvvssacSpoof = a})

-- | Likelihood that the request image contains racy content. Racy content
-- may include (but is not limited to) skimpy or sheer clothing,
-- strategically covered nudity, lewd or provocative poses, or close-ups of
-- sensitive body areas.
gcvvssacRacy :: Lens' GoogleCloudVisionV1p3beta1SafeSearchAnnotation (Maybe GoogleCloudVisionV1p3beta1SafeSearchAnnotationRacy)
gcvvssacRacy
  = lens _gcvvssacRacy (\ s a -> s{_gcvvssacRacy = a})

-- | Represents the adult content likelihood for the image. Adult content may
-- contain elements such as nudity, pornographic images or cartoons, or
-- sexual activities.
gcvvssacAdult :: Lens' GoogleCloudVisionV1p3beta1SafeSearchAnnotation (Maybe GoogleCloudVisionV1p3beta1SafeSearchAnnotationAdult)
gcvvssacAdult
  = lens _gcvvssacAdult
      (\ s a -> s{_gcvvssacAdult = a})

-- | Likelihood that this is a medical image.
gcvvssacMedical :: Lens' GoogleCloudVisionV1p3beta1SafeSearchAnnotation (Maybe GoogleCloudVisionV1p3beta1SafeSearchAnnotationMedical)
gcvvssacMedical
  = lens _gcvvssacMedical
      (\ s a -> s{_gcvvssacMedical = a})

-- | Likelihood that this image contains violent content.
gcvvssacViolence :: Lens' GoogleCloudVisionV1p3beta1SafeSearchAnnotation (Maybe GoogleCloudVisionV1p3beta1SafeSearchAnnotationViolence)
gcvvssacViolence
  = lens _gcvvssacViolence
      (\ s a -> s{_gcvvssacViolence = a})

instance FromJSON
           GoogleCloudVisionV1p3beta1SafeSearchAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p3beta1SafeSearchAnnotation"
              (\ o ->
                 GoogleCloudVisionV1p3beta1SafeSearchAnnotation' <$>
                   (o .:? "spoof") <*> (o .:? "racy") <*>
                     (o .:? "adult")
                     <*> (o .:? "medical")
                     <*> (o .:? "violence"))

instance ToJSON
           GoogleCloudVisionV1p3beta1SafeSearchAnnotation
         where
        toJSON
          GoogleCloudVisionV1p3beta1SafeSearchAnnotation'{..}
          = object
              (catMaybes
                 [("spoof" .=) <$> _gcvvssacSpoof,
                  ("racy" .=) <$> _gcvvssacRacy,
                  ("adult" .=) <$> _gcvvssacAdult,
                  ("medical" .=) <$> _gcvvssacMedical,
                  ("violence" .=) <$> _gcvvssacViolence])

-- | TextAnnotation contains a structured representation of OCR extracted
-- text. The hierarchy of an OCR extracted text structure is like this:
-- TextAnnotation -> Page -> Block -> Paragraph -> Word -> Symbol Each
-- structural component, starting from Page, may further have their own
-- properties. Properties describe detected languages, breaks etc.. Please
-- refer to the TextAnnotation.TextProperty message definition below for
-- more detail.
--
-- /See:/ 'googleCloudVisionV1p1beta1TextAnnotation' smart constructor.
data GoogleCloudVisionV1p1beta1TextAnnotation =
  GoogleCloudVisionV1p1beta1TextAnnotation'
    { _ggText :: !(Maybe Text)
    , _ggPages :: !(Maybe [GoogleCloudVisionV1p1beta1Page])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1TextAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggText'
--
-- * 'ggPages'
googleCloudVisionV1p1beta1TextAnnotation
    :: GoogleCloudVisionV1p1beta1TextAnnotation
googleCloudVisionV1p1beta1TextAnnotation =
  GoogleCloudVisionV1p1beta1TextAnnotation'
    {_ggText = Nothing, _ggPages = Nothing}


-- | UTF-8 text detected on the pages.
ggText :: Lens' GoogleCloudVisionV1p1beta1TextAnnotation (Maybe Text)
ggText = lens _ggText (\ s a -> s{_ggText = a})

-- | List of pages detected by OCR.
ggPages :: Lens' GoogleCloudVisionV1p1beta1TextAnnotation [GoogleCloudVisionV1p1beta1Page]
ggPages
  = lens _ggPages (\ s a -> s{_ggPages = a}) . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p1beta1TextAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p1beta1TextAnnotation"
              (\ o ->
                 GoogleCloudVisionV1p1beta1TextAnnotation' <$>
                   (o .:? "text") <*> (o .:? "pages" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p1beta1TextAnnotation
         where
        toJSON GoogleCloudVisionV1p1beta1TextAnnotation'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _ggText, ("pages" .=) <$> _ggPages])

-- | Parameters for a product search request.
--
-- /See:/ 'googleCloudVisionV1p2beta1ProductSearchParams' smart constructor.
data GoogleCloudVisionV1p2beta1ProductSearchParams =
  GoogleCloudVisionV1p2beta1ProductSearchParams'
    { _gcvvpspProductCategories :: !(Maybe [Text])
    , _gcvvpspBoundingPoly :: !(Maybe GoogleCloudVisionV1p2beta1BoundingPoly)
    , _gcvvpspProductSet :: !(Maybe Text)
    , _gcvvpspFilter :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1ProductSearchParams' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvpspProductCategories'
--
-- * 'gcvvpspBoundingPoly'
--
-- * 'gcvvpspProductSet'
--
-- * 'gcvvpspFilter'
googleCloudVisionV1p2beta1ProductSearchParams
    :: GoogleCloudVisionV1p2beta1ProductSearchParams
googleCloudVisionV1p2beta1ProductSearchParams =
  GoogleCloudVisionV1p2beta1ProductSearchParams'
    { _gcvvpspProductCategories = Nothing
    , _gcvvpspBoundingPoly = Nothing
    , _gcvvpspProductSet = Nothing
    , _gcvvpspFilter = Nothing
    }


-- | The list of product categories to search in. Currently, we only consider
-- the first category, and either \"homegoods-v2\", \"apparel-v2\",
-- \"toys-v2\", \"packagedgoods-v1\", or \"general-v1\" should be
-- specified. The legacy categories \"homegoods\", \"apparel\", and
-- \"toys\" are still supported but will be deprecated. For new products,
-- please use \"homegoods-v2\", \"apparel-v2\", or \"toys-v2\" for better
-- product search accuracy. It is recommended to migrate existing products
-- to these categories as well.
gcvvpspProductCategories :: Lens' GoogleCloudVisionV1p2beta1ProductSearchParams [Text]
gcvvpspProductCategories
  = lens _gcvvpspProductCategories
      (\ s a -> s{_gcvvpspProductCategories = a})
      . _Default
      . _Coerce

-- | The bounding polygon around the area of interest in the image. If it is
-- not specified, system discretion will be applied.
gcvvpspBoundingPoly :: Lens' GoogleCloudVisionV1p2beta1ProductSearchParams (Maybe GoogleCloudVisionV1p2beta1BoundingPoly)
gcvvpspBoundingPoly
  = lens _gcvvpspBoundingPoly
      (\ s a -> s{_gcvvpspBoundingPoly = a})

-- | The resource name of a ProductSet to be searched for similar images.
-- Format is:
-- \`projects\/PROJECT_ID\/locations\/LOC_ID\/productSets\/PRODUCT_SET_ID\`.
gcvvpspProductSet :: Lens' GoogleCloudVisionV1p2beta1ProductSearchParams (Maybe Text)
gcvvpspProductSet
  = lens _gcvvpspProductSet
      (\ s a -> s{_gcvvpspProductSet = a})

-- | The filtering expression. This can be used to restrict search results
-- based on Product labels. We currently support an AND of OR of key-value
-- expressions, where each expression within an OR must have the same key.
-- An \'=\' should be used to connect the key and value. For example,
-- \"(color = red OR color = blue) AND brand = Google\" is acceptable, but
-- \"(color = red OR brand = Google)\" is not acceptable. \"color: red\" is
-- not acceptable because it uses a \':\' instead of an \'=\'.
gcvvpspFilter :: Lens' GoogleCloudVisionV1p2beta1ProductSearchParams (Maybe Text)
gcvvpspFilter
  = lens _gcvvpspFilter
      (\ s a -> s{_gcvvpspFilter = a})

instance FromJSON
           GoogleCloudVisionV1p2beta1ProductSearchParams
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p2beta1ProductSearchParams"
              (\ o ->
                 GoogleCloudVisionV1p2beta1ProductSearchParams' <$>
                   (o .:? "productCategories" .!= mempty) <*>
                     (o .:? "boundingPoly")
                     <*> (o .:? "productSet")
                     <*> (o .:? "filter"))

instance ToJSON
           GoogleCloudVisionV1p2beta1ProductSearchParams
         where
        toJSON
          GoogleCloudVisionV1p2beta1ProductSearchParams'{..}
          = object
              (catMaybes
                 [("productCategories" .=) <$>
                    _gcvvpspProductCategories,
                  ("boundingPoly" .=) <$> _gcvvpspBoundingPoly,
                  ("productSet" .=) <$> _gcvvpspProductSet,
                  ("filter" .=) <$> _gcvvpspFilter])

-- | Metadata for web pages.
--
-- /See:/ 'webPage' smart constructor.
data WebPage =
  WebPage'
    { _wpScore :: !(Maybe (Textual Double))
    , _wpURL :: !(Maybe Text)
    , _wpPageTitle :: !(Maybe Text)
    , _wpPartialMatchingImages :: !(Maybe [WebImage])
    , _wpFullMatchingImages :: !(Maybe [WebImage])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WebPage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wpScore'
--
-- * 'wpURL'
--
-- * 'wpPageTitle'
--
-- * 'wpPartialMatchingImages'
--
-- * 'wpFullMatchingImages'
webPage
    :: WebPage
webPage =
  WebPage'
    { _wpScore = Nothing
    , _wpURL = Nothing
    , _wpPageTitle = Nothing
    , _wpPartialMatchingImages = Nothing
    , _wpFullMatchingImages = Nothing
    }


-- | (Deprecated) Overall relevancy score for the web page.
wpScore :: Lens' WebPage (Maybe Double)
wpScore
  = lens _wpScore (\ s a -> s{_wpScore = a}) .
      mapping _Coerce

-- | The result web page URL.
wpURL :: Lens' WebPage (Maybe Text)
wpURL = lens _wpURL (\ s a -> s{_wpURL = a})

-- | Title for the web page, may contain HTML markups.
wpPageTitle :: Lens' WebPage (Maybe Text)
wpPageTitle
  = lens _wpPageTitle (\ s a -> s{_wpPageTitle = a})

-- | Partial matching images on the page. Those images are similar enough to
-- share some key-point features. For example an original image will likely
-- have partial matching for its crops.
wpPartialMatchingImages :: Lens' WebPage [WebImage]
wpPartialMatchingImages
  = lens _wpPartialMatchingImages
      (\ s a -> s{_wpPartialMatchingImages = a})
      . _Default
      . _Coerce

-- | Fully matching images on the page. Can include resized copies of the
-- query image.
wpFullMatchingImages :: Lens' WebPage [WebImage]
wpFullMatchingImages
  = lens _wpFullMatchingImages
      (\ s a -> s{_wpFullMatchingImages = a})
      . _Default
      . _Coerce

instance FromJSON WebPage where
        parseJSON
          = withObject "WebPage"
              (\ o ->
                 WebPage' <$>
                   (o .:? "score") <*> (o .:? "url") <*>
                     (o .:? "pageTitle")
                     <*> (o .:? "partialMatchingImages" .!= mempty)
                     <*> (o .:? "fullMatchingImages" .!= mempty))

instance ToJSON WebPage where
        toJSON WebPage'{..}
          = object
              (catMaybes
                 [("score" .=) <$> _wpScore, ("url" .=) <$> _wpURL,
                  ("pageTitle" .=) <$> _wpPageTitle,
                  ("partialMatchingImages" .=) <$>
                    _wpPartialMatchingImages,
                  ("fullMatchingImages" .=) <$> _wpFullMatchingImages])

-- | Set of dominant colors and their corresponding scores.
--
-- /See:/ 'dominantColorsAnnotation' smart constructor.
newtype DominantColorsAnnotation =
  DominantColorsAnnotation'
    { _dcaColors :: Maybe [ColorInfo]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DominantColorsAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcaColors'
dominantColorsAnnotation
    :: DominantColorsAnnotation
dominantColorsAnnotation = DominantColorsAnnotation' {_dcaColors = Nothing}


-- | RGB color values with their score and pixel fraction.
dcaColors :: Lens' DominantColorsAnnotation [ColorInfo]
dcaColors
  = lens _dcaColors (\ s a -> s{_dcaColors = a}) .
      _Default
      . _Coerce

instance FromJSON DominantColorsAnnotation where
        parseJSON
          = withObject "DominantColorsAnnotation"
              (\ o ->
                 DominantColorsAnnotation' <$>
                   (o .:? "colors" .!= mempty))

instance ToJSON DominantColorsAnnotation where
        toJSON DominantColorsAnnotation'{..}
          = object (catMaybes [("colors" .=) <$> _dcaColors])

-- | If an image was produced from a file (e.g. a PDF), this message gives
-- information about the source of that image.
--
-- /See:/ 'googleCloudVisionV1p4beta1ImageAnnotationContext' smart constructor.
data GoogleCloudVisionV1p4beta1ImageAnnotationContext =
  GoogleCloudVisionV1p4beta1ImageAnnotationContext'
    { _goooURI :: !(Maybe Text)
    , _goooPageNumber :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1ImageAnnotationContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'goooURI'
--
-- * 'goooPageNumber'
googleCloudVisionV1p4beta1ImageAnnotationContext
    :: GoogleCloudVisionV1p4beta1ImageAnnotationContext
googleCloudVisionV1p4beta1ImageAnnotationContext =
  GoogleCloudVisionV1p4beta1ImageAnnotationContext'
    {_goooURI = Nothing, _goooPageNumber = Nothing}


-- | The URI of the file used to produce the image.
goooURI :: Lens' GoogleCloudVisionV1p4beta1ImageAnnotationContext (Maybe Text)
goooURI = lens _goooURI (\ s a -> s{_goooURI = a})

-- | If the file was a PDF or TIFF, this field gives the page number within
-- the file used to produce the image.
goooPageNumber :: Lens' GoogleCloudVisionV1p4beta1ImageAnnotationContext (Maybe Int32)
goooPageNumber
  = lens _goooPageNumber
      (\ s a -> s{_goooPageNumber = a})
      . mapping _Coerce

instance FromJSON
           GoogleCloudVisionV1p4beta1ImageAnnotationContext
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p4beta1ImageAnnotationContext"
              (\ o ->
                 GoogleCloudVisionV1p4beta1ImageAnnotationContext' <$>
                   (o .:? "uri") <*> (o .:? "pageNumber"))

instance ToJSON
           GoogleCloudVisionV1p4beta1ImageAnnotationContext
         where
        toJSON
          GoogleCloudVisionV1p4beta1ImageAnnotationContext'{..}
          = object
              (catMaybes
                 [("uri" .=) <$> _goooURI,
                  ("pageNumber" .=) <$> _goooPageNumber])

-- | Label to provide extra metadata for the web detection.
--
-- /See:/ 'googleCloudVisionV1p2beta1WebDetectionWebLabel' smart constructor.
data GoogleCloudVisionV1p2beta1WebDetectionWebLabel =
  GoogleCloudVisionV1p2beta1WebDetectionWebLabel'
    { _gcvvwdwl1LanguageCode :: !(Maybe Text)
    , _gcvvwdwl1Label :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1WebDetectionWebLabel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvwdwl1LanguageCode'
--
-- * 'gcvvwdwl1Label'
googleCloudVisionV1p2beta1WebDetectionWebLabel
    :: GoogleCloudVisionV1p2beta1WebDetectionWebLabel
googleCloudVisionV1p2beta1WebDetectionWebLabel =
  GoogleCloudVisionV1p2beta1WebDetectionWebLabel'
    {_gcvvwdwl1LanguageCode = Nothing, _gcvvwdwl1Label = Nothing}


-- | The BCP-47 language code for \`label\`, such as \"en-US\" or
-- \"sr-Latn\". For more information, see
-- http:\/\/www.unicode.org\/reports\/tr35\/#Unicode_locale_identifier.
gcvvwdwl1LanguageCode :: Lens' GoogleCloudVisionV1p2beta1WebDetectionWebLabel (Maybe Text)
gcvvwdwl1LanguageCode
  = lens _gcvvwdwl1LanguageCode
      (\ s a -> s{_gcvvwdwl1LanguageCode = a})

-- | Label for extra metadata.
gcvvwdwl1Label :: Lens' GoogleCloudVisionV1p2beta1WebDetectionWebLabel (Maybe Text)
gcvvwdwl1Label
  = lens _gcvvwdwl1Label
      (\ s a -> s{_gcvvwdwl1Label = a})

instance FromJSON
           GoogleCloudVisionV1p2beta1WebDetectionWebLabel
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p2beta1WebDetectionWebLabel"
              (\ o ->
                 GoogleCloudVisionV1p2beta1WebDetectionWebLabel' <$>
                   (o .:? "languageCode") <*> (o .:? "label"))

instance ToJSON
           GoogleCloudVisionV1p2beta1WebDetectionWebLabel
         where
        toJSON
          GoogleCloudVisionV1p2beta1WebDetectionWebLabel'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _gcvvwdwl1LanguageCode,
                  ("label" .=) <$> _gcvvwdwl1Label])

-- | Results for a product search request.
--
-- /See:/ 'googleCloudVisionV1p4beta1ProductSearchResults' smart constructor.
data GoogleCloudVisionV1p4beta1ProductSearchResults =
  GoogleCloudVisionV1p4beta1ProductSearchResults'
    { _gooProductGroupedResults :: !(Maybe [GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult])
    , _gooResults :: !(Maybe [GoogleCloudVisionV1p4beta1ProductSearchResultsResult])
    , _gooIndexTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1ProductSearchResults' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooProductGroupedResults'
--
-- * 'gooResults'
--
-- * 'gooIndexTime'
googleCloudVisionV1p4beta1ProductSearchResults
    :: GoogleCloudVisionV1p4beta1ProductSearchResults
googleCloudVisionV1p4beta1ProductSearchResults =
  GoogleCloudVisionV1p4beta1ProductSearchResults'
    { _gooProductGroupedResults = Nothing
    , _gooResults = Nothing
    , _gooIndexTime = Nothing
    }


-- | List of results grouped by products detected in the query image. Each
-- entry corresponds to one bounding polygon in the query image, and
-- contains the matching products specific to that region. There may be
-- duplicate product matches in the union of all the per-product results.
gooProductGroupedResults :: Lens' GoogleCloudVisionV1p4beta1ProductSearchResults [GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult]
gooProductGroupedResults
  = lens _gooProductGroupedResults
      (\ s a -> s{_gooProductGroupedResults = a})
      . _Default
      . _Coerce

-- | List of results, one for each product match.
gooResults :: Lens' GoogleCloudVisionV1p4beta1ProductSearchResults [GoogleCloudVisionV1p4beta1ProductSearchResultsResult]
gooResults
  = lens _gooResults (\ s a -> s{_gooResults = a}) .
      _Default
      . _Coerce

-- | Timestamp of the index which provided these results. Products added to
-- the product set and products removed from the product set after this
-- time are not reflected in the current results.
gooIndexTime :: Lens' GoogleCloudVisionV1p4beta1ProductSearchResults (Maybe UTCTime)
gooIndexTime
  = lens _gooIndexTime (\ s a -> s{_gooIndexTime = a})
      . mapping _DateTime

instance FromJSON
           GoogleCloudVisionV1p4beta1ProductSearchResults
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p4beta1ProductSearchResults"
              (\ o ->
                 GoogleCloudVisionV1p4beta1ProductSearchResults' <$>
                   (o .:? "productGroupedResults" .!= mempty) <*>
                     (o .:? "results" .!= mempty)
                     <*> (o .:? "indexTime"))

instance ToJSON
           GoogleCloudVisionV1p4beta1ProductSearchResults
         where
        toJSON
          GoogleCloudVisionV1p4beta1ProductSearchResults'{..}
          = object
              (catMaybes
                 [("productGroupedResults" .=) <$>
                    _gooProductGroupedResults,
                  ("results" .=) <$> _gooResults,
                  ("indexTime" .=) <$> _gooIndexTime])

-- | A \`Property\` consists of a user-supplied name\/value pair.
--
-- /See:/ 'googleCloudVisionV1p4beta1Property' smart constructor.
data GoogleCloudVisionV1p4beta1Property =
  GoogleCloudVisionV1p4beta1Property'
    { _gcvvp2Uint64Value :: !(Maybe (Textual Word64))
    , _gcvvp2Value :: !(Maybe Text)
    , _gcvvp2Name :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1Property' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvp2Uint64Value'
--
-- * 'gcvvp2Value'
--
-- * 'gcvvp2Name'
googleCloudVisionV1p4beta1Property
    :: GoogleCloudVisionV1p4beta1Property
googleCloudVisionV1p4beta1Property =
  GoogleCloudVisionV1p4beta1Property'
    { _gcvvp2Uint64Value = Nothing
    , _gcvvp2Value = Nothing
    , _gcvvp2Name = Nothing
    }


-- | Value of numeric properties.
gcvvp2Uint64Value :: Lens' GoogleCloudVisionV1p4beta1Property (Maybe Word64)
gcvvp2Uint64Value
  = lens _gcvvp2Uint64Value
      (\ s a -> s{_gcvvp2Uint64Value = a})
      . mapping _Coerce

-- | Value of the property.
gcvvp2Value :: Lens' GoogleCloudVisionV1p4beta1Property (Maybe Text)
gcvvp2Value
  = lens _gcvvp2Value (\ s a -> s{_gcvvp2Value = a})

-- | Name of the property.
gcvvp2Name :: Lens' GoogleCloudVisionV1p4beta1Property (Maybe Text)
gcvvp2Name
  = lens _gcvvp2Name (\ s a -> s{_gcvvp2Name = a})

instance FromJSON GoogleCloudVisionV1p4beta1Property
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p4beta1Property"
              (\ o ->
                 GoogleCloudVisionV1p4beta1Property' <$>
                   (o .:? "uint64Value") <*> (o .:? "value") <*>
                     (o .:? "name"))

instance ToJSON GoogleCloudVisionV1p4beta1Property
         where
        toJSON GoogleCloudVisionV1p4beta1Property'{..}
          = object
              (catMaybes
                 [("uint64Value" .=) <$> _gcvvp2Uint64Value,
                  ("value" .=) <$> _gcvvp2Value,
                  ("name" .=) <$> _gcvvp2Name])

-- | Information about the products similar to a single product in a query
-- image.
--
-- /See:/ 'googleCloudVisionV1p3beta1ProductSearchResultsGroupedResult' smart constructor.
data GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult =
  GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult'
    { _goooResults :: !(Maybe [GoogleCloudVisionV1p3beta1ProductSearchResultsResult])
    , _goooBoundingPoly :: !(Maybe GoogleCloudVisionV1p3beta1BoundingPoly)
    , _goooObjectAnnotations :: !(Maybe [GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'goooResults'
--
-- * 'goooBoundingPoly'
--
-- * 'goooObjectAnnotations'
googleCloudVisionV1p3beta1ProductSearchResultsGroupedResult
    :: GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult
googleCloudVisionV1p3beta1ProductSearchResultsGroupedResult =
  GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult'
    { _goooResults = Nothing
    , _goooBoundingPoly = Nothing
    , _goooObjectAnnotations = Nothing
    }


-- | List of results, one for each product match.
goooResults :: Lens' GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult [GoogleCloudVisionV1p3beta1ProductSearchResultsResult]
goooResults
  = lens _goooResults (\ s a -> s{_goooResults = a}) .
      _Default
      . _Coerce

-- | The bounding polygon around the product detected in the query image.
goooBoundingPoly :: Lens' GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult (Maybe GoogleCloudVisionV1p3beta1BoundingPoly)
goooBoundingPoly
  = lens _goooBoundingPoly
      (\ s a -> s{_goooBoundingPoly = a})

-- | List of generic predictions for the object in the bounding box.
goooObjectAnnotations :: Lens' GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult [GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation]
goooObjectAnnotations
  = lens _goooObjectAnnotations
      (\ s a -> s{_goooObjectAnnotations = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult"
              (\ o ->
                 GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult'
                   <$>
                   (o .:? "results" .!= mempty) <*>
                     (o .:? "boundingPoly")
                     <*> (o .:? "objectAnnotations" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult
         where
        toJSON
          GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult'{..}
          = object
              (catMaybes
                 [("results" .=) <$> _goooResults,
                  ("boundingPoly" .=) <$> _goooBoundingPoly,
                  ("objectAnnotations" .=) <$> _goooObjectAnnotations])

-- | The response for a single offline file annotation request.
--
-- /See:/ 'googleCloudVisionV1p2beta1AsyncAnnotateFileResponse' smart constructor.
newtype GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse =
  GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse'
    { _ggOutputConfig :: Maybe GoogleCloudVisionV1p2beta1OutputConfig
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggOutputConfig'
googleCloudVisionV1p2beta1AsyncAnnotateFileResponse
    :: GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse
googleCloudVisionV1p2beta1AsyncAnnotateFileResponse =
  GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse'
    {_ggOutputConfig = Nothing}


-- | The output location and metadata from AsyncAnnotateFileRequest.
ggOutputConfig :: Lens' GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse (Maybe GoogleCloudVisionV1p2beta1OutputConfig)
ggOutputConfig
  = lens _ggOutputConfig
      (\ s a -> s{_ggOutputConfig = a})

instance FromJSON
           GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse"
              (\ o ->
                 GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse'
                   <$> (o .:? "outputConfig"))

instance ToJSON
           GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse
         where
        toJSON
          GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse'{..}
          = object
              (catMaybes [("outputConfig" .=) <$> _ggOutputConfig])

-- | Response to an async batch image annotation request.
--
-- /See:/ 'googleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse' smart constructor.
newtype GoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse =
  GoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse'
    { _gcvvabaircOutputConfig :: Maybe GoogleCloudVisionV1p4beta1OutputConfig
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvabaircOutputConfig'
googleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse
    :: GoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse
googleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse =
  GoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse'
    {_gcvvabaircOutputConfig = Nothing}


-- | The output location and metadata from AsyncBatchAnnotateImagesRequest.
gcvvabaircOutputConfig :: Lens' GoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse (Maybe GoogleCloudVisionV1p4beta1OutputConfig)
gcvvabaircOutputConfig
  = lens _gcvvabaircOutputConfig
      (\ s a -> s{_gcvvabaircOutputConfig = a})

instance FromJSON
           GoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse"
              (\ o ->
                 GoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse'
                   <$> (o .:? "outputConfig"))

instance ToJSON
           GoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse
         where
        toJSON
          GoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse'{..}
          = object
              (catMaybes
                 [("outputConfig" .=) <$> _gcvvabaircOutputConfig])

-- | Set of detected entity features.
--
-- /See:/ 'googleCloudVisionV1p2beta1EntityAnnotation' smart constructor.
data GoogleCloudVisionV1p2beta1EntityAnnotation =
  GoogleCloudVisionV1p2beta1EntityAnnotation'
    { _gcvvea2Score :: !(Maybe (Textual Double))
    , _gcvvea2Topicality :: !(Maybe (Textual Double))
    , _gcvvea2Locale :: !(Maybe Text)
    , _gcvvea2BoundingPoly :: !(Maybe GoogleCloudVisionV1p2beta1BoundingPoly)
    , _gcvvea2Confidence :: !(Maybe (Textual Double))
    , _gcvvea2Mid :: !(Maybe Text)
    , _gcvvea2Locations :: !(Maybe [GoogleCloudVisionV1p2beta1LocationInfo])
    , _gcvvea2Description :: !(Maybe Text)
    , _gcvvea2Properties :: !(Maybe [GoogleCloudVisionV1p2beta1Property])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1EntityAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvea2Score'
--
-- * 'gcvvea2Topicality'
--
-- * 'gcvvea2Locale'
--
-- * 'gcvvea2BoundingPoly'
--
-- * 'gcvvea2Confidence'
--
-- * 'gcvvea2Mid'
--
-- * 'gcvvea2Locations'
--
-- * 'gcvvea2Description'
--
-- * 'gcvvea2Properties'
googleCloudVisionV1p2beta1EntityAnnotation
    :: GoogleCloudVisionV1p2beta1EntityAnnotation
googleCloudVisionV1p2beta1EntityAnnotation =
  GoogleCloudVisionV1p2beta1EntityAnnotation'
    { _gcvvea2Score = Nothing
    , _gcvvea2Topicality = Nothing
    , _gcvvea2Locale = Nothing
    , _gcvvea2BoundingPoly = Nothing
    , _gcvvea2Confidence = Nothing
    , _gcvvea2Mid = Nothing
    , _gcvvea2Locations = Nothing
    , _gcvvea2Description = Nothing
    , _gcvvea2Properties = Nothing
    }


-- | Overall score of the result. Range [0, 1].
gcvvea2Score :: Lens' GoogleCloudVisionV1p2beta1EntityAnnotation (Maybe Double)
gcvvea2Score
  = lens _gcvvea2Score (\ s a -> s{_gcvvea2Score = a})
      . mapping _Coerce

-- | The relevancy of the ICA (Image Content Annotation) label to the image.
-- For example, the relevancy of \"tower\" is likely higher to an image
-- containing the detected \"Eiffel Tower\" than to an image containing a
-- detected distant towering building, even though the confidence that
-- there is a tower in each image may be the same. Range [0, 1].
gcvvea2Topicality :: Lens' GoogleCloudVisionV1p2beta1EntityAnnotation (Maybe Double)
gcvvea2Topicality
  = lens _gcvvea2Topicality
      (\ s a -> s{_gcvvea2Topicality = a})
      . mapping _Coerce

-- | The language code for the locale in which the entity textual
-- \`description\` is expressed.
gcvvea2Locale :: Lens' GoogleCloudVisionV1p2beta1EntityAnnotation (Maybe Text)
gcvvea2Locale
  = lens _gcvvea2Locale
      (\ s a -> s{_gcvvea2Locale = a})

-- | Image region to which this entity belongs. Not produced for
-- \`LABEL_DETECTION\` features.
gcvvea2BoundingPoly :: Lens' GoogleCloudVisionV1p2beta1EntityAnnotation (Maybe GoogleCloudVisionV1p2beta1BoundingPoly)
gcvvea2BoundingPoly
  = lens _gcvvea2BoundingPoly
      (\ s a -> s{_gcvvea2BoundingPoly = a})

-- | **Deprecated. Use \`score\` instead.** The accuracy of the entity
-- detection in an image. For example, for an image in which the \"Eiffel
-- Tower\" entity is detected, this field represents the confidence that
-- there is a tower in the query image. Range [0, 1].
gcvvea2Confidence :: Lens' GoogleCloudVisionV1p2beta1EntityAnnotation (Maybe Double)
gcvvea2Confidence
  = lens _gcvvea2Confidence
      (\ s a -> s{_gcvvea2Confidence = a})
      . mapping _Coerce

-- | Opaque entity ID. Some IDs may be available in [Google Knowledge Graph
-- Search API](https:\/\/developers.google.com\/knowledge-graph\/).
gcvvea2Mid :: Lens' GoogleCloudVisionV1p2beta1EntityAnnotation (Maybe Text)
gcvvea2Mid
  = lens _gcvvea2Mid (\ s a -> s{_gcvvea2Mid = a})

-- | The location information for the detected entity. Multiple
-- \`LocationInfo\` elements can be present because one location may
-- indicate the location of the scene in the image, and another location
-- may indicate the location of the place where the image was taken.
-- Location information is usually present for landmarks.
gcvvea2Locations :: Lens' GoogleCloudVisionV1p2beta1EntityAnnotation [GoogleCloudVisionV1p2beta1LocationInfo]
gcvvea2Locations
  = lens _gcvvea2Locations
      (\ s a -> s{_gcvvea2Locations = a})
      . _Default
      . _Coerce

-- | Entity textual description, expressed in its \`locale\` language.
gcvvea2Description :: Lens' GoogleCloudVisionV1p2beta1EntityAnnotation (Maybe Text)
gcvvea2Description
  = lens _gcvvea2Description
      (\ s a -> s{_gcvvea2Description = a})

-- | Some entities may have optional user-supplied \`Property\` (name\/value)
-- fields, such a score or string that qualifies the entity.
gcvvea2Properties :: Lens' GoogleCloudVisionV1p2beta1EntityAnnotation [GoogleCloudVisionV1p2beta1Property]
gcvvea2Properties
  = lens _gcvvea2Properties
      (\ s a -> s{_gcvvea2Properties = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p2beta1EntityAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p2beta1EntityAnnotation"
              (\ o ->
                 GoogleCloudVisionV1p2beta1EntityAnnotation' <$>
                   (o .:? "score") <*> (o .:? "topicality") <*>
                     (o .:? "locale")
                     <*> (o .:? "boundingPoly")
                     <*> (o .:? "confidence")
                     <*> (o .:? "mid")
                     <*> (o .:? "locations" .!= mempty)
                     <*> (o .:? "description")
                     <*> (o .:? "properties" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p2beta1EntityAnnotation
         where
        toJSON
          GoogleCloudVisionV1p2beta1EntityAnnotation'{..}
          = object
              (catMaybes
                 [("score" .=) <$> _gcvvea2Score,
                  ("topicality" .=) <$> _gcvvea2Topicality,
                  ("locale" .=) <$> _gcvvea2Locale,
                  ("boundingPoly" .=) <$> _gcvvea2BoundingPoly,
                  ("confidence" .=) <$> _gcvvea2Confidence,
                  ("mid" .=) <$> _gcvvea2Mid,
                  ("locations" .=) <$> _gcvvea2Locations,
                  ("description" .=) <$> _gcvvea2Description,
                  ("properties" .=) <$> _gcvvea2Properties])

-- | Multiple async file annotation requests are batched into a single
-- service call.
--
-- /See:/ 'googleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest' smart constructor.
data GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest =
  GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest'
    { _gcvvabafrParent :: !(Maybe Text)
    , _gcvvabafrRequests :: !(Maybe [GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvabafrParent'
--
-- * 'gcvvabafrRequests'
googleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest
    :: GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest
googleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest =
  GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest'
    {_gcvvabafrParent = Nothing, _gcvvabafrRequests = Nothing}


-- | Optional. Target project and location to make a call. Format:
-- \`projects\/{project-id}\/locations\/{location-id}\`. If no parent is
-- specified, a region will be chosen automatically. Supported
-- location-ids: \`us\`: USA country only, \`asia\`: East asia areas, like
-- Japan, Taiwan, \`eu\`: The European Union. Example:
-- \`projects\/project-A\/locations\/eu\`.
gcvvabafrParent :: Lens' GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest (Maybe Text)
gcvvabafrParent
  = lens _gcvvabafrParent
      (\ s a -> s{_gcvvabafrParent = a})

-- | Required. Individual async file annotation requests for this batch.
gcvvabafrRequests :: Lens' GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest [GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest]
gcvvabafrRequests
  = lens _gcvvabafrRequests
      (\ s a -> s{_gcvvabafrRequests = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest"
              (\ o ->
                 GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest'
                   <$>
                   (o .:? "parent") <*> (o .:? "requests" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest
         where
        toJSON
          GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest'{..}
          = object
              (catMaybes
                 [("parent" .=) <$> _gcvvabafrParent,
                  ("requests" .=) <$> _gcvvabafrRequests])

-- | Metadata for web pages.
--
-- /See:/ 'googleCloudVisionV1p2beta1WebDetectionWebPage' smart constructor.
data GoogleCloudVisionV1p2beta1WebDetectionWebPage =
  GoogleCloudVisionV1p2beta1WebDetectionWebPage'
    { _gcvvwdwp1Score :: !(Maybe (Textual Double))
    , _gcvvwdwp1URL :: !(Maybe Text)
    , _gcvvwdwp1PageTitle :: !(Maybe Text)
    , _gcvvwdwp1PartialMatchingImages :: !(Maybe [GoogleCloudVisionV1p2beta1WebDetectionWebImage])
    , _gcvvwdwp1FullMatchingImages :: !(Maybe [GoogleCloudVisionV1p2beta1WebDetectionWebImage])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1WebDetectionWebPage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvwdwp1Score'
--
-- * 'gcvvwdwp1URL'
--
-- * 'gcvvwdwp1PageTitle'
--
-- * 'gcvvwdwp1PartialMatchingImages'
--
-- * 'gcvvwdwp1FullMatchingImages'
googleCloudVisionV1p2beta1WebDetectionWebPage
    :: GoogleCloudVisionV1p2beta1WebDetectionWebPage
googleCloudVisionV1p2beta1WebDetectionWebPage =
  GoogleCloudVisionV1p2beta1WebDetectionWebPage'
    { _gcvvwdwp1Score = Nothing
    , _gcvvwdwp1URL = Nothing
    , _gcvvwdwp1PageTitle = Nothing
    , _gcvvwdwp1PartialMatchingImages = Nothing
    , _gcvvwdwp1FullMatchingImages = Nothing
    }


-- | (Deprecated) Overall relevancy score for the web page.
gcvvwdwp1Score :: Lens' GoogleCloudVisionV1p2beta1WebDetectionWebPage (Maybe Double)
gcvvwdwp1Score
  = lens _gcvvwdwp1Score
      (\ s a -> s{_gcvvwdwp1Score = a})
      . mapping _Coerce

-- | The result web page URL.
gcvvwdwp1URL :: Lens' GoogleCloudVisionV1p2beta1WebDetectionWebPage (Maybe Text)
gcvvwdwp1URL
  = lens _gcvvwdwp1URL (\ s a -> s{_gcvvwdwp1URL = a})

-- | Title for the web page, may contain HTML markups.
gcvvwdwp1PageTitle :: Lens' GoogleCloudVisionV1p2beta1WebDetectionWebPage (Maybe Text)
gcvvwdwp1PageTitle
  = lens _gcvvwdwp1PageTitle
      (\ s a -> s{_gcvvwdwp1PageTitle = a})

-- | Partial matching images on the page. Those images are similar enough to
-- share some key-point features. For example an original image will likely
-- have partial matching for its crops.
gcvvwdwp1PartialMatchingImages :: Lens' GoogleCloudVisionV1p2beta1WebDetectionWebPage [GoogleCloudVisionV1p2beta1WebDetectionWebImage]
gcvvwdwp1PartialMatchingImages
  = lens _gcvvwdwp1PartialMatchingImages
      (\ s a -> s{_gcvvwdwp1PartialMatchingImages = a})
      . _Default
      . _Coerce

-- | Fully matching images on the page. Can include resized copies of the
-- query image.
gcvvwdwp1FullMatchingImages :: Lens' GoogleCloudVisionV1p2beta1WebDetectionWebPage [GoogleCloudVisionV1p2beta1WebDetectionWebImage]
gcvvwdwp1FullMatchingImages
  = lens _gcvvwdwp1FullMatchingImages
      (\ s a -> s{_gcvvwdwp1FullMatchingImages = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p2beta1WebDetectionWebPage
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p2beta1WebDetectionWebPage"
              (\ o ->
                 GoogleCloudVisionV1p2beta1WebDetectionWebPage' <$>
                   (o .:? "score") <*> (o .:? "url") <*>
                     (o .:? "pageTitle")
                     <*> (o .:? "partialMatchingImages" .!= mempty)
                     <*> (o .:? "fullMatchingImages" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p2beta1WebDetectionWebPage
         where
        toJSON
          GoogleCloudVisionV1p2beta1WebDetectionWebPage'{..}
          = object
              (catMaybes
                 [("score" .=) <$> _gcvvwdwp1Score,
                  ("url" .=) <$> _gcvvwdwp1URL,
                  ("pageTitle" .=) <$> _gcvvwdwp1PageTitle,
                  ("partialMatchingImages" .=) <$>
                    _gcvvwdwp1PartialMatchingImages,
                  ("fullMatchingImages" .=) <$>
                    _gcvvwdwp1FullMatchingImages])

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
--
-- /See:/ 'operationResponse' smart constructor.
newtype OperationResponse =
  OperationResponse'
    { _orAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orAddtional'
operationResponse
    :: HashMap Text JSONValue -- ^ 'orAddtional'
    -> OperationResponse
operationResponse pOrAddtional_ =
  OperationResponse' {_orAddtional = _Coerce # pOrAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
orAddtional :: Lens' OperationResponse (HashMap Text JSONValue)
orAddtional
  = lens _orAddtional (\ s a -> s{_orAddtional = a}) .
      _Coerce

instance FromJSON OperationResponse where
        parseJSON
          = withObject "OperationResponse"
              (\ o -> OperationResponse' <$> (parseJSONObject o))

instance ToJSON OperationResponse where
        toJSON = toJSON . _orAddtional

-- | A word representation.
--
-- /See:/ 'word' smart constructor.
data Word =
  Word'
    { _wProperty :: !(Maybe TextProperty)
    , _wBoundingBox :: !(Maybe BoundingPoly)
    , _wSymbols :: !(Maybe [Symbol])
    , _wConfidence :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Word' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wProperty'
--
-- * 'wBoundingBox'
--
-- * 'wSymbols'
--
-- * 'wConfidence'
word
    :: Word
word =
  Word'
    { _wProperty = Nothing
    , _wBoundingBox = Nothing
    , _wSymbols = Nothing
    , _wConfidence = Nothing
    }


-- | Additional information detected for the word.
wProperty :: Lens' Word (Maybe TextProperty)
wProperty
  = lens _wProperty (\ s a -> s{_wProperty = a})

-- | The bounding box for the word. The vertices are in the order of
-- top-left, top-right, bottom-right, bottom-left. When a rotation of the
-- bounding box is detected the rotation is represented as around the
-- top-left corner as defined when the text is read in the \'natural\'
-- orientation. For example: * when the text is horizontal it might look
-- like: 0----1 | | 3----2 * when it\'s rotated 180 degrees around the
-- top-left corner it becomes: 2----3 | | 1----0 and the vertex order will
-- still be (0, 1, 2, 3).
wBoundingBox :: Lens' Word (Maybe BoundingPoly)
wBoundingBox
  = lens _wBoundingBox (\ s a -> s{_wBoundingBox = a})

-- | List of symbols in the word. The order of the symbols follows the
-- natural reading order.
wSymbols :: Lens' Word [Symbol]
wSymbols
  = lens _wSymbols (\ s a -> s{_wSymbols = a}) .
      _Default
      . _Coerce

-- | Confidence of the OCR results for the word. Range [0, 1].
wConfidence :: Lens' Word (Maybe Double)
wConfidence
  = lens _wConfidence (\ s a -> s{_wConfidence = a}) .
      mapping _Coerce

instance FromJSON Word where
        parseJSON
          = withObject "Word"
              (\ o ->
                 Word' <$>
                   (o .:? "property") <*> (o .:? "boundingBox") <*>
                     (o .:? "symbols" .!= mempty)
                     <*> (o .:? "confidence"))

instance ToJSON Word where
        toJSON Word'{..}
          = object
              (catMaybes
                 [("property" .=) <$> _wProperty,
                  ("boundingBox" .=) <$> _wBoundingBox,
                  ("symbols" .=) <$> _wSymbols,
                  ("confidence" .=) <$> _wConfidence])

-- | The desired input location and metadata.
--
-- /See:/ 'googleCloudVisionV1p2beta1InputConfig' smart constructor.
data GoogleCloudVisionV1p2beta1InputConfig =
  GoogleCloudVisionV1p2beta1InputConfig'
    { _gcvviccGcsSource :: !(Maybe GoogleCloudVisionV1p2beta1GcsSource)
    , _gcvviccContent :: !(Maybe Bytes)
    , _gcvviccMimeType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1InputConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvviccGcsSource'
--
-- * 'gcvviccContent'
--
-- * 'gcvviccMimeType'
googleCloudVisionV1p2beta1InputConfig
    :: GoogleCloudVisionV1p2beta1InputConfig
googleCloudVisionV1p2beta1InputConfig =
  GoogleCloudVisionV1p2beta1InputConfig'
    { _gcvviccGcsSource = Nothing
    , _gcvviccContent = Nothing
    , _gcvviccMimeType = Nothing
    }


-- | The Google Cloud Storage location to read the input from.
gcvviccGcsSource :: Lens' GoogleCloudVisionV1p2beta1InputConfig (Maybe GoogleCloudVisionV1p2beta1GcsSource)
gcvviccGcsSource
  = lens _gcvviccGcsSource
      (\ s a -> s{_gcvviccGcsSource = a})

-- | File content, represented as a stream of bytes. Note: As with all
-- \`bytes\` fields, protobuffers use a pure binary representation, whereas
-- JSON representations use base64. Currently, this field only works for
-- BatchAnnotateFiles requests. It does not work for
-- AsyncBatchAnnotateFiles requests.
gcvviccContent :: Lens' GoogleCloudVisionV1p2beta1InputConfig (Maybe ByteString)
gcvviccContent
  = lens _gcvviccContent
      (\ s a -> s{_gcvviccContent = a})
      . mapping _Bytes

-- | The type of the file. Currently only \"application\/pdf\",
-- \"image\/tiff\" and \"image\/gif\" are supported. Wildcards are not
-- supported.
gcvviccMimeType :: Lens' GoogleCloudVisionV1p2beta1InputConfig (Maybe Text)
gcvviccMimeType
  = lens _gcvviccMimeType
      (\ s a -> s{_gcvviccMimeType = a})

instance FromJSON
           GoogleCloudVisionV1p2beta1InputConfig
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p2beta1InputConfig"
              (\ o ->
                 GoogleCloudVisionV1p2beta1InputConfig' <$>
                   (o .:? "gcsSource") <*> (o .:? "content") <*>
                     (o .:? "mimeType"))

instance ToJSON GoogleCloudVisionV1p2beta1InputConfig
         where
        toJSON GoogleCloudVisionV1p2beta1InputConfig'{..}
          = object
              (catMaybes
                 [("gcsSource" .=) <$> _gcvviccGcsSource,
                  ("content" .=) <$> _gcvviccContent,
                  ("mimeType" .=) <$> _gcvviccMimeType])

-- | Relevant information for the image from the Internet.
--
-- /See:/ 'googleCloudVisionV1p1beta1WebDetection' smart constructor.
data GoogleCloudVisionV1p1beta1WebDetection =
  GoogleCloudVisionV1p1beta1WebDetection'
    { _ggVisuallySimilarImages :: !(Maybe [GoogleCloudVisionV1p1beta1WebDetectionWebImage])
    , _ggBestGuessLabels :: !(Maybe [GoogleCloudVisionV1p1beta1WebDetectionWebLabel])
    , _ggPagesWithMatchingImages :: !(Maybe [GoogleCloudVisionV1p1beta1WebDetectionWebPage])
    , _ggPartialMatchingImages :: !(Maybe [GoogleCloudVisionV1p1beta1WebDetectionWebImage])
    , _ggFullMatchingImages :: !(Maybe [GoogleCloudVisionV1p1beta1WebDetectionWebImage])
    , _ggWebEntities :: !(Maybe [GoogleCloudVisionV1p1beta1WebDetectionWebEntity])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1WebDetection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggVisuallySimilarImages'
--
-- * 'ggBestGuessLabels'
--
-- * 'ggPagesWithMatchingImages'
--
-- * 'ggPartialMatchingImages'
--
-- * 'ggFullMatchingImages'
--
-- * 'ggWebEntities'
googleCloudVisionV1p1beta1WebDetection
    :: GoogleCloudVisionV1p1beta1WebDetection
googleCloudVisionV1p1beta1WebDetection =
  GoogleCloudVisionV1p1beta1WebDetection'
    { _ggVisuallySimilarImages = Nothing
    , _ggBestGuessLabels = Nothing
    , _ggPagesWithMatchingImages = Nothing
    , _ggPartialMatchingImages = Nothing
    , _ggFullMatchingImages = Nothing
    , _ggWebEntities = Nothing
    }


-- | The visually similar image results.
ggVisuallySimilarImages :: Lens' GoogleCloudVisionV1p1beta1WebDetection [GoogleCloudVisionV1p1beta1WebDetectionWebImage]
ggVisuallySimilarImages
  = lens _ggVisuallySimilarImages
      (\ s a -> s{_ggVisuallySimilarImages = a})
      . _Default
      . _Coerce

-- | The service\'s best guess as to the topic of the request image. Inferred
-- from similar images on the open web.
ggBestGuessLabels :: Lens' GoogleCloudVisionV1p1beta1WebDetection [GoogleCloudVisionV1p1beta1WebDetectionWebLabel]
ggBestGuessLabels
  = lens _ggBestGuessLabels
      (\ s a -> s{_ggBestGuessLabels = a})
      . _Default
      . _Coerce

-- | Web pages containing the matching images from the Internet.
ggPagesWithMatchingImages :: Lens' GoogleCloudVisionV1p1beta1WebDetection [GoogleCloudVisionV1p1beta1WebDetectionWebPage]
ggPagesWithMatchingImages
  = lens _ggPagesWithMatchingImages
      (\ s a -> s{_ggPagesWithMatchingImages = a})
      . _Default
      . _Coerce

-- | Partial matching images from the Internet. Those images are similar
-- enough to share some key-point features. For example an original image
-- will likely have partial matching for its crops.
ggPartialMatchingImages :: Lens' GoogleCloudVisionV1p1beta1WebDetection [GoogleCloudVisionV1p1beta1WebDetectionWebImage]
ggPartialMatchingImages
  = lens _ggPartialMatchingImages
      (\ s a -> s{_ggPartialMatchingImages = a})
      . _Default
      . _Coerce

-- | Fully matching images from the Internet. Can include resized copies of
-- the query image.
ggFullMatchingImages :: Lens' GoogleCloudVisionV1p1beta1WebDetection [GoogleCloudVisionV1p1beta1WebDetectionWebImage]
ggFullMatchingImages
  = lens _ggFullMatchingImages
      (\ s a -> s{_ggFullMatchingImages = a})
      . _Default
      . _Coerce

-- | Deduced entities from similar images on the Internet.
ggWebEntities :: Lens' GoogleCloudVisionV1p1beta1WebDetection [GoogleCloudVisionV1p1beta1WebDetectionWebEntity]
ggWebEntities
  = lens _ggWebEntities
      (\ s a -> s{_ggWebEntities = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p1beta1WebDetection
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p1beta1WebDetection"
              (\ o ->
                 GoogleCloudVisionV1p1beta1WebDetection' <$>
                   (o .:? "visuallySimilarImages" .!= mempty) <*>
                     (o .:? "bestGuessLabels" .!= mempty)
                     <*> (o .:? "pagesWithMatchingImages" .!= mempty)
                     <*> (o .:? "partialMatchingImages" .!= mempty)
                     <*> (o .:? "fullMatchingImages" .!= mempty)
                     <*> (o .:? "webEntities" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p1beta1WebDetection
         where
        toJSON GoogleCloudVisionV1p1beta1WebDetection'{..}
          = object
              (catMaybes
                 [("visuallySimilarImages" .=) <$>
                    _ggVisuallySimilarImages,
                  ("bestGuessLabels" .=) <$> _ggBestGuessLabels,
                  ("pagesWithMatchingImages" .=) <$>
                    _ggPagesWithMatchingImages,
                  ("partialMatchingImages" .=) <$>
                    _ggPartialMatchingImages,
                  ("fullMatchingImages" .=) <$> _ggFullMatchingImages,
                  ("webEntities" .=) <$> _ggWebEntities])

-- | A face-specific landmark (for example, a face feature).
--
-- /See:/ 'googleCloudVisionV1p2beta1FaceAnnotationLandmark' smart constructor.
data GoogleCloudVisionV1p2beta1FaceAnnotationLandmark =
  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark'
    { _gcvvfalcType :: !(Maybe GoogleCloudVisionV1p2beta1FaceAnnotationLandmarkType)
    , _gcvvfalcPosition :: !(Maybe GoogleCloudVisionV1p2beta1Position)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1FaceAnnotationLandmark' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvfalcType'
--
-- * 'gcvvfalcPosition'
googleCloudVisionV1p2beta1FaceAnnotationLandmark
    :: GoogleCloudVisionV1p2beta1FaceAnnotationLandmark
googleCloudVisionV1p2beta1FaceAnnotationLandmark =
  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark'
    {_gcvvfalcType = Nothing, _gcvvfalcPosition = Nothing}


-- | Face landmark type.
gcvvfalcType :: Lens' GoogleCloudVisionV1p2beta1FaceAnnotationLandmark (Maybe GoogleCloudVisionV1p2beta1FaceAnnotationLandmarkType)
gcvvfalcType
  = lens _gcvvfalcType (\ s a -> s{_gcvvfalcType = a})

-- | Face landmark position.
gcvvfalcPosition :: Lens' GoogleCloudVisionV1p2beta1FaceAnnotationLandmark (Maybe GoogleCloudVisionV1p2beta1Position)
gcvvfalcPosition
  = lens _gcvvfalcPosition
      (\ s a -> s{_gcvvfalcPosition = a})

instance FromJSON
           GoogleCloudVisionV1p2beta1FaceAnnotationLandmark
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p2beta1FaceAnnotationLandmark"
              (\ o ->
                 GoogleCloudVisionV1p2beta1FaceAnnotationLandmark' <$>
                   (o .:? "type") <*> (o .:? "position"))

instance ToJSON
           GoogleCloudVisionV1p2beta1FaceAnnotationLandmark
         where
        toJSON
          GoogleCloudVisionV1p2beta1FaceAnnotationLandmark'{..}
          = object
              (catMaybes
                 [("type" .=) <$> _gcvvfalcType,
                  ("position" .=) <$> _gcvvfalcPosition])

-- | Request for performing Google Cloud Vision API tasks over a
-- user-provided image, with user-requested features, and with context
-- information.
--
-- /See:/ 'googleCloudVisionV1p2beta1AnnotateImageRequest' smart constructor.
data GoogleCloudVisionV1p2beta1AnnotateImageRequest =
  GoogleCloudVisionV1p2beta1AnnotateImageRequest'
    { _gcvvairImage :: !(Maybe GoogleCloudVisionV1p2beta1Image)
    , _gcvvairFeatures :: !(Maybe [GoogleCloudVisionV1p2beta1Feature])
    , _gcvvairImageContext :: !(Maybe GoogleCloudVisionV1p2beta1ImageContext)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1AnnotateImageRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvairImage'
--
-- * 'gcvvairFeatures'
--
-- * 'gcvvairImageContext'
googleCloudVisionV1p2beta1AnnotateImageRequest
    :: GoogleCloudVisionV1p2beta1AnnotateImageRequest
googleCloudVisionV1p2beta1AnnotateImageRequest =
  GoogleCloudVisionV1p2beta1AnnotateImageRequest'
    { _gcvvairImage = Nothing
    , _gcvvairFeatures = Nothing
    , _gcvvairImageContext = Nothing
    }


-- | The image to be processed.
gcvvairImage :: Lens' GoogleCloudVisionV1p2beta1AnnotateImageRequest (Maybe GoogleCloudVisionV1p2beta1Image)
gcvvairImage
  = lens _gcvvairImage (\ s a -> s{_gcvvairImage = a})

-- | Requested features.
gcvvairFeatures :: Lens' GoogleCloudVisionV1p2beta1AnnotateImageRequest [GoogleCloudVisionV1p2beta1Feature]
gcvvairFeatures
  = lens _gcvvairFeatures
      (\ s a -> s{_gcvvairFeatures = a})
      . _Default
      . _Coerce

-- | Additional context that may accompany the image.
gcvvairImageContext :: Lens' GoogleCloudVisionV1p2beta1AnnotateImageRequest (Maybe GoogleCloudVisionV1p2beta1ImageContext)
gcvvairImageContext
  = lens _gcvvairImageContext
      (\ s a -> s{_gcvvairImageContext = a})

instance FromJSON
           GoogleCloudVisionV1p2beta1AnnotateImageRequest
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p2beta1AnnotateImageRequest"
              (\ o ->
                 GoogleCloudVisionV1p2beta1AnnotateImageRequest' <$>
                   (o .:? "image") <*> (o .:? "features" .!= mempty) <*>
                     (o .:? "imageContext"))

instance ToJSON
           GoogleCloudVisionV1p2beta1AnnotateImageRequest
         where
        toJSON
          GoogleCloudVisionV1p2beta1AnnotateImageRequest'{..}
          = object
              (catMaybes
                 [("image" .=) <$> _gcvvairImage,
                  ("features" .=) <$> _gcvvairFeatures,
                  ("imageContext" .=) <$> _gcvvairImageContext])

-- | Response to a single file annotation request. A file may contain one or
-- more images, which individually have their own responses.
--
-- /See:/ 'googleCloudVisionV1p1beta1AnnotateFileResponse' smart constructor.
data GoogleCloudVisionV1p1beta1AnnotateFileResponse =
  GoogleCloudVisionV1p1beta1AnnotateFileResponse'
    { _goooResponses :: !(Maybe [GoogleCloudVisionV1p1beta1AnnotateImageResponse])
    , _goooError :: !(Maybe Status)
    , _goooInputConfig :: !(Maybe GoogleCloudVisionV1p1beta1InputConfig)
    , _goooTotalPages :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1AnnotateFileResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'goooResponses'
--
-- * 'goooError'
--
-- * 'goooInputConfig'
--
-- * 'goooTotalPages'
googleCloudVisionV1p1beta1AnnotateFileResponse
    :: GoogleCloudVisionV1p1beta1AnnotateFileResponse
googleCloudVisionV1p1beta1AnnotateFileResponse =
  GoogleCloudVisionV1p1beta1AnnotateFileResponse'
    { _goooResponses = Nothing
    , _goooError = Nothing
    , _goooInputConfig = Nothing
    , _goooTotalPages = Nothing
    }


-- | Individual responses to images found within the file. This field will be
-- empty if the \`error\` field is set.
goooResponses :: Lens' GoogleCloudVisionV1p1beta1AnnotateFileResponse [GoogleCloudVisionV1p1beta1AnnotateImageResponse]
goooResponses
  = lens _goooResponses
      (\ s a -> s{_goooResponses = a})
      . _Default
      . _Coerce

-- | If set, represents the error message for the failed request. The
-- \`responses\` field will not be set in this case.
goooError :: Lens' GoogleCloudVisionV1p1beta1AnnotateFileResponse (Maybe Status)
goooError
  = lens _goooError (\ s a -> s{_goooError = a})

-- | Information about the file for which this response is generated.
goooInputConfig :: Lens' GoogleCloudVisionV1p1beta1AnnotateFileResponse (Maybe GoogleCloudVisionV1p1beta1InputConfig)
goooInputConfig
  = lens _goooInputConfig
      (\ s a -> s{_goooInputConfig = a})

-- | This field gives the total number of pages in the file.
goooTotalPages :: Lens' GoogleCloudVisionV1p1beta1AnnotateFileResponse (Maybe Int32)
goooTotalPages
  = lens _goooTotalPages
      (\ s a -> s{_goooTotalPages = a})
      . mapping _Coerce

instance FromJSON
           GoogleCloudVisionV1p1beta1AnnotateFileResponse
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p1beta1AnnotateFileResponse"
              (\ o ->
                 GoogleCloudVisionV1p1beta1AnnotateFileResponse' <$>
                   (o .:? "responses" .!= mempty) <*> (o .:? "error")
                     <*> (o .:? "inputConfig")
                     <*> (o .:? "totalPages"))

instance ToJSON
           GoogleCloudVisionV1p1beta1AnnotateFileResponse
         where
        toJSON
          GoogleCloudVisionV1p1beta1AnnotateFileResponse'{..}
          = object
              (catMaybes
                 [("responses" .=) <$> _goooResponses,
                  ("error" .=) <$> _goooError,
                  ("inputConfig" .=) <$> _goooInputConfig,
                  ("totalPages" .=) <$> _goooTotalPages])

-- | Set of detected objects with bounding boxes.
--
-- /See:/ 'googleCloudVisionV1p4beta1LocalizedObjectAnnotation' smart constructor.
data GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation =
  GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation'
    { _gcvvloa2LanguageCode :: !(Maybe Text)
    , _gcvvloa2Score :: !(Maybe (Textual Double))
    , _gcvvloa2BoundingPoly :: !(Maybe GoogleCloudVisionV1p4beta1BoundingPoly)
    , _gcvvloa2Name :: !(Maybe Text)
    , _gcvvloa2Mid :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvloa2LanguageCode'
--
-- * 'gcvvloa2Score'
--
-- * 'gcvvloa2BoundingPoly'
--
-- * 'gcvvloa2Name'
--
-- * 'gcvvloa2Mid'
googleCloudVisionV1p4beta1LocalizedObjectAnnotation
    :: GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation
googleCloudVisionV1p4beta1LocalizedObjectAnnotation =
  GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation'
    { _gcvvloa2LanguageCode = Nothing
    , _gcvvloa2Score = Nothing
    , _gcvvloa2BoundingPoly = Nothing
    , _gcvvloa2Name = Nothing
    , _gcvvloa2Mid = Nothing
    }


-- | The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more
-- information, see
-- http:\/\/www.unicode.org\/reports\/tr35\/#Unicode_locale_identifier.
gcvvloa2LanguageCode :: Lens' GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation (Maybe Text)
gcvvloa2LanguageCode
  = lens _gcvvloa2LanguageCode
      (\ s a -> s{_gcvvloa2LanguageCode = a})

-- | Score of the result. Range [0, 1].
gcvvloa2Score :: Lens' GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation (Maybe Double)
gcvvloa2Score
  = lens _gcvvloa2Score
      (\ s a -> s{_gcvvloa2Score = a})
      . mapping _Coerce

-- | Image region to which this object belongs. This must be populated.
gcvvloa2BoundingPoly :: Lens' GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation (Maybe GoogleCloudVisionV1p4beta1BoundingPoly)
gcvvloa2BoundingPoly
  = lens _gcvvloa2BoundingPoly
      (\ s a -> s{_gcvvloa2BoundingPoly = a})

-- | Object name, expressed in its \`language_code\` language.
gcvvloa2Name :: Lens' GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation (Maybe Text)
gcvvloa2Name
  = lens _gcvvloa2Name (\ s a -> s{_gcvvloa2Name = a})

-- | Object ID that should align with EntityAnnotation mid.
gcvvloa2Mid :: Lens' GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation (Maybe Text)
gcvvloa2Mid
  = lens _gcvvloa2Mid (\ s a -> s{_gcvvloa2Mid = a})

instance FromJSON
           GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation"
              (\ o ->
                 GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation'
                   <$>
                   (o .:? "languageCode") <*> (o .:? "score") <*>
                     (o .:? "boundingPoly")
                     <*> (o .:? "name")
                     <*> (o .:? "mid"))

instance ToJSON
           GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation
         where
        toJSON
          GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _gcvvloa2LanguageCode,
                  ("score" .=) <$> _gcvvloa2Score,
                  ("boundingPoly" .=) <$> _gcvvloa2BoundingPoly,
                  ("name" .=) <$> _gcvvloa2Name,
                  ("mid" .=) <$> _gcvvloa2Mid])

-- | Detected page from OCR.
--
-- /See:/ 'googleCloudVisionV1p2beta1Page' smart constructor.
data GoogleCloudVisionV1p2beta1Page =
  GoogleCloudVisionV1p2beta1Page'
    { _g2Property :: !(Maybe GoogleCloudVisionV1p2beta1TextAnnotationTextProperty)
    , _g2Height :: !(Maybe (Textual Int32))
    , _g2Blocks :: !(Maybe [GoogleCloudVisionV1p2beta1Block])
    , _g2Width :: !(Maybe (Textual Int32))
    , _g2Confidence :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1Page' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'g2Property'
--
-- * 'g2Height'
--
-- * 'g2Blocks'
--
-- * 'g2Width'
--
-- * 'g2Confidence'
googleCloudVisionV1p2beta1Page
    :: GoogleCloudVisionV1p2beta1Page
googleCloudVisionV1p2beta1Page =
  GoogleCloudVisionV1p2beta1Page'
    { _g2Property = Nothing
    , _g2Height = Nothing
    , _g2Blocks = Nothing
    , _g2Width = Nothing
    , _g2Confidence = Nothing
    }


-- | Additional information detected on the page.
g2Property :: Lens' GoogleCloudVisionV1p2beta1Page (Maybe GoogleCloudVisionV1p2beta1TextAnnotationTextProperty)
g2Property
  = lens _g2Property (\ s a -> s{_g2Property = a})

-- | Page height. For PDFs the unit is points. For images (including TIFFs)
-- the unit is pixels.
g2Height :: Lens' GoogleCloudVisionV1p2beta1Page (Maybe Int32)
g2Height
  = lens _g2Height (\ s a -> s{_g2Height = a}) .
      mapping _Coerce

-- | List of blocks of text, images etc on this page.
g2Blocks :: Lens' GoogleCloudVisionV1p2beta1Page [GoogleCloudVisionV1p2beta1Block]
g2Blocks
  = lens _g2Blocks (\ s a -> s{_g2Blocks = a}) .
      _Default
      . _Coerce

-- | Page width. For PDFs the unit is points. For images (including TIFFs)
-- the unit is pixels.
g2Width :: Lens' GoogleCloudVisionV1p2beta1Page (Maybe Int32)
g2Width
  = lens _g2Width (\ s a -> s{_g2Width = a}) .
      mapping _Coerce

-- | Confidence of the OCR results on the page. Range [0, 1].
g2Confidence :: Lens' GoogleCloudVisionV1p2beta1Page (Maybe Double)
g2Confidence
  = lens _g2Confidence (\ s a -> s{_g2Confidence = a})
      . mapping _Coerce

instance FromJSON GoogleCloudVisionV1p2beta1Page
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p2beta1Page"
              (\ o ->
                 GoogleCloudVisionV1p2beta1Page' <$>
                   (o .:? "property") <*> (o .:? "height") <*>
                     (o .:? "blocks" .!= mempty)
                     <*> (o .:? "width")
                     <*> (o .:? "confidence"))

instance ToJSON GoogleCloudVisionV1p2beta1Page where
        toJSON GoogleCloudVisionV1p2beta1Page'{..}
          = object
              (catMaybes
                 [("property" .=) <$> _g2Property,
                  ("height" .=) <$> _g2Height,
                  ("blocks" .=) <$> _g2Blocks,
                  ("width" .=) <$> _g2Width,
                  ("confidence" .=) <$> _g2Confidence])

-- | Detected start or end of a structural component.
--
-- /See:/ 'googleCloudVisionV1p2beta1TextAnnotationDetectedBreak' smart constructor.
data GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak =
  GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak'
    { _goooIsPrefix :: !(Maybe Bool)
    , _goooType :: !(Maybe GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreakType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'goooIsPrefix'
--
-- * 'goooType'
googleCloudVisionV1p2beta1TextAnnotationDetectedBreak
    :: GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak
googleCloudVisionV1p2beta1TextAnnotationDetectedBreak =
  GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak'
    {_goooIsPrefix = Nothing, _goooType = Nothing}


-- | True if break prepends the element.
goooIsPrefix :: Lens' GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak (Maybe Bool)
goooIsPrefix
  = lens _goooIsPrefix (\ s a -> s{_goooIsPrefix = a})

-- | Detected break type.
goooType :: Lens' GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak (Maybe GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreakType)
goooType = lens _goooType (\ s a -> s{_goooType = a})

instance FromJSON
           GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak"
              (\ o ->
                 GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak'
                   <$> (o .:? "isPrefix") <*> (o .:? "type"))

instance ToJSON
           GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak
         where
        toJSON
          GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak'{..}
          = object
              (catMaybes
                 [("isPrefix" .=) <$> _goooIsPrefix,
                  ("type" .=) <$> _goooType])

-- | Parameters for web detection request.
--
-- /See:/ 'googleCloudVisionV1p2beta1WebDetectionParams' smart constructor.
newtype GoogleCloudVisionV1p2beta1WebDetectionParams =
  GoogleCloudVisionV1p2beta1WebDetectionParams'
    { _gcvvwdpIncludeGeoResults :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1WebDetectionParams' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvwdpIncludeGeoResults'
googleCloudVisionV1p2beta1WebDetectionParams
    :: GoogleCloudVisionV1p2beta1WebDetectionParams
googleCloudVisionV1p2beta1WebDetectionParams =
  GoogleCloudVisionV1p2beta1WebDetectionParams'
    {_gcvvwdpIncludeGeoResults = Nothing}


-- | Whether to include results derived from the geo information in the
-- image.
gcvvwdpIncludeGeoResults :: Lens' GoogleCloudVisionV1p2beta1WebDetectionParams (Maybe Bool)
gcvvwdpIncludeGeoResults
  = lens _gcvvwdpIncludeGeoResults
      (\ s a -> s{_gcvvwdpIncludeGeoResults = a})

instance FromJSON
           GoogleCloudVisionV1p2beta1WebDetectionParams
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p2beta1WebDetectionParams"
              (\ o ->
                 GoogleCloudVisionV1p2beta1WebDetectionParams' <$>
                   (o .:? "includeGeoResults"))

instance ToJSON
           GoogleCloudVisionV1p2beta1WebDetectionParams
         where
        toJSON
          GoogleCloudVisionV1p2beta1WebDetectionParams'{..}
          = object
              (catMaybes
                 [("includeGeoResults" .=) <$>
                    _gcvvwdpIncludeGeoResults])

-- | Additional information detected on the structural component.
--
-- /See:/ 'googleCloudVisionV1p1beta1TextAnnotationTextProperty' smart constructor.
data GoogleCloudVisionV1p1beta1TextAnnotationTextProperty =
  GoogleCloudVisionV1p1beta1TextAnnotationTextProperty'
    { _gcvvtatpcDetectedLanguages :: !(Maybe [GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage])
    , _gcvvtatpcDetectedBreak :: !(Maybe GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1TextAnnotationTextProperty' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvtatpcDetectedLanguages'
--
-- * 'gcvvtatpcDetectedBreak'
googleCloudVisionV1p1beta1TextAnnotationTextProperty
    :: GoogleCloudVisionV1p1beta1TextAnnotationTextProperty
googleCloudVisionV1p1beta1TextAnnotationTextProperty =
  GoogleCloudVisionV1p1beta1TextAnnotationTextProperty'
    {_gcvvtatpcDetectedLanguages = Nothing, _gcvvtatpcDetectedBreak = Nothing}


-- | A list of detected languages together with confidence.
gcvvtatpcDetectedLanguages :: Lens' GoogleCloudVisionV1p1beta1TextAnnotationTextProperty [GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage]
gcvvtatpcDetectedLanguages
  = lens _gcvvtatpcDetectedLanguages
      (\ s a -> s{_gcvvtatpcDetectedLanguages = a})
      . _Default
      . _Coerce

-- | Detected start or end of a text segment.
gcvvtatpcDetectedBreak :: Lens' GoogleCloudVisionV1p1beta1TextAnnotationTextProperty (Maybe GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak)
gcvvtatpcDetectedBreak
  = lens _gcvvtatpcDetectedBreak
      (\ s a -> s{_gcvvtatpcDetectedBreak = a})

instance FromJSON
           GoogleCloudVisionV1p1beta1TextAnnotationTextProperty
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p1beta1TextAnnotationTextProperty"
              (\ o ->
                 GoogleCloudVisionV1p1beta1TextAnnotationTextProperty'
                   <$>
                   (o .:? "detectedLanguages" .!= mempty) <*>
                     (o .:? "detectedBreak"))

instance ToJSON
           GoogleCloudVisionV1p1beta1TextAnnotationTextProperty
         where
        toJSON
          GoogleCloudVisionV1p1beta1TextAnnotationTextProperty'{..}
          = object
              (catMaybes
                 [("detectedLanguages" .=) <$>
                    _gcvvtatpcDetectedLanguages,
                  ("detectedBreak" .=) <$> _gcvvtatpcDetectedBreak])

-- | A vertex represents a 2D point in the image. NOTE: the vertex
-- coordinates are in the same scale as the original image.
--
-- /See:/ 'googleCloudVisionV1p1beta1Vertex' smart constructor.
data GoogleCloudVisionV1p1beta1Vertex =
  GoogleCloudVisionV1p1beta1Vertex'
    { _gcvvv1X :: !(Maybe (Textual Int32))
    , _gcvvv1Y :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1Vertex' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvv1X'
--
-- * 'gcvvv1Y'
googleCloudVisionV1p1beta1Vertex
    :: GoogleCloudVisionV1p1beta1Vertex
googleCloudVisionV1p1beta1Vertex =
  GoogleCloudVisionV1p1beta1Vertex' {_gcvvv1X = Nothing, _gcvvv1Y = Nothing}


-- | X coordinate.
gcvvv1X :: Lens' GoogleCloudVisionV1p1beta1Vertex (Maybe Int32)
gcvvv1X
  = lens _gcvvv1X (\ s a -> s{_gcvvv1X = a}) .
      mapping _Coerce

-- | Y coordinate.
gcvvv1Y :: Lens' GoogleCloudVisionV1p1beta1Vertex (Maybe Int32)
gcvvv1Y
  = lens _gcvvv1Y (\ s a -> s{_gcvvv1Y = a}) .
      mapping _Coerce

instance FromJSON GoogleCloudVisionV1p1beta1Vertex
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p1beta1Vertex"
              (\ o ->
                 GoogleCloudVisionV1p1beta1Vertex' <$>
                   (o .:? "x") <*> (o .:? "y"))

instance ToJSON GoogleCloudVisionV1p1beta1Vertex
         where
        toJSON GoogleCloudVisionV1p1beta1Vertex'{..}
          = object
              (catMaybes
                 [("x" .=) <$> _gcvvv1X, ("y" .=) <$> _gcvvv1Y])

-- | Set of crop hints that are used to generate new crops when serving
-- images.
--
-- /See:/ 'cropHintsAnnotation' smart constructor.
newtype CropHintsAnnotation =
  CropHintsAnnotation'
    { _chaCropHints :: Maybe [CropHint]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CropHintsAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chaCropHints'
cropHintsAnnotation
    :: CropHintsAnnotation
cropHintsAnnotation = CropHintsAnnotation' {_chaCropHints = Nothing}


-- | Crop hint results.
chaCropHints :: Lens' CropHintsAnnotation [CropHint]
chaCropHints
  = lens _chaCropHints (\ s a -> s{_chaCropHints = a})
      . _Default
      . _Coerce

instance FromJSON CropHintsAnnotation where
        parseJSON
          = withObject "CropHintsAnnotation"
              (\ o ->
                 CropHintsAnnotation' <$>
                   (o .:? "cropHints" .!= mempty))

instance ToJSON CropHintsAnnotation where
        toJSON CropHintsAnnotation'{..}
          = object
              (catMaybes [("cropHints" .=) <$> _chaCropHints])

-- | Multiple image annotation requests are batched into a single service
-- call.
--
-- /See:/ 'googleCloudVisionV1p2beta1BatchAnnotateImagesRequest' smart constructor.
data GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest =
  GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest'
    { _gcvvbairParent :: !(Maybe Text)
    , _gcvvbairRequests :: !(Maybe [GoogleCloudVisionV1p2beta1AnnotateImageRequest])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvbairParent'
--
-- * 'gcvvbairRequests'
googleCloudVisionV1p2beta1BatchAnnotateImagesRequest
    :: GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest
googleCloudVisionV1p2beta1BatchAnnotateImagesRequest =
  GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest'
    {_gcvvbairParent = Nothing, _gcvvbairRequests = Nothing}


-- | Optional. Target project and location to make a call. Format:
-- \`projects\/{project-id}\/locations\/{location-id}\`. If no parent is
-- specified, a region will be chosen automatically. Supported
-- location-ids: \`us\`: USA country only, \`asia\`: East asia areas, like
-- Japan, Taiwan, \`eu\`: The European Union. Example:
-- \`projects\/project-A\/locations\/eu\`.
gcvvbairParent :: Lens' GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest (Maybe Text)
gcvvbairParent
  = lens _gcvvbairParent
      (\ s a -> s{_gcvvbairParent = a})

-- | Required. Individual image annotation requests for this batch.
gcvvbairRequests :: Lens' GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest [GoogleCloudVisionV1p2beta1AnnotateImageRequest]
gcvvbairRequests
  = lens _gcvvbairRequests
      (\ s a -> s{_gcvvbairRequests = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest"
              (\ o ->
                 GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest'
                   <$>
                   (o .:? "parent") <*> (o .:? "requests" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest
         where
        toJSON
          GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest'{..}
          = object
              (catMaybes
                 [("parent" .=) <$> _gcvvbairParent,
                  ("requests" .=) <$> _gcvvbairRequests])

-- | Color information consists of RGB channels, score, and the fraction of
-- the image that the color occupies in the image.
--
-- /See:/ 'googleCloudVisionV1p2beta1ColorInfo' smart constructor.
data GoogleCloudVisionV1p2beta1ColorInfo =
  GoogleCloudVisionV1p2beta1ColorInfo'
    { _g1Color :: !(Maybe Color)
    , _g1Score :: !(Maybe (Textual Double))
    , _g1PixelFraction :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1ColorInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'g1Color'
--
-- * 'g1Score'
--
-- * 'g1PixelFraction'
googleCloudVisionV1p2beta1ColorInfo
    :: GoogleCloudVisionV1p2beta1ColorInfo
googleCloudVisionV1p2beta1ColorInfo =
  GoogleCloudVisionV1p2beta1ColorInfo'
    {_g1Color = Nothing, _g1Score = Nothing, _g1PixelFraction = Nothing}


-- | RGB components of the color.
g1Color :: Lens' GoogleCloudVisionV1p2beta1ColorInfo (Maybe Color)
g1Color = lens _g1Color (\ s a -> s{_g1Color = a})

-- | Image-specific score for this color. Value in range [0, 1].
g1Score :: Lens' GoogleCloudVisionV1p2beta1ColorInfo (Maybe Double)
g1Score
  = lens _g1Score (\ s a -> s{_g1Score = a}) .
      mapping _Coerce

-- | The fraction of pixels the color occupies in the image. Value in range
-- [0, 1].
g1PixelFraction :: Lens' GoogleCloudVisionV1p2beta1ColorInfo (Maybe Double)
g1PixelFraction
  = lens _g1PixelFraction
      (\ s a -> s{_g1PixelFraction = a})
      . mapping _Coerce

instance FromJSON GoogleCloudVisionV1p2beta1ColorInfo
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p2beta1ColorInfo"
              (\ o ->
                 GoogleCloudVisionV1p2beta1ColorInfo' <$>
                   (o .:? "color") <*> (o .:? "score") <*>
                     (o .:? "pixelFraction"))

instance ToJSON GoogleCloudVisionV1p2beta1ColorInfo
         where
        toJSON GoogleCloudVisionV1p2beta1ColorInfo'{..}
          = object
              (catMaybes
                 [("color" .=) <$> _g1Color,
                  ("score" .=) <$> _g1Score,
                  ("pixelFraction" .=) <$> _g1PixelFraction])

-- | A bounding polygon for the detected image annotation.
--
-- /See:/ 'googleCloudVisionV1p1beta1BoundingPoly' smart constructor.
data GoogleCloudVisionV1p1beta1BoundingPoly =
  GoogleCloudVisionV1p1beta1BoundingPoly'
    { _gcvvbpcNormalizedVertices :: !(Maybe [GoogleCloudVisionV1p1beta1NormalizedVertex])
    , _gcvvbpcVertices :: !(Maybe [GoogleCloudVisionV1p1beta1Vertex])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1BoundingPoly' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvbpcNormalizedVertices'
--
-- * 'gcvvbpcVertices'
googleCloudVisionV1p1beta1BoundingPoly
    :: GoogleCloudVisionV1p1beta1BoundingPoly
googleCloudVisionV1p1beta1BoundingPoly =
  GoogleCloudVisionV1p1beta1BoundingPoly'
    {_gcvvbpcNormalizedVertices = Nothing, _gcvvbpcVertices = Nothing}


-- | The bounding polygon normalized vertices.
gcvvbpcNormalizedVertices :: Lens' GoogleCloudVisionV1p1beta1BoundingPoly [GoogleCloudVisionV1p1beta1NormalizedVertex]
gcvvbpcNormalizedVertices
  = lens _gcvvbpcNormalizedVertices
      (\ s a -> s{_gcvvbpcNormalizedVertices = a})
      . _Default
      . _Coerce

-- | The bounding polygon vertices.
gcvvbpcVertices :: Lens' GoogleCloudVisionV1p1beta1BoundingPoly [GoogleCloudVisionV1p1beta1Vertex]
gcvvbpcVertices
  = lens _gcvvbpcVertices
      (\ s a -> s{_gcvvbpcVertices = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudVisionV1p1beta1BoundingPoly
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p1beta1BoundingPoly"
              (\ o ->
                 GoogleCloudVisionV1p1beta1BoundingPoly' <$>
                   (o .:? "normalizedVertices" .!= mempty) <*>
                     (o .:? "vertices" .!= mempty))

instance ToJSON
           GoogleCloudVisionV1p1beta1BoundingPoly
         where
        toJSON GoogleCloudVisionV1p1beta1BoundingPoly'{..}
          = object
              (catMaybes
                 [("normalizedVertices" .=) <$>
                    _gcvvbpcNormalizedVertices,
                  ("vertices" .=) <$> _gcvvbpcVertices])

-- | Metadata for online images.
--
-- /See:/ 'googleCloudVisionV1p1beta1WebDetectionWebImage' smart constructor.
data GoogleCloudVisionV1p1beta1WebDetectionWebImage =
  GoogleCloudVisionV1p1beta1WebDetectionWebImage'
    { _gcvvwdwi2Score :: !(Maybe (Textual Double))
    , _gcvvwdwi2URL :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1WebDetectionWebImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvwdwi2Score'
--
-- * 'gcvvwdwi2URL'
googleCloudVisionV1p1beta1WebDetectionWebImage
    :: GoogleCloudVisionV1p1beta1WebDetectionWebImage
googleCloudVisionV1p1beta1WebDetectionWebImage =
  GoogleCloudVisionV1p1beta1WebDetectionWebImage'
    {_gcvvwdwi2Score = Nothing, _gcvvwdwi2URL = Nothing}


-- | (Deprecated) Overall relevancy score for the image.
gcvvwdwi2Score :: Lens' GoogleCloudVisionV1p1beta1WebDetectionWebImage (Maybe Double)
gcvvwdwi2Score
  = lens _gcvvwdwi2Score
      (\ s a -> s{_gcvvwdwi2Score = a})
      . mapping _Coerce

-- | The result image URL.
gcvvwdwi2URL :: Lens' GoogleCloudVisionV1p1beta1WebDetectionWebImage (Maybe Text)
gcvvwdwi2URL
  = lens _gcvvwdwi2URL (\ s a -> s{_gcvvwdwi2URL = a})

instance FromJSON
           GoogleCloudVisionV1p1beta1WebDetectionWebImage
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p1beta1WebDetectionWebImage"
              (\ o ->
                 GoogleCloudVisionV1p1beta1WebDetectionWebImage' <$>
                   (o .:? "score") <*> (o .:? "url"))

instance ToJSON
           GoogleCloudVisionV1p1beta1WebDetectionWebImage
         where
        toJSON
          GoogleCloudVisionV1p1beta1WebDetectionWebImage'{..}
          = object
              (catMaybes
                 [("score" .=) <$> _gcvvwdwi2Score,
                  ("url" .=) <$> _gcvvwdwi2URL])

-- | A 3D position in the image, used primarily for Face detection landmarks.
-- A valid Position must have both x and y coordinates. The position
-- coordinates are in the same scale as the original image.
--
-- /See:/ 'position' smart constructor.
data Position =
  Position'
    { _pZ :: !(Maybe (Textual Double))
    , _pX :: !(Maybe (Textual Double))
    , _pY :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Position' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pZ'
--
-- * 'pX'
--
-- * 'pY'
position
    :: Position
position = Position' {_pZ = Nothing, _pX = Nothing, _pY = Nothing}


-- | Z coordinate (or depth).
pZ :: Lens' Position (Maybe Double)
pZ = lens _pZ (\ s a -> s{_pZ = a}) . mapping _Coerce

-- | X coordinate.
pX :: Lens' Position (Maybe Double)
pX = lens _pX (\ s a -> s{_pX = a}) . mapping _Coerce

-- | Y coordinate.
pY :: Lens' Position (Maybe Double)
pY = lens _pY (\ s a -> s{_pY = a}) . mapping _Coerce

instance FromJSON Position where
        parseJSON
          = withObject "Position"
              (\ o ->
                 Position' <$>
                   (o .:? "z") <*> (o .:? "x") <*> (o .:? "y"))

instance ToJSON Position where
        toJSON Position'{..}
          = object
              (catMaybes
                 [("z" .=) <$> _pZ, ("x" .=) <$> _pX,
                  ("y" .=) <$> _pY])

-- | The Google Cloud Storage location where the input will be read from.
--
-- /See:/ 'googleCloudVisionV1p3beta1GcsSource' smart constructor.
newtype GoogleCloudVisionV1p3beta1GcsSource =
  GoogleCloudVisionV1p3beta1GcsSource'
    { _gcvvgs1URI :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p3beta1GcsSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvgs1URI'
googleCloudVisionV1p3beta1GcsSource
    :: GoogleCloudVisionV1p3beta1GcsSource
googleCloudVisionV1p3beta1GcsSource =
  GoogleCloudVisionV1p3beta1GcsSource' {_gcvvgs1URI = Nothing}


-- | Google Cloud Storage URI for the input file. This must only be a Google
-- Cloud Storage object. Wildcards are not currently supported.
gcvvgs1URI :: Lens' GoogleCloudVisionV1p3beta1GcsSource (Maybe Text)
gcvvgs1URI
  = lens _gcvvgs1URI (\ s a -> s{_gcvvgs1URI = a})

instance FromJSON GoogleCloudVisionV1p3beta1GcsSource
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p3beta1GcsSource"
              (\ o ->
                 GoogleCloudVisionV1p3beta1GcsSource' <$>
                   (o .:? "uri"))

instance ToJSON GoogleCloudVisionV1p3beta1GcsSource
         where
        toJSON GoogleCloudVisionV1p3beta1GcsSource'{..}
          = object (catMaybes [("uri" .=) <$> _gcvvgs1URI])

-- | Detected entity location information.
--
-- /See:/ 'googleCloudVisionV1p2beta1LocationInfo' smart constructor.
newtype GoogleCloudVisionV1p2beta1LocationInfo =
  GoogleCloudVisionV1p2beta1LocationInfo'
    { _gcvvlicLatLng :: Maybe LatLng
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1LocationInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvlicLatLng'
googleCloudVisionV1p2beta1LocationInfo
    :: GoogleCloudVisionV1p2beta1LocationInfo
googleCloudVisionV1p2beta1LocationInfo =
  GoogleCloudVisionV1p2beta1LocationInfo' {_gcvvlicLatLng = Nothing}


-- | lat\/long location coordinates.
gcvvlicLatLng :: Lens' GoogleCloudVisionV1p2beta1LocationInfo (Maybe LatLng)
gcvvlicLatLng
  = lens _gcvvlicLatLng
      (\ s a -> s{_gcvvlicLatLng = a})

instance FromJSON
           GoogleCloudVisionV1p2beta1LocationInfo
         where
        parseJSON
          = withObject "GoogleCloudVisionV1p2beta1LocationInfo"
              (\ o ->
                 GoogleCloudVisionV1p2beta1LocationInfo' <$>
                   (o .:? "latLng"))

instance ToJSON
           GoogleCloudVisionV1p2beta1LocationInfo
         where
        toJSON GoogleCloudVisionV1p2beta1LocationInfo'{..}
          = object
              (catMaybes [("latLng" .=) <$> _gcvvlicLatLng])

-- | A vertex represents a 2D point in the image. NOTE: the normalized vertex
-- coordinates are relative to the original image and range from 0 to 1.
--
-- /See:/ 'normalizedVertex' smart constructor.
data NormalizedVertex =
  NormalizedVertex'
    { _nvX :: !(Maybe (Textual Double))
    , _nvY :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NormalizedVertex' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nvX'
--
-- * 'nvY'
normalizedVertex
    :: NormalizedVertex
normalizedVertex = NormalizedVertex' {_nvX = Nothing, _nvY = Nothing}


-- | X coordinate.
nvX :: Lens' NormalizedVertex (Maybe Double)
nvX
  = lens _nvX (\ s a -> s{_nvX = a}) . mapping _Coerce

-- | Y coordinate.
nvY :: Lens' NormalizedVertex (Maybe Double)
nvY
  = lens _nvY (\ s a -> s{_nvY = a}) . mapping _Coerce

instance FromJSON NormalizedVertex where
        parseJSON
          = withObject "NormalizedVertex"
              (\ o ->
                 NormalizedVertex' <$> (o .:? "x") <*> (o .:? "y"))

instance ToJSON NormalizedVertex where
        toJSON NormalizedVertex'{..}
          = object
              (catMaybes [("x" .=) <$> _nvX, ("y" .=) <$> _nvY])

-- | Contains metadata for the BatchAnnotateImages operation.
--
-- /See:/ 'googleCloudVisionV1p1beta1OperationMetadata' smart constructor.
data GoogleCloudVisionV1p1beta1OperationMetadata =
  GoogleCloudVisionV1p1beta1OperationMetadata'
    { _gcvvomcState :: !(Maybe GoogleCloudVisionV1p1beta1OperationMetadataState)
    , _gcvvomcUpdateTime :: !(Maybe DateTime')
    , _gcvvomcCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p1beta1OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvomcState'
--
-- * 'gcvvomcUpdateTime'
--
-- * 'gcvvomcCreateTime'
googleCloudVisionV1p1beta1OperationMetadata
    :: GoogleCloudVisionV1p1beta1OperationMetadata
googleCloudVisionV1p1beta1OperationMetadata =
  GoogleCloudVisionV1p1beta1OperationMetadata'
    { _gcvvomcState = Nothing
    , _gcvvomcUpdateTime = Nothing
    , _gcvvomcCreateTime = Nothing
    }


-- | Current state of the batch operation.
gcvvomcState :: Lens' GoogleCloudVisionV1p1beta1OperationMetadata (Maybe GoogleCloudVisionV1p1beta1OperationMetadataState)
gcvvomcState
  = lens _gcvvomcState (\ s a -> s{_gcvvomcState = a})

-- | The time when the operation result was last updated.
gcvvomcUpdateTime :: Lens' GoogleCloudVisionV1p1beta1OperationMetadata (Maybe UTCTime)
gcvvomcUpdateTime
  = lens _gcvvomcUpdateTime
      (\ s a -> s{_gcvvomcUpdateTime = a})
      . mapping _DateTime

-- | The time when the batch request was received.
gcvvomcCreateTime :: Lens' GoogleCloudVisionV1p1beta1OperationMetadata (Maybe UTCTime)
gcvvomcCreateTime
  = lens _gcvvomcCreateTime
      (\ s a -> s{_gcvvomcCreateTime = a})
      . mapping _DateTime

instance FromJSON
           GoogleCloudVisionV1p1beta1OperationMetadata
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p1beta1OperationMetadata"
              (\ o ->
                 GoogleCloudVisionV1p1beta1OperationMetadata' <$>
                   (o .:? "state") <*> (o .:? "updateTime") <*>
                     (o .:? "createTime"))

instance ToJSON
           GoogleCloudVisionV1p1beta1OperationMetadata
         where
        toJSON
          GoogleCloudVisionV1p1beta1OperationMetadata'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _gcvvomcState,
                  ("updateTime" .=) <$> _gcvvomcUpdateTime,
                  ("createTime" .=) <$> _gcvvomcCreateTime])

-- | The Google Cloud Storage location where the output will be written to.
--
-- /See:/ 'googleCloudVisionV1p2beta1GcsDestination' smart constructor.
newtype GoogleCloudVisionV1p2beta1GcsDestination =
  GoogleCloudVisionV1p2beta1GcsDestination'
    { _gcvvgd1URI :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudVisionV1p2beta1GcsDestination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvvgd1URI'
googleCloudVisionV1p2beta1GcsDestination
    :: GoogleCloudVisionV1p2beta1GcsDestination
googleCloudVisionV1p2beta1GcsDestination =
  GoogleCloudVisionV1p2beta1GcsDestination' {_gcvvgd1URI = Nothing}


-- | Google Cloud Storage URI prefix where the results will be stored.
-- Results will be in JSON format and preceded by its corresponding input
-- URI prefix. This field can either represent a gcs file prefix or gcs
-- directory. In either case, the uri should be unique because in order to
-- get all of the output files, you will need to do a wildcard gcs search
-- on the uri prefix you provide. Examples: * File Prefix:
-- gs:\/\/bucket-name\/here\/filenameprefix The output files will be
-- created in gs:\/\/bucket-name\/here\/ and the names of the output files
-- will begin with \"filenameprefix\". * Directory Prefix:
-- gs:\/\/bucket-name\/some\/location\/ The output files will be created in
-- gs:\/\/bucket-name\/some\/location\/ and the names of the output files
-- could be anything because there was no filename prefix specified. If
-- multiple outputs, each response is still AnnotateFileResponse, each of
-- which contains some subset of the full list of AnnotateImageResponse.
-- Multiple outputs can happen if, for example, the output JSON is too
-- large and overflows into multiple sharded files.
gcvvgd1URI :: Lens' GoogleCloudVisionV1p2beta1GcsDestination (Maybe Text)
gcvvgd1URI
  = lens _gcvvgd1URI (\ s a -> s{_gcvvgd1URI = a})

instance FromJSON
           GoogleCloudVisionV1p2beta1GcsDestination
         where
        parseJSON
          = withObject
              "GoogleCloudVisionV1p2beta1GcsDestination"
              (\ o ->
                 GoogleCloudVisionV1p2beta1GcsDestination' <$>
                   (o .:? "uri"))

instance ToJSON
           GoogleCloudVisionV1p2beta1GcsDestination
         where
        toJSON GoogleCloudVisionV1p2beta1GcsDestination'{..}
          = object (catMaybes [("uri" .=) <$> _gcvvgd1URI])
