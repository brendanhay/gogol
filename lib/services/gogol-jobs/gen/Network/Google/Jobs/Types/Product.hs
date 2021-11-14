{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Jobs.Types.Product
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Jobs.Types.Product where

import Network.Google.Jobs.Types.Sum
import Network.Google.Prelude

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

-- | When a request spans multiple servers, a MendelDebugInput may travel
-- with the request and take effect in all the servers. This field is a map
-- of namespaces to NamespacedMendelDebugInput protos. In a single server,
-- up to two NamespacedMendelDebugInput protos are applied: 1.
-- NamespacedMendelDebugInput with the global namespace (key == \"\"). 2.
-- NamespacedMendelDebugInput with the server\'s namespace. When both
-- NamespacedMendelDebugInput protos are present, they are merged. See
-- go\/mendel-debug-forcing for more details.
--
-- /See:/ 'mendelDebugInputNamespacedDebugInput' smart constructor.
newtype MendelDebugInputNamespacedDebugInput =
  MendelDebugInputNamespacedDebugInput'
    { _mdindiAddtional :: HashMap Text NamespacedDebugInput
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MendelDebugInputNamespacedDebugInput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdindiAddtional'
mendelDebugInputNamespacedDebugInput
    :: HashMap Text NamespacedDebugInput -- ^ 'mdindiAddtional'
    -> MendelDebugInputNamespacedDebugInput
mendelDebugInputNamespacedDebugInput pMdindiAddtional_ =
  MendelDebugInputNamespacedDebugInput'
    {_mdindiAddtional = _Coerce # pMdindiAddtional_}


mdindiAddtional :: Lens' MendelDebugInputNamespacedDebugInput (HashMap Text NamespacedDebugInput)
mdindiAddtional
  = lens _mdindiAddtional
      (\ s a -> s{_mdindiAddtional = a})
      . _Coerce

instance FromJSON
           MendelDebugInputNamespacedDebugInput
         where
        parseJSON
          = withObject "MendelDebugInputNamespacedDebugInput"
              (\ o ->
                 MendelDebugInputNamespacedDebugInput' <$>
                   (parseJSONObject o))

instance ToJSON MendelDebugInputNamespacedDebugInput
         where
        toJSON = toJSON . _mdindiAddtional

-- | Application related details of a job posting.
--
-- /See:/ 'applicationInfo' smart constructor.
data ApplicationInfo =
  ApplicationInfo'
    { _aiURIs :: !(Maybe [Text])
    , _aiEmails :: !(Maybe [Text])
    , _aiInstruction :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ApplicationInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiURIs'
--
-- * 'aiEmails'
--
-- * 'aiInstruction'
applicationInfo
    :: ApplicationInfo
applicationInfo =
  ApplicationInfo'
    {_aiURIs = Nothing, _aiEmails = Nothing, _aiInstruction = Nothing}


-- | Use this URI field to direct an applicant to a website, for example to
-- link to an online application form. The maximum number of allowed
-- characters for each entry is 2,000.
aiURIs :: Lens' ApplicationInfo [Text]
aiURIs
  = lens _aiURIs (\ s a -> s{_aiURIs = a}) . _Default .
      _Coerce

-- | Use this field to specify email address(es) to which resumes or
-- applications can be sent. The maximum number of allowed characters for
-- each entry is 255.
aiEmails :: Lens' ApplicationInfo [Text]
aiEmails
  = lens _aiEmails (\ s a -> s{_aiEmails = a}) .
      _Default
      . _Coerce

-- | Use this field to provide instructions, such as \"Mail your application
-- to ...\", that a candidate can follow to apply for the job. This field
-- accepts and sanitizes HTML input, and also accepts bold, italic, ordered
-- list, and unordered list markup tags. The maximum number of allowed
-- characters is 3,000.
aiInstruction :: Lens' ApplicationInfo (Maybe Text)
aiInstruction
  = lens _aiInstruction
      (\ s a -> s{_aiInstruction = a})

instance FromJSON ApplicationInfo where
        parseJSON
          = withObject "ApplicationInfo"
              (\ o ->
                 ApplicationInfo' <$>
                   (o .:? "uris" .!= mempty) <*>
                     (o .:? "emails" .!= mempty)
                     <*> (o .:? "instruction"))

instance ToJSON ApplicationInfo where
        toJSON ApplicationInfo'{..}
          = object
              (catMaybes
                 [("uris" .=) <$> _aiURIs,
                  ("emails" .=) <$> _aiEmails,
                  ("instruction" .=) <$> _aiInstruction])

-- | Message representing input to a Mendel server for debug forcing. See
-- go\/mendel-debug-forcing for more details. Next ID: 2
--
-- /See:/ 'mendelDebugInput' smart constructor.
newtype MendelDebugInput =
  MendelDebugInput'
    { _mdiNamespacedDebugInput :: Maybe MendelDebugInputNamespacedDebugInput
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MendelDebugInput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdiNamespacedDebugInput'
mendelDebugInput
    :: MendelDebugInput
mendelDebugInput = MendelDebugInput' {_mdiNamespacedDebugInput = Nothing}


-- | When a request spans multiple servers, a MendelDebugInput may travel
-- with the request and take effect in all the servers. This field is a map
-- of namespaces to NamespacedMendelDebugInput protos. In a single server,
-- up to two NamespacedMendelDebugInput protos are applied: 1.
-- NamespacedMendelDebugInput with the global namespace (key == \"\"). 2.
-- NamespacedMendelDebugInput with the server\'s namespace. When both
-- NamespacedMendelDebugInput protos are present, they are merged. See
-- go\/mendel-debug-forcing for more details.
mdiNamespacedDebugInput :: Lens' MendelDebugInput (Maybe MendelDebugInputNamespacedDebugInput)
mdiNamespacedDebugInput
  = lens _mdiNamespacedDebugInput
      (\ s a -> s{_mdiNamespacedDebugInput = a})

instance FromJSON MendelDebugInput where
        parseJSON
          = withObject "MendelDebugInput"
              (\ o ->
                 MendelDebugInput' <$> (o .:? "namespacedDebugInput"))

instance ToJSON MendelDebugInput where
        toJSON MendelDebugInput'{..}
          = object
              (catMaybes
                 [("namespacedDebugInput" .=) <$>
                    _mdiNamespacedDebugInput])

-- | Job entry with metadata inside SearchJobsResponse.
--
-- /See:/ 'matchingJob' smart constructor.
data MatchingJob =
  MatchingJob'
    { _mjJobTitleSnippet :: !(Maybe Text)
    , _mjJobSummary :: !(Maybe Text)
    , _mjCommuteInfo :: !(Maybe CommuteInfo)
    , _mjSearchTextSnippet :: !(Maybe Text)
    , _mjJob :: !(Maybe Job)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MatchingJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mjJobTitleSnippet'
--
-- * 'mjJobSummary'
--
-- * 'mjCommuteInfo'
--
-- * 'mjSearchTextSnippet'
--
-- * 'mjJob'
matchingJob
    :: MatchingJob
matchingJob =
  MatchingJob'
    { _mjJobTitleSnippet = Nothing
    , _mjJobSummary = Nothing
    , _mjCommuteInfo = Nothing
    , _mjSearchTextSnippet = Nothing
    , _mjJob = Nothing
    }


-- | Contains snippets of text from the Job.title field most closely matching
-- a search query\'s keywords, if available. The matching query keywords
-- are enclosed in HTML bold tags.
mjJobTitleSnippet :: Lens' MatchingJob (Maybe Text)
mjJobTitleSnippet
  = lens _mjJobTitleSnippet
      (\ s a -> s{_mjJobTitleSnippet = a})

-- | A summary of the job with core information that\'s displayed on the
-- search results listing page.
mjJobSummary :: Lens' MatchingJob (Maybe Text)
mjJobSummary
  = lens _mjJobSummary (\ s a -> s{_mjJobSummary = a})

-- | Commute information which is generated based on specified CommuteFilter.
mjCommuteInfo :: Lens' MatchingJob (Maybe CommuteInfo)
mjCommuteInfo
  = lens _mjCommuteInfo
      (\ s a -> s{_mjCommuteInfo = a})

-- | Contains snippets of text from the Job.description and similar fields
-- that most closely match a search query\'s keywords, if available. All
-- HTML tags in the original fields are stripped when returned in this
-- field, and matching query keywords are enclosed in HTML bold tags.
mjSearchTextSnippet :: Lens' MatchingJob (Maybe Text)
mjSearchTextSnippet
  = lens _mjSearchTextSnippet
      (\ s a -> s{_mjSearchTextSnippet = a})

-- | Job resource that matches the specified SearchJobsRequest.
mjJob :: Lens' MatchingJob (Maybe Job)
mjJob = lens _mjJob (\ s a -> s{_mjJob = a})

instance FromJSON MatchingJob where
        parseJSON
          = withObject "MatchingJob"
              (\ o ->
                 MatchingJob' <$>
                   (o .:? "jobTitleSnippet") <*> (o .:? "jobSummary")
                     <*> (o .:? "commuteInfo")
                     <*> (o .:? "searchTextSnippet")
                     <*> (o .:? "job"))

instance ToJSON MatchingJob where
        toJSON MatchingJob'{..}
          = object
              (catMaybes
                 [("jobTitleSnippet" .=) <$> _mjJobTitleSnippet,
                  ("jobSummary" .=) <$> _mjJobSummary,
                  ("commuteInfo" .=) <$> _mjCommuteInfo,
                  ("searchTextSnippet" .=) <$> _mjSearchTextSnippet,
                  ("job" .=) <$> _mjJob])

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

-- | Meta information related to the job searcher or entity conducting the
-- job search. This information is used to improve the performance of the
-- service.
--
-- /See:/ 'requestMetadata' smart constructor.
data RequestMetadata =
  RequestMetadata'
    { _rmDomain :: !(Maybe Text)
    , _rmAllowMissingIds :: !(Maybe Bool)
    , _rmUserId :: !(Maybe Text)
    , _rmSessionId :: !(Maybe Text)
    , _rmDeviceInfo :: !(Maybe DeviceInfo)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RequestMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmDomain'
--
-- * 'rmAllowMissingIds'
--
-- * 'rmUserId'
--
-- * 'rmSessionId'
--
-- * 'rmDeviceInfo'
requestMetadata
    :: RequestMetadata
requestMetadata =
  RequestMetadata'
    { _rmDomain = Nothing
    , _rmAllowMissingIds = Nothing
    , _rmUserId = Nothing
    , _rmSessionId = Nothing
    , _rmDeviceInfo = Nothing
    }


-- | Required if allow_missing_ids is unset or \`false\`. The client-defined
-- scope or source of the service call, which typically is the domain on
-- which the service has been implemented and is currently being run. For
-- example, if the service is being run by client *Foo, Inc.*, on job board
-- www.foo.com and career site www.bar.com, then this field is set to
-- \"foo.com\" for use on the job board, and \"bar.com\" for use on the
-- career site. Note that any improvements to the model for a particular
-- tenant site rely on this field being set correctly to a unique domain.
-- The maximum number of allowed characters is 255.
rmDomain :: Lens' RequestMetadata (Maybe Text)
rmDomain = lens _rmDomain (\ s a -> s{_rmDomain = a})

-- | Only set when any of domain, session_id and user_id isn\'t available for
-- some reason. It is highly recommended not to set this field and provide
-- accurate domain, session_id and user_id for the best service experience.
rmAllowMissingIds :: Lens' RequestMetadata (Maybe Bool)
rmAllowMissingIds
  = lens _rmAllowMissingIds
      (\ s a -> s{_rmAllowMissingIds = a})

-- | Required if allow_missing_ids is unset or \`false\`. A unique user
-- identification string, as determined by the client. To have the
-- strongest positive impact on search quality make sure the client-level
-- is unique. Obfuscate this field for privacy concerns before providing it
-- to the service. Note that any improvements to the model for a particular
-- tenant site rely on this field being set correctly to a unique user ID.
-- The maximum number of allowed characters is 255.
rmUserId :: Lens' RequestMetadata (Maybe Text)
rmUserId = lens _rmUserId (\ s a -> s{_rmUserId = a})

-- | Required if allow_missing_ids is unset or \`false\`. A unique session
-- identification string. A session is defined as the duration of an end
-- user\'s interaction with the service over a certain period. Obfuscate
-- this field for privacy concerns before providing it to the service. Note
-- that any improvements to the model for a particular tenant site rely on
-- this field being set correctly to a unique session ID. The maximum
-- number of allowed characters is 255.
rmSessionId :: Lens' RequestMetadata (Maybe Text)
rmSessionId
  = lens _rmSessionId (\ s a -> s{_rmSessionId = a})

-- | The type of device used by the job seeker at the time of the call to the
-- service.
rmDeviceInfo :: Lens' RequestMetadata (Maybe DeviceInfo)
rmDeviceInfo
  = lens _rmDeviceInfo (\ s a -> s{_rmDeviceInfo = a})

instance FromJSON RequestMetadata where
        parseJSON
          = withObject "RequestMetadata"
              (\ o ->
                 RequestMetadata' <$>
                   (o .:? "domain") <*> (o .:? "allowMissingIds") <*>
                     (o .:? "userId")
                     <*> (o .:? "sessionId")
                     <*> (o .:? "deviceInfo"))

instance ToJSON RequestMetadata where
        toJSON RequestMetadata'{..}
          = object
              (catMaybes
                 [("domain" .=) <$> _rmDomain,
                  ("allowMissingIds" .=) <$> _rmAllowMissingIds,
                  ("userId" .=) <$> _rmUserId,
                  ("sessionId" .=) <$> _rmSessionId,
                  ("deviceInfo" .=) <$> _rmDeviceInfo])

-- | The result of JobService.BatchCreateJobs. It\'s used to replace
-- google.longrunning.Operation.response in case of success.
--
-- /See:/ 'batchCreateJobsResponse' smart constructor.
newtype BatchCreateJobsResponse =
  BatchCreateJobsResponse'
    { _bcjrJobResults :: Maybe [JobResult]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchCreateJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bcjrJobResults'
batchCreateJobsResponse
    :: BatchCreateJobsResponse
batchCreateJobsResponse = BatchCreateJobsResponse' {_bcjrJobResults = Nothing}


-- | List of job mutation results from a batch create operation. It can
-- change until operation status is FINISHED, FAILED or CANCELLED.
bcjrJobResults :: Lens' BatchCreateJobsResponse [JobResult]
bcjrJobResults
  = lens _bcjrJobResults
      (\ s a -> s{_bcjrJobResults = a})
      . _Default
      . _Coerce

instance FromJSON BatchCreateJobsResponse where
        parseJSON
          = withObject "BatchCreateJobsResponse"
              (\ o ->
                 BatchCreateJobsResponse' <$>
                   (o .:? "jobResults" .!= mempty))

instance ToJSON BatchCreateJobsResponse where
        toJSON BatchCreateJobsResponse'{..}
          = object
              (catMaybes [("jobResults" .=) <$> _bcjrJobResults])

-- | Job compensation details.
--
-- /See:/ 'compensationInfo' smart constructor.
data CompensationInfo =
  CompensationInfo'
    { _ciAnnualizedTotalCompensationRange :: !(Maybe CompensationRange)
    , _ciEntries :: !(Maybe [CompensationEntry])
    , _ciAnnualizedBaseCompensationRange :: !(Maybe CompensationRange)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CompensationInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciAnnualizedTotalCompensationRange'
--
-- * 'ciEntries'
--
-- * 'ciAnnualizedBaseCompensationRange'
compensationInfo
    :: CompensationInfo
compensationInfo =
  CompensationInfo'
    { _ciAnnualizedTotalCompensationRange = Nothing
    , _ciEntries = Nothing
    , _ciAnnualizedBaseCompensationRange = Nothing
    }


-- | Output only. Annualized total compensation range. Computed as all
-- compensation entries\' CompensationEntry.amount times
-- CompensationEntry.expected_units_per_year. See CompensationEntry for
-- explanation on compensation annualization.
ciAnnualizedTotalCompensationRange :: Lens' CompensationInfo (Maybe CompensationRange)
ciAnnualizedTotalCompensationRange
  = lens _ciAnnualizedTotalCompensationRange
      (\ s a -> s{_ciAnnualizedTotalCompensationRange = a})

-- | Job compensation information. At most one entry can be of type
-- CompensationInfo.CompensationType.BASE, which is referred as **base
-- compensation entry** for the job.
ciEntries :: Lens' CompensationInfo [CompensationEntry]
ciEntries
  = lens _ciEntries (\ s a -> s{_ciEntries = a}) .
      _Default
      . _Coerce

-- | Output only. Annualized base compensation range. Computed as base
-- compensation entry\'s CompensationEntry.amount times
-- CompensationEntry.expected_units_per_year. See CompensationEntry for
-- explanation on compensation annualization.
ciAnnualizedBaseCompensationRange :: Lens' CompensationInfo (Maybe CompensationRange)
ciAnnualizedBaseCompensationRange
  = lens _ciAnnualizedBaseCompensationRange
      (\ s a -> s{_ciAnnualizedBaseCompensationRange = a})

instance FromJSON CompensationInfo where
        parseJSON
          = withObject "CompensationInfo"
              (\ o ->
                 CompensationInfo' <$>
                   (o .:? "annualizedTotalCompensationRange") <*>
                     (o .:? "entries" .!= mempty)
                     <*> (o .:? "annualizedBaseCompensationRange"))

instance ToJSON CompensationInfo where
        toJSON CompensationInfo'{..}
          = object
              (catMaybes
                 [("annualizedTotalCompensationRange" .=) <$>
                    _ciAnnualizedTotalCompensationRange,
                  ("entries" .=) <$> _ciEntries,
                  ("annualizedBaseCompensationRange" .=) <$>
                    _ciAnnualizedBaseCompensationRange])

-- | The result of JobService.BatchUpdateJobs. It\'s used to replace
-- google.longrunning.Operation.response in case of success.
--
-- /See:/ 'batchUpdateJobsResponse' smart constructor.
newtype BatchUpdateJobsResponse =
  BatchUpdateJobsResponse'
    { _bujrJobResults :: Maybe [JobResult]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchUpdateJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bujrJobResults'
batchUpdateJobsResponse
    :: BatchUpdateJobsResponse
batchUpdateJobsResponse = BatchUpdateJobsResponse' {_bujrJobResults = Nothing}


-- | List of job mutation results from a batch update operation. It can
-- change until operation status is FINISHED, FAILED or CANCELLED.
bujrJobResults :: Lens' BatchUpdateJobsResponse [JobResult]
bujrJobResults
  = lens _bujrJobResults
      (\ s a -> s{_bujrJobResults = a})
      . _Default
      . _Coerce

instance FromJSON BatchUpdateJobsResponse where
        parseJSON
          = withObject "BatchUpdateJobsResponse"
              (\ o ->
                 BatchUpdateJobsResponse' <$>
                   (o .:? "jobResults" .!= mempty))

instance ToJSON BatchUpdateJobsResponse where
        toJSON BatchUpdateJobsResponse'{..}
          = object
              (catMaybes [("jobResults" .=) <$> _bujrJobResults])

-- | The result of JobService.BatchDeleteJobs. It\'s used to replace
-- google.longrunning.Operation.response in case of success.
--
-- /See:/ 'batchDeleteJobsResponse' smart constructor.
newtype BatchDeleteJobsResponse =
  BatchDeleteJobsResponse'
    { _bdjrJobResults :: Maybe [JobResult]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchDeleteJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdjrJobResults'
batchDeleteJobsResponse
    :: BatchDeleteJobsResponse
batchDeleteJobsResponse = BatchDeleteJobsResponse' {_bdjrJobResults = Nothing}


-- | List of job mutation results from a batch delete operation. It can
-- change until operation status is FINISHED, FAILED or CANCELLED.
bdjrJobResults :: Lens' BatchDeleteJobsResponse [JobResult]
bdjrJobResults
  = lens _bdjrJobResults
      (\ s a -> s{_bdjrJobResults = a})
      . _Default
      . _Coerce

instance FromJSON BatchDeleteJobsResponse where
        parseJSON
          = withObject "BatchDeleteJobsResponse"
              (\ o ->
                 BatchDeleteJobsResponse' <$>
                   (o .:? "jobResults" .!= mempty))

instance ToJSON BatchDeleteJobsResponse where
        toJSON BatchDeleteJobsResponse'{..}
          = object
              (catMaybes [("jobResults" .=) <$> _bdjrJobResults])

-- | The histogram request.
--
-- /See:/ 'histogramQuery' smart constructor.
newtype HistogramQuery =
  HistogramQuery'
    { _hqHistogramQuery :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HistogramQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hqHistogramQuery'
histogramQuery
    :: HistogramQuery
histogramQuery = HistogramQuery' {_hqHistogramQuery = Nothing}


-- | An expression specifies a histogram request against matching jobs for
-- searches. See SearchJobsRequest.histogram_queries for details about
-- syntax.
hqHistogramQuery :: Lens' HistogramQuery (Maybe Text)
hqHistogramQuery
  = lens _hqHistogramQuery
      (\ s a -> s{_hqHistogramQuery = a})

instance FromJSON HistogramQuery where
        parseJSON
          = withObject "HistogramQuery"
              (\ o -> HistogramQuery' <$> (o .:? "histogramQuery"))

instance ToJSON HistogramQuery where
        toJSON HistogramQuery'{..}
          = object
              (catMaybes
                 [("histogramQuery" .=) <$> _hqHistogramQuery])

-- | Resource that represents completion results.
--
-- /See:/ 'completionResult' smart constructor.
data CompletionResult =
  CompletionResult'
    { _crSuggestion :: !(Maybe Text)
    , _crImageURI :: !(Maybe Text)
    , _crType :: !(Maybe CompletionResultType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CompletionResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crSuggestion'
--
-- * 'crImageURI'
--
-- * 'crType'
completionResult
    :: CompletionResult
completionResult =
  CompletionResult'
    {_crSuggestion = Nothing, _crImageURI = Nothing, _crType = Nothing}


-- | The suggestion for the query.
crSuggestion :: Lens' CompletionResult (Maybe Text)
crSuggestion
  = lens _crSuggestion (\ s a -> s{_crSuggestion = a})

-- | The URI of the company image for COMPANY_NAME.
crImageURI :: Lens' CompletionResult (Maybe Text)
crImageURI
  = lens _crImageURI (\ s a -> s{_crImageURI = a})

-- | The completion topic.
crType :: Lens' CompletionResult (Maybe CompletionResultType)
crType = lens _crType (\ s a -> s{_crType = a})

instance FromJSON CompletionResult where
        parseJSON
          = withObject "CompletionResult"
              (\ o ->
                 CompletionResult' <$>
                   (o .:? "suggestion") <*> (o .:? "imageUri") <*>
                     (o .:? "type"))

instance ToJSON CompletionResult where
        toJSON CompletionResult'{..}
          = object
              (catMaybes
                 [("suggestion" .=) <$> _crSuggestion,
                  ("imageUri" .=) <$> _crImageURI,
                  ("type" .=) <$> _crType])

-- | A resource that represents a location with full geographic information.
--
-- /See:/ 'location' smart constructor.
data Location =
  Location'
    { _lLatLng :: !(Maybe LatLng)
    , _lRadiusMiles :: !(Maybe (Textual Double))
    , _lLocationType :: !(Maybe LocationLocationType)
    , _lPostalAddress :: !(Maybe PostalAddress)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Location' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lLatLng'
--
-- * 'lRadiusMiles'
--
-- * 'lLocationType'
--
-- * 'lPostalAddress'
location
    :: Location
location =
  Location'
    { _lLatLng = Nothing
    , _lRadiusMiles = Nothing
    , _lLocationType = Nothing
    , _lPostalAddress = Nothing
    }


-- | An object representing a latitude\/longitude pair.
lLatLng :: Lens' Location (Maybe LatLng)
lLatLng = lens _lLatLng (\ s a -> s{_lLatLng = a})

-- | Radius in miles of the job location. This value is derived from the
-- location bounding box in which a circle with the specified radius
-- centered from google.type.LatLng covers the area associated with the job
-- location. For example, currently, \"Mountain View, CA, USA\" has a
-- radius of 6.17 miles.
lRadiusMiles :: Lens' Location (Maybe Double)
lRadiusMiles
  = lens _lRadiusMiles (\ s a -> s{_lRadiusMiles = a})
      . mapping _Coerce

-- | The type of a location, which corresponds to the address lines field of
-- google.type.PostalAddress. For example, \"Downtown, Atlanta, GA, USA\"
-- has a type of LocationType.NEIGHBORHOOD, and \"Kansas City, KS, USA\"
-- has a type of LocationType.LOCALITY.
lLocationType :: Lens' Location (Maybe LocationLocationType)
lLocationType
  = lens _lLocationType
      (\ s a -> s{_lLocationType = a})

-- | Postal address of the location that includes human readable information,
-- such as postal delivery and payments addresses. Given a postal address,
-- a postal service can deliver items to a premises, P.O. Box, or other
-- delivery location.
lPostalAddress :: Lens' Location (Maybe PostalAddress)
lPostalAddress
  = lens _lPostalAddress
      (\ s a -> s{_lPostalAddress = a})

instance FromJSON Location where
        parseJSON
          = withObject "Location"
              (\ o ->
                 Location' <$>
                   (o .:? "latLng") <*> (o .:? "radiusMiles") <*>
                     (o .:? "locationType")
                     <*> (o .:? "postalAddress"))

instance ToJSON Location where
        toJSON Location'{..}
          = object
              (catMaybes
                 [("latLng" .=) <$> _lLatLng,
                  ("radiusMiles" .=) <$> _lRadiusMiles,
                  ("locationType" .=) <$> _lLocationType,
                  ("postalAddress" .=) <$> _lPostalAddress])

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
    , _oMetadata :: !(Maybe OperationMetadata)
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
oMetadata :: Lens' Operation (Maybe OperationMetadata)
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

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'empty' smart constructor.
data Empty =
  Empty'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty'


instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty')

instance ToJSON Empty where
        toJSON = const emptyObject

-- | An event issued when an end user interacts with the application that
-- implements Cloud Talent Solution. Providing this information improves
-- the quality of results for the API clients, enabling the service to
-- perform optimally. The number of events sent must be consistent with
-- other calls, such as job searches, issued to the service by the client.
--
-- /See:/ 'clientEvent' smart constructor.
data ClientEvent =
  ClientEvent'
    { _ceRequestId :: !(Maybe Text)
    , _ceJobEvent :: !(Maybe JobEvent)
    , _ceEventNotes :: !(Maybe Text)
    , _ceCreateTime :: !(Maybe DateTime')
    , _ceEventId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ClientEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ceRequestId'
--
-- * 'ceJobEvent'
--
-- * 'ceEventNotes'
--
-- * 'ceCreateTime'
--
-- * 'ceEventId'
clientEvent
    :: ClientEvent
clientEvent =
  ClientEvent'
    { _ceRequestId = Nothing
    , _ceJobEvent = Nothing
    , _ceEventNotes = Nothing
    , _ceCreateTime = Nothing
    , _ceEventId = Nothing
    }


-- | Strongly recommended for the best service experience. A unique ID
-- generated in the API responses. It can be found in
-- ResponseMetadata.request_id.
ceRequestId :: Lens' ClientEvent (Maybe Text)
ceRequestId
  = lens _ceRequestId (\ s a -> s{_ceRequestId = a})

-- | An event issued when a job seeker interacts with the application that
-- implements Cloud Talent Solution.
ceJobEvent :: Lens' ClientEvent (Maybe JobEvent)
ceJobEvent
  = lens _ceJobEvent (\ s a -> s{_ceJobEvent = a})

-- | Notes about the event provided by recruiters or other users, for
-- example, feedback on why a job was bookmarked.
ceEventNotes :: Lens' ClientEvent (Maybe Text)
ceEventNotes
  = lens _ceEventNotes (\ s a -> s{_ceEventNotes = a})

-- | Required. The timestamp of the event.
ceCreateTime :: Lens' ClientEvent (Maybe UTCTime)
ceCreateTime
  = lens _ceCreateTime (\ s a -> s{_ceCreateTime = a})
      . mapping _DateTime

-- | Required. A unique identifier, generated by the client application.
ceEventId :: Lens' ClientEvent (Maybe Text)
ceEventId
  = lens _ceEventId (\ s a -> s{_ceEventId = a})

instance FromJSON ClientEvent where
        parseJSON
          = withObject "ClientEvent"
              (\ o ->
                 ClientEvent' <$>
                   (o .:? "requestId") <*> (o .:? "jobEvent") <*>
                     (o .:? "eventNotes")
                     <*> (o .:? "createTime")
                     <*> (o .:? "eventId"))

instance ToJSON ClientEvent where
        toJSON ClientEvent'{..}
          = object
              (catMaybes
                 [("requestId" .=) <$> _ceRequestId,
                  ("jobEvent" .=) <$> _ceJobEvent,
                  ("eventNotes" .=) <$> _ceEventNotes,
                  ("createTime" .=) <$> _ceCreateTime,
                  ("eventId" .=) <$> _ceEventId])

-- | Request to update a batch of jobs.
--
-- /See:/ 'batchUpdateJobsRequest' smart constructor.
data BatchUpdateJobsRequest =
  BatchUpdateJobsRequest'
    { _bujrUpdateMask :: !(Maybe GFieldMask)
    , _bujrJobs :: !(Maybe [Job])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchUpdateJobsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bujrUpdateMask'
--
-- * 'bujrJobs'
batchUpdateJobsRequest
    :: BatchUpdateJobsRequest
batchUpdateJobsRequest =
  BatchUpdateJobsRequest' {_bujrUpdateMask = Nothing, _bujrJobs = Nothing}


-- | Strongly recommended for the best service experience. Be aware that it
-- will also increase latency when checking the status of a batch
-- operation. If update_mask is provided, only the specified fields in Job
-- are updated. Otherwise all the fields are updated. A field mask to
-- restrict the fields that are updated. Only top level fields of Job are
-- supported. If update_mask is provided, The Job inside JobResult will
-- only contains fields that is updated, plus the Id of the Job. Otherwise,
-- Job will include all fields, which can yield a very large response.
bujrUpdateMask :: Lens' BatchUpdateJobsRequest (Maybe GFieldMask)
bujrUpdateMask
  = lens _bujrUpdateMask
      (\ s a -> s{_bujrUpdateMask = a})

-- | Required. The jobs to be updated. A maximum of 200 jobs can be updated
-- in a batch.
bujrJobs :: Lens' BatchUpdateJobsRequest [Job]
bujrJobs
  = lens _bujrJobs (\ s a -> s{_bujrJobs = a}) .
      _Default
      . _Coerce

instance FromJSON BatchUpdateJobsRequest where
        parseJSON
          = withObject "BatchUpdateJobsRequest"
              (\ o ->
                 BatchUpdateJobsRequest' <$>
                   (o .:? "updateMask") <*> (o .:? "jobs" .!= mempty))

instance ToJSON BatchUpdateJobsRequest where
        toJSON BatchUpdateJobsRequest'{..}
          = object
              (catMaybes
                 [("updateMask" .=) <$> _bujrUpdateMask,
                  ("jobs" .=) <$> _bujrJobs])

-- | Represents an amount of money with its currency type.
--
-- /See:/ 'money' smart constructor.
data Money =
  Money'
    { _mCurrencyCode :: !(Maybe Text)
    , _mNanos :: !(Maybe (Textual Int32))
    , _mUnits :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Money' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mCurrencyCode'
--
-- * 'mNanos'
--
-- * 'mUnits'
money
    :: Money
money = Money' {_mCurrencyCode = Nothing, _mNanos = Nothing, _mUnits = Nothing}


-- | The three-letter currency code defined in ISO 4217.
mCurrencyCode :: Lens' Money (Maybe Text)
mCurrencyCode
  = lens _mCurrencyCode
      (\ s a -> s{_mCurrencyCode = a})

-- | Number of nano (10^-9) units of the amount. The value must be between
-- -999,999,999 and +999,999,999 inclusive. If \`units\` is positive,
-- \`nanos\` must be positive or zero. If \`units\` is zero, \`nanos\` can
-- be positive, zero, or negative. If \`units\` is negative, \`nanos\` must
-- be negative or zero. For example $-1.75 is represented as \`units\`=-1
-- and \`nanos\`=-750,000,000.
mNanos :: Lens' Money (Maybe Int32)
mNanos
  = lens _mNanos (\ s a -> s{_mNanos = a}) .
      mapping _Coerce

-- | The whole units of the amount. For example if \`currencyCode\` is
-- \`\"USD\"\`, then 1 unit is one US dollar.
mUnits :: Lens' Money (Maybe Int64)
mUnits
  = lens _mUnits (\ s a -> s{_mUnits = a}) .
      mapping _Coerce

instance FromJSON Money where
        parseJSON
          = withObject "Money"
              (\ o ->
                 Money' <$>
                   (o .:? "currencyCode") <*> (o .:? "nanos") <*>
                     (o .:? "units"))

instance ToJSON Money where
        toJSON Money'{..}
          = object
              (catMaybes
                 [("currencyCode" .=) <$> _mCurrencyCode,
                  ("nanos" .=) <$> _mNanos, ("units" .=) <$> _mUnits])

-- | The List companies response object.
--
-- /See:/ 'listCompaniesResponse' smart constructor.
data ListCompaniesResponse =
  ListCompaniesResponse'
    { _lcrNextPageToken :: !(Maybe Text)
    , _lcrCompanies :: !(Maybe [Company])
    , _lcrMetadata :: !(Maybe ResponseMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListCompaniesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcrNextPageToken'
--
-- * 'lcrCompanies'
--
-- * 'lcrMetadata'
listCompaniesResponse
    :: ListCompaniesResponse
listCompaniesResponse =
  ListCompaniesResponse'
    { _lcrNextPageToken = Nothing
    , _lcrCompanies = Nothing
    , _lcrMetadata = Nothing
    }


-- | A token to retrieve the next page of results.
lcrNextPageToken :: Lens' ListCompaniesResponse (Maybe Text)
lcrNextPageToken
  = lens _lcrNextPageToken
      (\ s a -> s{_lcrNextPageToken = a})

-- | Companies for the current client.
lcrCompanies :: Lens' ListCompaniesResponse [Company]
lcrCompanies
  = lens _lcrCompanies (\ s a -> s{_lcrCompanies = a})
      . _Default
      . _Coerce

-- | Additional information for the API invocation, such as the request
-- tracking id.
lcrMetadata :: Lens' ListCompaniesResponse (Maybe ResponseMetadata)
lcrMetadata
  = lens _lcrMetadata (\ s a -> s{_lcrMetadata = a})

instance FromJSON ListCompaniesResponse where
        parseJSON
          = withObject "ListCompaniesResponse"
              (\ o ->
                 ListCompaniesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "companies" .!= mempty)
                     <*> (o .:? "metadata"))

instance ToJSON ListCompaniesResponse where
        toJSON ListCompaniesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lcrNextPageToken,
                  ("companies" .=) <$> _lcrCompanies,
                  ("metadata" .=) <$> _lcrMetadata])

-- | Next ID: 15
--
-- /See:/ 'namespacedDebugInput' smart constructor.
data NamespacedDebugInput =
  NamespacedDebugInput'
    { _ndiDisableAutomaticEnrollmentSelection :: !(Maybe Bool)
    , _ndiDisableExpTags :: !(Maybe [Text])
    , _ndiDisableOrganicSelection :: !(Maybe Bool)
    , _ndiForcedFlags :: !(Maybe NamespacedDebugInputForcedFlags)
    , _ndiConditionallyForcedExps :: !(Maybe [Textual Int32])
    , _ndiAbsolutelyForcedExpTags :: !(Maybe [Text])
    , _ndiAbsolutelyForcedExpNames :: !(Maybe [Text])
    , _ndiDisableManualEnrollmentSelection :: !(Maybe Bool)
    , _ndiDisableExps :: !(Maybe [Textual Int32])
    , _ndiAbsolutelyForcedExps :: !(Maybe [Textual Int32])
    , _ndiDisableExpNames :: !(Maybe [Text])
    , _ndiConditionallyForcedExpNames :: !(Maybe [Text])
    , _ndiConditionallyForcedExpTags :: !(Maybe [Text])
    , _ndiForcedRollouts :: !(Maybe NamespacedDebugInputForcedRollouts)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NamespacedDebugInput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ndiDisableAutomaticEnrollmentSelection'
--
-- * 'ndiDisableExpTags'
--
-- * 'ndiDisableOrganicSelection'
--
-- * 'ndiForcedFlags'
--
-- * 'ndiConditionallyForcedExps'
--
-- * 'ndiAbsolutelyForcedExpTags'
--
-- * 'ndiAbsolutelyForcedExpNames'
--
-- * 'ndiDisableManualEnrollmentSelection'
--
-- * 'ndiDisableExps'
--
-- * 'ndiAbsolutelyForcedExps'
--
-- * 'ndiDisableExpNames'
--
-- * 'ndiConditionallyForcedExpNames'
--
-- * 'ndiConditionallyForcedExpTags'
--
-- * 'ndiForcedRollouts'
namespacedDebugInput
    :: NamespacedDebugInput
namespacedDebugInput =
  NamespacedDebugInput'
    { _ndiDisableAutomaticEnrollmentSelection = Nothing
    , _ndiDisableExpTags = Nothing
    , _ndiDisableOrganicSelection = Nothing
    , _ndiForcedFlags = Nothing
    , _ndiConditionallyForcedExps = Nothing
    , _ndiAbsolutelyForcedExpTags = Nothing
    , _ndiAbsolutelyForcedExpNames = Nothing
    , _ndiDisableManualEnrollmentSelection = Nothing
    , _ndiDisableExps = Nothing
    , _ndiAbsolutelyForcedExps = Nothing
    , _ndiDisableExpNames = Nothing
    , _ndiConditionallyForcedExpNames = Nothing
    , _ndiConditionallyForcedExpTags = Nothing
    , _ndiForcedRollouts = Nothing
    }


-- | If true, disable automatic enrollment selection (at all diversion
-- points). Automatic enrollment selection means experiment selection
-- process based on the experiment\'s automatic enrollment condition. This
-- does not disable selection of forced experiments.
ndiDisableAutomaticEnrollmentSelection :: Lens' NamespacedDebugInput (Maybe Bool)
ndiDisableAutomaticEnrollmentSelection
  = lens _ndiDisableAutomaticEnrollmentSelection
      (\ s a ->
         s{_ndiDisableAutomaticEnrollmentSelection = a})

-- | Set of experiment tags to be disabled. All experiments that are tagged
-- with one or more of these tags are disabled. If an experiment is
-- disabled, it is never selected nor forced. If an aggregate experiment is
-- disabled, its partitions are disabled together. If an experiment with an
-- enrollment is disabled, the enrollment is disabled together.
ndiDisableExpTags :: Lens' NamespacedDebugInput [Text]
ndiDisableExpTags
  = lens _ndiDisableExpTags
      (\ s a -> s{_ndiDisableExpTags = a})
      . _Default
      . _Coerce

-- | If true, disable organic experiment selection (at all diversion points).
-- Organic selection means experiment selection process based on traffic
-- allocation and diversion condition evaluation. This does not disable
-- selection of forced experiments. This is useful in cases when it is not
-- known whether experiment selection behavior is responsible for a error
-- or breakage. Disabling organic selection may help to isolate the cause
-- of a given problem.
ndiDisableOrganicSelection :: Lens' NamespacedDebugInput (Maybe Bool)
ndiDisableOrganicSelection
  = lens _ndiDisableOrganicSelection
      (\ s a -> s{_ndiDisableOrganicSelection = a})

-- | Flags to force in a particular experiment state. Map from flag name to
-- flag value.
ndiForcedFlags :: Lens' NamespacedDebugInput (Maybe NamespacedDebugInputForcedFlags)
ndiForcedFlags
  = lens _ndiForcedFlags
      (\ s a -> s{_ndiForcedFlags = a})

-- | Set of experiment ids to be conditionally forced. These ids will be
-- forced only if their conditions and their parent domain\'s conditions
-- are true.
ndiConditionallyForcedExps :: Lens' NamespacedDebugInput [Int32]
ndiConditionallyForcedExps
  = lens _ndiConditionallyForcedExps
      (\ s a -> s{_ndiConditionallyForcedExps = a})
      . _Default
      . _Coerce

-- | Set of experiment tags to be absolutely forced. The experiments with
-- these tags will be forced without evaluating the conditions.
ndiAbsolutelyForcedExpTags :: Lens' NamespacedDebugInput [Text]
ndiAbsolutelyForcedExpTags
  = lens _ndiAbsolutelyForcedExpTags
      (\ s a -> s{_ndiAbsolutelyForcedExpTags = a})
      . _Default
      . _Coerce

-- | Set of experiment names to be absolutely forced. These experiments will
-- be forced without evaluating the conditions.
ndiAbsolutelyForcedExpNames :: Lens' NamespacedDebugInput [Text]
ndiAbsolutelyForcedExpNames
  = lens _ndiAbsolutelyForcedExpNames
      (\ s a -> s{_ndiAbsolutelyForcedExpNames = a})
      . _Default
      . _Coerce

-- | If true, disable manual enrollment selection (at all diversion points).
-- Manual enrollment selection means experiment selection process based on
-- the request\'s manual enrollment states (a.k.a. opt-in experiments).
-- This does not disable selection of forced experiments.
ndiDisableManualEnrollmentSelection :: Lens' NamespacedDebugInput (Maybe Bool)
ndiDisableManualEnrollmentSelection
  = lens _ndiDisableManualEnrollmentSelection
      (\ s a ->
         s{_ndiDisableManualEnrollmentSelection = a})

-- | Set of experiment ids to be disabled. If an experiment is disabled, it
-- is never selected nor forced. If an aggregate experiment is disabled,
-- its partitions are disabled together. If an experiment with an
-- enrollment is disabled, the enrollment is disabled together. If an ID
-- corresponds to a domain, the domain itself and all descendant
-- experiments and domains are disabled together.
ndiDisableExps :: Lens' NamespacedDebugInput [Int32]
ndiDisableExps
  = lens _ndiDisableExps
      (\ s a -> s{_ndiDisableExps = a})
      . _Default
      . _Coerce

-- | Set of experiment ids to be absolutely forced. These ids will be forced
-- without evaluating the conditions.
ndiAbsolutelyForcedExps :: Lens' NamespacedDebugInput [Int32]
ndiAbsolutelyForcedExps
  = lens _ndiAbsolutelyForcedExps
      (\ s a -> s{_ndiAbsolutelyForcedExps = a})
      . _Default
      . _Coerce

-- | Set of experiment names to be disabled. If an experiment is disabled, it
-- is never selected nor forced. If an aggregate experiment is disabled,
-- its partitions are disabled together. If an experiment with an
-- enrollment is disabled, the enrollment is disabled together. If a name
-- corresponds to a domain, the domain itself and all descendant
-- experiments and domains are disabled together.
ndiDisableExpNames :: Lens' NamespacedDebugInput [Text]
ndiDisableExpNames
  = lens _ndiDisableExpNames
      (\ s a -> s{_ndiDisableExpNames = a})
      . _Default
      . _Coerce

-- | Set of experiment names to be conditionally forced. These experiments
-- will be forced only if their conditions and their parent domain\'s
-- conditions are true.
ndiConditionallyForcedExpNames :: Lens' NamespacedDebugInput [Text]
ndiConditionallyForcedExpNames
  = lens _ndiConditionallyForcedExpNames
      (\ s a -> s{_ndiConditionallyForcedExpNames = a})
      . _Default
      . _Coerce

-- | Set of experiment tags to be conditionally forced. The experiments with
-- these tags will be forced only if their conditions and their parent
-- domain\'s conditions are true.
ndiConditionallyForcedExpTags :: Lens' NamespacedDebugInput [Text]
ndiConditionallyForcedExpTags
  = lens _ndiConditionallyForcedExpTags
      (\ s a -> s{_ndiConditionallyForcedExpTags = a})
      . _Default
      . _Coerce

-- | Rollouts to force in a particular experiment state. Map from rollout
-- name to rollout value.
ndiForcedRollouts :: Lens' NamespacedDebugInput (Maybe NamespacedDebugInputForcedRollouts)
ndiForcedRollouts
  = lens _ndiForcedRollouts
      (\ s a -> s{_ndiForcedRollouts = a})

instance FromJSON NamespacedDebugInput where
        parseJSON
          = withObject "NamespacedDebugInput"
              (\ o ->
                 NamespacedDebugInput' <$>
                   (o .:? "disableAutomaticEnrollmentSelection") <*>
                     (o .:? "disableExpTags" .!= mempty)
                     <*> (o .:? "disableOrganicSelection")
                     <*> (o .:? "forcedFlags")
                     <*> (o .:? "conditionallyForcedExps" .!= mempty)
                     <*> (o .:? "absolutelyForcedExpTags" .!= mempty)
                     <*> (o .:? "absolutelyForcedExpNames" .!= mempty)
                     <*> (o .:? "disableManualEnrollmentSelection")
                     <*> (o .:? "disableExps" .!= mempty)
                     <*> (o .:? "absolutelyForcedExps" .!= mempty)
                     <*> (o .:? "disableExpNames" .!= mempty)
                     <*> (o .:? "conditionallyForcedExpNames" .!= mempty)
                     <*> (o .:? "conditionallyForcedExpTags" .!= mempty)
                     <*> (o .:? "forcedRollouts"))

instance ToJSON NamespacedDebugInput where
        toJSON NamespacedDebugInput'{..}
          = object
              (catMaybes
                 [("disableAutomaticEnrollmentSelection" .=) <$>
                    _ndiDisableAutomaticEnrollmentSelection,
                  ("disableExpTags" .=) <$> _ndiDisableExpTags,
                  ("disableOrganicSelection" .=) <$>
                    _ndiDisableOrganicSelection,
                  ("forcedFlags" .=) <$> _ndiForcedFlags,
                  ("conditionallyForcedExps" .=) <$>
                    _ndiConditionallyForcedExps,
                  ("absolutelyForcedExpTags" .=) <$>
                    _ndiAbsolutelyForcedExpTags,
                  ("absolutelyForcedExpNames" .=) <$>
                    _ndiAbsolutelyForcedExpNames,
                  ("disableManualEnrollmentSelection" .=) <$>
                    _ndiDisableManualEnrollmentSelection,
                  ("disableExps" .=) <$> _ndiDisableExps,
                  ("absolutelyForcedExps" .=) <$>
                    _ndiAbsolutelyForcedExps,
                  ("disableExpNames" .=) <$> _ndiDisableExpNames,
                  ("conditionallyForcedExpNames" .=) <$>
                    _ndiConditionallyForcedExpNames,
                  ("conditionallyForcedExpTags" .=) <$>
                    _ndiConditionallyForcedExpTags,
                  ("forcedRollouts" .=) <$> _ndiForcedRollouts])

-- | Parameters needed for commute search.
--
-- /See:/ 'commuteFilter' smart constructor.
data CommuteFilter =
  CommuteFilter'
    { _cfCommuteMethod :: !(Maybe CommuteFilterCommuteMethod)
    , _cfAllowImpreciseAddresses :: !(Maybe Bool)
    , _cfTravelDuration :: !(Maybe GDuration)
    , _cfStartCoordinates :: !(Maybe LatLng)
    , _cfRoadTraffic :: !(Maybe CommuteFilterRoadTraffic)
    , _cfDePartureTime :: !(Maybe TimeOfDay')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CommuteFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfCommuteMethod'
--
-- * 'cfAllowImpreciseAddresses'
--
-- * 'cfTravelDuration'
--
-- * 'cfStartCoordinates'
--
-- * 'cfRoadTraffic'
--
-- * 'cfDePartureTime'
commuteFilter
    :: CommuteFilter
commuteFilter =
  CommuteFilter'
    { _cfCommuteMethod = Nothing
    , _cfAllowImpreciseAddresses = Nothing
    , _cfTravelDuration = Nothing
    , _cfStartCoordinates = Nothing
    , _cfRoadTraffic = Nothing
    , _cfDePartureTime = Nothing
    }


-- | Required. The method of transportation to calculate the commute time
-- for.
cfCommuteMethod :: Lens' CommuteFilter (Maybe CommuteFilterCommuteMethod)
cfCommuteMethod
  = lens _cfCommuteMethod
      (\ s a -> s{_cfCommuteMethod = a})

-- | If \`true\`, jobs without street level addresses may also be returned.
-- For city level addresses, the city center is used. For state and coarser
-- level addresses, text matching is used. If this field is set to
-- \`false\` or isn\'t specified, only jobs that include street level
-- addresses will be returned by commute search.
cfAllowImpreciseAddresses :: Lens' CommuteFilter (Maybe Bool)
cfAllowImpreciseAddresses
  = lens _cfAllowImpreciseAddresses
      (\ s a -> s{_cfAllowImpreciseAddresses = a})

-- | Required. The maximum travel time in seconds. The maximum allowed value
-- is \`3600s\` (one hour). Format is \`123s\`.
cfTravelDuration :: Lens' CommuteFilter (Maybe Scientific)
cfTravelDuration
  = lens _cfTravelDuration
      (\ s a -> s{_cfTravelDuration = a})
      . mapping _GDuration

-- | Required. The latitude and longitude of the location to calculate the
-- commute time from.
cfStartCoordinates :: Lens' CommuteFilter (Maybe LatLng)
cfStartCoordinates
  = lens _cfStartCoordinates
      (\ s a -> s{_cfStartCoordinates = a})

-- | Specifies the traffic density to use when calculating commute time.
cfRoadTraffic :: Lens' CommuteFilter (Maybe CommuteFilterRoadTraffic)
cfRoadTraffic
  = lens _cfRoadTraffic
      (\ s a -> s{_cfRoadTraffic = a})

-- | The departure time used to calculate traffic impact, represented as
-- google.type.TimeOfDay in local time zone. Currently traffic model is
-- restricted to hour level resolution.
cfDePartureTime :: Lens' CommuteFilter (Maybe TimeOfDay')
cfDePartureTime
  = lens _cfDePartureTime
      (\ s a -> s{_cfDePartureTime = a})

instance FromJSON CommuteFilter where
        parseJSON
          = withObject "CommuteFilter"
              (\ o ->
                 CommuteFilter' <$>
                   (o .:? "commuteMethod") <*>
                     (o .:? "allowImpreciseAddresses")
                     <*> (o .:? "travelDuration")
                     <*> (o .:? "startCoordinates")
                     <*> (o .:? "roadTraffic")
                     <*> (o .:? "departureTime"))

instance ToJSON CommuteFilter where
        toJSON CommuteFilter'{..}
          = object
              (catMaybes
                 [("commuteMethod" .=) <$> _cfCommuteMethod,
                  ("allowImpreciseAddresses" .=) <$>
                    _cfAllowImpreciseAddresses,
                  ("travelDuration" .=) <$> _cfTravelDuration,
                  ("startCoordinates" .=) <$> _cfStartCoordinates,
                  ("roadTraffic" .=) <$> _cfRoadTraffic,
                  ("departureTime" .=) <$> _cfDePartureTime])

-- | Request to delete a batch of jobs.
--
-- /See:/ 'batchDeleteJobsRequest' smart constructor.
newtype BatchDeleteJobsRequest =
  BatchDeleteJobsRequest'
    { _bdjrNames :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchDeleteJobsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdjrNames'
batchDeleteJobsRequest
    :: BatchDeleteJobsRequest
batchDeleteJobsRequest = BatchDeleteJobsRequest' {_bdjrNames = Nothing}


-- | The names of the jobs to delete. The format is
-- \"projects\/{project_id}\/tenants\/{tenant_id}\/jobs\/{job_id}\". For
-- example, \"projects\/foo\/tenants\/bar\/jobs\/baz\". A maximum of 200
-- jobs can be deleted in a batch.
bdjrNames :: Lens' BatchDeleteJobsRequest [Text]
bdjrNames
  = lens _bdjrNames (\ s a -> s{_bdjrNames = a}) .
      _Default
      . _Coerce

instance FromJSON BatchDeleteJobsRequest where
        parseJSON
          = withObject "BatchDeleteJobsRequest"
              (\ o ->
                 BatchDeleteJobsRequest' <$>
                   (o .:? "names" .!= mempty))

instance ToJSON BatchDeleteJobsRequest where
        toJSON BatchDeleteJobsRequest'{..}
          = object (catMaybes [("names" .=) <$> _bdjrNames])

-- | A map of fields to hold both filterable and non-filterable custom job
-- attributes that are not covered by the provided structured fields. The
-- keys of the map are strings up to 64 bytes and must match the pattern:
-- a-zA-Z*. For example, key0LikeThis or KEY_1_LIKE_THIS. At most 100
-- filterable and at most 100 unfilterable keys are supported. For
-- filterable \`string_values\`, across all keys at most 200 values are
-- allowed, with each string no more than 255 characters. For unfilterable
-- \`string_values\`, the maximum total size of \`string_values\` across
-- all keys is 50KB.
--
-- /See:/ 'jobCustomAttributes' smart constructor.
newtype JobCustomAttributes =
  JobCustomAttributes'
    { _jcaAddtional :: HashMap Text CustomAttribute
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobCustomAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jcaAddtional'
jobCustomAttributes
    :: HashMap Text CustomAttribute -- ^ 'jcaAddtional'
    -> JobCustomAttributes
jobCustomAttributes pJcaAddtional_ =
  JobCustomAttributes' {_jcaAddtional = _Coerce # pJcaAddtional_}


jcaAddtional :: Lens' JobCustomAttributes (HashMap Text CustomAttribute)
jcaAddtional
  = lens _jcaAddtional (\ s a -> s{_jcaAddtional = a})
      . _Coerce

instance FromJSON JobCustomAttributes where
        parseJSON
          = withObject "JobCustomAttributes"
              (\ o -> JobCustomAttributes' <$> (parseJSONObject o))

instance ToJSON JobCustomAttributes where
        toJSON = toJSON . _jcaAddtional

-- | An event issued when a job seeker interacts with the application that
-- implements Cloud Talent Solution.
--
-- /See:/ 'jobEvent' smart constructor.
data JobEvent =
  JobEvent'
    { _jeJobs :: !(Maybe [Text])
    , _jeType :: !(Maybe JobEventType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jeJobs'
--
-- * 'jeType'
jobEvent
    :: JobEvent
jobEvent = JobEvent' {_jeJobs = Nothing, _jeType = Nothing}


-- | Required. The job name(s) associated with this event. For example, if
-- this is an impression event, this field contains the identifiers of all
-- jobs shown to the job seeker. If this was a view event, this field
-- contains the identifier of the viewed job. The format is
-- \"projects\/{project_id}\/tenants\/{tenant_id}\/jobs\/{job_id}\", for
-- example, \"projects\/foo\/tenants\/bar\/jobs\/baz\".
jeJobs :: Lens' JobEvent [Text]
jeJobs
  = lens _jeJobs (\ s a -> s{_jeJobs = a}) . _Default .
      _Coerce

-- | Required. The type of the event (see JobEventType).
jeType :: Lens' JobEvent (Maybe JobEventType)
jeType = lens _jeType (\ s a -> s{_jeType = a})

instance FromJSON JobEvent where
        parseJSON
          = withObject "JobEvent"
              (\ o ->
                 JobEvent' <$>
                   (o .:? "jobs" .!= mempty) <*> (o .:? "type"))

instance ToJSON JobEvent where
        toJSON JobEvent'{..}
          = object
              (catMaybes
                 [("jobs" .=) <$> _jeJobs, ("type" .=) <$> _jeType])

-- | The Request body of the \`SearchJobs\` call.
--
-- /See:/ 'searchJobsRequest' smart constructor.
data SearchJobsRequest =
  SearchJobsRequest'
    { _sjrRequestMetadata :: !(Maybe RequestMetadata)
    , _sjrJobView :: !(Maybe SearchJobsRequestJobView)
    , _sjrMaxPageSize :: !(Maybe (Textual Int32))
    , _sjrOrderBy :: !(Maybe Text)
    , _sjrOffSet :: !(Maybe (Textual Int32))
    , _sjrSearchMode :: !(Maybe SearchJobsRequestSearchMode)
    , _sjrDiversificationLevel :: !(Maybe SearchJobsRequestDiversificationLevel)
    , _sjrHistogramQueries :: !(Maybe [HistogramQuery])
    , _sjrJobQuery :: !(Maybe JobQuery)
    , _sjrEnableBroadening :: !(Maybe Bool)
    , _sjrPageToken :: !(Maybe Text)
    , _sjrCustomRankingInfo :: !(Maybe CustomRankingInfo)
    , _sjrDisableKeywordMatch :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SearchJobsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sjrRequestMetadata'
--
-- * 'sjrJobView'
--
-- * 'sjrMaxPageSize'
--
-- * 'sjrOrderBy'
--
-- * 'sjrOffSet'
--
-- * 'sjrSearchMode'
--
-- * 'sjrDiversificationLevel'
--
-- * 'sjrHistogramQueries'
--
-- * 'sjrJobQuery'
--
-- * 'sjrEnableBroadening'
--
-- * 'sjrPageToken'
--
-- * 'sjrCustomRankingInfo'
--
-- * 'sjrDisableKeywordMatch'
searchJobsRequest
    :: SearchJobsRequest
searchJobsRequest =
  SearchJobsRequest'
    { _sjrRequestMetadata = Nothing
    , _sjrJobView = Nothing
    , _sjrMaxPageSize = Nothing
    , _sjrOrderBy = Nothing
    , _sjrOffSet = Nothing
    , _sjrSearchMode = Nothing
    , _sjrDiversificationLevel = Nothing
    , _sjrHistogramQueries = Nothing
    , _sjrJobQuery = Nothing
    , _sjrEnableBroadening = Nothing
    , _sjrPageToken = Nothing
    , _sjrCustomRankingInfo = Nothing
    , _sjrDisableKeywordMatch = Nothing
    }


-- | Required. The meta information collected about the job searcher, used to
-- improve the search quality of the service. The identifiers (such as
-- \`user_id\`) are provided by users, and must be unique and consistent.
sjrRequestMetadata :: Lens' SearchJobsRequest (Maybe RequestMetadata)
sjrRequestMetadata
  = lens _sjrRequestMetadata
      (\ s a -> s{_sjrRequestMetadata = a})

-- | The desired job attributes returned for jobs in the search response.
-- Defaults to JobView.JOB_VIEW_SMALL if no value is specified.
sjrJobView :: Lens' SearchJobsRequest (Maybe SearchJobsRequestJobView)
sjrJobView
  = lens _sjrJobView (\ s a -> s{_sjrJobView = a})

-- | A limit on the number of jobs returned in the search results. Increasing
-- this value above the default value of 10 can increase search response
-- time. The value can be between 1 and 100.
sjrMaxPageSize :: Lens' SearchJobsRequest (Maybe Int32)
sjrMaxPageSize
  = lens _sjrMaxPageSize
      (\ s a -> s{_sjrMaxPageSize = a})
      . mapping _Coerce

-- | The criteria determining how search results are sorted. Default is
-- \`\"relevance desc\"\`. Supported options are: * \`\"relevance desc\"\`:
-- By relevance descending, as determined by the API algorithms. Relevance
-- thresholding of query results is only available with this ordering. *
-- \`\"posting_publish_time desc\"\`: By Job.posting_publish_time
-- descending. * \`\"posting_update_time desc\"\`: By
-- Job.posting_update_time descending. * \`\"title\"\`: By Job.title
-- ascending. * \`\"title desc\"\`: By Job.title descending. *
-- \`\"annualized_base_compensation\"\`: By job\'s
-- CompensationInfo.annualized_base_compensation_range ascending. Jobs
-- whose annualized base compensation is unspecified are put at the end of
-- search results. * \`\"annualized_base_compensation desc\"\`: By job\'s
-- CompensationInfo.annualized_base_compensation_range descending. Jobs
-- whose annualized base compensation is unspecified are put at the end of
-- search results. * \`\"annualized_total_compensation\"\`: By job\'s
-- CompensationInfo.annualized_total_compensation_range ascending. Jobs
-- whose annualized base compensation is unspecified are put at the end of
-- search results. * \`\"annualized_total_compensation desc\"\`: By job\'s
-- CompensationInfo.annualized_total_compensation_range descending. Jobs
-- whose annualized base compensation is unspecified are put at the end of
-- search results. * \`\"custom_ranking desc\"\`: By the relevance score
-- adjusted to the SearchJobsRequest.CustomRankingInfo.ranking_expression
-- with weight factor assigned by
-- SearchJobsRequest.CustomRankingInfo.importance_level in descending
-- order. * Location sorting: Use the special syntax to order jobs by
-- distance: \`\"distance_from(\'Hawaii\')\"\`: Order by distance from
-- Hawaii. \`\"distance_from(19.89, 155.5)\"\`: Order by distance from a
-- coordinate. \`\"distance_from(\'Hawaii\'), distance_from(\'Puerto
-- Rico\')\"\`: Order by multiple locations. See details below.
-- \`\"distance_from(\'Hawaii\'), distance_from(19.89, 155.5)\"\`: Order by
-- multiple locations. See details below. The string can have a maximum of
-- 256 characters. When multiple distance centers are provided, a job that
-- is close to any of the distance centers would have a high rank. When a
-- job has multiple locations, the job location closest to one of the
-- distance centers will be used. Jobs that don\'t have locations will be
-- ranked at the bottom. Distance is calculated with a precision of 11.3
-- meters (37.4 feet). Diversification strategy is still applied unless
-- explicitly disabled in diversification_level.
sjrOrderBy :: Lens' SearchJobsRequest (Maybe Text)
sjrOrderBy
  = lens _sjrOrderBy (\ s a -> s{_sjrOrderBy = a})

-- | An integer that specifies the current offset (that is, starting result
-- location, amongst the jobs deemed by the API as relevant) in search
-- results. This field is only considered if page_token is unset. The
-- maximum allowed value is 5000. Otherwise an error is thrown. For
-- example, 0 means to return results starting from the first matching job,
-- and 10 means to return from the 11th job. This can be used for
-- pagination, (for example, pageSize = 10 and offset = 10 means to return
-- from the second page).
sjrOffSet :: Lens' SearchJobsRequest (Maybe Int32)
sjrOffSet
  = lens _sjrOffSet (\ s a -> s{_sjrOffSet = a}) .
      mapping _Coerce

-- | Mode of a search. Defaults to SearchMode.JOB_SEARCH.
sjrSearchMode :: Lens' SearchJobsRequest (Maybe SearchJobsRequestSearchMode)
sjrSearchMode
  = lens _sjrSearchMode
      (\ s a -> s{_sjrSearchMode = a})

-- | Controls whether highly similar jobs are returned next to each other in
-- the search results. Jobs are identified as highly similar based on their
-- titles, job categories, and locations. Highly similar results are
-- clustered so that only one representative job of the cluster is
-- displayed to the job seeker higher up in the results, with the other
-- jobs being displayed lower down in the results. Defaults to
-- DiversificationLevel.SIMPLE if no value is specified.
sjrDiversificationLevel :: Lens' SearchJobsRequest (Maybe SearchJobsRequestDiversificationLevel)
sjrDiversificationLevel
  = lens _sjrDiversificationLevel
      (\ s a -> s{_sjrDiversificationLevel = a})

-- | An expression specifies a histogram request against matching jobs.
-- Expression syntax is an aggregation function call with histogram facets
-- and other options. Available aggregation function calls are: *
-- \`count(string_histogram_facet)\`: Count the number of matching
-- entities, for each distinct attribute value. *
-- \`count(numeric_histogram_facet, list of buckets)\`: Count the number of
-- matching entities within each bucket. Data types: * Histogram facet:
-- facet names with format a-zA-Z+. * String: string like \"any string with
-- backslash escape for quote(\\\").\" * Number: whole number and floating
-- point number like 10, -1 and -0.01. * List: list of elements with
-- comma(,) separator surrounded by square brackets, for example, [1, 2, 3]
-- and [\"one\", \"two\", \"three\"]. Built-in constants: * MIN (minimum
-- number similar to java Double.MIN_VALUE) * MAX (maximum number similar
-- to java Double.MAX_VALUE) Built-in functions: * bucket(start, end[,
-- label]): bucket built-in function creates a bucket with range of start,
-- end). Note that the end is exclusive, for example, bucket(1, MAX,
-- \"positive number\") or bucket(1, 10). Job histogram facets: *
-- company_display_name: histogram by [Job.company_display_name. *
-- employment_type: histogram by Job.employment_types, for example,
-- \"FULL_TIME\", \"PART_TIME\". * company_size: histogram by CompanySize,
-- for example, \"SMALL\", \"MEDIUM\", \"BIG\". * publish_time_in_day:
-- histogram by the Job.posting_publish_time in days. Must specify list of
-- numeric buckets in spec. * publish_time_in_month: histogram by the
-- Job.posting_publish_time in months. Must specify list of numeric buckets
-- in spec. * publish_time_in_year: histogram by the
-- Job.posting_publish_time in years. Must specify list of numeric buckets
-- in spec. * degree_types: histogram by the Job.degree_types, for example,
-- \"Bachelors\", \"Masters\". * job_level: histogram by the Job.job_level,
-- for example, \"Entry Level\". * country: histogram by the country code
-- of jobs, for example, \"US\", \"FR\". * admin1: histogram by the admin1
-- code of jobs, which is a global placeholder referring to the state,
-- province, or the particular term a country uses to define the geographic
-- structure below the country level, for example, \"CA\", \"IL\". * city:
-- histogram by a combination of the \"city name, admin1 code\". For
-- example, \"Mountain View, CA\", \"New York, NY\". * admin1_country:
-- histogram by a combination of the \"admin1 code, country\", for example,
-- \"CA, US\", \"IL, US\". * city_coordinate: histogram by the city
-- center\'s GPS coordinates (latitude and longitude), for example,
-- 37.4038522,-122.0987765. Since the coordinates of a city center can
-- change, customers may need to refresh them periodically. * locale:
-- histogram by the Job.language_code, for example, \"en-US\", \"fr-FR\". *
-- language: histogram by the language subtag of the Job.language_code, for
-- example, \"en\", \"fr\". * category: histogram by the JobCategory, for
-- example, \"COMPUTER_AND_IT\", \"HEALTHCARE\". * base_compensation_unit:
-- histogram by the CompensationInfo.CompensationUnit of base salary, for
-- example, \"WEEKLY\", \"MONTHLY\". * base_compensation: histogram by the
-- base salary. Must specify list of numeric buckets to group results by. *
-- annualized_base_compensation: histogram by the base annualized salary.
-- Must specify list of numeric buckets to group results by. *
-- annualized_total_compensation: histogram by the total annualized salary.
-- Must specify list of numeric buckets to group results by. *
-- string_custom_attribute: histogram by string Job.custom_attributes.
-- Values can be accessed via square bracket notations like
-- string_custom_attribute[\"key1\"]. * numeric_custom_attribute: histogram
-- by numeric Job.custom_attributes. Values can be accessed via square
-- bracket notations like numeric_custom_attribute[\"key1\"]. Must specify
-- list of numeric buckets to group results by. Example expressions: *
-- \`count(admin1)\` * \`count(base_compensation, [bucket(1000, 10000),
-- bucket(10000, 100000), bucket(100000, MAX)])\` *
-- \`count(string_custom_attribute[\"some-string-custom-attribute\"])\` *
-- \`count(numeric_custom_attribute[\"some-numeric-custom-attribute\"],
-- [bucket(MIN, 0, \"negative\"), bucket(0, MAX, \"non-negative\")])\`
sjrHistogramQueries :: Lens' SearchJobsRequest [HistogramQuery]
sjrHistogramQueries
  = lens _sjrHistogramQueries
      (\ s a -> s{_sjrHistogramQueries = a})
      . _Default
      . _Coerce

-- | Query used to search against jobs, such as keyword, location filters,
-- etc.
sjrJobQuery :: Lens' SearchJobsRequest (Maybe JobQuery)
sjrJobQuery
  = lens _sjrJobQuery (\ s a -> s{_sjrJobQuery = a})

-- | Controls whether to broaden the search when it produces sparse results.
-- Broadened queries append results to the end of the matching results
-- list. Defaults to false.
sjrEnableBroadening :: Lens' SearchJobsRequest (Maybe Bool)
sjrEnableBroadening
  = lens _sjrEnableBroadening
      (\ s a -> s{_sjrEnableBroadening = a})

-- | The token specifying the current offset within search results. See
-- SearchJobsResponse.next_page_token for an explanation of how to obtain
-- the next set of query results.
sjrPageToken :: Lens' SearchJobsRequest (Maybe Text)
sjrPageToken
  = lens _sjrPageToken (\ s a -> s{_sjrPageToken = a})

-- | Controls over how job documents get ranked on top of existing relevance
-- score (determined by API algorithm).
sjrCustomRankingInfo :: Lens' SearchJobsRequest (Maybe CustomRankingInfo)
sjrCustomRankingInfo
  = lens _sjrCustomRankingInfo
      (\ s a -> s{_sjrCustomRankingInfo = a})

-- | Controls whether to disable exact keyword match on Job.title,
-- Job.description, Job.company_display_name, Job.addresses,
-- Job.qualifications. When disable keyword match is turned off, a keyword
-- match returns jobs that do not match given category filters when there
-- are matching keywords. For example, for the query \"program manager,\" a
-- result is returned even if the job posting has the title \"software
-- developer,\" which doesn\'t fall into \"program manager\" ontology, but
-- does have \"program manager\" appearing in its description. For queries
-- like \"cloud\" that don\'t contain title or location specific ontology,
-- jobs with \"cloud\" keyword matches are returned regardless of this
-- flag\'s value. Use Company.keyword_searchable_job_custom_attributes if
-- company-specific globally matched custom field\/attribute string values
-- are needed. Enabling keyword match improves recall of subsequent search
-- requests. Defaults to false.
sjrDisableKeywordMatch :: Lens' SearchJobsRequest (Maybe Bool)
sjrDisableKeywordMatch
  = lens _sjrDisableKeywordMatch
      (\ s a -> s{_sjrDisableKeywordMatch = a})

instance FromJSON SearchJobsRequest where
        parseJSON
          = withObject "SearchJobsRequest"
              (\ o ->
                 SearchJobsRequest' <$>
                   (o .:? "requestMetadata") <*> (o .:? "jobView") <*>
                     (o .:? "maxPageSize")
                     <*> (o .:? "orderBy")
                     <*> (o .:? "offset")
                     <*> (o .:? "searchMode")
                     <*> (o .:? "diversificationLevel")
                     <*> (o .:? "histogramQueries" .!= mempty)
                     <*> (o .:? "jobQuery")
                     <*> (o .:? "enableBroadening")
                     <*> (o .:? "pageToken")
                     <*> (o .:? "customRankingInfo")
                     <*> (o .:? "disableKeywordMatch"))

instance ToJSON SearchJobsRequest where
        toJSON SearchJobsRequest'{..}
          = object
              (catMaybes
                 [("requestMetadata" .=) <$> _sjrRequestMetadata,
                  ("jobView" .=) <$> _sjrJobView,
                  ("maxPageSize" .=) <$> _sjrMaxPageSize,
                  ("orderBy" .=) <$> _sjrOrderBy,
                  ("offset" .=) <$> _sjrOffSet,
                  ("searchMode" .=) <$> _sjrSearchMode,
                  ("diversificationLevel" .=) <$>
                    _sjrDiversificationLevel,
                  ("histogramQueries" .=) <$> _sjrHistogramQueries,
                  ("jobQuery" .=) <$> _sjrJobQuery,
                  ("enableBroadening" .=) <$> _sjrEnableBroadening,
                  ("pageToken" .=) <$> _sjrPageToken,
                  ("customRankingInfo" .=) <$> _sjrCustomRankingInfo,
                  ("disableKeywordMatch" .=) <$>
                    _sjrDisableKeywordMatch])

-- | A map from the values of the facet associated with distinct values to
-- the number of matching entries with corresponding value. The key format
-- is: * (for string histogram) string values stored in the field. * (for
-- named numeric bucket) name specified in \`bucket()\` function, like for
-- \`bucket(0, MAX, \"non-negative\")\`, the key will be \`non-negative\`.
-- * (for anonymous numeric bucket) range formatted as \`-\`, for example,
-- \`0-1000\`, \`MIN-0\`, and \`0-MAX\`.
--
-- /See:/ 'histogramQueryResultHistogram' smart constructor.
newtype HistogramQueryResultHistogram =
  HistogramQueryResultHistogram'
    { _hqrhAddtional :: HashMap Text (Textual Int64)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HistogramQueryResultHistogram' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hqrhAddtional'
histogramQueryResultHistogram
    :: HashMap Text Int64 -- ^ 'hqrhAddtional'
    -> HistogramQueryResultHistogram
histogramQueryResultHistogram pHqrhAddtional_ =
  HistogramQueryResultHistogram' {_hqrhAddtional = _Coerce # pHqrhAddtional_}


hqrhAddtional :: Lens' HistogramQueryResultHistogram (HashMap Text Int64)
hqrhAddtional
  = lens _hqrhAddtional
      (\ s a -> s{_hqrhAddtional = a})
      . _Coerce

instance FromJSON HistogramQueryResultHistogram where
        parseJSON
          = withObject "HistogramQueryResultHistogram"
              (\ o ->
                 HistogramQueryResultHistogram' <$>
                   (parseJSONObject o))

instance ToJSON HistogramQueryResultHistogram where
        toJSON = toJSON . _hqrhAddtional

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

-- | Histogram result that matches HistogramQuery specified in searches.
--
-- /See:/ 'histogramQueryResult' smart constructor.
data HistogramQueryResult =
  HistogramQueryResult'
    { _hqrHistogramQuery :: !(Maybe Text)
    , _hqrHistogram :: !(Maybe HistogramQueryResultHistogram)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HistogramQueryResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hqrHistogramQuery'
--
-- * 'hqrHistogram'
histogramQueryResult
    :: HistogramQueryResult
histogramQueryResult =
  HistogramQueryResult' {_hqrHistogramQuery = Nothing, _hqrHistogram = Nothing}


-- | Requested histogram expression.
hqrHistogramQuery :: Lens' HistogramQueryResult (Maybe Text)
hqrHistogramQuery
  = lens _hqrHistogramQuery
      (\ s a -> s{_hqrHistogramQuery = a})

-- | A map from the values of the facet associated with distinct values to
-- the number of matching entries with corresponding value. The key format
-- is: * (for string histogram) string values stored in the field. * (for
-- named numeric bucket) name specified in \`bucket()\` function, like for
-- \`bucket(0, MAX, \"non-negative\")\`, the key will be \`non-negative\`.
-- * (for anonymous numeric bucket) range formatted as \`-\`, for example,
-- \`0-1000\`, \`MIN-0\`, and \`0-MAX\`.
hqrHistogram :: Lens' HistogramQueryResult (Maybe HistogramQueryResultHistogram)
hqrHistogram
  = lens _hqrHistogram (\ s a -> s{_hqrHistogram = a})

instance FromJSON HistogramQueryResult where
        parseJSON
          = withObject "HistogramQueryResult"
              (\ o ->
                 HistogramQueryResult' <$>
                   (o .:? "histogramQuery") <*> (o .:? "histogram"))

instance ToJSON HistogramQueryResult where
        toJSON HistogramQueryResult'{..}
          = object
              (catMaybes
                 [("histogramQuery" .=) <$> _hqrHistogramQuery,
                  ("histogram" .=) <$> _hqrHistogram])

-- | Mutation result of a job from a batch operation.
--
-- /See:/ 'jobResult' smart constructor.
data JobResult =
  JobResult'
    { _jrStatus :: !(Maybe Status)
    , _jrJob :: !(Maybe Job)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jrStatus'
--
-- * 'jrJob'
jobResult
    :: JobResult
jobResult = JobResult' {_jrStatus = Nothing, _jrJob = Nothing}


-- | The status of the job processed. This field is populated if the
-- processing of the job fails.
jrStatus :: Lens' JobResult (Maybe Status)
jrStatus = lens _jrStatus (\ s a -> s{_jrStatus = a})

-- | Here Job only contains basic information including name, company,
-- language_code and requisition_id, use getJob method to retrieve detailed
-- information of the created\/updated job.
jrJob :: Lens' JobResult (Maybe Job)
jrJob = lens _jrJob (\ s a -> s{_jrJob = a})

instance FromJSON JobResult where
        parseJSON
          = withObject "JobResult"
              (\ o ->
                 JobResult' <$> (o .:? "status") <*> (o .:? "job"))

instance ToJSON JobResult where
        toJSON JobResult'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _jrStatus, ("job" .=) <$> _jrJob])

-- | Flags to force in a particular experiment state. Map from flag name to
-- flag value.
--
-- /See:/ 'namespacedDebugInputForcedFlags' smart constructor.
newtype NamespacedDebugInputForcedFlags =
  NamespacedDebugInputForcedFlags'
    { _ndiffAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NamespacedDebugInputForcedFlags' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ndiffAddtional'
namespacedDebugInputForcedFlags
    :: HashMap Text Text -- ^ 'ndiffAddtional'
    -> NamespacedDebugInputForcedFlags
namespacedDebugInputForcedFlags pNdiffAddtional_ =
  NamespacedDebugInputForcedFlags'
    {_ndiffAddtional = _Coerce # pNdiffAddtional_}


ndiffAddtional :: Lens' NamespacedDebugInputForcedFlags (HashMap Text Text)
ndiffAddtional
  = lens _ndiffAddtional
      (\ s a -> s{_ndiffAddtional = a})
      . _Coerce

instance FromJSON NamespacedDebugInputForcedFlags
         where
        parseJSON
          = withObject "NamespacedDebugInputForcedFlags"
              (\ o ->
                 NamespacedDebugInputForcedFlags' <$>
                   (parseJSONObject o))

instance ToJSON NamespacedDebugInputForcedFlags where
        toJSON = toJSON . _ndiffAddtional

-- | Additional information returned to client, such as debugging
-- information.
--
-- /See:/ 'responseMetadata' smart constructor.
newtype ResponseMetadata =
  ResponseMetadata'
    { _rmRequestId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResponseMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmRequestId'
responseMetadata
    :: ResponseMetadata
responseMetadata = ResponseMetadata' {_rmRequestId = Nothing}


-- | A unique id associated with this call. This id is logged for tracking
-- purposes.
rmRequestId :: Lens' ResponseMetadata (Maybe Text)
rmRequestId
  = lens _rmRequestId (\ s a -> s{_rmRequestId = a})

instance FromJSON ResponseMetadata where
        parseJSON
          = withObject "ResponseMetadata"
              (\ o -> ResponseMetadata' <$> (o .:? "requestId"))

instance ToJSON ResponseMetadata where
        toJSON ResponseMetadata'{..}
          = object
              (catMaybes [("requestId" .=) <$> _rmRequestId])

-- | Commute details related to this job.
--
-- /See:/ 'commuteInfo' smart constructor.
data CommuteInfo =
  CommuteInfo'
    { _ciTravelDuration :: !(Maybe GDuration)
    , _ciJobLocation :: !(Maybe Location)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CommuteInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciTravelDuration'
--
-- * 'ciJobLocation'
commuteInfo
    :: CommuteInfo
commuteInfo =
  CommuteInfo' {_ciTravelDuration = Nothing, _ciJobLocation = Nothing}


-- | The number of seconds required to travel to the job location from the
-- query location. A duration of 0 seconds indicates that the job isn\'t
-- reachable within the requested duration, but was returned as part of an
-- expanded query.
ciTravelDuration :: Lens' CommuteInfo (Maybe Scientific)
ciTravelDuration
  = lens _ciTravelDuration
      (\ s a -> s{_ciTravelDuration = a})
      . mapping _GDuration

-- | Location used as the destination in the commute calculation.
ciJobLocation :: Lens' CommuteInfo (Maybe Location)
ciJobLocation
  = lens _ciJobLocation
      (\ s a -> s{_ciJobLocation = a})

instance FromJSON CommuteInfo where
        parseJSON
          = withObject "CommuteInfo"
              (\ o ->
                 CommuteInfo' <$>
                   (o .:? "travelDuration") <*> (o .:? "jobLocation"))

instance ToJSON CommuteInfo where
        toJSON CommuteInfo'{..}
          = object
              (catMaybes
                 [("travelDuration" .=) <$> _ciTravelDuration,
                  ("jobLocation" .=) <$> _ciJobLocation])

-- | Derived details about the job posting.
--
-- /See:/ 'jobDerivedInfo' smart constructor.
data JobDerivedInfo =
  JobDerivedInfo'
    { _jdiJobCategories :: !(Maybe [JobDerivedInfoJobCategoriesItem])
    , _jdiLocations :: !(Maybe [Location])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobDerivedInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jdiJobCategories'
--
-- * 'jdiLocations'
jobDerivedInfo
    :: JobDerivedInfo
jobDerivedInfo =
  JobDerivedInfo' {_jdiJobCategories = Nothing, _jdiLocations = Nothing}


-- | Job categories derived from Job.title and Job.description.
jdiJobCategories :: Lens' JobDerivedInfo [JobDerivedInfoJobCategoriesItem]
jdiJobCategories
  = lens _jdiJobCategories
      (\ s a -> s{_jdiJobCategories = a})
      . _Default
      . _Coerce

-- | Structured locations of the job, resolved from Job.addresses. locations
-- are exactly matched to Job.addresses in the same order.
jdiLocations :: Lens' JobDerivedInfo [Location]
jdiLocations
  = lens _jdiLocations (\ s a -> s{_jdiLocations = a})
      . _Default
      . _Coerce

instance FromJSON JobDerivedInfo where
        parseJSON
          = withObject "JobDerivedInfo"
              (\ o ->
                 JobDerivedInfo' <$>
                   (o .:? "jobCategories" .!= mempty) <*>
                     (o .:? "locations" .!= mempty))

instance ToJSON JobDerivedInfo where
        toJSON JobDerivedInfo'{..}
          = object
              (catMaybes
                 [("jobCategories" .=) <$> _jdiJobCategories,
                  ("locations" .=) <$> _jdiLocations])

-- | Metadata used for long running operations returned by CTS batch APIs.
-- It\'s used to replace google.longrunning.Operation.metadata.
--
-- /See:/ 'batchOperationMetadata' smart constructor.
data BatchOperationMetadata =
  BatchOperationMetadata'
    { _bomState :: !(Maybe BatchOperationMetadataState)
    , _bomUpdateTime :: !(Maybe DateTime')
    , _bomEndTime :: !(Maybe DateTime')
    , _bomSuccessCount :: !(Maybe (Textual Int32))
    , _bomFailureCount :: !(Maybe (Textual Int32))
    , _bomCreateTime :: !(Maybe DateTime')
    , _bomStateDescription :: !(Maybe Text)
    , _bomTotalCount :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchOperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bomState'
--
-- * 'bomUpdateTime'
--
-- * 'bomEndTime'
--
-- * 'bomSuccessCount'
--
-- * 'bomFailureCount'
--
-- * 'bomCreateTime'
--
-- * 'bomStateDescription'
--
-- * 'bomTotalCount'
batchOperationMetadata
    :: BatchOperationMetadata
batchOperationMetadata =
  BatchOperationMetadata'
    { _bomState = Nothing
    , _bomUpdateTime = Nothing
    , _bomEndTime = Nothing
    , _bomSuccessCount = Nothing
    , _bomFailureCount = Nothing
    , _bomCreateTime = Nothing
    , _bomStateDescription = Nothing
    , _bomTotalCount = Nothing
    }


-- | The state of a long running operation.
bomState :: Lens' BatchOperationMetadata (Maybe BatchOperationMetadataState)
bomState = lens _bomState (\ s a -> s{_bomState = a})

-- | The time when the batch operation status is updated. The metadata and
-- the update_time is refreshed every minute otherwise cached data is
-- returned.
bomUpdateTime :: Lens' BatchOperationMetadata (Maybe UTCTime)
bomUpdateTime
  = lens _bomUpdateTime
      (\ s a -> s{_bomUpdateTime = a})
      . mapping _DateTime

-- | The time when the batch operation is finished and
-- google.longrunning.Operation.done is set to \`true\`.
bomEndTime :: Lens' BatchOperationMetadata (Maybe UTCTime)
bomEndTime
  = lens _bomEndTime (\ s a -> s{_bomEndTime = a}) .
      mapping _DateTime

-- | Count of successful item(s) inside an operation.
bomSuccessCount :: Lens' BatchOperationMetadata (Maybe Int32)
bomSuccessCount
  = lens _bomSuccessCount
      (\ s a -> s{_bomSuccessCount = a})
      . mapping _Coerce

-- | Count of failed item(s) inside an operation.
bomFailureCount :: Lens' BatchOperationMetadata (Maybe Int32)
bomFailureCount
  = lens _bomFailureCount
      (\ s a -> s{_bomFailureCount = a})
      . mapping _Coerce

-- | The time when the batch operation is created.
bomCreateTime :: Lens' BatchOperationMetadata (Maybe UTCTime)
bomCreateTime
  = lens _bomCreateTime
      (\ s a -> s{_bomCreateTime = a})
      . mapping _DateTime

-- | More detailed information about operation state.
bomStateDescription :: Lens' BatchOperationMetadata (Maybe Text)
bomStateDescription
  = lens _bomStateDescription
      (\ s a -> s{_bomStateDescription = a})

-- | Count of total item(s) inside an operation.
bomTotalCount :: Lens' BatchOperationMetadata (Maybe Int32)
bomTotalCount
  = lens _bomTotalCount
      (\ s a -> s{_bomTotalCount = a})
      . mapping _Coerce

instance FromJSON BatchOperationMetadata where
        parseJSON
          = withObject "BatchOperationMetadata"
              (\ o ->
                 BatchOperationMetadata' <$>
                   (o .:? "state") <*> (o .:? "updateTime") <*>
                     (o .:? "endTime")
                     <*> (o .:? "successCount")
                     <*> (o .:? "failureCount")
                     <*> (o .:? "createTime")
                     <*> (o .:? "stateDescription")
                     <*> (o .:? "totalCount"))

instance ToJSON BatchOperationMetadata where
        toJSON BatchOperationMetadata'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _bomState,
                  ("updateTime" .=) <$> _bomUpdateTime,
                  ("endTime" .=) <$> _bomEndTime,
                  ("successCount" .=) <$> _bomSuccessCount,
                  ("failureCount" .=) <$> _bomFailureCount,
                  ("createTime" .=) <$> _bomCreateTime,
                  ("stateDescription" .=) <$> _bomStateDescription,
                  ("totalCount" .=) <$> _bomTotalCount])

-- | Derived details about the company.
--
-- /See:/ 'companyDerivedInfo' smart constructor.
newtype CompanyDerivedInfo =
  CompanyDerivedInfo'
    { _cdiHeadquartersLocation :: Maybe Location
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CompanyDerivedInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdiHeadquartersLocation'
companyDerivedInfo
    :: CompanyDerivedInfo
companyDerivedInfo = CompanyDerivedInfo' {_cdiHeadquartersLocation = Nothing}


-- | A structured headquarters location of the company, resolved from
-- Company.headquarters_address if provided.
cdiHeadquartersLocation :: Lens' CompanyDerivedInfo (Maybe Location)
cdiHeadquartersLocation
  = lens _cdiHeadquartersLocation
      (\ s a -> s{_cdiHeadquartersLocation = a})

instance FromJSON CompanyDerivedInfo where
        parseJSON
          = withObject "CompanyDerivedInfo"
              (\ o ->
                 CompanyDerivedInfo' <$>
                   (o .:? "headquartersLocation"))

instance ToJSON CompanyDerivedInfo where
        toJSON CompanyDerivedInfo'{..}
          = object
              (catMaybes
                 [("headquartersLocation" .=) <$>
                    _cdiHeadquartersLocation])

-- | Filter on job compensation type and amount.
--
-- /See:/ 'compensationFilter' smart constructor.
data CompensationFilter =
  CompensationFilter'
    { _cfIncludeJobsWithUnspecifiedCompensationRange :: !(Maybe Bool)
    , _cfRange :: !(Maybe CompensationRange)
    , _cfUnits :: !(Maybe [CompensationFilterUnitsItem])
    , _cfType :: !(Maybe CompensationFilterType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CompensationFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfIncludeJobsWithUnspecifiedCompensationRange'
--
-- * 'cfRange'
--
-- * 'cfUnits'
--
-- * 'cfType'
compensationFilter
    :: CompensationFilter
compensationFilter =
  CompensationFilter'
    { _cfIncludeJobsWithUnspecifiedCompensationRange = Nothing
    , _cfRange = Nothing
    , _cfUnits = Nothing
    , _cfType = Nothing
    }


-- | If set to true, jobs with unspecified compensation range fields are
-- included.
cfIncludeJobsWithUnspecifiedCompensationRange :: Lens' CompensationFilter (Maybe Bool)
cfIncludeJobsWithUnspecifiedCompensationRange
  = lens _cfIncludeJobsWithUnspecifiedCompensationRange
      (\ s a ->
         s{_cfIncludeJobsWithUnspecifiedCompensationRange =
             a})

-- | Compensation range.
cfRange :: Lens' CompensationFilter (Maybe CompensationRange)
cfRange = lens _cfRange (\ s a -> s{_cfRange = a})

-- | Required. Specify desired \`base compensation entry\'s\`
-- CompensationInfo.CompensationUnit.
cfUnits :: Lens' CompensationFilter [CompensationFilterUnitsItem]
cfUnits
  = lens _cfUnits (\ s a -> s{_cfUnits = a}) . _Default
      . _Coerce

-- | Required. Type of filter.
cfType :: Lens' CompensationFilter (Maybe CompensationFilterType)
cfType = lens _cfType (\ s a -> s{_cfType = a})

instance FromJSON CompensationFilter where
        parseJSON
          = withObject "CompensationFilter"
              (\ o ->
                 CompensationFilter' <$>
                   (o .:? "includeJobsWithUnspecifiedCompensationRange")
                     <*> (o .:? "range")
                     <*> (o .:? "units" .!= mempty)
                     <*> (o .:? "type"))

instance ToJSON CompensationFilter where
        toJSON CompensationFilter'{..}
          = object
              (catMaybes
                 [("includeJobsWithUnspecifiedCompensationRange" .=)
                    <$> _cfIncludeJobsWithUnspecifiedCompensationRange,
                  ("range" .=) <$> _cfRange, ("units" .=) <$> _cfUnits,
                  ("type" .=) <$> _cfType])

-- | A Tenant resource represents a tenant in the service. A tenant is a
-- group or entity that shares common access with specific privileges for
-- resources like jobs. Customer may create multiple tenants to provide
-- data isolation for different groups.
--
-- /See:/ 'tenant' smart constructor.
data Tenant =
  Tenant'
    { _tName :: !(Maybe Text)
    , _tExternalId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Tenant' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tName'
--
-- * 'tExternalId'
tenant
    :: Tenant
tenant = Tenant' {_tName = Nothing, _tExternalId = Nothing}


-- | Required during tenant update. The resource name for a tenant. This is
-- generated by the service when a tenant is created. The format is
-- \"projects\/{project_id}\/tenants\/{tenant_id}\", for example,
-- \"projects\/foo\/tenants\/bar\".
tName :: Lens' Tenant (Maybe Text)
tName = lens _tName (\ s a -> s{_tName = a})

-- | Required. Client side tenant identifier, used to uniquely identify the
-- tenant. The maximum number of allowed characters is 255.
tExternalId :: Lens' Tenant (Maybe Text)
tExternalId
  = lens _tExternalId (\ s a -> s{_tExternalId = a})

instance FromJSON Tenant where
        parseJSON
          = withObject "Tenant"
              (\ o ->
                 Tenant' <$> (o .:? "name") <*> (o .:? "externalId"))

instance ToJSON Tenant where
        toJSON Tenant'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _tName,
                  ("externalId" .=) <$> _tExternalId])

-- | A Company resource represents a company in the service. A company is the
-- entity that owns job postings, that is, the hiring entity responsible
-- for employing applicants for the job position.
--
-- /See:/ 'company' smart constructor.
data Company =
  Company'
    { _cHiringAgency :: !(Maybe Bool)
    , _cCareerSiteURI :: !(Maybe Text)
    , _cEeoText :: !(Maybe Text)
    , _cSize :: !(Maybe CompanySize)
    , _cWebsiteURI :: !(Maybe Text)
    , _cSuspended :: !(Maybe Bool)
    , _cKeywordSearchableJobCustomAttributes :: !(Maybe [Text])
    , _cImageURI :: !(Maybe Text)
    , _cHeadquartersAddress :: !(Maybe Text)
    , _cName :: !(Maybe Text)
    , _cDisplayName :: !(Maybe Text)
    , _cExternalId :: !(Maybe Text)
    , _cDerivedInfo :: !(Maybe CompanyDerivedInfo)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Company' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cHiringAgency'
--
-- * 'cCareerSiteURI'
--
-- * 'cEeoText'
--
-- * 'cSize'
--
-- * 'cWebsiteURI'
--
-- * 'cSuspended'
--
-- * 'cKeywordSearchableJobCustomAttributes'
--
-- * 'cImageURI'
--
-- * 'cHeadquartersAddress'
--
-- * 'cName'
--
-- * 'cDisplayName'
--
-- * 'cExternalId'
--
-- * 'cDerivedInfo'
company
    :: Company
company =
  Company'
    { _cHiringAgency = Nothing
    , _cCareerSiteURI = Nothing
    , _cEeoText = Nothing
    , _cSize = Nothing
    , _cWebsiteURI = Nothing
    , _cSuspended = Nothing
    , _cKeywordSearchableJobCustomAttributes = Nothing
    , _cImageURI = Nothing
    , _cHeadquartersAddress = Nothing
    , _cName = Nothing
    , _cDisplayName = Nothing
    , _cExternalId = Nothing
    , _cDerivedInfo = Nothing
    }


-- | Set to true if it is the hiring agency that post jobs for other
-- employers. Defaults to false if not provided.
cHiringAgency :: Lens' Company (Maybe Bool)
cHiringAgency
  = lens _cHiringAgency
      (\ s a -> s{_cHiringAgency = a})

-- | The URI to employer\'s career site or careers page on the employer\'s
-- web site, for example, \"https:\/\/careers.google.com\".
cCareerSiteURI :: Lens' Company (Maybe Text)
cCareerSiteURI
  = lens _cCareerSiteURI
      (\ s a -> s{_cCareerSiteURI = a})

-- | Equal Employment Opportunity legal disclaimer text to be associated with
-- all jobs, and typically to be displayed in all roles. The maximum number
-- of allowed characters is 500.
cEeoText :: Lens' Company (Maybe Text)
cEeoText = lens _cEeoText (\ s a -> s{_cEeoText = a})

-- | The employer\'s company size.
cSize :: Lens' Company (Maybe CompanySize)
cSize = lens _cSize (\ s a -> s{_cSize = a})

-- | The URI representing the company\'s primary web site or home page, for
-- example, \"https:\/\/www.google.com\". The maximum number of allowed
-- characters is 255.
cWebsiteURI :: Lens' Company (Maybe Text)
cWebsiteURI
  = lens _cWebsiteURI (\ s a -> s{_cWebsiteURI = a})

-- | Output only. Indicates whether a company is flagged to be suspended from
-- public availability by the service when job content appears suspicious,
-- abusive, or spammy.
cSuspended :: Lens' Company (Maybe Bool)
cSuspended
  = lens _cSuspended (\ s a -> s{_cSuspended = a})

-- | A list of keys of filterable Job.custom_attributes, whose corresponding
-- \`string_values\` are used in keyword searches. Jobs with
-- \`string_values\` under these specified field keys are returned if any
-- of the values match the search keyword. Custom field values with
-- parenthesis, brackets and special symbols are not searchable as-is, and
-- those keyword queries must be surrounded by quotes.
cKeywordSearchableJobCustomAttributes :: Lens' Company [Text]
cKeywordSearchableJobCustomAttributes
  = lens _cKeywordSearchableJobCustomAttributes
      (\ s a ->
         s{_cKeywordSearchableJobCustomAttributes = a})
      . _Default
      . _Coerce

-- | A URI that hosts the employer\'s company logo.
cImageURI :: Lens' Company (Maybe Text)
cImageURI
  = lens _cImageURI (\ s a -> s{_cImageURI = a})

-- | The street address of the company\'s main headquarters, which may be
-- different from the job location. The service attempts to geolocate the
-- provided address, and populates a more specific location wherever
-- possible in DerivedInfo.headquarters_location.
cHeadquartersAddress :: Lens' Company (Maybe Text)
cHeadquartersAddress
  = lens _cHeadquartersAddress
      (\ s a -> s{_cHeadquartersAddress = a})

-- | Required during company update. The resource name for a company. This is
-- generated by the service when a company is created. The format is
-- \"projects\/{project_id}\/tenants\/{tenant_id}\/companies\/{company_id}\",
-- for example, \"projects\/foo\/tenants\/bar\/companies\/baz\".
cName :: Lens' Company (Maybe Text)
cName = lens _cName (\ s a -> s{_cName = a})

-- | Required. The display name of the company, for example, \"Google LLC\".
cDisplayName :: Lens' Company (Maybe Text)
cDisplayName
  = lens _cDisplayName (\ s a -> s{_cDisplayName = a})

-- | Required. Client side company identifier, used to uniquely identify the
-- company. The maximum number of allowed characters is 255.
cExternalId :: Lens' Company (Maybe Text)
cExternalId
  = lens _cExternalId (\ s a -> s{_cExternalId = a})

-- | Output only. Derived details about the company.
cDerivedInfo :: Lens' Company (Maybe CompanyDerivedInfo)
cDerivedInfo
  = lens _cDerivedInfo (\ s a -> s{_cDerivedInfo = a})

instance FromJSON Company where
        parseJSON
          = withObject "Company"
              (\ o ->
                 Company' <$>
                   (o .:? "hiringAgency") <*> (o .:? "careerSiteUri")
                     <*> (o .:? "eeoText")
                     <*> (o .:? "size")
                     <*> (o .:? "websiteUri")
                     <*> (o .:? "suspended")
                     <*>
                     (o .:? "keywordSearchableJobCustomAttributes" .!=
                        mempty)
                     <*> (o .:? "imageUri")
                     <*> (o .:? "headquartersAddress")
                     <*> (o .:? "name")
                     <*> (o .:? "displayName")
                     <*> (o .:? "externalId")
                     <*> (o .:? "derivedInfo"))

instance ToJSON Company where
        toJSON Company'{..}
          = object
              (catMaybes
                 [("hiringAgency" .=) <$> _cHiringAgency,
                  ("careerSiteUri" .=) <$> _cCareerSiteURI,
                  ("eeoText" .=) <$> _cEeoText, ("size" .=) <$> _cSize,
                  ("websiteUri" .=) <$> _cWebsiteURI,
                  ("suspended" .=) <$> _cSuspended,
                  ("keywordSearchableJobCustomAttributes" .=) <$>
                    _cKeywordSearchableJobCustomAttributes,
                  ("imageUri" .=) <$> _cImageURI,
                  ("headquartersAddress" .=) <$> _cHeadquartersAddress,
                  ("name" .=) <$> _cName,
                  ("displayName" .=) <$> _cDisplayName,
                  ("externalId" .=) <$> _cExternalId,
                  ("derivedInfo" .=) <$> _cDerivedInfo])

-- | Custom attribute values that are either filterable or non-filterable.
--
-- /See:/ 'customAttribute' smart constructor.
data CustomAttribute =
  CustomAttribute'
    { _caLongValues :: !(Maybe [Textual Int64])
    , _caFilterable :: !(Maybe Bool)
    , _caKeywordSearchable :: !(Maybe Bool)
    , _caStringValues :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomAttribute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caLongValues'
--
-- * 'caFilterable'
--
-- * 'caKeywordSearchable'
--
-- * 'caStringValues'
customAttribute
    :: CustomAttribute
customAttribute =
  CustomAttribute'
    { _caLongValues = Nothing
    , _caFilterable = Nothing
    , _caKeywordSearchable = Nothing
    , _caStringValues = Nothing
    }


-- | Exactly one of string_values or long_values must be specified. This
-- field is used to perform number range search. (\`EQ\`, \`GT\`, \`GE\`,
-- \`LE\`, \`LT\`) over filterable \`long_value\`. Currently at most 1
-- long_values is supported.
caLongValues :: Lens' CustomAttribute [Int64]
caLongValues
  = lens _caLongValues (\ s a -> s{_caLongValues = a})
      . _Default
      . _Coerce

-- | If the \`filterable\` flag is true, the custom field values may be used
-- for custom attribute filters JobQuery.custom_attribute_filter. If false,
-- these values may not be used for custom attribute filters. Default is
-- false.
caFilterable :: Lens' CustomAttribute (Maybe Bool)
caFilterable
  = lens _caFilterable (\ s a -> s{_caFilterable = a})

-- | If the \`keyword_searchable\` flag is true, the keywords in custom
-- fields are searchable by keyword match. If false, the values are not
-- searchable by keyword match. Default is false.
caKeywordSearchable :: Lens' CustomAttribute (Maybe Bool)
caKeywordSearchable
  = lens _caKeywordSearchable
      (\ s a -> s{_caKeywordSearchable = a})

-- | Exactly one of string_values or long_values must be specified. This
-- field is used to perform a string match (\`CASE_SENSITIVE_MATCH\` or
-- \`CASE_INSENSITIVE_MATCH\`) search. For filterable \`string_value\`s, a
-- maximum total number of 200 values is allowed, with each
-- \`string_value\` has a byte size of no more than 500B. For unfilterable
-- \`string_values\`, the maximum total byte size of unfilterable
-- \`string_values\` is 50KB. Empty string isn\'t allowed.
caStringValues :: Lens' CustomAttribute [Text]
caStringValues
  = lens _caStringValues
      (\ s a -> s{_caStringValues = a})
      . _Default
      . _Coerce

instance FromJSON CustomAttribute where
        parseJSON
          = withObject "CustomAttribute"
              (\ o ->
                 CustomAttribute' <$>
                   (o .:? "longValues" .!= mempty) <*>
                     (o .:? "filterable")
                     <*> (o .:? "keywordSearchable")
                     <*> (o .:? "stringValues" .!= mempty))

instance ToJSON CustomAttribute where
        toJSON CustomAttribute'{..}
          = object
              (catMaybes
                 [("longValues" .=) <$> _caLongValues,
                  ("filterable" .=) <$> _caFilterable,
                  ("keywordSearchable" .=) <$> _caKeywordSearchable,
                  ("stringValues" .=) <$> _caStringValues])

-- | A Job resource represents a job posting (also referred to as a \"job
-- listing\" or \"job requisition\"). A job belongs to a Company, which is
-- the hiring entity responsible for the job.
--
-- /See:/ 'job' smart constructor.
data Job =
  Job'
    { _jDePartment :: !(Maybe Text)
    , _jApplicationInfo :: !(Maybe ApplicationInfo)
    , _jLanguageCode :: !(Maybe Text)
    , _jCompensationInfo :: !(Maybe CompensationInfo)
    , _jResponsibilities :: !(Maybe Text)
    , _jJobStartTime :: !(Maybe DateTime')
    , _jPromotionValue :: !(Maybe (Textual Int32))
    , _jAddresses :: !(Maybe [Text])
    , _jJobBenefits :: !(Maybe [JobJobBenefitsItem])
    , _jVisibility :: !(Maybe JobVisibility)
    , _jJobLevel :: !(Maybe JobJobLevel)
    , _jPostingUpdateTime :: !(Maybe DateTime')
    , _jCustomAttributes :: !(Maybe JobCustomAttributes)
    , _jPostingPublishTime :: !(Maybe DateTime')
    , _jName :: !(Maybe Text)
    , _jDegreeTypes :: !(Maybe [JobDegreeTypesItem])
    , _jCompany :: !(Maybe Text)
    , _jQualifications :: !(Maybe Text)
    , _jCompanyDisplayName :: !(Maybe Text)
    , _jIncentives :: !(Maybe Text)
    , _jJobEndTime :: !(Maybe DateTime')
    , _jPostingRegion :: !(Maybe JobPostingRegion)
    , _jTitle :: !(Maybe Text)
    , _jEmploymentTypes :: !(Maybe [JobEmploymentTypesItem])
    , _jDerivedInfo :: !(Maybe JobDerivedInfo)
    , _jProcessingOptions :: !(Maybe ProcessingOptions)
    , _jPostingExpireTime :: !(Maybe DateTime')
    , _jDescription :: !(Maybe Text)
    , _jRequisitionId :: !(Maybe Text)
    , _jPostingCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Job' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jDePartment'
--
-- * 'jApplicationInfo'
--
-- * 'jLanguageCode'
--
-- * 'jCompensationInfo'
--
-- * 'jResponsibilities'
--
-- * 'jJobStartTime'
--
-- * 'jPromotionValue'
--
-- * 'jAddresses'
--
-- * 'jJobBenefits'
--
-- * 'jVisibility'
--
-- * 'jJobLevel'
--
-- * 'jPostingUpdateTime'
--
-- * 'jCustomAttributes'
--
-- * 'jPostingPublishTime'
--
-- * 'jName'
--
-- * 'jDegreeTypes'
--
-- * 'jCompany'
--
-- * 'jQualifications'
--
-- * 'jCompanyDisplayName'
--
-- * 'jIncentives'
--
-- * 'jJobEndTime'
--
-- * 'jPostingRegion'
--
-- * 'jTitle'
--
-- * 'jEmploymentTypes'
--
-- * 'jDerivedInfo'
--
-- * 'jProcessingOptions'
--
-- * 'jPostingExpireTime'
--
-- * 'jDescription'
--
-- * 'jRequisitionId'
--
-- * 'jPostingCreateTime'
job
    :: Job
job =
  Job'
    { _jDePartment = Nothing
    , _jApplicationInfo = Nothing
    , _jLanguageCode = Nothing
    , _jCompensationInfo = Nothing
    , _jResponsibilities = Nothing
    , _jJobStartTime = Nothing
    , _jPromotionValue = Nothing
    , _jAddresses = Nothing
    , _jJobBenefits = Nothing
    , _jVisibility = Nothing
    , _jJobLevel = Nothing
    , _jPostingUpdateTime = Nothing
    , _jCustomAttributes = Nothing
    , _jPostingPublishTime = Nothing
    , _jName = Nothing
    , _jDegreeTypes = Nothing
    , _jCompany = Nothing
    , _jQualifications = Nothing
    , _jCompanyDisplayName = Nothing
    , _jIncentives = Nothing
    , _jJobEndTime = Nothing
    , _jPostingRegion = Nothing
    , _jTitle = Nothing
    , _jEmploymentTypes = Nothing
    , _jDerivedInfo = Nothing
    , _jProcessingOptions = Nothing
    , _jPostingExpireTime = Nothing
    , _jDescription = Nothing
    , _jRequisitionId = Nothing
    , _jPostingCreateTime = Nothing
    }


-- | The department or functional area within the company with the open
-- position. The maximum number of allowed characters is 255.
jDePartment :: Lens' Job (Maybe Text)
jDePartment
  = lens _jDePartment (\ s a -> s{_jDePartment = a})

-- | Job application information.
jApplicationInfo :: Lens' Job (Maybe ApplicationInfo)
jApplicationInfo
  = lens _jApplicationInfo
      (\ s a -> s{_jApplicationInfo = a})

-- | The language of the posting. This field is distinct from any
-- requirements for fluency that are associated with the job. Language
-- codes must be in BCP-47 format, such as \"en-US\" or \"sr-Latn\". For
-- more information, see [Tags for Identifying
-- Languages](https:\/\/tools.ietf.org\/html\/bcp47){: class=\"external\"
-- target=\"_blank\" }. If this field is unspecified and Job.description is
-- present, detected language code based on Job.description is assigned,
-- otherwise defaults to \'en_US\'.
jLanguageCode :: Lens' Job (Maybe Text)
jLanguageCode
  = lens _jLanguageCode
      (\ s a -> s{_jLanguageCode = a})

-- | Job compensation information (a.k.a. \"pay rate\") i.e., the
-- compensation that will paid to the employee.
jCompensationInfo :: Lens' Job (Maybe CompensationInfo)
jCompensationInfo
  = lens _jCompensationInfo
      (\ s a -> s{_jCompensationInfo = a})

-- | A description of job responsibilities. The use of this field is
-- recommended as an alternative to using the more general description
-- field. This field accepts and sanitizes HTML input, and also accepts
-- bold, italic, ordered list, and unordered list markup tags. The maximum
-- number of allowed characters is 10,000.
jResponsibilities :: Lens' Job (Maybe Text)
jResponsibilities
  = lens _jResponsibilities
      (\ s a -> s{_jResponsibilities = a})

-- | The start timestamp of the job in UTC time zone. Typically this field is
-- used for contracting engagements. Invalid timestamps are ignored.
jJobStartTime :: Lens' Job (Maybe UTCTime)
jJobStartTime
  = lens _jJobStartTime
      (\ s a -> s{_jJobStartTime = a})
      . mapping _DateTime

-- | A promotion value of the job, as determined by the client. The value
-- determines the sort order of the jobs returned when searching for jobs
-- using the featured jobs search call, with higher promotional values
-- being returned first and ties being resolved by relevance sort. Only the
-- jobs with a promotionValue >0 are returned in a FEATURED_JOB_SEARCH.
-- Default value is 0, and negative values are treated as 0.
jPromotionValue :: Lens' Job (Maybe Int32)
jPromotionValue
  = lens _jPromotionValue
      (\ s a -> s{_jPromotionValue = a})
      . mapping _Coerce

-- | Strongly recommended for the best service experience. Location(s) where
-- the employer is looking to hire for this job posting. Specifying the
-- full street address(es) of the hiring location enables better API
-- results, especially job searches by commute time. At most 50 locations
-- are allowed for best search performance. If a job has more locations, it
-- is suggested to split it into multiple jobs with unique requisition_ids
-- (e.g. \'ReqA\' becomes \'ReqA-1\', \'ReqA-2\', and so on.) as multiple
-- jobs with the same company, language_code and requisition_id are not
-- allowed. If the original requisition_id must be preserved, a custom
-- field should be used for storage. It is also suggested to group the
-- locations that close to each other in the same job for better search
-- experience. Jobs with multiple addresses must have their addresses with
-- the same LocationType to allow location filtering to work properly. (For
-- example, a Job with addresses \"1600 Amphitheatre Parkway, Mountain
-- View, CA, USA\" and \"London, UK\" may not have location filters applied
-- correctly at search time since the first is a
-- LocationType.STREET_ADDRESS and the second is a LocationType.LOCALITY.)
-- If a job needs to have multiple addresses, it is suggested to split it
-- into multiple jobs with same LocationTypes. The maximum number of
-- allowed characters is 500.
jAddresses :: Lens' Job [Text]
jAddresses
  = lens _jAddresses (\ s a -> s{_jAddresses = a}) .
      _Default
      . _Coerce

-- | The benefits included with the job.
jJobBenefits :: Lens' Job [JobJobBenefitsItem]
jJobBenefits
  = lens _jJobBenefits (\ s a -> s{_jJobBenefits = a})
      . _Default
      . _Coerce

-- | Deprecated. The job is only visible to the owner. The visibility of the
-- job. Defaults to Visibility.ACCOUNT_ONLY if not specified.
jVisibility :: Lens' Job (Maybe JobVisibility)
jVisibility
  = lens _jVisibility (\ s a -> s{_jVisibility = a})

-- | The experience level associated with the job, such as \"Entry Level\".
jJobLevel :: Lens' Job (Maybe JobJobLevel)
jJobLevel
  = lens _jJobLevel (\ s a -> s{_jJobLevel = a})

-- | Output only. The timestamp when this job posting was last updated.
jPostingUpdateTime :: Lens' Job (Maybe UTCTime)
jPostingUpdateTime
  = lens _jPostingUpdateTime
      (\ s a -> s{_jPostingUpdateTime = a})
      . mapping _DateTime

-- | A map of fields to hold both filterable and non-filterable custom job
-- attributes that are not covered by the provided structured fields. The
-- keys of the map are strings up to 64 bytes and must match the pattern:
-- a-zA-Z*. For example, key0LikeThis or KEY_1_LIKE_THIS. At most 100
-- filterable and at most 100 unfilterable keys are supported. For
-- filterable \`string_values\`, across all keys at most 200 values are
-- allowed, with each string no more than 255 characters. For unfilterable
-- \`string_values\`, the maximum total size of \`string_values\` across
-- all keys is 50KB.
jCustomAttributes :: Lens' Job (Maybe JobCustomAttributes)
jCustomAttributes
  = lens _jCustomAttributes
      (\ s a -> s{_jCustomAttributes = a})

-- | The timestamp this job posting was most recently published. The default
-- value is the time the request arrives at the server. Invalid timestamps
-- are ignored.
jPostingPublishTime :: Lens' Job (Maybe UTCTime)
jPostingPublishTime
  = lens _jPostingPublishTime
      (\ s a -> s{_jPostingPublishTime = a})
      . mapping _DateTime

-- | Required during job update. The resource name for the job. This is
-- generated by the service when a job is created. The format is
-- \"projects\/{project_id}\/tenants\/{tenant_id}\/jobs\/{job_id}\". For
-- example, \"projects\/foo\/tenants\/bar\/jobs\/baz\". Use of this field
-- in job queries and API calls is preferred over the use of requisition_id
-- since this value is unique.
jName :: Lens' Job (Maybe Text)
jName = lens _jName (\ s a -> s{_jName = a})

-- | The desired education degrees for the job, such as Bachelors, Masters.
jDegreeTypes :: Lens' Job [JobDegreeTypesItem]
jDegreeTypes
  = lens _jDegreeTypes (\ s a -> s{_jDegreeTypes = a})
      . _Default
      . _Coerce

-- | Required. The resource name of the company listing the job. The format
-- is
-- \"projects\/{project_id}\/tenants\/{tenant_id}\/companies\/{company_id}\".
-- For example, \"projects\/foo\/tenants\/bar\/companies\/baz\".
jCompany :: Lens' Job (Maybe Text)
jCompany = lens _jCompany (\ s a -> s{_jCompany = a})

-- | A description of the qualifications required to perform the job. The use
-- of this field is recommended as an alternative to using the more general
-- description field. This field accepts and sanitizes HTML input, and also
-- accepts bold, italic, ordered list, and unordered list markup tags. The
-- maximum number of allowed characters is 10,000.
jQualifications :: Lens' Job (Maybe Text)
jQualifications
  = lens _jQualifications
      (\ s a -> s{_jQualifications = a})

-- | Output only. Display name of the company listing the job.
jCompanyDisplayName :: Lens' Job (Maybe Text)
jCompanyDisplayName
  = lens _jCompanyDisplayName
      (\ s a -> s{_jCompanyDisplayName = a})

-- | A description of bonus, commission, and other compensation incentives
-- associated with the job not including salary or pay. The maximum number
-- of allowed characters is 10,000.
jIncentives :: Lens' Job (Maybe Text)
jIncentives
  = lens _jIncentives (\ s a -> s{_jIncentives = a})

-- | The end timestamp of the job. Typically this field is used for
-- contracting engagements. Invalid timestamps are ignored.
jJobEndTime :: Lens' Job (Maybe UTCTime)
jJobEndTime
  = lens _jJobEndTime (\ s a -> s{_jJobEndTime = a}) .
      mapping _DateTime

-- | The job PostingRegion (for example, state, country) throughout which the
-- job is available. If this field is set, a LocationFilter in a search
-- query within the job region finds this job posting if an exact location
-- match isn\'t specified. If this field is set to PostingRegion.NATION or
-- PostingRegion.ADMINISTRATIVE_AREA, setting job Job.addresses to the same
-- location level as this field is strongly recommended.
jPostingRegion :: Lens' Job (Maybe JobPostingRegion)
jPostingRegion
  = lens _jPostingRegion
      (\ s a -> s{_jPostingRegion = a})

-- | Required. The title of the job, such as \"Software Engineer\" The
-- maximum number of allowed characters is 500.
jTitle :: Lens' Job (Maybe Text)
jTitle = lens _jTitle (\ s a -> s{_jTitle = a})

-- | The employment type(s) of a job, for example, full time or part time.
jEmploymentTypes :: Lens' Job [JobEmploymentTypesItem]
jEmploymentTypes
  = lens _jEmploymentTypes
      (\ s a -> s{_jEmploymentTypes = a})
      . _Default
      . _Coerce

-- | Output only. Derived details about the job posting.
jDerivedInfo :: Lens' Job (Maybe JobDerivedInfo)
jDerivedInfo
  = lens _jDerivedInfo (\ s a -> s{_jDerivedInfo = a})

-- | Options for job processing.
jProcessingOptions :: Lens' Job (Maybe ProcessingOptions)
jProcessingOptions
  = lens _jProcessingOptions
      (\ s a -> s{_jProcessingOptions = a})

-- | Strongly recommended for the best service experience. The expiration
-- timestamp of the job. After this timestamp, the job is marked as
-- expired, and it no longer appears in search results. The expired job
-- can\'t be listed by the ListJobs API, but it can be retrieved with the
-- GetJob API or updated with the UpdateJob API or deleted with the
-- DeleteJob API. An expired job can be updated and opened again by using a
-- future expiration timestamp. Updating an expired job fails if there is
-- another existing open job with same company, language_code and
-- requisition_id. The expired jobs are retained in our system for 90 days.
-- However, the overall expired job count cannot exceed 3 times the maximum
-- number of open jobs over previous 7 days. If this threshold is exceeded,
-- expired jobs are cleaned out in order of earliest expire time. Expired
-- jobs are no longer accessible after they are cleaned out. Invalid
-- timestamps are ignored, and treated as expire time not provided. If the
-- timestamp is before the instant request is made, the job is treated as
-- expired immediately on creation. This kind of job can not be updated.
-- And when creating a job with past timestamp, the posting_publish_time
-- must be set before posting_expire_time. The purpose of this feature is
-- to allow other objects, such as Application, to refer a job that didn\'t
-- exist in the system prior to becoming expired. If you want to modify a
-- job that was expired on creation, delete it and create a new one. If
-- this value isn\'t provided at the time of job creation or is invalid,
-- the job posting expires after 30 days from the job\'s creation time. For
-- example, if the job was created on 2017\/01\/01 13:00AM UTC with an
-- unspecified expiration date, the job expires after 2017\/01\/31 13:00AM
-- UTC. If this value isn\'t provided on job update, it depends on the
-- field masks set by UpdateJobRequest.update_mask. If the field masks
-- include job_end_time, or the masks are empty meaning that every field is
-- updated, the job posting expires after 30 days from the job\'s last
-- update time. Otherwise the expiration date isn\'t updated.
jPostingExpireTime :: Lens' Job (Maybe UTCTime)
jPostingExpireTime
  = lens _jPostingExpireTime
      (\ s a -> s{_jPostingExpireTime = a})
      . mapping _DateTime

-- | Required. The description of the job, which typically includes a
-- multi-paragraph description of the company and related information.
-- Separate fields are provided on the job object for responsibilities,
-- qualifications, and other job characteristics. Use of these separate job
-- fields is recommended. This field accepts and sanitizes HTML input, and
-- also accepts bold, italic, ordered list, and unordered list markup tags.
-- The maximum number of allowed characters is 100,000.
jDescription :: Lens' Job (Maybe Text)
jDescription
  = lens _jDescription (\ s a -> s{_jDescription = a})

-- | Required. The requisition ID, also referred to as the posting ID, is
-- assigned by the client to identify a job. This field is intended to be
-- used by clients for client identification and tracking of postings. A
-- job isn\'t allowed to be created if there is another job with the same
-- company, language_code and requisition_id. The maximum number of allowed
-- characters is 255.
jRequisitionId :: Lens' Job (Maybe Text)
jRequisitionId
  = lens _jRequisitionId
      (\ s a -> s{_jRequisitionId = a})

-- | Output only. The timestamp when this job posting was created.
jPostingCreateTime :: Lens' Job (Maybe UTCTime)
jPostingCreateTime
  = lens _jPostingCreateTime
      (\ s a -> s{_jPostingCreateTime = a})
      . mapping _DateTime

instance FromJSON Job where
        parseJSON
          = withObject "Job"
              (\ o ->
                 Job' <$>
                   (o .:? "department") <*> (o .:? "applicationInfo")
                     <*> (o .:? "languageCode")
                     <*> (o .:? "compensationInfo")
                     <*> (o .:? "responsibilities")
                     <*> (o .:? "jobStartTime")
                     <*> (o .:? "promotionValue")
                     <*> (o .:? "addresses" .!= mempty)
                     <*> (o .:? "jobBenefits" .!= mempty)
                     <*> (o .:? "visibility")
                     <*> (o .:? "jobLevel")
                     <*> (o .:? "postingUpdateTime")
                     <*> (o .:? "customAttributes")
                     <*> (o .:? "postingPublishTime")
                     <*> (o .:? "name")
                     <*> (o .:? "degreeTypes" .!= mempty)
                     <*> (o .:? "company")
                     <*> (o .:? "qualifications")
                     <*> (o .:? "companyDisplayName")
                     <*> (o .:? "incentives")
                     <*> (o .:? "jobEndTime")
                     <*> (o .:? "postingRegion")
                     <*> (o .:? "title")
                     <*> (o .:? "employmentTypes" .!= mempty)
                     <*> (o .:? "derivedInfo")
                     <*> (o .:? "processingOptions")
                     <*> (o .:? "postingExpireTime")
                     <*> (o .:? "description")
                     <*> (o .:? "requisitionId")
                     <*> (o .:? "postingCreateTime"))

instance ToJSON Job where
        toJSON Job'{..}
          = object
              (catMaybes
                 [("department" .=) <$> _jDePartment,
                  ("applicationInfo" .=) <$> _jApplicationInfo,
                  ("languageCode" .=) <$> _jLanguageCode,
                  ("compensationInfo" .=) <$> _jCompensationInfo,
                  ("responsibilities" .=) <$> _jResponsibilities,
                  ("jobStartTime" .=) <$> _jJobStartTime,
                  ("promotionValue" .=) <$> _jPromotionValue,
                  ("addresses" .=) <$> _jAddresses,
                  ("jobBenefits" .=) <$> _jJobBenefits,
                  ("visibility" .=) <$> _jVisibility,
                  ("jobLevel" .=) <$> _jJobLevel,
                  ("postingUpdateTime" .=) <$> _jPostingUpdateTime,
                  ("customAttributes" .=) <$> _jCustomAttributes,
                  ("postingPublishTime" .=) <$> _jPostingPublishTime,
                  ("name" .=) <$> _jName,
                  ("degreeTypes" .=) <$> _jDegreeTypes,
                  ("company" .=) <$> _jCompany,
                  ("qualifications" .=) <$> _jQualifications,
                  ("companyDisplayName" .=) <$> _jCompanyDisplayName,
                  ("incentives" .=) <$> _jIncentives,
                  ("jobEndTime" .=) <$> _jJobEndTime,
                  ("postingRegion" .=) <$> _jPostingRegion,
                  ("title" .=) <$> _jTitle,
                  ("employmentTypes" .=) <$> _jEmploymentTypes,
                  ("derivedInfo" .=) <$> _jDerivedInfo,
                  ("processingOptions" .=) <$> _jProcessingOptions,
                  ("postingExpireTime" .=) <$> _jPostingExpireTime,
                  ("description" .=) <$> _jDescription,
                  ("requisitionId" .=) <$> _jRequisitionId,
                  ("postingCreateTime" .=) <$> _jPostingCreateTime])

-- | Geographic region of the search.
--
-- /See:/ 'locationFilter' smart constructor.
data LocationFilter =
  LocationFilter'
    { _lfLatLng :: !(Maybe LatLng)
    , _lfDistanceInMiles :: !(Maybe (Textual Double))
    , _lfRegionCode :: !(Maybe Text)
    , _lfTelecommutePreference :: !(Maybe LocationFilterTelecommutePreference)
    , _lfAddress :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocationFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfLatLng'
--
-- * 'lfDistanceInMiles'
--
-- * 'lfRegionCode'
--
-- * 'lfTelecommutePreference'
--
-- * 'lfAddress'
locationFilter
    :: LocationFilter
locationFilter =
  LocationFilter'
    { _lfLatLng = Nothing
    , _lfDistanceInMiles = Nothing
    , _lfRegionCode = Nothing
    , _lfTelecommutePreference = Nothing
    , _lfAddress = Nothing
    }


-- | The latitude and longitude of the geographic center to search from. This
-- field is ignored if \`address\` is provided.
lfLatLng :: Lens' LocationFilter (Maybe LatLng)
lfLatLng = lens _lfLatLng (\ s a -> s{_lfLatLng = a})

-- | The distance_in_miles is applied when the location being searched for is
-- identified as a city or smaller. This field is ignored if the location
-- being searched for is a state or larger.
lfDistanceInMiles :: Lens' LocationFilter (Maybe Double)
lfDistanceInMiles
  = lens _lfDistanceInMiles
      (\ s a -> s{_lfDistanceInMiles = a})
      . mapping _Coerce

-- | CLDR region code of the country\/region. This field may be used in two
-- ways: 1) If telecommute preference is not set, this field is used
-- address ambiguity of the user-input address. For example, \"Liverpool\"
-- may refer to \"Liverpool, NY, US\" or \"Liverpool, UK\". This region
-- code biases the address resolution toward a specific country or
-- territory. If this field is not set, address resolution is biased toward
-- the United States by default. 2) If telecommute preference is set to
-- TELECOMMUTE_ALLOWED, the telecommute location filter will be limited to
-- the region specified in this field. If this field is not set, the
-- telecommute job locations will not be See
-- https:\/\/unicode-org.github.io\/cldr-staging\/charts\/latest\/supplemental\/territory_information.html
-- for details. Example: \"CH\" for Switzerland.
lfRegionCode :: Lens' LocationFilter (Maybe Text)
lfRegionCode
  = lens _lfRegionCode (\ s a -> s{_lfRegionCode = a})

-- | Allows the client to return jobs without a set location, specifically,
-- telecommuting jobs (telecommuting is considered by the service as a
-- special location. Job.posting_region indicates if a job permits
-- telecommuting. If this field is set to
-- TelecommutePreference.TELECOMMUTE_ALLOWED, telecommuting jobs are
-- searched, and address and lat_lng are ignored. If not set or set to
-- TelecommutePreference.TELECOMMUTE_EXCLUDED, telecommute job are not
-- searched. This filter can be used by itself to search exclusively for
-- telecommuting jobs, or it can be combined with another location filter
-- to search for a combination of job locations, such as \"Mountain View\"
-- or \"telecommuting\" jobs. However, when used in combination with other
-- location filters, telecommuting jobs can be treated as less relevant
-- than other jobs in the search response. This field is only used for job
-- search requests.
lfTelecommutePreference :: Lens' LocationFilter (Maybe LocationFilterTelecommutePreference)
lfTelecommutePreference
  = lens _lfTelecommutePreference
      (\ s a -> s{_lfTelecommutePreference = a})

-- | The address name, such as \"Mountain View\" or \"Bay Area\".
lfAddress :: Lens' LocationFilter (Maybe Text)
lfAddress
  = lens _lfAddress (\ s a -> s{_lfAddress = a})

instance FromJSON LocationFilter where
        parseJSON
          = withObject "LocationFilter"
              (\ o ->
                 LocationFilter' <$>
                   (o .:? "latLng") <*> (o .:? "distanceInMiles") <*>
                     (o .:? "regionCode")
                     <*> (o .:? "telecommutePreference")
                     <*> (o .:? "address"))

instance ToJSON LocationFilter where
        toJSON LocationFilter'{..}
          = object
              (catMaybes
                 [("latLng" .=) <$> _lfLatLng,
                  ("distanceInMiles" .=) <$> _lfDistanceInMiles,
                  ("regionCode" .=) <$> _lfRegionCode,
                  ("telecommutePreference" .=) <$>
                    _lfTelecommutePreference,
                  ("address" .=) <$> _lfAddress])

-- | List jobs response.
--
-- /See:/ 'listJobsResponse' smart constructor.
data ListJobsResponse =
  ListJobsResponse'
    { _ljrNextPageToken :: !(Maybe Text)
    , _ljrJobs :: !(Maybe [Job])
    , _ljrMetadata :: !(Maybe ResponseMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ljrNextPageToken'
--
-- * 'ljrJobs'
--
-- * 'ljrMetadata'
listJobsResponse
    :: ListJobsResponse
listJobsResponse =
  ListJobsResponse'
    {_ljrNextPageToken = Nothing, _ljrJobs = Nothing, _ljrMetadata = Nothing}


-- | A token to retrieve the next page of results.
ljrNextPageToken :: Lens' ListJobsResponse (Maybe Text)
ljrNextPageToken
  = lens _ljrNextPageToken
      (\ s a -> s{_ljrNextPageToken = a})

-- | The Jobs for a given company. The maximum number of items returned is
-- based on the limit field provided in the request.
ljrJobs :: Lens' ListJobsResponse [Job]
ljrJobs
  = lens _ljrJobs (\ s a -> s{_ljrJobs = a}) . _Default
      . _Coerce

-- | Additional information for the API invocation, such as the request
-- tracking id.
ljrMetadata :: Lens' ListJobsResponse (Maybe ResponseMetadata)
ljrMetadata
  = lens _ljrMetadata (\ s a -> s{_ljrMetadata = a})

instance FromJSON ListJobsResponse where
        parseJSON
          = withObject "ListJobsResponse"
              (\ o ->
                 ListJobsResponse' <$>
                   (o .:? "nextPageToken") <*> (o .:? "jobs" .!= mempty)
                     <*> (o .:? "metadata"))

instance ToJSON ListJobsResponse where
        toJSON ListJobsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ljrNextPageToken,
                  ("jobs" .=) <$> _ljrJobs,
                  ("metadata" .=) <$> _ljrMetadata])

-- | The query required to perform a search query.
--
-- /See:/ 'jobQuery' smart constructor.
data JobQuery =
  JobQuery'
    { _jqLanguageCodes :: !(Maybe [Text])
    , _jqDisableSpellCheck :: !(Maybe Bool)
    , _jqCustomAttributeFilter :: !(Maybe Text)
    , _jqCommuteFilter :: !(Maybe CommuteFilter)
    , _jqPublishTimeRange :: !(Maybe TimestampRange)
    , _jqLocationFilters :: !(Maybe [LocationFilter])
    , _jqCompanyDisplayNames :: !(Maybe [Text])
    , _jqJobCategories :: !(Maybe [JobQueryJobCategoriesItem])
    , _jqCompanies :: !(Maybe [Text])
    , _jqCompensationFilter :: !(Maybe CompensationFilter)
    , _jqQuery :: !(Maybe Text)
    , _jqQueryLanguageCode :: !(Maybe Text)
    , _jqEmploymentTypes :: !(Maybe [JobQueryEmploymentTypesItem])
    , _jqExcludedJobs :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jqLanguageCodes'
--
-- * 'jqDisableSpellCheck'
--
-- * 'jqCustomAttributeFilter'
--
-- * 'jqCommuteFilter'
--
-- * 'jqPublishTimeRange'
--
-- * 'jqLocationFilters'
--
-- * 'jqCompanyDisplayNames'
--
-- * 'jqJobCategories'
--
-- * 'jqCompanies'
--
-- * 'jqCompensationFilter'
--
-- * 'jqQuery'
--
-- * 'jqQueryLanguageCode'
--
-- * 'jqEmploymentTypes'
--
-- * 'jqExcludedJobs'
jobQuery
    :: JobQuery
jobQuery =
  JobQuery'
    { _jqLanguageCodes = Nothing
    , _jqDisableSpellCheck = Nothing
    , _jqCustomAttributeFilter = Nothing
    , _jqCommuteFilter = Nothing
    , _jqPublishTimeRange = Nothing
    , _jqLocationFilters = Nothing
    , _jqCompanyDisplayNames = Nothing
    , _jqJobCategories = Nothing
    , _jqCompanies = Nothing
    , _jqCompensationFilter = Nothing
    , _jqQuery = Nothing
    , _jqQueryLanguageCode = Nothing
    , _jqEmploymentTypes = Nothing
    , _jqExcludedJobs = Nothing
    }


-- | This filter specifies the locale of jobs to search against, for example,
-- \"en-US\". If a value isn\'t specified, the search results can contain
-- jobs in any locale. Language codes should be in BCP-47 format, such as
-- \"en-US\" or \"sr-Latn\". For more information, see [Tags for
-- Identifying Languages](https:\/\/tools.ietf.org\/html\/bcp47). At most
-- 10 language code filters are allowed.
jqLanguageCodes :: Lens' JobQuery [Text]
jqLanguageCodes
  = lens _jqLanguageCodes
      (\ s a -> s{_jqLanguageCodes = a})
      . _Default
      . _Coerce

-- | This flag controls the spell-check feature. If false, the service
-- attempts to correct a misspelled query, for example, \"enginee\" is
-- corrected to \"engineer\". Defaults to false: a spell check is
-- performed.
jqDisableSpellCheck :: Lens' JobQuery (Maybe Bool)
jqDisableSpellCheck
  = lens _jqDisableSpellCheck
      (\ s a -> s{_jqDisableSpellCheck = a})

-- | This filter specifies a structured syntax to match against the
-- Job.custom_attributes marked as \`filterable\`. The syntax for this
-- expression is a subset of SQL syntax. Supported operators are: \`=\`,
-- \`!=\`, \`\<\`, \`\<=\`, \`>\`, and \`>=\` where the left of the
-- operator is a custom field key and the right of the operator is a number
-- or a quoted string. You must escape backslash (\\\\) and quote (\\\")
-- characters. Supported functions are \`LOWER([field_name])\` to perform a
-- case insensitive match and \`EMPTY([field_name])\` to filter on the
-- existence of a key. Boolean expressions (AND\/OR\/NOT) are supported up
-- to 3 levels of nesting (for example, \"((A AND B AND C) OR NOT D) AND
-- E\"), a maximum of 100 comparisons or functions are allowed in the
-- expression. The expression must be \< 10000 bytes in length. Sample
-- Query: \`(LOWER(driving_license)=\"class \\\"a\\\"\" OR
-- EMPTY(driving_license)) AND driving_years > 10\`
jqCustomAttributeFilter :: Lens' JobQuery (Maybe Text)
jqCustomAttributeFilter
  = lens _jqCustomAttributeFilter
      (\ s a -> s{_jqCustomAttributeFilter = a})

-- | Allows filtering jobs by commute time with different travel methods (for
-- example, driving or public transit). Note: This only works when you
-- specify a CommuteMethod. In this case, location_filters is ignored.
-- Currently we don\'t support sorting by commute time.
jqCommuteFilter :: Lens' JobQuery (Maybe CommuteFilter)
jqCommuteFilter
  = lens _jqCommuteFilter
      (\ s a -> s{_jqCommuteFilter = a})

-- | Jobs published within a range specified by this filter are searched
-- against.
jqPublishTimeRange :: Lens' JobQuery (Maybe TimestampRange)
jqPublishTimeRange
  = lens _jqPublishTimeRange
      (\ s a -> s{_jqPublishTimeRange = a})

-- | The location filter specifies geo-regions containing the jobs to search
-- against. See LocationFilter for more information. If a location value
-- isn\'t specified, jobs fitting the other search criteria are retrieved
-- regardless of where they\'re located. If multiple values are specified,
-- jobs are retrieved from any of the specified locations. If different
-- values are specified for the LocationFilter.distance_in_miles parameter,
-- the maximum provided distance is used for all locations. At most 5
-- location filters are allowed.
jqLocationFilters :: Lens' JobQuery [LocationFilter]
jqLocationFilters
  = lens _jqLocationFilters
      (\ s a -> s{_jqLocationFilters = a})
      . _Default
      . _Coerce

-- | This filter specifies the exact company Company.display_name of the jobs
-- to search against. If a value isn\'t specified, jobs within the search
-- results are associated with any company. If multiple values are
-- specified, jobs within the search results may be associated with any of
-- the specified companies. At most 20 company display name filters are
-- allowed.
jqCompanyDisplayNames :: Lens' JobQuery [Text]
jqCompanyDisplayNames
  = lens _jqCompanyDisplayNames
      (\ s a -> s{_jqCompanyDisplayNames = a})
      . _Default
      . _Coerce

-- | The category filter specifies the categories of jobs to search against.
-- See JobCategory for more information. If a value isn\'t specified, jobs
-- from any category are searched against. If multiple values are
-- specified, jobs from any of the specified categories are searched
-- against.
jqJobCategories :: Lens' JobQuery [JobQueryJobCategoriesItem]
jqJobCategories
  = lens _jqJobCategories
      (\ s a -> s{_jqJobCategories = a})
      . _Default
      . _Coerce

-- | This filter specifies the company entities to search against. If a value
-- isn\'t specified, jobs are searched for against all companies. If
-- multiple values are specified, jobs are searched against the companies
-- specified. The format is
-- \"projects\/{project_id}\/tenants\/{tenant_id}\/companies\/{company_id}\".
-- For example, \"projects\/foo\/tenants\/bar\/companies\/baz\". At most 20
-- company filters are allowed.
jqCompanies :: Lens' JobQuery [Text]
jqCompanies
  = lens _jqCompanies (\ s a -> s{_jqCompanies = a}) .
      _Default
      . _Coerce

-- | This search filter is applied only to Job.compensation_info. For
-- example, if the filter is specified as \"Hourly job with per-hour
-- compensation > $15\", only jobs meeting these criteria are searched. If
-- a filter isn\'t defined, all open jobs are searched.
jqCompensationFilter :: Lens' JobQuery (Maybe CompensationFilter)
jqCompensationFilter
  = lens _jqCompensationFilter
      (\ s a -> s{_jqCompensationFilter = a})

-- | The query string that matches against the job title, description, and
-- location fields. The maximum number of allowed characters is 255.
jqQuery :: Lens' JobQuery (Maybe Text)
jqQuery = lens _jqQuery (\ s a -> s{_jqQuery = a})

-- | The language code of query. For example, \"en-US\". This field helps to
-- better interpret the query. If a value isn\'t specified, the query
-- language code is automatically detected, which may not be accurate.
-- Language code should be in BCP-47 format, such as \"en-US\" or
-- \"sr-Latn\". For more information, see [Tags for Identifying
-- Languages](https:\/\/tools.ietf.org\/html\/bcp47).
jqQueryLanguageCode :: Lens' JobQuery (Maybe Text)
jqQueryLanguageCode
  = lens _jqQueryLanguageCode
      (\ s a -> s{_jqQueryLanguageCode = a})

-- | The employment type filter specifies the employment type of jobs to
-- search against, such as EmploymentType.FULL_TIME. If a value isn\'t
-- specified, jobs in the search results includes any employment type. If
-- multiple values are specified, jobs in the search results include any of
-- the specified employment types.
jqEmploymentTypes :: Lens' JobQuery [JobQueryEmploymentTypesItem]
jqEmploymentTypes
  = lens _jqEmploymentTypes
      (\ s a -> s{_jqEmploymentTypes = a})
      . _Default
      . _Coerce

-- | This filter specifies a list of job names to be excluded during search.
-- At most 400 excluded job names are allowed.
jqExcludedJobs :: Lens' JobQuery [Text]
jqExcludedJobs
  = lens _jqExcludedJobs
      (\ s a -> s{_jqExcludedJobs = a})
      . _Default
      . _Coerce

instance FromJSON JobQuery where
        parseJSON
          = withObject "JobQuery"
              (\ o ->
                 JobQuery' <$>
                   (o .:? "languageCodes" .!= mempty) <*>
                     (o .:? "disableSpellCheck")
                     <*> (o .:? "customAttributeFilter")
                     <*> (o .:? "commuteFilter")
                     <*> (o .:? "publishTimeRange")
                     <*> (o .:? "locationFilters" .!= mempty)
                     <*> (o .:? "companyDisplayNames" .!= mempty)
                     <*> (o .:? "jobCategories" .!= mempty)
                     <*> (o .:? "companies" .!= mempty)
                     <*> (o .:? "compensationFilter")
                     <*> (o .:? "query")
                     <*> (o .:? "queryLanguageCode")
                     <*> (o .:? "employmentTypes" .!= mempty)
                     <*> (o .:? "excludedJobs" .!= mempty))

instance ToJSON JobQuery where
        toJSON JobQuery'{..}
          = object
              (catMaybes
                 [("languageCodes" .=) <$> _jqLanguageCodes,
                  ("disableSpellCheck" .=) <$> _jqDisableSpellCheck,
                  ("customAttributeFilter" .=) <$>
                    _jqCustomAttributeFilter,
                  ("commuteFilter" .=) <$> _jqCommuteFilter,
                  ("publishTimeRange" .=) <$> _jqPublishTimeRange,
                  ("locationFilters" .=) <$> _jqLocationFilters,
                  ("companyDisplayNames" .=) <$>
                    _jqCompanyDisplayNames,
                  ("jobCategories" .=) <$> _jqJobCategories,
                  ("companies" .=) <$> _jqCompanies,
                  ("compensationFilter" .=) <$> _jqCompensationFilter,
                  ("query" .=) <$> _jqQuery,
                  ("queryLanguageCode" .=) <$> _jqQueryLanguageCode,
                  ("employmentTypes" .=) <$> _jqEmploymentTypes,
                  ("excludedJobs" .=) <$> _jqExcludedJobs])

-- | Request to create a batch of jobs.
--
-- /See:/ 'batchCreateJobsRequest' smart constructor.
newtype BatchCreateJobsRequest =
  BatchCreateJobsRequest'
    { _bcjrJobs :: Maybe [Job]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchCreateJobsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bcjrJobs'
batchCreateJobsRequest
    :: BatchCreateJobsRequest
batchCreateJobsRequest = BatchCreateJobsRequest' {_bcjrJobs = Nothing}


-- | Required. The jobs to be created. A maximum of 200 jobs can be created
-- in a batch.
bcjrJobs :: Lens' BatchCreateJobsRequest [Job]
bcjrJobs
  = lens _bcjrJobs (\ s a -> s{_bcjrJobs = a}) .
      _Default
      . _Coerce

instance FromJSON BatchCreateJobsRequest where
        parseJSON
          = withObject "BatchCreateJobsRequest"
              (\ o ->
                 BatchCreateJobsRequest' <$>
                   (o .:? "jobs" .!= mempty))

instance ToJSON BatchCreateJobsRequest where
        toJSON BatchCreateJobsRequest'{..}
          = object (catMaybes [("jobs" .=) <$> _bcjrJobs])

-- | Spell check result.
--
-- /See:/ 'spellingCorrection' smart constructor.
data SpellingCorrection =
  SpellingCorrection'
    { _scCorrected :: !(Maybe Bool)
    , _scCorrectedText :: !(Maybe Text)
    , _scCorrectedHTML :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SpellingCorrection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scCorrected'
--
-- * 'scCorrectedText'
--
-- * 'scCorrectedHTML'
spellingCorrection
    :: SpellingCorrection
spellingCorrection =
  SpellingCorrection'
    { _scCorrected = Nothing
    , _scCorrectedText = Nothing
    , _scCorrectedHTML = Nothing
    }


-- | Indicates if the query was corrected by the spell checker.
scCorrected :: Lens' SpellingCorrection (Maybe Bool)
scCorrected
  = lens _scCorrected (\ s a -> s{_scCorrected = a})

-- | Correction output consisting of the corrected keyword string.
scCorrectedText :: Lens' SpellingCorrection (Maybe Text)
scCorrectedText
  = lens _scCorrectedText
      (\ s a -> s{_scCorrectedText = a})

-- | Corrected output with html tags to highlight the corrected words.
-- Corrected words are called out with the \"*...*\" html tags. For
-- example, the user input query is \"software enginear\", where the second
-- word, \"enginear,\" is incorrect. It should be \"engineer\". When
-- spelling correction is enabled, this value is \"software *engineer*\".
scCorrectedHTML :: Lens' SpellingCorrection (Maybe Text)
scCorrectedHTML
  = lens _scCorrectedHTML
      (\ s a -> s{_scCorrectedHTML = a})

instance FromJSON SpellingCorrection where
        parseJSON
          = withObject "SpellingCorrection"
              (\ o ->
                 SpellingCorrection' <$>
                   (o .:? "corrected") <*> (o .:? "correctedText") <*>
                     (o .:? "correctedHtml"))

instance ToJSON SpellingCorrection where
        toJSON SpellingCorrection'{..}
          = object
              (catMaybes
                 [("corrected" .=) <$> _scCorrected,
                  ("correctedText" .=) <$> _scCorrectedText,
                  ("correctedHtml" .=) <$> _scCorrectedHTML])

-- | Response of auto-complete query.
--
-- /See:/ 'completeQueryResponse' smart constructor.
data CompleteQueryResponse =
  CompleteQueryResponse'
    { _cqrMetadata :: !(Maybe ResponseMetadata)
    , _cqrCompletionResults :: !(Maybe [CompletionResult])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CompleteQueryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cqrMetadata'
--
-- * 'cqrCompletionResults'
completeQueryResponse
    :: CompleteQueryResponse
completeQueryResponse =
  CompleteQueryResponse'
    {_cqrMetadata = Nothing, _cqrCompletionResults = Nothing}


-- | Additional information for the API invocation, such as the request
-- tracking id.
cqrMetadata :: Lens' CompleteQueryResponse (Maybe ResponseMetadata)
cqrMetadata
  = lens _cqrMetadata (\ s a -> s{_cqrMetadata = a})

-- | Results of the matching job\/company candidates.
cqrCompletionResults :: Lens' CompleteQueryResponse [CompletionResult]
cqrCompletionResults
  = lens _cqrCompletionResults
      (\ s a -> s{_cqrCompletionResults = a})
      . _Default
      . _Coerce

instance FromJSON CompleteQueryResponse where
        parseJSON
          = withObject "CompleteQueryResponse"
              (\ o ->
                 CompleteQueryResponse' <$>
                   (o .:? "metadata") <*>
                     (o .:? "completionResults" .!= mempty))

instance ToJSON CompleteQueryResponse where
        toJSON CompleteQueryResponse'{..}
          = object
              (catMaybes
                 [("metadata" .=) <$> _cqrMetadata,
                  ("completionResults" .=) <$> _cqrCompletionResults])

-- | Represents a time of day. The date and time zone are either not
-- significant or are specified elsewhere. An API may choose to allow leap
-- seconds. Related types are google.type.Date and
-- \`google.protobuf.Timestamp\`.
--
-- /See:/ 'timeOfDay' smart constructor.
data TimeOfDay' =
  TimeOfDay''
    { _todNanos :: !(Maybe (Textual Int32))
    , _todHours :: !(Maybe (Textual Int32))
    , _todMinutes :: !(Maybe (Textual Int32))
    , _todSeconds :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TimeOfDay' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'todNanos'
--
-- * 'todHours'
--
-- * 'todMinutes'
--
-- * 'todSeconds'
timeOfDay
    :: TimeOfDay'
timeOfDay =
  TimeOfDay''
    { _todNanos = Nothing
    , _todHours = Nothing
    , _todMinutes = Nothing
    , _todSeconds = Nothing
    }


-- | Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
todNanos :: Lens' TimeOfDay' (Maybe Int32)
todNanos
  = lens _todNanos (\ s a -> s{_todNanos = a}) .
      mapping _Coerce

-- | Hours of day in 24 hour format. Should be from 0 to 23. An API may
-- choose to allow the value \"24:00:00\" for scenarios like business
-- closing time.
todHours :: Lens' TimeOfDay' (Maybe Int32)
todHours
  = lens _todHours (\ s a -> s{_todHours = a}) .
      mapping _Coerce

-- | Minutes of hour of day. Must be from 0 to 59.
todMinutes :: Lens' TimeOfDay' (Maybe Int32)
todMinutes
  = lens _todMinutes (\ s a -> s{_todMinutes = a}) .
      mapping _Coerce

-- | Seconds of minutes of the time. Must normally be from 0 to 59. An API
-- may allow the value 60 if it allows leap-seconds.
todSeconds :: Lens' TimeOfDay' (Maybe Int32)
todSeconds
  = lens _todSeconds (\ s a -> s{_todSeconds = a}) .
      mapping _Coerce

instance FromJSON TimeOfDay' where
        parseJSON
          = withObject "TimeOfDay"
              (\ o ->
                 TimeOfDay'' <$>
                   (o .:? "nanos") <*> (o .:? "hours") <*>
                     (o .:? "minutes")
                     <*> (o .:? "seconds"))

instance ToJSON TimeOfDay' where
        toJSON TimeOfDay''{..}
          = object
              (catMaybes
                 [("nanos" .=) <$> _todNanos,
                  ("hours" .=) <$> _todHours,
                  ("minutes" .=) <$> _todMinutes,
                  ("seconds" .=) <$> _todSeconds])

-- | A compensation entry that represents one component of compensation, such
-- as base pay, bonus, or other compensation type. Annualization: One
-- compensation entry can be annualized if - it contains valid amount or
-- range. - and its expected_units_per_year is set or can be derived. Its
-- annualized range is determined as (amount or range) times
-- expected_units_per_year.
--
-- /See:/ 'compensationEntry' smart constructor.
data CompensationEntry =
  CompensationEntry'
    { _ceAmount :: !(Maybe Money)
    , _ceExpectedUnitsPerYear :: !(Maybe (Textual Double))
    , _ceRange :: !(Maybe CompensationRange)
    , _ceType :: !(Maybe CompensationEntryType)
    , _ceDescription :: !(Maybe Text)
    , _ceUnit :: !(Maybe CompensationEntryUnit)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CompensationEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ceAmount'
--
-- * 'ceExpectedUnitsPerYear'
--
-- * 'ceRange'
--
-- * 'ceType'
--
-- * 'ceDescription'
--
-- * 'ceUnit'
compensationEntry
    :: CompensationEntry
compensationEntry =
  CompensationEntry'
    { _ceAmount = Nothing
    , _ceExpectedUnitsPerYear = Nothing
    , _ceRange = Nothing
    , _ceType = Nothing
    , _ceDescription = Nothing
    , _ceUnit = Nothing
    }


-- | Compensation amount.
ceAmount :: Lens' CompensationEntry (Maybe Money)
ceAmount = lens _ceAmount (\ s a -> s{_ceAmount = a})

-- | Expected number of units paid each year. If not specified, when
-- Job.employment_types is FULLTIME, a default value is inferred based on
-- unit. Default values: - HOURLY: 2080 - DAILY: 260 - WEEKLY: 52 -
-- MONTHLY: 12 - ANNUAL: 1
ceExpectedUnitsPerYear :: Lens' CompensationEntry (Maybe Double)
ceExpectedUnitsPerYear
  = lens _ceExpectedUnitsPerYear
      (\ s a -> s{_ceExpectedUnitsPerYear = a})
      . mapping _Coerce

-- | Compensation range.
ceRange :: Lens' CompensationEntry (Maybe CompensationRange)
ceRange = lens _ceRange (\ s a -> s{_ceRange = a})

-- | Compensation type. Default is
-- CompensationType.COMPENSATION_TYPE_UNSPECIFIED.
ceType :: Lens' CompensationEntry (Maybe CompensationEntryType)
ceType = lens _ceType (\ s a -> s{_ceType = a})

-- | Compensation description. For example, could indicate equity terms or
-- provide additional context to an estimated bonus.
ceDescription :: Lens' CompensationEntry (Maybe Text)
ceDescription
  = lens _ceDescription
      (\ s a -> s{_ceDescription = a})

-- | Frequency of the specified amount. Default is
-- CompensationUnit.COMPENSATION_UNIT_UNSPECIFIED.
ceUnit :: Lens' CompensationEntry (Maybe CompensationEntryUnit)
ceUnit = lens _ceUnit (\ s a -> s{_ceUnit = a})

instance FromJSON CompensationEntry where
        parseJSON
          = withObject "CompensationEntry"
              (\ o ->
                 CompensationEntry' <$>
                   (o .:? "amount") <*> (o .:? "expectedUnitsPerYear")
                     <*> (o .:? "range")
                     <*> (o .:? "type")
                     <*> (o .:? "description")
                     <*> (o .:? "unit"))

instance ToJSON CompensationEntry where
        toJSON CompensationEntry'{..}
          = object
              (catMaybes
                 [("amount" .=) <$> _ceAmount,
                  ("expectedUnitsPerYear" .=) <$>
                    _ceExpectedUnitsPerYear,
                  ("range" .=) <$> _ceRange, ("type" .=) <$> _ceType,
                  ("description" .=) <$> _ceDescription,
                  ("unit" .=) <$> _ceUnit])

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
--
-- /See:/ 'operationMetadata' smart constructor.
newtype OperationMetadata =
  OperationMetadata'
    { _omAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omAddtional'
operationMetadata
    :: HashMap Text JSONValue -- ^ 'omAddtional'
    -> OperationMetadata
operationMetadata pOmAddtional_ =
  OperationMetadata' {_omAddtional = _Coerce # pOmAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
omAddtional :: Lens' OperationMetadata (HashMap Text JSONValue)
omAddtional
  = lens _omAddtional (\ s a -> s{_omAddtional = a}) .
      _Coerce

instance FromJSON OperationMetadata where
        parseJSON
          = withObject "OperationMetadata"
              (\ o -> OperationMetadata' <$> (parseJSONObject o))

instance ToJSON OperationMetadata where
        toJSON = toJSON . _omAddtional

-- | Compensation range.
--
-- /See:/ 'compensationRange' smart constructor.
data CompensationRange =
  CompensationRange'
    { _crMaxCompensation :: !(Maybe Money)
    , _crMinCompensation :: !(Maybe Money)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CompensationRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crMaxCompensation'
--
-- * 'crMinCompensation'
compensationRange
    :: CompensationRange
compensationRange =
  CompensationRange'
    {_crMaxCompensation = Nothing, _crMinCompensation = Nothing}


-- | The maximum amount of compensation. If left empty, the value is set to a
-- maximal compensation value and the currency code is set to match the
-- currency code of min_compensation.
crMaxCompensation :: Lens' CompensationRange (Maybe Money)
crMaxCompensation
  = lens _crMaxCompensation
      (\ s a -> s{_crMaxCompensation = a})

-- | The minimum amount of compensation. If left empty, the value is set to
-- zero and the currency code is set to match the currency code of
-- max_compensation.
crMinCompensation :: Lens' CompensationRange (Maybe Money)
crMinCompensation
  = lens _crMinCompensation
      (\ s a -> s{_crMinCompensation = a})

instance FromJSON CompensationRange where
        parseJSON
          = withObject "CompensationRange"
              (\ o ->
                 CompensationRange' <$>
                   (o .:? "maxCompensation") <*>
                     (o .:? "minCompensation"))

instance ToJSON CompensationRange where
        toJSON CompensationRange'{..}
          = object
              (catMaybes
                 [("maxCompensation" .=) <$> _crMaxCompensation,
                  ("minCompensation" .=) <$> _crMinCompensation])

-- | Custom ranking information for SearchJobsRequest.
--
-- /See:/ 'customRankingInfo' smart constructor.
data CustomRankingInfo =
  CustomRankingInfo'
    { _criImportanceLevel :: !(Maybe CustomRankingInfoImportanceLevel)
    , _criRankingExpression :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomRankingInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'criImportanceLevel'
--
-- * 'criRankingExpression'
customRankingInfo
    :: CustomRankingInfo
customRankingInfo =
  CustomRankingInfo'
    {_criImportanceLevel = Nothing, _criRankingExpression = Nothing}


-- | Required. Controls over how important the score of
-- CustomRankingInfo.ranking_expression gets applied to job\'s final
-- ranking position. An error is thrown if not specified.
criImportanceLevel :: Lens' CustomRankingInfo (Maybe CustomRankingInfoImportanceLevel)
criImportanceLevel
  = lens _criImportanceLevel
      (\ s a -> s{_criImportanceLevel = a})

-- | Required. Controls over how job documents get ranked on top of existing
-- relevance score (determined by API algorithm). A combination of the
-- ranking expression and relevance score is used to determine job\'s final
-- ranking position. The syntax for this expression is a subset of Google
-- SQL syntax. Supported operators are: +, -, *, \/, where the left and
-- right side of the operator is either a numeric Job.custom_attributes
-- key, integer\/double value or an expression that can be evaluated to a
-- number. Parenthesis are supported to adjust calculation precedence. The
-- expression must be \< 100 characters in length. The expression is
-- considered invalid for a job if the expression references custom
-- attributes that are not populated on the job or if the expression
-- results in a divide by zero. If an expression is invalid for a job, that
-- job is demoted to the end of the results. Sample ranking expression
-- (year + 25) * 0.25 - (freshness \/ 0.5)
criRankingExpression :: Lens' CustomRankingInfo (Maybe Text)
criRankingExpression
  = lens _criRankingExpression
      (\ s a -> s{_criRankingExpression = a})

instance FromJSON CustomRankingInfo where
        parseJSON
          = withObject "CustomRankingInfo"
              (\ o ->
                 CustomRankingInfo' <$>
                   (o .:? "importanceLevel") <*>
                     (o .:? "rankingExpression"))

instance ToJSON CustomRankingInfo where
        toJSON CustomRankingInfo'{..}
          = object
              (catMaybes
                 [("importanceLevel" .=) <$> _criImportanceLevel,
                  ("rankingExpression" .=) <$> _criRankingExpression])

-- | Options for job processing.
--
-- /See:/ 'processingOptions' smart constructor.
data ProcessingOptions =
  ProcessingOptions'
    { _poHTMLSanitization :: !(Maybe ProcessingOptionsHTMLSanitization)
    , _poDisableStreetAddressResolution :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProcessingOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'poHTMLSanitization'
--
-- * 'poDisableStreetAddressResolution'
processingOptions
    :: ProcessingOptions
processingOptions =
  ProcessingOptions'
    {_poHTMLSanitization = Nothing, _poDisableStreetAddressResolution = Nothing}


-- | Option for job HTML content sanitization. Applied fields are: *
-- description * applicationInfo.instruction * incentives * qualifications
-- * responsibilities HTML tags in these fields may be stripped if
-- sanitiazation isn\'t disabled. Defaults to
-- HtmlSanitization.SIMPLE_FORMATTING_ONLY.
poHTMLSanitization :: Lens' ProcessingOptions (Maybe ProcessingOptionsHTMLSanitization)
poHTMLSanitization
  = lens _poHTMLSanitization
      (\ s a -> s{_poHTMLSanitization = a})

-- | If set to \`true\`, the service does not attempt to resolve a more
-- precise address for the job.
poDisableStreetAddressResolution :: Lens' ProcessingOptions (Maybe Bool)
poDisableStreetAddressResolution
  = lens _poDisableStreetAddressResolution
      (\ s a -> s{_poDisableStreetAddressResolution = a})

instance FromJSON ProcessingOptions where
        parseJSON
          = withObject "ProcessingOptions"
              (\ o ->
                 ProcessingOptions' <$>
                   (o .:? "htmlSanitization") <*>
                     (o .:? "disableStreetAddressResolution"))

instance ToJSON ProcessingOptions where
        toJSON ProcessingOptions'{..}
          = object
              (catMaybes
                 [("htmlSanitization" .=) <$> _poHTMLSanitization,
                  ("disableStreetAddressResolution" .=) <$>
                    _poDisableStreetAddressResolution])

-- | Represents a postal address, e.g. for postal delivery or payments
-- addresses. Given a postal address, a postal service can deliver items to
-- a premise, P.O. Box or similar. It is not intended to model geographical
-- locations (roads, towns, mountains). In typical usage an address would
-- be created via user input or from importing existing data, depending on
-- the type of process. Advice on address input \/ editing: - Use an
-- i18n-ready address widget such as
-- https:\/\/github.com\/google\/libaddressinput) - Users should not be
-- presented with UI elements for input or editing of fields outside
-- countries where that field is used. For more guidance on how to use this
-- schema, please see:
-- https:\/\/support.google.com\/business\/answer\/6397478
--
-- /See:/ 'postalAddress' smart constructor.
data PostalAddress =
  PostalAddress'
    { _paLanguageCode :: !(Maybe Text)
    , _paSortingCode :: !(Maybe Text)
    , _paRegionCode :: !(Maybe Text)
    , _paSublocality :: !(Maybe Text)
    , _paPostalCode :: !(Maybe Text)
    , _paLocality :: !(Maybe Text)
    , _paRecipients :: !(Maybe [Text])
    , _paAdministrativeArea :: !(Maybe Text)
    , _paAddressLines :: !(Maybe [Text])
    , _paRevision :: !(Maybe (Textual Int32))
    , _paOrganization :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PostalAddress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paLanguageCode'
--
-- * 'paSortingCode'
--
-- * 'paRegionCode'
--
-- * 'paSublocality'
--
-- * 'paPostalCode'
--
-- * 'paLocality'
--
-- * 'paRecipients'
--
-- * 'paAdministrativeArea'
--
-- * 'paAddressLines'
--
-- * 'paRevision'
--
-- * 'paOrganization'
postalAddress
    :: PostalAddress
postalAddress =
  PostalAddress'
    { _paLanguageCode = Nothing
    , _paSortingCode = Nothing
    , _paRegionCode = Nothing
    , _paSublocality = Nothing
    , _paPostalCode = Nothing
    , _paLocality = Nothing
    , _paRecipients = Nothing
    , _paAdministrativeArea = Nothing
    , _paAddressLines = Nothing
    , _paRevision = Nothing
    , _paOrganization = Nothing
    }


-- | Optional. BCP-47 language code of the contents of this address (if
-- known). This is often the UI language of the input form or is expected
-- to match one of the languages used in the address\' country\/region, or
-- their transliterated equivalents. This can affect formatting in certain
-- countries, but is not critical to the correctness of the data and will
-- never affect any validation or other non-formatting related operations.
-- If this value is not known, it should be omitted (rather than specifying
-- a possibly incorrect default). Examples: \"zh-Hant\", \"ja\",
-- \"ja-Latn\", \"en\".
paLanguageCode :: Lens' PostalAddress (Maybe Text)
paLanguageCode
  = lens _paLanguageCode
      (\ s a -> s{_paLanguageCode = a})

-- | Optional. Additional, country-specific, sorting code. This is not used
-- in most regions. Where it is used, the value is either a string like
-- \"CEDEX\", optionally followed by a number (e.g. \"CEDEX 7\"), or just a
-- number alone, representing the \"sector code\" (Jamaica), \"delivery
-- area indicator\" (Malawi) or \"post office indicator\" (e.g. Côte
-- d\'Ivoire).
paSortingCode :: Lens' PostalAddress (Maybe Text)
paSortingCode
  = lens _paSortingCode
      (\ s a -> s{_paSortingCode = a})

-- | Required. CLDR region code of the country\/region of the address. This
-- is never inferred and it is up to the user to ensure the value is
-- correct. See http:\/\/cldr.unicode.org\/ and
-- http:\/\/www.unicode.org\/cldr\/charts\/30\/supplemental\/territory_information.html
-- for details. Example: \"CH\" for Switzerland.
paRegionCode :: Lens' PostalAddress (Maybe Text)
paRegionCode
  = lens _paRegionCode (\ s a -> s{_paRegionCode = a})

-- | Optional. Sublocality of the address. For example, this can be
-- neighborhoods, boroughs, districts.
paSublocality :: Lens' PostalAddress (Maybe Text)
paSublocality
  = lens _paSublocality
      (\ s a -> s{_paSublocality = a})

-- | Optional. Postal code of the address. Not all countries use or require
-- postal codes to be present, but where they are used, they may trigger
-- additional validation with other parts of the address (e.g. state\/zip
-- validation in the U.S.A.).
paPostalCode :: Lens' PostalAddress (Maybe Text)
paPostalCode
  = lens _paPostalCode (\ s a -> s{_paPostalCode = a})

-- | Optional. Generally refers to the city\/town portion of the address.
-- Examples: US city, IT comune, UK post town. In regions of the world
-- where localities are not well defined or do not fit into this structure
-- well, leave locality empty and use address_lines.
paLocality :: Lens' PostalAddress (Maybe Text)
paLocality
  = lens _paLocality (\ s a -> s{_paLocality = a})

-- | Optional. The recipient at the address. This field may, under certain
-- circumstances, contain multiline information. For example, it might
-- contain \"care of\" information.
paRecipients :: Lens' PostalAddress [Text]
paRecipients
  = lens _paRecipients (\ s a -> s{_paRecipients = a})
      . _Default
      . _Coerce

-- | Optional. Highest administrative subdivision which is used for postal
-- addresses of a country or region. For example, this can be a state, a
-- province, an oblast, or a prefecture. Specifically, for Spain this is
-- the province and not the autonomous community (e.g. \"Barcelona\" and
-- not \"Catalonia\"). Many countries don\'t use an administrative area in
-- postal addresses. E.g. in Switzerland this should be left unpopulated.
paAdministrativeArea :: Lens' PostalAddress (Maybe Text)
paAdministrativeArea
  = lens _paAdministrativeArea
      (\ s a -> s{_paAdministrativeArea = a})

-- | Unstructured address lines describing the lower levels of an address.
-- Because values in address_lines do not have type information and may
-- sometimes contain multiple values in a single field (e.g. \"Austin,
-- TX\"), it is important that the line order is clear. The order of
-- address lines should be \"envelope order\" for the country\/region of
-- the address. In places where this can vary (e.g. Japan),
-- address_language is used to make it explicit (e.g. \"ja\" for
-- large-to-small ordering and \"ja-Latn\" or \"en\" for small-to-large).
-- This way, the most specific line of an address can be selected based on
-- the language. The minimum permitted structural representation of an
-- address consists of a region_code with all remaining information placed
-- in the address_lines. It would be possible to format such an address
-- very approximately without geocoding, but no semantic reasoning could be
-- made about any of the address components until it was at least partially
-- resolved. Creating an address only containing a region_code and
-- address_lines, and then geocoding is the recommended way to handle
-- completely unstructured addresses (as opposed to guessing which parts of
-- the address should be localities or administrative areas).
paAddressLines :: Lens' PostalAddress [Text]
paAddressLines
  = lens _paAddressLines
      (\ s a -> s{_paAddressLines = a})
      . _Default
      . _Coerce

-- | The schema revision of the \`PostalAddress\`. This must be set to 0,
-- which is the latest revision. All new revisions **must** be backward
-- compatible with old revisions.
paRevision :: Lens' PostalAddress (Maybe Int32)
paRevision
  = lens _paRevision (\ s a -> s{_paRevision = a}) .
      mapping _Coerce

-- | Optional. The name of the organization at the address.
paOrganization :: Lens' PostalAddress (Maybe Text)
paOrganization
  = lens _paOrganization
      (\ s a -> s{_paOrganization = a})

instance FromJSON PostalAddress where
        parseJSON
          = withObject "PostalAddress"
              (\ o ->
                 PostalAddress' <$>
                   (o .:? "languageCode") <*> (o .:? "sortingCode") <*>
                     (o .:? "regionCode")
                     <*> (o .:? "sublocality")
                     <*> (o .:? "postalCode")
                     <*> (o .:? "locality")
                     <*> (o .:? "recipients" .!= mempty)
                     <*> (o .:? "administrativeArea")
                     <*> (o .:? "addressLines" .!= mempty)
                     <*> (o .:? "revision")
                     <*> (o .:? "organization"))

instance ToJSON PostalAddress where
        toJSON PostalAddress'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _paLanguageCode,
                  ("sortingCode" .=) <$> _paSortingCode,
                  ("regionCode" .=) <$> _paRegionCode,
                  ("sublocality" .=) <$> _paSublocality,
                  ("postalCode" .=) <$> _paPostalCode,
                  ("locality" .=) <$> _paLocality,
                  ("recipients" .=) <$> _paRecipients,
                  ("administrativeArea" .=) <$> _paAdministrativeArea,
                  ("addressLines" .=) <$> _paAddressLines,
                  ("revision" .=) <$> _paRevision,
                  ("organization" .=) <$> _paOrganization])

-- | Device information collected from the job seeker, candidate, or other
-- entity conducting the job search. Providing this information improves
-- the quality of the search results across devices.
--
-- /See:/ 'deviceInfo' smart constructor.
data DeviceInfo =
  DeviceInfo'
    { _diId :: !(Maybe Text)
    , _diDeviceType :: !(Maybe DeviceInfoDeviceType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeviceInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diId'
--
-- * 'diDeviceType'
deviceInfo
    :: DeviceInfo
deviceInfo = DeviceInfo' {_diId = Nothing, _diDeviceType = Nothing}


-- | A device-specific ID. The ID must be a unique identifier that
-- distinguishes the device from other devices.
diId :: Lens' DeviceInfo (Maybe Text)
diId = lens _diId (\ s a -> s{_diId = a})

-- | Type of the device.
diDeviceType :: Lens' DeviceInfo (Maybe DeviceInfoDeviceType)
diDeviceType
  = lens _diDeviceType (\ s a -> s{_diDeviceType = a})

instance FromJSON DeviceInfo where
        parseJSON
          = withObject "DeviceInfo"
              (\ o ->
                 DeviceInfo' <$>
                   (o .:? "id") <*> (o .:? "deviceType"))

instance ToJSON DeviceInfo where
        toJSON DeviceInfo'{..}
          = object
              (catMaybes
                 [("id" .=) <$> _diId,
                  ("deviceType" .=) <$> _diDeviceType])

-- | The List tenants response object.
--
-- /See:/ 'listTenantsResponse' smart constructor.
data ListTenantsResponse =
  ListTenantsResponse'
    { _ltrTenants :: !(Maybe [Tenant])
    , _ltrNextPageToken :: !(Maybe Text)
    , _ltrMetadata :: !(Maybe ResponseMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListTenantsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltrTenants'
--
-- * 'ltrNextPageToken'
--
-- * 'ltrMetadata'
listTenantsResponse
    :: ListTenantsResponse
listTenantsResponse =
  ListTenantsResponse'
    {_ltrTenants = Nothing, _ltrNextPageToken = Nothing, _ltrMetadata = Nothing}


-- | Tenants for the current client.
ltrTenants :: Lens' ListTenantsResponse [Tenant]
ltrTenants
  = lens _ltrTenants (\ s a -> s{_ltrTenants = a}) .
      _Default
      . _Coerce

-- | A token to retrieve the next page of results.
ltrNextPageToken :: Lens' ListTenantsResponse (Maybe Text)
ltrNextPageToken
  = lens _ltrNextPageToken
      (\ s a -> s{_ltrNextPageToken = a})

-- | Additional information for the API invocation, such as the request
-- tracking id.
ltrMetadata :: Lens' ListTenantsResponse (Maybe ResponseMetadata)
ltrMetadata
  = lens _ltrMetadata (\ s a -> s{_ltrMetadata = a})

instance FromJSON ListTenantsResponse where
        parseJSON
          = withObject "ListTenantsResponse"
              (\ o ->
                 ListTenantsResponse' <$>
                   (o .:? "tenants" .!= mempty) <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "metadata"))

instance ToJSON ListTenantsResponse where
        toJSON ListTenantsResponse'{..}
          = object
              (catMaybes
                 [("tenants" .=) <$> _ltrTenants,
                  ("nextPageToken" .=) <$> _ltrNextPageToken,
                  ("metadata" .=) <$> _ltrMetadata])

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

-- | Response for SearchJob method.
--
-- /See:/ 'searchJobsResponse' smart constructor.
data SearchJobsResponse =
  SearchJobsResponse'
    { _sjrNextPageToken :: !(Maybe Text)
    , _sjrHistogramQueryResults :: !(Maybe [HistogramQueryResult])
    , _sjrLocationFilters :: !(Maybe [Location])
    , _sjrMatchingJobs :: !(Maybe [MatchingJob])
    , _sjrTotalSize :: !(Maybe (Textual Int32))
    , _sjrMetadata :: !(Maybe ResponseMetadata)
    , _sjrBroadenedQueryJobsCount :: !(Maybe (Textual Int32))
    , _sjrSpellCorrection :: !(Maybe SpellingCorrection)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SearchJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sjrNextPageToken'
--
-- * 'sjrHistogramQueryResults'
--
-- * 'sjrLocationFilters'
--
-- * 'sjrMatchingJobs'
--
-- * 'sjrTotalSize'
--
-- * 'sjrMetadata'
--
-- * 'sjrBroadenedQueryJobsCount'
--
-- * 'sjrSpellCorrection'
searchJobsResponse
    :: SearchJobsResponse
searchJobsResponse =
  SearchJobsResponse'
    { _sjrNextPageToken = Nothing
    , _sjrHistogramQueryResults = Nothing
    , _sjrLocationFilters = Nothing
    , _sjrMatchingJobs = Nothing
    , _sjrTotalSize = Nothing
    , _sjrMetadata = Nothing
    , _sjrBroadenedQueryJobsCount = Nothing
    , _sjrSpellCorrection = Nothing
    }


-- | The token that specifies the starting position of the next page of
-- results. This field is empty if there are no more results.
sjrNextPageToken :: Lens' SearchJobsResponse (Maybe Text)
sjrNextPageToken
  = lens _sjrNextPageToken
      (\ s a -> s{_sjrNextPageToken = a})

-- | The histogram results that match with specified
-- SearchJobsRequest.histogram_queries.
sjrHistogramQueryResults :: Lens' SearchJobsResponse [HistogramQueryResult]
sjrHistogramQueryResults
  = lens _sjrHistogramQueryResults
      (\ s a -> s{_sjrHistogramQueryResults = a})
      . _Default
      . _Coerce

-- | The location filters that the service applied to the specified query. If
-- any filters are lat-lng based, the Location.location_type is
-- Location.LocationType.LOCATION_TYPE_UNSPECIFIED.
sjrLocationFilters :: Lens' SearchJobsResponse [Location]
sjrLocationFilters
  = lens _sjrLocationFilters
      (\ s a -> s{_sjrLocationFilters = a})
      . _Default
      . _Coerce

-- | The Job entities that match the specified SearchJobsRequest.
sjrMatchingJobs :: Lens' SearchJobsResponse [MatchingJob]
sjrMatchingJobs
  = lens _sjrMatchingJobs
      (\ s a -> s{_sjrMatchingJobs = a})
      . _Default
      . _Coerce

-- | Number of jobs that match the specified query. Note: This size is
-- precise only if the total is less than 100,000.
sjrTotalSize :: Lens' SearchJobsResponse (Maybe Int32)
sjrTotalSize
  = lens _sjrTotalSize (\ s a -> s{_sjrTotalSize = a})
      . mapping _Coerce

-- | Additional information for the API invocation, such as the request
-- tracking id.
sjrMetadata :: Lens' SearchJobsResponse (Maybe ResponseMetadata)
sjrMetadata
  = lens _sjrMetadata (\ s a -> s{_sjrMetadata = a})

-- | If query broadening is enabled, we may append additional results from
-- the broadened query. This number indicates how many of the jobs returned
-- in the jobs field are from the broadened query. These results are always
-- at the end of the jobs list. In particular, a value of 0, or if the
-- field isn\'t set, all the jobs in the jobs list are from the original
-- (without broadening) query. If this field is non-zero, subsequent
-- requests with offset after this result set should contain all broadened
-- results.
sjrBroadenedQueryJobsCount :: Lens' SearchJobsResponse (Maybe Int32)
sjrBroadenedQueryJobsCount
  = lens _sjrBroadenedQueryJobsCount
      (\ s a -> s{_sjrBroadenedQueryJobsCount = a})
      . mapping _Coerce

-- | The spell checking result, and correction.
sjrSpellCorrection :: Lens' SearchJobsResponse (Maybe SpellingCorrection)
sjrSpellCorrection
  = lens _sjrSpellCorrection
      (\ s a -> s{_sjrSpellCorrection = a})

instance FromJSON SearchJobsResponse where
        parseJSON
          = withObject "SearchJobsResponse"
              (\ o ->
                 SearchJobsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "histogramQueryResults" .!= mempty)
                     <*> (o .:? "locationFilters" .!= mempty)
                     <*> (o .:? "matchingJobs" .!= mempty)
                     <*> (o .:? "totalSize")
                     <*> (o .:? "metadata")
                     <*> (o .:? "broadenedQueryJobsCount")
                     <*> (o .:? "spellCorrection"))

instance ToJSON SearchJobsResponse where
        toJSON SearchJobsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _sjrNextPageToken,
                  ("histogramQueryResults" .=) <$>
                    _sjrHistogramQueryResults,
                  ("locationFilters" .=) <$> _sjrLocationFilters,
                  ("matchingJobs" .=) <$> _sjrMatchingJobs,
                  ("totalSize" .=) <$> _sjrTotalSize,
                  ("metadata" .=) <$> _sjrMetadata,
                  ("broadenedQueryJobsCount" .=) <$>
                    _sjrBroadenedQueryJobsCount,
                  ("spellCorrection" .=) <$> _sjrSpellCorrection])

-- | Rollouts to force in a particular experiment state. Map from rollout
-- name to rollout value.
--
-- /See:/ 'namespacedDebugInputForcedRollouts' smart constructor.
newtype NamespacedDebugInputForcedRollouts =
  NamespacedDebugInputForcedRollouts'
    { _ndifrAddtional :: HashMap Text Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NamespacedDebugInputForcedRollouts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ndifrAddtional'
namespacedDebugInputForcedRollouts
    :: HashMap Text Bool -- ^ 'ndifrAddtional'
    -> NamespacedDebugInputForcedRollouts
namespacedDebugInputForcedRollouts pNdifrAddtional_ =
  NamespacedDebugInputForcedRollouts'
    {_ndifrAddtional = _Coerce # pNdifrAddtional_}


ndifrAddtional :: Lens' NamespacedDebugInputForcedRollouts (HashMap Text Bool)
ndifrAddtional
  = lens _ndifrAddtional
      (\ s a -> s{_ndifrAddtional = a})
      . _Coerce

instance FromJSON NamespacedDebugInputForcedRollouts
         where
        parseJSON
          = withObject "NamespacedDebugInputForcedRollouts"
              (\ o ->
                 NamespacedDebugInputForcedRollouts' <$>
                   (parseJSONObject o))

instance ToJSON NamespacedDebugInputForcedRollouts
         where
        toJSON = toJSON . _ndifrAddtional

-- | Message representing a period of time between two timestamps.
--
-- /See:/ 'timestampRange' smart constructor.
data TimestampRange =
  TimestampRange'
    { _trStartTime :: !(Maybe DateTime')
    , _trEndTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TimestampRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trStartTime'
--
-- * 'trEndTime'
timestampRange
    :: TimestampRange
timestampRange = TimestampRange' {_trStartTime = Nothing, _trEndTime = Nothing}


-- | Begin of the period (inclusive).
trStartTime :: Lens' TimestampRange (Maybe UTCTime)
trStartTime
  = lens _trStartTime (\ s a -> s{_trStartTime = a}) .
      mapping _DateTime

-- | End of the period (exclusive).
trEndTime :: Lens' TimestampRange (Maybe UTCTime)
trEndTime
  = lens _trEndTime (\ s a -> s{_trEndTime = a}) .
      mapping _DateTime

instance FromJSON TimestampRange where
        parseJSON
          = withObject "TimestampRange"
              (\ o ->
                 TimestampRange' <$>
                   (o .:? "startTime") <*> (o .:? "endTime"))

instance ToJSON TimestampRange where
        toJSON TimestampRange'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _trStartTime,
                  ("endTime" .=) <$> _trEndTime])
