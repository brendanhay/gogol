{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DLP.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DLP.Types.Product where

import           Network.Google.DLP.Types.Sum
import           Network.Google.Prelude

-- | Statistics regarding a specific InfoType.
--
-- /See:/ 'googlePrivacyDlpV2InfoTypeStats' smart constructor.
data GooglePrivacyDlpV2InfoTypeStats =
  GooglePrivacyDlpV2InfoTypeStats'
    { _gpdvitsCount    :: !(Maybe (Textual Int64))
    , _gpdvitsInfoType :: !(Maybe GooglePrivacyDlpV2InfoType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2InfoTypeStats' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvitsCount'
--
-- * 'gpdvitsInfoType'
googlePrivacyDlpV2InfoTypeStats
    :: GooglePrivacyDlpV2InfoTypeStats
googlePrivacyDlpV2InfoTypeStats =
  GooglePrivacyDlpV2InfoTypeStats'
    {_gpdvitsCount = Nothing, _gpdvitsInfoType = Nothing}

-- | Number of findings for this infoType.
gpdvitsCount :: Lens' GooglePrivacyDlpV2InfoTypeStats (Maybe Int64)
gpdvitsCount
  = lens _gpdvitsCount (\ s a -> s{_gpdvitsCount = a})
      . mapping _Coerce

-- | The type of finding this stat is for.
gpdvitsInfoType :: Lens' GooglePrivacyDlpV2InfoTypeStats (Maybe GooglePrivacyDlpV2InfoType)
gpdvitsInfoType
  = lens _gpdvitsInfoType
      (\ s a -> s{_gpdvitsInfoType = a})

instance FromJSON GooglePrivacyDlpV2InfoTypeStats
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2InfoTypeStats"
              (\ o ->
                 GooglePrivacyDlpV2InfoTypeStats' <$>
                   (o .:? "count") <*> (o .:? "infoType"))

instance ToJSON GooglePrivacyDlpV2InfoTypeStats where
        toJSON GooglePrivacyDlpV2InfoTypeStats'{..}
          = object
              (catMaybes
                 [("count" .=) <$> _gpdvitsCount,
                  ("infoType" .=) <$> _gpdvitsInfoType])

-- | Redact a given value. For example, if used with an
-- \`InfoTypeTransformation\` transforming PHONE_NUMBER, and input \'My
-- phone number is 206-555-0123\', the output would be \'My phone number is
-- \'.
--
-- /See:/ 'googlePrivacyDlpV2RedactConfig' smart constructor.
data GooglePrivacyDlpV2RedactConfig =
  GooglePrivacyDlpV2RedactConfig'
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2RedactConfig' with the minimum fields required to make a request.
--
googlePrivacyDlpV2RedactConfig
    :: GooglePrivacyDlpV2RedactConfig
googlePrivacyDlpV2RedactConfig = GooglePrivacyDlpV2RedactConfig'

instance FromJSON GooglePrivacyDlpV2RedactConfig
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2RedactConfig"
              (\ o -> pure GooglePrivacyDlpV2RedactConfig')

instance ToJSON GooglePrivacyDlpV2RedactConfig where
        toJSON = const emptyObject

-- | Request message for UpdateJobTrigger.
--
-- /See:/ 'googlePrivacyDlpV2UpdateJobTriggerRequest' smart constructor.
data GooglePrivacyDlpV2UpdateJobTriggerRequest =
  GooglePrivacyDlpV2UpdateJobTriggerRequest'
    { _gpdvujtrUpdateMask :: !(Maybe GFieldMask)
    , _gpdvujtrJobTrigger :: !(Maybe GooglePrivacyDlpV2JobTrigger)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2UpdateJobTriggerRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvujtrUpdateMask'
--
-- * 'gpdvujtrJobTrigger'
googlePrivacyDlpV2UpdateJobTriggerRequest
    :: GooglePrivacyDlpV2UpdateJobTriggerRequest
googlePrivacyDlpV2UpdateJobTriggerRequest =
  GooglePrivacyDlpV2UpdateJobTriggerRequest'
    {_gpdvujtrUpdateMask = Nothing, _gpdvujtrJobTrigger = Nothing}

-- | Mask to control which fields get updated.
gpdvujtrUpdateMask :: Lens' GooglePrivacyDlpV2UpdateJobTriggerRequest (Maybe GFieldMask)
gpdvujtrUpdateMask
  = lens _gpdvujtrUpdateMask
      (\ s a -> s{_gpdvujtrUpdateMask = a})

-- | New JobTrigger value.
gpdvujtrJobTrigger :: Lens' GooglePrivacyDlpV2UpdateJobTriggerRequest (Maybe GooglePrivacyDlpV2JobTrigger)
gpdvujtrJobTrigger
  = lens _gpdvujtrJobTrigger
      (\ s a -> s{_gpdvujtrJobTrigger = a})

instance FromJSON
           GooglePrivacyDlpV2UpdateJobTriggerRequest
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2UpdateJobTriggerRequest"
              (\ o ->
                 GooglePrivacyDlpV2UpdateJobTriggerRequest' <$>
                   (o .:? "updateMask") <*> (o .:? "jobTrigger"))

instance ToJSON
           GooglePrivacyDlpV2UpdateJobTriggerRequest
         where
        toJSON GooglePrivacyDlpV2UpdateJobTriggerRequest'{..}
          = object
              (catMaybes
                 [("updateMask" .=) <$> _gpdvujtrUpdateMask,
                  ("jobTrigger" .=) <$> _gpdvujtrJobTrigger])

-- | Generic half-open interval [start, end)
--
-- /See:/ 'googlePrivacyDlpV2Range' smart constructor.
data GooglePrivacyDlpV2Range =
  GooglePrivacyDlpV2Range'
    { _gpdvrStart :: !(Maybe (Textual Int64))
    , _gpdvrEnd   :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Range' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvrStart'
--
-- * 'gpdvrEnd'
googlePrivacyDlpV2Range
    :: GooglePrivacyDlpV2Range
googlePrivacyDlpV2Range =
  GooglePrivacyDlpV2Range' {_gpdvrStart = Nothing, _gpdvrEnd = Nothing}

-- | Index of the first character of the range (inclusive).
gpdvrStart :: Lens' GooglePrivacyDlpV2Range (Maybe Int64)
gpdvrStart
  = lens _gpdvrStart (\ s a -> s{_gpdvrStart = a}) .
      mapping _Coerce

-- | Index of the last character of the range (exclusive).
gpdvrEnd :: Lens' GooglePrivacyDlpV2Range (Maybe Int64)
gpdvrEnd
  = lens _gpdvrEnd (\ s a -> s{_gpdvrEnd = a}) .
      mapping _Coerce

instance FromJSON GooglePrivacyDlpV2Range where
        parseJSON
          = withObject "GooglePrivacyDlpV2Range"
              (\ o ->
                 GooglePrivacyDlpV2Range' <$>
                   (o .:? "start") <*> (o .:? "end"))

instance ToJSON GooglePrivacyDlpV2Range where
        toJSON GooglePrivacyDlpV2Range'{..}
          = object
              (catMaybes
                 [("start" .=) <$> _gpdvrStart,
                  ("end" .=) <$> _gpdvrEnd])

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
-- /See:/ 'googleRpcStatus' smart constructor.
data GoogleRpcStatus =
  GoogleRpcStatus'
    { _grsDetails :: !(Maybe [GoogleRpcStatusDetailsItem])
    , _grsCode    :: !(Maybe (Textual Int32))
    , _grsMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleRpcStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grsDetails'
--
-- * 'grsCode'
--
-- * 'grsMessage'
googleRpcStatus
    :: GoogleRpcStatus
googleRpcStatus =
  GoogleRpcStatus'
    {_grsDetails = Nothing, _grsCode = Nothing, _grsMessage = Nothing}

-- | A list of messages that carry the error details. There is a common set
-- of message types for APIs to use.
grsDetails :: Lens' GoogleRpcStatus [GoogleRpcStatusDetailsItem]
grsDetails
  = lens _grsDetails (\ s a -> s{_grsDetails = a}) .
      _Default
      . _Coerce

-- | The status code, which should be an enum value of google.rpc.Code.
grsCode :: Lens' GoogleRpcStatus (Maybe Int32)
grsCode
  = lens _grsCode (\ s a -> s{_grsCode = a}) .
      mapping _Coerce

-- | A developer-facing error message, which should be in English. Any
-- user-facing error message should be localized and sent in the
-- google.rpc.Status.details field, or localized by the client.
grsMessage :: Lens' GoogleRpcStatus (Maybe Text)
grsMessage
  = lens _grsMessage (\ s a -> s{_grsMessage = a})

instance FromJSON GoogleRpcStatus where
        parseJSON
          = withObject "GoogleRpcStatus"
              (\ o ->
                 GoogleRpcStatus' <$>
                   (o .:? "details" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON GoogleRpcStatus where
        toJSON GoogleRpcStatus'{..}
          = object
              (catMaybes
                 [("details" .=) <$> _grsDetails,
                  ("code" .=) <$> _grsCode,
                  ("message" .=) <$> _grsMessage])

-- | Buckets values based on fixed size ranges. The Bucketing transformation
-- can provide all of this functionality, but requires more configuration.
-- This message is provided as a convenience to the user for simple
-- bucketing strategies. The transformed value will be a hyphenated string
-- of -, i.e if lower_bound = 10 and upper_bound = 20 all values that are
-- within this bucket will be replaced with \"10-20\". This can be used on
-- data of type: double, long. If the bound Value type differs from the
-- type of data being transformed, we will first attempt converting the
-- type of the data to be transformed to match the type of the bound before
-- comparing. See https:\/\/cloud.google.com\/dlp\/docs\/concepts-bucketing
-- to learn more.
--
-- /See:/ 'googlePrivacyDlpV2FixedSizeBucketingConfig' smart constructor.
data GooglePrivacyDlpV2FixedSizeBucketingConfig =
  GooglePrivacyDlpV2FixedSizeBucketingConfig'
    { _gpdvfsbcUpperBound :: !(Maybe GooglePrivacyDlpV2Value)
    , _gpdvfsbcLowerBound :: !(Maybe GooglePrivacyDlpV2Value)
    , _gpdvfsbcBucketSize :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2FixedSizeBucketingConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvfsbcUpperBound'
--
-- * 'gpdvfsbcLowerBound'
--
-- * 'gpdvfsbcBucketSize'
googlePrivacyDlpV2FixedSizeBucketingConfig
    :: GooglePrivacyDlpV2FixedSizeBucketingConfig
googlePrivacyDlpV2FixedSizeBucketingConfig =
  GooglePrivacyDlpV2FixedSizeBucketingConfig'
    { _gpdvfsbcUpperBound = Nothing
    , _gpdvfsbcLowerBound = Nothing
    , _gpdvfsbcBucketSize = Nothing
    }

-- | Upper bound value of buckets. All values greater than upper_bound are
-- grouped together into a single bucket; for example if \`upper_bound\` =
-- 89, then all values greater than 89 are replaced with the value “89+”.
-- [Required].
gpdvfsbcUpperBound :: Lens' GooglePrivacyDlpV2FixedSizeBucketingConfig (Maybe GooglePrivacyDlpV2Value)
gpdvfsbcUpperBound
  = lens _gpdvfsbcUpperBound
      (\ s a -> s{_gpdvfsbcUpperBound = a})

-- | Lower bound value of buckets. All values less than \`lower_bound\` are
-- grouped together into a single bucket; for example if \`lower_bound\` =
-- 10, then all values less than 10 are replaced with the value “-10”.
-- [Required].
gpdvfsbcLowerBound :: Lens' GooglePrivacyDlpV2FixedSizeBucketingConfig (Maybe GooglePrivacyDlpV2Value)
gpdvfsbcLowerBound
  = lens _gpdvfsbcLowerBound
      (\ s a -> s{_gpdvfsbcLowerBound = a})

-- | Size of each bucket (except for minimum and maximum buckets). So if
-- \`lower_bound\` = 10, \`upper_bound\` = 89, and \`bucket_size\` = 10,
-- then the following buckets would be used: -10, 10-20, 20-30, 30-40,
-- 40-50, 50-60, 60-70, 70-80, 80-89, 89+. Precision up to 2 decimals
-- works. [Required].
gpdvfsbcBucketSize :: Lens' GooglePrivacyDlpV2FixedSizeBucketingConfig (Maybe Double)
gpdvfsbcBucketSize
  = lens _gpdvfsbcBucketSize
      (\ s a -> s{_gpdvfsbcBucketSize = a})
      . mapping _Coerce

instance FromJSON
           GooglePrivacyDlpV2FixedSizeBucketingConfig
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2FixedSizeBucketingConfig"
              (\ o ->
                 GooglePrivacyDlpV2FixedSizeBucketingConfig' <$>
                   (o .:? "upperBound") <*> (o .:? "lowerBound") <*>
                     (o .:? "bucketSize"))

instance ToJSON
           GooglePrivacyDlpV2FixedSizeBucketingConfig
         where
        toJSON
          GooglePrivacyDlpV2FixedSizeBucketingConfig'{..}
          = object
              (catMaybes
                 [("upperBound" .=) <$> _gpdvfsbcUpperBound,
                  ("lowerBound" .=) <$> _gpdvfsbcLowerBound,
                  ("bucketSize" .=) <$> _gpdvfsbcBucketSize])

-- | All the findings for a single scanned item.
--
-- /See:/ 'googlePrivacyDlpV2InspectResult' smart constructor.
data GooglePrivacyDlpV2InspectResult =
  GooglePrivacyDlpV2InspectResult'
    { _gpdvirFindingsTruncated :: !(Maybe Bool)
    , _gpdvirFindings          :: !(Maybe [GooglePrivacyDlpV2Finding])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2InspectResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvirFindingsTruncated'
--
-- * 'gpdvirFindings'
googlePrivacyDlpV2InspectResult
    :: GooglePrivacyDlpV2InspectResult
googlePrivacyDlpV2InspectResult =
  GooglePrivacyDlpV2InspectResult'
    {_gpdvirFindingsTruncated = Nothing, _gpdvirFindings = Nothing}

-- | If true, then this item might have more findings than were returned, and
-- the findings returned are an arbitrary subset of all findings. The
-- findings list might be truncated because the input items were too large,
-- or because the server reached the maximum amount of resources allowed
-- for a single API call. For best results, divide the input into smaller
-- batches.
gpdvirFindingsTruncated :: Lens' GooglePrivacyDlpV2InspectResult (Maybe Bool)
gpdvirFindingsTruncated
  = lens _gpdvirFindingsTruncated
      (\ s a -> s{_gpdvirFindingsTruncated = a})

-- | List of findings for an item.
gpdvirFindings :: Lens' GooglePrivacyDlpV2InspectResult [GooglePrivacyDlpV2Finding]
gpdvirFindings
  = lens _gpdvirFindings
      (\ s a -> s{_gpdvirFindings = a})
      . _Default
      . _Coerce

instance FromJSON GooglePrivacyDlpV2InspectResult
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2InspectResult"
              (\ o ->
                 GooglePrivacyDlpV2InspectResult' <$>
                   (o .:? "findingsTruncated") <*>
                     (o .:? "findings" .!= mempty))

instance ToJSON GooglePrivacyDlpV2InspectResult where
        toJSON GooglePrivacyDlpV2InspectResult'{..}
          = object
              (catMaybes
                 [("findingsTruncated" .=) <$>
                    _gpdvirFindingsTruncated,
                  ("findings" .=) <$> _gpdvirFindings])

-- | Configuration for a StoredInfoType.
--
-- /See:/ 'googlePrivacyDlpV2StoredInfoTypeConfig' smart constructor.
data GooglePrivacyDlpV2StoredInfoTypeConfig =
  GooglePrivacyDlpV2StoredInfoTypeConfig'
    { _gpdvsitcLargeCustomDictionary :: !(Maybe GooglePrivacyDlpV2LargeCustomDictionaryConfig)
    , _gpdvsitcDisplayName           :: !(Maybe Text)
    , _gpdvsitcDescription           :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2StoredInfoTypeConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvsitcLargeCustomDictionary'
--
-- * 'gpdvsitcDisplayName'
--
-- * 'gpdvsitcDescription'
googlePrivacyDlpV2StoredInfoTypeConfig
    :: GooglePrivacyDlpV2StoredInfoTypeConfig
googlePrivacyDlpV2StoredInfoTypeConfig =
  GooglePrivacyDlpV2StoredInfoTypeConfig'
    { _gpdvsitcLargeCustomDictionary = Nothing
    , _gpdvsitcDisplayName = Nothing
    , _gpdvsitcDescription = Nothing
    }

-- | StoredInfoType where findings are defined by a dictionary of phrases.
gpdvsitcLargeCustomDictionary :: Lens' GooglePrivacyDlpV2StoredInfoTypeConfig (Maybe GooglePrivacyDlpV2LargeCustomDictionaryConfig)
gpdvsitcLargeCustomDictionary
  = lens _gpdvsitcLargeCustomDictionary
      (\ s a -> s{_gpdvsitcLargeCustomDictionary = a})

-- | Display name of the StoredInfoType (max 256 characters).
gpdvsitcDisplayName :: Lens' GooglePrivacyDlpV2StoredInfoTypeConfig (Maybe Text)
gpdvsitcDisplayName
  = lens _gpdvsitcDisplayName
      (\ s a -> s{_gpdvsitcDisplayName = a})

-- | Description of the StoredInfoType (max 256 characters).
gpdvsitcDescription :: Lens' GooglePrivacyDlpV2StoredInfoTypeConfig (Maybe Text)
gpdvsitcDescription
  = lens _gpdvsitcDescription
      (\ s a -> s{_gpdvsitcDescription = a})

instance FromJSON
           GooglePrivacyDlpV2StoredInfoTypeConfig
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2StoredInfoTypeConfig"
              (\ o ->
                 GooglePrivacyDlpV2StoredInfoTypeConfig' <$>
                   (o .:? "largeCustomDictionary") <*>
                     (o .:? "displayName")
                     <*> (o .:? "description"))

instance ToJSON
           GooglePrivacyDlpV2StoredInfoTypeConfig
         where
        toJSON GooglePrivacyDlpV2StoredInfoTypeConfig'{..}
          = object
              (catMaybes
                 [("largeCustomDictionary" .=) <$>
                    _gpdvsitcLargeCustomDictionary,
                  ("displayName" .=) <$> _gpdvsitcDisplayName,
                  ("description" .=) <$> _gpdvsitcDescription])

-- | A transformation to apply to text that is identified as a specific
-- info_type.
--
-- /See:/ 'googlePrivacyDlpV2InfoTypeTransformation' smart constructor.
data GooglePrivacyDlpV2InfoTypeTransformation =
  GooglePrivacyDlpV2InfoTypeTransformation'
    { _gpdvittInfoTypes               :: !(Maybe [GooglePrivacyDlpV2InfoType])
    , _gpdvittPrimitiveTransformation :: !(Maybe GooglePrivacyDlpV2PrimitiveTransformation)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2InfoTypeTransformation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvittInfoTypes'
--
-- * 'gpdvittPrimitiveTransformation'
googlePrivacyDlpV2InfoTypeTransformation
    :: GooglePrivacyDlpV2InfoTypeTransformation
googlePrivacyDlpV2InfoTypeTransformation =
  GooglePrivacyDlpV2InfoTypeTransformation'
    {_gpdvittInfoTypes = Nothing, _gpdvittPrimitiveTransformation = Nothing}

-- | InfoTypes to apply the transformation to. An empty list will cause this
-- transformation to apply to all findings that correspond to infoTypes
-- that were requested in \`InspectConfig\`.
gpdvittInfoTypes :: Lens' GooglePrivacyDlpV2InfoTypeTransformation [GooglePrivacyDlpV2InfoType]
gpdvittInfoTypes
  = lens _gpdvittInfoTypes
      (\ s a -> s{_gpdvittInfoTypes = a})
      . _Default
      . _Coerce

-- | Primitive transformation to apply to the infoType. [required]
gpdvittPrimitiveTransformation :: Lens' GooglePrivacyDlpV2InfoTypeTransformation (Maybe GooglePrivacyDlpV2PrimitiveTransformation)
gpdvittPrimitiveTransformation
  = lens _gpdvittPrimitiveTransformation
      (\ s a -> s{_gpdvittPrimitiveTransformation = a})

instance FromJSON
           GooglePrivacyDlpV2InfoTypeTransformation
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2InfoTypeTransformation"
              (\ o ->
                 GooglePrivacyDlpV2InfoTypeTransformation' <$>
                   (o .:? "infoTypes" .!= mempty) <*>
                     (o .:? "primitiveTransformation"))

instance ToJSON
           GooglePrivacyDlpV2InfoTypeTransformation
         where
        toJSON GooglePrivacyDlpV2InfoTypeTransformation'{..}
          = object
              (catMaybes
                 [("infoTypes" .=) <$> _gpdvittInfoTypes,
                  ("primitiveTransformation" .=) <$>
                    _gpdvittPrimitiveTransformation])

-- | General identifier of a data field in a storage service.
--
-- /See:/ 'googlePrivacyDlpV2FieldId' smart constructor.
newtype GooglePrivacyDlpV2FieldId =
  GooglePrivacyDlpV2FieldId'
    { _gpdvfiName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2FieldId' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvfiName'
googlePrivacyDlpV2FieldId
    :: GooglePrivacyDlpV2FieldId
googlePrivacyDlpV2FieldId = GooglePrivacyDlpV2FieldId' {_gpdvfiName = Nothing}

-- | Name describing the field.
gpdvfiName :: Lens' GooglePrivacyDlpV2FieldId (Maybe Text)
gpdvfiName
  = lens _gpdvfiName (\ s a -> s{_gpdvfiName = a})

instance FromJSON GooglePrivacyDlpV2FieldId where
        parseJSON
          = withObject "GooglePrivacyDlpV2FieldId"
              (\ o ->
                 GooglePrivacyDlpV2FieldId' <$> (o .:? "name"))

instance ToJSON GooglePrivacyDlpV2FieldId where
        toJSON GooglePrivacyDlpV2FieldId'{..}
          = object (catMaybes [("name" .=) <$> _gpdvfiName])

-- | Combines all of the information about a DLP job.
--
-- /See:/ 'googlePrivacyDlpV2DlpJob' smart constructor.
data GooglePrivacyDlpV2DlpJob =
  GooglePrivacyDlpV2DlpJob'
    { _gpdvdjInspectDetails :: !(Maybe GooglePrivacyDlpV2InspectDataSourceDetails)
    , _gpdvdjState          :: !(Maybe GooglePrivacyDlpV2DlpJobState)
    , _gpdvdjStartTime      :: !(Maybe DateTime')
    , _gpdvdjJobTriggerName :: !(Maybe Text)
    , _gpdvdjRiskDetails    :: !(Maybe GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails)
    , _gpdvdjName           :: !(Maybe Text)
    , _gpdvdjEndTime        :: !(Maybe DateTime')
    , _gpdvdjType           :: !(Maybe GooglePrivacyDlpV2DlpJobType)
    , _gpdvdjErrors         :: !(Maybe [GooglePrivacyDlpV2Error])
    , _gpdvdjCreateTime     :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DlpJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvdjInspectDetails'
--
-- * 'gpdvdjState'
--
-- * 'gpdvdjStartTime'
--
-- * 'gpdvdjJobTriggerName'
--
-- * 'gpdvdjRiskDetails'
--
-- * 'gpdvdjName'
--
-- * 'gpdvdjEndTime'
--
-- * 'gpdvdjType'
--
-- * 'gpdvdjErrors'
--
-- * 'gpdvdjCreateTime'
googlePrivacyDlpV2DlpJob
    :: GooglePrivacyDlpV2DlpJob
googlePrivacyDlpV2DlpJob =
  GooglePrivacyDlpV2DlpJob'
    { _gpdvdjInspectDetails = Nothing
    , _gpdvdjState = Nothing
    , _gpdvdjStartTime = Nothing
    , _gpdvdjJobTriggerName = Nothing
    , _gpdvdjRiskDetails = Nothing
    , _gpdvdjName = Nothing
    , _gpdvdjEndTime = Nothing
    , _gpdvdjType = Nothing
    , _gpdvdjErrors = Nothing
    , _gpdvdjCreateTime = Nothing
    }

-- | Results from inspecting a data source.
gpdvdjInspectDetails :: Lens' GooglePrivacyDlpV2DlpJob (Maybe GooglePrivacyDlpV2InspectDataSourceDetails)
gpdvdjInspectDetails
  = lens _gpdvdjInspectDetails
      (\ s a -> s{_gpdvdjInspectDetails = a})

-- | State of a job.
gpdvdjState :: Lens' GooglePrivacyDlpV2DlpJob (Maybe GooglePrivacyDlpV2DlpJobState)
gpdvdjState
  = lens _gpdvdjState (\ s a -> s{_gpdvdjState = a})

-- | Time when the job started.
gpdvdjStartTime :: Lens' GooglePrivacyDlpV2DlpJob (Maybe UTCTime)
gpdvdjStartTime
  = lens _gpdvdjStartTime
      (\ s a -> s{_gpdvdjStartTime = a})
      . mapping _DateTime

-- | If created by a job trigger, the resource name of the trigger that
-- instantiated the job.
gpdvdjJobTriggerName :: Lens' GooglePrivacyDlpV2DlpJob (Maybe Text)
gpdvdjJobTriggerName
  = lens _gpdvdjJobTriggerName
      (\ s a -> s{_gpdvdjJobTriggerName = a})

-- | Results from analyzing risk of a data source.
gpdvdjRiskDetails :: Lens' GooglePrivacyDlpV2DlpJob (Maybe GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails)
gpdvdjRiskDetails
  = lens _gpdvdjRiskDetails
      (\ s a -> s{_gpdvdjRiskDetails = a})

-- | The server-assigned name.
gpdvdjName :: Lens' GooglePrivacyDlpV2DlpJob (Maybe Text)
gpdvdjName
  = lens _gpdvdjName (\ s a -> s{_gpdvdjName = a})

-- | Time when the job finished.
gpdvdjEndTime :: Lens' GooglePrivacyDlpV2DlpJob (Maybe UTCTime)
gpdvdjEndTime
  = lens _gpdvdjEndTime
      (\ s a -> s{_gpdvdjEndTime = a})
      . mapping _DateTime

-- | The type of job.
gpdvdjType :: Lens' GooglePrivacyDlpV2DlpJob (Maybe GooglePrivacyDlpV2DlpJobType)
gpdvdjType
  = lens _gpdvdjType (\ s a -> s{_gpdvdjType = a})

-- | A stream of errors encountered running the job.
gpdvdjErrors :: Lens' GooglePrivacyDlpV2DlpJob [GooglePrivacyDlpV2Error]
gpdvdjErrors
  = lens _gpdvdjErrors (\ s a -> s{_gpdvdjErrors = a})
      . _Default
      . _Coerce

-- | Time when the job was created.
gpdvdjCreateTime :: Lens' GooglePrivacyDlpV2DlpJob (Maybe UTCTime)
gpdvdjCreateTime
  = lens _gpdvdjCreateTime
      (\ s a -> s{_gpdvdjCreateTime = a})
      . mapping _DateTime

instance FromJSON GooglePrivacyDlpV2DlpJob where
        parseJSON
          = withObject "GooglePrivacyDlpV2DlpJob"
              (\ o ->
                 GooglePrivacyDlpV2DlpJob' <$>
                   (o .:? "inspectDetails") <*> (o .:? "state") <*>
                     (o .:? "startTime")
                     <*> (o .:? "jobTriggerName")
                     <*> (o .:? "riskDetails")
                     <*> (o .:? "name")
                     <*> (o .:? "endTime")
                     <*> (o .:? "type")
                     <*> (o .:? "errors" .!= mempty)
                     <*> (o .:? "createTime"))

instance ToJSON GooglePrivacyDlpV2DlpJob where
        toJSON GooglePrivacyDlpV2DlpJob'{..}
          = object
              (catMaybes
                 [("inspectDetails" .=) <$> _gpdvdjInspectDetails,
                  ("state" .=) <$> _gpdvdjState,
                  ("startTime" .=) <$> _gpdvdjStartTime,
                  ("jobTriggerName" .=) <$> _gpdvdjJobTriggerName,
                  ("riskDetails" .=) <$> _gpdvdjRiskDetails,
                  ("name" .=) <$> _gpdvdjName,
                  ("endTime" .=) <$> _gpdvdjEndTime,
                  ("type" .=) <$> _gpdvdjType,
                  ("errors" .=) <$> _gpdvdjErrors,
                  ("createTime" .=) <$> _gpdvdjCreateTime])

-- | A type of transformation that is applied over structured data such as a
-- table.
--
-- /See:/ 'googlePrivacyDlpV2RecordTransformations' smart constructor.
data GooglePrivacyDlpV2RecordTransformations =
  GooglePrivacyDlpV2RecordTransformations'
    { _gpdvrtRecordSuppressions   :: !(Maybe [GooglePrivacyDlpV2RecordSuppression])
    , _gpdvrtFieldTransformations :: !(Maybe [GooglePrivacyDlpV2FieldTransformation])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2RecordTransformations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvrtRecordSuppressions'
--
-- * 'gpdvrtFieldTransformations'
googlePrivacyDlpV2RecordTransformations
    :: GooglePrivacyDlpV2RecordTransformations
googlePrivacyDlpV2RecordTransformations =
  GooglePrivacyDlpV2RecordTransformations'
    {_gpdvrtRecordSuppressions = Nothing, _gpdvrtFieldTransformations = Nothing}

-- | Configuration defining which records get suppressed entirely. Records
-- that match any suppression rule are omitted from the output [optional].
gpdvrtRecordSuppressions :: Lens' GooglePrivacyDlpV2RecordTransformations [GooglePrivacyDlpV2RecordSuppression]
gpdvrtRecordSuppressions
  = lens _gpdvrtRecordSuppressions
      (\ s a -> s{_gpdvrtRecordSuppressions = a})
      . _Default
      . _Coerce

-- | Transform the record by applying various field transformations.
gpdvrtFieldTransformations :: Lens' GooglePrivacyDlpV2RecordTransformations [GooglePrivacyDlpV2FieldTransformation]
gpdvrtFieldTransformations
  = lens _gpdvrtFieldTransformations
      (\ s a -> s{_gpdvrtFieldTransformations = a})
      . _Default
      . _Coerce

instance FromJSON
           GooglePrivacyDlpV2RecordTransformations
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2RecordTransformations"
              (\ o ->
                 GooglePrivacyDlpV2RecordTransformations' <$>
                   (o .:? "recordSuppressions" .!= mempty) <*>
                     (o .:? "fieldTransformations" .!= mempty))

instance ToJSON
           GooglePrivacyDlpV2RecordTransformations
         where
        toJSON GooglePrivacyDlpV2RecordTransformations'{..}
          = object
              (catMaybes
                 [("recordSuppressions" .=) <$>
                    _gpdvrtRecordSuppressions,
                  ("fieldTransformations" .=) <$>
                    _gpdvrtFieldTransformations])

-- | A unique identifier for a Datastore entity. If a key\'s partition ID or
-- any of its path kinds or names are reserved\/read-only, the key is
-- reserved\/read-only. A reserved\/read-only key is forbidden in certain
-- documented contexts.
--
-- /See:/ 'googlePrivacyDlpV2Key' smart constructor.
data GooglePrivacyDlpV2Key =
  GooglePrivacyDlpV2Key'
    { _gpdvkPartitionId :: !(Maybe GooglePrivacyDlpV2PartitionId)
    , _gpdvkPath        :: !(Maybe [GooglePrivacyDlpV2PathElement])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Key' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvkPartitionId'
--
-- * 'gpdvkPath'
googlePrivacyDlpV2Key
    :: GooglePrivacyDlpV2Key
googlePrivacyDlpV2Key =
  GooglePrivacyDlpV2Key' {_gpdvkPartitionId = Nothing, _gpdvkPath = Nothing}

-- | Entities are partitioned into subsets, currently identified by a project
-- ID and namespace ID. Queries are scoped to a single partition.
gpdvkPartitionId :: Lens' GooglePrivacyDlpV2Key (Maybe GooglePrivacyDlpV2PartitionId)
gpdvkPartitionId
  = lens _gpdvkPartitionId
      (\ s a -> s{_gpdvkPartitionId = a})

-- | The entity path. An entity path consists of one or more elements
-- composed of a kind and a string or numerical identifier, which identify
-- entities. The first element identifies a _root entity_, the second
-- element identifies a _child_ of the root entity, the third element
-- identifies a child of the second entity, and so forth. The entities
-- identified by all prefixes of the path are called the element\'s
-- _ancestors_. A path can never be empty, and a path can have at most 100
-- elements.
gpdvkPath :: Lens' GooglePrivacyDlpV2Key [GooglePrivacyDlpV2PathElement]
gpdvkPath
  = lens _gpdvkPath (\ s a -> s{_gpdvkPath = a}) .
      _Default
      . _Coerce

instance FromJSON GooglePrivacyDlpV2Key where
        parseJSON
          = withObject "GooglePrivacyDlpV2Key"
              (\ o ->
                 GooglePrivacyDlpV2Key' <$>
                   (o .:? "partitionId") <*> (o .:? "path" .!= mempty))

instance ToJSON GooglePrivacyDlpV2Key where
        toJSON GooglePrivacyDlpV2Key'{..}
          = object
              (catMaybes
                 [("partitionId" .=) <$> _gpdvkPartitionId,
                  ("path" .=) <$> _gpdvkPath])

-- | Generalization function that buckets values based on ranges. The ranges
-- and replacement values are dynamically provided by the user for custom
-- behavior, such as 1-30 -> LOW 31-65 -> MEDIUM 66-100 -> HIGH This can be
-- used on data of type: number, long, string, timestamp. If the bound
-- \`Value\` type differs from the type of data being transformed, we will
-- first attempt converting the type of the data to be transformed to match
-- the type of the bound before comparing. See
-- https:\/\/cloud.google.com\/dlp\/docs\/concepts-bucketing to learn more.
--
-- /See:/ 'googlePrivacyDlpV2BucketingConfig' smart constructor.
newtype GooglePrivacyDlpV2BucketingConfig =
  GooglePrivacyDlpV2BucketingConfig'
    { _gpdvbcBuckets :: Maybe [GooglePrivacyDlpV2Bucket]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2BucketingConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvbcBuckets'
googlePrivacyDlpV2BucketingConfig
    :: GooglePrivacyDlpV2BucketingConfig
googlePrivacyDlpV2BucketingConfig =
  GooglePrivacyDlpV2BucketingConfig' {_gpdvbcBuckets = Nothing}

-- | Set of buckets. Ranges must be non-overlapping.
gpdvbcBuckets :: Lens' GooglePrivacyDlpV2BucketingConfig [GooglePrivacyDlpV2Bucket]
gpdvbcBuckets
  = lens _gpdvbcBuckets
      (\ s a -> s{_gpdvbcBuckets = a})
      . _Default
      . _Coerce

instance FromJSON GooglePrivacyDlpV2BucketingConfig
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2BucketingConfig"
              (\ o ->
                 GooglePrivacyDlpV2BucketingConfig' <$>
                   (o .:? "buckets" .!= mempty))

instance ToJSON GooglePrivacyDlpV2BucketingConfig
         where
        toJSON GooglePrivacyDlpV2BucketingConfig'{..}
          = object
              (catMaybes [("buckets" .=) <$> _gpdvbcBuckets])

-- | Configuration description of the scanning process. When used with
-- redactContent only info_types and min_likelihood are currently used.
--
-- /See:/ 'googlePrivacyDlpV2InspectConfig' smart constructor.
data GooglePrivacyDlpV2InspectConfig =
  GooglePrivacyDlpV2InspectConfig'
    { _gpdvicInfoTypes        :: !(Maybe [GooglePrivacyDlpV2InfoType])
    , _gpdvicMinLikelihood    :: !(Maybe GooglePrivacyDlpV2InspectConfigMinLikelihood)
    , _gpdvicExcludeInfoTypes :: !(Maybe Bool)
    , _gpdvicIncludeQuote     :: !(Maybe Bool)
    , _gpdvicCustomInfoTypes  :: !(Maybe [GooglePrivacyDlpV2CustomInfoType])
    , _gpdvicLimits           :: !(Maybe GooglePrivacyDlpV2FindingLimits)
    , _gpdvicContentOptions   :: !(Maybe [Text])
    , _gpdvicRuleSet          :: !(Maybe [GooglePrivacyDlpV2InspectionRuleSet])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2InspectConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvicInfoTypes'
--
-- * 'gpdvicMinLikelihood'
--
-- * 'gpdvicExcludeInfoTypes'
--
-- * 'gpdvicIncludeQuote'
--
-- * 'gpdvicCustomInfoTypes'
--
-- * 'gpdvicLimits'
--
-- * 'gpdvicContentOptions'
--
-- * 'gpdvicRuleSet'
googlePrivacyDlpV2InspectConfig
    :: GooglePrivacyDlpV2InspectConfig
googlePrivacyDlpV2InspectConfig =
  GooglePrivacyDlpV2InspectConfig'
    { _gpdvicInfoTypes = Nothing
    , _gpdvicMinLikelihood = Nothing
    , _gpdvicExcludeInfoTypes = Nothing
    , _gpdvicIncludeQuote = Nothing
    , _gpdvicCustomInfoTypes = Nothing
    , _gpdvicLimits = Nothing
    , _gpdvicContentOptions = Nothing
    , _gpdvicRuleSet = Nothing
    }

-- | Restricts what info_types to look for. The values must correspond to
-- InfoType values returned by ListInfoTypes or listed at
-- https:\/\/cloud.google.com\/dlp\/docs\/infotypes-reference. When no
-- InfoTypes or CustomInfoTypes are specified in a request, the system may
-- automatically choose what detectors to run. By default this may be all
-- types, but may change over time as detectors are updated. The special
-- InfoType name \"ALL_BASIC\" can be used to trigger all detectors, but
-- may change over time as new InfoTypes are added. If you need precise
-- control and predictability as to what detectors are run you should
-- specify specific InfoTypes listed in the reference.
gpdvicInfoTypes :: Lens' GooglePrivacyDlpV2InspectConfig [GooglePrivacyDlpV2InfoType]
gpdvicInfoTypes
  = lens _gpdvicInfoTypes
      (\ s a -> s{_gpdvicInfoTypes = a})
      . _Default
      . _Coerce

-- | Only returns findings equal or above this threshold. The default is
-- POSSIBLE. See https:\/\/cloud.google.com\/dlp\/docs\/likelihood to learn
-- more.
gpdvicMinLikelihood :: Lens' GooglePrivacyDlpV2InspectConfig (Maybe GooglePrivacyDlpV2InspectConfigMinLikelihood)
gpdvicMinLikelihood
  = lens _gpdvicMinLikelihood
      (\ s a -> s{_gpdvicMinLikelihood = a})

-- | When true, excludes type information of the findings.
gpdvicExcludeInfoTypes :: Lens' GooglePrivacyDlpV2InspectConfig (Maybe Bool)
gpdvicExcludeInfoTypes
  = lens _gpdvicExcludeInfoTypes
      (\ s a -> s{_gpdvicExcludeInfoTypes = a})

-- | When true, a contextual quote from the data that triggered a finding is
-- included in the response; see Finding.quote.
gpdvicIncludeQuote :: Lens' GooglePrivacyDlpV2InspectConfig (Maybe Bool)
gpdvicIncludeQuote
  = lens _gpdvicIncludeQuote
      (\ s a -> s{_gpdvicIncludeQuote = a})

-- | CustomInfoTypes provided by the user. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-custom-infotypes to
-- learn more.
gpdvicCustomInfoTypes :: Lens' GooglePrivacyDlpV2InspectConfig [GooglePrivacyDlpV2CustomInfoType]
gpdvicCustomInfoTypes
  = lens _gpdvicCustomInfoTypes
      (\ s a -> s{_gpdvicCustomInfoTypes = a})
      . _Default
      . _Coerce

gpdvicLimits :: Lens' GooglePrivacyDlpV2InspectConfig (Maybe GooglePrivacyDlpV2FindingLimits)
gpdvicLimits
  = lens _gpdvicLimits (\ s a -> s{_gpdvicLimits = a})

-- | List of options defining data content to scan. If empty, text, images,
-- and other content will be included.
gpdvicContentOptions :: Lens' GooglePrivacyDlpV2InspectConfig [Text]
gpdvicContentOptions
  = lens _gpdvicContentOptions
      (\ s a -> s{_gpdvicContentOptions = a})
      . _Default
      . _Coerce

-- | Set of rules to apply to the findings for this InspectConfig. Exclusion
-- rules, contained in the set are executed in the end, other rules are
-- executed in the order they are specified for each info type.
gpdvicRuleSet :: Lens' GooglePrivacyDlpV2InspectConfig [GooglePrivacyDlpV2InspectionRuleSet]
gpdvicRuleSet
  = lens _gpdvicRuleSet
      (\ s a -> s{_gpdvicRuleSet = a})
      . _Default
      . _Coerce

instance FromJSON GooglePrivacyDlpV2InspectConfig
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2InspectConfig"
              (\ o ->
                 GooglePrivacyDlpV2InspectConfig' <$>
                   (o .:? "infoTypes" .!= mempty) <*>
                     (o .:? "minLikelihood")
                     <*> (o .:? "excludeInfoTypes")
                     <*> (o .:? "includeQuote")
                     <*> (o .:? "customInfoTypes" .!= mempty)
                     <*> (o .:? "limits")
                     <*> (o .:? "contentOptions" .!= mempty)
                     <*> (o .:? "ruleSet" .!= mempty))

instance ToJSON GooglePrivacyDlpV2InspectConfig where
        toJSON GooglePrivacyDlpV2InspectConfig'{..}
          = object
              (catMaybes
                 [("infoTypes" .=) <$> _gpdvicInfoTypes,
                  ("minLikelihood" .=) <$> _gpdvicMinLikelihood,
                  ("excludeInfoTypes" .=) <$> _gpdvicExcludeInfoTypes,
                  ("includeQuote" .=) <$> _gpdvicIncludeQuote,
                  ("customInfoTypes" .=) <$> _gpdvicCustomInfoTypes,
                  ("limits" .=) <$> _gpdvicLimits,
                  ("contentOptions" .=) <$> _gpdvicContentOptions,
                  ("ruleSet" .=) <$> _gpdvicRuleSet])

-- | Configuration for a risk analysis job. See
-- https:\/\/cloud.google.com\/dlp\/docs\/concepts-risk-analysis to learn
-- more.
--
-- /See:/ 'googlePrivacyDlpV2RiskAnalysisJobConfig' smart constructor.
data GooglePrivacyDlpV2RiskAnalysisJobConfig =
  GooglePrivacyDlpV2RiskAnalysisJobConfig'
    { _gpdvrajcPrivacyMetric :: !(Maybe GooglePrivacyDlpV2PrivacyMetric)
    , _gpdvrajcActions       :: !(Maybe [GooglePrivacyDlpV2Action])
    , _gpdvrajcSourceTable   :: !(Maybe GooglePrivacyDlpV2BigQueryTable)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2RiskAnalysisJobConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvrajcPrivacyMetric'
--
-- * 'gpdvrajcActions'
--
-- * 'gpdvrajcSourceTable'
googlePrivacyDlpV2RiskAnalysisJobConfig
    :: GooglePrivacyDlpV2RiskAnalysisJobConfig
googlePrivacyDlpV2RiskAnalysisJobConfig =
  GooglePrivacyDlpV2RiskAnalysisJobConfig'
    { _gpdvrajcPrivacyMetric = Nothing
    , _gpdvrajcActions = Nothing
    , _gpdvrajcSourceTable = Nothing
    }

-- | Privacy metric to compute.
gpdvrajcPrivacyMetric :: Lens' GooglePrivacyDlpV2RiskAnalysisJobConfig (Maybe GooglePrivacyDlpV2PrivacyMetric)
gpdvrajcPrivacyMetric
  = lens _gpdvrajcPrivacyMetric
      (\ s a -> s{_gpdvrajcPrivacyMetric = a})

-- | Actions to execute at the completion of the job. Are executed in the
-- order provided.
gpdvrajcActions :: Lens' GooglePrivacyDlpV2RiskAnalysisJobConfig [GooglePrivacyDlpV2Action]
gpdvrajcActions
  = lens _gpdvrajcActions
      (\ s a -> s{_gpdvrajcActions = a})
      . _Default
      . _Coerce

-- | Input dataset to compute metrics over.
gpdvrajcSourceTable :: Lens' GooglePrivacyDlpV2RiskAnalysisJobConfig (Maybe GooglePrivacyDlpV2BigQueryTable)
gpdvrajcSourceTable
  = lens _gpdvrajcSourceTable
      (\ s a -> s{_gpdvrajcSourceTable = a})

instance FromJSON
           GooglePrivacyDlpV2RiskAnalysisJobConfig
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2RiskAnalysisJobConfig"
              (\ o ->
                 GooglePrivacyDlpV2RiskAnalysisJobConfig' <$>
                   (o .:? "privacyMetric") <*>
                     (o .:? "actions" .!= mempty)
                     <*> (o .:? "sourceTable"))

instance ToJSON
           GooglePrivacyDlpV2RiskAnalysisJobConfig
         where
        toJSON GooglePrivacyDlpV2RiskAnalysisJobConfig'{..}
          = object
              (catMaybes
                 [("privacyMetric" .=) <$> _gpdvrajcPrivacyMetric,
                  ("actions" .=) <$> _gpdvrajcActions,
                  ("sourceTable" .=) <$> _gpdvrajcSourceTable])

-- | Message for infoType-dependent details parsed from quote.
--
-- /See:/ 'googlePrivacyDlpV2QuoteInfo' smart constructor.
newtype GooglePrivacyDlpV2QuoteInfo =
  GooglePrivacyDlpV2QuoteInfo'
    { _gpdvqiDateTime :: Maybe GooglePrivacyDlpV2DateTime
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2QuoteInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvqiDateTime'
googlePrivacyDlpV2QuoteInfo
    :: GooglePrivacyDlpV2QuoteInfo
googlePrivacyDlpV2QuoteInfo =
  GooglePrivacyDlpV2QuoteInfo' {_gpdvqiDateTime = Nothing}

-- | The date time indicated by the quote.
gpdvqiDateTime :: Lens' GooglePrivacyDlpV2QuoteInfo (Maybe GooglePrivacyDlpV2DateTime)
gpdvqiDateTime
  = lens _gpdvqiDateTime
      (\ s a -> s{_gpdvqiDateTime = a})

instance FromJSON GooglePrivacyDlpV2QuoteInfo where
        parseJSON
          = withObject "GooglePrivacyDlpV2QuoteInfo"
              (\ o ->
                 GooglePrivacyDlpV2QuoteInfo' <$> (o .:? "dateTime"))

instance ToJSON GooglePrivacyDlpV2QuoteInfo where
        toJSON GooglePrivacyDlpV2QuoteInfo'{..}
          = object
              (catMaybes [("dateTime" .=) <$> _gpdvqiDateTime])

-- | Configuration to suppress records whose suppression conditions evaluate
-- to true.
--
-- /See:/ 'googlePrivacyDlpV2RecordSuppression' smart constructor.
newtype GooglePrivacyDlpV2RecordSuppression =
  GooglePrivacyDlpV2RecordSuppression'
    { _gpdvrsCondition :: Maybe GooglePrivacyDlpV2RecordCondition
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2RecordSuppression' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvrsCondition'
googlePrivacyDlpV2RecordSuppression
    :: GooglePrivacyDlpV2RecordSuppression
googlePrivacyDlpV2RecordSuppression =
  GooglePrivacyDlpV2RecordSuppression' {_gpdvrsCondition = Nothing}

-- | A condition that when it evaluates to true will result in the record
-- being evaluated to be suppressed from the transformed content.
gpdvrsCondition :: Lens' GooglePrivacyDlpV2RecordSuppression (Maybe GooglePrivacyDlpV2RecordCondition)
gpdvrsCondition
  = lens _gpdvrsCondition
      (\ s a -> s{_gpdvrsCondition = a})

instance FromJSON GooglePrivacyDlpV2RecordSuppression
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2RecordSuppression"
              (\ o ->
                 GooglePrivacyDlpV2RecordSuppression' <$>
                   (o .:? "condition"))

instance ToJSON GooglePrivacyDlpV2RecordSuppression
         where
        toJSON GooglePrivacyDlpV2RecordSuppression'{..}
          = object
              (catMaybes [("condition" .=) <$> _gpdvrsCondition])

-- | This is a data encryption key (DEK) (as opposed to a key encryption key
-- (KEK) stored by KMS). When using KMS to wrap\/unwrap DEKs, be sure to
-- set an appropriate IAM policy on the KMS CryptoKey (KEK) to ensure an
-- attacker cannot unwrap the data crypto key.
--
-- /See:/ 'googlePrivacyDlpV2CryptoKey' smart constructor.
data GooglePrivacyDlpV2CryptoKey =
  GooglePrivacyDlpV2CryptoKey'
    { _gpdvckTransient  :: !(Maybe GooglePrivacyDlpV2TransientCryptoKey)
    , _gpdvckKmsWrApped :: !(Maybe GooglePrivacyDlpV2KmsWrAppedCryptoKey)
    , _gpdvckUnwrApped  :: !(Maybe GooglePrivacyDlpV2UnwrAppedCryptoKey)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CryptoKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvckTransient'
--
-- * 'gpdvckKmsWrApped'
--
-- * 'gpdvckUnwrApped'
googlePrivacyDlpV2CryptoKey
    :: GooglePrivacyDlpV2CryptoKey
googlePrivacyDlpV2CryptoKey =
  GooglePrivacyDlpV2CryptoKey'
    { _gpdvckTransient = Nothing
    , _gpdvckKmsWrApped = Nothing
    , _gpdvckUnwrApped = Nothing
    }

gpdvckTransient :: Lens' GooglePrivacyDlpV2CryptoKey (Maybe GooglePrivacyDlpV2TransientCryptoKey)
gpdvckTransient
  = lens _gpdvckTransient
      (\ s a -> s{_gpdvckTransient = a})

gpdvckKmsWrApped :: Lens' GooglePrivacyDlpV2CryptoKey (Maybe GooglePrivacyDlpV2KmsWrAppedCryptoKey)
gpdvckKmsWrApped
  = lens _gpdvckKmsWrApped
      (\ s a -> s{_gpdvckKmsWrApped = a})

gpdvckUnwrApped :: Lens' GooglePrivacyDlpV2CryptoKey (Maybe GooglePrivacyDlpV2UnwrAppedCryptoKey)
gpdvckUnwrApped
  = lens _gpdvckUnwrApped
      (\ s a -> s{_gpdvckUnwrApped = a})

instance FromJSON GooglePrivacyDlpV2CryptoKey where
        parseJSON
          = withObject "GooglePrivacyDlpV2CryptoKey"
              (\ o ->
                 GooglePrivacyDlpV2CryptoKey' <$>
                   (o .:? "transient") <*> (o .:? "kmsWrapped") <*>
                     (o .:? "unwrapped"))

instance ToJSON GooglePrivacyDlpV2CryptoKey where
        toJSON GooglePrivacyDlpV2CryptoKey'{..}
          = object
              (catMaybes
                 [("transient" .=) <$> _gpdvckTransient,
                  ("kmsWrapped" .=) <$> _gpdvckKmsWrApped,
                  ("unwrapped" .=) <$> _gpdvckUnwrApped])

-- | Configuration for a custom dictionary created from a data source of any
-- size up to the maximum size defined in the
-- [limits](https:\/\/cloud.google.com\/dlp\/limits) page. The artifacts of
-- dictionary creation are stored in the specified Google Cloud Storage
-- location. Consider using \`CustomInfoType.Dictionary\` for smaller
-- dictionaries that satisfy the size requirements.
--
-- /See:/ 'googlePrivacyDlpV2LargeCustomDictionaryConfig' smart constructor.
data GooglePrivacyDlpV2LargeCustomDictionaryConfig =
  GooglePrivacyDlpV2LargeCustomDictionaryConfig'
    { _gpdvlcdcBigQueryField       :: !(Maybe GooglePrivacyDlpV2BigQueryField)
    , _gpdvlcdcCloudStorageFileSet :: !(Maybe GooglePrivacyDlpV2CloudStorageFileSet)
    , _gpdvlcdcOutputPath          :: !(Maybe GooglePrivacyDlpV2CloudStoragePath)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2LargeCustomDictionaryConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvlcdcBigQueryField'
--
-- * 'gpdvlcdcCloudStorageFileSet'
--
-- * 'gpdvlcdcOutputPath'
googlePrivacyDlpV2LargeCustomDictionaryConfig
    :: GooglePrivacyDlpV2LargeCustomDictionaryConfig
googlePrivacyDlpV2LargeCustomDictionaryConfig =
  GooglePrivacyDlpV2LargeCustomDictionaryConfig'
    { _gpdvlcdcBigQueryField = Nothing
    , _gpdvlcdcCloudStorageFileSet = Nothing
    , _gpdvlcdcOutputPath = Nothing
    }

-- | Field in a BigQuery table where each cell represents a dictionary
-- phrase.
gpdvlcdcBigQueryField :: Lens' GooglePrivacyDlpV2LargeCustomDictionaryConfig (Maybe GooglePrivacyDlpV2BigQueryField)
gpdvlcdcBigQueryField
  = lens _gpdvlcdcBigQueryField
      (\ s a -> s{_gpdvlcdcBigQueryField = a})

-- | Set of files containing newline-delimited lists of dictionary phrases.
gpdvlcdcCloudStorageFileSet :: Lens' GooglePrivacyDlpV2LargeCustomDictionaryConfig (Maybe GooglePrivacyDlpV2CloudStorageFileSet)
gpdvlcdcCloudStorageFileSet
  = lens _gpdvlcdcCloudStorageFileSet
      (\ s a -> s{_gpdvlcdcCloudStorageFileSet = a})

-- | Location to store dictionary artifacts in Google Cloud Storage. These
-- files will only be accessible by project owners and the DLP API. If any
-- of these artifacts are modified, the dictionary is considered invalid
-- and can no longer be used.
gpdvlcdcOutputPath :: Lens' GooglePrivacyDlpV2LargeCustomDictionaryConfig (Maybe GooglePrivacyDlpV2CloudStoragePath)
gpdvlcdcOutputPath
  = lens _gpdvlcdcOutputPath
      (\ s a -> s{_gpdvlcdcOutputPath = a})

instance FromJSON
           GooglePrivacyDlpV2LargeCustomDictionaryConfig
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2LargeCustomDictionaryConfig"
              (\ o ->
                 GooglePrivacyDlpV2LargeCustomDictionaryConfig' <$>
                   (o .:? "bigQueryField") <*>
                     (o .:? "cloudStorageFileSet")
                     <*> (o .:? "outputPath"))

instance ToJSON
           GooglePrivacyDlpV2LargeCustomDictionaryConfig
         where
        toJSON
          GooglePrivacyDlpV2LargeCustomDictionaryConfig'{..}
          = object
              (catMaybes
                 [("bigQueryField" .=) <$> _gpdvlcdcBigQueryField,
                  ("cloudStorageFileSet" .=) <$>
                    _gpdvlcdcCloudStorageFileSet,
                  ("outputPath" .=) <$> _gpdvlcdcOutputPath])

-- | Message defining a list of words or phrases to search for in the data.
--
-- /See:/ 'googlePrivacyDlpV2WordList' smart constructor.
newtype GooglePrivacyDlpV2WordList =
  GooglePrivacyDlpV2WordList'
    { _gpdvwlWords :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2WordList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvwlWords'
googlePrivacyDlpV2WordList
    :: GooglePrivacyDlpV2WordList
googlePrivacyDlpV2WordList =
  GooglePrivacyDlpV2WordList' {_gpdvwlWords = Nothing}

-- | Words or phrases defining the dictionary. The dictionary must contain at
-- least one phrase and every phrase must contain at least 2 characters
-- that are letters or digits. [required]
gpdvwlWords :: Lens' GooglePrivacyDlpV2WordList [Text]
gpdvwlWords
  = lens _gpdvwlWords (\ s a -> s{_gpdvwlWords = a}) .
      _Default
      . _Coerce

instance FromJSON GooglePrivacyDlpV2WordList where
        parseJSON
          = withObject "GooglePrivacyDlpV2WordList"
              (\ o ->
                 GooglePrivacyDlpV2WordList' <$>
                   (o .:? "words" .!= mempty))

instance ToJSON GooglePrivacyDlpV2WordList where
        toJSON GooglePrivacyDlpV2WordList'{..}
          = object (catMaybes [("words" .=) <$> _gpdvwlWords])

-- | Container structure for the content to inspect.
--
-- /See:/ 'googlePrivacyDlpV2ContentItem' smart constructor.
data GooglePrivacyDlpV2ContentItem =
  GooglePrivacyDlpV2ContentItem'
    { _gpdvciValue    :: !(Maybe Text)
    , _gpdvciByteItem :: !(Maybe GooglePrivacyDlpV2ByteContentItem)
    , _gpdvciTable    :: !(Maybe GooglePrivacyDlpV2Table)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ContentItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvciValue'
--
-- * 'gpdvciByteItem'
--
-- * 'gpdvciTable'
googlePrivacyDlpV2ContentItem
    :: GooglePrivacyDlpV2ContentItem
googlePrivacyDlpV2ContentItem =
  GooglePrivacyDlpV2ContentItem'
    {_gpdvciValue = Nothing, _gpdvciByteItem = Nothing, _gpdvciTable = Nothing}

-- | String data to inspect or redact.
gpdvciValue :: Lens' GooglePrivacyDlpV2ContentItem (Maybe Text)
gpdvciValue
  = lens _gpdvciValue (\ s a -> s{_gpdvciValue = a})

-- | Content data to inspect or redact. Replaces \`type\` and \`data\`.
gpdvciByteItem :: Lens' GooglePrivacyDlpV2ContentItem (Maybe GooglePrivacyDlpV2ByteContentItem)
gpdvciByteItem
  = lens _gpdvciByteItem
      (\ s a -> s{_gpdvciByteItem = a})

-- | Structured content for inspection. See
-- https:\/\/cloud.google.com\/dlp\/docs\/inspecting-text#inspecting_a_table
-- to learn more.
gpdvciTable :: Lens' GooglePrivacyDlpV2ContentItem (Maybe GooglePrivacyDlpV2Table)
gpdvciTable
  = lens _gpdvciTable (\ s a -> s{_gpdvciTable = a})

instance FromJSON GooglePrivacyDlpV2ContentItem where
        parseJSON
          = withObject "GooglePrivacyDlpV2ContentItem"
              (\ o ->
                 GooglePrivacyDlpV2ContentItem' <$>
                   (o .:? "value") <*> (o .:? "byteItem") <*>
                     (o .:? "table"))

instance ToJSON GooglePrivacyDlpV2ContentItem where
        toJSON GooglePrivacyDlpV2ContentItem'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _gpdvciValue,
                  ("byteItem" .=) <$> _gpdvciByteItem,
                  ("table" .=) <$> _gpdvciTable])

--
-- /See:/ 'googlePrivacyDlpV2CategoricalStatsHistogramBucket' smart constructor.
data GooglePrivacyDlpV2CategoricalStatsHistogramBucket =
  GooglePrivacyDlpV2CategoricalStatsHistogramBucket'
    { _gpdvcshbValueFrequencyLowerBound :: !(Maybe (Textual Int64))
    , _gpdvcshbBucketValues             :: !(Maybe [GooglePrivacyDlpV2ValueFrequency])
    , _gpdvcshbValueFrequencyUpperBound :: !(Maybe (Textual Int64))
    , _gpdvcshbBucketSize               :: !(Maybe (Textual Int64))
    , _gpdvcshbBucketValueCount         :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CategoricalStatsHistogramBucket' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvcshbValueFrequencyLowerBound'
--
-- * 'gpdvcshbBucketValues'
--
-- * 'gpdvcshbValueFrequencyUpperBound'
--
-- * 'gpdvcshbBucketSize'
--
-- * 'gpdvcshbBucketValueCount'
googlePrivacyDlpV2CategoricalStatsHistogramBucket
    :: GooglePrivacyDlpV2CategoricalStatsHistogramBucket
googlePrivacyDlpV2CategoricalStatsHistogramBucket =
  GooglePrivacyDlpV2CategoricalStatsHistogramBucket'
    { _gpdvcshbValueFrequencyLowerBound = Nothing
    , _gpdvcshbBucketValues = Nothing
    , _gpdvcshbValueFrequencyUpperBound = Nothing
    , _gpdvcshbBucketSize = Nothing
    , _gpdvcshbBucketValueCount = Nothing
    }

-- | Lower bound on the value frequency of the values in this bucket.
gpdvcshbValueFrequencyLowerBound :: Lens' GooglePrivacyDlpV2CategoricalStatsHistogramBucket (Maybe Int64)
gpdvcshbValueFrequencyLowerBound
  = lens _gpdvcshbValueFrequencyLowerBound
      (\ s a -> s{_gpdvcshbValueFrequencyLowerBound = a})
      . mapping _Coerce

-- | Sample of value frequencies in this bucket. The total number of values
-- returned per bucket is capped at 20.
gpdvcshbBucketValues :: Lens' GooglePrivacyDlpV2CategoricalStatsHistogramBucket [GooglePrivacyDlpV2ValueFrequency]
gpdvcshbBucketValues
  = lens _gpdvcshbBucketValues
      (\ s a -> s{_gpdvcshbBucketValues = a})
      . _Default
      . _Coerce

-- | Upper bound on the value frequency of the values in this bucket.
gpdvcshbValueFrequencyUpperBound :: Lens' GooglePrivacyDlpV2CategoricalStatsHistogramBucket (Maybe Int64)
gpdvcshbValueFrequencyUpperBound
  = lens _gpdvcshbValueFrequencyUpperBound
      (\ s a -> s{_gpdvcshbValueFrequencyUpperBound = a})
      . mapping _Coerce

-- | Total number of values in this bucket.
gpdvcshbBucketSize :: Lens' GooglePrivacyDlpV2CategoricalStatsHistogramBucket (Maybe Int64)
gpdvcshbBucketSize
  = lens _gpdvcshbBucketSize
      (\ s a -> s{_gpdvcshbBucketSize = a})
      . mapping _Coerce

-- | Total number of distinct values in this bucket.
gpdvcshbBucketValueCount :: Lens' GooglePrivacyDlpV2CategoricalStatsHistogramBucket (Maybe Int64)
gpdvcshbBucketValueCount
  = lens _gpdvcshbBucketValueCount
      (\ s a -> s{_gpdvcshbBucketValueCount = a})
      . mapping _Coerce

instance FromJSON
           GooglePrivacyDlpV2CategoricalStatsHistogramBucket
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2CategoricalStatsHistogramBucket"
              (\ o ->
                 GooglePrivacyDlpV2CategoricalStatsHistogramBucket'
                   <$>
                   (o .:? "valueFrequencyLowerBound") <*>
                     (o .:? "bucketValues" .!= mempty)
                     <*> (o .:? "valueFrequencyUpperBound")
                     <*> (o .:? "bucketSize")
                     <*> (o .:? "bucketValueCount"))

instance ToJSON
           GooglePrivacyDlpV2CategoricalStatsHistogramBucket
         where
        toJSON
          GooglePrivacyDlpV2CategoricalStatsHistogramBucket'{..}
          = object
              (catMaybes
                 [("valueFrequencyLowerBound" .=) <$>
                    _gpdvcshbValueFrequencyLowerBound,
                  ("bucketValues" .=) <$> _gpdvcshbBucketValues,
                  ("valueFrequencyUpperBound" .=) <$>
                    _gpdvcshbValueFrequencyUpperBound,
                  ("bucketSize" .=) <$> _gpdvcshbBucketSize,
                  ("bucketValueCount" .=) <$>
                    _gpdvcshbBucketValueCount])

--
-- /See:/ 'googlePrivacyDlpV2Result' smart constructor.
data GooglePrivacyDlpV2Result =
  GooglePrivacyDlpV2Result'
    { _gpdvrProcessedBytes      :: !(Maybe (Textual Int64))
    , _gpdvrInfoTypeStats       :: !(Maybe [GooglePrivacyDlpV2InfoTypeStats])
    , _gpdvrTotalEstimatedBytes :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Result' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvrProcessedBytes'
--
-- * 'gpdvrInfoTypeStats'
--
-- * 'gpdvrTotalEstimatedBytes'
googlePrivacyDlpV2Result
    :: GooglePrivacyDlpV2Result
googlePrivacyDlpV2Result =
  GooglePrivacyDlpV2Result'
    { _gpdvrProcessedBytes = Nothing
    , _gpdvrInfoTypeStats = Nothing
    , _gpdvrTotalEstimatedBytes = Nothing
    }

-- | Total size in bytes that were processed.
gpdvrProcessedBytes :: Lens' GooglePrivacyDlpV2Result (Maybe Int64)
gpdvrProcessedBytes
  = lens _gpdvrProcessedBytes
      (\ s a -> s{_gpdvrProcessedBytes = a})
      . mapping _Coerce

-- | Statistics of how many instances of each info type were found during
-- inspect job.
gpdvrInfoTypeStats :: Lens' GooglePrivacyDlpV2Result [GooglePrivacyDlpV2InfoTypeStats]
gpdvrInfoTypeStats
  = lens _gpdvrInfoTypeStats
      (\ s a -> s{_gpdvrInfoTypeStats = a})
      . _Default
      . _Coerce

-- | Estimate of the number of bytes to process.
gpdvrTotalEstimatedBytes :: Lens' GooglePrivacyDlpV2Result (Maybe Int64)
gpdvrTotalEstimatedBytes
  = lens _gpdvrTotalEstimatedBytes
      (\ s a -> s{_gpdvrTotalEstimatedBytes = a})
      . mapping _Coerce

instance FromJSON GooglePrivacyDlpV2Result where
        parseJSON
          = withObject "GooglePrivacyDlpV2Result"
              (\ o ->
                 GooglePrivacyDlpV2Result' <$>
                   (o .:? "processedBytes") <*>
                     (o .:? "infoTypeStats" .!= mempty)
                     <*> (o .:? "totalEstimatedBytes"))

instance ToJSON GooglePrivacyDlpV2Result where
        toJSON GooglePrivacyDlpV2Result'{..}
          = object
              (catMaybes
                 [("processedBytes" .=) <$> _gpdvrProcessedBytes,
                  ("infoTypeStats" .=) <$> _gpdvrInfoTypeStats,
                  ("totalEstimatedBytes" .=) <$>
                    _gpdvrTotalEstimatedBytes])

-- | The results of an inspect DataSource job.
--
-- /See:/ 'googlePrivacyDlpV2InspectDataSourceDetails' smart constructor.
data GooglePrivacyDlpV2InspectDataSourceDetails =
  GooglePrivacyDlpV2InspectDataSourceDetails'
    { _gpdvidsdResult           :: !(Maybe GooglePrivacyDlpV2Result)
    , _gpdvidsdRequestedOptions :: !(Maybe GooglePrivacyDlpV2RequestedOptions)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2InspectDataSourceDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvidsdResult'
--
-- * 'gpdvidsdRequestedOptions'
googlePrivacyDlpV2InspectDataSourceDetails
    :: GooglePrivacyDlpV2InspectDataSourceDetails
googlePrivacyDlpV2InspectDataSourceDetails =
  GooglePrivacyDlpV2InspectDataSourceDetails'
    {_gpdvidsdResult = Nothing, _gpdvidsdRequestedOptions = Nothing}

-- | A summary of the outcome of this inspect job.
gpdvidsdResult :: Lens' GooglePrivacyDlpV2InspectDataSourceDetails (Maybe GooglePrivacyDlpV2Result)
gpdvidsdResult
  = lens _gpdvidsdResult
      (\ s a -> s{_gpdvidsdResult = a})

-- | The configuration used for this job.
gpdvidsdRequestedOptions :: Lens' GooglePrivacyDlpV2InspectDataSourceDetails (Maybe GooglePrivacyDlpV2RequestedOptions)
gpdvidsdRequestedOptions
  = lens _gpdvidsdRequestedOptions
      (\ s a -> s{_gpdvidsdRequestedOptions = a})

instance FromJSON
           GooglePrivacyDlpV2InspectDataSourceDetails
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2InspectDataSourceDetails"
              (\ o ->
                 GooglePrivacyDlpV2InspectDataSourceDetails' <$>
                   (o .:? "result") <*> (o .:? "requestedOptions"))

instance ToJSON
           GooglePrivacyDlpV2InspectDataSourceDetails
         where
        toJSON
          GooglePrivacyDlpV2InspectDataSourceDetails'{..}
          = object
              (catMaybes
                 [("result" .=) <$> _gpdvidsdResult,
                  ("requestedOptions" .=) <$>
                    _gpdvidsdRequestedOptions])

-- | Results of redacting an image.
--
-- /See:/ 'googlePrivacyDlpV2RedactImageResponse' smart constructor.
data GooglePrivacyDlpV2RedactImageResponse =
  GooglePrivacyDlpV2RedactImageResponse'
    { _gpdvrirExtractedText :: !(Maybe Text)
    , _gpdvrirInspectResult :: !(Maybe GooglePrivacyDlpV2InspectResult)
    , _gpdvrirRedactedImage :: !(Maybe Bytes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2RedactImageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvrirExtractedText'
--
-- * 'gpdvrirInspectResult'
--
-- * 'gpdvrirRedactedImage'
googlePrivacyDlpV2RedactImageResponse
    :: GooglePrivacyDlpV2RedactImageResponse
googlePrivacyDlpV2RedactImageResponse =
  GooglePrivacyDlpV2RedactImageResponse'
    { _gpdvrirExtractedText = Nothing
    , _gpdvrirInspectResult = Nothing
    , _gpdvrirRedactedImage = Nothing
    }

-- | If an image was being inspected and the InspectConfig\'s include_quote
-- was set to true, then this field will include all text, if any, that was
-- found in the image.
gpdvrirExtractedText :: Lens' GooglePrivacyDlpV2RedactImageResponse (Maybe Text)
gpdvrirExtractedText
  = lens _gpdvrirExtractedText
      (\ s a -> s{_gpdvrirExtractedText = a})

-- | The findings. Populated when include_findings in the request is true.
gpdvrirInspectResult :: Lens' GooglePrivacyDlpV2RedactImageResponse (Maybe GooglePrivacyDlpV2InspectResult)
gpdvrirInspectResult
  = lens _gpdvrirInspectResult
      (\ s a -> s{_gpdvrirInspectResult = a})

-- | The redacted image. The type will be the same as the original image.
gpdvrirRedactedImage :: Lens' GooglePrivacyDlpV2RedactImageResponse (Maybe ByteString)
gpdvrirRedactedImage
  = lens _gpdvrirRedactedImage
      (\ s a -> s{_gpdvrirRedactedImage = a})
      . mapping _Bytes

instance FromJSON
           GooglePrivacyDlpV2RedactImageResponse
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2RedactImageResponse"
              (\ o ->
                 GooglePrivacyDlpV2RedactImageResponse' <$>
                   (o .:? "extractedText") <*> (o .:? "inspectResult")
                     <*> (o .:? "redactedImage"))

instance ToJSON GooglePrivacyDlpV2RedactImageResponse
         where
        toJSON GooglePrivacyDlpV2RedactImageResponse'{..}
          = object
              (catMaybes
                 [("extractedText" .=) <$> _gpdvrirExtractedText,
                  ("inspectResult" .=) <$> _gpdvrirInspectResult,
                  ("redactedImage" .=) <$> _gpdvrirRedactedImage])

-- | Publish the results of a DlpJob to a pub sub channel. Compatible with:
-- Inspect, Risk
--
-- /See:/ 'googlePrivacyDlpV2PublishToPubSub' smart constructor.
newtype GooglePrivacyDlpV2PublishToPubSub =
  GooglePrivacyDlpV2PublishToPubSub'
    { _gpdvptpsTopic :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2PublishToPubSub' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvptpsTopic'
googlePrivacyDlpV2PublishToPubSub
    :: GooglePrivacyDlpV2PublishToPubSub
googlePrivacyDlpV2PublishToPubSub =
  GooglePrivacyDlpV2PublishToPubSub' {_gpdvptpsTopic = Nothing}

-- | Cloud Pub\/Sub topic to send notifications to. The topic must have given
-- publishing access rights to the DLP API service account executing the
-- long running DlpJob sending the notifications. Format is
-- projects\/{project}\/topics\/{topic}.
gpdvptpsTopic :: Lens' GooglePrivacyDlpV2PublishToPubSub (Maybe Text)
gpdvptpsTopic
  = lens _gpdvptpsTopic
      (\ s a -> s{_gpdvptpsTopic = a})

instance FromJSON GooglePrivacyDlpV2PublishToPubSub
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2PublishToPubSub"
              (\ o ->
                 GooglePrivacyDlpV2PublishToPubSub' <$>
                   (o .:? "topic"))

instance ToJSON GooglePrivacyDlpV2PublishToPubSub
         where
        toJSON GooglePrivacyDlpV2PublishToPubSub'{..}
          = object
              (catMaybes [("topic" .=) <$> _gpdvptpsTopic])

-- | Row key for identifying a record in BigQuery table.
--
-- /See:/ 'googlePrivacyDlpV2BigQueryKey' smart constructor.
data GooglePrivacyDlpV2BigQueryKey =
  GooglePrivacyDlpV2BigQueryKey'
    { _gpdvbqkTableReference :: !(Maybe GooglePrivacyDlpV2BigQueryTable)
    , _gpdvbqkRowNumber      :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2BigQueryKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvbqkTableReference'
--
-- * 'gpdvbqkRowNumber'
googlePrivacyDlpV2BigQueryKey
    :: GooglePrivacyDlpV2BigQueryKey
googlePrivacyDlpV2BigQueryKey =
  GooglePrivacyDlpV2BigQueryKey'
    {_gpdvbqkTableReference = Nothing, _gpdvbqkRowNumber = Nothing}

-- | Complete BigQuery table reference.
gpdvbqkTableReference :: Lens' GooglePrivacyDlpV2BigQueryKey (Maybe GooglePrivacyDlpV2BigQueryTable)
gpdvbqkTableReference
  = lens _gpdvbqkTableReference
      (\ s a -> s{_gpdvbqkTableReference = a})

-- | Absolute number of the row from the beginning of the table at the time
-- of scanning.
gpdvbqkRowNumber :: Lens' GooglePrivacyDlpV2BigQueryKey (Maybe Int64)
gpdvbqkRowNumber
  = lens _gpdvbqkRowNumber
      (\ s a -> s{_gpdvbqkRowNumber = a})
      . mapping _Coerce

instance FromJSON GooglePrivacyDlpV2BigQueryKey where
        parseJSON
          = withObject "GooglePrivacyDlpV2BigQueryKey"
              (\ o ->
                 GooglePrivacyDlpV2BigQueryKey' <$>
                   (o .:? "tableReference") <*> (o .:? "rowNumber"))

instance ToJSON GooglePrivacyDlpV2BigQueryKey where
        toJSON GooglePrivacyDlpV2BigQueryKey'{..}
          = object
              (catMaybes
                 [("tableReference" .=) <$> _gpdvbqkTableReference,
                  ("rowNumber" .=) <$> _gpdvbqkRowNumber])

-- | Rule for modifying a CustomInfoType to alter behavior under certain
-- circumstances, depending on the specific details of the rule. Not
-- supported for the \`surrogate_type\` custom info type.
--
-- /See:/ 'googlePrivacyDlpV2DetectionRule' smart constructor.
newtype GooglePrivacyDlpV2DetectionRule =
  GooglePrivacyDlpV2DetectionRule'
    { _gpdvdrHotwordRule :: Maybe GooglePrivacyDlpV2HotwordRule
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DetectionRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvdrHotwordRule'
googlePrivacyDlpV2DetectionRule
    :: GooglePrivacyDlpV2DetectionRule
googlePrivacyDlpV2DetectionRule =
  GooglePrivacyDlpV2DetectionRule' {_gpdvdrHotwordRule = Nothing}

-- | Hotword-based detection rule.
gpdvdrHotwordRule :: Lens' GooglePrivacyDlpV2DetectionRule (Maybe GooglePrivacyDlpV2HotwordRule)
gpdvdrHotwordRule
  = lens _gpdvdrHotwordRule
      (\ s a -> s{_gpdvdrHotwordRule = a})

instance FromJSON GooglePrivacyDlpV2DetectionRule
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2DetectionRule"
              (\ o ->
                 GooglePrivacyDlpV2DetectionRule' <$>
                   (o .:? "hotwordRule"))

instance ToJSON GooglePrivacyDlpV2DetectionRule where
        toJSON GooglePrivacyDlpV2DetectionRule'{..}
          = object
              (catMaybes
                 [("hotwordRule" .=) <$> _gpdvdrHotwordRule])

-- | A condition for determining whether a transformation should be applied
-- to a field.
--
-- /See:/ 'googlePrivacyDlpV2RecordCondition' smart constructor.
newtype GooglePrivacyDlpV2RecordCondition =
  GooglePrivacyDlpV2RecordCondition'
    { _gpdvrcExpressions :: Maybe GooglePrivacyDlpV2Expressions
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2RecordCondition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvrcExpressions'
googlePrivacyDlpV2RecordCondition
    :: GooglePrivacyDlpV2RecordCondition
googlePrivacyDlpV2RecordCondition =
  GooglePrivacyDlpV2RecordCondition' {_gpdvrcExpressions = Nothing}

-- | An expression.
gpdvrcExpressions :: Lens' GooglePrivacyDlpV2RecordCondition (Maybe GooglePrivacyDlpV2Expressions)
gpdvrcExpressions
  = lens _gpdvrcExpressions
      (\ s a -> s{_gpdvrcExpressions = a})

instance FromJSON GooglePrivacyDlpV2RecordCondition
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2RecordCondition"
              (\ o ->
                 GooglePrivacyDlpV2RecordCondition' <$>
                   (o .:? "expressions"))

instance ToJSON GooglePrivacyDlpV2RecordCondition
         where
        toJSON GooglePrivacyDlpV2RecordCondition'{..}
          = object
              (catMaybes
                 [("expressions" .=) <$> _gpdvrcExpressions])

-- | Shifts dates by random number of days, with option to be consistent for
-- the same context. See
-- https:\/\/cloud.google.com\/dlp\/docs\/concepts-date-shifting to learn
-- more.
--
-- /See:/ 'googlePrivacyDlpV2DateShiftConfig' smart constructor.
data GooglePrivacyDlpV2DateShiftConfig =
  GooglePrivacyDlpV2DateShiftConfig'
    { _gpdvdscContext        :: !(Maybe GooglePrivacyDlpV2FieldId)
    , _gpdvdscUpperBoundDays :: !(Maybe (Textual Int32))
    , _gpdvdscCryptoKey      :: !(Maybe GooglePrivacyDlpV2CryptoKey)
    , _gpdvdscLowerBoundDays :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DateShiftConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvdscContext'
--
-- * 'gpdvdscUpperBoundDays'
--
-- * 'gpdvdscCryptoKey'
--
-- * 'gpdvdscLowerBoundDays'
googlePrivacyDlpV2DateShiftConfig
    :: GooglePrivacyDlpV2DateShiftConfig
googlePrivacyDlpV2DateShiftConfig =
  GooglePrivacyDlpV2DateShiftConfig'
    { _gpdvdscContext = Nothing
    , _gpdvdscUpperBoundDays = Nothing
    , _gpdvdscCryptoKey = Nothing
    , _gpdvdscLowerBoundDays = Nothing
    }

-- | Points to the field that contains the context, for example, an entity
-- id. If set, must also set method. If set, shift will be consistent for
-- the given context.
gpdvdscContext :: Lens' GooglePrivacyDlpV2DateShiftConfig (Maybe GooglePrivacyDlpV2FieldId)
gpdvdscContext
  = lens _gpdvdscContext
      (\ s a -> s{_gpdvdscContext = a})

-- | Range of shift in days. Actual shift will be selected at random within
-- this range (inclusive ends). Negative means shift to earlier in time.
-- Must not be more than 365250 days (1000 years) each direction. For
-- example, 3 means shift date to at most 3 days into the future.
-- [Required]
gpdvdscUpperBoundDays :: Lens' GooglePrivacyDlpV2DateShiftConfig (Maybe Int32)
gpdvdscUpperBoundDays
  = lens _gpdvdscUpperBoundDays
      (\ s a -> s{_gpdvdscUpperBoundDays = a})
      . mapping _Coerce

-- | Causes the shift to be computed based on this key and the context. This
-- results in the same shift for the same context and crypto_key.
gpdvdscCryptoKey :: Lens' GooglePrivacyDlpV2DateShiftConfig (Maybe GooglePrivacyDlpV2CryptoKey)
gpdvdscCryptoKey
  = lens _gpdvdscCryptoKey
      (\ s a -> s{_gpdvdscCryptoKey = a})

-- | For example, -5 means shift date to at most 5 days back in the past.
-- [Required]
gpdvdscLowerBoundDays :: Lens' GooglePrivacyDlpV2DateShiftConfig (Maybe Int32)
gpdvdscLowerBoundDays
  = lens _gpdvdscLowerBoundDays
      (\ s a -> s{_gpdvdscLowerBoundDays = a})
      . mapping _Coerce

instance FromJSON GooglePrivacyDlpV2DateShiftConfig
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2DateShiftConfig"
              (\ o ->
                 GooglePrivacyDlpV2DateShiftConfig' <$>
                   (o .:? "context") <*> (o .:? "upperBoundDays") <*>
                     (o .:? "cryptoKey")
                     <*> (o .:? "lowerBoundDays"))

instance ToJSON GooglePrivacyDlpV2DateShiftConfig
         where
        toJSON GooglePrivacyDlpV2DateShiftConfig'{..}
          = object
              (catMaybes
                 [("context" .=) <$> _gpdvdscContext,
                  ("upperBoundDays" .=) <$> _gpdvdscUpperBoundDays,
                  ("cryptoKey" .=) <$> _gpdvdscCryptoKey,
                  ("lowerBoundDays" .=) <$> _gpdvdscLowerBoundDays])

-- | Request to search for potentially sensitive info in a ContentItem.
--
-- /See:/ 'googlePrivacyDlpV2InspectContentRequest' smart constructor.
data GooglePrivacyDlpV2InspectContentRequest =
  GooglePrivacyDlpV2InspectContentRequest'
    { _gpdvicrInspectConfig       :: !(Maybe GooglePrivacyDlpV2InspectConfig)
    , _gpdvicrItem                :: !(Maybe GooglePrivacyDlpV2ContentItem)
    , _gpdvicrInspectTemplateName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2InspectContentRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvicrInspectConfig'
--
-- * 'gpdvicrItem'
--
-- * 'gpdvicrInspectTemplateName'
googlePrivacyDlpV2InspectContentRequest
    :: GooglePrivacyDlpV2InspectContentRequest
googlePrivacyDlpV2InspectContentRequest =
  GooglePrivacyDlpV2InspectContentRequest'
    { _gpdvicrInspectConfig = Nothing
    , _gpdvicrItem = Nothing
    , _gpdvicrInspectTemplateName = Nothing
    }

-- | Configuration for the inspector. What specified here will override the
-- template referenced by the inspect_template_name argument.
gpdvicrInspectConfig :: Lens' GooglePrivacyDlpV2InspectContentRequest (Maybe GooglePrivacyDlpV2InspectConfig)
gpdvicrInspectConfig
  = lens _gpdvicrInspectConfig
      (\ s a -> s{_gpdvicrInspectConfig = a})

-- | The item to inspect.
gpdvicrItem :: Lens' GooglePrivacyDlpV2InspectContentRequest (Maybe GooglePrivacyDlpV2ContentItem)
gpdvicrItem
  = lens _gpdvicrItem (\ s a -> s{_gpdvicrItem = a})

-- | Optional template to use. Any configuration directly specified in
-- inspect_config will override those set in the template. Singular fields
-- that are set in this request will replace their corresponding fields in
-- the template. Repeated fields are appended. Singular sub-messages and
-- groups are recursively merged.
gpdvicrInspectTemplateName :: Lens' GooglePrivacyDlpV2InspectContentRequest (Maybe Text)
gpdvicrInspectTemplateName
  = lens _gpdvicrInspectTemplateName
      (\ s a -> s{_gpdvicrInspectTemplateName = a})

instance FromJSON
           GooglePrivacyDlpV2InspectContentRequest
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2InspectContentRequest"
              (\ o ->
                 GooglePrivacyDlpV2InspectContentRequest' <$>
                   (o .:? "inspectConfig") <*> (o .:? "item") <*>
                     (o .:? "inspectTemplateName"))

instance ToJSON
           GooglePrivacyDlpV2InspectContentRequest
         where
        toJSON GooglePrivacyDlpV2InspectContentRequest'{..}
          = object
              (catMaybes
                 [("inspectConfig" .=) <$> _gpdvicrInspectConfig,
                  ("item" .=) <$> _gpdvicrItem,
                  ("inspectTemplateName" .=) <$>
                    _gpdvicrInspectTemplateName])

-- | Result of the categorical stats computation.
--
-- /See:/ 'googlePrivacyDlpV2CategoricalStatsResult' smart constructor.
newtype GooglePrivacyDlpV2CategoricalStatsResult =
  GooglePrivacyDlpV2CategoricalStatsResult'
    { _gpdvcsrValueFrequencyHistogramBuckets :: Maybe [GooglePrivacyDlpV2CategoricalStatsHistogramBucket]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CategoricalStatsResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvcsrValueFrequencyHistogramBuckets'
googlePrivacyDlpV2CategoricalStatsResult
    :: GooglePrivacyDlpV2CategoricalStatsResult
googlePrivacyDlpV2CategoricalStatsResult =
  GooglePrivacyDlpV2CategoricalStatsResult'
    {_gpdvcsrValueFrequencyHistogramBuckets = Nothing}

-- | Histogram of value frequencies in the column.
gpdvcsrValueFrequencyHistogramBuckets :: Lens' GooglePrivacyDlpV2CategoricalStatsResult [GooglePrivacyDlpV2CategoricalStatsHistogramBucket]
gpdvcsrValueFrequencyHistogramBuckets
  = lens _gpdvcsrValueFrequencyHistogramBuckets
      (\ s a ->
         s{_gpdvcsrValueFrequencyHistogramBuckets = a})
      . _Default
      . _Coerce

instance FromJSON
           GooglePrivacyDlpV2CategoricalStatsResult
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2CategoricalStatsResult"
              (\ o ->
                 GooglePrivacyDlpV2CategoricalStatsResult' <$>
                   (o .:? "valueFrequencyHistogramBuckets" .!= mempty))

instance ToJSON
           GooglePrivacyDlpV2CategoricalStatsResult
         where
        toJSON GooglePrivacyDlpV2CategoricalStatsResult'{..}
          = object
              (catMaybes
                 [("valueFrequencyHistogramBuckets" .=) <$>
                    _gpdvcsrValueFrequencyHistogramBuckets])

-- | Result of the numerical stats computation.
--
-- /See:/ 'googlePrivacyDlpV2NumericalStatsResult' smart constructor.
data GooglePrivacyDlpV2NumericalStatsResult =
  GooglePrivacyDlpV2NumericalStatsResult'
    { _gpdvnsrMaxValue       :: !(Maybe GooglePrivacyDlpV2Value)
    , _gpdvnsrQuantileValues :: !(Maybe [GooglePrivacyDlpV2Value])
    , _gpdvnsrMinValue       :: !(Maybe GooglePrivacyDlpV2Value)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2NumericalStatsResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvnsrMaxValue'
--
-- * 'gpdvnsrQuantileValues'
--
-- * 'gpdvnsrMinValue'
googlePrivacyDlpV2NumericalStatsResult
    :: GooglePrivacyDlpV2NumericalStatsResult
googlePrivacyDlpV2NumericalStatsResult =
  GooglePrivacyDlpV2NumericalStatsResult'
    { _gpdvnsrMaxValue = Nothing
    , _gpdvnsrQuantileValues = Nothing
    , _gpdvnsrMinValue = Nothing
    }

-- | Maximum value appearing in the column.
gpdvnsrMaxValue :: Lens' GooglePrivacyDlpV2NumericalStatsResult (Maybe GooglePrivacyDlpV2Value)
gpdvnsrMaxValue
  = lens _gpdvnsrMaxValue
      (\ s a -> s{_gpdvnsrMaxValue = a})

-- | List of 99 values that partition the set of field values into 100 equal
-- sized buckets.
gpdvnsrQuantileValues :: Lens' GooglePrivacyDlpV2NumericalStatsResult [GooglePrivacyDlpV2Value]
gpdvnsrQuantileValues
  = lens _gpdvnsrQuantileValues
      (\ s a -> s{_gpdvnsrQuantileValues = a})
      . _Default
      . _Coerce

-- | Minimum value appearing in the column.
gpdvnsrMinValue :: Lens' GooglePrivacyDlpV2NumericalStatsResult (Maybe GooglePrivacyDlpV2Value)
gpdvnsrMinValue
  = lens _gpdvnsrMinValue
      (\ s a -> s{_gpdvnsrMinValue = a})

instance FromJSON
           GooglePrivacyDlpV2NumericalStatsResult
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2NumericalStatsResult"
              (\ o ->
                 GooglePrivacyDlpV2NumericalStatsResult' <$>
                   (o .:? "maxValue") <*>
                     (o .:? "quantileValues" .!= mempty)
                     <*> (o .:? "minValue"))

instance ToJSON
           GooglePrivacyDlpV2NumericalStatsResult
         where
        toJSON GooglePrivacyDlpV2NumericalStatsResult'{..}
          = object
              (catMaybes
                 [("maxValue" .=) <$> _gpdvnsrMaxValue,
                  ("quantileValues" .=) <$> _gpdvnsrQuantileValues,
                  ("minValue" .=) <$> _gpdvnsrMinValue])

-- | Publish the result summary of a DlpJob to the Cloud Security Command
-- Center (CSCC Alpha). This action is only available for projects which
-- are parts of an organization and whitelisted for the alpha Cloud
-- Security Command Center. The action will publish count of finding
-- instances and their info types. The summary of findings will be
-- persisted in CSCC and are governed by CSCC service-specific policy, see
-- https:\/\/cloud.google.com\/terms\/service-terms Only a single instance
-- of this action can be specified. Compatible with: Inspect
--
-- /See:/ 'googlePrivacyDlpV2PublishSummaryToCscc' smart constructor.
data GooglePrivacyDlpV2PublishSummaryToCscc =
  GooglePrivacyDlpV2PublishSummaryToCscc'
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2PublishSummaryToCscc' with the minimum fields required to make a request.
--
googlePrivacyDlpV2PublishSummaryToCscc
    :: GooglePrivacyDlpV2PublishSummaryToCscc
googlePrivacyDlpV2PublishSummaryToCscc = GooglePrivacyDlpV2PublishSummaryToCscc'

instance FromJSON
           GooglePrivacyDlpV2PublishSummaryToCscc
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2PublishSummaryToCscc"
              (\ o -> pure GooglePrivacyDlpV2PublishSummaryToCscc')

instance ToJSON
           GooglePrivacyDlpV2PublishSummaryToCscc
         where
        toJSON = const emptyObject

-- | Request message for UpdateInspectTemplate.
--
-- /See:/ 'googlePrivacyDlpV2UpdateInspectTemplateRequest' smart constructor.
data GooglePrivacyDlpV2UpdateInspectTemplateRequest =
  GooglePrivacyDlpV2UpdateInspectTemplateRequest'
    { _gpdvuitrUpdateMask      :: !(Maybe GFieldMask)
    , _gpdvuitrInspectTemplate :: !(Maybe GooglePrivacyDlpV2InspectTemplate)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2UpdateInspectTemplateRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvuitrUpdateMask'
--
-- * 'gpdvuitrInspectTemplate'
googlePrivacyDlpV2UpdateInspectTemplateRequest
    :: GooglePrivacyDlpV2UpdateInspectTemplateRequest
googlePrivacyDlpV2UpdateInspectTemplateRequest =
  GooglePrivacyDlpV2UpdateInspectTemplateRequest'
    {_gpdvuitrUpdateMask = Nothing, _gpdvuitrInspectTemplate = Nothing}

-- | Mask to control which fields get updated.
gpdvuitrUpdateMask :: Lens' GooglePrivacyDlpV2UpdateInspectTemplateRequest (Maybe GFieldMask)
gpdvuitrUpdateMask
  = lens _gpdvuitrUpdateMask
      (\ s a -> s{_gpdvuitrUpdateMask = a})

-- | New InspectTemplate value.
gpdvuitrInspectTemplate :: Lens' GooglePrivacyDlpV2UpdateInspectTemplateRequest (Maybe GooglePrivacyDlpV2InspectTemplate)
gpdvuitrInspectTemplate
  = lens _gpdvuitrInspectTemplate
      (\ s a -> s{_gpdvuitrInspectTemplate = a})

instance FromJSON
           GooglePrivacyDlpV2UpdateInspectTemplateRequest
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2UpdateInspectTemplateRequest"
              (\ o ->
                 GooglePrivacyDlpV2UpdateInspectTemplateRequest' <$>
                   (o .:? "updateMask") <*> (o .:? "inspectTemplate"))

instance ToJSON
           GooglePrivacyDlpV2UpdateInspectTemplateRequest
         where
        toJSON
          GooglePrivacyDlpV2UpdateInspectTemplateRequest'{..}
          = object
              (catMaybes
                 [("updateMask" .=) <$> _gpdvuitrUpdateMask,
                  ("inspectTemplate" .=) <$> _gpdvuitrInspectTemplate])

-- | An entity in a dataset is a field or set of fields that correspond to a
-- single person. For example, in medical records the \`EntityId\` might be
-- a patient identifier, or for financial records it might be an account
-- identifier. This message is used when generalizations or analysis must
-- take into account that multiple rows correspond to the same entity.
--
-- /See:/ 'googlePrivacyDlpV2EntityId' smart constructor.
newtype GooglePrivacyDlpV2EntityId =
  GooglePrivacyDlpV2EntityId'
    { _gpdveiField :: Maybe GooglePrivacyDlpV2FieldId
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2EntityId' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdveiField'
googlePrivacyDlpV2EntityId
    :: GooglePrivacyDlpV2EntityId
googlePrivacyDlpV2EntityId =
  GooglePrivacyDlpV2EntityId' {_gpdveiField = Nothing}

-- | Composite key indicating which field contains the entity identifier.
gpdveiField :: Lens' GooglePrivacyDlpV2EntityId (Maybe GooglePrivacyDlpV2FieldId)
gpdveiField
  = lens _gpdveiField (\ s a -> s{_gpdveiField = a})

instance FromJSON GooglePrivacyDlpV2EntityId where
        parseJSON
          = withObject "GooglePrivacyDlpV2EntityId"
              (\ o ->
                 GooglePrivacyDlpV2EntityId' <$> (o .:? "field"))

instance ToJSON GooglePrivacyDlpV2EntityId where
        toJSON GooglePrivacyDlpV2EntityId'{..}
          = object (catMaybes [("field" .=) <$> _gpdveiField])

-- | Container for bytes to inspect or redact.
--
-- /See:/ 'googlePrivacyDlpV2ByteContentItem' smart constructor.
data GooglePrivacyDlpV2ByteContentItem =
  GooglePrivacyDlpV2ByteContentItem'
    { _gpdvbciData :: !(Maybe Bytes)
    , _gpdvbciType :: !(Maybe GooglePrivacyDlpV2ByteContentItemType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ByteContentItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvbciData'
--
-- * 'gpdvbciType'
googlePrivacyDlpV2ByteContentItem
    :: GooglePrivacyDlpV2ByteContentItem
googlePrivacyDlpV2ByteContentItem =
  GooglePrivacyDlpV2ByteContentItem'
    {_gpdvbciData = Nothing, _gpdvbciType = Nothing}

-- | Content data to inspect or redact.
gpdvbciData :: Lens' GooglePrivacyDlpV2ByteContentItem (Maybe ByteString)
gpdvbciData
  = lens _gpdvbciData (\ s a -> s{_gpdvbciData = a}) .
      mapping _Bytes

-- | The type of data stored in the bytes string. Default will be TEXT_UTF8.
gpdvbciType :: Lens' GooglePrivacyDlpV2ByteContentItem (Maybe GooglePrivacyDlpV2ByteContentItemType)
gpdvbciType
  = lens _gpdvbciType (\ s a -> s{_gpdvbciType = a})

instance FromJSON GooglePrivacyDlpV2ByteContentItem
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2ByteContentItem"
              (\ o ->
                 GooglePrivacyDlpV2ByteContentItem' <$>
                   (o .:? "data") <*> (o .:? "type"))

instance ToJSON GooglePrivacyDlpV2ByteContentItem
         where
        toJSON GooglePrivacyDlpV2ByteContentItem'{..}
          = object
              (catMaybes
                 [("data" .=) <$> _gpdvbciData,
                  ("type" .=) <$> _gpdvbciType])

--
-- /See:/ 'googlePrivacyDlpV2TaggedField' smart constructor.
data GooglePrivacyDlpV2TaggedField =
  GooglePrivacyDlpV2TaggedField'
    { _gpdvtfField     :: !(Maybe GooglePrivacyDlpV2FieldId)
    , _gpdvtfInfoType  :: !(Maybe GooglePrivacyDlpV2InfoType)
    , _gpdvtfInferred  :: !(Maybe GoogleProtobufEmpty)
    , _gpdvtfCustomTag :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2TaggedField' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvtfField'
--
-- * 'gpdvtfInfoType'
--
-- * 'gpdvtfInferred'
--
-- * 'gpdvtfCustomTag'
googlePrivacyDlpV2TaggedField
    :: GooglePrivacyDlpV2TaggedField
googlePrivacyDlpV2TaggedField =
  GooglePrivacyDlpV2TaggedField'
    { _gpdvtfField = Nothing
    , _gpdvtfInfoType = Nothing
    , _gpdvtfInferred = Nothing
    , _gpdvtfCustomTag = Nothing
    }

-- | Identifies the column. [required]
gpdvtfField :: Lens' GooglePrivacyDlpV2TaggedField (Maybe GooglePrivacyDlpV2FieldId)
gpdvtfField
  = lens _gpdvtfField (\ s a -> s{_gpdvtfField = a})

-- | A column can be tagged with a InfoType to use the relevant public
-- dataset as a statistical model of population, if available. We currently
-- support US ZIP codes, region codes, ages and genders. To
-- programmatically obtain the list of supported InfoTypes, use
-- ListInfoTypes with the supported_by=RISK_ANALYSIS filter.
gpdvtfInfoType :: Lens' GooglePrivacyDlpV2TaggedField (Maybe GooglePrivacyDlpV2InfoType)
gpdvtfInfoType
  = lens _gpdvtfInfoType
      (\ s a -> s{_gpdvtfInfoType = a})

-- | If no semantic tag is indicated, we infer the statistical model from the
-- distribution of values in the input data
gpdvtfInferred :: Lens' GooglePrivacyDlpV2TaggedField (Maybe GoogleProtobufEmpty)
gpdvtfInferred
  = lens _gpdvtfInferred
      (\ s a -> s{_gpdvtfInferred = a})

-- | A column can be tagged with a custom tag. In this case, the user must
-- indicate an auxiliary table that contains statistical information on the
-- possible values of this column (below).
gpdvtfCustomTag :: Lens' GooglePrivacyDlpV2TaggedField (Maybe Text)
gpdvtfCustomTag
  = lens _gpdvtfCustomTag
      (\ s a -> s{_gpdvtfCustomTag = a})

instance FromJSON GooglePrivacyDlpV2TaggedField where
        parseJSON
          = withObject "GooglePrivacyDlpV2TaggedField"
              (\ o ->
                 GooglePrivacyDlpV2TaggedField' <$>
                   (o .:? "field") <*> (o .:? "infoType") <*>
                     (o .:? "inferred")
                     <*> (o .:? "customTag"))

instance ToJSON GooglePrivacyDlpV2TaggedField where
        toJSON GooglePrivacyDlpV2TaggedField'{..}
          = object
              (catMaybes
                 [("field" .=) <$> _gpdvtfField,
                  ("infoType" .=) <$> _gpdvtfInfoType,
                  ("inferred" .=) <$> _gpdvtfInferred,
                  ("customTag" .=) <$> _gpdvtfCustomTag])

-- | Options defining BigQuery table and row identifiers.
--
-- /See:/ 'googlePrivacyDlpV2BigQueryOptions' smart constructor.
data GooglePrivacyDlpV2BigQueryOptions =
  GooglePrivacyDlpV2BigQueryOptions'
    { _gpdvbqoRowsLimit         :: !(Maybe (Textual Int64))
    , _gpdvbqoRowsLimitPercent  :: !(Maybe (Textual Int32))
    , _gpdvbqoTableReference    :: !(Maybe GooglePrivacyDlpV2BigQueryTable)
    , _gpdvbqoIdentifyingFields :: !(Maybe [GooglePrivacyDlpV2FieldId])
    , _gpdvbqoExcludedFields    :: !(Maybe [GooglePrivacyDlpV2FieldId])
    , _gpdvbqoSampleMethod      :: !(Maybe GooglePrivacyDlpV2BigQueryOptionsSampleMethod)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2BigQueryOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvbqoRowsLimit'
--
-- * 'gpdvbqoRowsLimitPercent'
--
-- * 'gpdvbqoTableReference'
--
-- * 'gpdvbqoIdentifyingFields'
--
-- * 'gpdvbqoExcludedFields'
--
-- * 'gpdvbqoSampleMethod'
googlePrivacyDlpV2BigQueryOptions
    :: GooglePrivacyDlpV2BigQueryOptions
googlePrivacyDlpV2BigQueryOptions =
  GooglePrivacyDlpV2BigQueryOptions'
    { _gpdvbqoRowsLimit = Nothing
    , _gpdvbqoRowsLimitPercent = Nothing
    , _gpdvbqoTableReference = Nothing
    , _gpdvbqoIdentifyingFields = Nothing
    , _gpdvbqoExcludedFields = Nothing
    , _gpdvbqoSampleMethod = Nothing
    }

-- | Max number of rows to scan. If the table has more rows than this value,
-- the rest of the rows are omitted. If not set, or if set to 0, all rows
-- will be scanned. Only one of rows_limit and rows_limit_percent can be
-- specified. Cannot be used in conjunction with TimespanConfig.
gpdvbqoRowsLimit :: Lens' GooglePrivacyDlpV2BigQueryOptions (Maybe Int64)
gpdvbqoRowsLimit
  = lens _gpdvbqoRowsLimit
      (\ s a -> s{_gpdvbqoRowsLimit = a})
      . mapping _Coerce

-- | Max percentage of rows to scan. The rest are omitted. The number of rows
-- scanned is rounded down. Must be between 0 and 100, inclusively. Both 0
-- and 100 means no limit. Defaults to 0. Only one of rows_limit and
-- rows_limit_percent can be specified. Cannot be used in conjunction with
-- TimespanConfig.
gpdvbqoRowsLimitPercent :: Lens' GooglePrivacyDlpV2BigQueryOptions (Maybe Int32)
gpdvbqoRowsLimitPercent
  = lens _gpdvbqoRowsLimitPercent
      (\ s a -> s{_gpdvbqoRowsLimitPercent = a})
      . mapping _Coerce

-- | Complete BigQuery table reference.
gpdvbqoTableReference :: Lens' GooglePrivacyDlpV2BigQueryOptions (Maybe GooglePrivacyDlpV2BigQueryTable)
gpdvbqoTableReference
  = lens _gpdvbqoTableReference
      (\ s a -> s{_gpdvbqoTableReference = a})

-- | References to fields uniquely identifying rows within the table. Nested
-- fields in the format, like \`person.birthdate.year\`, are allowed.
gpdvbqoIdentifyingFields :: Lens' GooglePrivacyDlpV2BigQueryOptions [GooglePrivacyDlpV2FieldId]
gpdvbqoIdentifyingFields
  = lens _gpdvbqoIdentifyingFields
      (\ s a -> s{_gpdvbqoIdentifyingFields = a})
      . _Default
      . _Coerce

-- | References to fields excluded from scanning. This allows you to skip
-- inspection of entire columns which you know have no findings.
gpdvbqoExcludedFields :: Lens' GooglePrivacyDlpV2BigQueryOptions [GooglePrivacyDlpV2FieldId]
gpdvbqoExcludedFields
  = lens _gpdvbqoExcludedFields
      (\ s a -> s{_gpdvbqoExcludedFields = a})
      . _Default
      . _Coerce

gpdvbqoSampleMethod :: Lens' GooglePrivacyDlpV2BigQueryOptions (Maybe GooglePrivacyDlpV2BigQueryOptionsSampleMethod)
gpdvbqoSampleMethod
  = lens _gpdvbqoSampleMethod
      (\ s a -> s{_gpdvbqoSampleMethod = a})

instance FromJSON GooglePrivacyDlpV2BigQueryOptions
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2BigQueryOptions"
              (\ o ->
                 GooglePrivacyDlpV2BigQueryOptions' <$>
                   (o .:? "rowsLimit") <*> (o .:? "rowsLimitPercent")
                     <*> (o .:? "tableReference")
                     <*> (o .:? "identifyingFields" .!= mempty)
                     <*> (o .:? "excludedFields" .!= mempty)
                     <*> (o .:? "sampleMethod"))

instance ToJSON GooglePrivacyDlpV2BigQueryOptions
         where
        toJSON GooglePrivacyDlpV2BigQueryOptions'{..}
          = object
              (catMaybes
                 [("rowsLimit" .=) <$> _gpdvbqoRowsLimit,
                  ("rowsLimitPercent" .=) <$> _gpdvbqoRowsLimitPercent,
                  ("tableReference" .=) <$> _gpdvbqoTableReference,
                  ("identifyingFields" .=) <$>
                    _gpdvbqoIdentifyingFields,
                  ("excludedFields" .=) <$> _gpdvbqoExcludedFields,
                  ("sampleMethod" .=) <$> _gpdvbqoSampleMethod])

-- | A tuple of values for the quasi-identifier columns.
--
-- /See:/ 'googlePrivacyDlpV2KMapEstimationQuasiIdValues' smart constructor.
data GooglePrivacyDlpV2KMapEstimationQuasiIdValues =
  GooglePrivacyDlpV2KMapEstimationQuasiIdValues'
    { _gpdvkmeqivEstimatedAnonymity :: !(Maybe (Textual Int64))
    , _gpdvkmeqivQuasiIdsValues     :: !(Maybe [GooglePrivacyDlpV2Value])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2KMapEstimationQuasiIdValues' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvkmeqivEstimatedAnonymity'
--
-- * 'gpdvkmeqivQuasiIdsValues'
googlePrivacyDlpV2KMapEstimationQuasiIdValues
    :: GooglePrivacyDlpV2KMapEstimationQuasiIdValues
googlePrivacyDlpV2KMapEstimationQuasiIdValues =
  GooglePrivacyDlpV2KMapEstimationQuasiIdValues'
    { _gpdvkmeqivEstimatedAnonymity = Nothing
    , _gpdvkmeqivQuasiIdsValues = Nothing
    }

-- | The estimated anonymity for these quasi-identifier values.
gpdvkmeqivEstimatedAnonymity :: Lens' GooglePrivacyDlpV2KMapEstimationQuasiIdValues (Maybe Int64)
gpdvkmeqivEstimatedAnonymity
  = lens _gpdvkmeqivEstimatedAnonymity
      (\ s a -> s{_gpdvkmeqivEstimatedAnonymity = a})
      . mapping _Coerce

-- | The quasi-identifier values.
gpdvkmeqivQuasiIdsValues :: Lens' GooglePrivacyDlpV2KMapEstimationQuasiIdValues [GooglePrivacyDlpV2Value]
gpdvkmeqivQuasiIdsValues
  = lens _gpdvkmeqivQuasiIdsValues
      (\ s a -> s{_gpdvkmeqivQuasiIdsValues = a})
      . _Default
      . _Coerce

instance FromJSON
           GooglePrivacyDlpV2KMapEstimationQuasiIdValues
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2KMapEstimationQuasiIdValues"
              (\ o ->
                 GooglePrivacyDlpV2KMapEstimationQuasiIdValues' <$>
                   (o .:? "estimatedAnonymity") <*>
                     (o .:? "quasiIdsValues" .!= mempty))

instance ToJSON
           GooglePrivacyDlpV2KMapEstimationQuasiIdValues
         where
        toJSON
          GooglePrivacyDlpV2KMapEstimationQuasiIdValues'{..}
          = object
              (catMaybes
                 [("estimatedAnonymity" .=) <$>
                    _gpdvkmeqivEstimatedAnonymity,
                  ("quasiIdsValues" .=) <$> _gpdvkmeqivQuasiIdsValues])

-- | List of exclude infoTypes.
--
-- /See:/ 'googlePrivacyDlpV2ExcludeInfoTypes' smart constructor.
newtype GooglePrivacyDlpV2ExcludeInfoTypes =
  GooglePrivacyDlpV2ExcludeInfoTypes'
    { _gpdveitInfoTypes :: Maybe [GooglePrivacyDlpV2InfoType]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ExcludeInfoTypes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdveitInfoTypes'
googlePrivacyDlpV2ExcludeInfoTypes
    :: GooglePrivacyDlpV2ExcludeInfoTypes
googlePrivacyDlpV2ExcludeInfoTypes =
  GooglePrivacyDlpV2ExcludeInfoTypes' {_gpdveitInfoTypes = Nothing}

-- | InfoType list in ExclusionRule rule drops a finding when it overlaps or
-- contained within with a finding of an infoType from this list. For
-- example, for \`InspectionRuleSet.info_types\` containing
-- \"PHONE_NUMBER\"\` and \`exclusion_rule\` containing
-- \`exclude_info_types.info_types\` with \"EMAIL_ADDRESS\" the phone
-- number findings are dropped if they overlap with EMAIL_ADDRESS finding.
-- That leads to \"555-222-2222\'example.org\" to generate only a single
-- finding, namely email address.
gpdveitInfoTypes :: Lens' GooglePrivacyDlpV2ExcludeInfoTypes [GooglePrivacyDlpV2InfoType]
gpdveitInfoTypes
  = lens _gpdveitInfoTypes
      (\ s a -> s{_gpdveitInfoTypes = a})
      . _Default
      . _Coerce

instance FromJSON GooglePrivacyDlpV2ExcludeInfoTypes
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2ExcludeInfoTypes"
              (\ o ->
                 GooglePrivacyDlpV2ExcludeInfoTypes' <$>
                   (o .:? "infoTypes" .!= mempty))

instance ToJSON GooglePrivacyDlpV2ExcludeInfoTypes
         where
        toJSON GooglePrivacyDlpV2ExcludeInfoTypes'{..}
          = object
              (catMaybes [("infoTypes" .=) <$> _gpdveitInfoTypes])

-- | Request message for CreateInspectTemplate.
--
-- /See:/ 'googlePrivacyDlpV2CreateInspectTemplateRequest' smart constructor.
data GooglePrivacyDlpV2CreateInspectTemplateRequest =
  GooglePrivacyDlpV2CreateInspectTemplateRequest'
    { _gpdvcitrTemplateId      :: !(Maybe Text)
    , _gpdvcitrInspectTemplate :: !(Maybe GooglePrivacyDlpV2InspectTemplate)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CreateInspectTemplateRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvcitrTemplateId'
--
-- * 'gpdvcitrInspectTemplate'
googlePrivacyDlpV2CreateInspectTemplateRequest
    :: GooglePrivacyDlpV2CreateInspectTemplateRequest
googlePrivacyDlpV2CreateInspectTemplateRequest =
  GooglePrivacyDlpV2CreateInspectTemplateRequest'
    {_gpdvcitrTemplateId = Nothing, _gpdvcitrInspectTemplate = Nothing}

-- | The template id can contain uppercase and lowercase letters, numbers,
-- and hyphens; that is, it must match the regular expression:
-- \`[a-zA-Z\\\\d-]+\`. The maximum length is 100 characters. Can be empty
-- to allow the system to generate one.
gpdvcitrTemplateId :: Lens' GooglePrivacyDlpV2CreateInspectTemplateRequest (Maybe Text)
gpdvcitrTemplateId
  = lens _gpdvcitrTemplateId
      (\ s a -> s{_gpdvcitrTemplateId = a})

-- | The InspectTemplate to create.
gpdvcitrInspectTemplate :: Lens' GooglePrivacyDlpV2CreateInspectTemplateRequest (Maybe GooglePrivacyDlpV2InspectTemplate)
gpdvcitrInspectTemplate
  = lens _gpdvcitrInspectTemplate
      (\ s a -> s{_gpdvcitrInspectTemplate = a})

instance FromJSON
           GooglePrivacyDlpV2CreateInspectTemplateRequest
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2CreateInspectTemplateRequest"
              (\ o ->
                 GooglePrivacyDlpV2CreateInspectTemplateRequest' <$>
                   (o .:? "templateId") <*> (o .:? "inspectTemplate"))

instance ToJSON
           GooglePrivacyDlpV2CreateInspectTemplateRequest
         where
        toJSON
          GooglePrivacyDlpV2CreateInspectTemplateRequest'{..}
          = object
              (catMaybes
                 [("templateId" .=) <$> _gpdvcitrTemplateId,
                  ("inspectTemplate" .=) <$> _gpdvcitrInspectTemplate])

-- | A (kind, ID\/name) pair used to construct a key path. If either name or
-- ID is set, the element is complete. If neither is set, the element is
-- incomplete.
--
-- /See:/ 'googlePrivacyDlpV2PathElement' smart constructor.
data GooglePrivacyDlpV2PathElement =
  GooglePrivacyDlpV2PathElement'
    { _gpdvpeKind :: !(Maybe Text)
    , _gpdvpeName :: !(Maybe Text)
    , _gpdvpeId   :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2PathElement' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvpeKind'
--
-- * 'gpdvpeName'
--
-- * 'gpdvpeId'
googlePrivacyDlpV2PathElement
    :: GooglePrivacyDlpV2PathElement
googlePrivacyDlpV2PathElement =
  GooglePrivacyDlpV2PathElement'
    {_gpdvpeKind = Nothing, _gpdvpeName = Nothing, _gpdvpeId = Nothing}

-- | The kind of the entity. A kind matching regex \`__.*__\` is
-- reserved\/read-only. A kind must not contain more than 1500 bytes when
-- UTF-8 encoded. Cannot be \`\"\"\`.
gpdvpeKind :: Lens' GooglePrivacyDlpV2PathElement (Maybe Text)
gpdvpeKind
  = lens _gpdvpeKind (\ s a -> s{_gpdvpeKind = a})

-- | The name of the entity. A name matching regex \`__.*__\` is
-- reserved\/read-only. A name must not be more than 1500 bytes when UTF-8
-- encoded. Cannot be \`\"\"\`.
gpdvpeName :: Lens' GooglePrivacyDlpV2PathElement (Maybe Text)
gpdvpeName
  = lens _gpdvpeName (\ s a -> s{_gpdvpeName = a})

-- | The auto-allocated ID of the entity. Never equal to zero. Values less
-- than zero are discouraged and may not be supported in the future.
gpdvpeId :: Lens' GooglePrivacyDlpV2PathElement (Maybe Int64)
gpdvpeId
  = lens _gpdvpeId (\ s a -> s{_gpdvpeId = a}) .
      mapping _Coerce

instance FromJSON GooglePrivacyDlpV2PathElement where
        parseJSON
          = withObject "GooglePrivacyDlpV2PathElement"
              (\ o ->
                 GooglePrivacyDlpV2PathElement' <$>
                   (o .:? "kind") <*> (o .:? "name") <*> (o .:? "id"))

instance ToJSON GooglePrivacyDlpV2PathElement where
        toJSON GooglePrivacyDlpV2PathElement'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _gpdvpeKind,
                  ("name" .=) <$> _gpdvpeName,
                  ("id" .=) <$> _gpdvpeId])

-- | Result of the δ-presence computation. Note that these results are an
-- estimation, not exact values.
--
-- /See:/ 'googlePrivacyDlpV2DeltaPresenceEstimationResult' smart constructor.
newtype GooglePrivacyDlpV2DeltaPresenceEstimationResult =
  GooglePrivacyDlpV2DeltaPresenceEstimationResult'
    { _gpdvdperDeltaPresenceEstimationHistogram :: Maybe [GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DeltaPresenceEstimationResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvdperDeltaPresenceEstimationHistogram'
googlePrivacyDlpV2DeltaPresenceEstimationResult
    :: GooglePrivacyDlpV2DeltaPresenceEstimationResult
googlePrivacyDlpV2DeltaPresenceEstimationResult =
  GooglePrivacyDlpV2DeltaPresenceEstimationResult'
    {_gpdvdperDeltaPresenceEstimationHistogram = Nothing}

-- | The intervals [min_probability, max_probability) do not overlap. If a
-- value doesn\'t correspond to any such interval, the associated frequency
-- is zero. For example, the following records: {min_probability: 0,
-- max_probability: 0.1, frequency: 17} {min_probability: 0.2,
-- max_probability: 0.3, frequency: 42} {min_probability: 0.3,
-- max_probability: 0.4, frequency: 99} mean that there are no record with
-- an estimated probability in [0.1, 0.2) nor larger or equal to 0.4.
gpdvdperDeltaPresenceEstimationHistogram :: Lens' GooglePrivacyDlpV2DeltaPresenceEstimationResult [GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket]
gpdvdperDeltaPresenceEstimationHistogram
  = lens _gpdvdperDeltaPresenceEstimationHistogram
      (\ s a ->
         s{_gpdvdperDeltaPresenceEstimationHistogram = a})
      . _Default
      . _Coerce

instance FromJSON
           GooglePrivacyDlpV2DeltaPresenceEstimationResult
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2DeltaPresenceEstimationResult"
              (\ o ->
                 GooglePrivacyDlpV2DeltaPresenceEstimationResult' <$>
                   (o .:? "deltaPresenceEstimationHistogram" .!=
                      mempty))

instance ToJSON
           GooglePrivacyDlpV2DeltaPresenceEstimationResult
         where
        toJSON
          GooglePrivacyDlpV2DeltaPresenceEstimationResult'{..}
          = object
              (catMaybes
                 [("deltaPresenceEstimationHistogram" .=) <$>
                    _gpdvdperDeltaPresenceEstimationHistogram])

--
-- /See:/ 'googlePrivacyDlpV2InspectJobConfig' smart constructor.
data GooglePrivacyDlpV2InspectJobConfig =
  GooglePrivacyDlpV2InspectJobConfig'
    { _gpdvijcActions             :: !(Maybe [GooglePrivacyDlpV2Action])
    , _gpdvijcStorageConfig       :: !(Maybe GooglePrivacyDlpV2StorageConfig)
    , _gpdvijcInspectConfig       :: !(Maybe GooglePrivacyDlpV2InspectConfig)
    , _gpdvijcInspectTemplateName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2InspectJobConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvijcActions'
--
-- * 'gpdvijcStorageConfig'
--
-- * 'gpdvijcInspectConfig'
--
-- * 'gpdvijcInspectTemplateName'
googlePrivacyDlpV2InspectJobConfig
    :: GooglePrivacyDlpV2InspectJobConfig
googlePrivacyDlpV2InspectJobConfig =
  GooglePrivacyDlpV2InspectJobConfig'
    { _gpdvijcActions = Nothing
    , _gpdvijcStorageConfig = Nothing
    , _gpdvijcInspectConfig = Nothing
    , _gpdvijcInspectTemplateName = Nothing
    }

-- | Actions to execute at the completion of the job. Are executed in the
-- order provided.
gpdvijcActions :: Lens' GooglePrivacyDlpV2InspectJobConfig [GooglePrivacyDlpV2Action]
gpdvijcActions
  = lens _gpdvijcActions
      (\ s a -> s{_gpdvijcActions = a})
      . _Default
      . _Coerce

-- | The data to scan.
gpdvijcStorageConfig :: Lens' GooglePrivacyDlpV2InspectJobConfig (Maybe GooglePrivacyDlpV2StorageConfig)
gpdvijcStorageConfig
  = lens _gpdvijcStorageConfig
      (\ s a -> s{_gpdvijcStorageConfig = a})

-- | How and what to scan for.
gpdvijcInspectConfig :: Lens' GooglePrivacyDlpV2InspectJobConfig (Maybe GooglePrivacyDlpV2InspectConfig)
gpdvijcInspectConfig
  = lens _gpdvijcInspectConfig
      (\ s a -> s{_gpdvijcInspectConfig = a})

-- | If provided, will be used as the default for all values in
-- InspectConfig. \`inspect_config\` will be merged into the values
-- persisted as part of the template.
gpdvijcInspectTemplateName :: Lens' GooglePrivacyDlpV2InspectJobConfig (Maybe Text)
gpdvijcInspectTemplateName
  = lens _gpdvijcInspectTemplateName
      (\ s a -> s{_gpdvijcInspectTemplateName = a})

instance FromJSON GooglePrivacyDlpV2InspectJobConfig
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2InspectJobConfig"
              (\ o ->
                 GooglePrivacyDlpV2InspectJobConfig' <$>
                   (o .:? "actions" .!= mempty) <*>
                     (o .:? "storageConfig")
                     <*> (o .:? "inspectConfig")
                     <*> (o .:? "inspectTemplateName"))

instance ToJSON GooglePrivacyDlpV2InspectJobConfig
         where
        toJSON GooglePrivacyDlpV2InspectJobConfig'{..}
          = object
              (catMaybes
                 [("actions" .=) <$> _gpdvijcActions,
                  ("storageConfig" .=) <$> _gpdvijcStorageConfig,
                  ("inspectConfig" .=) <$> _gpdvijcInspectConfig,
                  ("inspectTemplateName" .=) <$>
                    _gpdvijcInspectTemplateName])

-- | A reference to a StoredInfoType to use with scanning.
--
-- /See:/ 'googlePrivacyDlpV2StoredType' smart constructor.
data GooglePrivacyDlpV2StoredType =
  GooglePrivacyDlpV2StoredType'
    { _gpdvstName       :: !(Maybe Text)
    , _gpdvstCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2StoredType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvstName'
--
-- * 'gpdvstCreateTime'
googlePrivacyDlpV2StoredType
    :: GooglePrivacyDlpV2StoredType
googlePrivacyDlpV2StoredType =
  GooglePrivacyDlpV2StoredType'
    {_gpdvstName = Nothing, _gpdvstCreateTime = Nothing}

-- | Resource name of the requested \`StoredInfoType\`, for example
-- \`organizations\/433245324\/storedInfoTypes\/432452342\` or
-- \`projects\/project-id\/storedInfoTypes\/432452342\`.
gpdvstName :: Lens' GooglePrivacyDlpV2StoredType (Maybe Text)
gpdvstName
  = lens _gpdvstName (\ s a -> s{_gpdvstName = a})

-- | Timestamp indicating when the version of the \`StoredInfoType\` used for
-- inspection was created. Output-only field, populated by the system.
gpdvstCreateTime :: Lens' GooglePrivacyDlpV2StoredType (Maybe UTCTime)
gpdvstCreateTime
  = lens _gpdvstCreateTime
      (\ s a -> s{_gpdvstCreateTime = a})
      . mapping _DateTime

instance FromJSON GooglePrivacyDlpV2StoredType where
        parseJSON
          = withObject "GooglePrivacyDlpV2StoredType"
              (\ o ->
                 GooglePrivacyDlpV2StoredType' <$>
                   (o .:? "name") <*> (o .:? "createTime"))

instance ToJSON GooglePrivacyDlpV2StoredType where
        toJSON GooglePrivacyDlpV2StoredType'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _gpdvstName,
                  ("createTime" .=) <$> _gpdvstCreateTime])

-- | The transformation to apply to the field.
--
-- /See:/ 'googlePrivacyDlpV2FieldTransformation' smart constructor.
data GooglePrivacyDlpV2FieldTransformation =
  GooglePrivacyDlpV2FieldTransformation'
    { _gpdvftInfoTypeTransformations :: !(Maybe GooglePrivacyDlpV2InfoTypeTransformations)
    , _gpdvftPrimitiveTransformation :: !(Maybe GooglePrivacyDlpV2PrimitiveTransformation)
    , _gpdvftCondition               :: !(Maybe GooglePrivacyDlpV2RecordCondition)
    , _gpdvftFields                  :: !(Maybe [GooglePrivacyDlpV2FieldId])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2FieldTransformation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvftInfoTypeTransformations'
--
-- * 'gpdvftPrimitiveTransformation'
--
-- * 'gpdvftCondition'
--
-- * 'gpdvftFields'
googlePrivacyDlpV2FieldTransformation
    :: GooglePrivacyDlpV2FieldTransformation
googlePrivacyDlpV2FieldTransformation =
  GooglePrivacyDlpV2FieldTransformation'
    { _gpdvftInfoTypeTransformations = Nothing
    , _gpdvftPrimitiveTransformation = Nothing
    , _gpdvftCondition = Nothing
    , _gpdvftFields = Nothing
    }

-- | Treat the contents of the field as free text, and selectively transform
-- content that matches an \`InfoType\`.
gpdvftInfoTypeTransformations :: Lens' GooglePrivacyDlpV2FieldTransformation (Maybe GooglePrivacyDlpV2InfoTypeTransformations)
gpdvftInfoTypeTransformations
  = lens _gpdvftInfoTypeTransformations
      (\ s a -> s{_gpdvftInfoTypeTransformations = a})

-- | Apply the transformation to the entire field.
gpdvftPrimitiveTransformation :: Lens' GooglePrivacyDlpV2FieldTransformation (Maybe GooglePrivacyDlpV2PrimitiveTransformation)
gpdvftPrimitiveTransformation
  = lens _gpdvftPrimitiveTransformation
      (\ s a -> s{_gpdvftPrimitiveTransformation = a})

-- | Only apply the transformation if the condition evaluates to true for the
-- given \`RecordCondition\`. The conditions are allowed to reference
-- fields that are not used in the actual transformation. [optional]
-- Example Use Cases: - Apply a different bucket transformation to an age
-- column if the zip code column for the same record is within a specific
-- range. - Redact a field if the date of birth field is greater than 85.
gpdvftCondition :: Lens' GooglePrivacyDlpV2FieldTransformation (Maybe GooglePrivacyDlpV2RecordCondition)
gpdvftCondition
  = lens _gpdvftCondition
      (\ s a -> s{_gpdvftCondition = a})

-- | Input field(s) to apply the transformation to. [required]
gpdvftFields :: Lens' GooglePrivacyDlpV2FieldTransformation [GooglePrivacyDlpV2FieldId]
gpdvftFields
  = lens _gpdvftFields (\ s a -> s{_gpdvftFields = a})
      . _Default
      . _Coerce

instance FromJSON
           GooglePrivacyDlpV2FieldTransformation
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2FieldTransformation"
              (\ o ->
                 GooglePrivacyDlpV2FieldTransformation' <$>
                   (o .:? "infoTypeTransformations") <*>
                     (o .:? "primitiveTransformation")
                     <*> (o .:? "condition")
                     <*> (o .:? "fields" .!= mempty))

instance ToJSON GooglePrivacyDlpV2FieldTransformation
         where
        toJSON GooglePrivacyDlpV2FieldTransformation'{..}
          = object
              (catMaybes
                 [("infoTypeTransformations" .=) <$>
                    _gpdvftInfoTypeTransformations,
                  ("primitiveTransformation" .=) <$>
                    _gpdvftPrimitiveTransformation,
                  ("condition" .=) <$> _gpdvftCondition,
                  ("fields" .=) <$> _gpdvftFields])

-- | The rule that adjusts the likelihood of findings within a certain
-- proximity of hotwords.
--
-- /See:/ 'googlePrivacyDlpV2HotwordRule' smart constructor.
data GooglePrivacyDlpV2HotwordRule =
  GooglePrivacyDlpV2HotwordRule'
    { _gpdvhrProximity            :: !(Maybe GooglePrivacyDlpV2Proximity)
    , _gpdvhrLikelihoodAdjustment :: !(Maybe GooglePrivacyDlpV2LikelihoodAdjustment)
    , _gpdvhrHotwordRegex         :: !(Maybe GooglePrivacyDlpV2Regex)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2HotwordRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvhrProximity'
--
-- * 'gpdvhrLikelihoodAdjustment'
--
-- * 'gpdvhrHotwordRegex'
googlePrivacyDlpV2HotwordRule
    :: GooglePrivacyDlpV2HotwordRule
googlePrivacyDlpV2HotwordRule =
  GooglePrivacyDlpV2HotwordRule'
    { _gpdvhrProximity = Nothing
    , _gpdvhrLikelihoodAdjustment = Nothing
    , _gpdvhrHotwordRegex = Nothing
    }

-- | Proximity of the finding within which the entire hotword must reside.
-- The total length of the window cannot exceed 1000 characters. Note that
-- the finding itself will be included in the window, so that hotwords may
-- be used to match substrings of the finding itself. For example, the
-- certainty of a phone number regex \"\\(\\d{3}\\) \\d{3}-\\d{4}\" could
-- be adjusted upwards if the area code is known to be the local area code
-- of a company office using the hotword regex \"\\(xxx\\)\", where \"xxx\"
-- is the area code in question.
gpdvhrProximity :: Lens' GooglePrivacyDlpV2HotwordRule (Maybe GooglePrivacyDlpV2Proximity)
gpdvhrProximity
  = lens _gpdvhrProximity
      (\ s a -> s{_gpdvhrProximity = a})

-- | Likelihood adjustment to apply to all matching findings.
gpdvhrLikelihoodAdjustment :: Lens' GooglePrivacyDlpV2HotwordRule (Maybe GooglePrivacyDlpV2LikelihoodAdjustment)
gpdvhrLikelihoodAdjustment
  = lens _gpdvhrLikelihoodAdjustment
      (\ s a -> s{_gpdvhrLikelihoodAdjustment = a})

-- | Regular expression pattern defining what qualifies as a hotword.
gpdvhrHotwordRegex :: Lens' GooglePrivacyDlpV2HotwordRule (Maybe GooglePrivacyDlpV2Regex)
gpdvhrHotwordRegex
  = lens _gpdvhrHotwordRegex
      (\ s a -> s{_gpdvhrHotwordRegex = a})

instance FromJSON GooglePrivacyDlpV2HotwordRule where
        parseJSON
          = withObject "GooglePrivacyDlpV2HotwordRule"
              (\ o ->
                 GooglePrivacyDlpV2HotwordRule' <$>
                   (o .:? "proximity") <*>
                     (o .:? "likelihoodAdjustment")
                     <*> (o .:? "hotwordRegex"))

instance ToJSON GooglePrivacyDlpV2HotwordRule where
        toJSON GooglePrivacyDlpV2HotwordRule'{..}
          = object
              (catMaybes
                 [("proximity" .=) <$> _gpdvhrProximity,
                  ("likelihoodAdjustment" .=) <$>
                    _gpdvhrLikelihoodAdjustment,
                  ("hotwordRegex" .=) <$> _gpdvhrHotwordRegex])

-- | Request to search for potentially sensitive info in an image and redact
-- it by covering it with a colored rectangle.
--
-- /See:/ 'googlePrivacyDlpV2RedactImageRequest' smart constructor.
data GooglePrivacyDlpV2RedactImageRequest =
  GooglePrivacyDlpV2RedactImageRequest'
    { _gpdvrirIncludeFindings       :: !(Maybe Bool)
    , _gpdvrirInspectConfig         :: !(Maybe GooglePrivacyDlpV2InspectConfig)
    , _gpdvrirByteItem              :: !(Maybe GooglePrivacyDlpV2ByteContentItem)
    , _gpdvrirImageRedactionConfigs :: !(Maybe [GooglePrivacyDlpV2ImageRedactionConfig])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2RedactImageRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvrirIncludeFindings'
--
-- * 'gpdvrirInspectConfig'
--
-- * 'gpdvrirByteItem'
--
-- * 'gpdvrirImageRedactionConfigs'
googlePrivacyDlpV2RedactImageRequest
    :: GooglePrivacyDlpV2RedactImageRequest
googlePrivacyDlpV2RedactImageRequest =
  GooglePrivacyDlpV2RedactImageRequest'
    { _gpdvrirIncludeFindings = Nothing
    , _gpdvrirInspectConfig = Nothing
    , _gpdvrirByteItem = Nothing
    , _gpdvrirImageRedactionConfigs = Nothing
    }

-- | Whether the response should include findings along with the redacted
-- image.
gpdvrirIncludeFindings :: Lens' GooglePrivacyDlpV2RedactImageRequest (Maybe Bool)
gpdvrirIncludeFindings
  = lens _gpdvrirIncludeFindings
      (\ s a -> s{_gpdvrirIncludeFindings = a})

-- | Configuration for the inspector.
gpdvrirInspectConfig :: Lens' GooglePrivacyDlpV2RedactImageRequest (Maybe GooglePrivacyDlpV2InspectConfig)
gpdvrirInspectConfig
  = lens _gpdvrirInspectConfig
      (\ s a -> s{_gpdvrirInspectConfig = a})

-- | The content must be PNG, JPEG, SVG or BMP.
gpdvrirByteItem :: Lens' GooglePrivacyDlpV2RedactImageRequest (Maybe GooglePrivacyDlpV2ByteContentItem)
gpdvrirByteItem
  = lens _gpdvrirByteItem
      (\ s a -> s{_gpdvrirByteItem = a})

-- | The configuration for specifying what content to redact from images.
gpdvrirImageRedactionConfigs :: Lens' GooglePrivacyDlpV2RedactImageRequest [GooglePrivacyDlpV2ImageRedactionConfig]
gpdvrirImageRedactionConfigs
  = lens _gpdvrirImageRedactionConfigs
      (\ s a -> s{_gpdvrirImageRedactionConfigs = a})
      . _Default
      . _Coerce

instance FromJSON
           GooglePrivacyDlpV2RedactImageRequest
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2RedactImageRequest"
              (\ o ->
                 GooglePrivacyDlpV2RedactImageRequest' <$>
                   (o .:? "includeFindings") <*> (o .:? "inspectConfig")
                     <*> (o .:? "byteItem")
                     <*> (o .:? "imageRedactionConfigs" .!= mempty))

instance ToJSON GooglePrivacyDlpV2RedactImageRequest
         where
        toJSON GooglePrivacyDlpV2RedactImageRequest'{..}
          = object
              (catMaybes
                 [("includeFindings" .=) <$> _gpdvrirIncludeFindings,
                  ("inspectConfig" .=) <$> _gpdvrirInspectConfig,
                  ("byteItem" .=) <$> _gpdvrirByteItem,
                  ("imageRedactionConfigs" .=) <$>
                    _gpdvrirImageRedactionConfigs])

--
-- /See:/ 'googlePrivacyDlpV2FindingLimits' smart constructor.
data GooglePrivacyDlpV2FindingLimits =
  GooglePrivacyDlpV2FindingLimits'
    { _gpdvflMaxFindingsPerItem     :: !(Maybe (Textual Int32))
    , _gpdvflMaxFindingsPerInfoType :: !(Maybe [GooglePrivacyDlpV2InfoTypeLimit])
    , _gpdvflMaxFindingsPerRequest  :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2FindingLimits' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvflMaxFindingsPerItem'
--
-- * 'gpdvflMaxFindingsPerInfoType'
--
-- * 'gpdvflMaxFindingsPerRequest'
googlePrivacyDlpV2FindingLimits
    :: GooglePrivacyDlpV2FindingLimits
googlePrivacyDlpV2FindingLimits =
  GooglePrivacyDlpV2FindingLimits'
    { _gpdvflMaxFindingsPerItem = Nothing
    , _gpdvflMaxFindingsPerInfoType = Nothing
    , _gpdvflMaxFindingsPerRequest = Nothing
    }

-- | Max number of findings that will be returned for each item scanned. When
-- set within \`InspectDataSourceRequest\`, the maximum returned is 1000
-- regardless if this is set higher. When set within
-- \`InspectContentRequest\`, this field is ignored.
gpdvflMaxFindingsPerItem :: Lens' GooglePrivacyDlpV2FindingLimits (Maybe Int32)
gpdvflMaxFindingsPerItem
  = lens _gpdvflMaxFindingsPerItem
      (\ s a -> s{_gpdvflMaxFindingsPerItem = a})
      . mapping _Coerce

-- | Configuration of findings limit given for specified infoTypes.
gpdvflMaxFindingsPerInfoType :: Lens' GooglePrivacyDlpV2FindingLimits [GooglePrivacyDlpV2InfoTypeLimit]
gpdvflMaxFindingsPerInfoType
  = lens _gpdvflMaxFindingsPerInfoType
      (\ s a -> s{_gpdvflMaxFindingsPerInfoType = a})
      . _Default
      . _Coerce

-- | Max number of findings that will be returned per request\/job. When set
-- within \`InspectContentRequest\`, the maximum returned is 1000
-- regardless if this is set higher.
gpdvflMaxFindingsPerRequest :: Lens' GooglePrivacyDlpV2FindingLimits (Maybe Int32)
gpdvflMaxFindingsPerRequest
  = lens _gpdvflMaxFindingsPerRequest
      (\ s a -> s{_gpdvflMaxFindingsPerRequest = a})
      . mapping _Coerce

instance FromJSON GooglePrivacyDlpV2FindingLimits
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2FindingLimits"
              (\ o ->
                 GooglePrivacyDlpV2FindingLimits' <$>
                   (o .:? "maxFindingsPerItem") <*>
                     (o .:? "maxFindingsPerInfoType" .!= mempty)
                     <*> (o .:? "maxFindingsPerRequest"))

instance ToJSON GooglePrivacyDlpV2FindingLimits where
        toJSON GooglePrivacyDlpV2FindingLimits'{..}
          = object
              (catMaybes
                 [("maxFindingsPerItem" .=) <$>
                    _gpdvflMaxFindingsPerItem,
                  ("maxFindingsPerInfoType" .=) <$>
                    _gpdvflMaxFindingsPerInfoType,
                  ("maxFindingsPerRequest" .=) <$>
                    _gpdvflMaxFindingsPerRequest])

-- | The field type of \`value\` and \`field\` do not need to match to be
-- considered equal, but not all comparisons are possible. A \`value\` of
-- type: - \`string\` can be compared against all other types - \`boolean\`
-- can only be compared against other booleans - \`integer\` can be
-- compared against doubles or a string if the string value can be parsed
-- as an integer. - \`double\` can be compared against integers or a string
-- if the string can be parsed as a double. - \`Timestamp\` can be compared
-- against strings in RFC 3339 date string format. - \`TimeOfDay\` can be
-- compared against timestamps and strings in the format of \'HH:mm:ss\'.
-- If we fail to compare do to type mismatch, a warning will be given and
-- the condition will evaluate to false.
--
-- /See:/ 'googlePrivacyDlpV2Condition' smart constructor.
data GooglePrivacyDlpV2Condition =
  GooglePrivacyDlpV2Condition'
    { _gpdvcField    :: !(Maybe GooglePrivacyDlpV2FieldId)
    , _gpdvcOperator :: !(Maybe GooglePrivacyDlpV2ConditionOperator)
    , _gpdvcValue    :: !(Maybe GooglePrivacyDlpV2Value)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Condition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvcField'
--
-- * 'gpdvcOperator'
--
-- * 'gpdvcValue'
googlePrivacyDlpV2Condition
    :: GooglePrivacyDlpV2Condition
googlePrivacyDlpV2Condition =
  GooglePrivacyDlpV2Condition'
    {_gpdvcField = Nothing, _gpdvcOperator = Nothing, _gpdvcValue = Nothing}

-- | Field within the record this condition is evaluated against. [required]
gpdvcField :: Lens' GooglePrivacyDlpV2Condition (Maybe GooglePrivacyDlpV2FieldId)
gpdvcField
  = lens _gpdvcField (\ s a -> s{_gpdvcField = a})

-- | Operator used to compare the field or infoType to the value. [required]
gpdvcOperator :: Lens' GooglePrivacyDlpV2Condition (Maybe GooglePrivacyDlpV2ConditionOperator)
gpdvcOperator
  = lens _gpdvcOperator
      (\ s a -> s{_gpdvcOperator = a})

-- | Value to compare against. [Required, except for \`EXISTS\` tests.]
gpdvcValue :: Lens' GooglePrivacyDlpV2Condition (Maybe GooglePrivacyDlpV2Value)
gpdvcValue
  = lens _gpdvcValue (\ s a -> s{_gpdvcValue = a})

instance FromJSON GooglePrivacyDlpV2Condition where
        parseJSON
          = withObject "GooglePrivacyDlpV2Condition"
              (\ o ->
                 GooglePrivacyDlpV2Condition' <$>
                   (o .:? "field") <*> (o .:? "operator") <*>
                     (o .:? "value"))

instance ToJSON GooglePrivacyDlpV2Condition where
        toJSON GooglePrivacyDlpV2Condition'{..}
          = object
              (catMaybes
                 [("field" .=) <$> _gpdvcField,
                  ("operator" .=) <$> _gpdvcOperator,
                  ("value" .=) <$> _gpdvcValue])

-- | Configuration of the timespan of the items to include in scanning.
-- Currently only supported when inspecting Google Cloud Storage and
-- BigQuery.
--
-- /See:/ 'googlePrivacyDlpV2TimespanConfig' smart constructor.
data GooglePrivacyDlpV2TimespanConfig =
  GooglePrivacyDlpV2TimespanConfig'
    { _gpdvtcTimestampField                       :: !(Maybe GooglePrivacyDlpV2FieldId)
    , _gpdvtcStartTime                            :: !(Maybe DateTime')
    , _gpdvtcEnableAutoPopulationOfTimespanConfig :: !(Maybe Bool)
    , _gpdvtcEndTime                              :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2TimespanConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvtcTimestampField'
--
-- * 'gpdvtcStartTime'
--
-- * 'gpdvtcEnableAutoPopulationOfTimespanConfig'
--
-- * 'gpdvtcEndTime'
googlePrivacyDlpV2TimespanConfig
    :: GooglePrivacyDlpV2TimespanConfig
googlePrivacyDlpV2TimespanConfig =
  GooglePrivacyDlpV2TimespanConfig'
    { _gpdvtcTimestampField = Nothing
    , _gpdvtcStartTime = Nothing
    , _gpdvtcEnableAutoPopulationOfTimespanConfig = Nothing
    , _gpdvtcEndTime = Nothing
    }

-- | Specification of the field containing the timestamp of scanned items.
-- Used for data sources like Datastore or BigQuery. If not specified for
-- BigQuery, table last modification timestamp is checked against given
-- time span. The valid data types of the timestamp field are: for BigQuery
-- - timestamp, date, datetime; for Datastore - timestamp. Datastore entity
-- will be scanned if the timestamp property does not exist or its value is
-- empty or invalid.
gpdvtcTimestampField :: Lens' GooglePrivacyDlpV2TimespanConfig (Maybe GooglePrivacyDlpV2FieldId)
gpdvtcTimestampField
  = lens _gpdvtcTimestampField
      (\ s a -> s{_gpdvtcTimestampField = a})

-- | Exclude files or rows older than this value.
gpdvtcStartTime :: Lens' GooglePrivacyDlpV2TimespanConfig (Maybe UTCTime)
gpdvtcStartTime
  = lens _gpdvtcStartTime
      (\ s a -> s{_gpdvtcStartTime = a})
      . mapping _DateTime

-- | When the job is started by a JobTrigger we will automatically figure out
-- a valid start_time to avoid scanning files that have not been modified
-- since the last time the JobTrigger executed. This will be based on the
-- time of the execution of the last run of the JobTrigger.
gpdvtcEnableAutoPopulationOfTimespanConfig :: Lens' GooglePrivacyDlpV2TimespanConfig (Maybe Bool)
gpdvtcEnableAutoPopulationOfTimespanConfig
  = lens _gpdvtcEnableAutoPopulationOfTimespanConfig
      (\ s a ->
         s{_gpdvtcEnableAutoPopulationOfTimespanConfig = a})

-- | Exclude files or rows newer than this value. If set to zero, no upper
-- time limit is applied.
gpdvtcEndTime :: Lens' GooglePrivacyDlpV2TimespanConfig (Maybe UTCTime)
gpdvtcEndTime
  = lens _gpdvtcEndTime
      (\ s a -> s{_gpdvtcEndTime = a})
      . mapping _DateTime

instance FromJSON GooglePrivacyDlpV2TimespanConfig
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2TimespanConfig"
              (\ o ->
                 GooglePrivacyDlpV2TimespanConfig' <$>
                   (o .:? "timestampField") <*> (o .:? "startTime") <*>
                     (o .:? "enableAutoPopulationOfTimespanConfig")
                     <*> (o .:? "endTime"))

instance ToJSON GooglePrivacyDlpV2TimespanConfig
         where
        toJSON GooglePrivacyDlpV2TimespanConfig'{..}
          = object
              (catMaybes
                 [("timestampField" .=) <$> _gpdvtcTimestampField,
                  ("startTime" .=) <$> _gpdvtcStartTime,
                  ("enableAutoPopulationOfTimespanConfig" .=) <$>
                    _gpdvtcEnableAutoPopulationOfTimespanConfig,
                  ("endTime" .=) <$> _gpdvtcEndTime])

-- | Request message for CreateDeidentifyTemplate.
--
-- /See:/ 'googlePrivacyDlpV2CreateDeidentifyTemplateRequest' smart constructor.
data GooglePrivacyDlpV2CreateDeidentifyTemplateRequest =
  GooglePrivacyDlpV2CreateDeidentifyTemplateRequest'
    { _gpdvcdtrTemplateId         :: !(Maybe Text)
    , _gpdvcdtrDeidentifyTemplate :: !(Maybe GooglePrivacyDlpV2DeidentifyTemplate)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CreateDeidentifyTemplateRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvcdtrTemplateId'
--
-- * 'gpdvcdtrDeidentifyTemplate'
googlePrivacyDlpV2CreateDeidentifyTemplateRequest
    :: GooglePrivacyDlpV2CreateDeidentifyTemplateRequest
googlePrivacyDlpV2CreateDeidentifyTemplateRequest =
  GooglePrivacyDlpV2CreateDeidentifyTemplateRequest'
    {_gpdvcdtrTemplateId = Nothing, _gpdvcdtrDeidentifyTemplate = Nothing}

-- | The template id can contain uppercase and lowercase letters, numbers,
-- and hyphens; that is, it must match the regular expression:
-- \`[a-zA-Z\\\\d-]+\`. The maximum length is 100 characters. Can be empty
-- to allow the system to generate one.
gpdvcdtrTemplateId :: Lens' GooglePrivacyDlpV2CreateDeidentifyTemplateRequest (Maybe Text)
gpdvcdtrTemplateId
  = lens _gpdvcdtrTemplateId
      (\ s a -> s{_gpdvcdtrTemplateId = a})

-- | The DeidentifyTemplate to create.
gpdvcdtrDeidentifyTemplate :: Lens' GooglePrivacyDlpV2CreateDeidentifyTemplateRequest (Maybe GooglePrivacyDlpV2DeidentifyTemplate)
gpdvcdtrDeidentifyTemplate
  = lens _gpdvcdtrDeidentifyTemplate
      (\ s a -> s{_gpdvcdtrDeidentifyTemplate = a})

instance FromJSON
           GooglePrivacyDlpV2CreateDeidentifyTemplateRequest
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2CreateDeidentifyTemplateRequest"
              (\ o ->
                 GooglePrivacyDlpV2CreateDeidentifyTemplateRequest'
                   <$>
                   (o .:? "templateId") <*>
                     (o .:? "deidentifyTemplate"))

instance ToJSON
           GooglePrivacyDlpV2CreateDeidentifyTemplateRequest
         where
        toJSON
          GooglePrivacyDlpV2CreateDeidentifyTemplateRequest'{..}
          = object
              (catMaybes
                 [("templateId" .=) <$> _gpdvcdtrTemplateId,
                  ("deidentifyTemplate" .=) <$>
                    _gpdvcdtrDeidentifyTemplate])

-- | Use this to have a random data crypto key generated. It will be
-- discarded after the request finishes.
--
-- /See:/ 'googlePrivacyDlpV2TransientCryptoKey' smart constructor.
newtype GooglePrivacyDlpV2TransientCryptoKey =
  GooglePrivacyDlpV2TransientCryptoKey'
    { _gpdvtckName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2TransientCryptoKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvtckName'
googlePrivacyDlpV2TransientCryptoKey
    :: GooglePrivacyDlpV2TransientCryptoKey
googlePrivacyDlpV2TransientCryptoKey =
  GooglePrivacyDlpV2TransientCryptoKey' {_gpdvtckName = Nothing}

-- | Name of the key. [required] This is an arbitrary string used to
-- differentiate different keys. A unique key is generated per name: two
-- separate \`TransientCryptoKey\` protos share the same generated key if
-- their names are the same. When the data crypto key is generated, this
-- name is not used in any way (repeating the api call will result in a
-- different key being generated).
gpdvtckName :: Lens' GooglePrivacyDlpV2TransientCryptoKey (Maybe Text)
gpdvtckName
  = lens _gpdvtckName (\ s a -> s{_gpdvtckName = a})

instance FromJSON
           GooglePrivacyDlpV2TransientCryptoKey
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2TransientCryptoKey"
              (\ o ->
                 GooglePrivacyDlpV2TransientCryptoKey' <$>
                   (o .:? "name"))

instance ToJSON GooglePrivacyDlpV2TransientCryptoKey
         where
        toJSON GooglePrivacyDlpV2TransientCryptoKey'{..}
          = object (catMaybes [("name" .=) <$> _gpdvtckName])

-- | InfoType description.
--
-- /See:/ 'googlePrivacyDlpV2InfoTypeDescription' smart constructor.
data GooglePrivacyDlpV2InfoTypeDescription =
  GooglePrivacyDlpV2InfoTypeDescription'
    { _gpdvitdName        :: !(Maybe Text)
    , _gpdvitdDisplayName :: !(Maybe Text)
    , _gpdvitdSupportedBy :: !(Maybe [Text])
    , _gpdvitdDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2InfoTypeDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvitdName'
--
-- * 'gpdvitdDisplayName'
--
-- * 'gpdvitdSupportedBy'
--
-- * 'gpdvitdDescription'
googlePrivacyDlpV2InfoTypeDescription
    :: GooglePrivacyDlpV2InfoTypeDescription
googlePrivacyDlpV2InfoTypeDescription =
  GooglePrivacyDlpV2InfoTypeDescription'
    { _gpdvitdName = Nothing
    , _gpdvitdDisplayName = Nothing
    , _gpdvitdSupportedBy = Nothing
    , _gpdvitdDescription = Nothing
    }

-- | Internal name of the infoType.
gpdvitdName :: Lens' GooglePrivacyDlpV2InfoTypeDescription (Maybe Text)
gpdvitdName
  = lens _gpdvitdName (\ s a -> s{_gpdvitdName = a})

-- | Human readable form of the infoType name.
gpdvitdDisplayName :: Lens' GooglePrivacyDlpV2InfoTypeDescription (Maybe Text)
gpdvitdDisplayName
  = lens _gpdvitdDisplayName
      (\ s a -> s{_gpdvitdDisplayName = a})

-- | Which parts of the API supports this InfoType.
gpdvitdSupportedBy :: Lens' GooglePrivacyDlpV2InfoTypeDescription [Text]
gpdvitdSupportedBy
  = lens _gpdvitdSupportedBy
      (\ s a -> s{_gpdvitdSupportedBy = a})
      . _Default
      . _Coerce

-- | Description of the infotype. Translated when language is provided in the
-- request.
gpdvitdDescription :: Lens' GooglePrivacyDlpV2InfoTypeDescription (Maybe Text)
gpdvitdDescription
  = lens _gpdvitdDescription
      (\ s a -> s{_gpdvitdDescription = a})

instance FromJSON
           GooglePrivacyDlpV2InfoTypeDescription
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2InfoTypeDescription"
              (\ o ->
                 GooglePrivacyDlpV2InfoTypeDescription' <$>
                   (o .:? "name") <*> (o .:? "displayName") <*>
                     (o .:? "supportedBy" .!= mempty)
                     <*> (o .:? "description"))

instance ToJSON GooglePrivacyDlpV2InfoTypeDescription
         where
        toJSON GooglePrivacyDlpV2InfoTypeDescription'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _gpdvitdName,
                  ("displayName" .=) <$> _gpdvitdDisplayName,
                  ("supportedBy" .=) <$> _gpdvitdSupportedBy,
                  ("description" .=) <$> _gpdvitdDescription])

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'googleProtobufEmpty' smart constructor.
data GoogleProtobufEmpty =
  GoogleProtobufEmpty'
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleProtobufEmpty' with the minimum fields required to make a request.
--
googleProtobufEmpty
    :: GoogleProtobufEmpty
googleProtobufEmpty = GoogleProtobufEmpty'

instance FromJSON GoogleProtobufEmpty where
        parseJSON
          = withObject "GoogleProtobufEmpty"
              (\ o -> pure GoogleProtobufEmpty')

instance ToJSON GoogleProtobufEmpty where
        toJSON = const emptyObject

--
-- /See:/ 'googleRpcStatusDetailsItem' smart constructor.
newtype GoogleRpcStatusDetailsItem =
  GoogleRpcStatusDetailsItem'
    { _grsdiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleRpcStatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grsdiAddtional'
googleRpcStatusDetailsItem
    :: HashMap Text JSONValue -- ^ 'grsdiAddtional'
    -> GoogleRpcStatusDetailsItem
googleRpcStatusDetailsItem pGrsdiAddtional_ =
  GoogleRpcStatusDetailsItem' {_grsdiAddtional = _Coerce # pGrsdiAddtional_}

-- | Properties of the object. Contains field \'type with type URL.
grsdiAddtional :: Lens' GoogleRpcStatusDetailsItem (HashMap Text JSONValue)
grsdiAddtional
  = lens _grsdiAddtional
      (\ s a -> s{_grsdiAddtional = a})
      . _Coerce

instance FromJSON GoogleRpcStatusDetailsItem where
        parseJSON
          = withObject "GoogleRpcStatusDetailsItem"
              (\ o ->
                 GoogleRpcStatusDetailsItem' <$> (parseJSONObject o))

instance ToJSON GoogleRpcStatusDetailsItem where
        toJSON = toJSON . _grsdiAddtional

-- | Configuration for determining how redaction of images should occur.
--
-- /See:/ 'googlePrivacyDlpV2ImageRedactionConfig' smart constructor.
data GooglePrivacyDlpV2ImageRedactionConfig =
  GooglePrivacyDlpV2ImageRedactionConfig'
    { _gpdvircRedactionColor :: !(Maybe GooglePrivacyDlpV2Color)
    , _gpdvircInfoType       :: !(Maybe GooglePrivacyDlpV2InfoType)
    , _gpdvircRedactAllText  :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ImageRedactionConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvircRedactionColor'
--
-- * 'gpdvircInfoType'
--
-- * 'gpdvircRedactAllText'
googlePrivacyDlpV2ImageRedactionConfig
    :: GooglePrivacyDlpV2ImageRedactionConfig
googlePrivacyDlpV2ImageRedactionConfig =
  GooglePrivacyDlpV2ImageRedactionConfig'
    { _gpdvircRedactionColor = Nothing
    , _gpdvircInfoType = Nothing
    , _gpdvircRedactAllText = Nothing
    }

-- | The color to use when redacting content from an image. If not specified,
-- the default is black.
gpdvircRedactionColor :: Lens' GooglePrivacyDlpV2ImageRedactionConfig (Maybe GooglePrivacyDlpV2Color)
gpdvircRedactionColor
  = lens _gpdvircRedactionColor
      (\ s a -> s{_gpdvircRedactionColor = a})

-- | Only one per info_type should be provided per request. If not specified,
-- and redact_all_text is false, the DLP API will redact all text that it
-- matches against all info_types that are found, but not specified in
-- another ImageRedactionConfig.
gpdvircInfoType :: Lens' GooglePrivacyDlpV2ImageRedactionConfig (Maybe GooglePrivacyDlpV2InfoType)
gpdvircInfoType
  = lens _gpdvircInfoType
      (\ s a -> s{_gpdvircInfoType = a})

-- | If true, all text found in the image, regardless whether it matches an
-- info_type, is redacted. Only one should be provided.
gpdvircRedactAllText :: Lens' GooglePrivacyDlpV2ImageRedactionConfig (Maybe Bool)
gpdvircRedactAllText
  = lens _gpdvircRedactAllText
      (\ s a -> s{_gpdvircRedactAllText = a})

instance FromJSON
           GooglePrivacyDlpV2ImageRedactionConfig
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2ImageRedactionConfig"
              (\ o ->
                 GooglePrivacyDlpV2ImageRedactionConfig' <$>
                   (o .:? "redactionColor") <*> (o .:? "infoType") <*>
                     (o .:? "redactAllText"))

instance ToJSON
           GooglePrivacyDlpV2ImageRedactionConfig
         where
        toJSON GooglePrivacyDlpV2ImageRedactionConfig'{..}
          = object
              (catMaybes
                 [("redactionColor" .=) <$> _gpdvircRedactionColor,
                  ("infoType" .=) <$> _gpdvircInfoType,
                  ("redactAllText" .=) <$> _gpdvircRedactAllText])

-- | What event needs to occur for a new job to be started.
--
-- /See:/ 'googlePrivacyDlpV2Trigger' smart constructor.
newtype GooglePrivacyDlpV2Trigger =
  GooglePrivacyDlpV2Trigger'
    { _gpdvtSchedule :: Maybe GooglePrivacyDlpV2Schedule
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Trigger' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvtSchedule'
googlePrivacyDlpV2Trigger
    :: GooglePrivacyDlpV2Trigger
googlePrivacyDlpV2Trigger =
  GooglePrivacyDlpV2Trigger' {_gpdvtSchedule = Nothing}

-- | Create a job on a repeating basis based on the elapse of time.
gpdvtSchedule :: Lens' GooglePrivacyDlpV2Trigger (Maybe GooglePrivacyDlpV2Schedule)
gpdvtSchedule
  = lens _gpdvtSchedule
      (\ s a -> s{_gpdvtSchedule = a})

instance FromJSON GooglePrivacyDlpV2Trigger where
        parseJSON
          = withObject "GooglePrivacyDlpV2Trigger"
              (\ o ->
                 GooglePrivacyDlpV2Trigger' <$> (o .:? "schedule"))

instance ToJSON GooglePrivacyDlpV2Trigger where
        toJSON GooglePrivacyDlpV2Trigger'{..}
          = object
              (catMaybes [("schedule" .=) <$> _gpdvtSchedule])

-- | Options defining a file or a set of files within a Google Cloud Storage
-- bucket.
--
-- /See:/ 'googlePrivacyDlpV2CloudStorageOptions' smart constructor.
data GooglePrivacyDlpV2CloudStorageOptions =
  GooglePrivacyDlpV2CloudStorageOptions'
    { _gpdvcsoFileSet                  :: !(Maybe GooglePrivacyDlpV2FileSet)
    , _gpdvcsoBytesLimitPerFile        :: !(Maybe (Textual Int64))
    , _gpdvcsoFileTypes                :: !(Maybe [Text])
    , _gpdvcsoBytesLimitPerFilePercent :: !(Maybe (Textual Int32))
    , _gpdvcsoFilesLimitPercent        :: !(Maybe (Textual Int32))
    , _gpdvcsoSampleMethod             :: !(Maybe GooglePrivacyDlpV2CloudStorageOptionsSampleMethod)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CloudStorageOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvcsoFileSet'
--
-- * 'gpdvcsoBytesLimitPerFile'
--
-- * 'gpdvcsoFileTypes'
--
-- * 'gpdvcsoBytesLimitPerFilePercent'
--
-- * 'gpdvcsoFilesLimitPercent'
--
-- * 'gpdvcsoSampleMethod'
googlePrivacyDlpV2CloudStorageOptions
    :: GooglePrivacyDlpV2CloudStorageOptions
googlePrivacyDlpV2CloudStorageOptions =
  GooglePrivacyDlpV2CloudStorageOptions'
    { _gpdvcsoFileSet = Nothing
    , _gpdvcsoBytesLimitPerFile = Nothing
    , _gpdvcsoFileTypes = Nothing
    , _gpdvcsoBytesLimitPerFilePercent = Nothing
    , _gpdvcsoFilesLimitPercent = Nothing
    , _gpdvcsoSampleMethod = Nothing
    }

-- | The set of one or more files to scan.
gpdvcsoFileSet :: Lens' GooglePrivacyDlpV2CloudStorageOptions (Maybe GooglePrivacyDlpV2FileSet)
gpdvcsoFileSet
  = lens _gpdvcsoFileSet
      (\ s a -> s{_gpdvcsoFileSet = a})

-- | Max number of bytes to scan from a file. If a scanned file\'s size is
-- bigger than this value then the rest of the bytes are omitted. Only one
-- of bytes_limit_per_file and bytes_limit_per_file_percent can be
-- specified.
gpdvcsoBytesLimitPerFile :: Lens' GooglePrivacyDlpV2CloudStorageOptions (Maybe Int64)
gpdvcsoBytesLimitPerFile
  = lens _gpdvcsoBytesLimitPerFile
      (\ s a -> s{_gpdvcsoBytesLimitPerFile = a})
      . mapping _Coerce

-- | List of file type groups to include in the scan. If empty, all files are
-- scanned and available data format processors are applied. In addition,
-- the binary content of the selected files is always scanned as well.
gpdvcsoFileTypes :: Lens' GooglePrivacyDlpV2CloudStorageOptions [Text]
gpdvcsoFileTypes
  = lens _gpdvcsoFileTypes
      (\ s a -> s{_gpdvcsoFileTypes = a})
      . _Default
      . _Coerce

-- | Max percentage of bytes to scan from a file. The rest are omitted. The
-- number of bytes scanned is rounded down. Must be between 0 and 100,
-- inclusively. Both 0 and 100 means no limit. Defaults to 0. Only one of
-- bytes_limit_per_file and bytes_limit_per_file_percent can be specified.
gpdvcsoBytesLimitPerFilePercent :: Lens' GooglePrivacyDlpV2CloudStorageOptions (Maybe Int32)
gpdvcsoBytesLimitPerFilePercent
  = lens _gpdvcsoBytesLimitPerFilePercent
      (\ s a -> s{_gpdvcsoBytesLimitPerFilePercent = a})
      . mapping _Coerce

-- | Limits the number of files to scan to this percentage of the input
-- FileSet. Number of files scanned is rounded down. Must be between 0 and
-- 100, inclusively. Both 0 and 100 means no limit. Defaults to 0.
gpdvcsoFilesLimitPercent :: Lens' GooglePrivacyDlpV2CloudStorageOptions (Maybe Int32)
gpdvcsoFilesLimitPercent
  = lens _gpdvcsoFilesLimitPercent
      (\ s a -> s{_gpdvcsoFilesLimitPercent = a})
      . mapping _Coerce

gpdvcsoSampleMethod :: Lens' GooglePrivacyDlpV2CloudStorageOptions (Maybe GooglePrivacyDlpV2CloudStorageOptionsSampleMethod)
gpdvcsoSampleMethod
  = lens _gpdvcsoSampleMethod
      (\ s a -> s{_gpdvcsoSampleMethod = a})

instance FromJSON
           GooglePrivacyDlpV2CloudStorageOptions
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2CloudStorageOptions"
              (\ o ->
                 GooglePrivacyDlpV2CloudStorageOptions' <$>
                   (o .:? "fileSet") <*> (o .:? "bytesLimitPerFile") <*>
                     (o .:? "fileTypes" .!= mempty)
                     <*> (o .:? "bytesLimitPerFilePercent")
                     <*> (o .:? "filesLimitPercent")
                     <*> (o .:? "sampleMethod"))

instance ToJSON GooglePrivacyDlpV2CloudStorageOptions
         where
        toJSON GooglePrivacyDlpV2CloudStorageOptions'{..}
          = object
              (catMaybes
                 [("fileSet" .=) <$> _gpdvcsoFileSet,
                  ("bytesLimitPerFile" .=) <$>
                    _gpdvcsoBytesLimitPerFile,
                  ("fileTypes" .=) <$> _gpdvcsoFileTypes,
                  ("bytesLimitPerFilePercent" .=) <$>
                    _gpdvcsoBytesLimitPerFilePercent,
                  ("filesLimitPercent" .=) <$>
                    _gpdvcsoFilesLimitPercent,
                  ("sampleMethod" .=) <$> _gpdvcsoSampleMethod])

-- | δ-presence metric, used to estimate how likely it is for an attacker to
-- figure out that one given individual appears in a de-identified dataset.
-- Similarly to the k-map metric, we cannot compute δ-presence exactly
-- without knowing the attack dataset, so we use a statistical model
-- instead.
--
-- /See:/ 'googlePrivacyDlpV2DeltaPresenceEstimationConfig' smart constructor.
data GooglePrivacyDlpV2DeltaPresenceEstimationConfig =
  GooglePrivacyDlpV2DeltaPresenceEstimationConfig'
    { _gpdvdpecAuxiliaryTables :: !(Maybe [GooglePrivacyDlpV2StatisticalTable])
    , _gpdvdpecRegionCode      :: !(Maybe Text)
    , _gpdvdpecQuasiIds        :: !(Maybe [GooglePrivacyDlpV2QuasiId])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DeltaPresenceEstimationConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvdpecAuxiliaryTables'
--
-- * 'gpdvdpecRegionCode'
--
-- * 'gpdvdpecQuasiIds'
googlePrivacyDlpV2DeltaPresenceEstimationConfig
    :: GooglePrivacyDlpV2DeltaPresenceEstimationConfig
googlePrivacyDlpV2DeltaPresenceEstimationConfig =
  GooglePrivacyDlpV2DeltaPresenceEstimationConfig'
    { _gpdvdpecAuxiliaryTables = Nothing
    , _gpdvdpecRegionCode = Nothing
    , _gpdvdpecQuasiIds = Nothing
    }

-- | Several auxiliary tables can be used in the analysis. Each custom_tag
-- used to tag a quasi-identifiers field must appear in exactly one field
-- of one auxiliary table.
gpdvdpecAuxiliaryTables :: Lens' GooglePrivacyDlpV2DeltaPresenceEstimationConfig [GooglePrivacyDlpV2StatisticalTable]
gpdvdpecAuxiliaryTables
  = lens _gpdvdpecAuxiliaryTables
      (\ s a -> s{_gpdvdpecAuxiliaryTables = a})
      . _Default
      . _Coerce

-- | ISO 3166-1 alpha-2 region code to use in the statistical modeling.
-- Required if no column is tagged with a region-specific InfoType (like
-- US_ZIP_5) or a region code.
gpdvdpecRegionCode :: Lens' GooglePrivacyDlpV2DeltaPresenceEstimationConfig (Maybe Text)
gpdvdpecRegionCode
  = lens _gpdvdpecRegionCode
      (\ s a -> s{_gpdvdpecRegionCode = a})

-- | Fields considered to be quasi-identifiers. No two fields can have the
-- same tag. [required]
gpdvdpecQuasiIds :: Lens' GooglePrivacyDlpV2DeltaPresenceEstimationConfig [GooglePrivacyDlpV2QuasiId]
gpdvdpecQuasiIds
  = lens _gpdvdpecQuasiIds
      (\ s a -> s{_gpdvdpecQuasiIds = a})
      . _Default
      . _Coerce

instance FromJSON
           GooglePrivacyDlpV2DeltaPresenceEstimationConfig
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2DeltaPresenceEstimationConfig"
              (\ o ->
                 GooglePrivacyDlpV2DeltaPresenceEstimationConfig' <$>
                   (o .:? "auxiliaryTables" .!= mempty) <*>
                     (o .:? "regionCode")
                     <*> (o .:? "quasiIds" .!= mempty))

instance ToJSON
           GooglePrivacyDlpV2DeltaPresenceEstimationConfig
         where
        toJSON
          GooglePrivacyDlpV2DeltaPresenceEstimationConfig'{..}
          = object
              (catMaybes
                 [("auxiliaryTables" .=) <$> _gpdvdpecAuxiliaryTables,
                  ("regionCode" .=) <$> _gpdvdpecRegionCode,
                  ("quasiIds" .=) <$> _gpdvdpecQuasiIds])

-- | Request message for CreateStoredInfoType.
--
-- /See:/ 'googlePrivacyDlpV2CreateStoredInfoTypeRequest' smart constructor.
data GooglePrivacyDlpV2CreateStoredInfoTypeRequest =
  GooglePrivacyDlpV2CreateStoredInfoTypeRequest'
    { _gpdvcsitrConfig           :: !(Maybe GooglePrivacyDlpV2StoredInfoTypeConfig)
    , _gpdvcsitrStoredInfoTypeId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CreateStoredInfoTypeRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvcsitrConfig'
--
-- * 'gpdvcsitrStoredInfoTypeId'
googlePrivacyDlpV2CreateStoredInfoTypeRequest
    :: GooglePrivacyDlpV2CreateStoredInfoTypeRequest
googlePrivacyDlpV2CreateStoredInfoTypeRequest =
  GooglePrivacyDlpV2CreateStoredInfoTypeRequest'
    {_gpdvcsitrConfig = Nothing, _gpdvcsitrStoredInfoTypeId = Nothing}

-- | Configuration of the storedInfoType to create.
gpdvcsitrConfig :: Lens' GooglePrivacyDlpV2CreateStoredInfoTypeRequest (Maybe GooglePrivacyDlpV2StoredInfoTypeConfig)
gpdvcsitrConfig
  = lens _gpdvcsitrConfig
      (\ s a -> s{_gpdvcsitrConfig = a})

-- | The storedInfoType ID can contain uppercase and lowercase letters,
-- numbers, and hyphens; that is, it must match the regular expression:
-- \`[a-zA-Z\\\\d-]+\`. The maximum length is 100 characters. Can be empty
-- to allow the system to generate one.
gpdvcsitrStoredInfoTypeId :: Lens' GooglePrivacyDlpV2CreateStoredInfoTypeRequest (Maybe Text)
gpdvcsitrStoredInfoTypeId
  = lens _gpdvcsitrStoredInfoTypeId
      (\ s a -> s{_gpdvcsitrStoredInfoTypeId = a})

instance FromJSON
           GooglePrivacyDlpV2CreateStoredInfoTypeRequest
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2CreateStoredInfoTypeRequest"
              (\ o ->
                 GooglePrivacyDlpV2CreateStoredInfoTypeRequest' <$>
                   (o .:? "config") <*> (o .:? "storedInfoTypeId"))

instance ToJSON
           GooglePrivacyDlpV2CreateStoredInfoTypeRequest
         where
        toJSON
          GooglePrivacyDlpV2CreateStoredInfoTypeRequest'{..}
          = object
              (catMaybes
                 [("config" .=) <$> _gpdvcsitrConfig,
                  ("storedInfoTypeId" .=) <$>
                    _gpdvcsitrStoredInfoTypeId])

-- | A quasi-identifier column has a custom_tag, used to know which column in
-- the data corresponds to which column in the statistical model.
--
-- /See:/ 'googlePrivacyDlpV2QuasiIdField' smart constructor.
data GooglePrivacyDlpV2QuasiIdField =
  GooglePrivacyDlpV2QuasiIdField'
    { _gpdvqifField     :: !(Maybe GooglePrivacyDlpV2FieldId)
    , _gpdvqifCustomTag :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2QuasiIdField' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvqifField'
--
-- * 'gpdvqifCustomTag'
googlePrivacyDlpV2QuasiIdField
    :: GooglePrivacyDlpV2QuasiIdField
googlePrivacyDlpV2QuasiIdField =
  GooglePrivacyDlpV2QuasiIdField'
    {_gpdvqifField = Nothing, _gpdvqifCustomTag = Nothing}

gpdvqifField :: Lens' GooglePrivacyDlpV2QuasiIdField (Maybe GooglePrivacyDlpV2FieldId)
gpdvqifField
  = lens _gpdvqifField (\ s a -> s{_gpdvqifField = a})

gpdvqifCustomTag :: Lens' GooglePrivacyDlpV2QuasiIdField (Maybe Text)
gpdvqifCustomTag
  = lens _gpdvqifCustomTag
      (\ s a -> s{_gpdvqifCustomTag = a})

instance FromJSON GooglePrivacyDlpV2QuasiIdField
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2QuasiIdField"
              (\ o ->
                 GooglePrivacyDlpV2QuasiIdField' <$>
                   (o .:? "field") <*> (o .:? "customTag"))

instance ToJSON GooglePrivacyDlpV2QuasiIdField where
        toJSON GooglePrivacyDlpV2QuasiIdField'{..}
          = object
              (catMaybes
                 [("field" .=) <$> _gpdvqifField,
                  ("customTag" .=) <$> _gpdvqifCustomTag])

-- | For use with \`Date\`, \`Timestamp\`, and \`TimeOfDay\`, extract or
-- preserve a portion of the value.
--
-- /See:/ 'googlePrivacyDlpV2TimePartConfig' smart constructor.
newtype GooglePrivacyDlpV2TimePartConfig =
  GooglePrivacyDlpV2TimePartConfig'
    { _gpdvtpcPartToExtract :: Maybe GooglePrivacyDlpV2TimePartConfigPartToExtract
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2TimePartConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvtpcPartToExtract'
googlePrivacyDlpV2TimePartConfig
    :: GooglePrivacyDlpV2TimePartConfig
googlePrivacyDlpV2TimePartConfig =
  GooglePrivacyDlpV2TimePartConfig' {_gpdvtpcPartToExtract = Nothing}

gpdvtpcPartToExtract :: Lens' GooglePrivacyDlpV2TimePartConfig (Maybe GooglePrivacyDlpV2TimePartConfigPartToExtract)
gpdvtpcPartToExtract
  = lens _gpdvtpcPartToExtract
      (\ s a -> s{_gpdvtpcPartToExtract = a})

instance FromJSON GooglePrivacyDlpV2TimePartConfig
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2TimePartConfig"
              (\ o ->
                 GooglePrivacyDlpV2TimePartConfig' <$>
                   (o .:? "partToExtract"))

instance ToJSON GooglePrivacyDlpV2TimePartConfig
         where
        toJSON GooglePrivacyDlpV2TimePartConfig'{..}
          = object
              (catMaybes
                 [("partToExtract" .=) <$> _gpdvtpcPartToExtract])

-- | A single inspection rule to be applied to infoTypes, specified in
-- \`InspectionRuleSet\`.
--
-- /See:/ 'googlePrivacyDlpV2InspectionRule' smart constructor.
data GooglePrivacyDlpV2InspectionRule =
  GooglePrivacyDlpV2InspectionRule'
    { _gpdvirExclusionRule :: !(Maybe GooglePrivacyDlpV2ExclusionRule)
    , _gpdvirHotwordRule   :: !(Maybe GooglePrivacyDlpV2HotwordRule)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2InspectionRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvirExclusionRule'
--
-- * 'gpdvirHotwordRule'
googlePrivacyDlpV2InspectionRule
    :: GooglePrivacyDlpV2InspectionRule
googlePrivacyDlpV2InspectionRule =
  GooglePrivacyDlpV2InspectionRule'
    {_gpdvirExclusionRule = Nothing, _gpdvirHotwordRule = Nothing}

-- | Exclusion rule.
gpdvirExclusionRule :: Lens' GooglePrivacyDlpV2InspectionRule (Maybe GooglePrivacyDlpV2ExclusionRule)
gpdvirExclusionRule
  = lens _gpdvirExclusionRule
      (\ s a -> s{_gpdvirExclusionRule = a})

-- | Hotword-based detection rule.
gpdvirHotwordRule :: Lens' GooglePrivacyDlpV2InspectionRule (Maybe GooglePrivacyDlpV2HotwordRule)
gpdvirHotwordRule
  = lens _gpdvirHotwordRule
      (\ s a -> s{_gpdvirHotwordRule = a})

instance FromJSON GooglePrivacyDlpV2InspectionRule
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2InspectionRule"
              (\ o ->
                 GooglePrivacyDlpV2InspectionRule' <$>
                   (o .:? "exclusionRule") <*> (o .:? "hotwordRule"))

instance ToJSON GooglePrivacyDlpV2InspectionRule
         where
        toJSON GooglePrivacyDlpV2InspectionRule'{..}
          = object
              (catMaybes
                 [("exclusionRule" .=) <$> _gpdvirExclusionRule,
                  ("hotwordRule" .=) <$> _gpdvirHotwordRule])

-- | Custom information type provided by the user. Used to find
-- domain-specific sensitive information configurable to the data in
-- question.
--
-- /See:/ 'googlePrivacyDlpV2CustomInfoType' smart constructor.
data GooglePrivacyDlpV2CustomInfoType =
  GooglePrivacyDlpV2CustomInfoType'
    { _gpdvcitRegex          :: !(Maybe GooglePrivacyDlpV2Regex)
    , _gpdvcitStoredType     :: !(Maybe GooglePrivacyDlpV2StoredType)
    , _gpdvcitInfoType       :: !(Maybe GooglePrivacyDlpV2InfoType)
    , _gpdvcitExclusionType  :: !(Maybe GooglePrivacyDlpV2CustomInfoTypeExclusionType)
    , _gpdvcitLikelihood     :: !(Maybe GooglePrivacyDlpV2CustomInfoTypeLikelihood)
    , _gpdvcitDetectionRules :: !(Maybe [GooglePrivacyDlpV2DetectionRule])
    , _gpdvcitDictionary     :: !(Maybe GooglePrivacyDlpV2Dictionary)
    , _gpdvcitSurrogateType  :: !(Maybe GooglePrivacyDlpV2SurrogateType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CustomInfoType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvcitRegex'
--
-- * 'gpdvcitStoredType'
--
-- * 'gpdvcitInfoType'
--
-- * 'gpdvcitExclusionType'
--
-- * 'gpdvcitLikelihood'
--
-- * 'gpdvcitDetectionRules'
--
-- * 'gpdvcitDictionary'
--
-- * 'gpdvcitSurrogateType'
googlePrivacyDlpV2CustomInfoType
    :: GooglePrivacyDlpV2CustomInfoType
googlePrivacyDlpV2CustomInfoType =
  GooglePrivacyDlpV2CustomInfoType'
    { _gpdvcitRegex = Nothing
    , _gpdvcitStoredType = Nothing
    , _gpdvcitInfoType = Nothing
    , _gpdvcitExclusionType = Nothing
    , _gpdvcitLikelihood = Nothing
    , _gpdvcitDetectionRules = Nothing
    , _gpdvcitDictionary = Nothing
    , _gpdvcitSurrogateType = Nothing
    }

-- | Regular expression based CustomInfoType.
gpdvcitRegex :: Lens' GooglePrivacyDlpV2CustomInfoType (Maybe GooglePrivacyDlpV2Regex)
gpdvcitRegex
  = lens _gpdvcitRegex (\ s a -> s{_gpdvcitRegex = a})

-- | Load an existing \`StoredInfoType\` resource for use in
-- \`InspectDataSource\`. Not currently supported in \`InspectContent\`.
gpdvcitStoredType :: Lens' GooglePrivacyDlpV2CustomInfoType (Maybe GooglePrivacyDlpV2StoredType)
gpdvcitStoredType
  = lens _gpdvcitStoredType
      (\ s a -> s{_gpdvcitStoredType = a})

-- | CustomInfoType can either be a new infoType, or an extension of built-in
-- infoType, when the name matches one of existing infoTypes and that
-- infoType is specified in \`InspectContent.info_types\` field. Specifying
-- the latter adds findings to the one detected by the system. If built-in
-- info type is not specified in \`InspectContent.info_types\` list then
-- the name is treated as a custom info type.
gpdvcitInfoType :: Lens' GooglePrivacyDlpV2CustomInfoType (Maybe GooglePrivacyDlpV2InfoType)
gpdvcitInfoType
  = lens _gpdvcitInfoType
      (\ s a -> s{_gpdvcitInfoType = a})

-- | If set to EXCLUSION_TYPE_EXCLUDE this infoType will not cause a finding
-- to be returned. It still can be used for rules matching.
gpdvcitExclusionType :: Lens' GooglePrivacyDlpV2CustomInfoType (Maybe GooglePrivacyDlpV2CustomInfoTypeExclusionType)
gpdvcitExclusionType
  = lens _gpdvcitExclusionType
      (\ s a -> s{_gpdvcitExclusionType = a})

-- | Likelihood to return for this CustomInfoType. This base value can be
-- altered by a detection rule if the finding meets the criteria specified
-- by the rule. Defaults to \`VERY_LIKELY\` if not specified.
gpdvcitLikelihood :: Lens' GooglePrivacyDlpV2CustomInfoType (Maybe GooglePrivacyDlpV2CustomInfoTypeLikelihood)
gpdvcitLikelihood
  = lens _gpdvcitLikelihood
      (\ s a -> s{_gpdvcitLikelihood = a})

-- | Set of detection rules to apply to all findings of this CustomInfoType.
-- Rules are applied in order that they are specified. Not supported for
-- the \`surrogate_type\` CustomInfoType.
gpdvcitDetectionRules :: Lens' GooglePrivacyDlpV2CustomInfoType [GooglePrivacyDlpV2DetectionRule]
gpdvcitDetectionRules
  = lens _gpdvcitDetectionRules
      (\ s a -> s{_gpdvcitDetectionRules = a})
      . _Default
      . _Coerce

-- | A list of phrases to detect as a CustomInfoType.
gpdvcitDictionary :: Lens' GooglePrivacyDlpV2CustomInfoType (Maybe GooglePrivacyDlpV2Dictionary)
gpdvcitDictionary
  = lens _gpdvcitDictionary
      (\ s a -> s{_gpdvcitDictionary = a})

-- | Message for detecting output from deidentification transformations that
-- support reversing.
gpdvcitSurrogateType :: Lens' GooglePrivacyDlpV2CustomInfoType (Maybe GooglePrivacyDlpV2SurrogateType)
gpdvcitSurrogateType
  = lens _gpdvcitSurrogateType
      (\ s a -> s{_gpdvcitSurrogateType = a})

instance FromJSON GooglePrivacyDlpV2CustomInfoType
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2CustomInfoType"
              (\ o ->
                 GooglePrivacyDlpV2CustomInfoType' <$>
                   (o .:? "regex") <*> (o .:? "storedType") <*>
                     (o .:? "infoType")
                     <*> (o .:? "exclusionType")
                     <*> (o .:? "likelihood")
                     <*> (o .:? "detectionRules" .!= mempty)
                     <*> (o .:? "dictionary")
                     <*> (o .:? "surrogateType"))

instance ToJSON GooglePrivacyDlpV2CustomInfoType
         where
        toJSON GooglePrivacyDlpV2CustomInfoType'{..}
          = object
              (catMaybes
                 [("regex" .=) <$> _gpdvcitRegex,
                  ("storedType" .=) <$> _gpdvcitStoredType,
                  ("infoType" .=) <$> _gpdvcitInfoType,
                  ("exclusionType" .=) <$> _gpdvcitExclusionType,
                  ("likelihood" .=) <$> _gpdvcitLikelihood,
                  ("detectionRules" .=) <$> _gpdvcitDetectionRules,
                  ("dictionary" .=) <$> _gpdvcitDictionary,
                  ("surrogateType" .=) <$> _gpdvcitSurrogateType])

-- | Result of the reidentifiability analysis. Note that these results are an
-- estimation, not exact values.
--
-- /See:/ 'googlePrivacyDlpV2KMapEstimationResult' smart constructor.
newtype GooglePrivacyDlpV2KMapEstimationResult =
  GooglePrivacyDlpV2KMapEstimationResult'
    { _gpdvkmerKMapEstimationHistogram :: Maybe [GooglePrivacyDlpV2KMapEstimationHistogramBucket]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2KMapEstimationResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvkmerKMapEstimationHistogram'
googlePrivacyDlpV2KMapEstimationResult
    :: GooglePrivacyDlpV2KMapEstimationResult
googlePrivacyDlpV2KMapEstimationResult =
  GooglePrivacyDlpV2KMapEstimationResult'
    {_gpdvkmerKMapEstimationHistogram = Nothing}

-- | The intervals [min_anonymity, max_anonymity] do not overlap. If a value
-- doesn\'t correspond to any such interval, the associated frequency is
-- zero. For example, the following records: {min_anonymity: 1,
-- max_anonymity: 1, frequency: 17} {min_anonymity: 2, max_anonymity: 3,
-- frequency: 42} {min_anonymity: 5, max_anonymity: 10, frequency: 99} mean
-- that there are no record with an estimated anonymity of 4, 5, or larger
-- than 10.
gpdvkmerKMapEstimationHistogram :: Lens' GooglePrivacyDlpV2KMapEstimationResult [GooglePrivacyDlpV2KMapEstimationHistogramBucket]
gpdvkmerKMapEstimationHistogram
  = lens _gpdvkmerKMapEstimationHistogram
      (\ s a -> s{_gpdvkmerKMapEstimationHistogram = a})
      . _Default
      . _Coerce

instance FromJSON
           GooglePrivacyDlpV2KMapEstimationResult
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2KMapEstimationResult"
              (\ o ->
                 GooglePrivacyDlpV2KMapEstimationResult' <$>
                   (o .:? "kMapEstimationHistogram" .!= mempty))

instance ToJSON
           GooglePrivacyDlpV2KMapEstimationResult
         where
        toJSON GooglePrivacyDlpV2KMapEstimationResult'{..}
          = object
              (catMaybes
                 [("kMapEstimationHistogram" .=) <$>
                    _gpdvkmerKMapEstimationHistogram])

-- | Summary of a single tranformation. Only one of \'transformation\',
-- \'field_transformation\', or \'record_suppress\' will be set.
--
-- /See:/ 'googlePrivacyDlpV2TransformationSummary' smart constructor.
data GooglePrivacyDlpV2TransformationSummary =
  GooglePrivacyDlpV2TransformationSummary'
    { _gpdvtsResults              :: !(Maybe [GooglePrivacyDlpV2SummaryResult])
    , _gpdvtsField                :: !(Maybe GooglePrivacyDlpV2FieldId)
    , _gpdvtsInfoType             :: !(Maybe GooglePrivacyDlpV2InfoType)
    , _gpdvtsRecordSuppress       :: !(Maybe GooglePrivacyDlpV2RecordSuppression)
    , _gpdvtsTransformedBytes     :: !(Maybe (Textual Int64))
    , _gpdvtsFieldTransformations :: !(Maybe [GooglePrivacyDlpV2FieldTransformation])
    , _gpdvtsTransformation       :: !(Maybe GooglePrivacyDlpV2PrimitiveTransformation)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2TransformationSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvtsResults'
--
-- * 'gpdvtsField'
--
-- * 'gpdvtsInfoType'
--
-- * 'gpdvtsRecordSuppress'
--
-- * 'gpdvtsTransformedBytes'
--
-- * 'gpdvtsFieldTransformations'
--
-- * 'gpdvtsTransformation'
googlePrivacyDlpV2TransformationSummary
    :: GooglePrivacyDlpV2TransformationSummary
googlePrivacyDlpV2TransformationSummary =
  GooglePrivacyDlpV2TransformationSummary'
    { _gpdvtsResults = Nothing
    , _gpdvtsField = Nothing
    , _gpdvtsInfoType = Nothing
    , _gpdvtsRecordSuppress = Nothing
    , _gpdvtsTransformedBytes = Nothing
    , _gpdvtsFieldTransformations = Nothing
    , _gpdvtsTransformation = Nothing
    }

gpdvtsResults :: Lens' GooglePrivacyDlpV2TransformationSummary [GooglePrivacyDlpV2SummaryResult]
gpdvtsResults
  = lens _gpdvtsResults
      (\ s a -> s{_gpdvtsResults = a})
      . _Default
      . _Coerce

-- | Set if the transformation was limited to a specific FieldId.
gpdvtsField :: Lens' GooglePrivacyDlpV2TransformationSummary (Maybe GooglePrivacyDlpV2FieldId)
gpdvtsField
  = lens _gpdvtsField (\ s a -> s{_gpdvtsField = a})

-- | Set if the transformation was limited to a specific InfoType.
gpdvtsInfoType :: Lens' GooglePrivacyDlpV2TransformationSummary (Maybe GooglePrivacyDlpV2InfoType)
gpdvtsInfoType
  = lens _gpdvtsInfoType
      (\ s a -> s{_gpdvtsInfoType = a})

-- | The specific suppression option these stats apply to.
gpdvtsRecordSuppress :: Lens' GooglePrivacyDlpV2TransformationSummary (Maybe GooglePrivacyDlpV2RecordSuppression)
gpdvtsRecordSuppress
  = lens _gpdvtsRecordSuppress
      (\ s a -> s{_gpdvtsRecordSuppress = a})

-- | Total size in bytes that were transformed in some way.
gpdvtsTransformedBytes :: Lens' GooglePrivacyDlpV2TransformationSummary (Maybe Int64)
gpdvtsTransformedBytes
  = lens _gpdvtsTransformedBytes
      (\ s a -> s{_gpdvtsTransformedBytes = a})
      . mapping _Coerce

-- | The field transformation that was applied. If multiple field
-- transformations are requested for a single field, this list will contain
-- all of them; otherwise, only one is supplied.
gpdvtsFieldTransformations :: Lens' GooglePrivacyDlpV2TransformationSummary [GooglePrivacyDlpV2FieldTransformation]
gpdvtsFieldTransformations
  = lens _gpdvtsFieldTransformations
      (\ s a -> s{_gpdvtsFieldTransformations = a})
      . _Default
      . _Coerce

-- | The specific transformation these stats apply to.
gpdvtsTransformation :: Lens' GooglePrivacyDlpV2TransformationSummary (Maybe GooglePrivacyDlpV2PrimitiveTransformation)
gpdvtsTransformation
  = lens _gpdvtsTransformation
      (\ s a -> s{_gpdvtsTransformation = a})

instance FromJSON
           GooglePrivacyDlpV2TransformationSummary
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2TransformationSummary"
              (\ o ->
                 GooglePrivacyDlpV2TransformationSummary' <$>
                   (o .:? "results" .!= mempty) <*> (o .:? "field") <*>
                     (o .:? "infoType")
                     <*> (o .:? "recordSuppress")
                     <*> (o .:? "transformedBytes")
                     <*> (o .:? "fieldTransformations" .!= mempty)
                     <*> (o .:? "transformation"))

instance ToJSON
           GooglePrivacyDlpV2TransformationSummary
         where
        toJSON GooglePrivacyDlpV2TransformationSummary'{..}
          = object
              (catMaybes
                 [("results" .=) <$> _gpdvtsResults,
                  ("field" .=) <$> _gpdvtsField,
                  ("infoType" .=) <$> _gpdvtsInfoType,
                  ("recordSuppress" .=) <$> _gpdvtsRecordSuppress,
                  ("transformedBytes" .=) <$> _gpdvtsTransformedBytes,
                  ("fieldTransformations" .=) <$>
                    _gpdvtsFieldTransformations,
                  ("transformation" .=) <$> _gpdvtsTransformation])

-- | Message for specifying an adjustment to the likelihood of a finding as
-- part of a detection rule.
--
-- /See:/ 'googlePrivacyDlpV2LikelihoodAdjustment' smart constructor.
data GooglePrivacyDlpV2LikelihoodAdjustment =
  GooglePrivacyDlpV2LikelihoodAdjustment'
    { _gpdvlaFixedLikelihood    :: !(Maybe GooglePrivacyDlpV2LikelihoodAdjustmentFixedLikelihood)
    , _gpdvlaRelativeLikelihood :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2LikelihoodAdjustment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvlaFixedLikelihood'
--
-- * 'gpdvlaRelativeLikelihood'
googlePrivacyDlpV2LikelihoodAdjustment
    :: GooglePrivacyDlpV2LikelihoodAdjustment
googlePrivacyDlpV2LikelihoodAdjustment =
  GooglePrivacyDlpV2LikelihoodAdjustment'
    {_gpdvlaFixedLikelihood = Nothing, _gpdvlaRelativeLikelihood = Nothing}

-- | Set the likelihood of a finding to a fixed value.
gpdvlaFixedLikelihood :: Lens' GooglePrivacyDlpV2LikelihoodAdjustment (Maybe GooglePrivacyDlpV2LikelihoodAdjustmentFixedLikelihood)
gpdvlaFixedLikelihood
  = lens _gpdvlaFixedLikelihood
      (\ s a -> s{_gpdvlaFixedLikelihood = a})

-- | Increase or decrease the likelihood by the specified number of levels.
-- For example, if a finding would be \`POSSIBLE\` without the detection
-- rule and \`relative_likelihood\` is 1, then it is upgraded to
-- \`LIKELY\`, while a value of -1 would downgrade it to \`UNLIKELY\`.
-- Likelihood may never drop below \`VERY_UNLIKELY\` or exceed
-- \`VERY_LIKELY\`, so applying an adjustment of 1 followed by an
-- adjustment of -1 when base likelihood is \`VERY_LIKELY\` will result in
-- a final likelihood of \`LIKELY\`.
gpdvlaRelativeLikelihood :: Lens' GooglePrivacyDlpV2LikelihoodAdjustment (Maybe Int32)
gpdvlaRelativeLikelihood
  = lens _gpdvlaRelativeLikelihood
      (\ s a -> s{_gpdvlaRelativeLikelihood = a})
      . mapping _Coerce

instance FromJSON
           GooglePrivacyDlpV2LikelihoodAdjustment
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2LikelihoodAdjustment"
              (\ o ->
                 GooglePrivacyDlpV2LikelihoodAdjustment' <$>
                   (o .:? "fixedLikelihood") <*>
                     (o .:? "relativeLikelihood"))

instance ToJSON
           GooglePrivacyDlpV2LikelihoodAdjustment
         where
        toJSON GooglePrivacyDlpV2LikelihoodAdjustment'{..}
          = object
              (catMaybes
                 [("fixedLikelihood" .=) <$> _gpdvlaFixedLikelihood,
                  ("relativeLikelihood" .=) <$>
                    _gpdvlaRelativeLikelihood])

-- | Message defining a custom regular expression.
--
-- /See:/ 'googlePrivacyDlpV2Regex' smart constructor.
data GooglePrivacyDlpV2Regex =
  GooglePrivacyDlpV2Regex'
    { _gpdvrGroupIndexes :: !(Maybe [Textual Int32])
    , _gpdvrPattern      :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Regex' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvrGroupIndexes'
--
-- * 'gpdvrPattern'
googlePrivacyDlpV2Regex
    :: GooglePrivacyDlpV2Regex
googlePrivacyDlpV2Regex =
  GooglePrivacyDlpV2Regex'
    {_gpdvrGroupIndexes = Nothing, _gpdvrPattern = Nothing}

-- | The index of the submatch to extract as findings. When not specified,
-- the entire match is returned. No more than 3 may be included.
gpdvrGroupIndexes :: Lens' GooglePrivacyDlpV2Regex [Int32]
gpdvrGroupIndexes
  = lens _gpdvrGroupIndexes
      (\ s a -> s{_gpdvrGroupIndexes = a})
      . _Default
      . _Coerce

-- | Pattern defining the regular expression. Its syntax
-- (https:\/\/github.com\/google\/re2\/wiki\/Syntax) can be found under the
-- google\/re2 repository on GitHub.
gpdvrPattern :: Lens' GooglePrivacyDlpV2Regex (Maybe Text)
gpdvrPattern
  = lens _gpdvrPattern (\ s a -> s{_gpdvrPattern = a})

instance FromJSON GooglePrivacyDlpV2Regex where
        parseJSON
          = withObject "GooglePrivacyDlpV2Regex"
              (\ o ->
                 GooglePrivacyDlpV2Regex' <$>
                   (o .:? "groupIndexes" .!= mempty) <*>
                     (o .:? "pattern"))

instance ToJSON GooglePrivacyDlpV2Regex where
        toJSON GooglePrivacyDlpV2Regex'{..}
          = object
              (catMaybes
                 [("groupIndexes" .=) <$> _gpdvrGroupIndexes,
                  ("pattern" .=) <$> _gpdvrPattern])

-- | Request message for UpdateStoredInfoType.
--
-- /See:/ 'googlePrivacyDlpV2UpdateStoredInfoTypeRequest' smart constructor.
data GooglePrivacyDlpV2UpdateStoredInfoTypeRequest =
  GooglePrivacyDlpV2UpdateStoredInfoTypeRequest'
    { _gpdvusitrConfig     :: !(Maybe GooglePrivacyDlpV2StoredInfoTypeConfig)
    , _gpdvusitrUpdateMask :: !(Maybe GFieldMask)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2UpdateStoredInfoTypeRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvusitrConfig'
--
-- * 'gpdvusitrUpdateMask'
googlePrivacyDlpV2UpdateStoredInfoTypeRequest
    :: GooglePrivacyDlpV2UpdateStoredInfoTypeRequest
googlePrivacyDlpV2UpdateStoredInfoTypeRequest =
  GooglePrivacyDlpV2UpdateStoredInfoTypeRequest'
    {_gpdvusitrConfig = Nothing, _gpdvusitrUpdateMask = Nothing}

-- | Updated configuration for the storedInfoType. If not provided, a new
-- version of the storedInfoType will be created with the existing
-- configuration.
gpdvusitrConfig :: Lens' GooglePrivacyDlpV2UpdateStoredInfoTypeRequest (Maybe GooglePrivacyDlpV2StoredInfoTypeConfig)
gpdvusitrConfig
  = lens _gpdvusitrConfig
      (\ s a -> s{_gpdvusitrConfig = a})

-- | Mask to control which fields get updated.
gpdvusitrUpdateMask :: Lens' GooglePrivacyDlpV2UpdateStoredInfoTypeRequest (Maybe GFieldMask)
gpdvusitrUpdateMask
  = lens _gpdvusitrUpdateMask
      (\ s a -> s{_gpdvusitrUpdateMask = a})

instance FromJSON
           GooglePrivacyDlpV2UpdateStoredInfoTypeRequest
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2UpdateStoredInfoTypeRequest"
              (\ o ->
                 GooglePrivacyDlpV2UpdateStoredInfoTypeRequest' <$>
                   (o .:? "config") <*> (o .:? "updateMask"))

instance ToJSON
           GooglePrivacyDlpV2UpdateStoredInfoTypeRequest
         where
        toJSON
          GooglePrivacyDlpV2UpdateStoredInfoTypeRequest'{..}
          = object
              (catMaybes
                 [("config" .=) <$> _gpdvusitrConfig,
                  ("updateMask" .=) <$> _gpdvusitrUpdateMask])

-- | The set of columns\' values that share the same ldiversity value
--
-- /See:/ 'googlePrivacyDlpV2KAnonymityEquivalenceClass' smart constructor.
data GooglePrivacyDlpV2KAnonymityEquivalenceClass =
  GooglePrivacyDlpV2KAnonymityEquivalenceClass'
    { _gpdvkaecEquivalenceClassSize :: !(Maybe (Textual Int64))
    , _gpdvkaecQuasiIdsValues       :: !(Maybe [GooglePrivacyDlpV2Value])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2KAnonymityEquivalenceClass' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvkaecEquivalenceClassSize'
--
-- * 'gpdvkaecQuasiIdsValues'
googlePrivacyDlpV2KAnonymityEquivalenceClass
    :: GooglePrivacyDlpV2KAnonymityEquivalenceClass
googlePrivacyDlpV2KAnonymityEquivalenceClass =
  GooglePrivacyDlpV2KAnonymityEquivalenceClass'
    {_gpdvkaecEquivalenceClassSize = Nothing, _gpdvkaecQuasiIdsValues = Nothing}

-- | Size of the equivalence class, for example number of rows with the above
-- set of values.
gpdvkaecEquivalenceClassSize :: Lens' GooglePrivacyDlpV2KAnonymityEquivalenceClass (Maybe Int64)
gpdvkaecEquivalenceClassSize
  = lens _gpdvkaecEquivalenceClassSize
      (\ s a -> s{_gpdvkaecEquivalenceClassSize = a})
      . mapping _Coerce

-- | Set of values defining the equivalence class. One value per
-- quasi-identifier column in the original KAnonymity metric message. The
-- order is always the same as the original request.
gpdvkaecQuasiIdsValues :: Lens' GooglePrivacyDlpV2KAnonymityEquivalenceClass [GooglePrivacyDlpV2Value]
gpdvkaecQuasiIdsValues
  = lens _gpdvkaecQuasiIdsValues
      (\ s a -> s{_gpdvkaecQuasiIdsValues = a})
      . _Default
      . _Coerce

instance FromJSON
           GooglePrivacyDlpV2KAnonymityEquivalenceClass
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2KAnonymityEquivalenceClass"
              (\ o ->
                 GooglePrivacyDlpV2KAnonymityEquivalenceClass' <$>
                   (o .:? "equivalenceClassSize") <*>
                     (o .:? "quasiIdsValues" .!= mempty))

instance ToJSON
           GooglePrivacyDlpV2KAnonymityEquivalenceClass
         where
        toJSON
          GooglePrivacyDlpV2KAnonymityEquivalenceClass'{..}
          = object
              (catMaybes
                 [("equivalenceClassSize" .=) <$>
                    _gpdvkaecEquivalenceClassSize,
                  ("quasiIdsValues" .=) <$> _gpdvkaecQuasiIdsValues])

-- | Request message for UpdateDeidentifyTemplate.
--
-- /See:/ 'googlePrivacyDlpV2UpdateDeidentifyTemplateRequest' smart constructor.
data GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest =
  GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest'
    { _gpdvudtrUpdateMask         :: !(Maybe GFieldMask)
    , _gpdvudtrDeidentifyTemplate :: !(Maybe GooglePrivacyDlpV2DeidentifyTemplate)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvudtrUpdateMask'
--
-- * 'gpdvudtrDeidentifyTemplate'
googlePrivacyDlpV2UpdateDeidentifyTemplateRequest
    :: GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest
googlePrivacyDlpV2UpdateDeidentifyTemplateRequest =
  GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest'
    {_gpdvudtrUpdateMask = Nothing, _gpdvudtrDeidentifyTemplate = Nothing}

-- | Mask to control which fields get updated.
gpdvudtrUpdateMask :: Lens' GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest (Maybe GFieldMask)
gpdvudtrUpdateMask
  = lens _gpdvudtrUpdateMask
      (\ s a -> s{_gpdvudtrUpdateMask = a})

-- | New DeidentifyTemplate value.
gpdvudtrDeidentifyTemplate :: Lens' GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest (Maybe GooglePrivacyDlpV2DeidentifyTemplate)
gpdvudtrDeidentifyTemplate
  = lens _gpdvudtrDeidentifyTemplate
      (\ s a -> s{_gpdvudtrDeidentifyTemplate = a})

instance FromJSON
           GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest"
              (\ o ->
                 GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest'
                   <$>
                   (o .:? "updateMask") <*>
                     (o .:? "deidentifyTemplate"))

instance ToJSON
           GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest
         where
        toJSON
          GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest'{..}
          = object
              (catMaybes
                 [("updateMask" .=) <$> _gpdvudtrUpdateMask,
                  ("deidentifyTemplate" .=) <$>
                    _gpdvudtrDeidentifyTemplate])

-- | l-diversity metric, used for analysis of reidentification risk.
--
-- /See:/ 'googlePrivacyDlpV2LDiversityConfig' smart constructor.
data GooglePrivacyDlpV2LDiversityConfig =
  GooglePrivacyDlpV2LDiversityConfig'
    { _gpdvldcSensitiveAttribute :: !(Maybe GooglePrivacyDlpV2FieldId)
    , _gpdvldcQuasiIds           :: !(Maybe [GooglePrivacyDlpV2FieldId])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2LDiversityConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvldcSensitiveAttribute'
--
-- * 'gpdvldcQuasiIds'
googlePrivacyDlpV2LDiversityConfig
    :: GooglePrivacyDlpV2LDiversityConfig
googlePrivacyDlpV2LDiversityConfig =
  GooglePrivacyDlpV2LDiversityConfig'
    {_gpdvldcSensitiveAttribute = Nothing, _gpdvldcQuasiIds = Nothing}

-- | Sensitive field for computing the l-value.
gpdvldcSensitiveAttribute :: Lens' GooglePrivacyDlpV2LDiversityConfig (Maybe GooglePrivacyDlpV2FieldId)
gpdvldcSensitiveAttribute
  = lens _gpdvldcSensitiveAttribute
      (\ s a -> s{_gpdvldcSensitiveAttribute = a})

-- | Set of quasi-identifiers indicating how equivalence classes are defined
-- for the l-diversity computation. When multiple fields are specified,
-- they are considered a single composite key.
gpdvldcQuasiIds :: Lens' GooglePrivacyDlpV2LDiversityConfig [GooglePrivacyDlpV2FieldId]
gpdvldcQuasiIds
  = lens _gpdvldcQuasiIds
      (\ s a -> s{_gpdvldcQuasiIds = a})
      . _Default
      . _Coerce

instance FromJSON GooglePrivacyDlpV2LDiversityConfig
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2LDiversityConfig"
              (\ o ->
                 GooglePrivacyDlpV2LDiversityConfig' <$>
                   (o .:? "sensitiveAttribute") <*>
                     (o .:? "quasiIds" .!= mempty))

instance ToJSON GooglePrivacyDlpV2LDiversityConfig
         where
        toJSON GooglePrivacyDlpV2LDiversityConfig'{..}
          = object
              (catMaybes
                 [("sensitiveAttribute" .=) <$>
                    _gpdvldcSensitiveAttribute,
                  ("quasiIds" .=) <$> _gpdvldcQuasiIds])

-- | Enable email notification to project owners and editors on jobs\'s
-- completion\/failure.
--
-- /See:/ 'googlePrivacyDlpV2JobNotificationEmails' smart constructor.
data GooglePrivacyDlpV2JobNotificationEmails =
  GooglePrivacyDlpV2JobNotificationEmails'
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2JobNotificationEmails' with the minimum fields required to make a request.
--
googlePrivacyDlpV2JobNotificationEmails
    :: GooglePrivacyDlpV2JobNotificationEmails
googlePrivacyDlpV2JobNotificationEmails =
  GooglePrivacyDlpV2JobNotificationEmails'

instance FromJSON
           GooglePrivacyDlpV2JobNotificationEmails
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2JobNotificationEmails"
              (\ o ->
                 pure GooglePrivacyDlpV2JobNotificationEmails')

instance ToJSON
           GooglePrivacyDlpV2JobNotificationEmails
         where
        toJSON = const emptyObject

-- | Request to de-identify a list of items.
--
-- /See:/ 'googlePrivacyDlpV2DeidentifyContentRequest' smart constructor.
data GooglePrivacyDlpV2DeidentifyContentRequest =
  GooglePrivacyDlpV2DeidentifyContentRequest'
    { _gpdvdcrInspectConfig          :: !(Maybe GooglePrivacyDlpV2InspectConfig)
    , _gpdvdcrDeidentifyConfig       :: !(Maybe GooglePrivacyDlpV2DeidentifyConfig)
    , _gpdvdcrDeidentifyTemplateName :: !(Maybe Text)
    , _gpdvdcrItem                   :: !(Maybe GooglePrivacyDlpV2ContentItem)
    , _gpdvdcrInspectTemplateName    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DeidentifyContentRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvdcrInspectConfig'
--
-- * 'gpdvdcrDeidentifyConfig'
--
-- * 'gpdvdcrDeidentifyTemplateName'
--
-- * 'gpdvdcrItem'
--
-- * 'gpdvdcrInspectTemplateName'
googlePrivacyDlpV2DeidentifyContentRequest
    :: GooglePrivacyDlpV2DeidentifyContentRequest
googlePrivacyDlpV2DeidentifyContentRequest =
  GooglePrivacyDlpV2DeidentifyContentRequest'
    { _gpdvdcrInspectConfig = Nothing
    , _gpdvdcrDeidentifyConfig = Nothing
    , _gpdvdcrDeidentifyTemplateName = Nothing
    , _gpdvdcrItem = Nothing
    , _gpdvdcrInspectTemplateName = Nothing
    }

-- | Configuration for the inspector. Items specified here will override the
-- template referenced by the inspect_template_name argument.
gpdvdcrInspectConfig :: Lens' GooglePrivacyDlpV2DeidentifyContentRequest (Maybe GooglePrivacyDlpV2InspectConfig)
gpdvdcrInspectConfig
  = lens _gpdvdcrInspectConfig
      (\ s a -> s{_gpdvdcrInspectConfig = a})

-- | Configuration for the de-identification of the content item. Items
-- specified here will override the template referenced by the
-- deidentify_template_name argument.
gpdvdcrDeidentifyConfig :: Lens' GooglePrivacyDlpV2DeidentifyContentRequest (Maybe GooglePrivacyDlpV2DeidentifyConfig)
gpdvdcrDeidentifyConfig
  = lens _gpdvdcrDeidentifyConfig
      (\ s a -> s{_gpdvdcrDeidentifyConfig = a})

-- | Optional template to use. Any configuration directly specified in
-- deidentify_config will override those set in the template. Singular
-- fields that are set in this request will replace their corresponding
-- fields in the template. Repeated fields are appended. Singular
-- sub-messages and groups are recursively merged.
gpdvdcrDeidentifyTemplateName :: Lens' GooglePrivacyDlpV2DeidentifyContentRequest (Maybe Text)
gpdvdcrDeidentifyTemplateName
  = lens _gpdvdcrDeidentifyTemplateName
      (\ s a -> s{_gpdvdcrDeidentifyTemplateName = a})

-- | The item to de-identify. Will be treated as text.
gpdvdcrItem :: Lens' GooglePrivacyDlpV2DeidentifyContentRequest (Maybe GooglePrivacyDlpV2ContentItem)
gpdvdcrItem
  = lens _gpdvdcrItem (\ s a -> s{_gpdvdcrItem = a})

-- | Optional template to use. Any configuration directly specified in
-- inspect_config will override those set in the template. Singular fields
-- that are set in this request will replace their corresponding fields in
-- the template. Repeated fields are appended. Singular sub-messages and
-- groups are recursively merged.
gpdvdcrInspectTemplateName :: Lens' GooglePrivacyDlpV2DeidentifyContentRequest (Maybe Text)
gpdvdcrInspectTemplateName
  = lens _gpdvdcrInspectTemplateName
      (\ s a -> s{_gpdvdcrInspectTemplateName = a})

instance FromJSON
           GooglePrivacyDlpV2DeidentifyContentRequest
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2DeidentifyContentRequest"
              (\ o ->
                 GooglePrivacyDlpV2DeidentifyContentRequest' <$>
                   (o .:? "inspectConfig") <*>
                     (o .:? "deidentifyConfig")
                     <*> (o .:? "deidentifyTemplateName")
                     <*> (o .:? "item")
                     <*> (o .:? "inspectTemplateName"))

instance ToJSON
           GooglePrivacyDlpV2DeidentifyContentRequest
         where
        toJSON
          GooglePrivacyDlpV2DeidentifyContentRequest'{..}
          = object
              (catMaybes
                 [("inspectConfig" .=) <$> _gpdvdcrInspectConfig,
                  ("deidentifyConfig" .=) <$> _gpdvdcrDeidentifyConfig,
                  ("deidentifyTemplateName" .=) <$>
                    _gpdvdcrDeidentifyTemplateName,
                  ("item" .=) <$> _gpdvdcrItem,
                  ("inspectTemplateName" .=) <$>
                    _gpdvdcrInspectTemplateName])

-- | Represents a color in the RGB color space.
--
-- /See:/ 'googlePrivacyDlpV2Color' smart constructor.
data GooglePrivacyDlpV2Color =
  GooglePrivacyDlpV2Color'
    { _gpdvcRed   :: !(Maybe (Textual Double))
    , _gpdvcGreen :: !(Maybe (Textual Double))
    , _gpdvcBlue  :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Color' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvcRed'
--
-- * 'gpdvcGreen'
--
-- * 'gpdvcBlue'
googlePrivacyDlpV2Color
    :: GooglePrivacyDlpV2Color
googlePrivacyDlpV2Color =
  GooglePrivacyDlpV2Color'
    {_gpdvcRed = Nothing, _gpdvcGreen = Nothing, _gpdvcBlue = Nothing}

-- | The amount of red in the color as a value in the interval [0, 1].
gpdvcRed :: Lens' GooglePrivacyDlpV2Color (Maybe Double)
gpdvcRed
  = lens _gpdvcRed (\ s a -> s{_gpdvcRed = a}) .
      mapping _Coerce

-- | The amount of green in the color as a value in the interval [0, 1].
gpdvcGreen :: Lens' GooglePrivacyDlpV2Color (Maybe Double)
gpdvcGreen
  = lens _gpdvcGreen (\ s a -> s{_gpdvcGreen = a}) .
      mapping _Coerce

-- | The amount of blue in the color as a value in the interval [0, 1].
gpdvcBlue :: Lens' GooglePrivacyDlpV2Color (Maybe Double)
gpdvcBlue
  = lens _gpdvcBlue (\ s a -> s{_gpdvcBlue = a}) .
      mapping _Coerce

instance FromJSON GooglePrivacyDlpV2Color where
        parseJSON
          = withObject "GooglePrivacyDlpV2Color"
              (\ o ->
                 GooglePrivacyDlpV2Color' <$>
                   (o .:? "red") <*> (o .:? "green") <*> (o .:? "blue"))

instance ToJSON GooglePrivacyDlpV2Color where
        toJSON GooglePrivacyDlpV2Color'{..}
          = object
              (catMaybes
                 [("red" .=) <$> _gpdvcRed,
                  ("green" .=) <$> _gpdvcGreen,
                  ("blue" .=) <$> _gpdvcBlue])

-- | The response message for listing DLP jobs.
--
-- /See:/ 'googlePrivacyDlpV2ListDlpJobsResponse' smart constructor.
data GooglePrivacyDlpV2ListDlpJobsResponse =
  GooglePrivacyDlpV2ListDlpJobsResponse'
    { _gpdvldjrNextPageToken :: !(Maybe Text)
    , _gpdvldjrJobs          :: !(Maybe [GooglePrivacyDlpV2DlpJob])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ListDlpJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvldjrNextPageToken'
--
-- * 'gpdvldjrJobs'
googlePrivacyDlpV2ListDlpJobsResponse
    :: GooglePrivacyDlpV2ListDlpJobsResponse
googlePrivacyDlpV2ListDlpJobsResponse =
  GooglePrivacyDlpV2ListDlpJobsResponse'
    {_gpdvldjrNextPageToken = Nothing, _gpdvldjrJobs = Nothing}

-- | The standard List next-page token.
gpdvldjrNextPageToken :: Lens' GooglePrivacyDlpV2ListDlpJobsResponse (Maybe Text)
gpdvldjrNextPageToken
  = lens _gpdvldjrNextPageToken
      (\ s a -> s{_gpdvldjrNextPageToken = a})

-- | A list of DlpJobs that matches the specified filter in the request.
gpdvldjrJobs :: Lens' GooglePrivacyDlpV2ListDlpJobsResponse [GooglePrivacyDlpV2DlpJob]
gpdvldjrJobs
  = lens _gpdvldjrJobs (\ s a -> s{_gpdvldjrJobs = a})
      . _Default
      . _Coerce

instance FromJSON
           GooglePrivacyDlpV2ListDlpJobsResponse
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2ListDlpJobsResponse"
              (\ o ->
                 GooglePrivacyDlpV2ListDlpJobsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "jobs" .!= mempty))

instance ToJSON GooglePrivacyDlpV2ListDlpJobsResponse
         where
        toJSON GooglePrivacyDlpV2ListDlpJobsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gpdvldjrNextPageToken,
                  ("jobs" .=) <$> _gpdvldjrJobs])

-- | Message for specifying a window around a finding to apply a detection
-- rule.
--
-- /See:/ 'googlePrivacyDlpV2Proximity' smart constructor.
data GooglePrivacyDlpV2Proximity =
  GooglePrivacyDlpV2Proximity'
    { _gpdvpWindowAfter  :: !(Maybe (Textual Int32))
    , _gpdvpWindowBefore :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Proximity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvpWindowAfter'
--
-- * 'gpdvpWindowBefore'
googlePrivacyDlpV2Proximity
    :: GooglePrivacyDlpV2Proximity
googlePrivacyDlpV2Proximity =
  GooglePrivacyDlpV2Proximity'
    {_gpdvpWindowAfter = Nothing, _gpdvpWindowBefore = Nothing}

-- | Number of characters after the finding to consider.
gpdvpWindowAfter :: Lens' GooglePrivacyDlpV2Proximity (Maybe Int32)
gpdvpWindowAfter
  = lens _gpdvpWindowAfter
      (\ s a -> s{_gpdvpWindowAfter = a})
      . mapping _Coerce

-- | Number of characters before the finding to consider.
gpdvpWindowBefore :: Lens' GooglePrivacyDlpV2Proximity (Maybe Int32)
gpdvpWindowBefore
  = lens _gpdvpWindowBefore
      (\ s a -> s{_gpdvpWindowBefore = a})
      . mapping _Coerce

instance FromJSON GooglePrivacyDlpV2Proximity where
        parseJSON
          = withObject "GooglePrivacyDlpV2Proximity"
              (\ o ->
                 GooglePrivacyDlpV2Proximity' <$>
                   (o .:? "windowAfter") <*> (o .:? "windowBefore"))

instance ToJSON GooglePrivacyDlpV2Proximity where
        toJSON GooglePrivacyDlpV2Proximity'{..}
          = object
              (catMaybes
                 [("windowAfter" .=) <$> _gpdvpWindowAfter,
                  ("windowBefore" .=) <$> _gpdvpWindowBefore])

-- | Represents a piece of potentially sensitive content.
--
-- /See:/ 'googlePrivacyDlpV2Finding' smart constructor.
data GooglePrivacyDlpV2Finding =
  GooglePrivacyDlpV2Finding'
    { _gpdvfLocation   :: !(Maybe GooglePrivacyDlpV2Location)
    , _gpdvfInfoType   :: !(Maybe GooglePrivacyDlpV2InfoType)
    , _gpdvfQuoteInfo  :: !(Maybe GooglePrivacyDlpV2QuoteInfo)
    , _gpdvfLikelihood :: !(Maybe GooglePrivacyDlpV2FindingLikelihood)
    , _gpdvfQuote      :: !(Maybe Text)
    , _gpdvfCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Finding' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvfLocation'
--
-- * 'gpdvfInfoType'
--
-- * 'gpdvfQuoteInfo'
--
-- * 'gpdvfLikelihood'
--
-- * 'gpdvfQuote'
--
-- * 'gpdvfCreateTime'
googlePrivacyDlpV2Finding
    :: GooglePrivacyDlpV2Finding
googlePrivacyDlpV2Finding =
  GooglePrivacyDlpV2Finding'
    { _gpdvfLocation = Nothing
    , _gpdvfInfoType = Nothing
    , _gpdvfQuoteInfo = Nothing
    , _gpdvfLikelihood = Nothing
    , _gpdvfQuote = Nothing
    , _gpdvfCreateTime = Nothing
    }

-- | Where the content was found.
gpdvfLocation :: Lens' GooglePrivacyDlpV2Finding (Maybe GooglePrivacyDlpV2Location)
gpdvfLocation
  = lens _gpdvfLocation
      (\ s a -> s{_gpdvfLocation = a})

-- | The type of content that might have been found. Provided if
-- \`excluded_types\` is false.
gpdvfInfoType :: Lens' GooglePrivacyDlpV2Finding (Maybe GooglePrivacyDlpV2InfoType)
gpdvfInfoType
  = lens _gpdvfInfoType
      (\ s a -> s{_gpdvfInfoType = a})

-- | Contains data parsed from quotes. Only populated if include_quote was
-- set to true and a supported infoType was requested. Currently supported
-- infoTypes: DATE, DATE_OF_BIRTH and TIME.
gpdvfQuoteInfo :: Lens' GooglePrivacyDlpV2Finding (Maybe GooglePrivacyDlpV2QuoteInfo)
gpdvfQuoteInfo
  = lens _gpdvfQuoteInfo
      (\ s a -> s{_gpdvfQuoteInfo = a})

-- | Confidence of how likely it is that the \`info_type\` is correct.
gpdvfLikelihood :: Lens' GooglePrivacyDlpV2Finding (Maybe GooglePrivacyDlpV2FindingLikelihood)
gpdvfLikelihood
  = lens _gpdvfLikelihood
      (\ s a -> s{_gpdvfLikelihood = a})

-- | The content that was found. Even if the content is not textual, it may
-- be converted to a textual representation here. Provided if
-- \`include_quote\` is true and the finding is less than or equal to 4096
-- bytes long. If the finding exceeds 4096 bytes in length, the quote may
-- be omitted.
gpdvfQuote :: Lens' GooglePrivacyDlpV2Finding (Maybe Text)
gpdvfQuote
  = lens _gpdvfQuote (\ s a -> s{_gpdvfQuote = a})

-- | Timestamp when finding was detected.
gpdvfCreateTime :: Lens' GooglePrivacyDlpV2Finding (Maybe UTCTime)
gpdvfCreateTime
  = lens _gpdvfCreateTime
      (\ s a -> s{_gpdvfCreateTime = a})
      . mapping _DateTime

instance FromJSON GooglePrivacyDlpV2Finding where
        parseJSON
          = withObject "GooglePrivacyDlpV2Finding"
              (\ o ->
                 GooglePrivacyDlpV2Finding' <$>
                   (o .:? "location") <*> (o .:? "infoType") <*>
                     (o .:? "quoteInfo")
                     <*> (o .:? "likelihood")
                     <*> (o .:? "quote")
                     <*> (o .:? "createTime"))

instance ToJSON GooglePrivacyDlpV2Finding where
        toJSON GooglePrivacyDlpV2Finding'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _gpdvfLocation,
                  ("infoType" .=) <$> _gpdvfInfoType,
                  ("quoteInfo" .=) <$> _gpdvfQuoteInfo,
                  ("likelihood" .=) <$> _gpdvfLikelihood,
                  ("quote" .=) <$> _gpdvfQuote,
                  ("createTime" .=) <$> _gpdvfCreateTime])

-- | A collection that informs the user the number of times a particular
-- \`TransformationResultCode\` and error details occurred.
--
-- /See:/ 'googlePrivacyDlpV2SummaryResult' smart constructor.
data GooglePrivacyDlpV2SummaryResult =
  GooglePrivacyDlpV2SummaryResult'
    { _gpdvsrCount   :: !(Maybe (Textual Int64))
    , _gpdvsrDetails :: !(Maybe Text)
    , _gpdvsrCode    :: !(Maybe GooglePrivacyDlpV2SummaryResultCode)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2SummaryResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvsrCount'
--
-- * 'gpdvsrDetails'
--
-- * 'gpdvsrCode'
googlePrivacyDlpV2SummaryResult
    :: GooglePrivacyDlpV2SummaryResult
googlePrivacyDlpV2SummaryResult =
  GooglePrivacyDlpV2SummaryResult'
    {_gpdvsrCount = Nothing, _gpdvsrDetails = Nothing, _gpdvsrCode = Nothing}

gpdvsrCount :: Lens' GooglePrivacyDlpV2SummaryResult (Maybe Int64)
gpdvsrCount
  = lens _gpdvsrCount (\ s a -> s{_gpdvsrCount = a}) .
      mapping _Coerce

-- | A place for warnings or errors to show up if a transformation didn\'t
-- work as expected.
gpdvsrDetails :: Lens' GooglePrivacyDlpV2SummaryResult (Maybe Text)
gpdvsrDetails
  = lens _gpdvsrDetails
      (\ s a -> s{_gpdvsrDetails = a})

gpdvsrCode :: Lens' GooglePrivacyDlpV2SummaryResult (Maybe GooglePrivacyDlpV2SummaryResultCode)
gpdvsrCode
  = lens _gpdvsrCode (\ s a -> s{_gpdvsrCode = a})

instance FromJSON GooglePrivacyDlpV2SummaryResult
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2SummaryResult"
              (\ o ->
                 GooglePrivacyDlpV2SummaryResult' <$>
                   (o .:? "count") <*> (o .:? "details") <*>
                     (o .:? "code"))

instance ToJSON GooglePrivacyDlpV2SummaryResult where
        toJSON GooglePrivacyDlpV2SummaryResult'{..}
          = object
              (catMaybes
                 [("count" .=) <$> _gpdvsrCount,
                  ("details" .=) <$> _gpdvsrDetails,
                  ("code" .=) <$> _gpdvsrCode])

--
-- /See:/ 'googlePrivacyDlpV2Row' smart constructor.
newtype GooglePrivacyDlpV2Row =
  GooglePrivacyDlpV2Row'
    { _gpdvrValues :: Maybe [GooglePrivacyDlpV2Value]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Row' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvrValues'
googlePrivacyDlpV2Row
    :: GooglePrivacyDlpV2Row
googlePrivacyDlpV2Row = GooglePrivacyDlpV2Row' {_gpdvrValues = Nothing}

gpdvrValues :: Lens' GooglePrivacyDlpV2Row [GooglePrivacyDlpV2Value]
gpdvrValues
  = lens _gpdvrValues (\ s a -> s{_gpdvrValues = a}) .
      _Default
      . _Coerce

instance FromJSON GooglePrivacyDlpV2Row where
        parseJSON
          = withObject "GooglePrivacyDlpV2Row"
              (\ o ->
                 GooglePrivacyDlpV2Row' <$>
                   (o .:? "values" .!= mempty))

instance ToJSON GooglePrivacyDlpV2Row where
        toJSON GooglePrivacyDlpV2Row'{..}
          = object (catMaybes [("values" .=) <$> _gpdvrValues])

-- | Replace each matching finding with the name of the info_type.
--
-- /See:/ 'googlePrivacyDlpV2ReplaceWithInfoTypeConfig' smart constructor.
data GooglePrivacyDlpV2ReplaceWithInfoTypeConfig =
  GooglePrivacyDlpV2ReplaceWithInfoTypeConfig'
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ReplaceWithInfoTypeConfig' with the minimum fields required to make a request.
--
googlePrivacyDlpV2ReplaceWithInfoTypeConfig
    :: GooglePrivacyDlpV2ReplaceWithInfoTypeConfig
googlePrivacyDlpV2ReplaceWithInfoTypeConfig =
  GooglePrivacyDlpV2ReplaceWithInfoTypeConfig'

instance FromJSON
           GooglePrivacyDlpV2ReplaceWithInfoTypeConfig
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2ReplaceWithInfoTypeConfig"
              (\ o ->
                 pure GooglePrivacyDlpV2ReplaceWithInfoTypeConfig')

instance ToJSON
           GooglePrivacyDlpV2ReplaceWithInfoTypeConfig
         where
        toJSON = const emptyObject

-- | Represents a time of day. The date and time zone are either not
-- significant or are specified elsewhere. An API may choose to allow leap
-- seconds. Related types are google.type.Date and
-- \`google.protobuf.Timestamp\`.
--
-- /See:/ 'googleTypeTimeOfDay' smart constructor.
data GoogleTypeTimeOfDay =
  GoogleTypeTimeOfDay'
    { _gttodNanos   :: !(Maybe (Textual Int32))
    , _gttodHours   :: !(Maybe (Textual Int32))
    , _gttodMinutes :: !(Maybe (Textual Int32))
    , _gttodSeconds :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleTypeTimeOfDay' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gttodNanos'
--
-- * 'gttodHours'
--
-- * 'gttodMinutes'
--
-- * 'gttodSeconds'
googleTypeTimeOfDay
    :: GoogleTypeTimeOfDay
googleTypeTimeOfDay =
  GoogleTypeTimeOfDay'
    { _gttodNanos = Nothing
    , _gttodHours = Nothing
    , _gttodMinutes = Nothing
    , _gttodSeconds = Nothing
    }

-- | Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
gttodNanos :: Lens' GoogleTypeTimeOfDay (Maybe Int32)
gttodNanos
  = lens _gttodNanos (\ s a -> s{_gttodNanos = a}) .
      mapping _Coerce

-- | Hours of day in 24 hour format. Should be from 0 to 23. An API may
-- choose to allow the value \"24:00:00\" for scenarios like business
-- closing time.
gttodHours :: Lens' GoogleTypeTimeOfDay (Maybe Int32)
gttodHours
  = lens _gttodHours (\ s a -> s{_gttodHours = a}) .
      mapping _Coerce

-- | Minutes of hour of day. Must be from 0 to 59.
gttodMinutes :: Lens' GoogleTypeTimeOfDay (Maybe Int32)
gttodMinutes
  = lens _gttodMinutes (\ s a -> s{_gttodMinutes = a})
      . mapping _Coerce

-- | Seconds of minutes of the time. Must normally be from 0 to 59. An API
-- may allow the value 60 if it allows leap-seconds.
gttodSeconds :: Lens' GoogleTypeTimeOfDay (Maybe Int32)
gttodSeconds
  = lens _gttodSeconds (\ s a -> s{_gttodSeconds = a})
      . mapping _Coerce

instance FromJSON GoogleTypeTimeOfDay where
        parseJSON
          = withObject "GoogleTypeTimeOfDay"
              (\ o ->
                 GoogleTypeTimeOfDay' <$>
                   (o .:? "nanos") <*> (o .:? "hours") <*>
                     (o .:? "minutes")
                     <*> (o .:? "seconds"))

instance ToJSON GoogleTypeTimeOfDay where
        toJSON GoogleTypeTimeOfDay'{..}
          = object
              (catMaybes
                 [("nanos" .=) <$> _gttodNanos,
                  ("hours" .=) <$> _gttodHours,
                  ("minutes" .=) <$> _gttodMinutes,
                  ("seconds" .=) <$> _gttodSeconds])

-- | The rule that specifies conditions when findings of infoTypes specified
-- in \`InspectionRuleSet\` are removed from results.
--
-- /See:/ 'googlePrivacyDlpV2ExclusionRule' smart constructor.
data GooglePrivacyDlpV2ExclusionRule =
  GooglePrivacyDlpV2ExclusionRule'
    { _gpdverRegex            :: !(Maybe GooglePrivacyDlpV2Regex)
    , _gpdverExcludeInfoTypes :: !(Maybe GooglePrivacyDlpV2ExcludeInfoTypes)
    , _gpdverDictionary       :: !(Maybe GooglePrivacyDlpV2Dictionary)
    , _gpdverMatchingType     :: !(Maybe GooglePrivacyDlpV2ExclusionRuleMatchingType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ExclusionRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdverRegex'
--
-- * 'gpdverExcludeInfoTypes'
--
-- * 'gpdverDictionary'
--
-- * 'gpdverMatchingType'
googlePrivacyDlpV2ExclusionRule
    :: GooglePrivacyDlpV2ExclusionRule
googlePrivacyDlpV2ExclusionRule =
  GooglePrivacyDlpV2ExclusionRule'
    { _gpdverRegex = Nothing
    , _gpdverExcludeInfoTypes = Nothing
    , _gpdverDictionary = Nothing
    , _gpdverMatchingType = Nothing
    }

-- | Regular expression which defines the rule.
gpdverRegex :: Lens' GooglePrivacyDlpV2ExclusionRule (Maybe GooglePrivacyDlpV2Regex)
gpdverRegex
  = lens _gpdverRegex (\ s a -> s{_gpdverRegex = a})

-- | Set of infoTypes for which findings would affect this rule.
gpdverExcludeInfoTypes :: Lens' GooglePrivacyDlpV2ExclusionRule (Maybe GooglePrivacyDlpV2ExcludeInfoTypes)
gpdverExcludeInfoTypes
  = lens _gpdverExcludeInfoTypes
      (\ s a -> s{_gpdverExcludeInfoTypes = a})

-- | Dictionary which defines the rule.
gpdverDictionary :: Lens' GooglePrivacyDlpV2ExclusionRule (Maybe GooglePrivacyDlpV2Dictionary)
gpdverDictionary
  = lens _gpdverDictionary
      (\ s a -> s{_gpdverDictionary = a})

-- | How the rule is applied, see MatchingType documentation for details.
gpdverMatchingType :: Lens' GooglePrivacyDlpV2ExclusionRule (Maybe GooglePrivacyDlpV2ExclusionRuleMatchingType)
gpdverMatchingType
  = lens _gpdverMatchingType
      (\ s a -> s{_gpdverMatchingType = a})

instance FromJSON GooglePrivacyDlpV2ExclusionRule
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2ExclusionRule"
              (\ o ->
                 GooglePrivacyDlpV2ExclusionRule' <$>
                   (o .:? "regex") <*> (o .:? "excludeInfoTypes") <*>
                     (o .:? "dictionary")
                     <*> (o .:? "matchingType"))

instance ToJSON GooglePrivacyDlpV2ExclusionRule where
        toJSON GooglePrivacyDlpV2ExclusionRule'{..}
          = object
              (catMaybes
                 [("regex" .=) <$> _gpdverRegex,
                  ("excludeInfoTypes" .=) <$> _gpdverExcludeInfoTypes,
                  ("dictionary" .=) <$> _gpdverDictionary,
                  ("matchingType" .=) <$> _gpdverMatchingType])

-- | Request message for CreateDlpJobRequest. Used to initiate long running
-- jobs such as calculating risk metrics or inspecting Google Cloud
-- Storage.
--
-- /See:/ 'googlePrivacyDlpV2CreateDlpJobRequest' smart constructor.
data GooglePrivacyDlpV2CreateDlpJobRequest =
  GooglePrivacyDlpV2CreateDlpJobRequest'
    { _gpdvcdjrRiskJob    :: !(Maybe GooglePrivacyDlpV2RiskAnalysisJobConfig)
    , _gpdvcdjrJobId      :: !(Maybe Text)
    , _gpdvcdjrInspectJob :: !(Maybe GooglePrivacyDlpV2InspectJobConfig)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CreateDlpJobRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvcdjrRiskJob'
--
-- * 'gpdvcdjrJobId'
--
-- * 'gpdvcdjrInspectJob'
googlePrivacyDlpV2CreateDlpJobRequest
    :: GooglePrivacyDlpV2CreateDlpJobRequest
googlePrivacyDlpV2CreateDlpJobRequest =
  GooglePrivacyDlpV2CreateDlpJobRequest'
    { _gpdvcdjrRiskJob = Nothing
    , _gpdvcdjrJobId = Nothing
    , _gpdvcdjrInspectJob = Nothing
    }

gpdvcdjrRiskJob :: Lens' GooglePrivacyDlpV2CreateDlpJobRequest (Maybe GooglePrivacyDlpV2RiskAnalysisJobConfig)
gpdvcdjrRiskJob
  = lens _gpdvcdjrRiskJob
      (\ s a -> s{_gpdvcdjrRiskJob = a})

-- | The job id can contain uppercase and lowercase letters, numbers, and
-- hyphens; that is, it must match the regular expression:
-- \`[a-zA-Z\\\\d-]+\`. The maximum length is 100 characters. Can be empty
-- to allow the system to generate one.
gpdvcdjrJobId :: Lens' GooglePrivacyDlpV2CreateDlpJobRequest (Maybe Text)
gpdvcdjrJobId
  = lens _gpdvcdjrJobId
      (\ s a -> s{_gpdvcdjrJobId = a})

gpdvcdjrInspectJob :: Lens' GooglePrivacyDlpV2CreateDlpJobRequest (Maybe GooglePrivacyDlpV2InspectJobConfig)
gpdvcdjrInspectJob
  = lens _gpdvcdjrInspectJob
      (\ s a -> s{_gpdvcdjrInspectJob = a})

instance FromJSON
           GooglePrivacyDlpV2CreateDlpJobRequest
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2CreateDlpJobRequest"
              (\ o ->
                 GooglePrivacyDlpV2CreateDlpJobRequest' <$>
                   (o .:? "riskJob") <*> (o .:? "jobId") <*>
                     (o .:? "inspectJob"))

instance ToJSON GooglePrivacyDlpV2CreateDlpJobRequest
         where
        toJSON GooglePrivacyDlpV2CreateDlpJobRequest'{..}
          = object
              (catMaybes
                 [("riskJob" .=) <$> _gpdvcdjrRiskJob,
                  ("jobId" .=) <$> _gpdvcdjrJobId,
                  ("inspectJob" .=) <$> _gpdvcdjrInspectJob])

-- | Message for a unique key indicating a record that contains a finding.
--
-- /See:/ 'googlePrivacyDlpV2RecordKey' smart constructor.
data GooglePrivacyDlpV2RecordKey =
  GooglePrivacyDlpV2RecordKey'
    { _gpdvrkIdValues     :: !(Maybe [Text])
    , _gpdvrkDatastoreKey :: !(Maybe GooglePrivacyDlpV2DatastoreKey)
    , _gpdvrkBigQueryKey  :: !(Maybe GooglePrivacyDlpV2BigQueryKey)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2RecordKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvrkIdValues'
--
-- * 'gpdvrkDatastoreKey'
--
-- * 'gpdvrkBigQueryKey'
googlePrivacyDlpV2RecordKey
    :: GooglePrivacyDlpV2RecordKey
googlePrivacyDlpV2RecordKey =
  GooglePrivacyDlpV2RecordKey'
    { _gpdvrkIdValues = Nothing
    , _gpdvrkDatastoreKey = Nothing
    , _gpdvrkBigQueryKey = Nothing
    }

-- | Values of identifying columns in the given row. Order of values matches
-- the order of field identifiers specified in the scanning request.
gpdvrkIdValues :: Lens' GooglePrivacyDlpV2RecordKey [Text]
gpdvrkIdValues
  = lens _gpdvrkIdValues
      (\ s a -> s{_gpdvrkIdValues = a})
      . _Default
      . _Coerce

gpdvrkDatastoreKey :: Lens' GooglePrivacyDlpV2RecordKey (Maybe GooglePrivacyDlpV2DatastoreKey)
gpdvrkDatastoreKey
  = lens _gpdvrkDatastoreKey
      (\ s a -> s{_gpdvrkDatastoreKey = a})

gpdvrkBigQueryKey :: Lens' GooglePrivacyDlpV2RecordKey (Maybe GooglePrivacyDlpV2BigQueryKey)
gpdvrkBigQueryKey
  = lens _gpdvrkBigQueryKey
      (\ s a -> s{_gpdvrkBigQueryKey = a})

instance FromJSON GooglePrivacyDlpV2RecordKey where
        parseJSON
          = withObject "GooglePrivacyDlpV2RecordKey"
              (\ o ->
                 GooglePrivacyDlpV2RecordKey' <$>
                   (o .:? "idValues" .!= mempty) <*>
                     (o .:? "datastoreKey")
                     <*> (o .:? "bigQueryKey"))

instance ToJSON GooglePrivacyDlpV2RecordKey where
        toJSON GooglePrivacyDlpV2RecordKey'{..}
          = object
              (catMaybes
                 [("idValues" .=) <$> _gpdvrkIdValues,
                  ("datastoreKey" .=) <$> _gpdvrkDatastoreKey,
                  ("bigQueryKey" .=) <$> _gpdvrkBigQueryKey])

-- | A KMapEstimationHistogramBucket message with the following values:
-- min_anonymity: 3 max_anonymity: 5 frequency: 42 means that there are 42
-- records whose quasi-identifier values correspond to 3, 4 or 5 people in
-- the overlying population. An important particular case is when
-- min_anonymity = max_anonymity = 1: the frequency field then corresponds
-- to the number of uniquely identifiable records.
--
-- /See:/ 'googlePrivacyDlpV2KMapEstimationHistogramBucket' smart constructor.
data GooglePrivacyDlpV2KMapEstimationHistogramBucket =
  GooglePrivacyDlpV2KMapEstimationHistogramBucket'
    { _gpdvkmehbMaxAnonymity     :: !(Maybe (Textual Int64))
    , _gpdvkmehbBucketValues     :: !(Maybe [GooglePrivacyDlpV2KMapEstimationQuasiIdValues])
    , _gpdvkmehbMinAnonymity     :: !(Maybe (Textual Int64))
    , _gpdvkmehbBucketSize       :: !(Maybe (Textual Int64))
    , _gpdvkmehbBucketValueCount :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2KMapEstimationHistogramBucket' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvkmehbMaxAnonymity'
--
-- * 'gpdvkmehbBucketValues'
--
-- * 'gpdvkmehbMinAnonymity'
--
-- * 'gpdvkmehbBucketSize'
--
-- * 'gpdvkmehbBucketValueCount'
googlePrivacyDlpV2KMapEstimationHistogramBucket
    :: GooglePrivacyDlpV2KMapEstimationHistogramBucket
googlePrivacyDlpV2KMapEstimationHistogramBucket =
  GooglePrivacyDlpV2KMapEstimationHistogramBucket'
    { _gpdvkmehbMaxAnonymity = Nothing
    , _gpdvkmehbBucketValues = Nothing
    , _gpdvkmehbMinAnonymity = Nothing
    , _gpdvkmehbBucketSize = Nothing
    , _gpdvkmehbBucketValueCount = Nothing
    }

-- | Always greater than or equal to min_anonymity.
gpdvkmehbMaxAnonymity :: Lens' GooglePrivacyDlpV2KMapEstimationHistogramBucket (Maybe Int64)
gpdvkmehbMaxAnonymity
  = lens _gpdvkmehbMaxAnonymity
      (\ s a -> s{_gpdvkmehbMaxAnonymity = a})
      . mapping _Coerce

-- | Sample of quasi-identifier tuple values in this bucket. The total number
-- of classes returned per bucket is capped at 20.
gpdvkmehbBucketValues :: Lens' GooglePrivacyDlpV2KMapEstimationHistogramBucket [GooglePrivacyDlpV2KMapEstimationQuasiIdValues]
gpdvkmehbBucketValues
  = lens _gpdvkmehbBucketValues
      (\ s a -> s{_gpdvkmehbBucketValues = a})
      . _Default
      . _Coerce

-- | Always positive.
gpdvkmehbMinAnonymity :: Lens' GooglePrivacyDlpV2KMapEstimationHistogramBucket (Maybe Int64)
gpdvkmehbMinAnonymity
  = lens _gpdvkmehbMinAnonymity
      (\ s a -> s{_gpdvkmehbMinAnonymity = a})
      . mapping _Coerce

-- | Number of records within these anonymity bounds.
gpdvkmehbBucketSize :: Lens' GooglePrivacyDlpV2KMapEstimationHistogramBucket (Maybe Int64)
gpdvkmehbBucketSize
  = lens _gpdvkmehbBucketSize
      (\ s a -> s{_gpdvkmehbBucketSize = a})
      . mapping _Coerce

-- | Total number of distinct quasi-identifier tuple values in this bucket.
gpdvkmehbBucketValueCount :: Lens' GooglePrivacyDlpV2KMapEstimationHistogramBucket (Maybe Int64)
gpdvkmehbBucketValueCount
  = lens _gpdvkmehbBucketValueCount
      (\ s a -> s{_gpdvkmehbBucketValueCount = a})
      . mapping _Coerce

instance FromJSON
           GooglePrivacyDlpV2KMapEstimationHistogramBucket
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2KMapEstimationHistogramBucket"
              (\ o ->
                 GooglePrivacyDlpV2KMapEstimationHistogramBucket' <$>
                   (o .:? "maxAnonymity") <*>
                     (o .:? "bucketValues" .!= mempty)
                     <*> (o .:? "minAnonymity")
                     <*> (o .:? "bucketSize")
                     <*> (o .:? "bucketValueCount"))

instance ToJSON
           GooglePrivacyDlpV2KMapEstimationHistogramBucket
         where
        toJSON
          GooglePrivacyDlpV2KMapEstimationHistogramBucket'{..}
          = object
              (catMaybes
                 [("maxAnonymity" .=) <$> _gpdvkmehbMaxAnonymity,
                  ("bucketValues" .=) <$> _gpdvkmehbBucketValues,
                  ("minAnonymity" .=) <$> _gpdvkmehbMinAnonymity,
                  ("bucketSize" .=) <$> _gpdvkmehbBucketSize,
                  ("bucketValueCount" .=) <$>
                    _gpdvkmehbBucketValueCount])

-- | Response message for ListDeidentifyTemplates.
--
-- /See:/ 'googlePrivacyDlpV2ListDeidentifyTemplatesResponse' smart constructor.
data GooglePrivacyDlpV2ListDeidentifyTemplatesResponse =
  GooglePrivacyDlpV2ListDeidentifyTemplatesResponse'
    { _gpdvldtrNextPageToken       :: !(Maybe Text)
    , _gpdvldtrDeidentifyTemplates :: !(Maybe [GooglePrivacyDlpV2DeidentifyTemplate])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ListDeidentifyTemplatesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvldtrNextPageToken'
--
-- * 'gpdvldtrDeidentifyTemplates'
googlePrivacyDlpV2ListDeidentifyTemplatesResponse
    :: GooglePrivacyDlpV2ListDeidentifyTemplatesResponse
googlePrivacyDlpV2ListDeidentifyTemplatesResponse =
  GooglePrivacyDlpV2ListDeidentifyTemplatesResponse'
    {_gpdvldtrNextPageToken = Nothing, _gpdvldtrDeidentifyTemplates = Nothing}

-- | If the next page is available then the next page token to be used in
-- following ListDeidentifyTemplates request.
gpdvldtrNextPageToken :: Lens' GooglePrivacyDlpV2ListDeidentifyTemplatesResponse (Maybe Text)
gpdvldtrNextPageToken
  = lens _gpdvldtrNextPageToken
      (\ s a -> s{_gpdvldtrNextPageToken = a})

-- | List of deidentify templates, up to page_size in
-- ListDeidentifyTemplatesRequest.
gpdvldtrDeidentifyTemplates :: Lens' GooglePrivacyDlpV2ListDeidentifyTemplatesResponse [GooglePrivacyDlpV2DeidentifyTemplate]
gpdvldtrDeidentifyTemplates
  = lens _gpdvldtrDeidentifyTemplates
      (\ s a -> s{_gpdvldtrDeidentifyTemplates = a})
      . _Default
      . _Coerce

instance FromJSON
           GooglePrivacyDlpV2ListDeidentifyTemplatesResponse
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2ListDeidentifyTemplatesResponse"
              (\ o ->
                 GooglePrivacyDlpV2ListDeidentifyTemplatesResponse'
                   <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "deidentifyTemplates" .!= mempty))

instance ToJSON
           GooglePrivacyDlpV2ListDeidentifyTemplatesResponse
         where
        toJSON
          GooglePrivacyDlpV2ListDeidentifyTemplatesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gpdvldtrNextPageToken,
                  ("deidentifyTemplates" .=) <$>
                    _gpdvldtrDeidentifyTemplates])

-- | k-anonymity metric, used for analysis of reidentification risk.
--
-- /See:/ 'googlePrivacyDlpV2KAnonymityConfig' smart constructor.
data GooglePrivacyDlpV2KAnonymityConfig =
  GooglePrivacyDlpV2KAnonymityConfig'
    { _gpdvkacEntityId :: !(Maybe GooglePrivacyDlpV2EntityId)
    , _gpdvkacQuasiIds :: !(Maybe [GooglePrivacyDlpV2FieldId])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2KAnonymityConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvkacEntityId'
--
-- * 'gpdvkacQuasiIds'
googlePrivacyDlpV2KAnonymityConfig
    :: GooglePrivacyDlpV2KAnonymityConfig
googlePrivacyDlpV2KAnonymityConfig =
  GooglePrivacyDlpV2KAnonymityConfig'
    {_gpdvkacEntityId = Nothing, _gpdvkacQuasiIds = Nothing}

-- | Optional message indicating that multiple rows might be associated to a
-- single individual. If the same entity_id is associated to multiple
-- quasi-identifier tuples over distinct rows, we consider the entire
-- collection of tuples as the composite quasi-identifier. This collection
-- is a multiset: the order in which the different tuples appear in the
-- dataset is ignored, but their frequency is taken into account. Important
-- note: a maximum of 1000 rows can be associated to a single entity ID. If
-- more rows are associated with the same entity ID, some might be ignored.
gpdvkacEntityId :: Lens' GooglePrivacyDlpV2KAnonymityConfig (Maybe GooglePrivacyDlpV2EntityId)
gpdvkacEntityId
  = lens _gpdvkacEntityId
      (\ s a -> s{_gpdvkacEntityId = a})

-- | Set of fields to compute k-anonymity over. When multiple fields are
-- specified, they are considered a single composite key. Structs and
-- repeated data types are not supported; however, nested fields are
-- supported so long as they are not structs themselves or nested within a
-- repeated field.
gpdvkacQuasiIds :: Lens' GooglePrivacyDlpV2KAnonymityConfig [GooglePrivacyDlpV2FieldId]
gpdvkacQuasiIds
  = lens _gpdvkacQuasiIds
      (\ s a -> s{_gpdvkacQuasiIds = a})
      . _Default
      . _Coerce

instance FromJSON GooglePrivacyDlpV2KAnonymityConfig
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2KAnonymityConfig"
              (\ o ->
                 GooglePrivacyDlpV2KAnonymityConfig' <$>
                   (o .:? "entityId") <*> (o .:? "quasiIds" .!= mempty))

instance ToJSON GooglePrivacyDlpV2KAnonymityConfig
         where
        toJSON GooglePrivacyDlpV2KAnonymityConfig'{..}
          = object
              (catMaybes
                 [("entityId" .=) <$> _gpdvkacEntityId,
                  ("quasiIds" .=) <$> _gpdvkacQuasiIds])

-- | Results of de-identifying a ContentItem.
--
-- /See:/ 'googlePrivacyDlpV2DeidentifyContentResponse' smart constructor.
data GooglePrivacyDlpV2DeidentifyContentResponse =
  GooglePrivacyDlpV2DeidentifyContentResponse'
    { _gOverview :: !(Maybe GooglePrivacyDlpV2TransformationOverview)
    , _gItem     :: !(Maybe GooglePrivacyDlpV2ContentItem)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DeidentifyContentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gOverview'
--
-- * 'gItem'
googlePrivacyDlpV2DeidentifyContentResponse
    :: GooglePrivacyDlpV2DeidentifyContentResponse
googlePrivacyDlpV2DeidentifyContentResponse =
  GooglePrivacyDlpV2DeidentifyContentResponse'
    {_gOverview = Nothing, _gItem = Nothing}

-- | An overview of the changes that were made on the \`item\`.
gOverview :: Lens' GooglePrivacyDlpV2DeidentifyContentResponse (Maybe GooglePrivacyDlpV2TransformationOverview)
gOverview
  = lens _gOverview (\ s a -> s{_gOverview = a})

-- | The de-identified item.
gItem :: Lens' GooglePrivacyDlpV2DeidentifyContentResponse (Maybe GooglePrivacyDlpV2ContentItem)
gItem = lens _gItem (\ s a -> s{_gItem = a})

instance FromJSON
           GooglePrivacyDlpV2DeidentifyContentResponse
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2DeidentifyContentResponse"
              (\ o ->
                 GooglePrivacyDlpV2DeidentifyContentResponse' <$>
                   (o .:? "overview") <*> (o .:? "item"))

instance ToJSON
           GooglePrivacyDlpV2DeidentifyContentResponse
         where
        toJSON
          GooglePrivacyDlpV2DeidentifyContentResponse'{..}
          = object
              (catMaybes
                 [("overview" .=) <$> _gOverview,
                  ("item" .=) <$> _gItem])

-- | Contains a configuration to make dlp api calls on a repeating basis. See
-- https:\/\/cloud.google.com\/dlp\/docs\/concepts-job-triggers to learn
-- more.
--
-- /See:/ 'googlePrivacyDlpV2JobTrigger' smart constructor.
data GooglePrivacyDlpV2JobTrigger =
  GooglePrivacyDlpV2JobTrigger'
    { _gpdvjtStatus      :: !(Maybe GooglePrivacyDlpV2JobTriggerStatus)
    , _gpdvjtTriggers    :: !(Maybe [GooglePrivacyDlpV2Trigger])
    , _gpdvjtLastRunTime :: !(Maybe DateTime')
    , _gpdvjtInspectJob  :: !(Maybe GooglePrivacyDlpV2InspectJobConfig)
    , _gpdvjtUpdateTime  :: !(Maybe DateTime')
    , _gpdvjtName        :: !(Maybe Text)
    , _gpdvjtDisplayName :: !(Maybe Text)
    , _gpdvjtErrors      :: !(Maybe [GooglePrivacyDlpV2Error])
    , _gpdvjtDescription :: !(Maybe Text)
    , _gpdvjtCreateTime  :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2JobTrigger' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvjtStatus'
--
-- * 'gpdvjtTriggers'
--
-- * 'gpdvjtLastRunTime'
--
-- * 'gpdvjtInspectJob'
--
-- * 'gpdvjtUpdateTime'
--
-- * 'gpdvjtName'
--
-- * 'gpdvjtDisplayName'
--
-- * 'gpdvjtErrors'
--
-- * 'gpdvjtDescription'
--
-- * 'gpdvjtCreateTime'
googlePrivacyDlpV2JobTrigger
    :: GooglePrivacyDlpV2JobTrigger
googlePrivacyDlpV2JobTrigger =
  GooglePrivacyDlpV2JobTrigger'
    { _gpdvjtStatus = Nothing
    , _gpdvjtTriggers = Nothing
    , _gpdvjtLastRunTime = Nothing
    , _gpdvjtInspectJob = Nothing
    , _gpdvjtUpdateTime = Nothing
    , _gpdvjtName = Nothing
    , _gpdvjtDisplayName = Nothing
    , _gpdvjtErrors = Nothing
    , _gpdvjtDescription = Nothing
    , _gpdvjtCreateTime = Nothing
    }

-- | A status for this trigger. [required]
gpdvjtStatus :: Lens' GooglePrivacyDlpV2JobTrigger (Maybe GooglePrivacyDlpV2JobTriggerStatus)
gpdvjtStatus
  = lens _gpdvjtStatus (\ s a -> s{_gpdvjtStatus = a})

-- | A list of triggers which will be OR\'ed together. Only one in the list
-- needs to trigger for a job to be started. The list may contain only a
-- single Schedule trigger and must have at least one object.
gpdvjtTriggers :: Lens' GooglePrivacyDlpV2JobTrigger [GooglePrivacyDlpV2Trigger]
gpdvjtTriggers
  = lens _gpdvjtTriggers
      (\ s a -> s{_gpdvjtTriggers = a})
      . _Default
      . _Coerce

-- | The timestamp of the last time this trigger executed, output only field.
gpdvjtLastRunTime :: Lens' GooglePrivacyDlpV2JobTrigger (Maybe UTCTime)
gpdvjtLastRunTime
  = lens _gpdvjtLastRunTime
      (\ s a -> s{_gpdvjtLastRunTime = a})
      . mapping _DateTime

gpdvjtInspectJob :: Lens' GooglePrivacyDlpV2JobTrigger (Maybe GooglePrivacyDlpV2InspectJobConfig)
gpdvjtInspectJob
  = lens _gpdvjtInspectJob
      (\ s a -> s{_gpdvjtInspectJob = a})

-- | The last update timestamp of a triggeredJob, output only field.
gpdvjtUpdateTime :: Lens' GooglePrivacyDlpV2JobTrigger (Maybe UTCTime)
gpdvjtUpdateTime
  = lens _gpdvjtUpdateTime
      (\ s a -> s{_gpdvjtUpdateTime = a})
      . mapping _DateTime

-- | Unique resource name for the triggeredJob, assigned by the service when
-- the triggeredJob is created, for example
-- \`projects\/dlp-test-project\/triggeredJobs\/53234423\`.
gpdvjtName :: Lens' GooglePrivacyDlpV2JobTrigger (Maybe Text)
gpdvjtName
  = lens _gpdvjtName (\ s a -> s{_gpdvjtName = a})

-- | Display name (max 100 chars)
gpdvjtDisplayName :: Lens' GooglePrivacyDlpV2JobTrigger (Maybe Text)
gpdvjtDisplayName
  = lens _gpdvjtDisplayName
      (\ s a -> s{_gpdvjtDisplayName = a})

-- | A stream of errors encountered when the trigger was activated. Repeated
-- errors may result in the JobTrigger automatically being paused. Will
-- return the last 100 errors. Whenever the JobTrigger is modified this
-- list will be cleared. Output only field.
gpdvjtErrors :: Lens' GooglePrivacyDlpV2JobTrigger [GooglePrivacyDlpV2Error]
gpdvjtErrors
  = lens _gpdvjtErrors (\ s a -> s{_gpdvjtErrors = a})
      . _Default
      . _Coerce

-- | User provided description (max 256 chars)
gpdvjtDescription :: Lens' GooglePrivacyDlpV2JobTrigger (Maybe Text)
gpdvjtDescription
  = lens _gpdvjtDescription
      (\ s a -> s{_gpdvjtDescription = a})

-- | The creation timestamp of a triggeredJob, output only field.
gpdvjtCreateTime :: Lens' GooglePrivacyDlpV2JobTrigger (Maybe UTCTime)
gpdvjtCreateTime
  = lens _gpdvjtCreateTime
      (\ s a -> s{_gpdvjtCreateTime = a})
      . mapping _DateTime

instance FromJSON GooglePrivacyDlpV2JobTrigger where
        parseJSON
          = withObject "GooglePrivacyDlpV2JobTrigger"
              (\ o ->
                 GooglePrivacyDlpV2JobTrigger' <$>
                   (o .:? "status") <*> (o .:? "triggers" .!= mempty)
                     <*> (o .:? "lastRunTime")
                     <*> (o .:? "inspectJob")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "name")
                     <*> (o .:? "displayName")
                     <*> (o .:? "errors" .!= mempty)
                     <*> (o .:? "description")
                     <*> (o .:? "createTime"))

instance ToJSON GooglePrivacyDlpV2JobTrigger where
        toJSON GooglePrivacyDlpV2JobTrigger'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _gpdvjtStatus,
                  ("triggers" .=) <$> _gpdvjtTriggers,
                  ("lastRunTime" .=) <$> _gpdvjtLastRunTime,
                  ("inspectJob" .=) <$> _gpdvjtInspectJob,
                  ("updateTime" .=) <$> _gpdvjtUpdateTime,
                  ("name" .=) <$> _gpdvjtName,
                  ("displayName" .=) <$> _gpdvjtDisplayName,
                  ("errors" .=) <$> _gpdvjtErrors,
                  ("description" .=) <$> _gpdvjtDescription,
                  ("createTime" .=) <$> _gpdvjtCreateTime])

-- | Response message for ListStoredInfoTypes.
--
-- /See:/ 'googlePrivacyDlpV2ListStoredInfoTypesResponse' smart constructor.
data GooglePrivacyDlpV2ListStoredInfoTypesResponse =
  GooglePrivacyDlpV2ListStoredInfoTypesResponse'
    { _gpdvlsitrNextPageToken   :: !(Maybe Text)
    , _gpdvlsitrStoredInfoTypes :: !(Maybe [GooglePrivacyDlpV2StoredInfoType])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ListStoredInfoTypesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvlsitrNextPageToken'
--
-- * 'gpdvlsitrStoredInfoTypes'
googlePrivacyDlpV2ListStoredInfoTypesResponse
    :: GooglePrivacyDlpV2ListStoredInfoTypesResponse
googlePrivacyDlpV2ListStoredInfoTypesResponse =
  GooglePrivacyDlpV2ListStoredInfoTypesResponse'
    {_gpdvlsitrNextPageToken = Nothing, _gpdvlsitrStoredInfoTypes = Nothing}

-- | If the next page is available then the next page token to be used in
-- following ListStoredInfoTypes request.
gpdvlsitrNextPageToken :: Lens' GooglePrivacyDlpV2ListStoredInfoTypesResponse (Maybe Text)
gpdvlsitrNextPageToken
  = lens _gpdvlsitrNextPageToken
      (\ s a -> s{_gpdvlsitrNextPageToken = a})

-- | List of storedInfoTypes, up to page_size in ListStoredInfoTypesRequest.
gpdvlsitrStoredInfoTypes :: Lens' GooglePrivacyDlpV2ListStoredInfoTypesResponse [GooglePrivacyDlpV2StoredInfoType]
gpdvlsitrStoredInfoTypes
  = lens _gpdvlsitrStoredInfoTypes
      (\ s a -> s{_gpdvlsitrStoredInfoTypes = a})
      . _Default
      . _Coerce

instance FromJSON
           GooglePrivacyDlpV2ListStoredInfoTypesResponse
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2ListStoredInfoTypesResponse"
              (\ o ->
                 GooglePrivacyDlpV2ListStoredInfoTypesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "storedInfoTypes" .!= mempty))

instance ToJSON
           GooglePrivacyDlpV2ListStoredInfoTypesResponse
         where
        toJSON
          GooglePrivacyDlpV2ListStoredInfoTypesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gpdvlsitrNextPageToken,
                  ("storedInfoTypes" .=) <$>
                    _gpdvlsitrStoredInfoTypes])

-- | The set of columns\' values that share the same ldiversity value.
--
-- /See:/ 'googlePrivacyDlpV2LDiversityEquivalenceClass' smart constructor.
data GooglePrivacyDlpV2LDiversityEquivalenceClass =
  GooglePrivacyDlpV2LDiversityEquivalenceClass'
    { _gpdvldecTopSensitiveValues         :: !(Maybe [GooglePrivacyDlpV2ValueFrequency])
    , _gpdvldecEquivalenceClassSize       :: !(Maybe (Textual Int64))
    , _gpdvldecNumDistinctSensitiveValues :: !(Maybe (Textual Int64))
    , _gpdvldecQuasiIdsValues             :: !(Maybe [GooglePrivacyDlpV2Value])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2LDiversityEquivalenceClass' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvldecTopSensitiveValues'
--
-- * 'gpdvldecEquivalenceClassSize'
--
-- * 'gpdvldecNumDistinctSensitiveValues'
--
-- * 'gpdvldecQuasiIdsValues'
googlePrivacyDlpV2LDiversityEquivalenceClass
    :: GooglePrivacyDlpV2LDiversityEquivalenceClass
googlePrivacyDlpV2LDiversityEquivalenceClass =
  GooglePrivacyDlpV2LDiversityEquivalenceClass'
    { _gpdvldecTopSensitiveValues = Nothing
    , _gpdvldecEquivalenceClassSize = Nothing
    , _gpdvldecNumDistinctSensitiveValues = Nothing
    , _gpdvldecQuasiIdsValues = Nothing
    }

-- | Estimated frequencies of top sensitive values.
gpdvldecTopSensitiveValues :: Lens' GooglePrivacyDlpV2LDiversityEquivalenceClass [GooglePrivacyDlpV2ValueFrequency]
gpdvldecTopSensitiveValues
  = lens _gpdvldecTopSensitiveValues
      (\ s a -> s{_gpdvldecTopSensitiveValues = a})
      . _Default
      . _Coerce

-- | Size of the k-anonymity equivalence class.
gpdvldecEquivalenceClassSize :: Lens' GooglePrivacyDlpV2LDiversityEquivalenceClass (Maybe Int64)
gpdvldecEquivalenceClassSize
  = lens _gpdvldecEquivalenceClassSize
      (\ s a -> s{_gpdvldecEquivalenceClassSize = a})
      . mapping _Coerce

-- | Number of distinct sensitive values in this equivalence class.
gpdvldecNumDistinctSensitiveValues :: Lens' GooglePrivacyDlpV2LDiversityEquivalenceClass (Maybe Int64)
gpdvldecNumDistinctSensitiveValues
  = lens _gpdvldecNumDistinctSensitiveValues
      (\ s a -> s{_gpdvldecNumDistinctSensitiveValues = a})
      . mapping _Coerce

-- | Quasi-identifier values defining the k-anonymity equivalence class. The
-- order is always the same as the original request.
gpdvldecQuasiIdsValues :: Lens' GooglePrivacyDlpV2LDiversityEquivalenceClass [GooglePrivacyDlpV2Value]
gpdvldecQuasiIdsValues
  = lens _gpdvldecQuasiIdsValues
      (\ s a -> s{_gpdvldecQuasiIdsValues = a})
      . _Default
      . _Coerce

instance FromJSON
           GooglePrivacyDlpV2LDiversityEquivalenceClass
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2LDiversityEquivalenceClass"
              (\ o ->
                 GooglePrivacyDlpV2LDiversityEquivalenceClass' <$>
                   (o .:? "topSensitiveValues" .!= mempty) <*>
                     (o .:? "equivalenceClassSize")
                     <*> (o .:? "numDistinctSensitiveValues")
                     <*> (o .:? "quasiIdsValues" .!= mempty))

instance ToJSON
           GooglePrivacyDlpV2LDiversityEquivalenceClass
         where
        toJSON
          GooglePrivacyDlpV2LDiversityEquivalenceClass'{..}
          = object
              (catMaybes
                 [("topSensitiveValues" .=) <$>
                    _gpdvldecTopSensitiveValues,
                  ("equivalenceClassSize" .=) <$>
                    _gpdvldecEquivalenceClassSize,
                  ("numDistinctSensitiveValues" .=) <$>
                    _gpdvldecNumDistinctSensitiveValues,
                  ("quasiIdsValues" .=) <$> _gpdvldecQuasiIdsValues])

-- | The configuration that controls how the data will change.
--
-- /See:/ 'googlePrivacyDlpV2DeidentifyConfig' smart constructor.
data GooglePrivacyDlpV2DeidentifyConfig =
  GooglePrivacyDlpV2DeidentifyConfig'
    { _gpdvdcInfoTypeTransformations :: !(Maybe GooglePrivacyDlpV2InfoTypeTransformations)
    , _gpdvdcRecordTransformations   :: !(Maybe GooglePrivacyDlpV2RecordTransformations)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DeidentifyConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvdcInfoTypeTransformations'
--
-- * 'gpdvdcRecordTransformations'
googlePrivacyDlpV2DeidentifyConfig
    :: GooglePrivacyDlpV2DeidentifyConfig
googlePrivacyDlpV2DeidentifyConfig =
  GooglePrivacyDlpV2DeidentifyConfig'
    { _gpdvdcInfoTypeTransformations = Nothing
    , _gpdvdcRecordTransformations = Nothing
    }

-- | Treat the dataset as free-form text and apply the same free text
-- transformation everywhere.
gpdvdcInfoTypeTransformations :: Lens' GooglePrivacyDlpV2DeidentifyConfig (Maybe GooglePrivacyDlpV2InfoTypeTransformations)
gpdvdcInfoTypeTransformations
  = lens _gpdvdcInfoTypeTransformations
      (\ s a -> s{_gpdvdcInfoTypeTransformations = a})

-- | Treat the dataset as structured. Transformations can be applied to
-- specific locations within structured datasets, such as transforming a
-- column within a table.
gpdvdcRecordTransformations :: Lens' GooglePrivacyDlpV2DeidentifyConfig (Maybe GooglePrivacyDlpV2RecordTransformations)
gpdvdcRecordTransformations
  = lens _gpdvdcRecordTransformations
      (\ s a -> s{_gpdvdcRecordTransformations = a})

instance FromJSON GooglePrivacyDlpV2DeidentifyConfig
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2DeidentifyConfig"
              (\ o ->
                 GooglePrivacyDlpV2DeidentifyConfig' <$>
                   (o .:? "infoTypeTransformations") <*>
                     (o .:? "recordTransformations"))

instance ToJSON GooglePrivacyDlpV2DeidentifyConfig
         where
        toJSON GooglePrivacyDlpV2DeidentifyConfig'{..}
          = object
              (catMaybes
                 [("infoTypeTransformations" .=) <$>
                    _gpdvdcInfoTypeTransformations,
                  ("recordTransformations" .=) <$>
                    _gpdvdcRecordTransformations])

-- | Partially mask a string by replacing a given number of characters with a
-- fixed character. Masking can start from the beginning or end of the
-- string. This can be used on data of any type (numbers, longs, and so on)
-- and when de-identifying structured data we\'ll attempt to preserve the
-- original data\'s type. (This allows you to take a long like 123 and
-- modify it to a string like **3.
--
-- /See:/ 'googlePrivacyDlpV2CharacterMaskConfig' smart constructor.
data GooglePrivacyDlpV2CharacterMaskConfig =
  GooglePrivacyDlpV2CharacterMaskConfig'
    { _gpdvcmcNumberToMask       :: !(Maybe (Textual Int32))
    , _gpdvcmcMaskingCharacter   :: !(Maybe Text)
    , _gpdvcmcReverseOrder       :: !(Maybe Bool)
    , _gpdvcmcCharactersToIgnore :: !(Maybe [GooglePrivacyDlpV2CharsToIgnore])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CharacterMaskConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvcmcNumberToMask'
--
-- * 'gpdvcmcMaskingCharacter'
--
-- * 'gpdvcmcReverseOrder'
--
-- * 'gpdvcmcCharactersToIgnore'
googlePrivacyDlpV2CharacterMaskConfig
    :: GooglePrivacyDlpV2CharacterMaskConfig
googlePrivacyDlpV2CharacterMaskConfig =
  GooglePrivacyDlpV2CharacterMaskConfig'
    { _gpdvcmcNumberToMask = Nothing
    , _gpdvcmcMaskingCharacter = Nothing
    , _gpdvcmcReverseOrder = Nothing
    , _gpdvcmcCharactersToIgnore = Nothing
    }

-- | Number of characters to mask. If not set, all matching chars will be
-- masked. Skipped characters do not count towards this tally.
gpdvcmcNumberToMask :: Lens' GooglePrivacyDlpV2CharacterMaskConfig (Maybe Int32)
gpdvcmcNumberToMask
  = lens _gpdvcmcNumberToMask
      (\ s a -> s{_gpdvcmcNumberToMask = a})
      . mapping _Coerce

-- | Character to mask the sensitive values—for example, \"*\" for an
-- alphabetic string such as name, or \"0\" for a numeric string such as
-- ZIP code or credit card number. String must have length 1. If not
-- supplied, we will default to \"*\" for strings, 0 for digits.
gpdvcmcMaskingCharacter :: Lens' GooglePrivacyDlpV2CharacterMaskConfig (Maybe Text)
gpdvcmcMaskingCharacter
  = lens _gpdvcmcMaskingCharacter
      (\ s a -> s{_gpdvcmcMaskingCharacter = a})

-- | Mask characters in reverse order. For example, if \`masking_character\`
-- is \'0\', number_to_mask is 14, and \`reverse_order\` is false, then
-- 1234-5678-9012-3456 -> 00000000000000-3456 If \`masking_character\` is
-- \'*\', \`number_to_mask\` is 3, and \`reverse_order\` is true, then
-- 12345 -> 12***
gpdvcmcReverseOrder :: Lens' GooglePrivacyDlpV2CharacterMaskConfig (Maybe Bool)
gpdvcmcReverseOrder
  = lens _gpdvcmcReverseOrder
      (\ s a -> s{_gpdvcmcReverseOrder = a})

-- | When masking a string, items in this list will be skipped when
-- replacing. For example, if your string is 555-555-5555 and you ask us to
-- skip \`-\` and mask 5 chars with * we would produce ***-*55-5555.
gpdvcmcCharactersToIgnore :: Lens' GooglePrivacyDlpV2CharacterMaskConfig [GooglePrivacyDlpV2CharsToIgnore]
gpdvcmcCharactersToIgnore
  = lens _gpdvcmcCharactersToIgnore
      (\ s a -> s{_gpdvcmcCharactersToIgnore = a})
      . _Default
      . _Coerce

instance FromJSON
           GooglePrivacyDlpV2CharacterMaskConfig
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2CharacterMaskConfig"
              (\ o ->
                 GooglePrivacyDlpV2CharacterMaskConfig' <$>
                   (o .:? "numberToMask") <*> (o .:? "maskingCharacter")
                     <*> (o .:? "reverseOrder")
                     <*> (o .:? "charactersToIgnore" .!= mempty))

instance ToJSON GooglePrivacyDlpV2CharacterMaskConfig
         where
        toJSON GooglePrivacyDlpV2CharacterMaskConfig'{..}
          = object
              (catMaybes
                 [("numberToMask" .=) <$> _gpdvcmcNumberToMask,
                  ("maskingCharacter" .=) <$> _gpdvcmcMaskingCharacter,
                  ("reverseOrder" .=) <$> _gpdvcmcReverseOrder,
                  ("charactersToIgnore" .=) <$>
                    _gpdvcmcCharactersToIgnore])

-- | Options defining a data set within Google Cloud Datastore.
--
-- /See:/ 'googlePrivacyDlpV2DatastoreOptions' smart constructor.
data GooglePrivacyDlpV2DatastoreOptions =
  GooglePrivacyDlpV2DatastoreOptions'
    { _gpdvdoPartitionId :: !(Maybe GooglePrivacyDlpV2PartitionId)
    , _gpdvdoKind        :: !(Maybe GooglePrivacyDlpV2KindExpression)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DatastoreOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvdoPartitionId'
--
-- * 'gpdvdoKind'
googlePrivacyDlpV2DatastoreOptions
    :: GooglePrivacyDlpV2DatastoreOptions
googlePrivacyDlpV2DatastoreOptions =
  GooglePrivacyDlpV2DatastoreOptions'
    {_gpdvdoPartitionId = Nothing, _gpdvdoKind = Nothing}

-- | A partition ID identifies a grouping of entities. The grouping is always
-- by project and namespace, however the namespace ID may be empty.
gpdvdoPartitionId :: Lens' GooglePrivacyDlpV2DatastoreOptions (Maybe GooglePrivacyDlpV2PartitionId)
gpdvdoPartitionId
  = lens _gpdvdoPartitionId
      (\ s a -> s{_gpdvdoPartitionId = a})

-- | The kind to process.
gpdvdoKind :: Lens' GooglePrivacyDlpV2DatastoreOptions (Maybe GooglePrivacyDlpV2KindExpression)
gpdvdoKind
  = lens _gpdvdoKind (\ s a -> s{_gpdvdoKind = a})

instance FromJSON GooglePrivacyDlpV2DatastoreOptions
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2DatastoreOptions"
              (\ o ->
                 GooglePrivacyDlpV2DatastoreOptions' <$>
                   (o .:? "partitionId") <*> (o .:? "kind"))

instance ToJSON GooglePrivacyDlpV2DatastoreOptions
         where
        toJSON GooglePrivacyDlpV2DatastoreOptions'{..}
          = object
              (catMaybes
                 [("partitionId" .=) <$> _gpdvdoPartitionId,
                  ("kind" .=) <$> _gpdvdoKind])

-- | A value of a field, including its frequency.
--
-- /See:/ 'googlePrivacyDlpV2ValueFrequency' smart constructor.
data GooglePrivacyDlpV2ValueFrequency =
  GooglePrivacyDlpV2ValueFrequency'
    { _gpdvvfValue :: !(Maybe GooglePrivacyDlpV2Value)
    , _gpdvvfCount :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ValueFrequency' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvvfValue'
--
-- * 'gpdvvfCount'
googlePrivacyDlpV2ValueFrequency
    :: GooglePrivacyDlpV2ValueFrequency
googlePrivacyDlpV2ValueFrequency =
  GooglePrivacyDlpV2ValueFrequency'
    {_gpdvvfValue = Nothing, _gpdvvfCount = Nothing}

-- | A value contained in the field in question.
gpdvvfValue :: Lens' GooglePrivacyDlpV2ValueFrequency (Maybe GooglePrivacyDlpV2Value)
gpdvvfValue
  = lens _gpdvvfValue (\ s a -> s{_gpdvvfValue = a})

-- | How many times the value is contained in the field.
gpdvvfCount :: Lens' GooglePrivacyDlpV2ValueFrequency (Maybe Int64)
gpdvvfCount
  = lens _gpdvvfCount (\ s a -> s{_gpdvvfCount = a}) .
      mapping _Coerce

instance FromJSON GooglePrivacyDlpV2ValueFrequency
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2ValueFrequency"
              (\ o ->
                 GooglePrivacyDlpV2ValueFrequency' <$>
                   (o .:? "value") <*> (o .:? "count"))

instance ToJSON GooglePrivacyDlpV2ValueFrequency
         where
        toJSON GooglePrivacyDlpV2ValueFrequency'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _gpdvvfValue,
                  ("count" .=) <$> _gpdvvfCount])

-- | Bounding box encompassing detected text within an image.
--
-- /See:/ 'googlePrivacyDlpV2BoundingBox' smart constructor.
data GooglePrivacyDlpV2BoundingBox =
  GooglePrivacyDlpV2BoundingBox'
    { _gpdvbbHeight :: !(Maybe (Textual Int32))
    , _gpdvbbLeft   :: !(Maybe (Textual Int32))
    , _gpdvbbWidth  :: !(Maybe (Textual Int32))
    , _gpdvbbTop    :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2BoundingBox' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvbbHeight'
--
-- * 'gpdvbbLeft'
--
-- * 'gpdvbbWidth'
--
-- * 'gpdvbbTop'
googlePrivacyDlpV2BoundingBox
    :: GooglePrivacyDlpV2BoundingBox
googlePrivacyDlpV2BoundingBox =
  GooglePrivacyDlpV2BoundingBox'
    { _gpdvbbHeight = Nothing
    , _gpdvbbLeft = Nothing
    , _gpdvbbWidth = Nothing
    , _gpdvbbTop = Nothing
    }

-- | Height of the bounding box in pixels.
gpdvbbHeight :: Lens' GooglePrivacyDlpV2BoundingBox (Maybe Int32)
gpdvbbHeight
  = lens _gpdvbbHeight (\ s a -> s{_gpdvbbHeight = a})
      . mapping _Coerce

-- | Left coordinate of the bounding box. (0,0) is upper left.
gpdvbbLeft :: Lens' GooglePrivacyDlpV2BoundingBox (Maybe Int32)
gpdvbbLeft
  = lens _gpdvbbLeft (\ s a -> s{_gpdvbbLeft = a}) .
      mapping _Coerce

-- | Width of the bounding box in pixels.
gpdvbbWidth :: Lens' GooglePrivacyDlpV2BoundingBox (Maybe Int32)
gpdvbbWidth
  = lens _gpdvbbWidth (\ s a -> s{_gpdvbbWidth = a}) .
      mapping _Coerce

-- | Top coordinate of the bounding box. (0,0) is upper left.
gpdvbbTop :: Lens' GooglePrivacyDlpV2BoundingBox (Maybe Int32)
gpdvbbTop
  = lens _gpdvbbTop (\ s a -> s{_gpdvbbTop = a}) .
      mapping _Coerce

instance FromJSON GooglePrivacyDlpV2BoundingBox where
        parseJSON
          = withObject "GooglePrivacyDlpV2BoundingBox"
              (\ o ->
                 GooglePrivacyDlpV2BoundingBox' <$>
                   (o .:? "height") <*> (o .:? "left") <*>
                     (o .:? "width")
                     <*> (o .:? "top"))

instance ToJSON GooglePrivacyDlpV2BoundingBox where
        toJSON GooglePrivacyDlpV2BoundingBox'{..}
          = object
              (catMaybes
                 [("height" .=) <$> _gpdvbbHeight,
                  ("left" .=) <$> _gpdvbbLeft,
                  ("width" .=) <$> _gpdvbbWidth,
                  ("top" .=) <$> _gpdvbbTop])

-- | Datastore partition ID. A partition ID identifies a grouping of
-- entities. The grouping is always by project and namespace, however the
-- namespace ID may be empty. A partition ID contains several dimensions:
-- project ID and namespace ID.
--
-- /See:/ 'googlePrivacyDlpV2PartitionId' smart constructor.
data GooglePrivacyDlpV2PartitionId =
  GooglePrivacyDlpV2PartitionId'
    { _gpdvpiNamespaceId :: !(Maybe Text)
    , _gpdvpiProjectId   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2PartitionId' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvpiNamespaceId'
--
-- * 'gpdvpiProjectId'
googlePrivacyDlpV2PartitionId
    :: GooglePrivacyDlpV2PartitionId
googlePrivacyDlpV2PartitionId =
  GooglePrivacyDlpV2PartitionId'
    {_gpdvpiNamespaceId = Nothing, _gpdvpiProjectId = Nothing}

-- | If not empty, the ID of the namespace to which the entities belong.
gpdvpiNamespaceId :: Lens' GooglePrivacyDlpV2PartitionId (Maybe Text)
gpdvpiNamespaceId
  = lens _gpdvpiNamespaceId
      (\ s a -> s{_gpdvpiNamespaceId = a})

-- | The ID of the project to which the entities belong.
gpdvpiProjectId :: Lens' GooglePrivacyDlpV2PartitionId (Maybe Text)
gpdvpiProjectId
  = lens _gpdvpiProjectId
      (\ s a -> s{_gpdvpiProjectId = a})

instance FromJSON GooglePrivacyDlpV2PartitionId where
        parseJSON
          = withObject "GooglePrivacyDlpV2PartitionId"
              (\ o ->
                 GooglePrivacyDlpV2PartitionId' <$>
                   (o .:? "namespaceId") <*> (o .:? "projectId"))

instance ToJSON GooglePrivacyDlpV2PartitionId where
        toJSON GooglePrivacyDlpV2PartitionId'{..}
          = object
              (catMaybes
                 [("namespaceId" .=) <$> _gpdvpiNamespaceId,
                  ("projectId" .=) <$> _gpdvpiProjectId])

-- | If set, the detailed findings will be persisted to the specified
-- OutputStorageConfig. Only a single instance of this action can be
-- specified. Compatible with: Inspect, Risk
--
-- /See:/ 'googlePrivacyDlpV2SaveFindings' smart constructor.
newtype GooglePrivacyDlpV2SaveFindings =
  GooglePrivacyDlpV2SaveFindings'
    { _gpdvsfOutputConfig :: Maybe GooglePrivacyDlpV2OutputStorageConfig
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2SaveFindings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvsfOutputConfig'
googlePrivacyDlpV2SaveFindings
    :: GooglePrivacyDlpV2SaveFindings
googlePrivacyDlpV2SaveFindings =
  GooglePrivacyDlpV2SaveFindings' {_gpdvsfOutputConfig = Nothing}

gpdvsfOutputConfig :: Lens' GooglePrivacyDlpV2SaveFindings (Maybe GooglePrivacyDlpV2OutputStorageConfig)
gpdvsfOutputConfig
  = lens _gpdvsfOutputConfig
      (\ s a -> s{_gpdvsfOutputConfig = a})

instance FromJSON GooglePrivacyDlpV2SaveFindings
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2SaveFindings"
              (\ o ->
                 GooglePrivacyDlpV2SaveFindings' <$>
                   (o .:? "outputConfig"))

instance ToJSON GooglePrivacyDlpV2SaveFindings where
        toJSON GooglePrivacyDlpV2SaveFindings'{..}
          = object
              (catMaybes
                 [("outputConfig" .=) <$> _gpdvsfOutputConfig])

-- | Version of a StoredInfoType, including the configuration used to build
-- it, create timestamp, and current state.
--
-- /See:/ 'googlePrivacyDlpV2StoredInfoTypeVersion' smart constructor.
data GooglePrivacyDlpV2StoredInfoTypeVersion =
  GooglePrivacyDlpV2StoredInfoTypeVersion'
    { _gpdvsitvState      :: !(Maybe GooglePrivacyDlpV2StoredInfoTypeVersionState)
    , _gpdvsitvConfig     :: !(Maybe GooglePrivacyDlpV2StoredInfoTypeConfig)
    , _gpdvsitvErrors     :: !(Maybe [GooglePrivacyDlpV2Error])
    , _gpdvsitvCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2StoredInfoTypeVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvsitvState'
--
-- * 'gpdvsitvConfig'
--
-- * 'gpdvsitvErrors'
--
-- * 'gpdvsitvCreateTime'
googlePrivacyDlpV2StoredInfoTypeVersion
    :: GooglePrivacyDlpV2StoredInfoTypeVersion
googlePrivacyDlpV2StoredInfoTypeVersion =
  GooglePrivacyDlpV2StoredInfoTypeVersion'
    { _gpdvsitvState = Nothing
    , _gpdvsitvConfig = Nothing
    , _gpdvsitvErrors = Nothing
    , _gpdvsitvCreateTime = Nothing
    }

-- | Stored info type version state. Read-only, updated by the system during
-- dictionary creation.
gpdvsitvState :: Lens' GooglePrivacyDlpV2StoredInfoTypeVersion (Maybe GooglePrivacyDlpV2StoredInfoTypeVersionState)
gpdvsitvState
  = lens _gpdvsitvState
      (\ s a -> s{_gpdvsitvState = a})

-- | StoredInfoType configuration.
gpdvsitvConfig :: Lens' GooglePrivacyDlpV2StoredInfoTypeVersion (Maybe GooglePrivacyDlpV2StoredInfoTypeConfig)
gpdvsitvConfig
  = lens _gpdvsitvConfig
      (\ s a -> s{_gpdvsitvConfig = a})

-- | Errors that occurred when creating this storedInfoType version, or
-- anomalies detected in the storedInfoType data that render it unusable.
-- Only the five most recent errors will be displayed, with the most recent
-- error appearing first.
--
-- For example, some of the data for stored custom dictionaries is put in
-- the user\'s Google Cloud Storage bucket, and if this data is modified or
-- deleted by the user or another system, the dictionary becomes invalid.
--
-- If any errors occur, fix the problem indicated by the error message and
-- use the UpdateStoredInfoType API method to create another version of the
-- storedInfoType to continue using it, reusing the same \`config\` if it
-- was not the source of the error.
gpdvsitvErrors :: Lens' GooglePrivacyDlpV2StoredInfoTypeVersion [GooglePrivacyDlpV2Error]
gpdvsitvErrors
  = lens _gpdvsitvErrors
      (\ s a -> s{_gpdvsitvErrors = a})
      . _Default
      . _Coerce

-- | Create timestamp of the version. Read-only, determined by the system
-- when the version is created.
gpdvsitvCreateTime :: Lens' GooglePrivacyDlpV2StoredInfoTypeVersion (Maybe UTCTime)
gpdvsitvCreateTime
  = lens _gpdvsitvCreateTime
      (\ s a -> s{_gpdvsitvCreateTime = a})
      . mapping _DateTime

instance FromJSON
           GooglePrivacyDlpV2StoredInfoTypeVersion
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2StoredInfoTypeVersion"
              (\ o ->
                 GooglePrivacyDlpV2StoredInfoTypeVersion' <$>
                   (o .:? "state") <*> (o .:? "config") <*>
                     (o .:? "errors" .!= mempty)
                     <*> (o .:? "createTime"))

instance ToJSON
           GooglePrivacyDlpV2StoredInfoTypeVersion
         where
        toJSON GooglePrivacyDlpV2StoredInfoTypeVersion'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _gpdvsitvState,
                  ("config" .=) <$> _gpdvsitvConfig,
                  ("errors" .=) <$> _gpdvsitvErrors,
                  ("createTime" .=) <$> _gpdvsitvCreateTime])

-- | Response to the ListInfoTypes request.
--
-- /See:/ 'googlePrivacyDlpV2ListInfoTypesResponse' smart constructor.
newtype GooglePrivacyDlpV2ListInfoTypesResponse =
  GooglePrivacyDlpV2ListInfoTypesResponse'
    { _gpdvlitrInfoTypes :: Maybe [GooglePrivacyDlpV2InfoTypeDescription]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ListInfoTypesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvlitrInfoTypes'
googlePrivacyDlpV2ListInfoTypesResponse
    :: GooglePrivacyDlpV2ListInfoTypesResponse
googlePrivacyDlpV2ListInfoTypesResponse =
  GooglePrivacyDlpV2ListInfoTypesResponse' {_gpdvlitrInfoTypes = Nothing}

-- | Set of sensitive infoTypes.
gpdvlitrInfoTypes :: Lens' GooglePrivacyDlpV2ListInfoTypesResponse [GooglePrivacyDlpV2InfoTypeDescription]
gpdvlitrInfoTypes
  = lens _gpdvlitrInfoTypes
      (\ s a -> s{_gpdvlitrInfoTypes = a})
      . _Default
      . _Coerce

instance FromJSON
           GooglePrivacyDlpV2ListInfoTypesResponse
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2ListInfoTypesResponse"
              (\ o ->
                 GooglePrivacyDlpV2ListInfoTypesResponse' <$>
                   (o .:? "infoTypes" .!= mempty))

instance ToJSON
           GooglePrivacyDlpV2ListInfoTypesResponse
         where
        toJSON GooglePrivacyDlpV2ListInfoTypesResponse'{..}
          = object
              (catMaybes [("infoTypes" .=) <$> _gpdvlitrInfoTypes])

-- | Findings container location data.
--
-- /See:/ 'googlePrivacyDlpV2ContentLocation' smart constructor.
data GooglePrivacyDlpV2ContentLocation =
  GooglePrivacyDlpV2ContentLocation'
    { _gpdvclImageLocation      :: !(Maybe GooglePrivacyDlpV2ImageLocation)
    , _gpdvclContainerName      :: !(Maybe Text)
    , _gpdvclContainerTimestamp :: !(Maybe DateTime')
    , _gpdvclDocumentLocation   :: !(Maybe GooglePrivacyDlpV2DocumentLocation)
    , _gpdvclContainerVersion   :: !(Maybe Text)
    , _gpdvclRecordLocation     :: !(Maybe GooglePrivacyDlpV2RecordLocation)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ContentLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvclImageLocation'
--
-- * 'gpdvclContainerName'
--
-- * 'gpdvclContainerTimestamp'
--
-- * 'gpdvclDocumentLocation'
--
-- * 'gpdvclContainerVersion'
--
-- * 'gpdvclRecordLocation'
googlePrivacyDlpV2ContentLocation
    :: GooglePrivacyDlpV2ContentLocation
googlePrivacyDlpV2ContentLocation =
  GooglePrivacyDlpV2ContentLocation'
    { _gpdvclImageLocation = Nothing
    , _gpdvclContainerName = Nothing
    , _gpdvclContainerTimestamp = Nothing
    , _gpdvclDocumentLocation = Nothing
    , _gpdvclContainerVersion = Nothing
    , _gpdvclRecordLocation = Nothing
    }

-- | Location within an image\'s pixels.
gpdvclImageLocation :: Lens' GooglePrivacyDlpV2ContentLocation (Maybe GooglePrivacyDlpV2ImageLocation)
gpdvclImageLocation
  = lens _gpdvclImageLocation
      (\ s a -> s{_gpdvclImageLocation = a})

-- | Name of the container where the finding is located. The top level name
-- is the source file name or table name. Names of some common storage
-- containers are formatted as follows: * BigQuery tables: \`:.\` * Cloud
-- Storage files: \`gs:\/\/\/\` * Datastore namespace: Nested names could
-- be absent if the embedded object has no string identifier (for an
-- example an image contained within a document).
gpdvclContainerName :: Lens' GooglePrivacyDlpV2ContentLocation (Maybe Text)
gpdvclContainerName
  = lens _gpdvclContainerName
      (\ s a -> s{_gpdvclContainerName = a})

-- | Findings container modification timestamp, if applicable. For Google
-- Cloud Storage contains last file modification timestamp. For BigQuery
-- table contains last_modified_time property. For Datastore - not
-- populated.
gpdvclContainerTimestamp :: Lens' GooglePrivacyDlpV2ContentLocation (Maybe UTCTime)
gpdvclContainerTimestamp
  = lens _gpdvclContainerTimestamp
      (\ s a -> s{_gpdvclContainerTimestamp = a})
      . mapping _DateTime

-- | Location data for document files.
gpdvclDocumentLocation :: Lens' GooglePrivacyDlpV2ContentLocation (Maybe GooglePrivacyDlpV2DocumentLocation)
gpdvclDocumentLocation
  = lens _gpdvclDocumentLocation
      (\ s a -> s{_gpdvclDocumentLocation = a})

-- | Findings container version, if available (\"generation\" for Google
-- Cloud Storage).
gpdvclContainerVersion :: Lens' GooglePrivacyDlpV2ContentLocation (Maybe Text)
gpdvclContainerVersion
  = lens _gpdvclContainerVersion
      (\ s a -> s{_gpdvclContainerVersion = a})

-- | Location within a row or record of a database table.
gpdvclRecordLocation :: Lens' GooglePrivacyDlpV2ContentLocation (Maybe GooglePrivacyDlpV2RecordLocation)
gpdvclRecordLocation
  = lens _gpdvclRecordLocation
      (\ s a -> s{_gpdvclRecordLocation = a})

instance FromJSON GooglePrivacyDlpV2ContentLocation
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2ContentLocation"
              (\ o ->
                 GooglePrivacyDlpV2ContentLocation' <$>
                   (o .:? "imageLocation") <*> (o .:? "containerName")
                     <*> (o .:? "containerTimestamp")
                     <*> (o .:? "documentLocation")
                     <*> (o .:? "containerVersion")
                     <*> (o .:? "recordLocation"))

instance ToJSON GooglePrivacyDlpV2ContentLocation
         where
        toJSON GooglePrivacyDlpV2ContentLocation'{..}
          = object
              (catMaybes
                 [("imageLocation" .=) <$> _gpdvclImageLocation,
                  ("containerName" .=) <$> _gpdvclContainerName,
                  ("containerTimestamp" .=) <$>
                    _gpdvclContainerTimestamp,
                  ("documentLocation" .=) <$> _gpdvclDocumentLocation,
                  ("containerVersion" .=) <$> _gpdvclContainerVersion,
                  ("recordLocation" .=) <$> _gpdvclRecordLocation])

-- | An auxiliary table contains statistical information on the relative
-- frequency of different quasi-identifiers values. It has one or several
-- quasi-identifiers columns, and one column that indicates the relative
-- frequency of each quasi-identifier tuple. If a tuple is present in the
-- data but not in the auxiliary table, the corresponding relative
-- frequency is assumed to be zero (and thus, the tuple is highly
-- reidentifiable).
--
-- /See:/ 'googlePrivacyDlpV2AuxiliaryTable' smart constructor.
data GooglePrivacyDlpV2AuxiliaryTable =
  GooglePrivacyDlpV2AuxiliaryTable'
    { _gpdvatRelativeFrequency :: !(Maybe GooglePrivacyDlpV2FieldId)
    , _gpdvatTable             :: !(Maybe GooglePrivacyDlpV2BigQueryTable)
    , _gpdvatQuasiIds          :: !(Maybe [GooglePrivacyDlpV2QuasiIdField])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2AuxiliaryTable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvatRelativeFrequency'
--
-- * 'gpdvatTable'
--
-- * 'gpdvatQuasiIds'
googlePrivacyDlpV2AuxiliaryTable
    :: GooglePrivacyDlpV2AuxiliaryTable
googlePrivacyDlpV2AuxiliaryTable =
  GooglePrivacyDlpV2AuxiliaryTable'
    { _gpdvatRelativeFrequency = Nothing
    , _gpdvatTable = Nothing
    , _gpdvatQuasiIds = Nothing
    }

-- | The relative frequency column must contain a floating-point number
-- between 0 and 1 (inclusive). Null values are assumed to be zero.
-- [required]
gpdvatRelativeFrequency :: Lens' GooglePrivacyDlpV2AuxiliaryTable (Maybe GooglePrivacyDlpV2FieldId)
gpdvatRelativeFrequency
  = lens _gpdvatRelativeFrequency
      (\ s a -> s{_gpdvatRelativeFrequency = a})

-- | Auxiliary table location. [required]
gpdvatTable :: Lens' GooglePrivacyDlpV2AuxiliaryTable (Maybe GooglePrivacyDlpV2BigQueryTable)
gpdvatTable
  = lens _gpdvatTable (\ s a -> s{_gpdvatTable = a})

-- | Quasi-identifier columns. [required]
gpdvatQuasiIds :: Lens' GooglePrivacyDlpV2AuxiliaryTable [GooglePrivacyDlpV2QuasiIdField]
gpdvatQuasiIds
  = lens _gpdvatQuasiIds
      (\ s a -> s{_gpdvatQuasiIds = a})
      . _Default
      . _Coerce

instance FromJSON GooglePrivacyDlpV2AuxiliaryTable
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2AuxiliaryTable"
              (\ o ->
                 GooglePrivacyDlpV2AuxiliaryTable' <$>
                   (o .:? "relativeFrequency") <*> (o .:? "table") <*>
                     (o .:? "quasiIds" .!= mempty))

instance ToJSON GooglePrivacyDlpV2AuxiliaryTable
         where
        toJSON GooglePrivacyDlpV2AuxiliaryTable'{..}
          = object
              (catMaybes
                 [("relativeFrequency" .=) <$>
                    _gpdvatRelativeFrequency,
                  ("table" .=) <$> _gpdvatTable,
                  ("quasiIds" .=) <$> _gpdvatQuasiIds])

-- | A DeltaPresenceEstimationHistogramBucket message with the following
-- values: min_probability: 0.1 max_probability: 0.2 frequency: 42 means
-- that there are 42 records for which δ is in [0.1, 0.2). An important
-- particular case is when min_probability = max_probability = 1: then,
-- every individual who shares this quasi-identifier combination is in the
-- dataset.
--
-- /See:/ 'googlePrivacyDlpV2DeltaPresenceEstimationHistogramBucket' smart constructor.
data GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket =
  GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket'
    { _gpdvdpehbBucketValues     :: !(Maybe [GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues])
    , _gpdvdpehbMaxProbability   :: !(Maybe (Textual Double))
    , _gpdvdpehbMinProbability   :: !(Maybe (Textual Double))
    , _gpdvdpehbBucketSize       :: !(Maybe (Textual Int64))
    , _gpdvdpehbBucketValueCount :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvdpehbBucketValues'
--
-- * 'gpdvdpehbMaxProbability'
--
-- * 'gpdvdpehbMinProbability'
--
-- * 'gpdvdpehbBucketSize'
--
-- * 'gpdvdpehbBucketValueCount'
googlePrivacyDlpV2DeltaPresenceEstimationHistogramBucket
    :: GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket
googlePrivacyDlpV2DeltaPresenceEstimationHistogramBucket =
  GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket'
    { _gpdvdpehbBucketValues = Nothing
    , _gpdvdpehbMaxProbability = Nothing
    , _gpdvdpehbMinProbability = Nothing
    , _gpdvdpehbBucketSize = Nothing
    , _gpdvdpehbBucketValueCount = Nothing
    }

-- | Sample of quasi-identifier tuple values in this bucket. The total number
-- of classes returned per bucket is capped at 20.
gpdvdpehbBucketValues :: Lens' GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket [GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues]
gpdvdpehbBucketValues
  = lens _gpdvdpehbBucketValues
      (\ s a -> s{_gpdvdpehbBucketValues = a})
      . _Default
      . _Coerce

-- | Always greater than or equal to min_probability.
gpdvdpehbMaxProbability :: Lens' GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket (Maybe Double)
gpdvdpehbMaxProbability
  = lens _gpdvdpehbMaxProbability
      (\ s a -> s{_gpdvdpehbMaxProbability = a})
      . mapping _Coerce

-- | Between 0 and 1.
gpdvdpehbMinProbability :: Lens' GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket (Maybe Double)
gpdvdpehbMinProbability
  = lens _gpdvdpehbMinProbability
      (\ s a -> s{_gpdvdpehbMinProbability = a})
      . mapping _Coerce

-- | Number of records within these probability bounds.
gpdvdpehbBucketSize :: Lens' GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket (Maybe Int64)
gpdvdpehbBucketSize
  = lens _gpdvdpehbBucketSize
      (\ s a -> s{_gpdvdpehbBucketSize = a})
      . mapping _Coerce

-- | Total number of distinct quasi-identifier tuple values in this bucket.
gpdvdpehbBucketValueCount :: Lens' GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket (Maybe Int64)
gpdvdpehbBucketValueCount
  = lens _gpdvdpehbBucketValueCount
      (\ s a -> s{_gpdvdpehbBucketValueCount = a})
      . mapping _Coerce

instance FromJSON
           GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket"
              (\ o ->
                 GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket'
                   <$>
                   (o .:? "bucketValues" .!= mempty) <*>
                     (o .:? "maxProbability")
                     <*> (o .:? "minProbability")
                     <*> (o .:? "bucketSize")
                     <*> (o .:? "bucketValueCount"))

instance ToJSON
           GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket
         where
        toJSON
          GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket'{..}
          = object
              (catMaybes
                 [("bucketValues" .=) <$> _gpdvdpehbBucketValues,
                  ("maxProbability" .=) <$> _gpdvdpehbMaxProbability,
                  ("minProbability" .=) <$> _gpdvdpehbMinProbability,
                  ("bucketSize" .=) <$> _gpdvdpehbBucketSize,
                  ("bucketValueCount" .=) <$>
                    _gpdvdpehbBucketValueCount])

-- | Set of files to scan.
--
-- /See:/ 'googlePrivacyDlpV2FileSet' smart constructor.
data GooglePrivacyDlpV2FileSet =
  GooglePrivacyDlpV2FileSet'
    { _gpdvfsURL          :: !(Maybe Text)
    , _gpdvfsRegexFileSet :: !(Maybe GooglePrivacyDlpV2CloudStorageRegexFileSet)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2FileSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvfsURL'
--
-- * 'gpdvfsRegexFileSet'
googlePrivacyDlpV2FileSet
    :: GooglePrivacyDlpV2FileSet
googlePrivacyDlpV2FileSet =
  GooglePrivacyDlpV2FileSet'
    {_gpdvfsURL = Nothing, _gpdvfsRegexFileSet = Nothing}

-- | The Cloud Storage url of the file(s) to scan, in the format
-- \`gs:\/\/\/\`. Trailing wildcard in the path is allowed. If the url ends
-- in a trailing slash, the bucket or directory represented by the url will
-- be scanned non-recursively (content in sub-directories will not be
-- scanned). This means that \`gs:\/\/mybucket\/\` is equivalent to
-- \`gs:\/\/mybucket\/*\`, and \`gs:\/\/mybucket\/directory\/\` is
-- equivalent to \`gs:\/\/mybucket\/directory\/*\`. Exactly one of \`url\`
-- or \`regex_file_set\` must be set.
gpdvfsURL :: Lens' GooglePrivacyDlpV2FileSet (Maybe Text)
gpdvfsURL
  = lens _gpdvfsURL (\ s a -> s{_gpdvfsURL = a})

-- | The regex-filtered set of files to scan. Exactly one of \`url\` or
-- \`regex_file_set\` must be set.
gpdvfsRegexFileSet :: Lens' GooglePrivacyDlpV2FileSet (Maybe GooglePrivacyDlpV2CloudStorageRegexFileSet)
gpdvfsRegexFileSet
  = lens _gpdvfsRegexFileSet
      (\ s a -> s{_gpdvfsRegexFileSet = a})

instance FromJSON GooglePrivacyDlpV2FileSet where
        parseJSON
          = withObject "GooglePrivacyDlpV2FileSet"
              (\ o ->
                 GooglePrivacyDlpV2FileSet' <$>
                   (o .:? "url") <*> (o .:? "regexFileSet"))

instance ToJSON GooglePrivacyDlpV2FileSet where
        toJSON GooglePrivacyDlpV2FileSet'{..}
          = object
              (catMaybes
                 [("url" .=) <$> _gpdvfsURL,
                  ("regexFileSet" .=) <$> _gpdvfsRegexFileSet])

-- | Response message for ListInspectTemplates.
--
-- /See:/ 'googlePrivacyDlpV2ListInspectTemplatesResponse' smart constructor.
data GooglePrivacyDlpV2ListInspectTemplatesResponse =
  GooglePrivacyDlpV2ListInspectTemplatesResponse'
    { _gpdvlitrNextPageToken    :: !(Maybe Text)
    , _gpdvlitrInspectTemplates :: !(Maybe [GooglePrivacyDlpV2InspectTemplate])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ListInspectTemplatesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvlitrNextPageToken'
--
-- * 'gpdvlitrInspectTemplates'
googlePrivacyDlpV2ListInspectTemplatesResponse
    :: GooglePrivacyDlpV2ListInspectTemplatesResponse
googlePrivacyDlpV2ListInspectTemplatesResponse =
  GooglePrivacyDlpV2ListInspectTemplatesResponse'
    {_gpdvlitrNextPageToken = Nothing, _gpdvlitrInspectTemplates = Nothing}

-- | If the next page is available then the next page token to be used in
-- following ListInspectTemplates request.
gpdvlitrNextPageToken :: Lens' GooglePrivacyDlpV2ListInspectTemplatesResponse (Maybe Text)
gpdvlitrNextPageToken
  = lens _gpdvlitrNextPageToken
      (\ s a -> s{_gpdvlitrNextPageToken = a})

-- | List of inspectTemplates, up to page_size in
-- ListInspectTemplatesRequest.
gpdvlitrInspectTemplates :: Lens' GooglePrivacyDlpV2ListInspectTemplatesResponse [GooglePrivacyDlpV2InspectTemplate]
gpdvlitrInspectTemplates
  = lens _gpdvlitrInspectTemplates
      (\ s a -> s{_gpdvlitrInspectTemplates = a})
      . _Default
      . _Coerce

instance FromJSON
           GooglePrivacyDlpV2ListInspectTemplatesResponse
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2ListInspectTemplatesResponse"
              (\ o ->
                 GooglePrivacyDlpV2ListInspectTemplatesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "inspectTemplates" .!= mempty))

instance ToJSON
           GooglePrivacyDlpV2ListInspectTemplatesResponse
         where
        toJSON
          GooglePrivacyDlpV2ListInspectTemplatesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gpdvlitrNextPageToken,
                  ("inspectTemplates" .=) <$>
                    _gpdvlitrInspectTemplates])

-- | Result of the k-anonymity computation.
--
-- /See:/ 'googlePrivacyDlpV2KAnonymityResult' smart constructor.
newtype GooglePrivacyDlpV2KAnonymityResult =
  GooglePrivacyDlpV2KAnonymityResult'
    { _gpdvkarEquivalenceClassHistogramBuckets :: Maybe [GooglePrivacyDlpV2KAnonymityHistogramBucket]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2KAnonymityResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvkarEquivalenceClassHistogramBuckets'
googlePrivacyDlpV2KAnonymityResult
    :: GooglePrivacyDlpV2KAnonymityResult
googlePrivacyDlpV2KAnonymityResult =
  GooglePrivacyDlpV2KAnonymityResult'
    {_gpdvkarEquivalenceClassHistogramBuckets = Nothing}

-- | Histogram of k-anonymity equivalence classes.
gpdvkarEquivalenceClassHistogramBuckets :: Lens' GooglePrivacyDlpV2KAnonymityResult [GooglePrivacyDlpV2KAnonymityHistogramBucket]
gpdvkarEquivalenceClassHistogramBuckets
  = lens _gpdvkarEquivalenceClassHistogramBuckets
      (\ s a ->
         s{_gpdvkarEquivalenceClassHistogramBuckets = a})
      . _Default
      . _Coerce

instance FromJSON GooglePrivacyDlpV2KAnonymityResult
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2KAnonymityResult"
              (\ o ->
                 GooglePrivacyDlpV2KAnonymityResult' <$>
                   (o .:? "equivalenceClassHistogramBuckets" .!=
                      mempty))

instance ToJSON GooglePrivacyDlpV2KAnonymityResult
         where
        toJSON GooglePrivacyDlpV2KAnonymityResult'{..}
          = object
              (catMaybes
                 [("equivalenceClassHistogramBuckets" .=) <$>
                    _gpdvkarEquivalenceClassHistogramBuckets])

-- | Message defining a field of a BigQuery table.
--
-- /See:/ 'googlePrivacyDlpV2BigQueryField' smart constructor.
data GooglePrivacyDlpV2BigQueryField =
  GooglePrivacyDlpV2BigQueryField'
    { _gpdvbqfField :: !(Maybe GooglePrivacyDlpV2FieldId)
    , _gpdvbqfTable :: !(Maybe GooglePrivacyDlpV2BigQueryTable)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2BigQueryField' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvbqfField'
--
-- * 'gpdvbqfTable'
googlePrivacyDlpV2BigQueryField
    :: GooglePrivacyDlpV2BigQueryField
googlePrivacyDlpV2BigQueryField =
  GooglePrivacyDlpV2BigQueryField'
    {_gpdvbqfField = Nothing, _gpdvbqfTable = Nothing}

-- | Designated field in the BigQuery table.
gpdvbqfField :: Lens' GooglePrivacyDlpV2BigQueryField (Maybe GooglePrivacyDlpV2FieldId)
gpdvbqfField
  = lens _gpdvbqfField (\ s a -> s{_gpdvbqfField = a})

-- | Source table of the field.
gpdvbqfTable :: Lens' GooglePrivacyDlpV2BigQueryField (Maybe GooglePrivacyDlpV2BigQueryTable)
gpdvbqfTable
  = lens _gpdvbqfTable (\ s a -> s{_gpdvbqfTable = a})

instance FromJSON GooglePrivacyDlpV2BigQueryField
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2BigQueryField"
              (\ o ->
                 GooglePrivacyDlpV2BigQueryField' <$>
                   (o .:? "field") <*> (o .:? "table"))

instance ToJSON GooglePrivacyDlpV2BigQueryField where
        toJSON GooglePrivacyDlpV2BigQueryField'{..}
          = object
              (catMaybes
                 [("field" .=) <$> _gpdvbqfField,
                  ("table" .=) <$> _gpdvbqfTable])

-- | Cloud repository for storing output.
--
-- /See:/ 'googlePrivacyDlpV2OutputStorageConfig' smart constructor.
data GooglePrivacyDlpV2OutputStorageConfig =
  GooglePrivacyDlpV2OutputStorageConfig'
    { _gpdvoscOutputSchema :: !(Maybe GooglePrivacyDlpV2OutputStorageConfigOutputSchema)
    , _gpdvoscTable        :: !(Maybe GooglePrivacyDlpV2BigQueryTable)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2OutputStorageConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvoscOutputSchema'
--
-- * 'gpdvoscTable'
googlePrivacyDlpV2OutputStorageConfig
    :: GooglePrivacyDlpV2OutputStorageConfig
googlePrivacyDlpV2OutputStorageConfig =
  GooglePrivacyDlpV2OutputStorageConfig'
    {_gpdvoscOutputSchema = Nothing, _gpdvoscTable = Nothing}

-- | Schema used for writing the findings for Inspect jobs. This field is
-- only used for Inspect and must be unspecified for Risk jobs. Columns are
-- derived from the \`Finding\` object. If appending to an existing table,
-- any columns from the predefined schema that are missing will be added.
-- No columns in the existing table will be deleted. If unspecified, then
-- all available columns will be used for a new table or an (existing)
-- table with no schema, and no changes will be made to an existing table
-- that has a schema.
gpdvoscOutputSchema :: Lens' GooglePrivacyDlpV2OutputStorageConfig (Maybe GooglePrivacyDlpV2OutputStorageConfigOutputSchema)
gpdvoscOutputSchema
  = lens _gpdvoscOutputSchema
      (\ s a -> s{_gpdvoscOutputSchema = a})

-- | Store findings in an existing table or a new table in an existing
-- dataset. If table_id is not set a new one will be generated for you with
-- the following format: dlp_googleapis_yyyy_mm_dd_[dlp_job_id]. Pacific
-- timezone will be used for generating the date details. For Inspect, each
-- column in an existing output table must have the same name, type, and
-- mode of a field in the \`Finding\` object. For Risk, an existing output
-- table should be the output of a previous Risk analysis job run on the
-- same source table, with the same privacy metric and quasi-identifiers.
-- Risk jobs that analyze the same table but compute a different privacy
-- metric, or use different sets of quasi-identifiers, cannot store their
-- results in the same table.
gpdvoscTable :: Lens' GooglePrivacyDlpV2OutputStorageConfig (Maybe GooglePrivacyDlpV2BigQueryTable)
gpdvoscTable
  = lens _gpdvoscTable (\ s a -> s{_gpdvoscTable = a})

instance FromJSON
           GooglePrivacyDlpV2OutputStorageConfig
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2OutputStorageConfig"
              (\ o ->
                 GooglePrivacyDlpV2OutputStorageConfig' <$>
                   (o .:? "outputSchema") <*> (o .:? "table"))

instance ToJSON GooglePrivacyDlpV2OutputStorageConfig
         where
        toJSON GooglePrivacyDlpV2OutputStorageConfig'{..}
          = object
              (catMaybes
                 [("outputSchema" .=) <$> _gpdvoscOutputSchema,
                  ("table" .=) <$> _gpdvoscTable])

-- | Message representing a set of files in Cloud Storage.
--
-- /See:/ 'googlePrivacyDlpV2CloudStorageFileSet' smart constructor.
newtype GooglePrivacyDlpV2CloudStorageFileSet =
  GooglePrivacyDlpV2CloudStorageFileSet'
    { _gpdvcsfsURL :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CloudStorageFileSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvcsfsURL'
googlePrivacyDlpV2CloudStorageFileSet
    :: GooglePrivacyDlpV2CloudStorageFileSet
googlePrivacyDlpV2CloudStorageFileSet =
  GooglePrivacyDlpV2CloudStorageFileSet' {_gpdvcsfsURL = Nothing}

-- | The url, in the format \`gs:\/\/\/\`. Trailing wildcard in the path is
-- allowed.
gpdvcsfsURL :: Lens' GooglePrivacyDlpV2CloudStorageFileSet (Maybe Text)
gpdvcsfsURL
  = lens _gpdvcsfsURL (\ s a -> s{_gpdvcsfsURL = a})

instance FromJSON
           GooglePrivacyDlpV2CloudStorageFileSet
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2CloudStorageFileSet"
              (\ o ->
                 GooglePrivacyDlpV2CloudStorageFileSet' <$>
                   (o .:? "url"))

instance ToJSON GooglePrivacyDlpV2CloudStorageFileSet
         where
        toJSON GooglePrivacyDlpV2CloudStorageFileSet'{..}
          = object (catMaybes [("url" .=) <$> _gpdvcsfsURL])

-- | A type of transformation that will scan unstructured text and apply
-- various \`PrimitiveTransformation\`s to each finding, where the
-- transformation is applied to only values that were identified as a
-- specific info_type.
--
-- /See:/ 'googlePrivacyDlpV2InfoTypeTransformations' smart constructor.
newtype GooglePrivacyDlpV2InfoTypeTransformations =
  GooglePrivacyDlpV2InfoTypeTransformations'
    { _gpdvittTransformations :: Maybe [GooglePrivacyDlpV2InfoTypeTransformation]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2InfoTypeTransformations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvittTransformations'
googlePrivacyDlpV2InfoTypeTransformations
    :: GooglePrivacyDlpV2InfoTypeTransformations
googlePrivacyDlpV2InfoTypeTransformations =
  GooglePrivacyDlpV2InfoTypeTransformations' {_gpdvittTransformations = Nothing}

-- | Transformation for each infoType. Cannot specify more than one for a
-- given infoType. [required]
gpdvittTransformations :: Lens' GooglePrivacyDlpV2InfoTypeTransformations [GooglePrivacyDlpV2InfoTypeTransformation]
gpdvittTransformations
  = lens _gpdvittTransformations
      (\ s a -> s{_gpdvittTransformations = a})
      . _Default
      . _Coerce

instance FromJSON
           GooglePrivacyDlpV2InfoTypeTransformations
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2InfoTypeTransformations"
              (\ o ->
                 GooglePrivacyDlpV2InfoTypeTransformations' <$>
                   (o .:? "transformations" .!= mempty))

instance ToJSON
           GooglePrivacyDlpV2InfoTypeTransformations
         where
        toJSON GooglePrivacyDlpV2InfoTypeTransformations'{..}
          = object
              (catMaybes
                 [("transformations" .=) <$> _gpdvittTransformations])

-- | Include to use an existing data crypto key wrapped by KMS. Authorization
-- requires the following IAM permissions when sending a request to perform
-- a crypto transformation using a kms-wrapped crypto key: dlp.kms.encrypt
--
-- /See:/ 'googlePrivacyDlpV2KmsWrAppedCryptoKey' smart constructor.
data GooglePrivacyDlpV2KmsWrAppedCryptoKey =
  GooglePrivacyDlpV2KmsWrAppedCryptoKey'
    { _gpdvkwackWrAppedKey    :: !(Maybe Bytes)
    , _gpdvkwackCryptoKeyName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2KmsWrAppedCryptoKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvkwackWrAppedKey'
--
-- * 'gpdvkwackCryptoKeyName'
googlePrivacyDlpV2KmsWrAppedCryptoKey
    :: GooglePrivacyDlpV2KmsWrAppedCryptoKey
googlePrivacyDlpV2KmsWrAppedCryptoKey =
  GooglePrivacyDlpV2KmsWrAppedCryptoKey'
    {_gpdvkwackWrAppedKey = Nothing, _gpdvkwackCryptoKeyName = Nothing}

-- | The wrapped data crypto key. [required]
gpdvkwackWrAppedKey :: Lens' GooglePrivacyDlpV2KmsWrAppedCryptoKey (Maybe ByteString)
gpdvkwackWrAppedKey
  = lens _gpdvkwackWrAppedKey
      (\ s a -> s{_gpdvkwackWrAppedKey = a})
      . mapping _Bytes

-- | The resource name of the KMS CryptoKey to use for unwrapping. [required]
gpdvkwackCryptoKeyName :: Lens' GooglePrivacyDlpV2KmsWrAppedCryptoKey (Maybe Text)
gpdvkwackCryptoKeyName
  = lens _gpdvkwackCryptoKeyName
      (\ s a -> s{_gpdvkwackCryptoKeyName = a})

instance FromJSON
           GooglePrivacyDlpV2KmsWrAppedCryptoKey
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2KmsWrAppedCryptoKey"
              (\ o ->
                 GooglePrivacyDlpV2KmsWrAppedCryptoKey' <$>
                   (o .:? "wrappedKey") <*> (o .:? "cryptoKeyName"))

instance ToJSON GooglePrivacyDlpV2KmsWrAppedCryptoKey
         where
        toJSON GooglePrivacyDlpV2KmsWrAppedCryptoKey'{..}
          = object
              (catMaybes
                 [("wrappedKey" .=) <$> _gpdvkwackWrAppedKey,
                  ("cryptoKeyName" .=) <$> _gpdvkwackCryptoKeyName])

-- | Results of inspecting an item.
--
-- /See:/ 'googlePrivacyDlpV2InspectContentResponse' smart constructor.
newtype GooglePrivacyDlpV2InspectContentResponse =
  GooglePrivacyDlpV2InspectContentResponse'
    { _gpdvicrResult :: Maybe GooglePrivacyDlpV2InspectResult
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2InspectContentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvicrResult'
googlePrivacyDlpV2InspectContentResponse
    :: GooglePrivacyDlpV2InspectContentResponse
googlePrivacyDlpV2InspectContentResponse =
  GooglePrivacyDlpV2InspectContentResponse' {_gpdvicrResult = Nothing}

-- | The findings.
gpdvicrResult :: Lens' GooglePrivacyDlpV2InspectContentResponse (Maybe GooglePrivacyDlpV2InspectResult)
gpdvicrResult
  = lens _gpdvicrResult
      (\ s a -> s{_gpdvicrResult = a})

instance FromJSON
           GooglePrivacyDlpV2InspectContentResponse
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2InspectContentResponse"
              (\ o ->
                 GooglePrivacyDlpV2InspectContentResponse' <$>
                   (o .:? "result"))

instance ToJSON
           GooglePrivacyDlpV2InspectContentResponse
         where
        toJSON GooglePrivacyDlpV2InspectContentResponse'{..}
          = object
              (catMaybes [("result" .=) <$> _gpdvicrResult])

--
-- /See:/ 'googlePrivacyDlpV2LDiversityHistogramBucket' smart constructor.
data GooglePrivacyDlpV2LDiversityHistogramBucket =
  GooglePrivacyDlpV2LDiversityHistogramBucket'
    { _gpdvldhbBucketValues                      :: !(Maybe [GooglePrivacyDlpV2LDiversityEquivalenceClass])
    , _gpdvldhbSensitiveValueFrequencyLowerBound :: !(Maybe (Textual Int64))
    , _gpdvldhbSensitiveValueFrequencyUpperBound :: !(Maybe (Textual Int64))
    , _gpdvldhbBucketSize                        :: !(Maybe (Textual Int64))
    , _gpdvldhbBucketValueCount                  :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2LDiversityHistogramBucket' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvldhbBucketValues'
--
-- * 'gpdvldhbSensitiveValueFrequencyLowerBound'
--
-- * 'gpdvldhbSensitiveValueFrequencyUpperBound'
--
-- * 'gpdvldhbBucketSize'
--
-- * 'gpdvldhbBucketValueCount'
googlePrivacyDlpV2LDiversityHistogramBucket
    :: GooglePrivacyDlpV2LDiversityHistogramBucket
googlePrivacyDlpV2LDiversityHistogramBucket =
  GooglePrivacyDlpV2LDiversityHistogramBucket'
    { _gpdvldhbBucketValues = Nothing
    , _gpdvldhbSensitiveValueFrequencyLowerBound = Nothing
    , _gpdvldhbSensitiveValueFrequencyUpperBound = Nothing
    , _gpdvldhbBucketSize = Nothing
    , _gpdvldhbBucketValueCount = Nothing
    }

-- | Sample of equivalence classes in this bucket. The total number of
-- classes returned per bucket is capped at 20.
gpdvldhbBucketValues :: Lens' GooglePrivacyDlpV2LDiversityHistogramBucket [GooglePrivacyDlpV2LDiversityEquivalenceClass]
gpdvldhbBucketValues
  = lens _gpdvldhbBucketValues
      (\ s a -> s{_gpdvldhbBucketValues = a})
      . _Default
      . _Coerce

-- | Lower bound on the sensitive value frequencies of the equivalence
-- classes in this bucket.
gpdvldhbSensitiveValueFrequencyLowerBound :: Lens' GooglePrivacyDlpV2LDiversityHistogramBucket (Maybe Int64)
gpdvldhbSensitiveValueFrequencyLowerBound
  = lens _gpdvldhbSensitiveValueFrequencyLowerBound
      (\ s a ->
         s{_gpdvldhbSensitiveValueFrequencyLowerBound = a})
      . mapping _Coerce

-- | Upper bound on the sensitive value frequencies of the equivalence
-- classes in this bucket.
gpdvldhbSensitiveValueFrequencyUpperBound :: Lens' GooglePrivacyDlpV2LDiversityHistogramBucket (Maybe Int64)
gpdvldhbSensitiveValueFrequencyUpperBound
  = lens _gpdvldhbSensitiveValueFrequencyUpperBound
      (\ s a ->
         s{_gpdvldhbSensitiveValueFrequencyUpperBound = a})
      . mapping _Coerce

-- | Total number of equivalence classes in this bucket.
gpdvldhbBucketSize :: Lens' GooglePrivacyDlpV2LDiversityHistogramBucket (Maybe Int64)
gpdvldhbBucketSize
  = lens _gpdvldhbBucketSize
      (\ s a -> s{_gpdvldhbBucketSize = a})
      . mapping _Coerce

-- | Total number of distinct equivalence classes in this bucket.
gpdvldhbBucketValueCount :: Lens' GooglePrivacyDlpV2LDiversityHistogramBucket (Maybe Int64)
gpdvldhbBucketValueCount
  = lens _gpdvldhbBucketValueCount
      (\ s a -> s{_gpdvldhbBucketValueCount = a})
      . mapping _Coerce

instance FromJSON
           GooglePrivacyDlpV2LDiversityHistogramBucket
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2LDiversityHistogramBucket"
              (\ o ->
                 GooglePrivacyDlpV2LDiversityHistogramBucket' <$>
                   (o .:? "bucketValues" .!= mempty) <*>
                     (o .:? "sensitiveValueFrequencyLowerBound")
                     <*> (o .:? "sensitiveValueFrequencyUpperBound")
                     <*> (o .:? "bucketSize")
                     <*> (o .:? "bucketValueCount"))

instance ToJSON
           GooglePrivacyDlpV2LDiversityHistogramBucket
         where
        toJSON
          GooglePrivacyDlpV2LDiversityHistogramBucket'{..}
          = object
              (catMaybes
                 [("bucketValues" .=) <$> _gpdvldhbBucketValues,
                  ("sensitiveValueFrequencyLowerBound" .=) <$>
                    _gpdvldhbSensitiveValueFrequencyLowerBound,
                  ("sensitiveValueFrequencyUpperBound" .=) <$>
                    _gpdvldhbSensitiveValueFrequencyUpperBound,
                  ("bucketSize" .=) <$> _gpdvldhbBucketSize,
                  ("bucketValueCount" .=) <$>
                    _gpdvldhbBucketValueCount])

-- | Results of re-identifying a item.
--
-- /See:/ 'googlePrivacyDlpV2ReidentifyContentResponse' smart constructor.
data GooglePrivacyDlpV2ReidentifyContentResponse =
  GooglePrivacyDlpV2ReidentifyContentResponse'
    { _gpdvrcrOverview :: !(Maybe GooglePrivacyDlpV2TransformationOverview)
    , _gpdvrcrItem     :: !(Maybe GooglePrivacyDlpV2ContentItem)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ReidentifyContentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvrcrOverview'
--
-- * 'gpdvrcrItem'
googlePrivacyDlpV2ReidentifyContentResponse
    :: GooglePrivacyDlpV2ReidentifyContentResponse
googlePrivacyDlpV2ReidentifyContentResponse =
  GooglePrivacyDlpV2ReidentifyContentResponse'
    {_gpdvrcrOverview = Nothing, _gpdvrcrItem = Nothing}

-- | An overview of the changes that were made to the \`item\`.
gpdvrcrOverview :: Lens' GooglePrivacyDlpV2ReidentifyContentResponse (Maybe GooglePrivacyDlpV2TransformationOverview)
gpdvrcrOverview
  = lens _gpdvrcrOverview
      (\ s a -> s{_gpdvrcrOverview = a})

-- | The re-identified item.
gpdvrcrItem :: Lens' GooglePrivacyDlpV2ReidentifyContentResponse (Maybe GooglePrivacyDlpV2ContentItem)
gpdvrcrItem
  = lens _gpdvrcrItem (\ s a -> s{_gpdvrcrItem = a})

instance FromJSON
           GooglePrivacyDlpV2ReidentifyContentResponse
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2ReidentifyContentResponse"
              (\ o ->
                 GooglePrivacyDlpV2ReidentifyContentResponse' <$>
                   (o .:? "overview") <*> (o .:? "item"))

instance ToJSON
           GooglePrivacyDlpV2ReidentifyContentResponse
         where
        toJSON
          GooglePrivacyDlpV2ReidentifyContentResponse'{..}
          = object
              (catMaybes
                 [("overview" .=) <$> _gpdvrcrOverview,
                  ("item" .=) <$> _gpdvrcrItem])

-- | An expression, consisting or an operator and conditions.
--
-- /See:/ 'googlePrivacyDlpV2Expressions' smart constructor.
data GooglePrivacyDlpV2Expressions =
  GooglePrivacyDlpV2Expressions'
    { _gpdveLogicalOperator :: !(Maybe GooglePrivacyDlpV2ExpressionsLogicalOperator)
    , _gpdveConditions      :: !(Maybe GooglePrivacyDlpV2Conditions)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Expressions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdveLogicalOperator'
--
-- * 'gpdveConditions'
googlePrivacyDlpV2Expressions
    :: GooglePrivacyDlpV2Expressions
googlePrivacyDlpV2Expressions =
  GooglePrivacyDlpV2Expressions'
    {_gpdveLogicalOperator = Nothing, _gpdveConditions = Nothing}

-- | The operator to apply to the result of conditions. Default and currently
-- only supported value is \`AND\`.
gpdveLogicalOperator :: Lens' GooglePrivacyDlpV2Expressions (Maybe GooglePrivacyDlpV2ExpressionsLogicalOperator)
gpdveLogicalOperator
  = lens _gpdveLogicalOperator
      (\ s a -> s{_gpdveLogicalOperator = a})

gpdveConditions :: Lens' GooglePrivacyDlpV2Expressions (Maybe GooglePrivacyDlpV2Conditions)
gpdveConditions
  = lens _gpdveConditions
      (\ s a -> s{_gpdveConditions = a})

instance FromJSON GooglePrivacyDlpV2Expressions where
        parseJSON
          = withObject "GooglePrivacyDlpV2Expressions"
              (\ o ->
                 GooglePrivacyDlpV2Expressions' <$>
                   (o .:? "logicalOperator") <*> (o .:? "conditions"))

instance ToJSON GooglePrivacyDlpV2Expressions where
        toJSON GooglePrivacyDlpV2Expressions'{..}
          = object
              (catMaybes
                 [("logicalOperator" .=) <$> _gpdveLogicalOperator,
                  ("conditions" .=) <$> _gpdveConditions])

-- | Message for a date time object. e.g. 2018-01-01, 5th August.
--
-- /See:/ 'googlePrivacyDlpV2DateTime' smart constructor.
data GooglePrivacyDlpV2DateTime =
  GooglePrivacyDlpV2DateTime'
    { _gpdvdtTime      :: !(Maybe GoogleTypeTimeOfDay)
    , _gpdvdtDate      :: !(Maybe GoogleTypeDate)
    , _gpdvdtTimeZone  :: !(Maybe GooglePrivacyDlpV2TimeZone)
    , _gpdvdtDayOfWeek :: !(Maybe GooglePrivacyDlpV2DateTimeDayOfWeek)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DateTime' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvdtTime'
--
-- * 'gpdvdtDate'
--
-- * 'gpdvdtTimeZone'
--
-- * 'gpdvdtDayOfWeek'
googlePrivacyDlpV2DateTime
    :: GooglePrivacyDlpV2DateTime
googlePrivacyDlpV2DateTime =
  GooglePrivacyDlpV2DateTime'
    { _gpdvdtTime = Nothing
    , _gpdvdtDate = Nothing
    , _gpdvdtTimeZone = Nothing
    , _gpdvdtDayOfWeek = Nothing
    }

gpdvdtTime :: Lens' GooglePrivacyDlpV2DateTime (Maybe GoogleTypeTimeOfDay)
gpdvdtTime
  = lens _gpdvdtTime (\ s a -> s{_gpdvdtTime = a})

-- | One or more of the following must be set. All fields are optional, but
-- when set must be valid date or time values.
gpdvdtDate :: Lens' GooglePrivacyDlpV2DateTime (Maybe GoogleTypeDate)
gpdvdtDate
  = lens _gpdvdtDate (\ s a -> s{_gpdvdtDate = a})

gpdvdtTimeZone :: Lens' GooglePrivacyDlpV2DateTime (Maybe GooglePrivacyDlpV2TimeZone)
gpdvdtTimeZone
  = lens _gpdvdtTimeZone
      (\ s a -> s{_gpdvdtTimeZone = a})

gpdvdtDayOfWeek :: Lens' GooglePrivacyDlpV2DateTime (Maybe GooglePrivacyDlpV2DateTimeDayOfWeek)
gpdvdtDayOfWeek
  = lens _gpdvdtDayOfWeek
      (\ s a -> s{_gpdvdtDayOfWeek = a})

instance FromJSON GooglePrivacyDlpV2DateTime where
        parseJSON
          = withObject "GooglePrivacyDlpV2DateTime"
              (\ o ->
                 GooglePrivacyDlpV2DateTime' <$>
                   (o .:? "time") <*> (o .:? "date") <*>
                     (o .:? "timeZone")
                     <*> (o .:? "dayOfWeek"))

instance ToJSON GooglePrivacyDlpV2DateTime where
        toJSON GooglePrivacyDlpV2DateTime'{..}
          = object
              (catMaybes
                 [("time" .=) <$> _gpdvdtTime,
                  ("date" .=) <$> _gpdvdtDate,
                  ("timeZone" .=) <$> _gpdvdtTimeZone,
                  ("dayOfWeek" .=) <$> _gpdvdtDayOfWeek])

-- | Message representing a set of files in a Cloud Storage bucket. Regular
-- expressions are used to allow fine-grained control over which files in
-- the bucket to include. Included files are those that match at least one
-- item in \`include_regex\` and do not match any items in
-- \`exclude_regex\`. Note that a file that matches items from both lists
-- will _not_ be included. For a match to occur, the entire file path
-- (i.e., everything in the url after the bucket name) must match the
-- regular expression. For example, given the input \`{bucket_name:
-- \"mybucket\", include_regex: [\"directory1\/.*\"], exclude_regex:
-- [\"directory1\/excluded.*\"]}\`: *
-- \`gs:\/\/mybucket\/directory1\/myfile\` will be included *
-- \`gs:\/\/mybucket\/directory1\/directory2\/myfile\` will be included
-- (\`.*\` matches across \`\/\`) *
-- \`gs:\/\/mybucket\/directory0\/directory1\/myfile\` will _not_ be
-- included (the full path doesn\'t match any items in \`include_regex\`) *
-- \`gs:\/\/mybucket\/directory1\/excludedfile\` will _not_ be included
-- (the path matches an item in \`exclude_regex\`) If \`include_regex\` is
-- left empty, it will match all files by default (this is equivalent to
-- setting \`include_regex: [\".*\"]\`). Some other common use cases: *
-- \`{bucket_name: \"mybucket\", exclude_regex: [\".*\\.pdf\"]}\` will
-- include all files in \`mybucket\` except for .pdf files *
-- \`{bucket_name: \"mybucket\", include_regex: [\"directory\/[^\/]+\"]}\`
-- will include all files directly under \`gs:\/\/mybucket\/directory\/\`,
-- without matching across \`\/\`
--
-- /See:/ 'googlePrivacyDlpV2CloudStorageRegexFileSet' smart constructor.
data GooglePrivacyDlpV2CloudStorageRegexFileSet =
  GooglePrivacyDlpV2CloudStorageRegexFileSet'
    { _gpdvcsrfsExcludeRegex :: !(Maybe [Text])
    , _gpdvcsrfsBucketName   :: !(Maybe Text)
    , _gpdvcsrfsIncludeRegex :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CloudStorageRegexFileSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvcsrfsExcludeRegex'
--
-- * 'gpdvcsrfsBucketName'
--
-- * 'gpdvcsrfsIncludeRegex'
googlePrivacyDlpV2CloudStorageRegexFileSet
    :: GooglePrivacyDlpV2CloudStorageRegexFileSet
googlePrivacyDlpV2CloudStorageRegexFileSet =
  GooglePrivacyDlpV2CloudStorageRegexFileSet'
    { _gpdvcsrfsExcludeRegex = Nothing
    , _gpdvcsrfsBucketName = Nothing
    , _gpdvcsrfsIncludeRegex = Nothing
    }

-- | A list of regular expressions matching file paths to exclude. All files
-- in the bucket that match at least one of these regular expressions will
-- be excluded from the scan. Regular expressions use RE2
-- [syntax](https:\/\/github.com\/google\/re2\/wiki\/Syntax); a guide can
-- be found under the google\/re2 repository on GitHub.
gpdvcsrfsExcludeRegex :: Lens' GooglePrivacyDlpV2CloudStorageRegexFileSet [Text]
gpdvcsrfsExcludeRegex
  = lens _gpdvcsrfsExcludeRegex
      (\ s a -> s{_gpdvcsrfsExcludeRegex = a})
      . _Default
      . _Coerce

-- | The name of a Cloud Storage bucket. Required.
gpdvcsrfsBucketName :: Lens' GooglePrivacyDlpV2CloudStorageRegexFileSet (Maybe Text)
gpdvcsrfsBucketName
  = lens _gpdvcsrfsBucketName
      (\ s a -> s{_gpdvcsrfsBucketName = a})

-- | A list of regular expressions matching file paths to include. All files
-- in the bucket that match at least one of these regular expressions will
-- be included in the set of files, except for those that also match an
-- item in \`exclude_regex\`. Leaving this field empty will match all files
-- by default (this is equivalent to including \`.*\` in the list). Regular
-- expressions use RE2
-- [syntax](https:\/\/github.com\/google\/re2\/wiki\/Syntax); a guide can
-- be found under the google\/re2 repository on GitHub.
gpdvcsrfsIncludeRegex :: Lens' GooglePrivacyDlpV2CloudStorageRegexFileSet [Text]
gpdvcsrfsIncludeRegex
  = lens _gpdvcsrfsIncludeRegex
      (\ s a -> s{_gpdvcsrfsIncludeRegex = a})
      . _Default
      . _Coerce

instance FromJSON
           GooglePrivacyDlpV2CloudStorageRegexFileSet
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2CloudStorageRegexFileSet"
              (\ o ->
                 GooglePrivacyDlpV2CloudStorageRegexFileSet' <$>
                   (o .:? "excludeRegex" .!= mempty) <*>
                     (o .:? "bucketName")
                     <*> (o .:? "includeRegex" .!= mempty))

instance ToJSON
           GooglePrivacyDlpV2CloudStorageRegexFileSet
         where
        toJSON
          GooglePrivacyDlpV2CloudStorageRegexFileSet'{..}
          = object
              (catMaybes
                 [("excludeRegex" .=) <$> _gpdvcsrfsExcludeRegex,
                  ("bucketName" .=) <$> _gpdvcsrfsBucketName,
                  ("includeRegex" .=) <$> _gpdvcsrfsIncludeRegex])

-- | Bucket is represented as a range, along with replacement values.
--
-- /See:/ 'googlePrivacyDlpV2Bucket' smart constructor.
data GooglePrivacyDlpV2Bucket =
  GooglePrivacyDlpV2Bucket'
    { _gpdvbMax              :: !(Maybe GooglePrivacyDlpV2Value)
    , _gpdvbReplacementValue :: !(Maybe GooglePrivacyDlpV2Value)
    , _gpdvbMin              :: !(Maybe GooglePrivacyDlpV2Value)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Bucket' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvbMax'
--
-- * 'gpdvbReplacementValue'
--
-- * 'gpdvbMin'
googlePrivacyDlpV2Bucket
    :: GooglePrivacyDlpV2Bucket
googlePrivacyDlpV2Bucket =
  GooglePrivacyDlpV2Bucket'
    {_gpdvbMax = Nothing, _gpdvbReplacementValue = Nothing, _gpdvbMin = Nothing}

-- | Upper bound of the range, exclusive; type must match min.
gpdvbMax :: Lens' GooglePrivacyDlpV2Bucket (Maybe GooglePrivacyDlpV2Value)
gpdvbMax = lens _gpdvbMax (\ s a -> s{_gpdvbMax = a})

-- | Replacement value for this bucket. If not provided the default behavior
-- will be to hyphenate the min-max range.
gpdvbReplacementValue :: Lens' GooglePrivacyDlpV2Bucket (Maybe GooglePrivacyDlpV2Value)
gpdvbReplacementValue
  = lens _gpdvbReplacementValue
      (\ s a -> s{_gpdvbReplacementValue = a})

-- | Lower bound of the range, inclusive. Type should be the same as max if
-- used.
gpdvbMin :: Lens' GooglePrivacyDlpV2Bucket (Maybe GooglePrivacyDlpV2Value)
gpdvbMin = lens _gpdvbMin (\ s a -> s{_gpdvbMin = a})

instance FromJSON GooglePrivacyDlpV2Bucket where
        parseJSON
          = withObject "GooglePrivacyDlpV2Bucket"
              (\ o ->
                 GooglePrivacyDlpV2Bucket' <$>
                   (o .:? "max") <*> (o .:? "replacementValue") <*>
                     (o .:? "min"))

instance ToJSON GooglePrivacyDlpV2Bucket where
        toJSON GooglePrivacyDlpV2Bucket'{..}
          = object
              (catMaybes
                 [("max" .=) <$> _gpdvbMax,
                  ("replacementValue" .=) <$> _gpdvbReplacementValue,
                  ("min" .=) <$> _gpdvbMin])

-- | A task to execute on the completion of a job. See
-- https:\/\/cloud.google.com\/dlp\/docs\/concepts-actions to learn more.
--
-- /See:/ 'googlePrivacyDlpV2Action' smart constructor.
data GooglePrivacyDlpV2Action =
  GooglePrivacyDlpV2Action'
    { _gpdvaJobNotificationEmails :: !(Maybe GooglePrivacyDlpV2JobNotificationEmails)
    , _gpdvaPubSub                :: !(Maybe GooglePrivacyDlpV2PublishToPubSub)
    , _gpdvaSaveFindings          :: !(Maybe GooglePrivacyDlpV2SaveFindings)
    , _gpdvaPublishSummaryToCscc  :: !(Maybe GooglePrivacyDlpV2PublishSummaryToCscc)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Action' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvaJobNotificationEmails'
--
-- * 'gpdvaPubSub'
--
-- * 'gpdvaSaveFindings'
--
-- * 'gpdvaPublishSummaryToCscc'
googlePrivacyDlpV2Action
    :: GooglePrivacyDlpV2Action
googlePrivacyDlpV2Action =
  GooglePrivacyDlpV2Action'
    { _gpdvaJobNotificationEmails = Nothing
    , _gpdvaPubSub = Nothing
    , _gpdvaSaveFindings = Nothing
    , _gpdvaPublishSummaryToCscc = Nothing
    }

-- | Enable email notification to project owners and editors on job‘s
-- completion\/failure.
gpdvaJobNotificationEmails :: Lens' GooglePrivacyDlpV2Action (Maybe GooglePrivacyDlpV2JobNotificationEmails)
gpdvaJobNotificationEmails
  = lens _gpdvaJobNotificationEmails
      (\ s a -> s{_gpdvaJobNotificationEmails = a})

-- | Publish a notification to a pubsub topic.
gpdvaPubSub :: Lens' GooglePrivacyDlpV2Action (Maybe GooglePrivacyDlpV2PublishToPubSub)
gpdvaPubSub
  = lens _gpdvaPubSub (\ s a -> s{_gpdvaPubSub = a})

-- | Save resulting findings in a provided location.
gpdvaSaveFindings :: Lens' GooglePrivacyDlpV2Action (Maybe GooglePrivacyDlpV2SaveFindings)
gpdvaSaveFindings
  = lens _gpdvaSaveFindings
      (\ s a -> s{_gpdvaSaveFindings = a})

-- | Publish summary to Cloud Security Command Center (Alpha).
gpdvaPublishSummaryToCscc :: Lens' GooglePrivacyDlpV2Action (Maybe GooglePrivacyDlpV2PublishSummaryToCscc)
gpdvaPublishSummaryToCscc
  = lens _gpdvaPublishSummaryToCscc
      (\ s a -> s{_gpdvaPublishSummaryToCscc = a})

instance FromJSON GooglePrivacyDlpV2Action where
        parseJSON
          = withObject "GooglePrivacyDlpV2Action"
              (\ o ->
                 GooglePrivacyDlpV2Action' <$>
                   (o .:? "jobNotificationEmails") <*> (o .:? "pubSub")
                     <*> (o .:? "saveFindings")
                     <*> (o .:? "publishSummaryToCscc"))

instance ToJSON GooglePrivacyDlpV2Action where
        toJSON GooglePrivacyDlpV2Action'{..}
          = object
              (catMaybes
                 [("jobNotificationEmails" .=) <$>
                    _gpdvaJobNotificationEmails,
                  ("pubSub" .=) <$> _gpdvaPubSub,
                  ("saveFindings" .=) <$> _gpdvaSaveFindings,
                  ("publishSummaryToCscc" .=) <$>
                    _gpdvaPublishSummaryToCscc])

-- | Represents a whole or partial calendar date, e.g. a birthday. The time
-- of day and time zone are either specified elsewhere or are not
-- significant. The date is relative to the Proleptic Gregorian Calendar.
-- This can represent: * A full date, with non-zero year, month and day
-- values * A month and day value, with a zero year, e.g. an anniversary *
-- A year on its own, with zero month and day values * A year and month
-- value, with a zero day, e.g. a credit card expiration date Related types
-- are google.type.TimeOfDay and \`google.protobuf.Timestamp\`.
--
-- /See:/ 'googleTypeDate' smart constructor.
data GoogleTypeDate =
  GoogleTypeDate'
    { _gtdDay   :: !(Maybe (Textual Int32))
    , _gtdYear  :: !(Maybe (Textual Int32))
    , _gtdMonth :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleTypeDate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtdDay'
--
-- * 'gtdYear'
--
-- * 'gtdMonth'
googleTypeDate
    :: GoogleTypeDate
googleTypeDate =
  GoogleTypeDate' {_gtdDay = Nothing, _gtdYear = Nothing, _gtdMonth = Nothing}

-- | Day of month. Must be from 1 to 31 and valid for the year and month, or
-- 0 if specifying a year by itself or a year and month where the day is
-- not significant.
gtdDay :: Lens' GoogleTypeDate (Maybe Int32)
gtdDay
  = lens _gtdDay (\ s a -> s{_gtdDay = a}) .
      mapping _Coerce

-- | Year of date. Must be from 1 to 9999, or 0 if specifying a date without
-- a year.
gtdYear :: Lens' GoogleTypeDate (Maybe Int32)
gtdYear
  = lens _gtdYear (\ s a -> s{_gtdYear = a}) .
      mapping _Coerce

-- | Month of year. Must be from 1 to 12, or 0 if specifying a year without a
-- month and day.
gtdMonth :: Lens' GoogleTypeDate (Maybe Int32)
gtdMonth
  = lens _gtdMonth (\ s a -> s{_gtdMonth = a}) .
      mapping _Coerce

instance FromJSON GoogleTypeDate where
        parseJSON
          = withObject "GoogleTypeDate"
              (\ o ->
                 GoogleTypeDate' <$>
                   (o .:? "day") <*> (o .:? "year") <*> (o .:? "month"))

instance ToJSON GoogleTypeDate where
        toJSON GoogleTypeDate'{..}
          = object
              (catMaybes
                 [("day" .=) <$> _gtdDay, ("year" .=) <$> _gtdYear,
                  ("month" .=) <$> _gtdMonth])

-- | Message for detecting output from deidentification transformations such
-- as
-- [\`CryptoReplaceFfxFpeConfig\`](\/dlp\/docs\/reference\/rest\/v2\/organizations.deidentifyTemplates#cryptoreplaceffxfpeconfig).
-- These types of transformations are those that perform pseudonymization,
-- thereby producing a \"surrogate\" as output. This should be used in
-- conjunction with a field on the transformation such as
-- \`surrogate_info_type\`. This CustomInfoType does not support the use of
-- \`detection_rules\`.
--
-- /See:/ 'googlePrivacyDlpV2SurrogateType' smart constructor.
data GooglePrivacyDlpV2SurrogateType =
  GooglePrivacyDlpV2SurrogateType'
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2SurrogateType' with the minimum fields required to make a request.
--
googlePrivacyDlpV2SurrogateType
    :: GooglePrivacyDlpV2SurrogateType
googlePrivacyDlpV2SurrogateType = GooglePrivacyDlpV2SurrogateType'

instance FromJSON GooglePrivacyDlpV2SurrogateType
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2SurrogateType"
              (\ o -> pure GooglePrivacyDlpV2SurrogateType')

instance ToJSON GooglePrivacyDlpV2SurrogateType where
        toJSON = const emptyObject

-- | Structured content to inspect. Up to 50,000 \`Value\`s per request
-- allowed. See
-- https:\/\/cloud.google.com\/dlp\/docs\/inspecting-text#inspecting_a_table
-- to learn more.
--
-- /See:/ 'googlePrivacyDlpV2Table' smart constructor.
data GooglePrivacyDlpV2Table =
  GooglePrivacyDlpV2Table'
    { _gpdvtRows    :: !(Maybe [GooglePrivacyDlpV2Row])
    , _gpdvtHeaders :: !(Maybe [GooglePrivacyDlpV2FieldId])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Table' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvtRows'
--
-- * 'gpdvtHeaders'
googlePrivacyDlpV2Table
    :: GooglePrivacyDlpV2Table
googlePrivacyDlpV2Table =
  GooglePrivacyDlpV2Table' {_gpdvtRows = Nothing, _gpdvtHeaders = Nothing}

gpdvtRows :: Lens' GooglePrivacyDlpV2Table [GooglePrivacyDlpV2Row]
gpdvtRows
  = lens _gpdvtRows (\ s a -> s{_gpdvtRows = a}) .
      _Default
      . _Coerce

gpdvtHeaders :: Lens' GooglePrivacyDlpV2Table [GooglePrivacyDlpV2FieldId]
gpdvtHeaders
  = lens _gpdvtHeaders (\ s a -> s{_gpdvtHeaders = a})
      . _Default
      . _Coerce

instance FromJSON GooglePrivacyDlpV2Table where
        parseJSON
          = withObject "GooglePrivacyDlpV2Table"
              (\ o ->
                 GooglePrivacyDlpV2Table' <$>
                   (o .:? "rows" .!= mempty) <*>
                     (o .:? "headers" .!= mempty))

instance ToJSON GooglePrivacyDlpV2Table where
        toJSON GooglePrivacyDlpV2Table'{..}
          = object
              (catMaybes
                 [("rows" .=) <$> _gpdvtRows,
                  ("headers" .=) <$> _gpdvtHeaders])

-- | Result of the l-diversity computation.
--
-- /See:/ 'googlePrivacyDlpV2LDiversityResult' smart constructor.
newtype GooglePrivacyDlpV2LDiversityResult =
  GooglePrivacyDlpV2LDiversityResult'
    { _gpdvldrSensitiveValueFrequencyHistogramBuckets :: Maybe [GooglePrivacyDlpV2LDiversityHistogramBucket]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2LDiversityResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvldrSensitiveValueFrequencyHistogramBuckets'
googlePrivacyDlpV2LDiversityResult
    :: GooglePrivacyDlpV2LDiversityResult
googlePrivacyDlpV2LDiversityResult =
  GooglePrivacyDlpV2LDiversityResult'
    {_gpdvldrSensitiveValueFrequencyHistogramBuckets = Nothing}

-- | Histogram of l-diversity equivalence class sensitive value frequencies.
gpdvldrSensitiveValueFrequencyHistogramBuckets :: Lens' GooglePrivacyDlpV2LDiversityResult [GooglePrivacyDlpV2LDiversityHistogramBucket]
gpdvldrSensitiveValueFrequencyHistogramBuckets
  = lens
      _gpdvldrSensitiveValueFrequencyHistogramBuckets
      (\ s a ->
         s{_gpdvldrSensitiveValueFrequencyHistogramBuckets =
             a})
      . _Default
      . _Coerce

instance FromJSON GooglePrivacyDlpV2LDiversityResult
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2LDiversityResult"
              (\ o ->
                 GooglePrivacyDlpV2LDiversityResult' <$>
                   (o .:? "sensitiveValueFrequencyHistogramBuckets" .!=
                      mempty))

instance ToJSON GooglePrivacyDlpV2LDiversityResult
         where
        toJSON GooglePrivacyDlpV2LDiversityResult'{..}
          = object
              (catMaybes
                 [("sensitiveValueFrequencyHistogramBuckets" .=) <$>
                    _gpdvldrSensitiveValueFrequencyHistogramBuckets])

-- | Reidentifiability metric. This corresponds to a risk model similar to
-- what is called \"journalist risk\" in the literature, except the attack
-- dataset is statistically modeled instead of being perfectly known. This
-- can be done using publicly available data (like the US Census), or using
-- a custom statistical model (indicated as one or several BigQuery
-- tables), or by extrapolating from the distribution of values in the
-- input dataset. A column with a semantic tag attached.
--
-- /See:/ 'googlePrivacyDlpV2KMapEstimationConfig' smart constructor.
data GooglePrivacyDlpV2KMapEstimationConfig =
  GooglePrivacyDlpV2KMapEstimationConfig'
    { _gpdvkmecAuxiliaryTables :: !(Maybe [GooglePrivacyDlpV2AuxiliaryTable])
    , _gpdvkmecRegionCode      :: !(Maybe Text)
    , _gpdvkmecQuasiIds        :: !(Maybe [GooglePrivacyDlpV2TaggedField])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2KMapEstimationConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvkmecAuxiliaryTables'
--
-- * 'gpdvkmecRegionCode'
--
-- * 'gpdvkmecQuasiIds'
googlePrivacyDlpV2KMapEstimationConfig
    :: GooglePrivacyDlpV2KMapEstimationConfig
googlePrivacyDlpV2KMapEstimationConfig =
  GooglePrivacyDlpV2KMapEstimationConfig'
    { _gpdvkmecAuxiliaryTables = Nothing
    , _gpdvkmecRegionCode = Nothing
    , _gpdvkmecQuasiIds = Nothing
    }

-- | Several auxiliary tables can be used in the analysis. Each custom_tag
-- used to tag a quasi-identifiers column must appear in exactly one column
-- of one auxiliary table.
gpdvkmecAuxiliaryTables :: Lens' GooglePrivacyDlpV2KMapEstimationConfig [GooglePrivacyDlpV2AuxiliaryTable]
gpdvkmecAuxiliaryTables
  = lens _gpdvkmecAuxiliaryTables
      (\ s a -> s{_gpdvkmecAuxiliaryTables = a})
      . _Default
      . _Coerce

-- | ISO 3166-1 alpha-2 region code to use in the statistical modeling.
-- Required if no column is tagged with a region-specific InfoType (like
-- US_ZIP_5) or a region code.
gpdvkmecRegionCode :: Lens' GooglePrivacyDlpV2KMapEstimationConfig (Maybe Text)
gpdvkmecRegionCode
  = lens _gpdvkmecRegionCode
      (\ s a -> s{_gpdvkmecRegionCode = a})

-- | Fields considered to be quasi-identifiers. No two columns can have the
-- same tag. [required]
gpdvkmecQuasiIds :: Lens' GooglePrivacyDlpV2KMapEstimationConfig [GooglePrivacyDlpV2TaggedField]
gpdvkmecQuasiIds
  = lens _gpdvkmecQuasiIds
      (\ s a -> s{_gpdvkmecQuasiIds = a})
      . _Default
      . _Coerce

instance FromJSON
           GooglePrivacyDlpV2KMapEstimationConfig
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2KMapEstimationConfig"
              (\ o ->
                 GooglePrivacyDlpV2KMapEstimationConfig' <$>
                   (o .:? "auxiliaryTables" .!= mempty) <*>
                     (o .:? "regionCode")
                     <*> (o .:? "quasiIds" .!= mempty))

instance ToJSON
           GooglePrivacyDlpV2KMapEstimationConfig
         where
        toJSON GooglePrivacyDlpV2KMapEstimationConfig'{..}
          = object
              (catMaybes
                 [("auxiliaryTables" .=) <$> _gpdvkmecAuxiliaryTables,
                  ("regionCode" .=) <$> _gpdvkmecRegionCode,
                  ("quasiIds" .=) <$> _gpdvkmecQuasiIds])

-- | Replaces an identifier with a surrogate using FPE with the FFX mode of
-- operation; however when used in the \`ReidentifyContent\` API method, it
-- serves the opposite function by reversing the surrogate back into the
-- original identifier. The identifier must be encoded as ASCII. For a
-- given crypto key and context, the same identifier will be replaced with
-- the same surrogate. Identifiers must be at least two characters long. In
-- the case that the identifier is the empty string, it will be skipped.
-- See https:\/\/cloud.google.com\/dlp\/docs\/pseudonymization to learn
-- more.
--
-- /See:/ 'googlePrivacyDlpV2CryptoReplaceFfxFpeConfig' smart constructor.
data GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig =
  GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig'
    { _gpdvcrffcContext           :: !(Maybe GooglePrivacyDlpV2FieldId)
    , _gpdvcrffcCommonAlphabet    :: !(Maybe GooglePrivacyDlpV2CryptoReplaceFfxFpeConfigCommonAlphabet)
    , _gpdvcrffcSurrogateInfoType :: !(Maybe GooglePrivacyDlpV2InfoType)
    , _gpdvcrffcCustomAlphabet    :: !(Maybe Text)
    , _gpdvcrffcCryptoKey         :: !(Maybe GooglePrivacyDlpV2CryptoKey)
    , _gpdvcrffcRadix             :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvcrffcContext'
--
-- * 'gpdvcrffcCommonAlphabet'
--
-- * 'gpdvcrffcSurrogateInfoType'
--
-- * 'gpdvcrffcCustomAlphabet'
--
-- * 'gpdvcrffcCryptoKey'
--
-- * 'gpdvcrffcRadix'
googlePrivacyDlpV2CryptoReplaceFfxFpeConfig
    :: GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig
googlePrivacyDlpV2CryptoReplaceFfxFpeConfig =
  GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig'
    { _gpdvcrffcContext = Nothing
    , _gpdvcrffcCommonAlphabet = Nothing
    , _gpdvcrffcSurrogateInfoType = Nothing
    , _gpdvcrffcCustomAlphabet = Nothing
    , _gpdvcrffcCryptoKey = Nothing
    , _gpdvcrffcRadix = Nothing
    }

-- | The \'tweak\', a context may be used for higher security since the same
-- identifier in two different contexts won\'t be given the same surrogate.
-- If the context is not set, a default tweak will be used. If the context
-- is set but: 1. there is no record present when transforming a given
-- value or 1. the field is not present when transforming a given value, a
-- default tweak will be used. Note that case (1) is expected when an
-- \`InfoTypeTransformation\` is applied to both structured and
-- non-structured \`ContentItem\`s. Currently, the referenced field may be
-- of value type integer or string. The tweak is constructed as a sequence
-- of bytes in big endian byte order such that: - a 64 bit integer is
-- encoded followed by a single byte of value 1 - a string is encoded in
-- UTF-8 format followed by a single byte of value 2
gpdvcrffcContext :: Lens' GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig (Maybe GooglePrivacyDlpV2FieldId)
gpdvcrffcContext
  = lens _gpdvcrffcContext
      (\ s a -> s{_gpdvcrffcContext = a})

gpdvcrffcCommonAlphabet :: Lens' GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig (Maybe GooglePrivacyDlpV2CryptoReplaceFfxFpeConfigCommonAlphabet)
gpdvcrffcCommonAlphabet
  = lens _gpdvcrffcCommonAlphabet
      (\ s a -> s{_gpdvcrffcCommonAlphabet = a})

-- | The custom infoType to annotate the surrogate with. This annotation will
-- be applied to the surrogate by prefixing it with the name of the custom
-- infoType followed by the number of characters comprising the surrogate.
-- The following scheme defines the format:
-- info_type_name(surrogate_character_count):surrogate For example, if the
-- name of custom infoType is \'MY_TOKEN_INFO_TYPE\' and the surrogate is
-- \'abc\', the full replacement value will be:
-- \'MY_TOKEN_INFO_TYPE(3):abc\' This annotation identifies the surrogate
-- when inspecting content using the custom infoType
-- [\`SurrogateType\`](\/dlp\/docs\/reference\/rest\/v2\/InspectConfig#surrogatetype).
-- This facilitates reversal of the surrogate when it occurs in free text.
-- In order for inspection to work properly, the name of this infoType must
-- not occur naturally anywhere in your data; otherwise, inspection may
-- find a surrogate that does not correspond to an actual identifier.
-- Therefore, choose your custom infoType name carefully after considering
-- what your data looks like. One way to select a name that has a high
-- chance of yielding reliable detection is to include one or more unicode
-- characters that are highly improbable to exist in your data. For
-- example, assuming your data is entered from a regular ASCII keyboard,
-- the symbol with the hex code point 29DD might be used like so:
-- ⧝MY_TOKEN_TYPE
gpdvcrffcSurrogateInfoType :: Lens' GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig (Maybe GooglePrivacyDlpV2InfoType)
gpdvcrffcSurrogateInfoType
  = lens _gpdvcrffcSurrogateInfoType
      (\ s a -> s{_gpdvcrffcSurrogateInfoType = a})

-- | This is supported by mapping these to the alphanumeric characters that
-- the FFX mode natively supports. This happens before\/after
-- encryption\/decryption. Each character listed must appear only once.
-- Number of characters must be in the range [2, 62]. This must be encoded
-- as ASCII. The order of characters does not matter.
gpdvcrffcCustomAlphabet :: Lens' GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig (Maybe Text)
gpdvcrffcCustomAlphabet
  = lens _gpdvcrffcCustomAlphabet
      (\ s a -> s{_gpdvcrffcCustomAlphabet = a})

-- | The key used by the encryption algorithm. [required]
gpdvcrffcCryptoKey :: Lens' GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig (Maybe GooglePrivacyDlpV2CryptoKey)
gpdvcrffcCryptoKey
  = lens _gpdvcrffcCryptoKey
      (\ s a -> s{_gpdvcrffcCryptoKey = a})

-- | The native way to select the alphabet. Must be in the range [2, 62].
gpdvcrffcRadix :: Lens' GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig (Maybe Int32)
gpdvcrffcRadix
  = lens _gpdvcrffcRadix
      (\ s a -> s{_gpdvcrffcRadix = a})
      . mapping _Coerce

instance FromJSON
           GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig"
              (\ o ->
                 GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig' <$>
                   (o .:? "context") <*> (o .:? "commonAlphabet") <*>
                     (o .:? "surrogateInfoType")
                     <*> (o .:? "customAlphabet")
                     <*> (o .:? "cryptoKey")
                     <*> (o .:? "radix"))

instance ToJSON
           GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig
         where
        toJSON
          GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig'{..}
          = object
              (catMaybes
                 [("context" .=) <$> _gpdvcrffcContext,
                  ("commonAlphabet" .=) <$> _gpdvcrffcCommonAlphabet,
                  ("surrogateInfoType" .=) <$>
                    _gpdvcrffcSurrogateInfoType,
                  ("customAlphabet" .=) <$> _gpdvcrffcCustomAlphabet,
                  ("cryptoKey" .=) <$> _gpdvcrffcCryptoKey,
                  ("radix" .=) <$> _gpdvcrffcRadix])

-- | A quasi-identifier column has a custom_tag, used to know which column in
-- the data corresponds to which column in the statistical model.
--
-- /See:/ 'googlePrivacyDlpV2QuasiIdentifierField' smart constructor.
data GooglePrivacyDlpV2QuasiIdentifierField =
  GooglePrivacyDlpV2QuasiIdentifierField'
    { _gField     :: !(Maybe GooglePrivacyDlpV2FieldId)
    , _gCustomTag :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2QuasiIdentifierField' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gField'
--
-- * 'gCustomTag'
googlePrivacyDlpV2QuasiIdentifierField
    :: GooglePrivacyDlpV2QuasiIdentifierField
googlePrivacyDlpV2QuasiIdentifierField =
  GooglePrivacyDlpV2QuasiIdentifierField'
    {_gField = Nothing, _gCustomTag = Nothing}

gField :: Lens' GooglePrivacyDlpV2QuasiIdentifierField (Maybe GooglePrivacyDlpV2FieldId)
gField = lens _gField (\ s a -> s{_gField = a})

gCustomTag :: Lens' GooglePrivacyDlpV2QuasiIdentifierField (Maybe Text)
gCustomTag
  = lens _gCustomTag (\ s a -> s{_gCustomTag = a})

instance FromJSON
           GooglePrivacyDlpV2QuasiIdentifierField
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2QuasiIdentifierField"
              (\ o ->
                 GooglePrivacyDlpV2QuasiIdentifierField' <$>
                   (o .:? "field") <*> (o .:? "customTag"))

instance ToJSON
           GooglePrivacyDlpV2QuasiIdentifierField
         where
        toJSON GooglePrivacyDlpV2QuasiIdentifierField'{..}
          = object
              (catMaybes
                 [("field" .=) <$> _gField,
                  ("customTag" .=) <$> _gCustomTag])

-- | Type of information detected by the API.
--
-- /See:/ 'googlePrivacyDlpV2InfoType' smart constructor.
newtype GooglePrivacyDlpV2InfoType =
  GooglePrivacyDlpV2InfoType'
    { _gpdvitName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2InfoType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvitName'
googlePrivacyDlpV2InfoType
    :: GooglePrivacyDlpV2InfoType
googlePrivacyDlpV2InfoType = GooglePrivacyDlpV2InfoType' {_gpdvitName = Nothing}

-- | Name of the information type. Either a name of your choosing when
-- creating a CustomInfoType, or one of the names listed at
-- https:\/\/cloud.google.com\/dlp\/docs\/infotypes-reference when
-- specifying a built-in type. InfoType names should conform to the pattern
-- [a-zA-Z0-9_]{1,64}.
gpdvitName :: Lens' GooglePrivacyDlpV2InfoType (Maybe Text)
gpdvitName
  = lens _gpdvitName (\ s a -> s{_gpdvitName = a})

instance FromJSON GooglePrivacyDlpV2InfoType where
        parseJSON
          = withObject "GooglePrivacyDlpV2InfoType"
              (\ o ->
                 GooglePrivacyDlpV2InfoType' <$> (o .:? "name"))

instance ToJSON GooglePrivacyDlpV2InfoType where
        toJSON GooglePrivacyDlpV2InfoType'{..}
          = object (catMaybes [("name" .=) <$> _gpdvitName])

-- | The inspectTemplate contains a configuration (set of types of sensitive
-- data to be detected) to be used anywhere you otherwise would normally
-- specify InspectConfig. See
-- https:\/\/cloud.google.com\/dlp\/docs\/concepts-templates to learn more.
--
-- /See:/ 'googlePrivacyDlpV2InspectTemplate' smart constructor.
data GooglePrivacyDlpV2InspectTemplate =
  GooglePrivacyDlpV2InspectTemplate'
    { _gInspectConfig :: !(Maybe GooglePrivacyDlpV2InspectConfig)
    , _gUpdateTime    :: !(Maybe DateTime')
    , _gName          :: !(Maybe Text)
    , _gDisplayName   :: !(Maybe Text)
    , _gDescription   :: !(Maybe Text)
    , _gCreateTime    :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2InspectTemplate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gInspectConfig'
--
-- * 'gUpdateTime'
--
-- * 'gName'
--
-- * 'gDisplayName'
--
-- * 'gDescription'
--
-- * 'gCreateTime'
googlePrivacyDlpV2InspectTemplate
    :: GooglePrivacyDlpV2InspectTemplate
googlePrivacyDlpV2InspectTemplate =
  GooglePrivacyDlpV2InspectTemplate'
    { _gInspectConfig = Nothing
    , _gUpdateTime = Nothing
    , _gName = Nothing
    , _gDisplayName = Nothing
    , _gDescription = Nothing
    , _gCreateTime = Nothing
    }

-- | The core content of the template. Configuration of the scanning process.
gInspectConfig :: Lens' GooglePrivacyDlpV2InspectTemplate (Maybe GooglePrivacyDlpV2InspectConfig)
gInspectConfig
  = lens _gInspectConfig
      (\ s a -> s{_gInspectConfig = a})

-- | The last update timestamp of a inspectTemplate, output only field.
gUpdateTime :: Lens' GooglePrivacyDlpV2InspectTemplate (Maybe UTCTime)
gUpdateTime
  = lens _gUpdateTime (\ s a -> s{_gUpdateTime = a}) .
      mapping _DateTime

-- | The template name. Output only. The template will have one of the
-- following formats:
-- \`projects\/PROJECT_ID\/inspectTemplates\/TEMPLATE_ID\` OR
-- \`organizations\/ORGANIZATION_ID\/inspectTemplates\/TEMPLATE_ID\`
gName :: Lens' GooglePrivacyDlpV2InspectTemplate (Maybe Text)
gName = lens _gName (\ s a -> s{_gName = a})

-- | Display name (max 256 chars).
gDisplayName :: Lens' GooglePrivacyDlpV2InspectTemplate (Maybe Text)
gDisplayName
  = lens _gDisplayName (\ s a -> s{_gDisplayName = a})

-- | Short description (max 256 chars).
gDescription :: Lens' GooglePrivacyDlpV2InspectTemplate (Maybe Text)
gDescription
  = lens _gDescription (\ s a -> s{_gDescription = a})

-- | The creation timestamp of a inspectTemplate, output only field.
gCreateTime :: Lens' GooglePrivacyDlpV2InspectTemplate (Maybe UTCTime)
gCreateTime
  = lens _gCreateTime (\ s a -> s{_gCreateTime = a}) .
      mapping _DateTime

instance FromJSON GooglePrivacyDlpV2InspectTemplate
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2InspectTemplate"
              (\ o ->
                 GooglePrivacyDlpV2InspectTemplate' <$>
                   (o .:? "inspectConfig") <*> (o .:? "updateTime") <*>
                     (o .:? "name")
                     <*> (o .:? "displayName")
                     <*> (o .:? "description")
                     <*> (o .:? "createTime"))

instance ToJSON GooglePrivacyDlpV2InspectTemplate
         where
        toJSON GooglePrivacyDlpV2InspectTemplate'{..}
          = object
              (catMaybes
                 [("inspectConfig" .=) <$> _gInspectConfig,
                  ("updateTime" .=) <$> _gUpdateTime,
                  ("name" .=) <$> _gName,
                  ("displayName" .=) <$> _gDisplayName,
                  ("description" .=) <$> _gDescription,
                  ("createTime" .=) <$> _gCreateTime])

--
-- /See:/ 'googlePrivacyDlpV2KAnonymityHistogramBucket' smart constructor.
data GooglePrivacyDlpV2KAnonymityHistogramBucket =
  GooglePrivacyDlpV2KAnonymityHistogramBucket'
    { _gpdvkahbEquivalenceClassSizeLowerBound :: !(Maybe (Textual Int64))
    , _gpdvkahbEquivalenceClassSizeUpperBound :: !(Maybe (Textual Int64))
    , _gpdvkahbBucketValues                   :: !(Maybe [GooglePrivacyDlpV2KAnonymityEquivalenceClass])
    , _gpdvkahbBucketSize                     :: !(Maybe (Textual Int64))
    , _gpdvkahbBucketValueCount               :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2KAnonymityHistogramBucket' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvkahbEquivalenceClassSizeLowerBound'
--
-- * 'gpdvkahbEquivalenceClassSizeUpperBound'
--
-- * 'gpdvkahbBucketValues'
--
-- * 'gpdvkahbBucketSize'
--
-- * 'gpdvkahbBucketValueCount'
googlePrivacyDlpV2KAnonymityHistogramBucket
    :: GooglePrivacyDlpV2KAnonymityHistogramBucket
googlePrivacyDlpV2KAnonymityHistogramBucket =
  GooglePrivacyDlpV2KAnonymityHistogramBucket'
    { _gpdvkahbEquivalenceClassSizeLowerBound = Nothing
    , _gpdvkahbEquivalenceClassSizeUpperBound = Nothing
    , _gpdvkahbBucketValues = Nothing
    , _gpdvkahbBucketSize = Nothing
    , _gpdvkahbBucketValueCount = Nothing
    }

-- | Lower bound on the size of the equivalence classes in this bucket.
gpdvkahbEquivalenceClassSizeLowerBound :: Lens' GooglePrivacyDlpV2KAnonymityHistogramBucket (Maybe Int64)
gpdvkahbEquivalenceClassSizeLowerBound
  = lens _gpdvkahbEquivalenceClassSizeLowerBound
      (\ s a ->
         s{_gpdvkahbEquivalenceClassSizeLowerBound = a})
      . mapping _Coerce

-- | Upper bound on the size of the equivalence classes in this bucket.
gpdvkahbEquivalenceClassSizeUpperBound :: Lens' GooglePrivacyDlpV2KAnonymityHistogramBucket (Maybe Int64)
gpdvkahbEquivalenceClassSizeUpperBound
  = lens _gpdvkahbEquivalenceClassSizeUpperBound
      (\ s a ->
         s{_gpdvkahbEquivalenceClassSizeUpperBound = a})
      . mapping _Coerce

-- | Sample of equivalence classes in this bucket. The total number of
-- classes returned per bucket is capped at 20.
gpdvkahbBucketValues :: Lens' GooglePrivacyDlpV2KAnonymityHistogramBucket [GooglePrivacyDlpV2KAnonymityEquivalenceClass]
gpdvkahbBucketValues
  = lens _gpdvkahbBucketValues
      (\ s a -> s{_gpdvkahbBucketValues = a})
      . _Default
      . _Coerce

-- | Total number of equivalence classes in this bucket.
gpdvkahbBucketSize :: Lens' GooglePrivacyDlpV2KAnonymityHistogramBucket (Maybe Int64)
gpdvkahbBucketSize
  = lens _gpdvkahbBucketSize
      (\ s a -> s{_gpdvkahbBucketSize = a})
      . mapping _Coerce

-- | Total number of distinct equivalence classes in this bucket.
gpdvkahbBucketValueCount :: Lens' GooglePrivacyDlpV2KAnonymityHistogramBucket (Maybe Int64)
gpdvkahbBucketValueCount
  = lens _gpdvkahbBucketValueCount
      (\ s a -> s{_gpdvkahbBucketValueCount = a})
      . mapping _Coerce

instance FromJSON
           GooglePrivacyDlpV2KAnonymityHistogramBucket
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2KAnonymityHistogramBucket"
              (\ o ->
                 GooglePrivacyDlpV2KAnonymityHistogramBucket' <$>
                   (o .:? "equivalenceClassSizeLowerBound") <*>
                     (o .:? "equivalenceClassSizeUpperBound")
                     <*> (o .:? "bucketValues" .!= mempty)
                     <*> (o .:? "bucketSize")
                     <*> (o .:? "bucketValueCount"))

instance ToJSON
           GooglePrivacyDlpV2KAnonymityHistogramBucket
         where
        toJSON
          GooglePrivacyDlpV2KAnonymityHistogramBucket'{..}
          = object
              (catMaybes
                 [("equivalenceClassSizeLowerBound" .=) <$>
                    _gpdvkahbEquivalenceClassSizeLowerBound,
                  ("equivalenceClassSizeUpperBound" .=) <$>
                    _gpdvkahbEquivalenceClassSizeUpperBound,
                  ("bucketValues" .=) <$> _gpdvkahbBucketValues,
                  ("bucketSize" .=) <$> _gpdvkahbBucketSize,
                  ("bucketValueCount" .=) <$>
                    _gpdvkahbBucketValueCount])

-- | Request to re-identify an item.
--
-- /See:/ 'googlePrivacyDlpV2ReidentifyContentRequest' smart constructor.
data GooglePrivacyDlpV2ReidentifyContentRequest =
  GooglePrivacyDlpV2ReidentifyContentRequest'
    { _gooInspectConfig          :: !(Maybe GooglePrivacyDlpV2InspectConfig)
    , _gooReidentifyTemplateName :: !(Maybe Text)
    , _gooItem                   :: !(Maybe GooglePrivacyDlpV2ContentItem)
    , _gooInspectTemplateName    :: !(Maybe Text)
    , _gooReidentifyConfig       :: !(Maybe GooglePrivacyDlpV2DeidentifyConfig)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ReidentifyContentRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooInspectConfig'
--
-- * 'gooReidentifyTemplateName'
--
-- * 'gooItem'
--
-- * 'gooInspectTemplateName'
--
-- * 'gooReidentifyConfig'
googlePrivacyDlpV2ReidentifyContentRequest
    :: GooglePrivacyDlpV2ReidentifyContentRequest
googlePrivacyDlpV2ReidentifyContentRequest =
  GooglePrivacyDlpV2ReidentifyContentRequest'
    { _gooInspectConfig = Nothing
    , _gooReidentifyTemplateName = Nothing
    , _gooItem = Nothing
    , _gooInspectTemplateName = Nothing
    , _gooReidentifyConfig = Nothing
    }

-- | Configuration for the inspector.
gooInspectConfig :: Lens' GooglePrivacyDlpV2ReidentifyContentRequest (Maybe GooglePrivacyDlpV2InspectConfig)
gooInspectConfig
  = lens _gooInspectConfig
      (\ s a -> s{_gooInspectConfig = a})

-- | Optional template to use. References an instance of
-- \`DeidentifyTemplate\`. Any configuration directly specified in
-- \`reidentify_config\` or \`inspect_config\` will override those set in
-- the template. Singular fields that are set in this request will replace
-- their corresponding fields in the template. Repeated fields are
-- appended. Singular sub-messages and groups are recursively merged.
gooReidentifyTemplateName :: Lens' GooglePrivacyDlpV2ReidentifyContentRequest (Maybe Text)
gooReidentifyTemplateName
  = lens _gooReidentifyTemplateName
      (\ s a -> s{_gooReidentifyTemplateName = a})

-- | The item to re-identify. Will be treated as text.
gooItem :: Lens' GooglePrivacyDlpV2ReidentifyContentRequest (Maybe GooglePrivacyDlpV2ContentItem)
gooItem = lens _gooItem (\ s a -> s{_gooItem = a})

-- | Optional template to use. Any configuration directly specified in
-- \`inspect_config\` will override those set in the template. Singular
-- fields that are set in this request will replace their corresponding
-- fields in the template. Repeated fields are appended. Singular
-- sub-messages and groups are recursively merged.
gooInspectTemplateName :: Lens' GooglePrivacyDlpV2ReidentifyContentRequest (Maybe Text)
gooInspectTemplateName
  = lens _gooInspectTemplateName
      (\ s a -> s{_gooInspectTemplateName = a})

-- | Configuration for the re-identification of the content item. This field
-- shares the same proto message type that is used for de-identification,
-- however its usage here is for the reversal of the previous
-- de-identification. Re-identification is performed by examining the
-- transformations used to de-identify the items and executing the reverse.
-- This requires that only reversible transformations be provided here. The
-- reversible transformations are: - \`CryptoReplaceFfxFpeConfig\`
gooReidentifyConfig :: Lens' GooglePrivacyDlpV2ReidentifyContentRequest (Maybe GooglePrivacyDlpV2DeidentifyConfig)
gooReidentifyConfig
  = lens _gooReidentifyConfig
      (\ s a -> s{_gooReidentifyConfig = a})

instance FromJSON
           GooglePrivacyDlpV2ReidentifyContentRequest
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2ReidentifyContentRequest"
              (\ o ->
                 GooglePrivacyDlpV2ReidentifyContentRequest' <$>
                   (o .:? "inspectConfig") <*>
                     (o .:? "reidentifyTemplateName")
                     <*> (o .:? "item")
                     <*> (o .:? "inspectTemplateName")
                     <*> (o .:? "reidentifyConfig"))

instance ToJSON
           GooglePrivacyDlpV2ReidentifyContentRequest
         where
        toJSON
          GooglePrivacyDlpV2ReidentifyContentRequest'{..}
          = object
              (catMaybes
                 [("inspectConfig" .=) <$> _gooInspectConfig,
                  ("reidentifyTemplateName" .=) <$>
                    _gooReidentifyTemplateName,
                  ("item" .=) <$> _gooItem,
                  ("inspectTemplateName" .=) <$>
                    _gooInspectTemplateName,
                  ("reidentifyConfig" .=) <$> _gooReidentifyConfig])

-- | Pseudonymization method that generates surrogates via cryptographic
-- hashing. Uses SHA-256. The key size must be either 32 or 64 bytes.
-- Outputs a base64 encoded representation of the hashed output (for
-- example, L7k0BHmF1ha5U3NfGykjro4xWi1MPVQPjhMAZbSV9mM=). Currently, only
-- string and integer values can be hashed. See
-- https:\/\/cloud.google.com\/dlp\/docs\/pseudonymization to learn more.
--
-- /See:/ 'googlePrivacyDlpV2CryptoHashConfig' smart constructor.
newtype GooglePrivacyDlpV2CryptoHashConfig =
  GooglePrivacyDlpV2CryptoHashConfig'
    { _gpdvchcCryptoKey :: Maybe GooglePrivacyDlpV2CryptoKey
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CryptoHashConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvchcCryptoKey'
googlePrivacyDlpV2CryptoHashConfig
    :: GooglePrivacyDlpV2CryptoHashConfig
googlePrivacyDlpV2CryptoHashConfig =
  GooglePrivacyDlpV2CryptoHashConfig' {_gpdvchcCryptoKey = Nothing}

-- | The key used by the hash function.
gpdvchcCryptoKey :: Lens' GooglePrivacyDlpV2CryptoHashConfig (Maybe GooglePrivacyDlpV2CryptoKey)
gpdvchcCryptoKey
  = lens _gpdvchcCryptoKey
      (\ s a -> s{_gpdvchcCryptoKey = a})

instance FromJSON GooglePrivacyDlpV2CryptoHashConfig
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2CryptoHashConfig"
              (\ o ->
                 GooglePrivacyDlpV2CryptoHashConfig' <$>
                   (o .:? "cryptoKey"))

instance ToJSON GooglePrivacyDlpV2CryptoHashConfig
         where
        toJSON GooglePrivacyDlpV2CryptoHashConfig'{..}
          = object
              (catMaybes [("cryptoKey" .=) <$> _gpdvchcCryptoKey])

-- | Max findings configuration per infoType, per content item or long
-- running DlpJob.
--
-- /See:/ 'googlePrivacyDlpV2InfoTypeLimit' smart constructor.
data GooglePrivacyDlpV2InfoTypeLimit =
  GooglePrivacyDlpV2InfoTypeLimit'
    { _gpdvitlMaxFindings :: !(Maybe (Textual Int32))
    , _gpdvitlInfoType    :: !(Maybe GooglePrivacyDlpV2InfoType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2InfoTypeLimit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvitlMaxFindings'
--
-- * 'gpdvitlInfoType'
googlePrivacyDlpV2InfoTypeLimit
    :: GooglePrivacyDlpV2InfoTypeLimit
googlePrivacyDlpV2InfoTypeLimit =
  GooglePrivacyDlpV2InfoTypeLimit'
    {_gpdvitlMaxFindings = Nothing, _gpdvitlInfoType = Nothing}

-- | Max findings limit for the given infoType.
gpdvitlMaxFindings :: Lens' GooglePrivacyDlpV2InfoTypeLimit (Maybe Int32)
gpdvitlMaxFindings
  = lens _gpdvitlMaxFindings
      (\ s a -> s{_gpdvitlMaxFindings = a})
      . mapping _Coerce

-- | Type of information the findings limit applies to. Only one limit per
-- info_type should be provided. If InfoTypeLimit does not have an
-- info_type, the DLP API applies the limit against all info_types that are
-- found but not specified in another InfoTypeLimit.
gpdvitlInfoType :: Lens' GooglePrivacyDlpV2InfoTypeLimit (Maybe GooglePrivacyDlpV2InfoType)
gpdvitlInfoType
  = lens _gpdvitlInfoType
      (\ s a -> s{_gpdvitlInfoType = a})

instance FromJSON GooglePrivacyDlpV2InfoTypeLimit
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2InfoTypeLimit"
              (\ o ->
                 GooglePrivacyDlpV2InfoTypeLimit' <$>
                   (o .:? "maxFindings") <*> (o .:? "infoType"))

instance ToJSON GooglePrivacyDlpV2InfoTypeLimit where
        toJSON GooglePrivacyDlpV2InfoTypeLimit'{..}
          = object
              (catMaybes
                 [("maxFindings" .=) <$> _gpdvitlMaxFindings,
                  ("infoType" .=) <$> _gpdvitlInfoType])

-- | Location of a finding within a table.
--
-- /See:/ 'googlePrivacyDlpV2TableLocation' smart constructor.
newtype GooglePrivacyDlpV2TableLocation =
  GooglePrivacyDlpV2TableLocation'
    { _gpdvtlRowIndex :: Maybe (Textual Int64)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2TableLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvtlRowIndex'
googlePrivacyDlpV2TableLocation
    :: GooglePrivacyDlpV2TableLocation
googlePrivacyDlpV2TableLocation =
  GooglePrivacyDlpV2TableLocation' {_gpdvtlRowIndex = Nothing}

-- | The zero-based index of the row where the finding is located.
gpdvtlRowIndex :: Lens' GooglePrivacyDlpV2TableLocation (Maybe Int64)
gpdvtlRowIndex
  = lens _gpdvtlRowIndex
      (\ s a -> s{_gpdvtlRowIndex = a})
      . mapping _Coerce

instance FromJSON GooglePrivacyDlpV2TableLocation
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2TableLocation"
              (\ o ->
                 GooglePrivacyDlpV2TableLocation' <$>
                   (o .:? "rowIndex"))

instance ToJSON GooglePrivacyDlpV2TableLocation where
        toJSON GooglePrivacyDlpV2TableLocation'{..}
          = object
              (catMaybes [("rowIndex" .=) <$> _gpdvtlRowIndex])

--
-- /See:/ 'googlePrivacyDlpV2TimeZone' smart constructor.
newtype GooglePrivacyDlpV2TimeZone =
  GooglePrivacyDlpV2TimeZone'
    { _gpdvtzOffSetMinutes :: Maybe (Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2TimeZone' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvtzOffSetMinutes'
googlePrivacyDlpV2TimeZone
    :: GooglePrivacyDlpV2TimeZone
googlePrivacyDlpV2TimeZone =
  GooglePrivacyDlpV2TimeZone' {_gpdvtzOffSetMinutes = Nothing}

-- | Set only if the offset can be determined. Positive for time ahead of
-- UTC. E.g. For \"UTC-9\", this value is -540.
gpdvtzOffSetMinutes :: Lens' GooglePrivacyDlpV2TimeZone (Maybe Int32)
gpdvtzOffSetMinutes
  = lens _gpdvtzOffSetMinutes
      (\ s a -> s{_gpdvtzOffSetMinutes = a})
      . mapping _Coerce

instance FromJSON GooglePrivacyDlpV2TimeZone where
        parseJSON
          = withObject "GooglePrivacyDlpV2TimeZone"
              (\ o ->
                 GooglePrivacyDlpV2TimeZone' <$>
                   (o .:? "offsetMinutes"))

instance ToJSON GooglePrivacyDlpV2TimeZone where
        toJSON GooglePrivacyDlpV2TimeZone'{..}
          = object
              (catMaybes
                 [("offsetMinutes" .=) <$> _gpdvtzOffSetMinutes])

-- | Shared message indicating Cloud storage type.
--
-- /See:/ 'googlePrivacyDlpV2StorageConfig' smart constructor.
data GooglePrivacyDlpV2StorageConfig =
  GooglePrivacyDlpV2StorageConfig'
    { _gpdvscTimespanConfig      :: !(Maybe GooglePrivacyDlpV2TimespanConfig)
    , _gpdvscBigQueryOptions     :: !(Maybe GooglePrivacyDlpV2BigQueryOptions)
    , _gpdvscDatastoreOptions    :: !(Maybe GooglePrivacyDlpV2DatastoreOptions)
    , _gpdvscCloudStorageOptions :: !(Maybe GooglePrivacyDlpV2CloudStorageOptions)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2StorageConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvscTimespanConfig'
--
-- * 'gpdvscBigQueryOptions'
--
-- * 'gpdvscDatastoreOptions'
--
-- * 'gpdvscCloudStorageOptions'
googlePrivacyDlpV2StorageConfig
    :: GooglePrivacyDlpV2StorageConfig
googlePrivacyDlpV2StorageConfig =
  GooglePrivacyDlpV2StorageConfig'
    { _gpdvscTimespanConfig = Nothing
    , _gpdvscBigQueryOptions = Nothing
    , _gpdvscDatastoreOptions = Nothing
    , _gpdvscCloudStorageOptions = Nothing
    }

gpdvscTimespanConfig :: Lens' GooglePrivacyDlpV2StorageConfig (Maybe GooglePrivacyDlpV2TimespanConfig)
gpdvscTimespanConfig
  = lens _gpdvscTimespanConfig
      (\ s a -> s{_gpdvscTimespanConfig = a})

-- | BigQuery options specification.
gpdvscBigQueryOptions :: Lens' GooglePrivacyDlpV2StorageConfig (Maybe GooglePrivacyDlpV2BigQueryOptions)
gpdvscBigQueryOptions
  = lens _gpdvscBigQueryOptions
      (\ s a -> s{_gpdvscBigQueryOptions = a})

-- | Google Cloud Datastore options specification.
gpdvscDatastoreOptions :: Lens' GooglePrivacyDlpV2StorageConfig (Maybe GooglePrivacyDlpV2DatastoreOptions)
gpdvscDatastoreOptions
  = lens _gpdvscDatastoreOptions
      (\ s a -> s{_gpdvscDatastoreOptions = a})

-- | Google Cloud Storage options specification.
gpdvscCloudStorageOptions :: Lens' GooglePrivacyDlpV2StorageConfig (Maybe GooglePrivacyDlpV2CloudStorageOptions)
gpdvscCloudStorageOptions
  = lens _gpdvscCloudStorageOptions
      (\ s a -> s{_gpdvscCloudStorageOptions = a})

instance FromJSON GooglePrivacyDlpV2StorageConfig
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2StorageConfig"
              (\ o ->
                 GooglePrivacyDlpV2StorageConfig' <$>
                   (o .:? "timespanConfig") <*>
                     (o .:? "bigQueryOptions")
                     <*> (o .:? "datastoreOptions")
                     <*> (o .:? "cloudStorageOptions"))

instance ToJSON GooglePrivacyDlpV2StorageConfig where
        toJSON GooglePrivacyDlpV2StorageConfig'{..}
          = object
              (catMaybes
                 [("timespanConfig" .=) <$> _gpdvscTimespanConfig,
                  ("bigQueryOptions" .=) <$> _gpdvscBigQueryOptions,
                  ("datastoreOptions" .=) <$> _gpdvscDatastoreOptions,
                  ("cloudStorageOptions" .=) <$>
                    _gpdvscCloudStorageOptions])

-- | Set of primitive values supported by the system. Note that for the
-- purposes of inspection or transformation, the number of bytes considered
-- to comprise a \'Value\' is based on its representation as a UTF-8
-- encoded string. For example, if \'integer_value\' is set to 123456789,
-- the number of bytes would be counted as 9, even though an int64 only
-- holds up to 8 bytes of data.
--
-- /See:/ 'googlePrivacyDlpV2Value' smart constructor.
data GooglePrivacyDlpV2Value =
  GooglePrivacyDlpV2Value'
    { _gpdvvDayOfWeekValue :: !(Maybe GooglePrivacyDlpV2ValueDayOfWeekValue)
    , _gpdvvIntegerValue   :: !(Maybe (Textual Int64))
    , _gpdvvTimestampValue :: !(Maybe DateTime')
    , _gpdvvTimeValue      :: !(Maybe GoogleTypeTimeOfDay)
    , _gpdvvStringValue    :: !(Maybe Text)
    , _gpdvvDateValue      :: !(Maybe GoogleTypeDate)
    , _gpdvvBooleanValue   :: !(Maybe Bool)
    , _gpdvvFloatValue     :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Value' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvvDayOfWeekValue'
--
-- * 'gpdvvIntegerValue'
--
-- * 'gpdvvTimestampValue'
--
-- * 'gpdvvTimeValue'
--
-- * 'gpdvvStringValue'
--
-- * 'gpdvvDateValue'
--
-- * 'gpdvvBooleanValue'
--
-- * 'gpdvvFloatValue'
googlePrivacyDlpV2Value
    :: GooglePrivacyDlpV2Value
googlePrivacyDlpV2Value =
  GooglePrivacyDlpV2Value'
    { _gpdvvDayOfWeekValue = Nothing
    , _gpdvvIntegerValue = Nothing
    , _gpdvvTimestampValue = Nothing
    , _gpdvvTimeValue = Nothing
    , _gpdvvStringValue = Nothing
    , _gpdvvDateValue = Nothing
    , _gpdvvBooleanValue = Nothing
    , _gpdvvFloatValue = Nothing
    }

gpdvvDayOfWeekValue :: Lens' GooglePrivacyDlpV2Value (Maybe GooglePrivacyDlpV2ValueDayOfWeekValue)
gpdvvDayOfWeekValue
  = lens _gpdvvDayOfWeekValue
      (\ s a -> s{_gpdvvDayOfWeekValue = a})

gpdvvIntegerValue :: Lens' GooglePrivacyDlpV2Value (Maybe Int64)
gpdvvIntegerValue
  = lens _gpdvvIntegerValue
      (\ s a -> s{_gpdvvIntegerValue = a})
      . mapping _Coerce

gpdvvTimestampValue :: Lens' GooglePrivacyDlpV2Value (Maybe UTCTime)
gpdvvTimestampValue
  = lens _gpdvvTimestampValue
      (\ s a -> s{_gpdvvTimestampValue = a})
      . mapping _DateTime

gpdvvTimeValue :: Lens' GooglePrivacyDlpV2Value (Maybe GoogleTypeTimeOfDay)
gpdvvTimeValue
  = lens _gpdvvTimeValue
      (\ s a -> s{_gpdvvTimeValue = a})

gpdvvStringValue :: Lens' GooglePrivacyDlpV2Value (Maybe Text)
gpdvvStringValue
  = lens _gpdvvStringValue
      (\ s a -> s{_gpdvvStringValue = a})

gpdvvDateValue :: Lens' GooglePrivacyDlpV2Value (Maybe GoogleTypeDate)
gpdvvDateValue
  = lens _gpdvvDateValue
      (\ s a -> s{_gpdvvDateValue = a})

gpdvvBooleanValue :: Lens' GooglePrivacyDlpV2Value (Maybe Bool)
gpdvvBooleanValue
  = lens _gpdvvBooleanValue
      (\ s a -> s{_gpdvvBooleanValue = a})

gpdvvFloatValue :: Lens' GooglePrivacyDlpV2Value (Maybe Double)
gpdvvFloatValue
  = lens _gpdvvFloatValue
      (\ s a -> s{_gpdvvFloatValue = a})
      . mapping _Coerce

instance FromJSON GooglePrivacyDlpV2Value where
        parseJSON
          = withObject "GooglePrivacyDlpV2Value"
              (\ o ->
                 GooglePrivacyDlpV2Value' <$>
                   (o .:? "dayOfWeekValue") <*> (o .:? "integerValue")
                     <*> (o .:? "timestampValue")
                     <*> (o .:? "timeValue")
                     <*> (o .:? "stringValue")
                     <*> (o .:? "dateValue")
                     <*> (o .:? "booleanValue")
                     <*> (o .:? "floatValue"))

instance ToJSON GooglePrivacyDlpV2Value where
        toJSON GooglePrivacyDlpV2Value'{..}
          = object
              (catMaybes
                 [("dayOfWeekValue" .=) <$> _gpdvvDayOfWeekValue,
                  ("integerValue" .=) <$> _gpdvvIntegerValue,
                  ("timestampValue" .=) <$> _gpdvvTimestampValue,
                  ("timeValue" .=) <$> _gpdvvTimeValue,
                  ("stringValue" .=) <$> _gpdvvStringValue,
                  ("dateValue" .=) <$> _gpdvvDateValue,
                  ("booleanValue" .=) <$> _gpdvvBooleanValue,
                  ("floatValue" .=) <$> _gpdvvFloatValue])

-- | Custom information type based on a dictionary of words or phrases. This
-- can be used to match sensitive information specific to the data, such as
-- a list of employee IDs or job titles. Dictionary words are
-- case-insensitive and all characters other than letters and digits in the
-- unicode [Basic Multilingual
-- Plane](https:\/\/en.wikipedia.org\/wiki\/Plane_%28Unicode%29#Basic_Multilingual_Plane)
-- will be replaced with whitespace when scanning for matches, so the
-- dictionary phrase \"Sam Johnson\" will match all three phrases \"sam
-- johnson\", \"Sam, Johnson\", and \"Sam (Johnson)\". Additionally, the
-- characters surrounding any match must be of a different type than the
-- adjacent characters within the word, so letters must be next to
-- non-letters and digits next to non-digits. For example, the dictionary
-- word \"jen\" will match the first three letters of the text \"jen123\"
-- but will return no matches for \"jennifer\". Dictionary words containing
-- a large number of characters that are not letters or digits may result
-- in unexpected findings because such characters are treated as
-- whitespace. The [limits](https:\/\/cloud.google.com\/dlp\/limits) page
-- contains details about the size limits of dictionaries. For dictionaries
-- that do not fit within these constraints, consider using
-- \`LargeCustomDictionaryConfig\` in the \`StoredInfoType\` API.
--
-- /See:/ 'googlePrivacyDlpV2Dictionary' smart constructor.
data GooglePrivacyDlpV2Dictionary =
  GooglePrivacyDlpV2Dictionary'
    { _gpdvdWordList         :: !(Maybe GooglePrivacyDlpV2WordList)
    , _gpdvdCloudStoragePath :: !(Maybe GooglePrivacyDlpV2CloudStoragePath)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Dictionary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvdWordList'
--
-- * 'gpdvdCloudStoragePath'
googlePrivacyDlpV2Dictionary
    :: GooglePrivacyDlpV2Dictionary
googlePrivacyDlpV2Dictionary =
  GooglePrivacyDlpV2Dictionary'
    {_gpdvdWordList = Nothing, _gpdvdCloudStoragePath = Nothing}

-- | List of words or phrases to search for.
gpdvdWordList :: Lens' GooglePrivacyDlpV2Dictionary (Maybe GooglePrivacyDlpV2WordList)
gpdvdWordList
  = lens _gpdvdWordList
      (\ s a -> s{_gpdvdWordList = a})

-- | Newline-delimited file of words in Cloud Storage. Only a single file is
-- accepted.
gpdvdCloudStoragePath :: Lens' GooglePrivacyDlpV2Dictionary (Maybe GooglePrivacyDlpV2CloudStoragePath)
gpdvdCloudStoragePath
  = lens _gpdvdCloudStoragePath
      (\ s a -> s{_gpdvdCloudStoragePath = a})

instance FromJSON GooglePrivacyDlpV2Dictionary where
        parseJSON
          = withObject "GooglePrivacyDlpV2Dictionary"
              (\ o ->
                 GooglePrivacyDlpV2Dictionary' <$>
                   (o .:? "wordList") <*> (o .:? "cloudStoragePath"))

instance ToJSON GooglePrivacyDlpV2Dictionary where
        toJSON GooglePrivacyDlpV2Dictionary'{..}
          = object
              (catMaybes
                 [("wordList" .=) <$> _gpdvdWordList,
                  ("cloudStoragePath" .=) <$> _gpdvdCloudStoragePath])

-- | Result of a risk analysis operation request.
--
-- /See:/ 'googlePrivacyDlpV2AnalyzeDataSourceRiskDetails' smart constructor.
data GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails =
  GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails'
    { _gpdvadsrdRequestedPrivacyMetric        :: !(Maybe GooglePrivacyDlpV2PrivacyMetric)
    , _gpdvadsrdRequestedSourceTable          :: !(Maybe GooglePrivacyDlpV2BigQueryTable)
    , _gpdvadsrdLDiversityResult              :: !(Maybe GooglePrivacyDlpV2LDiversityResult)
    , _gpdvadsrdKAnonymityResult              :: !(Maybe GooglePrivacyDlpV2KAnonymityResult)
    , _gpdvadsrdKMapEstimationResult          :: !(Maybe GooglePrivacyDlpV2KMapEstimationResult)
    , _gpdvadsrdDeltaPresenceEstimationResult :: !(Maybe GooglePrivacyDlpV2DeltaPresenceEstimationResult)
    , _gpdvadsrdNumericalStatsResult          :: !(Maybe GooglePrivacyDlpV2NumericalStatsResult)
    , _gpdvadsrdCategoricalStatsResult        :: !(Maybe GooglePrivacyDlpV2CategoricalStatsResult)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvadsrdRequestedPrivacyMetric'
--
-- * 'gpdvadsrdRequestedSourceTable'
--
-- * 'gpdvadsrdLDiversityResult'
--
-- * 'gpdvadsrdKAnonymityResult'
--
-- * 'gpdvadsrdKMapEstimationResult'
--
-- * 'gpdvadsrdDeltaPresenceEstimationResult'
--
-- * 'gpdvadsrdNumericalStatsResult'
--
-- * 'gpdvadsrdCategoricalStatsResult'
googlePrivacyDlpV2AnalyzeDataSourceRiskDetails
    :: GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails
googlePrivacyDlpV2AnalyzeDataSourceRiskDetails =
  GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails'
    { _gpdvadsrdRequestedPrivacyMetric = Nothing
    , _gpdvadsrdRequestedSourceTable = Nothing
    , _gpdvadsrdLDiversityResult = Nothing
    , _gpdvadsrdKAnonymityResult = Nothing
    , _gpdvadsrdKMapEstimationResult = Nothing
    , _gpdvadsrdDeltaPresenceEstimationResult = Nothing
    , _gpdvadsrdNumericalStatsResult = Nothing
    , _gpdvadsrdCategoricalStatsResult = Nothing
    }

-- | Privacy metric to compute.
gpdvadsrdRequestedPrivacyMetric :: Lens' GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails (Maybe GooglePrivacyDlpV2PrivacyMetric)
gpdvadsrdRequestedPrivacyMetric
  = lens _gpdvadsrdRequestedPrivacyMetric
      (\ s a -> s{_gpdvadsrdRequestedPrivacyMetric = a})

-- | Input dataset to compute metrics over.
gpdvadsrdRequestedSourceTable :: Lens' GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails (Maybe GooglePrivacyDlpV2BigQueryTable)
gpdvadsrdRequestedSourceTable
  = lens _gpdvadsrdRequestedSourceTable
      (\ s a -> s{_gpdvadsrdRequestedSourceTable = a})

gpdvadsrdLDiversityResult :: Lens' GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails (Maybe GooglePrivacyDlpV2LDiversityResult)
gpdvadsrdLDiversityResult
  = lens _gpdvadsrdLDiversityResult
      (\ s a -> s{_gpdvadsrdLDiversityResult = a})

gpdvadsrdKAnonymityResult :: Lens' GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails (Maybe GooglePrivacyDlpV2KAnonymityResult)
gpdvadsrdKAnonymityResult
  = lens _gpdvadsrdKAnonymityResult
      (\ s a -> s{_gpdvadsrdKAnonymityResult = a})

gpdvadsrdKMapEstimationResult :: Lens' GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails (Maybe GooglePrivacyDlpV2KMapEstimationResult)
gpdvadsrdKMapEstimationResult
  = lens _gpdvadsrdKMapEstimationResult
      (\ s a -> s{_gpdvadsrdKMapEstimationResult = a})

gpdvadsrdDeltaPresenceEstimationResult :: Lens' GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails (Maybe GooglePrivacyDlpV2DeltaPresenceEstimationResult)
gpdvadsrdDeltaPresenceEstimationResult
  = lens _gpdvadsrdDeltaPresenceEstimationResult
      (\ s a ->
         s{_gpdvadsrdDeltaPresenceEstimationResult = a})

gpdvadsrdNumericalStatsResult :: Lens' GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails (Maybe GooglePrivacyDlpV2NumericalStatsResult)
gpdvadsrdNumericalStatsResult
  = lens _gpdvadsrdNumericalStatsResult
      (\ s a -> s{_gpdvadsrdNumericalStatsResult = a})

gpdvadsrdCategoricalStatsResult :: Lens' GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails (Maybe GooglePrivacyDlpV2CategoricalStatsResult)
gpdvadsrdCategoricalStatsResult
  = lens _gpdvadsrdCategoricalStatsResult
      (\ s a -> s{_gpdvadsrdCategoricalStatsResult = a})

instance FromJSON
           GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails"
              (\ o ->
                 GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails' <$>
                   (o .:? "requestedPrivacyMetric") <*>
                     (o .:? "requestedSourceTable")
                     <*> (o .:? "lDiversityResult")
                     <*> (o .:? "kAnonymityResult")
                     <*> (o .:? "kMapEstimationResult")
                     <*> (o .:? "deltaPresenceEstimationResult")
                     <*> (o .:? "numericalStatsResult")
                     <*> (o .:? "categoricalStatsResult"))

instance ToJSON
           GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails
         where
        toJSON
          GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails'{..}
          = object
              (catMaybes
                 [("requestedPrivacyMetric" .=) <$>
                    _gpdvadsrdRequestedPrivacyMetric,
                  ("requestedSourceTable" .=) <$>
                    _gpdvadsrdRequestedSourceTable,
                  ("lDiversityResult" .=) <$>
                    _gpdvadsrdLDiversityResult,
                  ("kAnonymityResult" .=) <$>
                    _gpdvadsrdKAnonymityResult,
                  ("kMapEstimationResult" .=) <$>
                    _gpdvadsrdKMapEstimationResult,
                  ("deltaPresenceEstimationResult" .=) <$>
                    _gpdvadsrdDeltaPresenceEstimationResult,
                  ("numericalStatsResult" .=) <$>
                    _gpdvadsrdNumericalStatsResult,
                  ("categoricalStatsResult" .=) <$>
                    _gpdvadsrdCategoricalStatsResult])

-- | A collection of conditions.
--
-- /See:/ 'googlePrivacyDlpV2Conditions' smart constructor.
newtype GooglePrivacyDlpV2Conditions =
  GooglePrivacyDlpV2Conditions'
    { _gpdvcConditions :: Maybe [GooglePrivacyDlpV2Condition]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Conditions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvcConditions'
googlePrivacyDlpV2Conditions
    :: GooglePrivacyDlpV2Conditions
googlePrivacyDlpV2Conditions =
  GooglePrivacyDlpV2Conditions' {_gpdvcConditions = Nothing}

gpdvcConditions :: Lens' GooglePrivacyDlpV2Conditions [GooglePrivacyDlpV2Condition]
gpdvcConditions
  = lens _gpdvcConditions
      (\ s a -> s{_gpdvcConditions = a})
      . _Default
      . _Coerce

instance FromJSON GooglePrivacyDlpV2Conditions where
        parseJSON
          = withObject "GooglePrivacyDlpV2Conditions"
              (\ o ->
                 GooglePrivacyDlpV2Conditions' <$>
                   (o .:? "conditions" .!= mempty))

instance ToJSON GooglePrivacyDlpV2Conditions where
        toJSON GooglePrivacyDlpV2Conditions'{..}
          = object
              (catMaybes [("conditions" .=) <$> _gpdvcConditions])

-- | Record key for a finding in Cloud Datastore.
--
-- /See:/ 'googlePrivacyDlpV2DatastoreKey' smart constructor.
newtype GooglePrivacyDlpV2DatastoreKey =
  GooglePrivacyDlpV2DatastoreKey'
    { _gpdvdkEntityKey :: Maybe GooglePrivacyDlpV2Key
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DatastoreKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvdkEntityKey'
googlePrivacyDlpV2DatastoreKey
    :: GooglePrivacyDlpV2DatastoreKey
googlePrivacyDlpV2DatastoreKey =
  GooglePrivacyDlpV2DatastoreKey' {_gpdvdkEntityKey = Nothing}

-- | Datastore entity key.
gpdvdkEntityKey :: Lens' GooglePrivacyDlpV2DatastoreKey (Maybe GooglePrivacyDlpV2Key)
gpdvdkEntityKey
  = lens _gpdvdkEntityKey
      (\ s a -> s{_gpdvdkEntityKey = a})

instance FromJSON GooglePrivacyDlpV2DatastoreKey
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2DatastoreKey"
              (\ o ->
                 GooglePrivacyDlpV2DatastoreKey' <$>
                   (o .:? "entityKey"))

instance ToJSON GooglePrivacyDlpV2DatastoreKey where
        toJSON GooglePrivacyDlpV2DatastoreKey'{..}
          = object
              (catMaybes [("entityKey" .=) <$> _gpdvdkEntityKey])

-- | A tuple of values for the quasi-identifier columns.
--
-- /See:/ 'googlePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues' smart constructor.
data GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues =
  GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues'
    { _gpdvdpeqivEstimatedProbability :: !(Maybe (Textual Double))
    , _gpdvdpeqivQuasiIdsValues       :: !(Maybe [GooglePrivacyDlpV2Value])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvdpeqivEstimatedProbability'
--
-- * 'gpdvdpeqivQuasiIdsValues'
googlePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues
    :: GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues
googlePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues =
  GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues'
    { _gpdvdpeqivEstimatedProbability = Nothing
    , _gpdvdpeqivQuasiIdsValues = Nothing
    }

-- | The estimated probability that a given individual sharing these
-- quasi-identifier values is in the dataset. This value, typically called
-- δ, is the ratio between the number of records in the dataset with these
-- quasi-identifier values, and the total number of individuals (inside
-- *and* outside the dataset) with these quasi-identifier values. For
-- example, if there are 15 individuals in the dataset who share the same
-- quasi-identifier values, and an estimated 100 people in the entire
-- population with these values, then δ is 0.15.
gpdvdpeqivEstimatedProbability :: Lens' GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues (Maybe Double)
gpdvdpeqivEstimatedProbability
  = lens _gpdvdpeqivEstimatedProbability
      (\ s a -> s{_gpdvdpeqivEstimatedProbability = a})
      . mapping _Coerce

-- | The quasi-identifier values.
gpdvdpeqivQuasiIdsValues :: Lens' GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues [GooglePrivacyDlpV2Value]
gpdvdpeqivQuasiIdsValues
  = lens _gpdvdpeqivQuasiIdsValues
      (\ s a -> s{_gpdvdpeqivQuasiIdsValues = a})
      . _Default
      . _Coerce

instance FromJSON
           GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues"
              (\ o ->
                 GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues'
                   <$>
                   (o .:? "estimatedProbability") <*>
                     (o .:? "quasiIdsValues" .!= mempty))

instance ToJSON
           GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues
         where
        toJSON
          GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues'{..}
          = object
              (catMaybes
                 [("estimatedProbability" .=) <$>
                    _gpdvdpeqivEstimatedProbability,
                  ("quasiIdsValues" .=) <$> _gpdvdpeqivQuasiIdsValues])

-- | Characters to skip when doing deidentification of a value. These will be
-- left alone and skipped.
--
-- /See:/ 'googlePrivacyDlpV2CharsToIgnore' smart constructor.
data GooglePrivacyDlpV2CharsToIgnore =
  GooglePrivacyDlpV2CharsToIgnore'
    { _gpdvctiCommonCharactersToIgnore :: !(Maybe GooglePrivacyDlpV2CharsToIgnoreCommonCharactersToIgnore)
    , _gpdvctiCharactersToSkip         :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CharsToIgnore' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvctiCommonCharactersToIgnore'
--
-- * 'gpdvctiCharactersToSkip'
googlePrivacyDlpV2CharsToIgnore
    :: GooglePrivacyDlpV2CharsToIgnore
googlePrivacyDlpV2CharsToIgnore =
  GooglePrivacyDlpV2CharsToIgnore'
    { _gpdvctiCommonCharactersToIgnore = Nothing
    , _gpdvctiCharactersToSkip = Nothing
    }

gpdvctiCommonCharactersToIgnore :: Lens' GooglePrivacyDlpV2CharsToIgnore (Maybe GooglePrivacyDlpV2CharsToIgnoreCommonCharactersToIgnore)
gpdvctiCommonCharactersToIgnore
  = lens _gpdvctiCommonCharactersToIgnore
      (\ s a -> s{_gpdvctiCommonCharactersToIgnore = a})

gpdvctiCharactersToSkip :: Lens' GooglePrivacyDlpV2CharsToIgnore (Maybe Text)
gpdvctiCharactersToSkip
  = lens _gpdvctiCharactersToSkip
      (\ s a -> s{_gpdvctiCharactersToSkip = a})

instance FromJSON GooglePrivacyDlpV2CharsToIgnore
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2CharsToIgnore"
              (\ o ->
                 GooglePrivacyDlpV2CharsToIgnore' <$>
                   (o .:? "commonCharactersToIgnore") <*>
                     (o .:? "charactersToSkip"))

instance ToJSON GooglePrivacyDlpV2CharsToIgnore where
        toJSON GooglePrivacyDlpV2CharsToIgnore'{..}
          = object
              (catMaybes
                 [("commonCharactersToIgnore" .=) <$>
                    _gpdvctiCommonCharactersToIgnore,
                  ("charactersToSkip" .=) <$>
                    _gpdvctiCharactersToSkip])

-- | Message defining the location of a BigQuery table. A table is uniquely
-- identified by its project_id, dataset_id, and table_name. Within a query
-- a table is often referenced with a string in the format of: \`:.\` or
-- \`..\`.
--
-- /See:/ 'googlePrivacyDlpV2BigQueryTable' smart constructor.
data GooglePrivacyDlpV2BigQueryTable =
  GooglePrivacyDlpV2BigQueryTable'
    { _gpdvbqtDataSetId :: !(Maybe Text)
    , _gpdvbqtProjectId :: !(Maybe Text)
    , _gpdvbqtTableId   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2BigQueryTable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvbqtDataSetId'
--
-- * 'gpdvbqtProjectId'
--
-- * 'gpdvbqtTableId'
googlePrivacyDlpV2BigQueryTable
    :: GooglePrivacyDlpV2BigQueryTable
googlePrivacyDlpV2BigQueryTable =
  GooglePrivacyDlpV2BigQueryTable'
    { _gpdvbqtDataSetId = Nothing
    , _gpdvbqtProjectId = Nothing
    , _gpdvbqtTableId = Nothing
    }

-- | Dataset ID of the table.
gpdvbqtDataSetId :: Lens' GooglePrivacyDlpV2BigQueryTable (Maybe Text)
gpdvbqtDataSetId
  = lens _gpdvbqtDataSetId
      (\ s a -> s{_gpdvbqtDataSetId = a})

-- | The Google Cloud Platform project ID of the project containing the
-- table. If omitted, project ID is inferred from the API call.
gpdvbqtProjectId :: Lens' GooglePrivacyDlpV2BigQueryTable (Maybe Text)
gpdvbqtProjectId
  = lens _gpdvbqtProjectId
      (\ s a -> s{_gpdvbqtProjectId = a})

-- | Name of the table.
gpdvbqtTableId :: Lens' GooglePrivacyDlpV2BigQueryTable (Maybe Text)
gpdvbqtTableId
  = lens _gpdvbqtTableId
      (\ s a -> s{_gpdvbqtTableId = a})

instance FromJSON GooglePrivacyDlpV2BigQueryTable
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2BigQueryTable"
              (\ o ->
                 GooglePrivacyDlpV2BigQueryTable' <$>
                   (o .:? "datasetId") <*> (o .:? "projectId") <*>
                     (o .:? "tableId"))

instance ToJSON GooglePrivacyDlpV2BigQueryTable where
        toJSON GooglePrivacyDlpV2BigQueryTable'{..}
          = object
              (catMaybes
                 [("datasetId" .=) <$> _gpdvbqtDataSetId,
                  ("projectId" .=) <$> _gpdvbqtProjectId,
                  ("tableId" .=) <$> _gpdvbqtTableId])

--
-- /See:/ 'googlePrivacyDlpV2RequestedOptions' smart constructor.
data GooglePrivacyDlpV2RequestedOptions =
  GooglePrivacyDlpV2RequestedOptions'
    { _gpdvroSnapshotInspectTemplate :: !(Maybe GooglePrivacyDlpV2InspectTemplate)
    , _gpdvroJobConfig               :: !(Maybe GooglePrivacyDlpV2InspectJobConfig)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2RequestedOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvroSnapshotInspectTemplate'
--
-- * 'gpdvroJobConfig'
googlePrivacyDlpV2RequestedOptions
    :: GooglePrivacyDlpV2RequestedOptions
googlePrivacyDlpV2RequestedOptions =
  GooglePrivacyDlpV2RequestedOptions'
    {_gpdvroSnapshotInspectTemplate = Nothing, _gpdvroJobConfig = Nothing}

-- | If run with an InspectTemplate, a snapshot of its state at the time of
-- this run.
gpdvroSnapshotInspectTemplate :: Lens' GooglePrivacyDlpV2RequestedOptions (Maybe GooglePrivacyDlpV2InspectTemplate)
gpdvroSnapshotInspectTemplate
  = lens _gpdvroSnapshotInspectTemplate
      (\ s a -> s{_gpdvroSnapshotInspectTemplate = a})

gpdvroJobConfig :: Lens' GooglePrivacyDlpV2RequestedOptions (Maybe GooglePrivacyDlpV2InspectJobConfig)
gpdvroJobConfig
  = lens _gpdvroJobConfig
      (\ s a -> s{_gpdvroJobConfig = a})

instance FromJSON GooglePrivacyDlpV2RequestedOptions
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2RequestedOptions"
              (\ o ->
                 GooglePrivacyDlpV2RequestedOptions' <$>
                   (o .:? "snapshotInspectTemplate") <*>
                     (o .:? "jobConfig"))

instance ToJSON GooglePrivacyDlpV2RequestedOptions
         where
        toJSON GooglePrivacyDlpV2RequestedOptions'{..}
          = object
              (catMaybes
                 [("snapshotInspectTemplate" .=) <$>
                    _gpdvroSnapshotInspectTemplate,
                  ("jobConfig" .=) <$> _gpdvroJobConfig])

-- | A rule for transforming a value.
--
-- /See:/ 'googlePrivacyDlpV2PrimitiveTransformation' smart constructor.
data GooglePrivacyDlpV2PrimitiveTransformation =
  GooglePrivacyDlpV2PrimitiveTransformation'
    { _gpdvptFixedSizeBucketingConfig  :: !(Maybe GooglePrivacyDlpV2FixedSizeBucketingConfig)
    , _gpdvptRedactConfig              :: !(Maybe GooglePrivacyDlpV2RedactConfig)
    , _gpdvptCharacterMaskConfig       :: !(Maybe GooglePrivacyDlpV2CharacterMaskConfig)
    , _gpdvptTimePartConfig            :: !(Maybe GooglePrivacyDlpV2TimePartConfig)
    , _gpdvptDateShiftConfig           :: !(Maybe GooglePrivacyDlpV2DateShiftConfig)
    , _gpdvptBucketingConfig           :: !(Maybe GooglePrivacyDlpV2BucketingConfig)
    , _gpdvptReplaceWithInfoTypeConfig :: !(Maybe GooglePrivacyDlpV2ReplaceWithInfoTypeConfig)
    , _gpdvptCryptoHashConfig          :: !(Maybe GooglePrivacyDlpV2CryptoHashConfig)
    , _gpdvptReplaceConfig             :: !(Maybe GooglePrivacyDlpV2ReplaceValueConfig)
    , _gpdvptCryptoReplaceFfxFpeConfig :: !(Maybe GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2PrimitiveTransformation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvptFixedSizeBucketingConfig'
--
-- * 'gpdvptRedactConfig'
--
-- * 'gpdvptCharacterMaskConfig'
--
-- * 'gpdvptTimePartConfig'
--
-- * 'gpdvptDateShiftConfig'
--
-- * 'gpdvptBucketingConfig'
--
-- * 'gpdvptReplaceWithInfoTypeConfig'
--
-- * 'gpdvptCryptoHashConfig'
--
-- * 'gpdvptReplaceConfig'
--
-- * 'gpdvptCryptoReplaceFfxFpeConfig'
googlePrivacyDlpV2PrimitiveTransformation
    :: GooglePrivacyDlpV2PrimitiveTransformation
googlePrivacyDlpV2PrimitiveTransformation =
  GooglePrivacyDlpV2PrimitiveTransformation'
    { _gpdvptFixedSizeBucketingConfig = Nothing
    , _gpdvptRedactConfig = Nothing
    , _gpdvptCharacterMaskConfig = Nothing
    , _gpdvptTimePartConfig = Nothing
    , _gpdvptDateShiftConfig = Nothing
    , _gpdvptBucketingConfig = Nothing
    , _gpdvptReplaceWithInfoTypeConfig = Nothing
    , _gpdvptCryptoHashConfig = Nothing
    , _gpdvptReplaceConfig = Nothing
    , _gpdvptCryptoReplaceFfxFpeConfig = Nothing
    }

gpdvptFixedSizeBucketingConfig :: Lens' GooglePrivacyDlpV2PrimitiveTransformation (Maybe GooglePrivacyDlpV2FixedSizeBucketingConfig)
gpdvptFixedSizeBucketingConfig
  = lens _gpdvptFixedSizeBucketingConfig
      (\ s a -> s{_gpdvptFixedSizeBucketingConfig = a})

gpdvptRedactConfig :: Lens' GooglePrivacyDlpV2PrimitiveTransformation (Maybe GooglePrivacyDlpV2RedactConfig)
gpdvptRedactConfig
  = lens _gpdvptRedactConfig
      (\ s a -> s{_gpdvptRedactConfig = a})

gpdvptCharacterMaskConfig :: Lens' GooglePrivacyDlpV2PrimitiveTransformation (Maybe GooglePrivacyDlpV2CharacterMaskConfig)
gpdvptCharacterMaskConfig
  = lens _gpdvptCharacterMaskConfig
      (\ s a -> s{_gpdvptCharacterMaskConfig = a})

gpdvptTimePartConfig :: Lens' GooglePrivacyDlpV2PrimitiveTransformation (Maybe GooglePrivacyDlpV2TimePartConfig)
gpdvptTimePartConfig
  = lens _gpdvptTimePartConfig
      (\ s a -> s{_gpdvptTimePartConfig = a})

gpdvptDateShiftConfig :: Lens' GooglePrivacyDlpV2PrimitiveTransformation (Maybe GooglePrivacyDlpV2DateShiftConfig)
gpdvptDateShiftConfig
  = lens _gpdvptDateShiftConfig
      (\ s a -> s{_gpdvptDateShiftConfig = a})

gpdvptBucketingConfig :: Lens' GooglePrivacyDlpV2PrimitiveTransformation (Maybe GooglePrivacyDlpV2BucketingConfig)
gpdvptBucketingConfig
  = lens _gpdvptBucketingConfig
      (\ s a -> s{_gpdvptBucketingConfig = a})

gpdvptReplaceWithInfoTypeConfig :: Lens' GooglePrivacyDlpV2PrimitiveTransformation (Maybe GooglePrivacyDlpV2ReplaceWithInfoTypeConfig)
gpdvptReplaceWithInfoTypeConfig
  = lens _gpdvptReplaceWithInfoTypeConfig
      (\ s a -> s{_gpdvptReplaceWithInfoTypeConfig = a})

gpdvptCryptoHashConfig :: Lens' GooglePrivacyDlpV2PrimitiveTransformation (Maybe GooglePrivacyDlpV2CryptoHashConfig)
gpdvptCryptoHashConfig
  = lens _gpdvptCryptoHashConfig
      (\ s a -> s{_gpdvptCryptoHashConfig = a})

gpdvptReplaceConfig :: Lens' GooglePrivacyDlpV2PrimitiveTransformation (Maybe GooglePrivacyDlpV2ReplaceValueConfig)
gpdvptReplaceConfig
  = lens _gpdvptReplaceConfig
      (\ s a -> s{_gpdvptReplaceConfig = a})

gpdvptCryptoReplaceFfxFpeConfig :: Lens' GooglePrivacyDlpV2PrimitiveTransformation (Maybe GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig)
gpdvptCryptoReplaceFfxFpeConfig
  = lens _gpdvptCryptoReplaceFfxFpeConfig
      (\ s a -> s{_gpdvptCryptoReplaceFfxFpeConfig = a})

instance FromJSON
           GooglePrivacyDlpV2PrimitiveTransformation
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2PrimitiveTransformation"
              (\ o ->
                 GooglePrivacyDlpV2PrimitiveTransformation' <$>
                   (o .:? "fixedSizeBucketingConfig") <*>
                     (o .:? "redactConfig")
                     <*> (o .:? "characterMaskConfig")
                     <*> (o .:? "timePartConfig")
                     <*> (o .:? "dateShiftConfig")
                     <*> (o .:? "bucketingConfig")
                     <*> (o .:? "replaceWithInfoTypeConfig")
                     <*> (o .:? "cryptoHashConfig")
                     <*> (o .:? "replaceConfig")
                     <*> (o .:? "cryptoReplaceFfxFpeConfig"))

instance ToJSON
           GooglePrivacyDlpV2PrimitiveTransformation
         where
        toJSON GooglePrivacyDlpV2PrimitiveTransformation'{..}
          = object
              (catMaybes
                 [("fixedSizeBucketingConfig" .=) <$>
                    _gpdvptFixedSizeBucketingConfig,
                  ("redactConfig" .=) <$> _gpdvptRedactConfig,
                  ("characterMaskConfig" .=) <$>
                    _gpdvptCharacterMaskConfig,
                  ("timePartConfig" .=) <$> _gpdvptTimePartConfig,
                  ("dateShiftConfig" .=) <$> _gpdvptDateShiftConfig,
                  ("bucketingConfig" .=) <$> _gpdvptBucketingConfig,
                  ("replaceWithInfoTypeConfig" .=) <$>
                    _gpdvptReplaceWithInfoTypeConfig,
                  ("cryptoHashConfig" .=) <$> _gpdvptCryptoHashConfig,
                  ("replaceConfig" .=) <$> _gpdvptReplaceConfig,
                  ("cryptoReplaceFfxFpeConfig" .=) <$>
                    _gpdvptCryptoReplaceFfxFpeConfig])

-- | The request message for canceling a DLP job.
--
-- /See:/ 'googlePrivacyDlpV2CancelDlpJobRequest' smart constructor.
data GooglePrivacyDlpV2CancelDlpJobRequest =
  GooglePrivacyDlpV2CancelDlpJobRequest'
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CancelDlpJobRequest' with the minimum fields required to make a request.
--
googlePrivacyDlpV2CancelDlpJobRequest
    :: GooglePrivacyDlpV2CancelDlpJobRequest
googlePrivacyDlpV2CancelDlpJobRequest = GooglePrivacyDlpV2CancelDlpJobRequest'

instance FromJSON
           GooglePrivacyDlpV2CancelDlpJobRequest
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2CancelDlpJobRequest"
              (\ o -> pure GooglePrivacyDlpV2CancelDlpJobRequest')

instance ToJSON GooglePrivacyDlpV2CancelDlpJobRequest
         where
        toJSON = const emptyObject

-- | Location of a finding within a row or record.
--
-- /See:/ 'googlePrivacyDlpV2RecordLocation' smart constructor.
data GooglePrivacyDlpV2RecordLocation =
  GooglePrivacyDlpV2RecordLocation'
    { _gpdvrlTableLocation :: !(Maybe GooglePrivacyDlpV2TableLocation)
    , _gpdvrlFieldId       :: !(Maybe GooglePrivacyDlpV2FieldId)
    , _gpdvrlRecordKey     :: !(Maybe GooglePrivacyDlpV2RecordKey)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2RecordLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvrlTableLocation'
--
-- * 'gpdvrlFieldId'
--
-- * 'gpdvrlRecordKey'
googlePrivacyDlpV2RecordLocation
    :: GooglePrivacyDlpV2RecordLocation
googlePrivacyDlpV2RecordLocation =
  GooglePrivacyDlpV2RecordLocation'
    { _gpdvrlTableLocation = Nothing
    , _gpdvrlFieldId = Nothing
    , _gpdvrlRecordKey = Nothing
    }

-- | Location within a \`ContentItem.Table\`.
gpdvrlTableLocation :: Lens' GooglePrivacyDlpV2RecordLocation (Maybe GooglePrivacyDlpV2TableLocation)
gpdvrlTableLocation
  = lens _gpdvrlTableLocation
      (\ s a -> s{_gpdvrlTableLocation = a})

-- | Field id of the field containing the finding.
gpdvrlFieldId :: Lens' GooglePrivacyDlpV2RecordLocation (Maybe GooglePrivacyDlpV2FieldId)
gpdvrlFieldId
  = lens _gpdvrlFieldId
      (\ s a -> s{_gpdvrlFieldId = a})

-- | Key of the finding.
gpdvrlRecordKey :: Lens' GooglePrivacyDlpV2RecordLocation (Maybe GooglePrivacyDlpV2RecordKey)
gpdvrlRecordKey
  = lens _gpdvrlRecordKey
      (\ s a -> s{_gpdvrlRecordKey = a})

instance FromJSON GooglePrivacyDlpV2RecordLocation
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2RecordLocation"
              (\ o ->
                 GooglePrivacyDlpV2RecordLocation' <$>
                   (o .:? "tableLocation") <*> (o .:? "fieldId") <*>
                     (o .:? "recordKey"))

instance ToJSON GooglePrivacyDlpV2RecordLocation
         where
        toJSON GooglePrivacyDlpV2RecordLocation'{..}
          = object
              (catMaybes
                 [("tableLocation" .=) <$> _gpdvrlTableLocation,
                  ("fieldId" .=) <$> _gpdvrlFieldId,
                  ("recordKey" .=) <$> _gpdvrlRecordKey])

-- | Details information about an error encountered during job execution or
-- the results of an unsuccessful activation of the JobTrigger. Output only
-- field.
--
-- /See:/ 'googlePrivacyDlpV2Error' smart constructor.
data GooglePrivacyDlpV2Error =
  GooglePrivacyDlpV2Error'
    { _gpdveDetails    :: !(Maybe GoogleRpcStatus)
    , _gpdveTimestamps :: !(Maybe [DateTime'])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Error' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdveDetails'
--
-- * 'gpdveTimestamps'
googlePrivacyDlpV2Error
    :: GooglePrivacyDlpV2Error
googlePrivacyDlpV2Error =
  GooglePrivacyDlpV2Error' {_gpdveDetails = Nothing, _gpdveTimestamps = Nothing}

gpdveDetails :: Lens' GooglePrivacyDlpV2Error (Maybe GoogleRpcStatus)
gpdveDetails
  = lens _gpdveDetails (\ s a -> s{_gpdveDetails = a})

-- | The times the error occurred.
gpdveTimestamps :: Lens' GooglePrivacyDlpV2Error [UTCTime]
gpdveTimestamps
  = lens _gpdveTimestamps
      (\ s a -> s{_gpdveTimestamps = a})
      . _Default
      . _Coerce

instance FromJSON GooglePrivacyDlpV2Error where
        parseJSON
          = withObject "GooglePrivacyDlpV2Error"
              (\ o ->
                 GooglePrivacyDlpV2Error' <$>
                   (o .:? "details") <*>
                     (o .:? "timestamps" .!= mempty))

instance ToJSON GooglePrivacyDlpV2Error where
        toJSON GooglePrivacyDlpV2Error'{..}
          = object
              (catMaybes
                 [("details" .=) <$> _gpdveDetails,
                  ("timestamps" .=) <$> _gpdveTimestamps])

-- | StoredInfoType resource message that contains information about the
-- current version and any pending updates.
--
-- /See:/ 'googlePrivacyDlpV2StoredInfoType' smart constructor.
data GooglePrivacyDlpV2StoredInfoType =
  GooglePrivacyDlpV2StoredInfoType'
    { _gpdvsitCurrentVersion  :: !(Maybe GooglePrivacyDlpV2StoredInfoTypeVersion)
    , _gpdvsitName            :: !(Maybe Text)
    , _gpdvsitPendingVersions :: !(Maybe [GooglePrivacyDlpV2StoredInfoTypeVersion])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2StoredInfoType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvsitCurrentVersion'
--
-- * 'gpdvsitName'
--
-- * 'gpdvsitPendingVersions'
googlePrivacyDlpV2StoredInfoType
    :: GooglePrivacyDlpV2StoredInfoType
googlePrivacyDlpV2StoredInfoType =
  GooglePrivacyDlpV2StoredInfoType'
    { _gpdvsitCurrentVersion = Nothing
    , _gpdvsitName = Nothing
    , _gpdvsitPendingVersions = Nothing
    }

-- | Current version of the stored info type.
gpdvsitCurrentVersion :: Lens' GooglePrivacyDlpV2StoredInfoType (Maybe GooglePrivacyDlpV2StoredInfoTypeVersion)
gpdvsitCurrentVersion
  = lens _gpdvsitCurrentVersion
      (\ s a -> s{_gpdvsitCurrentVersion = a})

-- | Resource name.
gpdvsitName :: Lens' GooglePrivacyDlpV2StoredInfoType (Maybe Text)
gpdvsitName
  = lens _gpdvsitName (\ s a -> s{_gpdvsitName = a})

-- | Pending versions of the stored info type. Empty if no versions are
-- pending.
gpdvsitPendingVersions :: Lens' GooglePrivacyDlpV2StoredInfoType [GooglePrivacyDlpV2StoredInfoTypeVersion]
gpdvsitPendingVersions
  = lens _gpdvsitPendingVersions
      (\ s a -> s{_gpdvsitPendingVersions = a})
      . _Default
      . _Coerce

instance FromJSON GooglePrivacyDlpV2StoredInfoType
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2StoredInfoType"
              (\ o ->
                 GooglePrivacyDlpV2StoredInfoType' <$>
                   (o .:? "currentVersion") <*> (o .:? "name") <*>
                     (o .:? "pendingVersions" .!= mempty))

instance ToJSON GooglePrivacyDlpV2StoredInfoType
         where
        toJSON GooglePrivacyDlpV2StoredInfoType'{..}
          = object
              (catMaybes
                 [("currentVersion" .=) <$> _gpdvsitCurrentVersion,
                  ("name" .=) <$> _gpdvsitName,
                  ("pendingVersions" .=) <$> _gpdvsitPendingVersions])

-- | An auxiliary table containing statistical information on the relative
-- frequency of different quasi-identifiers values. It has one or several
-- quasi-identifiers columns, and one column that indicates the relative
-- frequency of each quasi-identifier tuple. If a tuple is present in the
-- data but not in the auxiliary table, the corresponding relative
-- frequency is assumed to be zero (and thus, the tuple is highly
-- reidentifiable).
--
-- /See:/ 'googlePrivacyDlpV2StatisticalTable' smart constructor.
data GooglePrivacyDlpV2StatisticalTable =
  GooglePrivacyDlpV2StatisticalTable'
    { _gpdvstRelativeFrequency :: !(Maybe GooglePrivacyDlpV2FieldId)
    , _gpdvstTable             :: !(Maybe GooglePrivacyDlpV2BigQueryTable)
    , _gpdvstQuasiIds          :: !(Maybe [GooglePrivacyDlpV2QuasiIdentifierField])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2StatisticalTable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvstRelativeFrequency'
--
-- * 'gpdvstTable'
--
-- * 'gpdvstQuasiIds'
googlePrivacyDlpV2StatisticalTable
    :: GooglePrivacyDlpV2StatisticalTable
googlePrivacyDlpV2StatisticalTable =
  GooglePrivacyDlpV2StatisticalTable'
    { _gpdvstRelativeFrequency = Nothing
    , _gpdvstTable = Nothing
    , _gpdvstQuasiIds = Nothing
    }

-- | The relative frequency column must contain a floating-point number
-- between 0 and 1 (inclusive). Null values are assumed to be zero.
-- [required]
gpdvstRelativeFrequency :: Lens' GooglePrivacyDlpV2StatisticalTable (Maybe GooglePrivacyDlpV2FieldId)
gpdvstRelativeFrequency
  = lens _gpdvstRelativeFrequency
      (\ s a -> s{_gpdvstRelativeFrequency = a})

-- | Auxiliary table location. [required]
gpdvstTable :: Lens' GooglePrivacyDlpV2StatisticalTable (Maybe GooglePrivacyDlpV2BigQueryTable)
gpdvstTable
  = lens _gpdvstTable (\ s a -> s{_gpdvstTable = a})

-- | Quasi-identifier columns. [required]
gpdvstQuasiIds :: Lens' GooglePrivacyDlpV2StatisticalTable [GooglePrivacyDlpV2QuasiIdentifierField]
gpdvstQuasiIds
  = lens _gpdvstQuasiIds
      (\ s a -> s{_gpdvstQuasiIds = a})
      . _Default
      . _Coerce

instance FromJSON GooglePrivacyDlpV2StatisticalTable
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2StatisticalTable"
              (\ o ->
                 GooglePrivacyDlpV2StatisticalTable' <$>
                   (o .:? "relativeFrequency") <*> (o .:? "table") <*>
                     (o .:? "quasiIds" .!= mempty))

instance ToJSON GooglePrivacyDlpV2StatisticalTable
         where
        toJSON GooglePrivacyDlpV2StatisticalTable'{..}
          = object
              (catMaybes
                 [("relativeFrequency" .=) <$>
                    _gpdvstRelativeFrequency,
                  ("table" .=) <$> _gpdvstTable,
                  ("quasiIds" .=) <$> _gpdvstQuasiIds])

-- | The DeidentifyTemplates contains instructions on how to deidentify
-- content. See https:\/\/cloud.google.com\/dlp\/docs\/concepts-templates
-- to learn more.
--
-- /See:/ 'googlePrivacyDlpV2DeidentifyTemplate' smart constructor.
data GooglePrivacyDlpV2DeidentifyTemplate =
  GooglePrivacyDlpV2DeidentifyTemplate'
    { _gpdvdtUpdateTime       :: !(Maybe DateTime')
    , _gpdvdtName             :: !(Maybe Text)
    , _gpdvdtDeidentifyConfig :: !(Maybe GooglePrivacyDlpV2DeidentifyConfig)
    , _gpdvdtDisplayName      :: !(Maybe Text)
    , _gpdvdtDescription      :: !(Maybe Text)
    , _gpdvdtCreateTime       :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DeidentifyTemplate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvdtUpdateTime'
--
-- * 'gpdvdtName'
--
-- * 'gpdvdtDeidentifyConfig'
--
-- * 'gpdvdtDisplayName'
--
-- * 'gpdvdtDescription'
--
-- * 'gpdvdtCreateTime'
googlePrivacyDlpV2DeidentifyTemplate
    :: GooglePrivacyDlpV2DeidentifyTemplate
googlePrivacyDlpV2DeidentifyTemplate =
  GooglePrivacyDlpV2DeidentifyTemplate'
    { _gpdvdtUpdateTime = Nothing
    , _gpdvdtName = Nothing
    , _gpdvdtDeidentifyConfig = Nothing
    , _gpdvdtDisplayName = Nothing
    , _gpdvdtDescription = Nothing
    , _gpdvdtCreateTime = Nothing
    }

-- | The last update timestamp of a inspectTemplate, output only field.
gpdvdtUpdateTime :: Lens' GooglePrivacyDlpV2DeidentifyTemplate (Maybe UTCTime)
gpdvdtUpdateTime
  = lens _gpdvdtUpdateTime
      (\ s a -> s{_gpdvdtUpdateTime = a})
      . mapping _DateTime

-- | The template name. Output only. The template will have one of the
-- following formats:
-- \`projects\/PROJECT_ID\/deidentifyTemplates\/TEMPLATE_ID\` OR
-- \`organizations\/ORGANIZATION_ID\/deidentifyTemplates\/TEMPLATE_ID\`
gpdvdtName :: Lens' GooglePrivacyDlpV2DeidentifyTemplate (Maybe Text)
gpdvdtName
  = lens _gpdvdtName (\ s a -> s{_gpdvdtName = a})

-- | \/\/\/\/\/\/\/\/\/\/\/\/\/ \/\/ The core content of the template \/\/
-- \/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
gpdvdtDeidentifyConfig :: Lens' GooglePrivacyDlpV2DeidentifyTemplate (Maybe GooglePrivacyDlpV2DeidentifyConfig)
gpdvdtDeidentifyConfig
  = lens _gpdvdtDeidentifyConfig
      (\ s a -> s{_gpdvdtDeidentifyConfig = a})

-- | Display name (max 256 chars).
gpdvdtDisplayName :: Lens' GooglePrivacyDlpV2DeidentifyTemplate (Maybe Text)
gpdvdtDisplayName
  = lens _gpdvdtDisplayName
      (\ s a -> s{_gpdvdtDisplayName = a})

-- | Short description (max 256 chars).
gpdvdtDescription :: Lens' GooglePrivacyDlpV2DeidentifyTemplate (Maybe Text)
gpdvdtDescription
  = lens _gpdvdtDescription
      (\ s a -> s{_gpdvdtDescription = a})

-- | The creation timestamp of a inspectTemplate, output only field.
gpdvdtCreateTime :: Lens' GooglePrivacyDlpV2DeidentifyTemplate (Maybe UTCTime)
gpdvdtCreateTime
  = lens _gpdvdtCreateTime
      (\ s a -> s{_gpdvdtCreateTime = a})
      . mapping _DateTime

instance FromJSON
           GooglePrivacyDlpV2DeidentifyTemplate
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2DeidentifyTemplate"
              (\ o ->
                 GooglePrivacyDlpV2DeidentifyTemplate' <$>
                   (o .:? "updateTime") <*> (o .:? "name") <*>
                     (o .:? "deidentifyConfig")
                     <*> (o .:? "displayName")
                     <*> (o .:? "description")
                     <*> (o .:? "createTime"))

instance ToJSON GooglePrivacyDlpV2DeidentifyTemplate
         where
        toJSON GooglePrivacyDlpV2DeidentifyTemplate'{..}
          = object
              (catMaybes
                 [("updateTime" .=) <$> _gpdvdtUpdateTime,
                  ("name" .=) <$> _gpdvdtName,
                  ("deidentifyConfig" .=) <$> _gpdvdtDeidentifyConfig,
                  ("displayName" .=) <$> _gpdvdtDisplayName,
                  ("description" .=) <$> _gpdvdtDescription,
                  ("createTime" .=) <$> _gpdvdtCreateTime])

-- | Replace each input value with a given \`Value\`.
--
-- /See:/ 'googlePrivacyDlpV2ReplaceValueConfig' smart constructor.
newtype GooglePrivacyDlpV2ReplaceValueConfig =
  GooglePrivacyDlpV2ReplaceValueConfig'
    { _gpdvrvcNewValue :: Maybe GooglePrivacyDlpV2Value
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ReplaceValueConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvrvcNewValue'
googlePrivacyDlpV2ReplaceValueConfig
    :: GooglePrivacyDlpV2ReplaceValueConfig
googlePrivacyDlpV2ReplaceValueConfig =
  GooglePrivacyDlpV2ReplaceValueConfig' {_gpdvrvcNewValue = Nothing}

-- | Value to replace it with.
gpdvrvcNewValue :: Lens' GooglePrivacyDlpV2ReplaceValueConfig (Maybe GooglePrivacyDlpV2Value)
gpdvrvcNewValue
  = lens _gpdvrvcNewValue
      (\ s a -> s{_gpdvrvcNewValue = a})

instance FromJSON
           GooglePrivacyDlpV2ReplaceValueConfig
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2ReplaceValueConfig"
              (\ o ->
                 GooglePrivacyDlpV2ReplaceValueConfig' <$>
                   (o .:? "newValue"))

instance ToJSON GooglePrivacyDlpV2ReplaceValueConfig
         where
        toJSON GooglePrivacyDlpV2ReplaceValueConfig'{..}
          = object
              (catMaybes [("newValue" .=) <$> _gpdvrvcNewValue])

-- | Compute numerical stats over an individual column, including number of
-- distinct values and value count distribution.
--
-- /See:/ 'googlePrivacyDlpV2CategoricalStatsConfig' smart constructor.
newtype GooglePrivacyDlpV2CategoricalStatsConfig =
  GooglePrivacyDlpV2CategoricalStatsConfig'
    { _gpdvcscField :: Maybe GooglePrivacyDlpV2FieldId
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CategoricalStatsConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvcscField'
googlePrivacyDlpV2CategoricalStatsConfig
    :: GooglePrivacyDlpV2CategoricalStatsConfig
googlePrivacyDlpV2CategoricalStatsConfig =
  GooglePrivacyDlpV2CategoricalStatsConfig' {_gpdvcscField = Nothing}

-- | Field to compute categorical stats on. All column types are supported
-- except for arrays and structs. However, it may be more informative to
-- use NumericalStats when the field type is supported, depending on the
-- data.
gpdvcscField :: Lens' GooglePrivacyDlpV2CategoricalStatsConfig (Maybe GooglePrivacyDlpV2FieldId)
gpdvcscField
  = lens _gpdvcscField (\ s a -> s{_gpdvcscField = a})

instance FromJSON
           GooglePrivacyDlpV2CategoricalStatsConfig
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2CategoricalStatsConfig"
              (\ o ->
                 GooglePrivacyDlpV2CategoricalStatsConfig' <$>
                   (o .:? "field"))

instance ToJSON
           GooglePrivacyDlpV2CategoricalStatsConfig
         where
        toJSON GooglePrivacyDlpV2CategoricalStatsConfig'{..}
          = object (catMaybes [("field" .=) <$> _gpdvcscField])

-- | Compute numerical stats over an individual column, including min, max,
-- and quantiles.
--
-- /See:/ 'googlePrivacyDlpV2NumericalStatsConfig' smart constructor.
newtype GooglePrivacyDlpV2NumericalStatsConfig =
  GooglePrivacyDlpV2NumericalStatsConfig'
    { _gpdvnscField :: Maybe GooglePrivacyDlpV2FieldId
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2NumericalStatsConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvnscField'
googlePrivacyDlpV2NumericalStatsConfig
    :: GooglePrivacyDlpV2NumericalStatsConfig
googlePrivacyDlpV2NumericalStatsConfig =
  GooglePrivacyDlpV2NumericalStatsConfig' {_gpdvnscField = Nothing}

-- | Field to compute numerical stats on. Supported types are integer, float,
-- date, datetime, timestamp, time.
gpdvnscField :: Lens' GooglePrivacyDlpV2NumericalStatsConfig (Maybe GooglePrivacyDlpV2FieldId)
gpdvnscField
  = lens _gpdvnscField (\ s a -> s{_gpdvnscField = a})

instance FromJSON
           GooglePrivacyDlpV2NumericalStatsConfig
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2NumericalStatsConfig"
              (\ o ->
                 GooglePrivacyDlpV2NumericalStatsConfig' <$>
                   (o .:? "field"))

instance ToJSON
           GooglePrivacyDlpV2NumericalStatsConfig
         where
        toJSON GooglePrivacyDlpV2NumericalStatsConfig'{..}
          = object (catMaybes [("field" .=) <$> _gpdvnscField])

-- | Response message for ListJobTriggers.
--
-- /See:/ 'googlePrivacyDlpV2ListJobTriggersResponse' smart constructor.
data GooglePrivacyDlpV2ListJobTriggersResponse =
  GooglePrivacyDlpV2ListJobTriggersResponse'
    { _gpdvljtrNextPageToken :: !(Maybe Text)
    , _gpdvljtrJobTriggers   :: !(Maybe [GooglePrivacyDlpV2JobTrigger])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ListJobTriggersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvljtrNextPageToken'
--
-- * 'gpdvljtrJobTriggers'
googlePrivacyDlpV2ListJobTriggersResponse
    :: GooglePrivacyDlpV2ListJobTriggersResponse
googlePrivacyDlpV2ListJobTriggersResponse =
  GooglePrivacyDlpV2ListJobTriggersResponse'
    {_gpdvljtrNextPageToken = Nothing, _gpdvljtrJobTriggers = Nothing}

-- | If the next page is available then the next page token to be used in
-- following ListJobTriggers request.
gpdvljtrNextPageToken :: Lens' GooglePrivacyDlpV2ListJobTriggersResponse (Maybe Text)
gpdvljtrNextPageToken
  = lens _gpdvljtrNextPageToken
      (\ s a -> s{_gpdvljtrNextPageToken = a})

-- | List of triggeredJobs, up to page_size in ListJobTriggersRequest.
gpdvljtrJobTriggers :: Lens' GooglePrivacyDlpV2ListJobTriggersResponse [GooglePrivacyDlpV2JobTrigger]
gpdvljtrJobTriggers
  = lens _gpdvljtrJobTriggers
      (\ s a -> s{_gpdvljtrJobTriggers = a})
      . _Default
      . _Coerce

instance FromJSON
           GooglePrivacyDlpV2ListJobTriggersResponse
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2ListJobTriggersResponse"
              (\ o ->
                 GooglePrivacyDlpV2ListJobTriggersResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "jobTriggers" .!= mempty))

instance ToJSON
           GooglePrivacyDlpV2ListJobTriggersResponse
         where
        toJSON GooglePrivacyDlpV2ListJobTriggersResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gpdvljtrNextPageToken,
                  ("jobTriggers" .=) <$> _gpdvljtrJobTriggers])

-- | Message representing a single file or path in Cloud Storage.
--
-- /See:/ 'googlePrivacyDlpV2CloudStoragePath' smart constructor.
newtype GooglePrivacyDlpV2CloudStoragePath =
  GooglePrivacyDlpV2CloudStoragePath'
    { _gpdvcspPath :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CloudStoragePath' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvcspPath'
googlePrivacyDlpV2CloudStoragePath
    :: GooglePrivacyDlpV2CloudStoragePath
googlePrivacyDlpV2CloudStoragePath =
  GooglePrivacyDlpV2CloudStoragePath' {_gpdvcspPath = Nothing}

-- | A url representing a file or path (no wildcards) in Cloud Storage.
-- Example: gs:\/\/[BUCKET_NAME]\/dictionary.txt
gpdvcspPath :: Lens' GooglePrivacyDlpV2CloudStoragePath (Maybe Text)
gpdvcspPath
  = lens _gpdvcspPath (\ s a -> s{_gpdvcspPath = a})

instance FromJSON GooglePrivacyDlpV2CloudStoragePath
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2CloudStoragePath"
              (\ o ->
                 GooglePrivacyDlpV2CloudStoragePath' <$>
                   (o .:? "path"))

instance ToJSON GooglePrivacyDlpV2CloudStoragePath
         where
        toJSON GooglePrivacyDlpV2CloudStoragePath'{..}
          = object (catMaybes [("path" .=) <$> _gpdvcspPath])

-- | Specifies the location of the finding.
--
-- /See:/ 'googlePrivacyDlpV2Location' smart constructor.
data GooglePrivacyDlpV2Location =
  GooglePrivacyDlpV2Location'
    { _gpdvlCodepointRange   :: !(Maybe GooglePrivacyDlpV2Range)
    , _gpdvlContentLocations :: !(Maybe [GooglePrivacyDlpV2ContentLocation])
    , _gpdvlByteRange        :: !(Maybe GooglePrivacyDlpV2Range)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Location' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvlCodepointRange'
--
-- * 'gpdvlContentLocations'
--
-- * 'gpdvlByteRange'
googlePrivacyDlpV2Location
    :: GooglePrivacyDlpV2Location
googlePrivacyDlpV2Location =
  GooglePrivacyDlpV2Location'
    { _gpdvlCodepointRange = Nothing
    , _gpdvlContentLocations = Nothing
    , _gpdvlByteRange = Nothing
    }

-- | Unicode character offsets delimiting the finding. These are relative to
-- the finding\'s containing element. Provided when the content is text.
gpdvlCodepointRange :: Lens' GooglePrivacyDlpV2Location (Maybe GooglePrivacyDlpV2Range)
gpdvlCodepointRange
  = lens _gpdvlCodepointRange
      (\ s a -> s{_gpdvlCodepointRange = a})

-- | List of nested objects pointing to the precise location of the finding
-- within the file or record.
gpdvlContentLocations :: Lens' GooglePrivacyDlpV2Location [GooglePrivacyDlpV2ContentLocation]
gpdvlContentLocations
  = lens _gpdvlContentLocations
      (\ s a -> s{_gpdvlContentLocations = a})
      . _Default
      . _Coerce

-- | Zero-based byte offsets delimiting the finding. These are relative to
-- the finding\'s containing element. Note that when the content is not
-- textual, this references the UTF-8 encoded textual representation of the
-- content. Omitted if content is an image.
gpdvlByteRange :: Lens' GooglePrivacyDlpV2Location (Maybe GooglePrivacyDlpV2Range)
gpdvlByteRange
  = lens _gpdvlByteRange
      (\ s a -> s{_gpdvlByteRange = a})

instance FromJSON GooglePrivacyDlpV2Location where
        parseJSON
          = withObject "GooglePrivacyDlpV2Location"
              (\ o ->
                 GooglePrivacyDlpV2Location' <$>
                   (o .:? "codepointRange") <*>
                     (o .:? "contentLocations" .!= mempty)
                     <*> (o .:? "byteRange"))

instance ToJSON GooglePrivacyDlpV2Location where
        toJSON GooglePrivacyDlpV2Location'{..}
          = object
              (catMaybes
                 [("codepointRange" .=) <$> _gpdvlCodepointRange,
                  ("contentLocations" .=) <$> _gpdvlContentLocations,
                  ("byteRange" .=) <$> _gpdvlByteRange])

-- | Schedule for triggeredJobs.
--
-- /See:/ 'googlePrivacyDlpV2Schedule' smart constructor.
newtype GooglePrivacyDlpV2Schedule =
  GooglePrivacyDlpV2Schedule'
    { _gpdvsRecurrencePeriodDuration :: Maybe GDuration
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2Schedule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvsRecurrencePeriodDuration'
googlePrivacyDlpV2Schedule
    :: GooglePrivacyDlpV2Schedule
googlePrivacyDlpV2Schedule =
  GooglePrivacyDlpV2Schedule' {_gpdvsRecurrencePeriodDuration = Nothing}

-- | With this option a job is started a regular periodic basis. For example:
-- every day (86400 seconds). A scheduled start time will be skipped if the
-- previous execution has not ended when its scheduled time occurs. This
-- value must be set to a time duration greater than or equal to 1 day and
-- can be no longer than 60 days.
gpdvsRecurrencePeriodDuration :: Lens' GooglePrivacyDlpV2Schedule (Maybe Scientific)
gpdvsRecurrencePeriodDuration
  = lens _gpdvsRecurrencePeriodDuration
      (\ s a -> s{_gpdvsRecurrencePeriodDuration = a})
      . mapping _GDuration

instance FromJSON GooglePrivacyDlpV2Schedule where
        parseJSON
          = withObject "GooglePrivacyDlpV2Schedule"
              (\ o ->
                 GooglePrivacyDlpV2Schedule' <$>
                   (o .:? "recurrencePeriodDuration"))

instance ToJSON GooglePrivacyDlpV2Schedule where
        toJSON GooglePrivacyDlpV2Schedule'{..}
          = object
              (catMaybes
                 [("recurrencePeriodDuration" .=) <$>
                    _gpdvsRecurrencePeriodDuration])

-- | Request message for CreateJobTrigger.
--
-- /See:/ 'googlePrivacyDlpV2CreateJobTriggerRequest' smart constructor.
data GooglePrivacyDlpV2CreateJobTriggerRequest =
  GooglePrivacyDlpV2CreateJobTriggerRequest'
    { _gpdvcjtrTriggerId  :: !(Maybe Text)
    , _gpdvcjtrJobTrigger :: !(Maybe GooglePrivacyDlpV2JobTrigger)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2CreateJobTriggerRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvcjtrTriggerId'
--
-- * 'gpdvcjtrJobTrigger'
googlePrivacyDlpV2CreateJobTriggerRequest
    :: GooglePrivacyDlpV2CreateJobTriggerRequest
googlePrivacyDlpV2CreateJobTriggerRequest =
  GooglePrivacyDlpV2CreateJobTriggerRequest'
    {_gpdvcjtrTriggerId = Nothing, _gpdvcjtrJobTrigger = Nothing}

-- | The trigger id can contain uppercase and lowercase letters, numbers, and
-- hyphens; that is, it must match the regular expression:
-- \`[a-zA-Z\\\\d-]+\`. The maximum length is 100 characters. Can be empty
-- to allow the system to generate one.
gpdvcjtrTriggerId :: Lens' GooglePrivacyDlpV2CreateJobTriggerRequest (Maybe Text)
gpdvcjtrTriggerId
  = lens _gpdvcjtrTriggerId
      (\ s a -> s{_gpdvcjtrTriggerId = a})

-- | The JobTrigger to create.
gpdvcjtrJobTrigger :: Lens' GooglePrivacyDlpV2CreateJobTriggerRequest (Maybe GooglePrivacyDlpV2JobTrigger)
gpdvcjtrJobTrigger
  = lens _gpdvcjtrJobTrigger
      (\ s a -> s{_gpdvcjtrJobTrigger = a})

instance FromJSON
           GooglePrivacyDlpV2CreateJobTriggerRequest
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2CreateJobTriggerRequest"
              (\ o ->
                 GooglePrivacyDlpV2CreateJobTriggerRequest' <$>
                   (o .:? "triggerId") <*> (o .:? "jobTrigger"))

instance ToJSON
           GooglePrivacyDlpV2CreateJobTriggerRequest
         where
        toJSON GooglePrivacyDlpV2CreateJobTriggerRequest'{..}
          = object
              (catMaybes
                 [("triggerId" .=) <$> _gpdvcjtrTriggerId,
                  ("jobTrigger" .=) <$> _gpdvcjtrJobTrigger])

-- | Overview of the modifications that occurred.
--
-- /See:/ 'googlePrivacyDlpV2TransformationOverview' smart constructor.
data GooglePrivacyDlpV2TransformationOverview =
  GooglePrivacyDlpV2TransformationOverview'
    { _gpdvtoTransformedBytes        :: !(Maybe (Textual Int64))
    , _gpdvtoTransformationSummaries :: !(Maybe [GooglePrivacyDlpV2TransformationSummary])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2TransformationOverview' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvtoTransformedBytes'
--
-- * 'gpdvtoTransformationSummaries'
googlePrivacyDlpV2TransformationOverview
    :: GooglePrivacyDlpV2TransformationOverview
googlePrivacyDlpV2TransformationOverview =
  GooglePrivacyDlpV2TransformationOverview'
    { _gpdvtoTransformedBytes = Nothing
    , _gpdvtoTransformationSummaries = Nothing
    }

-- | Total size in bytes that were transformed in some way.
gpdvtoTransformedBytes :: Lens' GooglePrivacyDlpV2TransformationOverview (Maybe Int64)
gpdvtoTransformedBytes
  = lens _gpdvtoTransformedBytes
      (\ s a -> s{_gpdvtoTransformedBytes = a})
      . mapping _Coerce

-- | Transformations applied to the dataset.
gpdvtoTransformationSummaries :: Lens' GooglePrivacyDlpV2TransformationOverview [GooglePrivacyDlpV2TransformationSummary]
gpdvtoTransformationSummaries
  = lens _gpdvtoTransformationSummaries
      (\ s a -> s{_gpdvtoTransformationSummaries = a})
      . _Default
      . _Coerce

instance FromJSON
           GooglePrivacyDlpV2TransformationOverview
         where
        parseJSON
          = withObject
              "GooglePrivacyDlpV2TransformationOverview"
              (\ o ->
                 GooglePrivacyDlpV2TransformationOverview' <$>
                   (o .:? "transformedBytes") <*>
                     (o .:? "transformationSummaries" .!= mempty))

instance ToJSON
           GooglePrivacyDlpV2TransformationOverview
         where
        toJSON GooglePrivacyDlpV2TransformationOverview'{..}
          = object
              (catMaybes
                 [("transformedBytes" .=) <$> _gpdvtoTransformedBytes,
                  ("transformationSummaries" .=) <$>
                    _gpdvtoTransformationSummaries])

-- | Location of the finding within an image.
--
-- /See:/ 'googlePrivacyDlpV2ImageLocation' smart constructor.
newtype GooglePrivacyDlpV2ImageLocation =
  GooglePrivacyDlpV2ImageLocation'
    { _gpdvilBoundingBoxes :: Maybe [GooglePrivacyDlpV2BoundingBox]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2ImageLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvilBoundingBoxes'
googlePrivacyDlpV2ImageLocation
    :: GooglePrivacyDlpV2ImageLocation
googlePrivacyDlpV2ImageLocation =
  GooglePrivacyDlpV2ImageLocation' {_gpdvilBoundingBoxes = Nothing}

-- | Bounding boxes locating the pixels within the image containing the
-- finding.
gpdvilBoundingBoxes :: Lens' GooglePrivacyDlpV2ImageLocation [GooglePrivacyDlpV2BoundingBox]
gpdvilBoundingBoxes
  = lens _gpdvilBoundingBoxes
      (\ s a -> s{_gpdvilBoundingBoxes = a})
      . _Default
      . _Coerce

instance FromJSON GooglePrivacyDlpV2ImageLocation
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2ImageLocation"
              (\ o ->
                 GooglePrivacyDlpV2ImageLocation' <$>
                   (o .:? "boundingBoxes" .!= mempty))

instance ToJSON GooglePrivacyDlpV2ImageLocation where
        toJSON GooglePrivacyDlpV2ImageLocation'{..}
          = object
              (catMaybes
                 [("boundingBoxes" .=) <$> _gpdvilBoundingBoxes])

-- | A representation of a Datastore kind.
--
-- /See:/ 'googlePrivacyDlpV2KindExpression' smart constructor.
newtype GooglePrivacyDlpV2KindExpression =
  GooglePrivacyDlpV2KindExpression'
    { _gpdvkeName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2KindExpression' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvkeName'
googlePrivacyDlpV2KindExpression
    :: GooglePrivacyDlpV2KindExpression
googlePrivacyDlpV2KindExpression =
  GooglePrivacyDlpV2KindExpression' {_gpdvkeName = Nothing}

-- | The name of the kind.
gpdvkeName :: Lens' GooglePrivacyDlpV2KindExpression (Maybe Text)
gpdvkeName
  = lens _gpdvkeName (\ s a -> s{_gpdvkeName = a})

instance FromJSON GooglePrivacyDlpV2KindExpression
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2KindExpression"
              (\ o ->
                 GooglePrivacyDlpV2KindExpression' <$> (o .:? "name"))

instance ToJSON GooglePrivacyDlpV2KindExpression
         where
        toJSON GooglePrivacyDlpV2KindExpression'{..}
          = object (catMaybes [("name" .=) <$> _gpdvkeName])

-- | Privacy metric to compute for reidentification risk analysis.
--
-- /See:/ 'googlePrivacyDlpV2PrivacyMetric' smart constructor.
data GooglePrivacyDlpV2PrivacyMetric =
  GooglePrivacyDlpV2PrivacyMetric'
    { _gpdvpmNumericalStatsConfig          :: !(Maybe GooglePrivacyDlpV2NumericalStatsConfig)
    , _gpdvpmCategoricalStatsConfig        :: !(Maybe GooglePrivacyDlpV2CategoricalStatsConfig)
    , _gpdvpmKMapEstimationConfig          :: !(Maybe GooglePrivacyDlpV2KMapEstimationConfig)
    , _gpdvpmKAnonymityConfig              :: !(Maybe GooglePrivacyDlpV2KAnonymityConfig)
    , _gpdvpmLDiversityConfig              :: !(Maybe GooglePrivacyDlpV2LDiversityConfig)
    , _gpdvpmDeltaPresenceEstimationConfig :: !(Maybe GooglePrivacyDlpV2DeltaPresenceEstimationConfig)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2PrivacyMetric' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvpmNumericalStatsConfig'
--
-- * 'gpdvpmCategoricalStatsConfig'
--
-- * 'gpdvpmKMapEstimationConfig'
--
-- * 'gpdvpmKAnonymityConfig'
--
-- * 'gpdvpmLDiversityConfig'
--
-- * 'gpdvpmDeltaPresenceEstimationConfig'
googlePrivacyDlpV2PrivacyMetric
    :: GooglePrivacyDlpV2PrivacyMetric
googlePrivacyDlpV2PrivacyMetric =
  GooglePrivacyDlpV2PrivacyMetric'
    { _gpdvpmNumericalStatsConfig = Nothing
    , _gpdvpmCategoricalStatsConfig = Nothing
    , _gpdvpmKMapEstimationConfig = Nothing
    , _gpdvpmKAnonymityConfig = Nothing
    , _gpdvpmLDiversityConfig = Nothing
    , _gpdvpmDeltaPresenceEstimationConfig = Nothing
    }

gpdvpmNumericalStatsConfig :: Lens' GooglePrivacyDlpV2PrivacyMetric (Maybe GooglePrivacyDlpV2NumericalStatsConfig)
gpdvpmNumericalStatsConfig
  = lens _gpdvpmNumericalStatsConfig
      (\ s a -> s{_gpdvpmNumericalStatsConfig = a})

gpdvpmCategoricalStatsConfig :: Lens' GooglePrivacyDlpV2PrivacyMetric (Maybe GooglePrivacyDlpV2CategoricalStatsConfig)
gpdvpmCategoricalStatsConfig
  = lens _gpdvpmCategoricalStatsConfig
      (\ s a -> s{_gpdvpmCategoricalStatsConfig = a})

gpdvpmKMapEstimationConfig :: Lens' GooglePrivacyDlpV2PrivacyMetric (Maybe GooglePrivacyDlpV2KMapEstimationConfig)
gpdvpmKMapEstimationConfig
  = lens _gpdvpmKMapEstimationConfig
      (\ s a -> s{_gpdvpmKMapEstimationConfig = a})

gpdvpmKAnonymityConfig :: Lens' GooglePrivacyDlpV2PrivacyMetric (Maybe GooglePrivacyDlpV2KAnonymityConfig)
gpdvpmKAnonymityConfig
  = lens _gpdvpmKAnonymityConfig
      (\ s a -> s{_gpdvpmKAnonymityConfig = a})

gpdvpmLDiversityConfig :: Lens' GooglePrivacyDlpV2PrivacyMetric (Maybe GooglePrivacyDlpV2LDiversityConfig)
gpdvpmLDiversityConfig
  = lens _gpdvpmLDiversityConfig
      (\ s a -> s{_gpdvpmLDiversityConfig = a})

gpdvpmDeltaPresenceEstimationConfig :: Lens' GooglePrivacyDlpV2PrivacyMetric (Maybe GooglePrivacyDlpV2DeltaPresenceEstimationConfig)
gpdvpmDeltaPresenceEstimationConfig
  = lens _gpdvpmDeltaPresenceEstimationConfig
      (\ s a ->
         s{_gpdvpmDeltaPresenceEstimationConfig = a})

instance FromJSON GooglePrivacyDlpV2PrivacyMetric
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2PrivacyMetric"
              (\ o ->
                 GooglePrivacyDlpV2PrivacyMetric' <$>
                   (o .:? "numericalStatsConfig") <*>
                     (o .:? "categoricalStatsConfig")
                     <*> (o .:? "kMapEstimationConfig")
                     <*> (o .:? "kAnonymityConfig")
                     <*> (o .:? "lDiversityConfig")
                     <*> (o .:? "deltaPresenceEstimationConfig"))

instance ToJSON GooglePrivacyDlpV2PrivacyMetric where
        toJSON GooglePrivacyDlpV2PrivacyMetric'{..}
          = object
              (catMaybes
                 [("numericalStatsConfig" .=) <$>
                    _gpdvpmNumericalStatsConfig,
                  ("categoricalStatsConfig" .=) <$>
                    _gpdvpmCategoricalStatsConfig,
                  ("kMapEstimationConfig" .=) <$>
                    _gpdvpmKMapEstimationConfig,
                  ("kAnonymityConfig" .=) <$> _gpdvpmKAnonymityConfig,
                  ("lDiversityConfig" .=) <$> _gpdvpmLDiversityConfig,
                  ("deltaPresenceEstimationConfig" .=) <$>
                    _gpdvpmDeltaPresenceEstimationConfig])

-- | Using raw keys is prone to security risks due to accidentally leaking
-- the key. Choose another type of key if possible.
--
-- /See:/ 'googlePrivacyDlpV2UnwrAppedCryptoKey' smart constructor.
newtype GooglePrivacyDlpV2UnwrAppedCryptoKey =
  GooglePrivacyDlpV2UnwrAppedCryptoKey'
    { _gpdvuackKey :: Maybe Bytes
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2UnwrAppedCryptoKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvuackKey'
googlePrivacyDlpV2UnwrAppedCryptoKey
    :: GooglePrivacyDlpV2UnwrAppedCryptoKey
googlePrivacyDlpV2UnwrAppedCryptoKey =
  GooglePrivacyDlpV2UnwrAppedCryptoKey' {_gpdvuackKey = Nothing}

-- | The AES 128\/192\/256 bit key. [required]
gpdvuackKey :: Lens' GooglePrivacyDlpV2UnwrAppedCryptoKey (Maybe ByteString)
gpdvuackKey
  = lens _gpdvuackKey (\ s a -> s{_gpdvuackKey = a}) .
      mapping _Bytes

instance FromJSON
           GooglePrivacyDlpV2UnwrAppedCryptoKey
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2UnwrAppedCryptoKey"
              (\ o ->
                 GooglePrivacyDlpV2UnwrAppedCryptoKey' <$>
                   (o .:? "key"))

instance ToJSON GooglePrivacyDlpV2UnwrAppedCryptoKey
         where
        toJSON GooglePrivacyDlpV2UnwrAppedCryptoKey'{..}
          = object (catMaybes [("key" .=) <$> _gpdvuackKey])

-- | Rule set for modifying a set of infoTypes to alter behavior under
-- certain circumstances, depending on the specific details of the rules
-- within the set.
--
-- /See:/ 'googlePrivacyDlpV2InspectionRuleSet' smart constructor.
data GooglePrivacyDlpV2InspectionRuleSet =
  GooglePrivacyDlpV2InspectionRuleSet'
    { _gpdvirsRules     :: !(Maybe [GooglePrivacyDlpV2InspectionRule])
    , _gpdvirsInfoTypes :: !(Maybe [GooglePrivacyDlpV2InfoType])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2InspectionRuleSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvirsRules'
--
-- * 'gpdvirsInfoTypes'
googlePrivacyDlpV2InspectionRuleSet
    :: GooglePrivacyDlpV2InspectionRuleSet
googlePrivacyDlpV2InspectionRuleSet =
  GooglePrivacyDlpV2InspectionRuleSet'
    {_gpdvirsRules = Nothing, _gpdvirsInfoTypes = Nothing}

-- | Set of rules to be applied to infoTypes. The rules are applied in order.
gpdvirsRules :: Lens' GooglePrivacyDlpV2InspectionRuleSet [GooglePrivacyDlpV2InspectionRule]
gpdvirsRules
  = lens _gpdvirsRules (\ s a -> s{_gpdvirsRules = a})
      . _Default
      . _Coerce

-- | List of infoTypes this rule set is applied to.
gpdvirsInfoTypes :: Lens' GooglePrivacyDlpV2InspectionRuleSet [GooglePrivacyDlpV2InfoType]
gpdvirsInfoTypes
  = lens _gpdvirsInfoTypes
      (\ s a -> s{_gpdvirsInfoTypes = a})
      . _Default
      . _Coerce

instance FromJSON GooglePrivacyDlpV2InspectionRuleSet
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2InspectionRuleSet"
              (\ o ->
                 GooglePrivacyDlpV2InspectionRuleSet' <$>
                   (o .:? "rules" .!= mempty) <*>
                     (o .:? "infoTypes" .!= mempty))

instance ToJSON GooglePrivacyDlpV2InspectionRuleSet
         where
        toJSON GooglePrivacyDlpV2InspectionRuleSet'{..}
          = object
              (catMaybes
                 [("rules" .=) <$> _gpdvirsRules,
                  ("infoTypes" .=) <$> _gpdvirsInfoTypes])

-- | A column with a semantic tag attached.
--
-- /See:/ 'googlePrivacyDlpV2QuasiId' smart constructor.
data GooglePrivacyDlpV2QuasiId =
  GooglePrivacyDlpV2QuasiId'
    { _gpdvqiField     :: !(Maybe GooglePrivacyDlpV2FieldId)
    , _gpdvqiInfoType  :: !(Maybe GooglePrivacyDlpV2InfoType)
    , _gpdvqiInferred  :: !(Maybe GoogleProtobufEmpty)
    , _gpdvqiCustomTag :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2QuasiId' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvqiField'
--
-- * 'gpdvqiInfoType'
--
-- * 'gpdvqiInferred'
--
-- * 'gpdvqiCustomTag'
googlePrivacyDlpV2QuasiId
    :: GooglePrivacyDlpV2QuasiId
googlePrivacyDlpV2QuasiId =
  GooglePrivacyDlpV2QuasiId'
    { _gpdvqiField = Nothing
    , _gpdvqiInfoType = Nothing
    , _gpdvqiInferred = Nothing
    , _gpdvqiCustomTag = Nothing
    }

-- | Identifies the column. [required]
gpdvqiField :: Lens' GooglePrivacyDlpV2QuasiId (Maybe GooglePrivacyDlpV2FieldId)
gpdvqiField
  = lens _gpdvqiField (\ s a -> s{_gpdvqiField = a})

-- | A column can be tagged with a InfoType to use the relevant public
-- dataset as a statistical model of population, if available. We currently
-- support US ZIP codes, region codes, ages and genders. To
-- programmatically obtain the list of supported InfoTypes, use
-- ListInfoTypes with the supported_by=RISK_ANALYSIS filter.
gpdvqiInfoType :: Lens' GooglePrivacyDlpV2QuasiId (Maybe GooglePrivacyDlpV2InfoType)
gpdvqiInfoType
  = lens _gpdvqiInfoType
      (\ s a -> s{_gpdvqiInfoType = a})

-- | If no semantic tag is indicated, we infer the statistical model from the
-- distribution of values in the input data
gpdvqiInferred :: Lens' GooglePrivacyDlpV2QuasiId (Maybe GoogleProtobufEmpty)
gpdvqiInferred
  = lens _gpdvqiInferred
      (\ s a -> s{_gpdvqiInferred = a})

-- | A column can be tagged with a custom tag. In this case, the user must
-- indicate an auxiliary table that contains statistical information on the
-- possible values of this column (below).
gpdvqiCustomTag :: Lens' GooglePrivacyDlpV2QuasiId (Maybe Text)
gpdvqiCustomTag
  = lens _gpdvqiCustomTag
      (\ s a -> s{_gpdvqiCustomTag = a})

instance FromJSON GooglePrivacyDlpV2QuasiId where
        parseJSON
          = withObject "GooglePrivacyDlpV2QuasiId"
              (\ o ->
                 GooglePrivacyDlpV2QuasiId' <$>
                   (o .:? "field") <*> (o .:? "infoType") <*>
                     (o .:? "inferred")
                     <*> (o .:? "customTag"))

instance ToJSON GooglePrivacyDlpV2QuasiId where
        toJSON GooglePrivacyDlpV2QuasiId'{..}
          = object
              (catMaybes
                 [("field" .=) <$> _gpdvqiField,
                  ("infoType" .=) <$> _gpdvqiInfoType,
                  ("inferred" .=) <$> _gpdvqiInferred,
                  ("customTag" .=) <$> _gpdvqiCustomTag])

-- | Location of a finding within a document.
--
-- /See:/ 'googlePrivacyDlpV2DocumentLocation' smart constructor.
newtype GooglePrivacyDlpV2DocumentLocation =
  GooglePrivacyDlpV2DocumentLocation'
    { _gpdvdlFileOffSet :: Maybe (Textual Int64)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GooglePrivacyDlpV2DocumentLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdvdlFileOffSet'
googlePrivacyDlpV2DocumentLocation
    :: GooglePrivacyDlpV2DocumentLocation
googlePrivacyDlpV2DocumentLocation =
  GooglePrivacyDlpV2DocumentLocation' {_gpdvdlFileOffSet = Nothing}

-- | Offset of the line, from the beginning of the file, where the finding is
-- located.
gpdvdlFileOffSet :: Lens' GooglePrivacyDlpV2DocumentLocation (Maybe Int64)
gpdvdlFileOffSet
  = lens _gpdvdlFileOffSet
      (\ s a -> s{_gpdvdlFileOffSet = a})
      . mapping _Coerce

instance FromJSON GooglePrivacyDlpV2DocumentLocation
         where
        parseJSON
          = withObject "GooglePrivacyDlpV2DocumentLocation"
              (\ o ->
                 GooglePrivacyDlpV2DocumentLocation' <$>
                   (o .:? "fileOffset"))

instance ToJSON GooglePrivacyDlpV2DocumentLocation
         where
        toJSON GooglePrivacyDlpV2DocumentLocation'{..}
          = object
              (catMaybes [("fileOffset" .=) <$> _gpdvdlFileOffSet])
