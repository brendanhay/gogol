{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Jobs.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Jobs.Types.Product where

import           Network.Google.Jobs.Types.Sum
import           Network.Google.Prelude

-- | An object representing a latitude\/longitude pair. This is expressed as
-- a pair of doubles representing degrees latitude and degrees longitude.
-- Unless specified otherwise, this must conform to the
-- <http://www.unoosa.org/pdf/icg/2012/template/WGS_84.pdf WGS84 standard>.
-- Values must be within normalized ranges.
--
-- /See:/ 'latLng' smart constructor.
data LatLng =
  LatLng'
    { _llLatitude  :: !(Maybe (Textual Double))
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

-- | Application related details of a job posting.
--
-- /See:/ 'applicationInfo' smart constructor.
data ApplicationInfo =
  ApplicationInfo'
    { _aiURIs        :: !(Maybe [Text])
    , _aiEmails      :: !(Maybe [Text])
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


-- | Optional but at least one of uris, emails or instruction must be
-- specified. Use this URI field to direct an applicant to a website, for
-- example to link to an online application form. The maximum number of
-- allowed characters for each entry is 2,000.
aiURIs :: Lens' ApplicationInfo [Text]
aiURIs
  = lens _aiURIs (\ s a -> s{_aiURIs = a}) . _Default .
      _Coerce

-- | Optional but at least one of uris, emails or instruction must be
-- specified. Use this field to specify email address(es) to which resumes
-- or applications can be sent. The maximum number of allowed characters
-- for each entry is 255.
aiEmails :: Lens' ApplicationInfo [Text]
aiEmails
  = lens _aiEmails (\ s a -> s{_aiEmails = a}) .
      _Default
      . _Coerce

-- | Optional but at least one of uris, emails or instruction must be
-- specified. Use this field to provide instructions, such as \"Mail your
-- application to ...\", that a candidate can follow to apply for the job.
-- This field accepts and sanitizes HTML input, and also accepts bold,
-- italic, ordered list, and unordered list markup tags. The maximum number
-- of allowed characters is 3,000.
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

-- | Output only. Job entry with metadata inside SearchJobsResponse.
--
-- /See:/ 'matchingJob' smart constructor.
data MatchingJob =
  MatchingJob'
    { _mjJobTitleSnippet   :: !(Maybe Text)
    , _mjJobSummary        :: !(Maybe Text)
    , _mjCommuteInfo       :: !(Maybe CommuteInfo)
    , _mjSearchTextSnippet :: !(Maybe Text)
    , _mjJob               :: !(Maybe Job)
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


-- | Contains snippets of text from the Job.job_title field most closely
-- matching a search query\'s keywords, if available. The matching query
-- keywords are enclosed in HTML bold tags.
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
-- /See:/ 'status' smart constructor.
data Status =
  Status'
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode    :: !(Maybe (Textual Int32))
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

-- | Input only. Meta information related to the job searcher or entity
-- conducting the job search. This information is used to improve the
-- performance of the service.
--
-- /See:/ 'requestMetadata' smart constructor.
data RequestMetadata =
  RequestMetadata'
    { _rmDomain     :: !(Maybe Text)
    , _rmUserId     :: !(Maybe Text)
    , _rmSessionId  :: !(Maybe Text)
    , _rmDeviceInfo :: !(Maybe DeviceInfo)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RequestMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmDomain'
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
    , _rmUserId = Nothing
    , _rmSessionId = Nothing
    , _rmDeviceInfo = Nothing
    }


-- | Required. The client-defined scope or source of the service call, which
-- typically is the domain on which the service has been implemented and is
-- currently being run. For example, if the service is being run by client
-- /Foo, Inc./, on job board www.foo.com and career site www.bar.com, then
-- this field is set to \"foo.com\" for use on the job board, and
-- \"bar.com\" for use on the career site. If this field isn\'t available
-- for some reason, send \"UNKNOWN\". Any improvements to the model for a
-- particular tenant site rely on this field being set correctly to a
-- domain. The maximum number of allowed characters is 255.
rmDomain :: Lens' RequestMetadata (Maybe Text)
rmDomain = lens _rmDomain (\ s a -> s{_rmDomain = a})

-- | Required. A unique user identification string, as determined by the
-- client. To have the strongest positive impact on search quality make
-- sure the client-level is unique. Obfuscate this field for privacy
-- concerns before providing it to the service. If this field is not
-- available for some reason, send \"UNKNOWN\". Note that any improvements
-- to the model for a particular tenant site, rely on this field being set
-- correctly to a unique user_id. The maximum number of allowed characters
-- is 255.
rmUserId :: Lens' RequestMetadata (Maybe Text)
rmUserId = lens _rmUserId (\ s a -> s{_rmUserId = a})

-- | Required. A unique session identification string. A session is defined
-- as the duration of an end user\'s interaction with the service over a
-- certain period. Obfuscate this field for privacy concerns before
-- providing it to the service. If this field is not available for some
-- reason, send \"UNKNOWN\". Note that any improvements to the model for a
-- particular tenant site, rely on this field being set correctly to some
-- unique session_id. The maximum number of allowed characters is 255.
rmSessionId :: Lens' RequestMetadata (Maybe Text)
rmSessionId
  = lens _rmSessionId (\ s a -> s{_rmSessionId = a})

-- | Optional. The type of device used by the job seeker at the time of the
-- call to the service.
rmDeviceInfo :: Lens' RequestMetadata (Maybe DeviceInfo)
rmDeviceInfo
  = lens _rmDeviceInfo (\ s a -> s{_rmDeviceInfo = a})

instance FromJSON RequestMetadata where
        parseJSON
          = withObject "RequestMetadata"
              (\ o ->
                 RequestMetadata' <$>
                   (o .:? "domain") <*> (o .:? "userId") <*>
                     (o .:? "sessionId")
                     <*> (o .:? "deviceInfo"))

instance ToJSON RequestMetadata where
        toJSON RequestMetadata'{..}
          = object
              (catMaybes
                 [("domain" .=) <$> _rmDomain,
                  ("userId" .=) <$> _rmUserId,
                  ("sessionId" .=) <$> _rmSessionId,
                  ("deviceInfo" .=) <$> _rmDeviceInfo])

-- | Input only. Request for updating a specified company.
--
-- /See:/ 'updateCompanyRequest' smart constructor.
data UpdateCompanyRequest =
  UpdateCompanyRequest'
    { _ucrUpdateMask :: !(Maybe GFieldMask)
    , _ucrCompany    :: !(Maybe Company)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateCompanyRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucrUpdateMask'
--
-- * 'ucrCompany'
updateCompanyRequest
    :: UpdateCompanyRequest
updateCompanyRequest =
  UpdateCompanyRequest' {_ucrUpdateMask = Nothing, _ucrCompany = Nothing}


-- | Optional but strongly recommended for the best service experience. If
-- update_mask is provided, only the specified fields in company are
-- updated. Otherwise all the fields are updated. A field mask to specify
-- the company fields to be updated. Only top level fields of Company are
-- supported.
ucrUpdateMask :: Lens' UpdateCompanyRequest (Maybe GFieldMask)
ucrUpdateMask
  = lens _ucrUpdateMask
      (\ s a -> s{_ucrUpdateMask = a})

-- | Required. The company resource to replace the current resource in the
-- system.
ucrCompany :: Lens' UpdateCompanyRequest (Maybe Company)
ucrCompany
  = lens _ucrCompany (\ s a -> s{_ucrCompany = a})

instance FromJSON UpdateCompanyRequest where
        parseJSON
          = withObject "UpdateCompanyRequest"
              (\ o ->
                 UpdateCompanyRequest' <$>
                   (o .:? "updateMask") <*> (o .:? "company"))

instance ToJSON UpdateCompanyRequest where
        toJSON UpdateCompanyRequest'{..}
          = object
              (catMaybes
                 [("updateMask" .=) <$> _ucrUpdateMask,
                  ("company" .=) <$> _ucrCompany])

-- | Input only. Update job request.
--
-- /See:/ 'updateJobRequest' smart constructor.
data UpdateJobRequest =
  UpdateJobRequest'
    { _ujrUpdateMask :: !(Maybe GFieldMask)
    , _ujrJob        :: !(Maybe Job)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateJobRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ujrUpdateMask'
--
-- * 'ujrJob'
updateJobRequest
    :: UpdateJobRequest
updateJobRequest =
  UpdateJobRequest' {_ujrUpdateMask = Nothing, _ujrJob = Nothing}


-- | Optional but strongly recommended to be provided for the best service
-- experience. If update_mask is provided, only the specified fields in job
-- are updated. Otherwise all the fields are updated. A field mask to
-- restrict the fields that are updated. Only top level fields of Job are
-- supported.
ujrUpdateMask :: Lens' UpdateJobRequest (Maybe GFieldMask)
ujrUpdateMask
  = lens _ujrUpdateMask
      (\ s a -> s{_ujrUpdateMask = a})

-- | Required. The Job to be updated.
ujrJob :: Lens' UpdateJobRequest (Maybe Job)
ujrJob = lens _ujrJob (\ s a -> s{_ujrJob = a})

instance FromJSON UpdateJobRequest where
        parseJSON
          = withObject "UpdateJobRequest"
              (\ o ->
                 UpdateJobRequest' <$>
                   (o .:? "updateMask") <*> (o .:? "job"))

instance ToJSON UpdateJobRequest where
        toJSON UpdateJobRequest'{..}
          = object
              (catMaybes
                 [("updateMask" .=) <$> _ujrUpdateMask,
                  ("job" .=) <$> _ujrJob])

-- | Represents count of jobs within one bucket.
--
-- /See:/ 'bucketizedCount' smart constructor.
data BucketizedCount =
  BucketizedCount'
    { _bcCount :: !(Maybe (Textual Int32))
    , _bcRange :: !(Maybe BucketRange)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BucketizedCount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bcCount'
--
-- * 'bcRange'
bucketizedCount
    :: BucketizedCount
bucketizedCount = BucketizedCount' {_bcCount = Nothing, _bcRange = Nothing}


-- | Number of jobs whose numeric field value fall into \`range\`.
bcCount :: Lens' BucketizedCount (Maybe Int32)
bcCount
  = lens _bcCount (\ s a -> s{_bcCount = a}) .
      mapping _Coerce

-- | Bucket range on which histogram was performed for the numeric field,
-- that is, the count represents number of jobs in this range.
bcRange :: Lens' BucketizedCount (Maybe BucketRange)
bcRange = lens _bcRange (\ s a -> s{_bcRange = a})

instance FromJSON BucketizedCount where
        parseJSON
          = withObject "BucketizedCount"
              (\ o ->
                 BucketizedCount' <$>
                   (o .:? "count") <*> (o .:? "range"))

instance ToJSON BucketizedCount where
        toJSON BucketizedCount'{..}
          = object
              (catMaybes
                 [("count" .=) <$> _bcCount,
                  ("range" .=) <$> _bcRange])

-- | Job compensation details.
--
-- /See:/ 'compensationInfo' smart constructor.
data CompensationInfo =
  CompensationInfo'
    { _ciAnnualizedTotalCompensationRange :: !(Maybe CompensationRange)
    , _ciEntries                          :: !(Maybe [CompensationEntry])
    , _ciAnnualizedBaseCompensationRange  :: !(Maybe CompensationRange)
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
-- compensation entries\' CompensationEntry.compensation times
-- CompensationEntry.expected_units_per_year. See CompensationEntry for
-- explanation on compensation annualization.
ciAnnualizedTotalCompensationRange :: Lens' CompensationInfo (Maybe CompensationRange)
ciAnnualizedTotalCompensationRange
  = lens _ciAnnualizedTotalCompensationRange
      (\ s a -> s{_ciAnnualizedTotalCompensationRange = a})

-- | Optional. Job compensation information. At most one entry can be of type
-- CompensationInfo.CompensationType.BASE, which is referred as ** base
-- compensation entry ** for the job.
ciEntries :: Lens' CompensationInfo [CompensationEntry]
ciEntries
  = lens _ciEntries (\ s a -> s{_ciEntries = a}) .
      _Default
      . _Coerce

-- | Output only. Annualized base compensation range. Computed as base
-- compensation entry\'s CompensationEntry.compensation times
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

-- | Input only. The Request of the CreateCompany method.
--
-- /See:/ 'createCompanyRequest' smart constructor.
newtype CreateCompanyRequest =
  CreateCompanyRequest'
    { _ccrCompany :: Maybe Company
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateCompanyRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccrCompany'
createCompanyRequest
    :: CreateCompanyRequest
createCompanyRequest = CreateCompanyRequest' {_ccrCompany = Nothing}


-- | Required. The company to be created.
ccrCompany :: Lens' CreateCompanyRequest (Maybe Company)
ccrCompany
  = lens _ccrCompany (\ s a -> s{_ccrCompany = a})

instance FromJSON CreateCompanyRequest where
        parseJSON
          = withObject "CreateCompanyRequest"
              (\ o -> CreateCompanyRequest' <$> (o .:? "company"))

instance ToJSON CreateCompanyRequest where
        toJSON CreateCompanyRequest'{..}
          = object (catMaybes [("company" .=) <$> _ccrCompany])

-- | Input Only. The histogram request.
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


-- | An expression specifies a histogram request against matching resources
-- (for example, jobs) for searches. Expression syntax is a aggregation
-- function call with histogram facets and other options. Available
-- aggregation function calls are: * \`count(string_histogram_facet)\`:
-- Count the number of matching entity, for each distinct attribute value.
-- * \`count(numeric_histogram_facet, list of buckets)\`: Count the number
-- of matching entity within each bucket. Data types: * Histogram facet:
-- facet names with format a-zA-Z+. * String: string like \"any string with
-- backslash escape for quote(\\\").\" * Number: whole number and floating
-- point number like 10, -1 and -0.01. * List: list of elements with
-- comma(,) separator surrounded by square brackets. For example, [1, 2, 3]
-- and [\"one\", \"two\", \"three\"]. Built-in constants: * MIN (minimum
-- number similar to java Double.MIN_VALUE) * MAX (maximum number similar
-- to java Double.MAX_VALUE) Built-in functions: * bucket(start, end[,
-- label]): bucket built-in function creates a bucket with range of start,
-- end). Note that the end is exclusive. For example, bucket(1, MAX,
-- \"positive number\") or bucket(1, 10). Job histogram facets: *
-- company_id: histogram by [Job.distributor_company_id. *
-- company_display_name: histogram by Job.company_display_name. *
-- employment_type: histogram by Job.employment_types. For example,
-- \"FULL_TIME\", \"PART_TIME\". * company_size: histogram by CompanySize,
-- for example, \"SMALL\", \"MEDIUM\", \"BIG\". * publish_time_in_month:
-- histogram by the Job.publish_time in months. Must specify list of
-- numeric buckets in spec. * publish_time_in_year: histogram by the
-- Job.publish_time in years. Must specify list of numeric buckets in spec.
-- * degree_type: histogram by the Job.degree_type. For example,
-- \"Bachelors\", \"Masters\". * job_level: histogram by the Job.job_level.
-- For example, \"Entry Level\". * country: histogram by the country code
-- of jobs. For example, \"US\", \"FR\". * admin1: histogram by the admin1
-- code of jobs, which is a global placeholder referring to the state,
-- province, or the particular term a country uses to define the geographic
-- structure below the country level. For example, \"CA\", \"IL\". * city:
-- histogram by a combination of the \"city name, admin1 code\". For
-- example, \"Mountain View, CA\", \"New York, NY\". * admin1_country:
-- histogram by a combination of the \"admin1 code, country\". For example,
-- \"CA, US\", \"IL, US\". * city_coordinate: histogram by the city
-- center\'s GPS coordinates (latitude and longitude). For example,
-- 37.4038522,-122.0987765. Since the coordinates of a city center can
-- change, customers may need to refresh them periodically. * locale:
-- histogram by the Job.language_code. For example, \"en-US\", \"fr-FR\". *
-- language: histogram by the language subtag of the Job.language_code. For
-- example, \"en\", \"fr\". * category: histogram by the JobCategory. For
-- example, \"COMPUTER_AND_IT\", \"HEALTHCARE\". * base_compensation_unit:
-- histogram by the CompensationUnit of base salary. For example,
-- \"WEEKLY\", \"MONTHLY\". * base_compensation: histogram by the base
-- salary. Must specify list of numeric buckets to group results by. *
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
-- count(admin1) * count(base_compensation, [bucket(1000, 10000),
-- bucket(10000, 100000), bucket(100000, MAX)]) *
-- count(string_custom_attribute[\"some-string-custom-attribute\"]) *
-- count(numeric_custom_attribute[\"some-numeric-custom-attribute\"],
-- [bucket(MIN, 0, \"negative\"), bucket(0, MAX, \"non-negative\"])
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

-- | Input only. Create job request.
--
-- /See:/ 'createJobRequest' smart constructor.
newtype CreateJobRequest =
  CreateJobRequest'
    { _cjrJob :: Maybe Job
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateJobRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cjrJob'
createJobRequest
    :: CreateJobRequest
createJobRequest = CreateJobRequest' {_cjrJob = Nothing}


-- | Required. The Job to be created.
cjrJob :: Lens' CreateJobRequest (Maybe Job)
cjrJob = lens _cjrJob (\ s a -> s{_cjrJob = a})

instance FromJSON CreateJobRequest where
        parseJSON
          = withObject "CreateJobRequest"
              (\ o -> CreateJobRequest' <$> (o .:? "job"))

instance ToJSON CreateJobRequest where
        toJSON CreateJobRequest'{..}
          = object (catMaybes [("job" .=) <$> _cjrJob])

-- | Output only. Resource that represents completion results.
--
-- /See:/ 'completionResult' smart constructor.
data CompletionResult =
  CompletionResult'
    { _crSuggestion :: !(Maybe Text)
    , _crImageURI   :: !(Maybe Text)
    , _crType       :: !(Maybe CompletionResultType)
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

-- | The URI of the company image for CompletionType.COMPANY_NAME.
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

-- | Output only. A resource that represents a location with full geographic
-- information.
--
-- /See:/ 'location' smart constructor.
data Location =
  Location'
    { _lLatLng        :: !(Maybe LatLng)
    , _lLocationType  :: !(Maybe LocationLocationType)
    , _lPostalAddress :: !(Maybe PostalAddress)
    , _lRadiusInMiles :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Location' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lLatLng'
--
-- * 'lLocationType'
--
-- * 'lPostalAddress'
--
-- * 'lRadiusInMiles'
location
    :: Location
location =
  Location'
    { _lLatLng = Nothing
    , _lLocationType = Nothing
    , _lPostalAddress = Nothing
    , _lRadiusInMiles = Nothing
    }


-- | An object representing a latitude\/longitude pair.
lLatLng :: Lens' Location (Maybe LatLng)
lLatLng = lens _lLatLng (\ s a -> s{_lLatLng = a})

-- | The type of a location, which corresponds to the address lines field of
-- PostalAddress. For example, \"Downtown, Atlanta, GA, USA\" has a type of
-- LocationType#NEIGHBORHOOD, and \"Kansas City, KS, USA\" has a type of
-- LocationType#LOCALITY.
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

-- | Radius in miles of the job location. This value is derived from the
-- location bounding box in which a circle with the specified radius
-- centered from LatLng covers the area associated with the job location.
-- For example, currently, \"Mountain View, CA, USA\" has a radius of 6.17
-- miles.
lRadiusInMiles :: Lens' Location (Maybe Double)
lRadiusInMiles
  = lens _lRadiusInMiles
      (\ s a -> s{_lRadiusInMiles = a})
      . mapping _Coerce

instance FromJSON Location where
        parseJSON
          = withObject "Location"
              (\ o ->
                 Location' <$>
                   (o .:? "latLng") <*> (o .:? "locationType") <*>
                     (o .:? "postalAddress")
                     <*> (o .:? "radiusInMiles"))

instance ToJSON Location where
        toJSON Location'{..}
          = object
              (catMaybes
                 [("latLng" .=) <$> _lLatLng,
                  ("locationType" .=) <$> _lLocationType,
                  ("postalAddress" .=) <$> _lPostalAddress,
                  ("radiusInMiles" .=) <$> _lRadiusInMiles])

-- | This resource represents a long-running operation that is the result of
-- a network API call.
--
-- /See:/ 'operation' smart constructor.
data Operation =
  Operation'
    { _oDone     :: !(Maybe Bool)
    , _oError    :: !(Maybe Status)
    , _oResponse :: !(Maybe OperationResponse)
    , _oName     :: !(Maybe Text)
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
-- \`name\` should have the format of \`operations\/some\/unique\/name\`.
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
-- the quality of search and recommendation for the API clients, enabling
-- the service to perform optimally. The number of events sent must be
-- consistent with other calls, such as job searches, issued to the service
-- by the client.
--
-- /See:/ 'clientEvent' smart constructor.
data ClientEvent =
  ClientEvent'
    { _ceRequestId     :: !(Maybe Text)
    , _ceExtraInfo     :: !(Maybe ClientEventExtraInfo)
    , _ceJobEvent      :: !(Maybe JobEvent)
    , _ceParentEventId :: !(Maybe Text)
    , _ceCreateTime    :: !(Maybe DateTime')
    , _ceEventId       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ClientEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ceRequestId'
--
-- * 'ceExtraInfo'
--
-- * 'ceJobEvent'
--
-- * 'ceParentEventId'
--
-- * 'ceCreateTime'
--
-- * 'ceEventId'
clientEvent
    :: ClientEvent
clientEvent =
  ClientEvent'
    { _ceRequestId = Nothing
    , _ceExtraInfo = Nothing
    , _ceJobEvent = Nothing
    , _ceParentEventId = Nothing
    , _ceCreateTime = Nothing
    , _ceEventId = Nothing
    }


-- | Required. A unique ID generated in the API responses. It can be found in
-- ResponseMetadata.request_id.
ceRequestId :: Lens' ClientEvent (Maybe Text)
ceRequestId
  = lens _ceRequestId (\ s a -> s{_ceRequestId = a})

-- | Optional. Extra information about this event. Used for storing
-- information with no matching field in event payload, for example, user
-- application specific context or details. At most 20 keys are supported.
-- The maximum total size of all keys and values is 2 KB.
ceExtraInfo :: Lens' ClientEvent (Maybe ClientEventExtraInfo)
ceExtraInfo
  = lens _ceExtraInfo (\ s a -> s{_ceExtraInfo = a})

-- | A event issued when a job seeker interacts with the application that
-- implements Cloud Talent Solution.
ceJobEvent :: Lens' ClientEvent (Maybe JobEvent)
ceJobEvent
  = lens _ceJobEvent (\ s a -> s{_ceJobEvent = a})

-- | Optional. The event_id of an event that resulted in the current event.
-- For example, a Job view event usually follows a parent impression event:
-- A job seeker first does a search where a list of jobs appears
-- (impression). The job seeker then selects a result and views the
-- description of a particular job (Job view).
ceParentEventId :: Lens' ClientEvent (Maybe Text)
ceParentEventId
  = lens _ceParentEventId
      (\ s a -> s{_ceParentEventId = a})

-- | Required. The timestamp of the event.
ceCreateTime :: Lens' ClientEvent (Maybe UTCTime)
ceCreateTime
  = lens _ceCreateTime (\ s a -> s{_ceCreateTime = a})
      . mapping _DateTime

-- | Required. A unique identifier, generated by the client application. This
-- \`event_id\` is used to establish the relationship between different
-- events (see parent_event_id).
ceEventId :: Lens' ClientEvent (Maybe Text)
ceEventId
  = lens _ceEventId (\ s a -> s{_ceEventId = a})

instance FromJSON ClientEvent where
        parseJSON
          = withObject "ClientEvent"
              (\ o ->
                 ClientEvent' <$>
                   (o .:? "requestId") <*> (o .:? "extraInfo") <*>
                     (o .:? "jobEvent")
                     <*> (o .:? "parentEventId")
                     <*> (o .:? "createTime")
                     <*> (o .:? "eventId"))

instance ToJSON ClientEvent where
        toJSON ClientEvent'{..}
          = object
              (catMaybes
                 [("requestId" .=) <$> _ceRequestId,
                  ("extraInfo" .=) <$> _ceExtraInfo,
                  ("jobEvent" .=) <$> _ceJobEvent,
                  ("parentEventId" .=) <$> _ceParentEventId,
                  ("createTime" .=) <$> _ceCreateTime,
                  ("eventId" .=) <$> _ceEventId])

-- | Input only. Compensation based histogram request.
--
-- /See:/ 'compensationHistogramRequest' smart constructor.
data CompensationHistogramRequest =
  CompensationHistogramRequest'
    { _chrBucketingOption :: !(Maybe NumericBucketingOption)
    , _chrType            :: !(Maybe CompensationHistogramRequestType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CompensationHistogramRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chrBucketingOption'
--
-- * 'chrType'
compensationHistogramRequest
    :: CompensationHistogramRequest
compensationHistogramRequest =
  CompensationHistogramRequest'
    {_chrBucketingOption = Nothing, _chrType = Nothing}


-- | Required. Numeric histogram options, like buckets, whether include min
-- or max value.
chrBucketingOption :: Lens' CompensationHistogramRequest (Maybe NumericBucketingOption)
chrBucketingOption
  = lens _chrBucketingOption
      (\ s a -> s{_chrBucketingOption = a})

-- | Required. Type of the request, representing which field the
-- histogramming should be performed over. A single request can only
-- specify one histogram of each \`CompensationHistogramRequestType\`.
chrType :: Lens' CompensationHistogramRequest (Maybe CompensationHistogramRequestType)
chrType = lens _chrType (\ s a -> s{_chrType = a})

instance FromJSON CompensationHistogramRequest where
        parseJSON
          = withObject "CompensationHistogramRequest"
              (\ o ->
                 CompensationHistogramRequest' <$>
                   (o .:? "bucketingOption") <*> (o .:? "type"))

instance ToJSON CompensationHistogramRequest where
        toJSON CompensationHistogramRequest'{..}
          = object
              (catMaybes
                 [("bucketingOption" .=) <$> _chrBucketingOption,
                  ("type" .=) <$> _chrType])

-- | Represents an amount of money with its currency type.
--
-- /See:/ 'money' smart constructor.
data Money =
  Money'
    { _mCurrencyCode :: !(Maybe Text)
    , _mNanos        :: !(Maybe (Textual Int32))
    , _mUnits        :: !(Maybe (Textual Int64))
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


-- | The 3-letter currency code defined in ISO 4217.
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

-- | Output only. The List companies response object.
--
-- /See:/ 'listCompaniesResponse' smart constructor.
data ListCompaniesResponse =
  ListCompaniesResponse'
    { _lcrNextPageToken :: !(Maybe Text)
    , _lcrCompanies     :: !(Maybe [Company])
    , _lcrMetadata      :: !(Maybe ResponseMetadata)
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

-- | Input only. Parameters needed for commute search.
--
-- /See:/ 'commuteFilter' smart constructor.
data CommuteFilter =
  CommuteFilter'
    { _cfCommuteMethod           :: !(Maybe CommuteFilterCommuteMethod)
    , _cfAllowImpreciseAddresses :: !(Maybe Bool)
    , _cfTravelDuration          :: !(Maybe GDuration)
    , _cfStartCoordinates        :: !(Maybe LatLng)
    , _cfRoadTraffic             :: !(Maybe CommuteFilterRoadTraffic)
    , _cfDePartureTime           :: !(Maybe TimeOfDay')
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


-- | Required. The method of transportation for which to calculate the
-- commute time.
cfCommuteMethod :: Lens' CommuteFilter (Maybe CommuteFilterCommuteMethod)
cfCommuteMethod
  = lens _cfCommuteMethod
      (\ s a -> s{_cfCommuteMethod = a})

-- | Optional. If true, jobs without \"precise\" addresses (street level
-- addresses or GPS coordinates) might also be returned. For city and
-- coarser level addresses, text matching is used. If this field is set to
-- false or is not specified, only jobs that include precise addresses are
-- returned by Commute Search. Note: If \`allow_imprecise_addresses\` is
-- set to true, Commute Search is not able to calculate accurate commute
-- times to jobs with city level and coarser address information. Jobs with
-- imprecise addresses will return a \`travel_duration\` time of 0
-- regardless of distance from the job seeker.
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

-- | Required. The latitude and longitude of the location from which to
-- calculate the commute time.
cfStartCoordinates :: Lens' CommuteFilter (Maybe LatLng)
cfStartCoordinates
  = lens _cfStartCoordinates
      (\ s a -> s{_cfStartCoordinates = a})

-- | Optional. Specifies the traffic density to use when calculating commute
-- time.
cfRoadTraffic :: Lens' CommuteFilter (Maybe CommuteFilterRoadTraffic)
cfRoadTraffic
  = lens _cfRoadTraffic
      (\ s a -> s{_cfRoadTraffic = a})

-- | Optional. The departure time used to calculate traffic impact,
-- represented as google.type.TimeOfDay in local time zone. Currently
-- traffic model is restricted to hour level resolution.
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

-- | Input only. Batch delete jobs request.
--
-- /See:/ 'batchDeleteJobsRequest' smart constructor.
newtype BatchDeleteJobsRequest =
  BatchDeleteJobsRequest'
    { _bdjrFilter :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchDeleteJobsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdjrFilter'
batchDeleteJobsRequest
    :: BatchDeleteJobsRequest
batchDeleteJobsRequest = BatchDeleteJobsRequest' {_bdjrFilter = Nothing}


-- | Required. The filter string specifies the jobs to be deleted. Supported
-- operator: =, AND The fields eligible for filtering are: *
-- \`companyName\` (Required) * \`requisitionId\` (Required) Sample Query:
-- companyName = \"projects\/api-test-project\/companies\/123\" AND
-- requisitionId = \"req-1\"
bdjrFilter :: Lens' BatchDeleteJobsRequest (Maybe Text)
bdjrFilter
  = lens _bdjrFilter (\ s a -> s{_bdjrFilter = a})

instance FromJSON BatchDeleteJobsRequest where
        parseJSON
          = withObject "BatchDeleteJobsRequest"
              (\ o -> BatchDeleteJobsRequest' <$> (o .:? "filter"))

instance ToJSON BatchDeleteJobsRequest where
        toJSON BatchDeleteJobsRequest'{..}
          = object (catMaybes [("filter" .=) <$> _bdjrFilter])

-- | Optional. A map of fields to hold both filterable and non-filterable
-- custom job attributes that are not covered by the provided structured
-- fields. The keys of the map are strings up to 64 bytes and must match
-- the pattern: a-zA-Z*. For example, key0LikeThis or KEY_1_LIKE_THIS. At
-- most 100 filterable and at most 100 unfilterable keys are supported. For
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
-- contains the identifier of the viewed job.
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

-- | Input only. The Request body of the \`SearchJobs\` call.
--
-- /See:/ 'searchJobsRequest' smart constructor.
data SearchJobsRequest =
  SearchJobsRequest'
    { _sjrRequestMetadata          :: !(Maybe RequestMetadata)
    , _sjrJobView                  :: !(Maybe SearchJobsRequestJobView)
    , _sjrOrderBy                  :: !(Maybe Text)
    , _sjrOffSet                   :: !(Maybe (Textual Int32))
    , _sjrSearchMode               :: !(Maybe SearchJobsRequestSearchMode)
    , _sjrDiversificationLevel     :: !(Maybe SearchJobsRequestDiversificationLevel)
    , _sjrHistogramQueries         :: !(Maybe [HistogramQuery])
    , _sjrRequirePreciseResultSize :: !(Maybe Bool)
    , _sjrJobQuery                 :: !(Maybe JobQuery)
    , _sjrEnableBroadening         :: !(Maybe Bool)
    , _sjrPageToken                :: !(Maybe Text)
    , _sjrCustomRankingInfo        :: !(Maybe CustomRankingInfo)
    , _sjrDisableKeywordMatch      :: !(Maybe Bool)
    , _sjrPageSize                 :: !(Maybe (Textual Int32))
    , _sjrHistogramFacets          :: !(Maybe HistogramFacets)
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
-- * 'sjrRequirePreciseResultSize'
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
--
-- * 'sjrPageSize'
--
-- * 'sjrHistogramFacets'
searchJobsRequest
    :: SearchJobsRequest
searchJobsRequest =
  SearchJobsRequest'
    { _sjrRequestMetadata = Nothing
    , _sjrJobView = Nothing
    , _sjrOrderBy = Nothing
    , _sjrOffSet = Nothing
    , _sjrSearchMode = Nothing
    , _sjrDiversificationLevel = Nothing
    , _sjrHistogramQueries = Nothing
    , _sjrRequirePreciseResultSize = Nothing
    , _sjrJobQuery = Nothing
    , _sjrEnableBroadening = Nothing
    , _sjrPageToken = Nothing
    , _sjrCustomRankingInfo = Nothing
    , _sjrDisableKeywordMatch = Nothing
    , _sjrPageSize = Nothing
    , _sjrHistogramFacets = Nothing
    }


-- | Required. The meta information collected about the job searcher, used to
-- improve the search quality of the service.. The identifiers, (such as
-- \`user_id\`) are provided by users, and must be unique and consistent.
sjrRequestMetadata :: Lens' SearchJobsRequest (Maybe RequestMetadata)
sjrRequestMetadata
  = lens _sjrRequestMetadata
      (\ s a -> s{_sjrRequestMetadata = a})

-- | Optional. The desired job attributes returned for jobs in the search
-- response. Defaults to JobView.SMALL if no value is specified.
sjrJobView :: Lens' SearchJobsRequest (Maybe SearchJobsRequestJobView)
sjrJobView
  = lens _sjrJobView (\ s a -> s{_sjrJobView = a})

-- | Optional. The criteria determining how search results are sorted.
-- Default is \"relevance desc\". Supported options are: * \"relevance
-- desc\": By relevance descending, as determined by the API algorithms.
-- Relevance thresholding of query results is only available with this
-- ordering. * \"posting\`_\`publish\`_\`time desc\": By
-- Job.posting_publish_time descending. * \"posting\`_\`update\`_\`time
-- desc\": By Job.posting_update_time descending. * \"title\": By Job.title
-- ascending. * \"title desc\": By Job.title descending. *
-- \"annualized\`_\`base\`_\`compensation\": By job\'s
-- CompensationInfo.annualized_base_compensation_range ascending. Jobs
-- whose annualized base compensation is unspecified are put at the end of
-- search results. * \"annualized\`_\`base\`_\`compensation desc\": By
-- job\'s CompensationInfo.annualized_base_compensation_range descending.
-- Jobs whose annualized base compensation is unspecified are put at the
-- end of search results. * \"annualized\`_\`total\`_\`compensation\": By
-- job\'s CompensationInfo.annualized_total_compensation_range ascending.
-- Jobs whose annualized base compensation is unspecified are put at the
-- end of search results. * \"annualized\`_\`total\`_\`compensation desc\":
-- By job\'s CompensationInfo.annualized_total_compensation_range
-- descending. Jobs whose annualized base compensation is unspecified are
-- put at the end of search results. * \"custom\`_\`ranking desc\": By the
-- relevance score adjusted to the
-- SearchJobsRequest.custom_ranking_info.ranking_expression with weight
-- factor assigned by
-- SearchJobsRequest.custom_ranking_info.importance_level in descending
-- order. * \"location\`_\`distance\": By the distance between the location
-- on jobs and locations specified in the
-- SearchJobsRequest.job_query.location_filters. When this order is
-- selected, the SearchJobsRequest.job_query.location_filters must not be
-- empty. When a job has multiple locations, the location closest to one of
-- the locations specified in the location filter will be used to calculate
-- location distance. Distance is calculated by the distance between two
-- lat\/long coordinates, with a precision of 10e-4 degrees (11.3 meters).
-- Jobs that don\'t have locations specified will be ranked below jobs
-- having locations. Diversification strategy is still applied unless
-- explicitly disabled in SearchJobsRequest.diversification_level.
sjrOrderBy :: Lens' SearchJobsRequest (Maybe Text)
sjrOrderBy
  = lens _sjrOrderBy (\ s a -> s{_sjrOrderBy = a})

-- | Optional. An integer that specifies the current offset (that is,
-- starting result location, amongst the jobs deemed by the API as
-- relevant) in search results. This field is only considered if page_token
-- is unset. For example, 0 means to return results starting from the first
-- matching job, and 10 means to return from the 11th job. This can be used
-- for pagination, (for example, pageSize = 10 and offset = 10 means to
-- return from the second page).
sjrOffSet :: Lens' SearchJobsRequest (Maybe Int32)
sjrOffSet
  = lens _sjrOffSet (\ s a -> s{_sjrOffSet = a}) .
      mapping _Coerce

-- | Optional. Mode of a search. Defaults to SearchMode.JOB_SEARCH.
sjrSearchMode :: Lens' SearchJobsRequest (Maybe SearchJobsRequestSearchMode)
sjrSearchMode
  = lens _sjrSearchMode
      (\ s a -> s{_sjrSearchMode = a})

-- | Optional. Controls whether highly similar jobs are returned next to each
-- other in the search results. Jobs are identified as highly similar based
-- on their titles, job categories, and locations. Highly similar results
-- are clustered so that only one representative job of the cluster is
-- displayed to the job seeker higher up in the results, with the other
-- jobs being displayed lower down in the results. Defaults to
-- DiversificationLevel.SIMPLE if no value is specified.
sjrDiversificationLevel :: Lens' SearchJobsRequest (Maybe SearchJobsRequestDiversificationLevel)
sjrDiversificationLevel
  = lens _sjrDiversificationLevel
      (\ s a -> s{_sjrDiversificationLevel = a})

-- | Optional. Expression based histogram requests for jobs matching
-- JobQuery.
sjrHistogramQueries :: Lens' SearchJobsRequest [HistogramQuery]
sjrHistogramQueries
  = lens _sjrHistogramQueries
      (\ s a -> s{_sjrHistogramQueries = a})
      . _Default
      . _Coerce

-- | Optional. Controls if the search job request requires the return of a
-- precise count of the first 300 results. Setting this to \`true\` ensures
-- consistency in the number of results per page. Best practice is to set
-- this value to true if a client allows users to jump directly to a
-- non-sequential search results page. Enabling this flag may adversely
-- impact performance. Defaults to false.
sjrRequirePreciseResultSize :: Lens' SearchJobsRequest (Maybe Bool)
sjrRequirePreciseResultSize
  = lens _sjrRequirePreciseResultSize
      (\ s a -> s{_sjrRequirePreciseResultSize = a})

-- | Optional. Query used to search against jobs, such as keyword, location
-- filters, etc.
sjrJobQuery :: Lens' SearchJobsRequest (Maybe JobQuery)
sjrJobQuery
  = lens _sjrJobQuery (\ s a -> s{_sjrJobQuery = a})

-- | Optional. Controls whether to broaden the search when it produces sparse
-- results. Broadened queries append results to the end of the matching
-- results list. Defaults to false.
sjrEnableBroadening :: Lens' SearchJobsRequest (Maybe Bool)
sjrEnableBroadening
  = lens _sjrEnableBroadening
      (\ s a -> s{_sjrEnableBroadening = a})

-- | Optional. The token specifying the current offset within search results.
-- See SearchJobsResponse.next_page_token for an explanation of how to
-- obtain the next set of query results.
sjrPageToken :: Lens' SearchJobsRequest (Maybe Text)
sjrPageToken
  = lens _sjrPageToken (\ s a -> s{_sjrPageToken = a})

-- | Optional. Controls over how job documents get ranked on top of existing
-- relevance score (determined by API algorithm).
sjrCustomRankingInfo :: Lens' SearchJobsRequest (Maybe CustomRankingInfo)
sjrCustomRankingInfo
  = lens _sjrCustomRankingInfo
      (\ s a -> s{_sjrCustomRankingInfo = a})

-- | Optional. Controls whether to disable exact keyword match on
-- Job.job_title, Job.description, Job.company_display_name, Job.locations,
-- Job.qualifications. When disable keyword match is turned off, a keyword
-- match returns jobs that do not match given category filters when there
-- are matching keywords. For example, the query \"program manager,\" a
-- result is returned even if the job posting has the title \"software
-- developer,\" which does not fall into \"program manager\" ontology, but
-- does have \"program manager\" appearing in its description. For queries
-- like \"cloud\" that does not contain title or location specific
-- ontology, jobs with \"cloud\" keyword matches are returned regardless of
-- this flag\'s value. Please use Company.keyword_searchable_custom_fields
-- or Company.keyword_searchable_custom_attributes if company specific
-- globally matched custom field\/attribute string values is needed.
-- Enabling keyword match improves recall of subsequent search requests.
-- Defaults to false.
sjrDisableKeywordMatch :: Lens' SearchJobsRequest (Maybe Bool)
sjrDisableKeywordMatch
  = lens _sjrDisableKeywordMatch
      (\ s a -> s{_sjrDisableKeywordMatch = a})

-- | Optional. A limit on the number of jobs returned in the search results.
-- Increasing this value above the default value of 10 can increase search
-- response time. The value can be between 1 and 100.
sjrPageSize :: Lens' SearchJobsRequest (Maybe Int32)
sjrPageSize
  = lens _sjrPageSize (\ s a -> s{_sjrPageSize = a}) .
      mapping _Coerce

-- | Optional. Histogram requests for jobs matching JobQuery.
sjrHistogramFacets :: Lens' SearchJobsRequest (Maybe HistogramFacets)
sjrHistogramFacets
  = lens _sjrHistogramFacets
      (\ s a -> s{_sjrHistogramFacets = a})

instance FromJSON SearchJobsRequest where
        parseJSON
          = withObject "SearchJobsRequest"
              (\ o ->
                 SearchJobsRequest' <$>
                   (o .:? "requestMetadata") <*> (o .:? "jobView") <*>
                     (o .:? "orderBy")
                     <*> (o .:? "offset")
                     <*> (o .:? "searchMode")
                     <*> (o .:? "diversificationLevel")
                     <*> (o .:? "histogramQueries" .!= mempty)
                     <*> (o .:? "requirePreciseResultSize")
                     <*> (o .:? "jobQuery")
                     <*> (o .:? "enableBroadening")
                     <*> (o .:? "pageToken")
                     <*> (o .:? "customRankingInfo")
                     <*> (o .:? "disableKeywordMatch")
                     <*> (o .:? "pageSize")
                     <*> (o .:? "histogramFacets"))

instance ToJSON SearchJobsRequest where
        toJSON SearchJobsRequest'{..}
          = object
              (catMaybes
                 [("requestMetadata" .=) <$> _sjrRequestMetadata,
                  ("jobView" .=) <$> _sjrJobView,
                  ("orderBy" .=) <$> _sjrOrderBy,
                  ("offset" .=) <$> _sjrOffSet,
                  ("searchMode" .=) <$> _sjrSearchMode,
                  ("diversificationLevel" .=) <$>
                    _sjrDiversificationLevel,
                  ("histogramQueries" .=) <$> _sjrHistogramQueries,
                  ("requirePreciseResultSize" .=) <$>
                    _sjrRequirePreciseResultSize,
                  ("jobQuery" .=) <$> _sjrJobQuery,
                  ("enableBroadening" .=) <$> _sjrEnableBroadening,
                  ("pageToken" .=) <$> _sjrPageToken,
                  ("customRankingInfo" .=) <$> _sjrCustomRankingInfo,
                  ("disableKeywordMatch" .=) <$>
                    _sjrDisableKeywordMatch,
                  ("pageSize" .=) <$> _sjrPageSize,
                  ("histogramFacets" .=) <$> _sjrHistogramFacets])

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

-- | Output only. Histogram result that matches HistogramSpec specified in
-- searches.
--
-- /See:/ 'histogramQueryResult' smart constructor.
data HistogramQueryResult =
  HistogramQueryResult'
    { _hqrHistogramQuery :: !(Maybe Text)
    , _hqrHistogram      :: !(Maybe HistogramQueryResultHistogram)
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

-- | Custom attributes histogram request. An error is thrown if neither
-- string_value_histogram or long_value_histogram_bucketing_option has been
-- defined.
--
-- /See:/ 'customAttributeHistogramRequest' smart constructor.
data CustomAttributeHistogramRequest =
  CustomAttributeHistogramRequest'
    { _cahrLongValueHistogramBucketingOption :: !(Maybe NumericBucketingOption)
    , _cahrKey                               :: !(Maybe Text)
    , _cahrStringValueHistogram              :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomAttributeHistogramRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cahrLongValueHistogramBucketingOption'
--
-- * 'cahrKey'
--
-- * 'cahrStringValueHistogram'
customAttributeHistogramRequest
    :: CustomAttributeHistogramRequest
customAttributeHistogramRequest =
  CustomAttributeHistogramRequest'
    { _cahrLongValueHistogramBucketingOption = Nothing
    , _cahrKey = Nothing
    , _cahrStringValueHistogram = Nothing
    }


-- | Optional. Specifies buckets used to perform a range histogram on Job\'s
-- filterable long custom field values, or min\/max value requirements.
cahrLongValueHistogramBucketingOption :: Lens' CustomAttributeHistogramRequest (Maybe NumericBucketingOption)
cahrLongValueHistogramBucketingOption
  = lens _cahrLongValueHistogramBucketingOption
      (\ s a ->
         s{_cahrLongValueHistogramBucketingOption = a})

-- | Required. Specifies the custom field key to perform a histogram on. If
-- specified without \`long_value_histogram_bucketing_option\`, histogram
-- on string values of the given \`key\` is triggered, otherwise histogram
-- is performed on long values.
cahrKey :: Lens' CustomAttributeHistogramRequest (Maybe Text)
cahrKey = lens _cahrKey (\ s a -> s{_cahrKey = a})

-- | Optional. If set to true, the response includes the histogram value for
-- each key as a string.
cahrStringValueHistogram :: Lens' CustomAttributeHistogramRequest (Maybe Bool)
cahrStringValueHistogram
  = lens _cahrStringValueHistogram
      (\ s a -> s{_cahrStringValueHistogram = a})

instance FromJSON CustomAttributeHistogramRequest
         where
        parseJSON
          = withObject "CustomAttributeHistogramRequest"
              (\ o ->
                 CustomAttributeHistogramRequest' <$>
                   (o .:? "longValueHistogramBucketingOption") <*>
                     (o .:? "key")
                     <*> (o .:? "stringValueHistogram"))

instance ToJSON CustomAttributeHistogramRequest where
        toJSON CustomAttributeHistogramRequest'{..}
          = object
              (catMaybes
                 [("longValueHistogramBucketingOption" .=) <$>
                    _cahrLongValueHistogramBucketingOption,
                  ("key" .=) <$> _cahrKey,
                  ("stringValueHistogram" .=) <$>
                    _cahrStringValueHistogram])

-- | Output only. Additional information returned to client, such as
-- debugging information.
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

-- | Output only. Commute details related to this job.
--
-- /See:/ 'commuteInfo' smart constructor.
data CommuteInfo =
  CommuteInfo'
    { _ciTravelDuration :: !(Maybe GDuration)
    , _ciJobLocation    :: !(Maybe Location)
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
-- query location. A duration of 0 seconds indicates that the job is not
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

-- | Output only. Custom attribute histogram result.
--
-- /See:/ 'customAttributeHistogramResult' smart constructor.
data CustomAttributeHistogramResult =
  CustomAttributeHistogramResult'
    { _cStringValueHistogramResult :: !(Maybe CustomAttributeHistogramResultStringValueHistogramResult)
    , _cLongValueHistogramResult   :: !(Maybe NumericBucketingResult)
    , _cKey                        :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomAttributeHistogramResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cStringValueHistogramResult'
--
-- * 'cLongValueHistogramResult'
--
-- * 'cKey'
customAttributeHistogramResult
    :: CustomAttributeHistogramResult
customAttributeHistogramResult =
  CustomAttributeHistogramResult'
    { _cStringValueHistogramResult = Nothing
    , _cLongValueHistogramResult = Nothing
    , _cKey = Nothing
    }


-- | Stores a map from the values of string custom field associated with
-- \`key\` to the number of jobs with that value in this histogram result.
cStringValueHistogramResult :: Lens' CustomAttributeHistogramResult (Maybe CustomAttributeHistogramResultStringValueHistogramResult)
cStringValueHistogramResult
  = lens _cStringValueHistogramResult
      (\ s a -> s{_cStringValueHistogramResult = a})

-- | Stores bucketed histogram counting result or min\/max values for custom
-- attribute long values associated with \`key\`.
cLongValueHistogramResult :: Lens' CustomAttributeHistogramResult (Maybe NumericBucketingResult)
cLongValueHistogramResult
  = lens _cLongValueHistogramResult
      (\ s a -> s{_cLongValueHistogramResult = a})

-- | Stores the key of custom attribute the histogram is performed on.
cKey :: Lens' CustomAttributeHistogramResult (Maybe Text)
cKey = lens _cKey (\ s a -> s{_cKey = a})

instance FromJSON CustomAttributeHistogramResult
         where
        parseJSON
          = withObject "CustomAttributeHistogramResult"
              (\ o ->
                 CustomAttributeHistogramResult' <$>
                   (o .:? "stringValueHistogramResult") <*>
                     (o .:? "longValueHistogramResult")
                     <*> (o .:? "key"))

instance ToJSON CustomAttributeHistogramResult where
        toJSON CustomAttributeHistogramResult'{..}
          = object
              (catMaybes
                 [("stringValueHistogramResult" .=) <$>
                    _cStringValueHistogramResult,
                  ("longValueHistogramResult" .=) <$>
                    _cLongValueHistogramResult,
                  ("key" .=) <$> _cKey])

-- | Represents starting and ending value of a range in double.
--
-- /See:/ 'bucketRange' smart constructor.
data BucketRange =
  BucketRange'
    { _brTo   :: !(Maybe (Textual Double))
    , _brFrom :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BucketRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'brTo'
--
-- * 'brFrom'
bucketRange
    :: BucketRange
bucketRange = BucketRange' {_brTo = Nothing, _brFrom = Nothing}


-- | Ending value of the bucket range.
brTo :: Lens' BucketRange (Maybe Double)
brTo
  = lens _brTo (\ s a -> s{_brTo = a}) .
      mapping _Coerce

-- | Starting value of the bucket range.
brFrom :: Lens' BucketRange (Maybe Double)
brFrom
  = lens _brFrom (\ s a -> s{_brFrom = a}) .
      mapping _Coerce

instance FromJSON BucketRange where
        parseJSON
          = withObject "BucketRange"
              (\ o ->
                 BucketRange' <$> (o .:? "to") <*> (o .:? "from"))

instance ToJSON BucketRange where
        toJSON BucketRange'{..}
          = object
              (catMaybes
                 [("to" .=) <$> _brTo, ("from" .=) <$> _brFrom])

-- | Output only. Custom numeric bucketing result.
--
-- /See:/ 'numericBucketingResult' smart constructor.
data NumericBucketingResult =
  NumericBucketingResult'
    { _nbrMaxValue :: !(Maybe (Textual Double))
    , _nbrCounts   :: !(Maybe [BucketizedCount])
    , _nbrMinValue :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NumericBucketingResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nbrMaxValue'
--
-- * 'nbrCounts'
--
-- * 'nbrMinValue'
numericBucketingResult
    :: NumericBucketingResult
numericBucketingResult =
  NumericBucketingResult'
    {_nbrMaxValue = Nothing, _nbrCounts = Nothing, _nbrMinValue = Nothing}


-- | Stores the maximum value of the numeric field. Is populated only if
-- [NumericBucketingOption.requires_min_max] is set to true.
nbrMaxValue :: Lens' NumericBucketingResult (Maybe Double)
nbrMaxValue
  = lens _nbrMaxValue (\ s a -> s{_nbrMaxValue = a}) .
      mapping _Coerce

-- | Count within each bucket. Its size is the length of
-- NumericBucketingOption.bucket_bounds plus 1.
nbrCounts :: Lens' NumericBucketingResult [BucketizedCount]
nbrCounts
  = lens _nbrCounts (\ s a -> s{_nbrCounts = a}) .
      _Default
      . _Coerce

-- | Stores the minimum value of the numeric field. Will be populated only if
-- [NumericBucketingOption.requires_min_max] is set to true.
nbrMinValue :: Lens' NumericBucketingResult (Maybe Double)
nbrMinValue
  = lens _nbrMinValue (\ s a -> s{_nbrMinValue = a}) .
      mapping _Coerce

instance FromJSON NumericBucketingResult where
        parseJSON
          = withObject "NumericBucketingResult"
              (\ o ->
                 NumericBucketingResult' <$>
                   (o .:? "maxValue") <*> (o .:? "counts" .!= mempty)
                     <*> (o .:? "minValue"))

instance ToJSON NumericBucketingResult where
        toJSON NumericBucketingResult'{..}
          = object
              (catMaybes
                 [("maxValue" .=) <$> _nbrMaxValue,
                  ("counts" .=) <$> _nbrCounts,
                  ("minValue" .=) <$> _nbrMinValue])

-- | Output only. Derived details about the job posting.
--
-- /See:/ 'jobDerivedInfo' smart constructor.
data JobDerivedInfo =
  JobDerivedInfo'
    { _jdiJobCategories :: !(Maybe [Text])
    , _jdiLocations     :: !(Maybe [Location])
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
jdiJobCategories :: Lens' JobDerivedInfo [Text]
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
-- Company.hq_location if provided.
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

-- | Input only. Filter on job compensation type and amount.
--
-- /See:/ 'compensationFilter' smart constructor.
data CompensationFilter =
  CompensationFilter'
    { _cfIncludeJobsWithUnspecifiedCompensationRange :: !(Maybe Bool)
    , _cfRange                                       :: !(Maybe CompensationRange)
    , _cfUnits                                       :: !(Maybe [Text])
    , _cfType                                        :: !(Maybe CompensationFilterType)
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


-- | Optional. Whether to include jobs whose compensation range is
-- unspecified.
cfIncludeJobsWithUnspecifiedCompensationRange :: Lens' CompensationFilter (Maybe Bool)
cfIncludeJobsWithUnspecifiedCompensationRange
  = lens _cfIncludeJobsWithUnspecifiedCompensationRange
      (\ s a ->
         s{_cfIncludeJobsWithUnspecifiedCompensationRange =
             a})

-- | Optional. Compensation range.
cfRange :: Lens' CompensationFilter (Maybe CompensationRange)
cfRange = lens _cfRange (\ s a -> s{_cfRange = a})

-- | Required. Specify desired \`base compensation entry\'s\`
-- CompensationInfo.CompensationUnit.
cfUnits :: Lens' CompensationFilter [Text]
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

-- | A Company resource represents a company in the service. A company is the
-- entity that owns job postings, that is, the hiring entity responsible
-- for employing applicants for the job position.
--
-- /See:/ 'company' smart constructor.
data Company =
  Company'
    { _cHiringAgency                         :: !(Maybe Bool)
    , _cCareerSiteURI                        :: !(Maybe Text)
    , _cEeoText                              :: !(Maybe Text)
    , _cSize                                 :: !(Maybe CompanySize)
    , _cWebsiteURI                           :: !(Maybe Text)
    , _cSuspended                            :: !(Maybe Bool)
    , _cKeywordSearchableJobCustomAttributes :: !(Maybe [Text])
    , _cImageURI                             :: !(Maybe Text)
    , _cHeadquartersAddress                  :: !(Maybe Text)
    , _cName                                 :: !(Maybe Text)
    , _cDisplayName                          :: !(Maybe Text)
    , _cExternalId                           :: !(Maybe Text)
    , _cDerivedInfo                          :: !(Maybe CompanyDerivedInfo)
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


-- | Optional. Set to true if it is the hiring agency that post jobs for
-- other employers. Defaults to false if not provided.
cHiringAgency :: Lens' Company (Maybe Bool)
cHiringAgency
  = lens _cHiringAgency
      (\ s a -> s{_cHiringAgency = a})

-- | Optional. The URI to employer\'s career site or careers page on the
-- employer\'s web site, for example, \"https:\/\/careers.google.com\".
cCareerSiteURI :: Lens' Company (Maybe Text)
cCareerSiteURI
  = lens _cCareerSiteURI
      (\ s a -> s{_cCareerSiteURI = a})

-- | Optional. Equal Employment Opportunity legal disclaimer text to be
-- associated with all jobs, and typically to be displayed in all roles.
-- The maximum number of allowed characters is 500.
cEeoText :: Lens' Company (Maybe Text)
cEeoText = lens _cEeoText (\ s a -> s{_cEeoText = a})

-- | Optional. The employer\'s company size.
cSize :: Lens' Company (Maybe CompanySize)
cSize = lens _cSize (\ s a -> s{_cSize = a})

-- | Optional. The URI representing the company\'s primary web site or home
-- page, for example, \"https:\/\/www.google.com\". The maximum number of
-- allowed characters is 255.
cWebsiteURI :: Lens' Company (Maybe Text)
cWebsiteURI
  = lens _cWebsiteURI (\ s a -> s{_cWebsiteURI = a})

-- | Output only. Indicates whether a company is flagged to be suspended from
-- public availability by the service when job content appears suspicious,
-- abusive, or spammy.
cSuspended :: Lens' Company (Maybe Bool)
cSuspended
  = lens _cSuspended (\ s a -> s{_cSuspended = a})

-- | Optional. A list of keys of filterable Job.custom_attributes, whose
-- corresponding \`string_values\` are used in keyword search. Jobs with
-- \`string_values\` under these specified field keys are returned if any
-- of the values matches the search keyword. Custom field values with
-- parenthesis, brackets and special symbols won\'t be properly searchable,
-- and those keyword queries need to be surrounded by quotes.
cKeywordSearchableJobCustomAttributes :: Lens' Company [Text]
cKeywordSearchableJobCustomAttributes
  = lens _cKeywordSearchableJobCustomAttributes
      (\ s a ->
         s{_cKeywordSearchableJobCustomAttributes = a})
      . _Default
      . _Coerce

-- | Optional. A URI that hosts the employer\'s company logo.
cImageURI :: Lens' Company (Maybe Text)
cImageURI
  = lens _cImageURI (\ s a -> s{_cImageURI = a})

-- | Optional. The street address of the company\'s main headquarters, which
-- may be different from the job location. The service attempts to
-- geolocate the provided address, and populates a more specific location
-- wherever possible in DerivedInfo.headquarters_location.
cHeadquartersAddress :: Lens' Company (Maybe Text)
cHeadquartersAddress
  = lens _cHeadquartersAddress
      (\ s a -> s{_cHeadquartersAddress = a})

-- | Required during company update. The resource name for a company. This is
-- generated by the service when a company is created. The format is
-- \"projects\/{project_id}\/companies\/{company_id}\", for example,
-- \"projects\/api-test-project\/companies\/foo\".
cName :: Lens' Company (Maybe Text)
cName = lens _cName (\ s a -> s{_cName = a})

-- | Required. The display name of the company, for example, \"Google, LLC\".
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
    { _caLongValues   :: !(Maybe [Textual Int64])
    , _caFilterable   :: !(Maybe Bool)
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
-- * 'caStringValues'
customAttribute
    :: CustomAttribute
customAttribute =
  CustomAttribute'
    { _caLongValues = Nothing
    , _caFilterable = Nothing
    , _caStringValues = Nothing
    }


-- | Optional but exactly one of string_values or long_values must be
-- specified. This field is used to perform number range search. (\`EQ\`,
-- \`GT\`, \`GE\`, \`LE\`, \`LT\`) over filterable \`long_value\`.
-- Currently at most 1 long_values is supported.
caLongValues :: Lens' CustomAttribute [Int64]
caLongValues
  = lens _caLongValues (\ s a -> s{_caLongValues = a})
      . _Default
      . _Coerce

-- | Optional. If the \`filterable\` flag is true, custom field values are
-- searchable. If false, values are not searchable. Default is false.
caFilterable :: Lens' CustomAttribute (Maybe Bool)
caFilterable
  = lens _caFilterable (\ s a -> s{_caFilterable = a})

-- | Optional but exactly one of string_values or long_values must be
-- specified. This field is used to perform a string match
-- (\`CASE_SENSITIVE_MATCH\` or \`CASE_INSENSITIVE_MATCH\`) search. For
-- filterable \`string_value\`s, a maximum total number of 200 values is
-- allowed, with each \`string_value\` has a byte size of no more than
-- 255B. For unfilterable \`string_values\`, the maximum total byte size of
-- unfilterable \`string_values\` is 50KB. Empty string is not allowed.
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
                     <*> (o .:? "stringValues" .!= mempty))

instance ToJSON CustomAttribute where
        toJSON CustomAttribute'{..}
          = object
              (catMaybes
                 [("longValues" .=) <$> _caLongValues,
                  ("filterable" .=) <$> _caFilterable,
                  ("stringValues" .=) <$> _caStringValues])

-- | A Job resource represents a job posting (also referred to as a \"job
-- listing\" or \"job requisition\"). A job belongs to a Company, which is
-- the hiring entity responsible for the job.
--
-- /See:/ 'job' smart constructor.
data Job =
  Job'
    { _jDePartment         :: !(Maybe Text)
    , _jApplicationInfo    :: !(Maybe ApplicationInfo)
    , _jLanguageCode       :: !(Maybe Text)
    , _jCompensationInfo   :: !(Maybe CompensationInfo)
    , _jResponsibilities   :: !(Maybe Text)
    , _jJobStartTime       :: !(Maybe DateTime')
    , _jPromotionValue     :: !(Maybe (Textual Int32))
    , _jCompanyName        :: !(Maybe Text)
    , _jAddresses          :: !(Maybe [Text])
    , _jJobBenefits        :: !(Maybe [Text])
    , _jVisibility         :: !(Maybe JobVisibility)
    , _jJobLevel           :: !(Maybe JobJobLevel)
    , _jPostingUpdateTime  :: !(Maybe DateTime')
    , _jCustomAttributes   :: !(Maybe JobCustomAttributes)
    , _jPostingPublishTime :: !(Maybe DateTime')
    , _jName               :: !(Maybe Text)
    , _jDegreeTypes        :: !(Maybe [Text])
    , _jQualifications     :: !(Maybe Text)
    , _jCompanyDisplayName :: !(Maybe Text)
    , _jIncentives         :: !(Maybe Text)
    , _jJobEndTime         :: !(Maybe DateTime')
    , _jPostingRegion      :: !(Maybe JobPostingRegion)
    , _jTitle              :: !(Maybe Text)
    , _jEmploymentTypes    :: !(Maybe [Text])
    , _jDerivedInfo        :: !(Maybe JobDerivedInfo)
    , _jProcessingOptions  :: !(Maybe ProcessingOptions)
    , _jPostingExpireTime  :: !(Maybe DateTime')
    , _jDescription        :: !(Maybe Text)
    , _jRequisitionId      :: !(Maybe Text)
    , _jPostingCreateTime  :: !(Maybe DateTime')
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
-- * 'jCompanyName'
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
    , _jCompanyName = Nothing
    , _jAddresses = Nothing
    , _jJobBenefits = Nothing
    , _jVisibility = Nothing
    , _jJobLevel = Nothing
    , _jPostingUpdateTime = Nothing
    , _jCustomAttributes = Nothing
    , _jPostingPublishTime = Nothing
    , _jName = Nothing
    , _jDegreeTypes = Nothing
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


-- | Optional. The department or functional area within the company with the
-- open position. The maximum number of allowed characters is 255.
jDePartment :: Lens' Job (Maybe Text)
jDePartment
  = lens _jDePartment (\ s a -> s{_jDePartment = a})

-- | Required. At least one field within ApplicationInfo must be specified.
-- Job application information.
jApplicationInfo :: Lens' Job (Maybe ApplicationInfo)
jApplicationInfo
  = lens _jApplicationInfo
      (\ s a -> s{_jApplicationInfo = a})

-- | Optional. The language of the posting. This field is distinct from any
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

-- | Optional. Job compensation information.
jCompensationInfo :: Lens' Job (Maybe CompensationInfo)
jCompensationInfo
  = lens _jCompensationInfo
      (\ s a -> s{_jCompensationInfo = a})

-- | Optional. A description of job responsibilities. The use of this field
-- is recommended as an alternative to using the more general description
-- field. This field accepts and sanitizes HTML input, and also accepts
-- bold, italic, ordered list, and unordered list markup tags. The maximum
-- number of allowed characters is 10,000.
jResponsibilities :: Lens' Job (Maybe Text)
jResponsibilities
  = lens _jResponsibilities
      (\ s a -> s{_jResponsibilities = a})

-- | Optional. The start timestamp of the job in UTC time zone. Typically
-- this field is used for contracting engagements. Invalid timestamps are
-- ignored.
jJobStartTime :: Lens' Job (Maybe UTCTime)
jJobStartTime
  = lens _jJobStartTime
      (\ s a -> s{_jJobStartTime = a})
      . mapping _DateTime

-- | Optional. A promotion value of the job, as determined by the client. The
-- value determines the sort order of the jobs returned when searching for
-- jobs using the featured jobs search call, with higher promotional values
-- being returned first and ties being resolved by relevance sort. Only the
-- jobs with a promotionValue >0 are returned in a FEATURED_JOB_SEARCH.
-- Default value is 0, and negative values are treated as 0.
jPromotionValue :: Lens' Job (Maybe Int32)
jPromotionValue
  = lens _jPromotionValue
      (\ s a -> s{_jPromotionValue = a})
      . mapping _Coerce

-- | Required. The resource name of the company listing the job, such as
-- \"projects\/api-test-project\/companies\/foo\".
jCompanyName :: Lens' Job (Maybe Text)
jCompanyName
  = lens _jCompanyName (\ s a -> s{_jCompanyName = a})

-- | Optional but strongly recommended for the best service experience.
-- Location(s) where the employer is looking to hire for this job posting.
-- Specifying the full street address(es) of the hiring location enables
-- better API results, especially job searches by commute time. At most 50
-- locations are allowed for best search performance. If a job has more
-- locations, it is suggested to split it into multiple jobs with unique
-- requisition_ids (e.g. \'ReqA\' becomes \'ReqA-1\', \'ReqA-2\', etc.) as
-- multiple jobs with the same company_name, language_code and
-- requisition_id are not allowed. If the original requisition_id must be
-- preserved, a custom field should be used for storage. It is also
-- suggested to group the locations that close to each other in the same
-- job for better search experience. The maximum number of allowed
-- characters is 500.
jAddresses :: Lens' Job [Text]
jAddresses
  = lens _jAddresses (\ s a -> s{_jAddresses = a}) .
      _Default
      . _Coerce

-- | Optional. The benefits included with the job.
jJobBenefits :: Lens' Job [Text]
jJobBenefits
  = lens _jJobBenefits (\ s a -> s{_jJobBenefits = a})
      . _Default
      . _Coerce

-- | Optional. The visibility of the job. Defaults to Visibility.ACCOUNT_ONLY
-- if not specified.
jVisibility :: Lens' Job (Maybe JobVisibility)
jVisibility
  = lens _jVisibility (\ s a -> s{_jVisibility = a})

-- | Optional. The experience level associated with the job, such as \"Entry
-- Level\".
jJobLevel :: Lens' Job (Maybe JobJobLevel)
jJobLevel
  = lens _jJobLevel (\ s a -> s{_jJobLevel = a})

-- | Output only. The timestamp when this job posting was last updated.
jPostingUpdateTime :: Lens' Job (Maybe UTCTime)
jPostingUpdateTime
  = lens _jPostingUpdateTime
      (\ s a -> s{_jPostingUpdateTime = a})
      . mapping _DateTime

-- | Optional. A map of fields to hold both filterable and non-filterable
-- custom job attributes that are not covered by the provided structured
-- fields. The keys of the map are strings up to 64 bytes and must match
-- the pattern: a-zA-Z*. For example, key0LikeThis or KEY_1_LIKE_THIS. At
-- most 100 filterable and at most 100 unfilterable keys are supported. For
-- filterable \`string_values\`, across all keys at most 200 values are
-- allowed, with each string no more than 255 characters. For unfilterable
-- \`string_values\`, the maximum total size of \`string_values\` across
-- all keys is 50KB.
jCustomAttributes :: Lens' Job (Maybe JobCustomAttributes)
jCustomAttributes
  = lens _jCustomAttributes
      (\ s a -> s{_jCustomAttributes = a})

-- | Optional. The timestamp this job posting was most recently published.
-- The default value is the time the request arrives at the server. Invalid
-- timestamps are ignored.
jPostingPublishTime :: Lens' Job (Maybe UTCTime)
jPostingPublishTime
  = lens _jPostingPublishTime
      (\ s a -> s{_jPostingPublishTime = a})
      . mapping _DateTime

-- | Required during job update. The resource name for the job. This is
-- generated by the service when a job is created. The format is
-- \"projects\/{project_id}\/jobs\/{job_id}\", for example,
-- \"projects\/api-test-project\/jobs\/1234\". Use of this field in job
-- queries and API calls is preferred over the use of requisition_id since
-- this value is unique.
jName :: Lens' Job (Maybe Text)
jName = lens _jName (\ s a -> s{_jName = a})

-- | Optional. The desired education degrees for the job, such as Bachelors,
-- Masters.
jDegreeTypes :: Lens' Job [Text]
jDegreeTypes
  = lens _jDegreeTypes (\ s a -> s{_jDegreeTypes = a})
      . _Default
      . _Coerce

-- | Optional. A description of the qualifications required to perform the
-- job. The use of this field is recommended as an alternative to using the
-- more general description field. This field accepts and sanitizes HTML
-- input, and also accepts bold, italic, ordered list, and unordered list
-- markup tags. The maximum number of allowed characters is 10,000.
jQualifications :: Lens' Job (Maybe Text)
jQualifications
  = lens _jQualifications
      (\ s a -> s{_jQualifications = a})

-- | Output only. Display name of the company listing the job.
jCompanyDisplayName :: Lens' Job (Maybe Text)
jCompanyDisplayName
  = lens _jCompanyDisplayName
      (\ s a -> s{_jCompanyDisplayName = a})

-- | Optional. A description of bonus, commission, and other compensation
-- incentives associated with the job not including salary or pay. The
-- maximum number of allowed characters is 10,000.
jIncentives :: Lens' Job (Maybe Text)
jIncentives
  = lens _jIncentives (\ s a -> s{_jIncentives = a})

-- | Optional. The end timestamp of the job. Typically this field is used for
-- contracting engagements. Invalid timestamps are ignored.
jJobEndTime :: Lens' Job (Maybe UTCTime)
jJobEndTime
  = lens _jJobEndTime (\ s a -> s{_jJobEndTime = a}) .
      mapping _DateTime

-- | Optional. The job PostingRegion (for example, state, country) throughout
-- which the job is available. If this field is set, a LocationFilter in a
-- search query within the job region finds this job posting if an exact
-- location match isn\'t specified. If this field is set to
-- PostingRegion.NATION or PostingRegion.ADMINISTRATIVE_AREA, setting job
-- Job.addresses to the same location level as this field is strongly
-- recommended.
jPostingRegion :: Lens' Job (Maybe JobPostingRegion)
jPostingRegion
  = lens _jPostingRegion
      (\ s a -> s{_jPostingRegion = a})

-- | Required. The title of the job, such as \"Software Engineer\" The
-- maximum number of allowed characters is 500.
jTitle :: Lens' Job (Maybe Text)
jTitle = lens _jTitle (\ s a -> s{_jTitle = a})

-- | Optional. The employment type(s) of a job, for example, full time or
-- part time.
jEmploymentTypes :: Lens' Job [Text]
jEmploymentTypes
  = lens _jEmploymentTypes
      (\ s a -> s{_jEmploymentTypes = a})
      . _Default
      . _Coerce

-- | Output only. Derived details about the job posting.
jDerivedInfo :: Lens' Job (Maybe JobDerivedInfo)
jDerivedInfo
  = lens _jDerivedInfo (\ s a -> s{_jDerivedInfo = a})

-- | Optional. Options for job processing.
jProcessingOptions :: Lens' Job (Maybe ProcessingOptions)
jProcessingOptions
  = lens _jProcessingOptions
      (\ s a -> s{_jProcessingOptions = a})

-- | Optional but strongly recommended for the best service experience. The
-- expiration timestamp of the job. After this timestamp, the job is marked
-- as expired, and it no longer appears in search results. The expired job
-- can\'t be deleted or listed by the DeleteJob and ListJobs APIs, but it
-- can be retrieved with the GetJob API or updated with the UpdateJob API.
-- An expired job can be updated and opened again by using a future
-- expiration timestamp. Updating an expired job fails if there is another
-- existing open job with same company_name, language_code and
-- requisition_id. The expired jobs are retained in our system for 90 days.
-- However, the overall expired job count cannot exceed 3 times the maximum
-- of open jobs count over the past week, otherwise jobs with earlier
-- expire time are cleaned first. Expired jobs are no longer accessible
-- after they are cleaned out. Invalid timestamps are ignored, and treated
-- as expire time not provided. Timestamp before the instant request is
-- made is considered valid, the job will be treated as expired
-- immediately. If this value is not provided at the time of job creation
-- or is invalid, the job posting expires after 30 days from the job\'s
-- creation time. For example, if the job was created on 2017\/01\/01
-- 13:00AM UTC with an unspecified expiration date, the job expires after
-- 2017\/01\/31 13:00AM UTC. If this value is not provided on job update,
-- it depends on the field masks set by UpdateJobRequest.update_mask. If
-- the field masks include expiry_time, or the masks are empty meaning that
-- every field is updated, the job posting expires after 30 days from the
-- job\'s last update time. Otherwise the expiration date isn\'t updated.
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

-- | Required. The requisition ID, also referred to as the posting ID,
-- assigned by the client to identify a job. This field is intended to be
-- used by clients for client identification and tracking of postings. A
-- job is not allowed to be created if there is another job with the same
-- [company_name], language_code and requisition_id. The maximum number of
-- allowed characters is 255.
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
                     <*> (o .:? "companyName")
                     <*> (o .:? "addresses" .!= mempty)
                     <*> (o .:? "jobBenefits" .!= mempty)
                     <*> (o .:? "visibility")
                     <*> (o .:? "jobLevel")
                     <*> (o .:? "postingUpdateTime")
                     <*> (o .:? "customAttributes")
                     <*> (o .:? "postingPublishTime")
                     <*> (o .:? "name")
                     <*> (o .:? "degreeTypes" .!= mempty)
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
                  ("companyName" .=) <$> _jCompanyName,
                  ("addresses" .=) <$> _jAddresses,
                  ("jobBenefits" .=) <$> _jJobBenefits,
                  ("visibility" .=) <$> _jVisibility,
                  ("jobLevel" .=) <$> _jJobLevel,
                  ("postingUpdateTime" .=) <$> _jPostingUpdateTime,
                  ("customAttributes" .=) <$> _jCustomAttributes,
                  ("postingPublishTime" .=) <$> _jPostingPublishTime,
                  ("name" .=) <$> _jName,
                  ("degreeTypes" .=) <$> _jDegreeTypes,
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

-- | Output only. Histogram results that match HistogramFacets specified in
-- SearchJobsRequest.
--
-- /See:/ 'histogramResults' smart constructor.
data HistogramResults =
  HistogramResults'
    { _hrSimpleHistogramResults          :: !(Maybe [HistogramResult])
    , _hrCustomAttributeHistogramResults :: !(Maybe [CustomAttributeHistogramResult])
    , _hrCompensationHistogramResults    :: !(Maybe [CompensationHistogramResult])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HistogramResults' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hrSimpleHistogramResults'
--
-- * 'hrCustomAttributeHistogramResults'
--
-- * 'hrCompensationHistogramResults'
histogramResults
    :: HistogramResults
histogramResults =
  HistogramResults'
    { _hrSimpleHistogramResults = Nothing
    , _hrCustomAttributeHistogramResults = Nothing
    , _hrCompensationHistogramResults = Nothing
    }


-- | Specifies histogram results that matches
-- HistogramFacets.simple_histogram_facets.
hrSimpleHistogramResults :: Lens' HistogramResults [HistogramResult]
hrSimpleHistogramResults
  = lens _hrSimpleHistogramResults
      (\ s a -> s{_hrSimpleHistogramResults = a})
      . _Default
      . _Coerce

-- | Specifies histogram results for custom attributes that match
-- HistogramFacets.custom_attribute_histogram_facets.
hrCustomAttributeHistogramResults :: Lens' HistogramResults [CustomAttributeHistogramResult]
hrCustomAttributeHistogramResults
  = lens _hrCustomAttributeHistogramResults
      (\ s a -> s{_hrCustomAttributeHistogramResults = a})
      . _Default
      . _Coerce

-- | Specifies compensation field-based histogram results that match
-- HistogramFacets.compensation_histogram_requests.
hrCompensationHistogramResults :: Lens' HistogramResults [CompensationHistogramResult]
hrCompensationHistogramResults
  = lens _hrCompensationHistogramResults
      (\ s a -> s{_hrCompensationHistogramResults = a})
      . _Default
      . _Coerce

instance FromJSON HistogramResults where
        parseJSON
          = withObject "HistogramResults"
              (\ o ->
                 HistogramResults' <$>
                   (o .:? "simpleHistogramResults" .!= mempty) <*>
                     (o .:? "customAttributeHistogramResults" .!= mempty)
                     <*>
                     (o .:? "compensationHistogramResults" .!= mempty))

instance ToJSON HistogramResults where
        toJSON HistogramResults'{..}
          = object
              (catMaybes
                 [("simpleHistogramResults" .=) <$>
                    _hrSimpleHistogramResults,
                  ("customAttributeHistogramResults" .=) <$>
                    _hrCustomAttributeHistogramResults,
                  ("compensationHistogramResults" .=) <$>
                    _hrCompensationHistogramResults])

-- | Input only. Geographic region of the search.
--
-- /See:/ 'locationFilter' smart constructor.
data LocationFilter =
  LocationFilter'
    { _lfLatLng                :: !(Maybe LatLng)
    , _lfDistanceInMiles       :: !(Maybe (Textual Double))
    , _lfRegionCode            :: !(Maybe Text)
    , _lfTelecommutePreference :: !(Maybe LocationFilterTelecommutePreference)
    , _lfAddress               :: !(Maybe Text)
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


-- | Optional. The latitude and longitude of the geographic center from which
-- to search. This field\'s ignored if \`address\` is provided.
lfLatLng :: Lens' LocationFilter (Maybe LatLng)
lfLatLng = lens _lfLatLng (\ s a -> s{_lfLatLng = a})

-- | Optional. The distance_in_miles is applied when the location being
-- searched for is identified as a city or smaller. When the location being
-- searched for is a state or larger, this field is ignored.
lfDistanceInMiles :: Lens' LocationFilter (Maybe Double)
lfDistanceInMiles
  = lens _lfDistanceInMiles
      (\ s a -> s{_lfDistanceInMiles = a})
      . mapping _Coerce

-- | Optional. CLDR region code of the country\/region of the address. This
-- is used to address ambiguity of the user-input location, for example,
-- \"Liverpool\" against \"Liverpool, NY, US\" or \"Liverpool, UK\". Set
-- this field if all the jobs to search against are from a same region, or
-- jobs are world-wide, but the job seeker is from a specific region. See
-- http:\/\/cldr.unicode.org\/ and
-- http:\/\/www.unicode.org\/cldr\/charts\/30\/supplemental\/territory_information.html
-- for details. Example: \"CH\" for Switzerland.
lfRegionCode :: Lens' LocationFilter (Maybe Text)
lfRegionCode
  = lens _lfRegionCode (\ s a -> s{_lfRegionCode = a})

-- | Optional. Allows the client to return jobs without a set location,
-- specifically, telecommuting jobs (telecomuting is considered by the
-- service as a special location. Job.posting_region indicates if a job
-- permits telecommuting. If this field is set to
-- TelecommutePreference.TELECOMMUTE_ALLOWED, telecommuting jobs are
-- searched, and address and lat_lng are ignored. If not set or set to
-- TelecommutePreference.TELECOMMUTE_EXCLUDED, telecommute job are not
-- searched. This filter can be used by itself to search exclusively for
-- telecommuting jobs, or it can be combined with another location filter
-- to search for a combination of job locations, such as \"Mountain View\"
-- or \"telecommuting\" jobs. However, when used in combination with other
-- location filters, telecommuting jobs can be treated as less relevant
-- than other jobs in the search response.
lfTelecommutePreference :: Lens' LocationFilter (Maybe LocationFilterTelecommutePreference)
lfTelecommutePreference
  = lens _lfTelecommutePreference
      (\ s a -> s{_lfTelecommutePreference = a})

-- | Optional. The address name, such as \"Mountain View\" or \"Bay Area\".
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

-- | Output only. List jobs response.
--
-- /See:/ 'listJobsResponse' smart constructor.
data ListJobsResponse =
  ListJobsResponse'
    { _ljrNextPageToken :: !(Maybe Text)
    , _ljrJobs          :: !(Maybe [Job])
    , _ljrMetadata      :: !(Maybe ResponseMetadata)
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

-- | Output only. Compensation based histogram result.
--
-- /See:/ 'compensationHistogramResult' smart constructor.
data CompensationHistogramResult =
  CompensationHistogramResult'
    { _cResult :: !(Maybe NumericBucketingResult)
    , _cType   :: !(Maybe CompensationHistogramResultType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CompensationHistogramResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cResult'
--
-- * 'cType'
compensationHistogramResult
    :: CompensationHistogramResult
compensationHistogramResult =
  CompensationHistogramResult' {_cResult = Nothing, _cType = Nothing}


-- | Histogram result.
cResult :: Lens' CompensationHistogramResult (Maybe NumericBucketingResult)
cResult = lens _cResult (\ s a -> s{_cResult = a})

-- | Type of the request, corresponding to CompensationHistogramRequest.type.
cType :: Lens' CompensationHistogramResult (Maybe CompensationHistogramResultType)
cType = lens _cType (\ s a -> s{_cType = a})

instance FromJSON CompensationHistogramResult where
        parseJSON
          = withObject "CompensationHistogramResult"
              (\ o ->
                 CompensationHistogramResult' <$>
                   (o .:? "result") <*> (o .:? "type"))

instance ToJSON CompensationHistogramResult where
        toJSON CompensationHistogramResult'{..}
          = object
              (catMaybes
                 [("result" .=) <$> _cResult, ("type" .=) <$> _cType])

-- | Input only. The query required to perform a search query.
--
-- /See:/ 'jobQuery' smart constructor.
data JobQuery =
  JobQuery'
    { _jqLanguageCodes         :: !(Maybe [Text])
    , _jqDisableSpellCheck     :: !(Maybe Bool)
    , _jqCustomAttributeFilter :: !(Maybe Text)
    , _jqCommuteFilter         :: !(Maybe CommuteFilter)
    , _jqPublishTimeRange      :: !(Maybe TimestampRange)
    , _jqLocationFilters       :: !(Maybe [LocationFilter])
    , _jqCompanyDisplayNames   :: !(Maybe [Text])
    , _jqJobCategories         :: !(Maybe [Text])
    , _jqCompensationFilter    :: !(Maybe CompensationFilter)
    , _jqQuery                 :: !(Maybe Text)
    , _jqCompanyNames          :: !(Maybe [Text])
    , _jqEmploymentTypes       :: !(Maybe [Text])
    , _jqExcludedJobs          :: !(Maybe [Text])
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
-- * 'jqCompensationFilter'
--
-- * 'jqQuery'
--
-- * 'jqCompanyNames'
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
    , _jqCompensationFilter = Nothing
    , _jqQuery = Nothing
    , _jqCompanyNames = Nothing
    , _jqEmploymentTypes = Nothing
    , _jqExcludedJobs = Nothing
    }


-- | Optional. This filter specifies the locale of jobs to search against,
-- for example, \"en-US\". If a value isn\'t specified, the search results
-- can contain jobs in any locale. Language codes should be in BCP-47
-- format, such as \"en-US\" or \"sr-Latn\". For more information, see
-- [Tags for Identifying Languages](https:\/\/tools.ietf.org\/html\/bcp47).
-- At most 10 language code filters are allowed.
jqLanguageCodes :: Lens' JobQuery [Text]
jqLanguageCodes
  = lens _jqLanguageCodes
      (\ s a -> s{_jqLanguageCodes = a})
      . _Default
      . _Coerce

-- | Optional. This flag controls the spell-check feature. If false, the
-- service attempts to correct a misspelled query, for example, \"enginee\"
-- is corrected to \"engineer\". Defaults to false: a spell check is
-- performed.
jqDisableSpellCheck :: Lens' JobQuery (Maybe Bool)
jqDisableSpellCheck
  = lens _jqDisableSpellCheck
      (\ s a -> s{_jqDisableSpellCheck = a})

-- | Optional. This filter specifies a structured syntax to match against the
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
-- expression. The expression must be \< 3000 bytes in length. Sample
-- Query: \`(LOWER(driving_license)=\"class \\\"a\\\"\" OR
-- EMPTY(driving_license)) AND driving_years > 10\`
jqCustomAttributeFilter :: Lens' JobQuery (Maybe Text)
jqCustomAttributeFilter
  = lens _jqCustomAttributeFilter
      (\ s a -> s{_jqCustomAttributeFilter = a})

-- | Optional. Allows filtering jobs by commute time with different travel
-- methods (for example, driving or public transit). Note: This only works
-- with COMMUTE MODE. When specified, [JobQuery.location_filters] is
-- ignored. Currently we don\'t support sorting by commute time.
jqCommuteFilter :: Lens' JobQuery (Maybe CommuteFilter)
jqCommuteFilter
  = lens _jqCommuteFilter
      (\ s a -> s{_jqCommuteFilter = a})

-- | Optional. Jobs published within a range specified by this filter are
-- searched against.
jqPublishTimeRange :: Lens' JobQuery (Maybe TimestampRange)
jqPublishTimeRange
  = lens _jqPublishTimeRange
      (\ s a -> s{_jqPublishTimeRange = a})

-- | Optional. The location filter specifies geo-regions containing the jobs
-- to search against. See LocationFilter for more information. If a
-- location value isn\'t specified, jobs fitting the other search criteria
-- are retrieved regardless of where they\'re located. If multiple values
-- are specified, jobs are retrieved from any of the specified locations.
-- If different values are specified for the
-- LocationFilter.distance_in_miles parameter, the maximum provided
-- distance is used for all locations. At most 5 location filters are
-- allowed.
jqLocationFilters :: Lens' JobQuery [LocationFilter]
jqLocationFilters
  = lens _jqLocationFilters
      (\ s a -> s{_jqLocationFilters = a})
      . _Default
      . _Coerce

-- | Optional. This filter specifies the exact company display name of the
-- jobs to search against. If a value isn\'t specified, jobs within the
-- search results are associated with any company. If multiple values are
-- specified, jobs within the search results may be associated with any of
-- the specified companies. At most 20 company display name filters are
-- allowed.
jqCompanyDisplayNames :: Lens' JobQuery [Text]
jqCompanyDisplayNames
  = lens _jqCompanyDisplayNames
      (\ s a -> s{_jqCompanyDisplayNames = a})
      . _Default
      . _Coerce

-- | Optional. The category filter specifies the categories of jobs to search
-- against. See Category for more information. If a value is not specified,
-- jobs from any category are searched against. If multiple values are
-- specified, jobs from any of the specified categories are searched
-- against.
jqJobCategories :: Lens' JobQuery [Text]
jqJobCategories
  = lens _jqJobCategories
      (\ s a -> s{_jqJobCategories = a})
      . _Default
      . _Coerce

-- | Optional. This search filter is applied only to Job.compensation_info.
-- For example, if the filter is specified as \"Hourly job with per-hour
-- compensation > $15\", only jobs meeting these criteria are searched. If
-- a filter isn\'t defined, all open jobs are searched.
jqCompensationFilter :: Lens' JobQuery (Maybe CompensationFilter)
jqCompensationFilter
  = lens _jqCompensationFilter
      (\ s a -> s{_jqCompensationFilter = a})

-- | Optional. The query string that matches against the job title,
-- description, and location fields. The maximum number of allowed
-- characters is 255.
jqQuery :: Lens' JobQuery (Maybe Text)
jqQuery = lens _jqQuery (\ s a -> s{_jqQuery = a})

-- | Optional. This filter specifies the company entities to search against.
-- If a value isn\'t specified, jobs are searched for against all
-- companies. If multiple values are specified, jobs are searched against
-- the companies specified. The format is
-- \"projects\/{project_id}\/companies\/{company_id}\", for example,
-- \"projects\/api-test-project\/companies\/foo\". At most 20 company
-- filters are allowed.
jqCompanyNames :: Lens' JobQuery [Text]
jqCompanyNames
  = lens _jqCompanyNames
      (\ s a -> s{_jqCompanyNames = a})
      . _Default
      . _Coerce

-- | Optional. The employment type filter specifies the employment type of
-- jobs to search against, such as EmploymentType.FULL_TIME. If a value is
-- not specified, jobs in the search results includes any employment type.
-- If multiple values are specified, jobs in the search results include any
-- of the specified employment types.
jqEmploymentTypes :: Lens' JobQuery [Text]
jqEmploymentTypes
  = lens _jqEmploymentTypes
      (\ s a -> s{_jqEmploymentTypes = a})
      . _Default
      . _Coerce

-- | Optional. This filter specifies a list of job names to be excluded
-- during search. At most 200 excluded job names are allowed.
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
                     <*> (o .:? "compensationFilter")
                     <*> (o .:? "query")
                     <*> (o .:? "companyNames" .!= mempty)
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
                  ("compensationFilter" .=) <$> _jqCompensationFilter,
                  ("query" .=) <$> _jqQuery,
                  ("companyNames" .=) <$> _jqCompanyNames,
                  ("employmentTypes" .=) <$> _jqEmploymentTypes,
                  ("excludedJobs" .=) <$> _jqExcludedJobs])

-- | The report event request.
--
-- /See:/ 'createClientEventRequest' smart constructor.
newtype CreateClientEventRequest =
  CreateClientEventRequest'
    { _ccerClientEvent :: Maybe ClientEvent
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateClientEventRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccerClientEvent'
createClientEventRequest
    :: CreateClientEventRequest
createClientEventRequest =
  CreateClientEventRequest' {_ccerClientEvent = Nothing}


-- | Required. Events issued when end user interacts with customer\'s
-- application that uses Cloud Talent Solution.
ccerClientEvent :: Lens' CreateClientEventRequest (Maybe ClientEvent)
ccerClientEvent
  = lens _ccerClientEvent
      (\ s a -> s{_ccerClientEvent = a})

instance FromJSON CreateClientEventRequest where
        parseJSON
          = withObject "CreateClientEventRequest"
              (\ o ->
                 CreateClientEventRequest' <$> (o .:? "clientEvent"))

instance ToJSON CreateClientEventRequest where
        toJSON CreateClientEventRequest'{..}
          = object
              (catMaybes [("clientEvent" .=) <$> _ccerClientEvent])

-- | Output only. Spell check result.
--
-- /See:/ 'spellingCorrection' smart constructor.
data SpellingCorrection =
  SpellingCorrection'
    { _scCorrected     :: !(Maybe Bool)
    , _scCorrectedText :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SpellingCorrection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scCorrected'
--
-- * 'scCorrectedText'
spellingCorrection
    :: SpellingCorrection
spellingCorrection =
  SpellingCorrection' {_scCorrected = Nothing, _scCorrectedText = Nothing}


-- | Indicates if the query was corrected by the spell checker.
scCorrected :: Lens' SpellingCorrection (Maybe Bool)
scCorrected
  = lens _scCorrected (\ s a -> s{_scCorrected = a})

-- | Correction output consisting of the corrected keyword string.
scCorrectedText :: Lens' SpellingCorrection (Maybe Text)
scCorrectedText
  = lens _scCorrectedText
      (\ s a -> s{_scCorrectedText = a})

instance FromJSON SpellingCorrection where
        parseJSON
          = withObject "SpellingCorrection"
              (\ o ->
                 SpellingCorrection' <$>
                   (o .:? "corrected") <*> (o .:? "correctedText"))

instance ToJSON SpellingCorrection where
        toJSON SpellingCorrection'{..}
          = object
              (catMaybes
                 [("corrected" .=) <$> _scCorrected,
                  ("correctedText" .=) <$> _scCorrectedText])

-- | Output only. Response of auto-complete query.
--
-- /See:/ 'completeQueryResponse' smart constructor.
data CompleteQueryResponse =
  CompleteQueryResponse'
    { _cqrMetadata          :: !(Maybe ResponseMetadata)
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
    { _todNanos   :: !(Maybe (Textual Int32))
    , _todHours   :: !(Maybe (Textual Int32))
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
    { _ceAmount               :: !(Maybe Money)
    , _ceExpectedUnitsPerYear :: !(Maybe (Textual Double))
    , _ceRange                :: !(Maybe CompensationRange)
    , _ceType                 :: !(Maybe CompensationEntryType)
    , _ceDescription          :: !(Maybe Text)
    , _ceUnit                 :: !(Maybe CompensationEntryUnit)
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


-- | Optional. Compensation amount.
ceAmount :: Lens' CompensationEntry (Maybe Money)
ceAmount = lens _ceAmount (\ s a -> s{_ceAmount = a})

-- | Optional. Expected number of units paid each year. If not specified,
-- when Job.employment_types is FULLTIME, a default value is inferred based
-- on unit. Default values: - HOURLY: 2080 - DAILY: 260 - WEEKLY: 52 -
-- MONTHLY: 12 - ANNUAL: 1
ceExpectedUnitsPerYear :: Lens' CompensationEntry (Maybe Double)
ceExpectedUnitsPerYear
  = lens _ceExpectedUnitsPerYear
      (\ s a -> s{_ceExpectedUnitsPerYear = a})
      . mapping _Coerce

-- | Optional. Compensation range.
ceRange :: Lens' CompensationEntry (Maybe CompensationRange)
ceRange = lens _ceRange (\ s a -> s{_ceRange = a})

-- | Optional. Compensation type. Default is
-- CompensationUnit.OTHER_COMPENSATION_TYPE.
ceType :: Lens' CompensationEntry (Maybe CompensationEntryType)
ceType = lens _ceType (\ s a -> s{_ceType = a})

-- | Optional. Compensation description. For example, could indicate equity
-- terms or provide additional context to an estimated bonus.
ceDescription :: Lens' CompensationEntry (Maybe Text)
ceDescription
  = lens _ceDescription
      (\ s a -> s{_ceDescription = a})

-- | Optional. Frequency of the specified amount. Default is
-- CompensationUnit.OTHER_COMPENSATION_UNIT.
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


-- | Optional. The maximum amount of compensation. If left empty, the value
-- is set to a maximal compensation value and the currency code is set to
-- match the currency code of min_compensation.
crMaxCompensation :: Lens' CompensationRange (Maybe Money)
crMaxCompensation
  = lens _crMaxCompensation
      (\ s a -> s{_crMaxCompensation = a})

-- | Optional. The minimum amount of compensation. If left empty, the value
-- is set to zero and the currency code is set to match the currency code
-- of max_compensation.
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

-- | Input only. Custom ranking information for SearchJobsRequest.
--
-- /See:/ 'customRankingInfo' smart constructor.
data CustomRankingInfo =
  CustomRankingInfo'
    { _criImportanceLevel   :: !(Maybe CustomRankingInfoImportanceLevel)
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
-- relevance score (determined by API algorithm). The product of ranking
-- expression and relevance score is used to determine job\'s final ranking
-- position. The syntax for this expression is a subset of Google SQL
-- syntax. Supported operators are: +, -, *, \/, where the left and right
-- side of the operator is either a numeric Job.custom_attributes key,
-- integer\/double value or an expression that can be evaluated to a
-- number. Parenthesis are supported to adjust calculation precedence. The
-- expression must be \< 100 characters in length. Sample ranking
-- expression (year + 25) * 0.25 - (freshness \/ 0.5)
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

-- | Input only. Options for job processing.
--
-- /See:/ 'processingOptions' smart constructor.
data ProcessingOptions =
  ProcessingOptions'
    { _poHTMLSanitization               :: !(Maybe ProcessingOptionsHTMLSanitization)
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


-- | Optional. Option for job HTML content sanitization. Applied fields are:
-- * description * applicationInfo.instruction * incentives *
-- qualifications * responsibilities HTML tags in these fields may be
-- stripped if sanitiazation is not disabled. Defaults to
-- HtmlSanitization.SIMPLE_FORMATTING_ONLY.
poHTMLSanitization :: Lens' ProcessingOptions (Maybe ProcessingOptionsHTMLSanitization)
poHTMLSanitization
  = lens _poHTMLSanitization
      (\ s a -> s{_poHTMLSanitization = a})

-- | Optional. If set to \`true\`, the service does not attempt to resolve a
-- more precise address for the job.
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
-- https:\/\/github.com\/googlei18n\/libaddressinput) - Users should not be
-- presented with UI elements for input or editing of fields outside
-- countries where that field is used. For more guidance on how to use this
-- schema, please see:
-- https:\/\/support.google.com\/business\/answer\/6397478
--
-- /See:/ 'postalAddress' smart constructor.
data PostalAddress =
  PostalAddress'
    { _paLanguageCode       :: !(Maybe Text)
    , _paSortingCode        :: !(Maybe Text)
    , _paRegionCode         :: !(Maybe Text)
    , _paSublocality        :: !(Maybe Text)
    , _paPostalCode         :: !(Maybe Text)
    , _paLocality           :: !(Maybe Text)
    , _paRecipients         :: !(Maybe [Text])
    , _paAdministrativeArea :: !(Maybe Text)
    , _paAddressLines       :: !(Maybe [Text])
    , _paRevision           :: !(Maybe (Textual Int32))
    , _paOrganization       :: !(Maybe Text)
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
    { _diId         :: !(Maybe Text)
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


-- | Optional. A device-specific ID. The ID must be a unique identifier that
-- distinguishes the device from other devices.
diId :: Lens' DeviceInfo (Maybe Text)
diId = lens _diId (\ s a -> s{_diId = a})

-- | Optional. Type of the device.
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

-- | Input only. Use this field to specify bucketing option for the histogram
-- search response.
--
-- /See:/ 'numericBucketingOption' smart constructor.
data NumericBucketingOption =
  NumericBucketingOption'
    { _nboBucketBounds   :: !(Maybe [Textual Double])
    , _nboRequiresMinMax :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NumericBucketingOption' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nboBucketBounds'
--
-- * 'nboRequiresMinMax'
numericBucketingOption
    :: NumericBucketingOption
numericBucketingOption =
  NumericBucketingOption'
    {_nboBucketBounds = Nothing, _nboRequiresMinMax = Nothing}


-- | Required. Two adjacent values form a histogram bucket. Values should be
-- in ascending order. For example, if [5, 10, 15] are provided, four
-- buckets are created: (-inf, 5), 5, 10), [10, 15), [15, inf). At most 20
-- [buckets_bound is supported.
nboBucketBounds :: Lens' NumericBucketingOption [Double]
nboBucketBounds
  = lens _nboBucketBounds
      (\ s a -> s{_nboBucketBounds = a})
      . _Default
      . _Coerce

-- | Optional. If set to true, the histogram result includes minimum\/maximum
-- value of the numeric field.
nboRequiresMinMax :: Lens' NumericBucketingOption (Maybe Bool)
nboRequiresMinMax
  = lens _nboRequiresMinMax
      (\ s a -> s{_nboRequiresMinMax = a})

instance FromJSON NumericBucketingOption where
        parseJSON
          = withObject "NumericBucketingOption"
              (\ o ->
                 NumericBucketingOption' <$>
                   (o .:? "bucketBounds" .!= mempty) <*>
                     (o .:? "requiresMinMax"))

instance ToJSON NumericBucketingOption where
        toJSON NumericBucketingOption'{..}
          = object
              (catMaybes
                 [("bucketBounds" .=) <$> _nboBucketBounds,
                  ("requiresMinMax" .=) <$> _nboRequiresMinMax])

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

-- | Input only. Histogram facets to be specified in SearchJobsRequest.
--
-- /See:/ 'histogramFacets' smart constructor.
data HistogramFacets =
  HistogramFacets'
    { _hfCompensationHistogramFacets    :: !(Maybe [CompensationHistogramRequest])
    , _hfCustomAttributeHistogramFacets :: !(Maybe [CustomAttributeHistogramRequest])
    , _hfSimpleHistogramFacets          :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HistogramFacets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hfCompensationHistogramFacets'
--
-- * 'hfCustomAttributeHistogramFacets'
--
-- * 'hfSimpleHistogramFacets'
histogramFacets
    :: HistogramFacets
histogramFacets =
  HistogramFacets'
    { _hfCompensationHistogramFacets = Nothing
    , _hfCustomAttributeHistogramFacets = Nothing
    , _hfSimpleHistogramFacets = Nothing
    }


-- | Optional. Specifies compensation field-based histogram requests.
-- Duplicate values of CompensationHistogramRequest.type are not allowed.
hfCompensationHistogramFacets :: Lens' HistogramFacets [CompensationHistogramRequest]
hfCompensationHistogramFacets
  = lens _hfCompensationHistogramFacets
      (\ s a -> s{_hfCompensationHistogramFacets = a})
      . _Default
      . _Coerce

-- | Optional. Specifies the custom attributes histogram requests. Duplicate
-- values of CustomAttributeHistogramRequest.key are not allowed.
hfCustomAttributeHistogramFacets :: Lens' HistogramFacets [CustomAttributeHistogramRequest]
hfCustomAttributeHistogramFacets
  = lens _hfCustomAttributeHistogramFacets
      (\ s a -> s{_hfCustomAttributeHistogramFacets = a})
      . _Default
      . _Coerce

-- | Optional. Specifies the simple type of histogram facets, for example,
-- \`COMPANY_SIZE\`, \`EMPLOYMENT_TYPE\` etc.
hfSimpleHistogramFacets :: Lens' HistogramFacets [Text]
hfSimpleHistogramFacets
  = lens _hfSimpleHistogramFacets
      (\ s a -> s{_hfSimpleHistogramFacets = a})
      . _Default
      . _Coerce

instance FromJSON HistogramFacets where
        parseJSON
          = withObject "HistogramFacets"
              (\ o ->
                 HistogramFacets' <$>
                   (o .:? "compensationHistogramFacets" .!= mempty) <*>
                     (o .:? "customAttributeHistogramFacets" .!= mempty)
                     <*> (o .:? "simpleHistogramFacets" .!= mempty))

instance ToJSON HistogramFacets where
        toJSON HistogramFacets'{..}
          = object
              (catMaybes
                 [("compensationHistogramFacets" .=) <$>
                    _hfCompensationHistogramFacets,
                  ("customAttributeHistogramFacets" .=) <$>
                    _hfCustomAttributeHistogramFacets,
                  ("simpleHistogramFacets" .=) <$>
                    _hfSimpleHistogramFacets])

-- | Output only. Result of a histogram call. The response contains the
-- histogram map for the search type specified by HistogramResult.field.
-- The response is a map of each filter value to the corresponding count of
-- jobs for that filter.
--
-- /See:/ 'histogramResult' smart constructor.
data HistogramResult =
  HistogramResult'
    { _hrValues     :: !(Maybe HistogramResultValues)
    , _hrSearchType :: !(Maybe HistogramResultSearchType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HistogramResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hrValues'
--
-- * 'hrSearchType'
histogramResult
    :: HistogramResult
histogramResult =
  HistogramResult' {_hrValues = Nothing, _hrSearchType = Nothing}


-- | A map from the values of field to the number of jobs with that value in
-- this search result. Key: search type (filter names, such as the
-- companyName). Values: the count of jobs that match the filter for this
-- search.
hrValues :: Lens' HistogramResult (Maybe HistogramResultValues)
hrValues = lens _hrValues (\ s a -> s{_hrValues = a})

-- | The Histogram search filters.
hrSearchType :: Lens' HistogramResult (Maybe HistogramResultSearchType)
hrSearchType
  = lens _hrSearchType (\ s a -> s{_hrSearchType = a})

instance FromJSON HistogramResult where
        parseJSON
          = withObject "HistogramResult"
              (\ o ->
                 HistogramResult' <$>
                   (o .:? "values") <*> (o .:? "searchType"))

instance ToJSON HistogramResult where
        toJSON HistogramResult'{..}
          = object
              (catMaybes
                 [("values" .=) <$> _hrValues,
                  ("searchType" .=) <$> _hrSearchType])

-- | Stores a map from the values of string custom field associated with
-- \`key\` to the number of jobs with that value in this histogram result.
--
-- /See:/ 'customAttributeHistogramResultStringValueHistogramResult' smart constructor.
newtype CustomAttributeHistogramResultStringValueHistogramResult =
  CustomAttributeHistogramResultStringValueHistogramResult'
    { _cahrsvhrAddtional :: HashMap Text (Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomAttributeHistogramResultStringValueHistogramResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cahrsvhrAddtional'
customAttributeHistogramResultStringValueHistogramResult
    :: HashMap Text Int32 -- ^ 'cahrsvhrAddtional'
    -> CustomAttributeHistogramResultStringValueHistogramResult
customAttributeHistogramResultStringValueHistogramResult pCahrsvhrAddtional_ =
  CustomAttributeHistogramResultStringValueHistogramResult'
    {_cahrsvhrAddtional = _Coerce # pCahrsvhrAddtional_}


cahrsvhrAddtional :: Lens' CustomAttributeHistogramResultStringValueHistogramResult (HashMap Text Int32)
cahrsvhrAddtional
  = lens _cahrsvhrAddtional
      (\ s a -> s{_cahrsvhrAddtional = a})
      . _Coerce

instance FromJSON
           CustomAttributeHistogramResultStringValueHistogramResult
         where
        parseJSON
          = withObject
              "CustomAttributeHistogramResultStringValueHistogramResult"
              (\ o ->
                 CustomAttributeHistogramResultStringValueHistogramResult'
                   <$> (parseJSONObject o))

instance ToJSON
           CustomAttributeHistogramResultStringValueHistogramResult
         where
        toJSON = toJSON . _cahrsvhrAddtional

-- | Optional. Extra information about this event. Used for storing
-- information with no matching field in event payload, for example, user
-- application specific context or details. At most 20 keys are supported.
-- The maximum total size of all keys and values is 2 KB.
--
-- /See:/ 'clientEventExtraInfo' smart constructor.
newtype ClientEventExtraInfo =
  ClientEventExtraInfo'
    { _ceeiAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ClientEventExtraInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ceeiAddtional'
clientEventExtraInfo
    :: HashMap Text Text -- ^ 'ceeiAddtional'
    -> ClientEventExtraInfo
clientEventExtraInfo pCeeiAddtional_ =
  ClientEventExtraInfo' {_ceeiAddtional = _Coerce # pCeeiAddtional_}


ceeiAddtional :: Lens' ClientEventExtraInfo (HashMap Text Text)
ceeiAddtional
  = lens _ceeiAddtional
      (\ s a -> s{_ceeiAddtional = a})
      . _Coerce

instance FromJSON ClientEventExtraInfo where
        parseJSON
          = withObject "ClientEventExtraInfo"
              (\ o ->
                 ClientEventExtraInfo' <$> (parseJSONObject o))

instance ToJSON ClientEventExtraInfo where
        toJSON = toJSON . _ceeiAddtional

-- | Output only. Response for SearchJob method.
--
-- /See:/ 'searchJobsResponse' smart constructor.
data SearchJobsResponse =
  SearchJobsResponse'
    { _sjrNextPageToken           :: !(Maybe Text)
    , _sjrEstimatedTotalSize      :: !(Maybe (Textual Int32))
    , _sjrHistogramQueryResults   :: !(Maybe [HistogramQueryResult])
    , _sjrLocationFilters         :: !(Maybe [Location])
    , _sjrMatchingJobs            :: !(Maybe [MatchingJob])
    , _sjrTotalSize               :: !(Maybe (Textual Int32))
    , _sjrHistogramResults        :: !(Maybe HistogramResults)
    , _sjrMetadata                :: !(Maybe ResponseMetadata)
    , _sjrBroadenedQueryJobsCount :: !(Maybe (Textual Int32))
    , _sjrSpellCorrection         :: !(Maybe SpellingCorrection)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SearchJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sjrNextPageToken'
--
-- * 'sjrEstimatedTotalSize'
--
-- * 'sjrHistogramQueryResults'
--
-- * 'sjrLocationFilters'
--
-- * 'sjrMatchingJobs'
--
-- * 'sjrTotalSize'
--
-- * 'sjrHistogramResults'
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
    , _sjrEstimatedTotalSize = Nothing
    , _sjrHistogramQueryResults = Nothing
    , _sjrLocationFilters = Nothing
    , _sjrMatchingJobs = Nothing
    , _sjrTotalSize = Nothing
    , _sjrHistogramResults = Nothing
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

-- | An estimation of the number of jobs that match the specified query. This
-- number is not guaranteed to be accurate. For accurate results, see
-- enable_precise_result_size.
sjrEstimatedTotalSize :: Lens' SearchJobsResponse (Maybe Int32)
sjrEstimatedTotalSize
  = lens _sjrEstimatedTotalSize
      (\ s a -> s{_sjrEstimatedTotalSize = a})
      . mapping _Coerce

-- | The histogram results that match with specified
-- SearchJobsRequest.histogram_queries.
sjrHistogramQueryResults :: Lens' SearchJobsResponse [HistogramQueryResult]
sjrHistogramQueryResults
  = lens _sjrHistogramQueryResults
      (\ s a -> s{_sjrHistogramQueryResults = a})
      . _Default
      . _Coerce

-- | The location filters that the service applied to the specified query. If
-- any filters are lat-lng based, the JobLocation.location_type is
-- JobLocation.LocationType#LOCATION_TYPE_UNSPECIFIED.
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

-- | The precise result count, which is available only if the client set
-- enable_precise_result_size to \`true\`, or if the response is the last
-- page of results. Otherwise, the value is \`-1\`.
sjrTotalSize :: Lens' SearchJobsResponse (Maybe Int32)
sjrTotalSize
  = lens _sjrTotalSize (\ s a -> s{_sjrTotalSize = a})
      . mapping _Coerce

-- | The histogram results that match specified
-- SearchJobsRequest.histogram_facets.
sjrHistogramResults :: Lens' SearchJobsResponse (Maybe HistogramResults)
sjrHistogramResults
  = lens _sjrHistogramResults
      (\ s a -> s{_sjrHistogramResults = a})

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
                     (o .:? "estimatedTotalSize")
                     <*> (o .:? "histogramQueryResults" .!= mempty)
                     <*> (o .:? "locationFilters" .!= mempty)
                     <*> (o .:? "matchingJobs" .!= mempty)
                     <*> (o .:? "totalSize")
                     <*> (o .:? "histogramResults")
                     <*> (o .:? "metadata")
                     <*> (o .:? "broadenedQueryJobsCount")
                     <*> (o .:? "spellCorrection"))

instance ToJSON SearchJobsResponse where
        toJSON SearchJobsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _sjrNextPageToken,
                  ("estimatedTotalSize" .=) <$> _sjrEstimatedTotalSize,
                  ("histogramQueryResults" .=) <$>
                    _sjrHistogramQueryResults,
                  ("locationFilters" .=) <$> _sjrLocationFilters,
                  ("matchingJobs" .=) <$> _sjrMatchingJobs,
                  ("totalSize" .=) <$> _sjrTotalSize,
                  ("histogramResults" .=) <$> _sjrHistogramResults,
                  ("metadata" .=) <$> _sjrMetadata,
                  ("broadenedQueryJobsCount" .=) <$>
                    _sjrBroadenedQueryJobsCount,
                  ("spellCorrection" .=) <$> _sjrSpellCorrection])

-- | A map from the values of field to the number of jobs with that value in
-- this search result. Key: search type (filter names, such as the
-- companyName). Values: the count of jobs that match the filter for this
-- search.
--
-- /See:/ 'histogramResultValues' smart constructor.
newtype HistogramResultValues =
  HistogramResultValues'
    { _hrvAddtional :: HashMap Text (Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HistogramResultValues' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hrvAddtional'
histogramResultValues
    :: HashMap Text Int32 -- ^ 'hrvAddtional'
    -> HistogramResultValues
histogramResultValues pHrvAddtional_ =
  HistogramResultValues' {_hrvAddtional = _Coerce # pHrvAddtional_}


hrvAddtional :: Lens' HistogramResultValues (HashMap Text Int32)
hrvAddtional
  = lens _hrvAddtional (\ s a -> s{_hrvAddtional = a})
      . _Coerce

instance FromJSON HistogramResultValues where
        parseJSON
          = withObject "HistogramResultValues"
              (\ o ->
                 HistogramResultValues' <$> (parseJSONObject o))

instance ToJSON HistogramResultValues where
        toJSON = toJSON . _hrvAddtional

-- | Message representing a period of time between two timestamps.
--
-- /See:/ 'timestampRange' smart constructor.
data TimestampRange =
  TimestampRange'
    { _trStartTime :: !(Maybe DateTime')
    , _trEndTime   :: !(Maybe DateTime')
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


-- | Begin of the period.
trStartTime :: Lens' TimestampRange (Maybe UTCTime)
trStartTime
  = lens _trStartTime (\ s a -> s{_trStartTime = a}) .
      mapping _DateTime

-- | End of the period.
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
