{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Surveys.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Surveys.Types.Product where

import           Network.Google.Prelude
import           Network.Google.Surveys.Types.Sum

--
-- /See:/ 'surveysListResponse' smart constructor.
data SurveysListResponse =
  SurveysListResponse'
    { _slrRequestId       :: !(Maybe Text)
    , _slrTokenPagination :: !(Maybe TokenPagination)
    , _slrPageInfo        :: !(Maybe PageInfo)
    , _slrResources       :: !(Maybe [Survey])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SurveysListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slrRequestId'
--
-- * 'slrTokenPagination'
--
-- * 'slrPageInfo'
--
-- * 'slrResources'
surveysListResponse
    :: SurveysListResponse
surveysListResponse =
  SurveysListResponse'
    { _slrRequestId = Nothing
    , _slrTokenPagination = Nothing
    , _slrPageInfo = Nothing
    , _slrResources = Nothing
    }

-- | Unique request ID used for logging and debugging. Please include in any
-- error reporting or troubleshooting requests.
slrRequestId :: Lens' SurveysListResponse (Maybe Text)
slrRequestId
  = lens _slrRequestId (\ s a -> s{_slrRequestId = a})

slrTokenPagination :: Lens' SurveysListResponse (Maybe TokenPagination)
slrTokenPagination
  = lens _slrTokenPagination
      (\ s a -> s{_slrTokenPagination = a})

slrPageInfo :: Lens' SurveysListResponse (Maybe PageInfo)
slrPageInfo
  = lens _slrPageInfo (\ s a -> s{_slrPageInfo = a})

-- | An individual survey resource.
slrResources :: Lens' SurveysListResponse [Survey]
slrResources
  = lens _slrResources (\ s a -> s{_slrResources = a})
      . _Default
      . _Coerce

instance FromJSON SurveysListResponse where
        parseJSON
          = withObject "SurveysListResponse"
              (\ o ->
                 SurveysListResponse' <$>
                   (o .:? "requestId") <*> (o .:? "tokenPagination") <*>
                     (o .:? "pageInfo")
                     <*> (o .:? "resources" .!= mempty))

instance ToJSON SurveysListResponse where
        toJSON SurveysListResponse'{..}
          = object
              (catMaybes
                 [("requestId" .=) <$> _slrRequestId,
                  ("tokenPagination" .=) <$> _slrTokenPagination,
                  ("pageInfo" .=) <$> _slrPageInfo,
                  ("resources" .=) <$> _slrResources])

--
-- /See:/ 'tokenPagination' smart constructor.
data TokenPagination =
  TokenPagination'
    { _tpNextPageToken     :: !(Maybe Text)
    , _tpPreviousPageToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TokenPagination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpNextPageToken'
--
-- * 'tpPreviousPageToken'
tokenPagination
    :: TokenPagination
tokenPagination =
  TokenPagination' {_tpNextPageToken = Nothing, _tpPreviousPageToken = Nothing}

tpNextPageToken :: Lens' TokenPagination (Maybe Text)
tpNextPageToken
  = lens _tpNextPageToken
      (\ s a -> s{_tpNextPageToken = a})

tpPreviousPageToken :: Lens' TokenPagination (Maybe Text)
tpPreviousPageToken
  = lens _tpPreviousPageToken
      (\ s a -> s{_tpPreviousPageToken = a})

instance FromJSON TokenPagination where
        parseJSON
          = withObject "TokenPagination"
              (\ o ->
                 TokenPagination' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "previousPageToken"))

instance ToJSON TokenPagination where
        toJSON TokenPagination'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _tpNextPageToken,
                  ("previousPageToken" .=) <$> _tpPreviousPageToken])

--
-- /See:/ 'resultsGetRequest' smart constructor.
newtype ResultsGetRequest =
  ResultsGetRequest'
    { _rgrResultMask :: Maybe ResultsMask
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ResultsGetRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgrResultMask'
resultsGetRequest
    :: ResultsGetRequest
resultsGetRequest = ResultsGetRequest' {_rgrResultMask = Nothing}

rgrResultMask :: Lens' ResultsGetRequest (Maybe ResultsMask)
rgrResultMask
  = lens _rgrResultMask
      (\ s a -> s{_rgrResultMask = a})

instance FromJSON ResultsGetRequest where
        parseJSON
          = withObject "ResultsGetRequest"
              (\ o -> ResultsGetRequest' <$> (o .:? "resultMask"))

instance ToJSON ResultsGetRequest where
        toJSON ResultsGetRequest'{..}
          = object
              (catMaybes [("resultMask" .=) <$> _rgrResultMask])

--
-- /See:/ 'pageInfo' smart constructor.
data PageInfo =
  PageInfo'
    { _piResultPerPage :: !(Maybe (Textual Int32))
    , _piTotalResults  :: !(Maybe (Textual Int32))
    , _piStartIndex    :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PageInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piResultPerPage'
--
-- * 'piTotalResults'
--
-- * 'piStartIndex'
pageInfo
    :: PageInfo
pageInfo =
  PageInfo'
    { _piResultPerPage = Nothing
    , _piTotalResults = Nothing
    , _piStartIndex = Nothing
    }

piResultPerPage :: Lens' PageInfo (Maybe Int32)
piResultPerPage
  = lens _piResultPerPage
      (\ s a -> s{_piResultPerPage = a})
      . mapping _Coerce

piTotalResults :: Lens' PageInfo (Maybe Int32)
piTotalResults
  = lens _piTotalResults
      (\ s a -> s{_piTotalResults = a})
      . mapping _Coerce

piStartIndex :: Lens' PageInfo (Maybe Int32)
piStartIndex
  = lens _piStartIndex (\ s a -> s{_piStartIndex = a})
      . mapping _Coerce

instance FromJSON PageInfo where
        parseJSON
          = withObject "PageInfo"
              (\ o ->
                 PageInfo' <$>
                   (o .:? "resultPerPage") <*> (o .:? "totalResults")
                     <*> (o .:? "startIndex"))

instance ToJSON PageInfo where
        toJSON PageInfo'{..}
          = object
              (catMaybes
                 [("resultPerPage" .=) <$> _piResultPerPage,
                  ("totalResults" .=) <$> _piTotalResults,
                  ("startIndex" .=) <$> _piStartIndex])

--
-- /See:/ 'fieldMask' smart constructor.
data FieldMask =
  FieldMask'
    { _fmId     :: !(Maybe (Textual Int32))
    , _fmFields :: !(Maybe [FieldMask])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'FieldMask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fmId'
--
-- * 'fmFields'
fieldMask
    :: FieldMask
fieldMask = FieldMask' {_fmId = Nothing, _fmFields = Nothing}

fmId :: Lens' FieldMask (Maybe Int32)
fmId
  = lens _fmId (\ s a -> s{_fmId = a}) .
      mapping _Coerce

fmFields :: Lens' FieldMask [FieldMask]
fmFields
  = lens _fmFields (\ s a -> s{_fmFields = a}) .
      _Default
      . _Coerce

instance FromJSON FieldMask where
        parseJSON
          = withObject "FieldMask"
              (\ o ->
                 FieldMask' <$>
                   (o .:? "id") <*> (o .:? "fields" .!= mempty))

instance ToJSON FieldMask where
        toJSON FieldMask'{..}
          = object
              (catMaybes
                 [("id" .=) <$> _fmId, ("fields" .=) <$> _fmFields])

-- | Representation of an individual survey object.
--
-- /See:/ 'survey' smart constructor.
data Survey =
  Survey'
    { _sAudience            :: !(Maybe SurveyAudience)
    , _sState               :: !(Maybe Text)
    , _sOwners              :: !(Maybe [Text])
    , _sWantedResponseCount :: !(Maybe (Textual Int32))
    , _sSurveyURLId         :: !(Maybe Text)
    , _sCost                :: !(Maybe SurveyCost)
    , _sRejectionReason     :: !(Maybe SurveyRejection)
    , _sCustomerData        :: !(Maybe Bytes)
    , _sQuestions           :: !(Maybe [SurveyQuestion])
    , _sTitle               :: !(Maybe Text)
    , _sDescription         :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Survey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sAudience'
--
-- * 'sState'
--
-- * 'sOwners'
--
-- * 'sWantedResponseCount'
--
-- * 'sSurveyURLId'
--
-- * 'sCost'
--
-- * 'sRejectionReason'
--
-- * 'sCustomerData'
--
-- * 'sQuestions'
--
-- * 'sTitle'
--
-- * 'sDescription'
survey
    :: Survey
survey =
  Survey'
    { _sAudience = Nothing
    , _sState = Nothing
    , _sOwners = Nothing
    , _sWantedResponseCount = Nothing
    , _sSurveyURLId = Nothing
    , _sCost = Nothing
    , _sRejectionReason = Nothing
    , _sCustomerData = Nothing
    , _sQuestions = Nothing
    , _sTitle = Nothing
    , _sDescription = Nothing
    }

-- | Targeting-criteria message containing demographic information
sAudience :: Lens' Survey (Maybe SurveyAudience)
sAudience
  = lens _sAudience (\ s a -> s{_sAudience = a})

-- | State that the survey is in.
sState :: Lens' Survey (Maybe Text)
sState = lens _sState (\ s a -> s{_sState = a})

-- | List of email addresses for survey owners. Must contain at least the
-- address of the user making the API call.
sOwners :: Lens' Survey [Text]
sOwners
  = lens _sOwners (\ s a -> s{_sOwners = a}) . _Default
      . _Coerce

-- | Number of responses desired for the survey.
sWantedResponseCount :: Lens' Survey (Maybe Int32)
sWantedResponseCount
  = lens _sWantedResponseCount
      (\ s a -> s{_sWantedResponseCount = a})
      . mapping _Coerce

-- | Unique survey ID, that is viewable in the URL of the Survey Creator UI
sSurveyURLId :: Lens' Survey (Maybe Text)
sSurveyURLId
  = lens _sSurveyURLId (\ s a -> s{_sSurveyURLId = a})

-- | Cost to run the survey and collect the necessary number of responses.
sCost :: Lens' Survey (Maybe SurveyCost)
sCost = lens _sCost (\ s a -> s{_sCost = a})

-- | Reason for the survey being rejected. Only present if the survey state
-- is rejected.
sRejectionReason :: Lens' Survey (Maybe SurveyRejection)
sRejectionReason
  = lens _sRejectionReason
      (\ s a -> s{_sRejectionReason = a})

-- | Additional information to store on behalf of the API consumer and
-- associate with this question. This binary blob is treated as opaque.
-- This field is limited to 64K bytes.
sCustomerData :: Lens' Survey (Maybe ByteString)
sCustomerData
  = lens _sCustomerData
      (\ s a -> s{_sCustomerData = a})
      . mapping _Bytes

-- | List of questions defining the survey.
sQuestions :: Lens' Survey [SurveyQuestion]
sQuestions
  = lens _sQuestions (\ s a -> s{_sQuestions = a}) .
      _Default
      . _Coerce

-- | Optional name that will be given to the survey.
sTitle :: Lens' Survey (Maybe Text)
sTitle = lens _sTitle (\ s a -> s{_sTitle = a})

-- | Text description of the survey.
sDescription :: Lens' Survey (Maybe Text)
sDescription
  = lens _sDescription (\ s a -> s{_sDescription = a})

instance FromJSON Survey where
        parseJSON
          = withObject "Survey"
              (\ o ->
                 Survey' <$>
                   (o .:? "audience") <*> (o .:? "state") <*>
                     (o .:? "owners" .!= mempty)
                     <*> (o .:? "wantedResponseCount")
                     <*> (o .:? "surveyUrlId")
                     <*> (o .:? "cost")
                     <*> (o .:? "rejectionReason")
                     <*> (o .:? "customerData")
                     <*> (o .:? "questions" .!= mempty)
                     <*> (o .:? "title")
                     <*> (o .:? "description"))

instance ToJSON Survey where
        toJSON Survey'{..}
          = object
              (catMaybes
                 [("audience" .=) <$> _sAudience,
                  ("state" .=) <$> _sState, ("owners" .=) <$> _sOwners,
                  ("wantedResponseCount" .=) <$> _sWantedResponseCount,
                  ("surveyUrlId" .=) <$> _sSurveyURLId,
                  ("cost" .=) <$> _sCost,
                  ("rejectionReason" .=) <$> _sRejectionReason,
                  ("customerData" .=) <$> _sCustomerData,
                  ("questions" .=) <$> _sQuestions,
                  ("title" .=) <$> _sTitle,
                  ("description" .=) <$> _sDescription])

--
-- /See:/ 'surveysStartResponse' smart constructor.
newtype SurveysStartResponse =
  SurveysStartResponse'
    { _ssrRequestId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SurveysStartResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssrRequestId'
surveysStartResponse
    :: SurveysStartResponse
surveysStartResponse = SurveysStartResponse' {_ssrRequestId = Nothing}

-- | Unique request ID used for logging and debugging. Please include in any
-- error reporting or troubleshooting requests.
ssrRequestId :: Lens' SurveysStartResponse (Maybe Text)
ssrRequestId
  = lens _ssrRequestId (\ s a -> s{_ssrRequestId = a})

instance FromJSON SurveysStartResponse where
        parseJSON
          = withObject "SurveysStartResponse"
              (\ o ->
                 SurveysStartResponse' <$> (o .:? "requestId"))

instance ToJSON SurveysStartResponse where
        toJSON SurveysStartResponse'{..}
          = object
              (catMaybes [("requestId" .=) <$> _ssrRequestId])

--
-- /See:/ 'surveysStopResponse' smart constructor.
newtype SurveysStopResponse =
  SurveysStopResponse'
    { _sRequestId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SurveysStopResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sRequestId'
surveysStopResponse
    :: SurveysStopResponse
surveysStopResponse = SurveysStopResponse' {_sRequestId = Nothing}

-- | Unique request ID used for logging and debugging. Please include in any
-- error reporting or troubleshooting requests.
sRequestId :: Lens' SurveysStopResponse (Maybe Text)
sRequestId
  = lens _sRequestId (\ s a -> s{_sRequestId = a})

instance FromJSON SurveysStopResponse where
        parseJSON
          = withObject "SurveysStopResponse"
              (\ o -> SurveysStopResponse' <$> (o .:? "requestId"))

instance ToJSON SurveysStopResponse where
        toJSON SurveysStopResponse'{..}
          = object
              (catMaybes [("requestId" .=) <$> _sRequestId])

--
-- /See:/ 'resultsMask' smart constructor.
data ResultsMask =
  ResultsMask'
    { _rmProjection :: !(Maybe Text)
    , _rmFields     :: !(Maybe [FieldMask])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ResultsMask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmProjection'
--
-- * 'rmFields'
resultsMask
    :: ResultsMask
resultsMask = ResultsMask' {_rmProjection = Nothing, _rmFields = Nothing}

rmProjection :: Lens' ResultsMask (Maybe Text)
rmProjection
  = lens _rmProjection (\ s a -> s{_rmProjection = a})

rmFields :: Lens' ResultsMask [FieldMask]
rmFields
  = lens _rmFields (\ s a -> s{_rmFields = a}) .
      _Default
      . _Coerce

instance FromJSON ResultsMask where
        parseJSON
          = withObject "ResultsMask"
              (\ o ->
                 ResultsMask' <$>
                   (o .:? "projection") <*> (o .:? "fields" .!= mempty))

instance ToJSON ResultsMask where
        toJSON ResultsMask'{..}
          = object
              (catMaybes
                 [("projection" .=) <$> _rmProjection,
                  ("fields" .=) <$> _rmFields])

-- | Message representing why the survey was rejected from review, if it was.
--
-- /See:/ 'surveyRejection' smart constructor.
data SurveyRejection =
  SurveyRejection'
    { _srExplanation :: !(Maybe Text)
    , _srType        :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SurveyRejection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srExplanation'
--
-- * 'srType'
surveyRejection
    :: SurveyRejection
surveyRejection = SurveyRejection' {_srExplanation = Nothing, _srType = Nothing}

-- | A human-readable explanation of what was wrong with the survey.
srExplanation :: Lens' SurveyRejection (Maybe Text)
srExplanation
  = lens _srExplanation
      (\ s a -> s{_srExplanation = a})

-- | Which category of rejection this was. See the Google Surveys Help Center
-- for additional details on each category.
srType :: Lens' SurveyRejection (Maybe Text)
srType = lens _srType (\ s a -> s{_srType = a})

instance FromJSON SurveyRejection where
        parseJSON
          = withObject "SurveyRejection"
              (\ o ->
                 SurveyRejection' <$>
                   (o .:? "explanation") <*> (o .:? "type"))

instance ToJSON SurveyRejection where
        toJSON SurveyRejection'{..}
          = object
              (catMaybes
                 [("explanation" .=) <$> _srExplanation,
                  ("type" .=) <$> _srType])

-- | Reference to the current results for a given survey.
--
-- /See:/ 'surveyResults' smart constructor.
data SurveyResults =
  SurveyResults'
    { _srStatus      :: !(Maybe Text)
    , _srSurveyURLId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SurveyResults' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srStatus'
--
-- * 'srSurveyURLId'
surveyResults
    :: SurveyResults
surveyResults = SurveyResults' {_srStatus = Nothing, _srSurveyURLId = Nothing}

-- | Human readable string describing the status of the request.
srStatus :: Lens' SurveyResults (Maybe Text)
srStatus = lens _srStatus (\ s a -> s{_srStatus = a})

-- | External survey ID as viewable by survey owners in the editor view.
srSurveyURLId :: Lens' SurveyResults (Maybe Text)
srSurveyURLId
  = lens _srSurveyURLId
      (\ s a -> s{_srSurveyURLId = a})

instance FromJSON SurveyResults where
        parseJSON
          = withObject "SurveyResults"
              (\ o ->
                 SurveyResults' <$>
                   (o .:? "status") <*> (o .:? "surveyUrlId"))

instance ToJSON SurveyResults where
        toJSON SurveyResults'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _srStatus,
                  ("surveyUrlId" .=) <$> _srSurveyURLId])

--
-- /See:/ 'surveysStartRequest' smart constructor.
newtype SurveysStartRequest =
  SurveysStartRequest'
    { _ssrMaxCostPerResponseNanos :: Maybe (Textual Int64)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SurveysStartRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssrMaxCostPerResponseNanos'
surveysStartRequest
    :: SurveysStartRequest
surveysStartRequest =
  SurveysStartRequest' {_ssrMaxCostPerResponseNanos = Nothing}

-- | *Deprecated* Threshold to start a survey automatically if the quoted
-- prices is less than or equal to this value. See Survey.Cost for more
-- details. This will no longer be available after June 2018.
ssrMaxCostPerResponseNanos :: Lens' SurveysStartRequest (Maybe Int64)
ssrMaxCostPerResponseNanos
  = lens _ssrMaxCostPerResponseNanos
      (\ s a -> s{_ssrMaxCostPerResponseNanos = a})
      . mapping _Coerce

instance FromJSON SurveysStartRequest where
        parseJSON
          = withObject "SurveysStartRequest"
              (\ o ->
                 SurveysStartRequest' <$>
                   (o .:? "maxCostPerResponseNanos"))

instance ToJSON SurveysStartRequest where
        toJSON SurveysStartRequest'{..}
          = object
              (catMaybes
                 [("maxCostPerResponseNanos" .=) <$>
                    _ssrMaxCostPerResponseNanos])

--
-- /See:/ 'surveysDeleteResponse' smart constructor.
newtype SurveysDeleteResponse =
  SurveysDeleteResponse'
    { _sdrRequestId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SurveysDeleteResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdrRequestId'
surveysDeleteResponse
    :: SurveysDeleteResponse
surveysDeleteResponse = SurveysDeleteResponse' {_sdrRequestId = Nothing}

-- | Unique request ID used for logging and debugging. Please include in any
-- error reporting or troubleshooting requests.
sdrRequestId :: Lens' SurveysDeleteResponse (Maybe Text)
sdrRequestId
  = lens _sdrRequestId (\ s a -> s{_sdrRequestId = a})

instance FromJSON SurveysDeleteResponse where
        parseJSON
          = withObject "SurveysDeleteResponse"
              (\ o ->
                 SurveysDeleteResponse' <$> (o .:? "requestId"))

instance ToJSON SurveysDeleteResponse where
        toJSON SurveysDeleteResponse'{..}
          = object
              (catMaybes [("requestId" .=) <$> _sdrRequestId])

-- | Container object for image data and alt_text.
--
-- /See:/ 'surveyQuestionImage' smart constructor.
data SurveyQuestionImage =
  SurveyQuestionImage'
    { _sqiData    :: !(Maybe Bytes)
    , _sqiURL     :: !(Maybe Text)
    , _sqiAltText :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SurveyQuestionImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sqiData'
--
-- * 'sqiURL'
--
-- * 'sqiAltText'
surveyQuestionImage
    :: SurveyQuestionImage
surveyQuestionImage =
  SurveyQuestionImage'
    {_sqiData = Nothing, _sqiURL = Nothing, _sqiAltText = Nothing}

-- | Inline jpeg, gif, tiff, bmp, or png image raw bytes for an image
-- question types.
sqiData :: Lens' SurveyQuestionImage (Maybe ByteString)
sqiData
  = lens _sqiData (\ s a -> s{_sqiData = a}) .
      mapping _Bytes

-- | The read-only URL for the hosted images.
sqiURL :: Lens' SurveyQuestionImage (Maybe Text)
sqiURL = lens _sqiURL (\ s a -> s{_sqiURL = a})

-- | The alt text property used in image tags is required for all images.
sqiAltText :: Lens' SurveyQuestionImage (Maybe Text)
sqiAltText
  = lens _sqiAltText (\ s a -> s{_sqiAltText = a})

instance FromJSON SurveyQuestionImage where
        parseJSON
          = withObject "SurveyQuestionImage"
              (\ o ->
                 SurveyQuestionImage' <$>
                   (o .:? "data") <*> (o .:? "url") <*>
                     (o .:? "altText"))

instance ToJSON SurveyQuestionImage where
        toJSON SurveyQuestionImage'{..}
          = object
              (catMaybes
                 [("data" .=) <$> _sqiData, ("url" .=) <$> _sqiURL,
                  ("altText" .=) <$> _sqiAltText])

-- | Specifications for the target audience of a survey run through the API.
--
-- /See:/ 'surveyAudience' smart constructor.
data SurveyAudience =
  SurveyAudience'
    { _saCountry            :: !(Maybe Text)
    , _saAges               :: !(Maybe [Text])
    , _saLanguages          :: !(Maybe [Text])
    , _saGender             :: !(Maybe Text)
    , _saCountrySubdivision :: !(Maybe Text)
    , _saPopulationSource   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SurveyAudience' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saCountry'
--
-- * 'saAges'
--
-- * 'saLanguages'
--
-- * 'saGender'
--
-- * 'saCountrySubdivision'
--
-- * 'saPopulationSource'
surveyAudience
    :: SurveyAudience
surveyAudience =
  SurveyAudience'
    { _saCountry = Nothing
    , _saAges = Nothing
    , _saLanguages = Nothing
    , _saGender = Nothing
    , _saCountrySubdivision = Nothing
    , _saPopulationSource = Nothing
    }

-- | Required country code that surveys should be targeted to. Accepts
-- standard ISO 3166-1 2 character language codes. For instance, \'US\' for
-- the United States, and \'GB\' for the United Kingdom.
saCountry :: Lens' SurveyAudience (Maybe Text)
saCountry
  = lens _saCountry (\ s a -> s{_saCountry = a})

-- | Optional list of age buckets to target. Supported age buckets are:
-- [\'18-24\', \'25-34\', \'35-44\', \'45-54\', \'55-64\', \'65+\']
saAges :: Lens' SurveyAudience [Text]
saAges
  = lens _saAges (\ s a -> s{_saAges = a}) . _Default .
      _Coerce

-- | Language code that surveys should be targeted to. For instance,
-- \'en-US\'. Surveys may target bilingual users by specifying a list of
-- language codes (for example, \'de\' and \'en-US\'). In that case, all
-- languages will be used for targeting users but the survey content (which
-- is displayed) must match the first language listed. Accepts standard
-- BCP47 language codes. See specification.
saLanguages :: Lens' SurveyAudience [Text]
saLanguages
  = lens _saLanguages (\ s a -> s{_saLanguages = a}) .
      _Default
      . _Coerce

-- | Optional gender to target.
saGender :: Lens' SurveyAudience (Maybe Text)
saGender = lens _saGender (\ s a -> s{_saGender = a})

-- | Country subdivision (states\/provinces\/etc) that surveys should be
-- targeted to. For all countries except GB, ISO-3166-2 subdivision code is
-- required (eg. \'US-OH\' for Ohio, United States). For GB, NUTS 1
-- statistical region codes for the United Kingdom is required (eg.
-- \'UK-UKC\' for North East England).
saCountrySubdivision :: Lens' SurveyAudience (Maybe Text)
saCountrySubdivision
  = lens _saCountrySubdivision
      (\ s a -> s{_saCountrySubdivision = a})

-- | Online population source where the respondents are sampled from.
saPopulationSource :: Lens' SurveyAudience (Maybe Text)
saPopulationSource
  = lens _saPopulationSource
      (\ s a -> s{_saPopulationSource = a})

instance FromJSON SurveyAudience where
        parseJSON
          = withObject "SurveyAudience"
              (\ o ->
                 SurveyAudience' <$>
                   (o .:? "country") <*> (o .:? "ages" .!= mempty) <*>
                     (o .:? "languages" .!= mempty)
                     <*> (o .:? "gender")
                     <*> (o .:? "countrySubdivision")
                     <*> (o .:? "populationSource"))

instance ToJSON SurveyAudience where
        toJSON SurveyAudience'{..}
          = object
              (catMaybes
                 [("country" .=) <$> _saCountry,
                  ("ages" .=) <$> _saAges,
                  ("languages" .=) <$> _saLanguages,
                  ("gender" .=) <$> _saGender,
                  ("countrySubdivision" .=) <$> _saCountrySubdivision,
                  ("populationSource" .=) <$> _saPopulationSource])

-- | Message defining the cost to run a given survey through API.
--
-- /See:/ 'surveyCost' smart constructor.
data SurveyCost =
  SurveyCost'
    { _scCurrencyCode            :: !(Maybe Text)
    , _scNanos                   :: !(Maybe (Textual Int64))
    , _scMaxCostPerResponseNanos :: !(Maybe (Textual Int64))
    , _scCostPerResponseNanos    :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SurveyCost' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scCurrencyCode'
--
-- * 'scNanos'
--
-- * 'scMaxCostPerResponseNanos'
--
-- * 'scCostPerResponseNanos'
surveyCost
    :: SurveyCost
surveyCost =
  SurveyCost'
    { _scCurrencyCode = Nothing
    , _scNanos = Nothing
    , _scMaxCostPerResponseNanos = Nothing
    , _scCostPerResponseNanos = Nothing
    }

-- | Currency code that the cost is given in.
scCurrencyCode :: Lens' SurveyCost (Maybe Text)
scCurrencyCode
  = lens _scCurrencyCode
      (\ s a -> s{_scCurrencyCode = a})

-- | Cost of survey in nano units of the given currency. DEPRECATED in favor
-- of cost_per_response_nanos
scNanos :: Lens' SurveyCost (Maybe Int64)
scNanos
  = lens _scNanos (\ s a -> s{_scNanos = a}) .
      mapping _Coerce

-- | *Deprecated* Threshold to start a survey automatically if the quoted
-- price is at most this value. When a survey has a Screener (threshold)
-- question, it must go through an incidence pricing test to determine the
-- final cost per response. Typically you will have to make a followup call
-- to start the survey giving the final computed cost per response. If the
-- survey has no threshold_answers, setting this property will return an
-- error. By specifying this property, you indicate the max price per
-- response you are willing to pay in advance of the incidence test. If the
-- price turns out to be lower than the specified value, the survey will
-- begin immediately and you will be charged at the rate determined by the
-- incidence pricing test. If the price turns out to be greater than the
-- specified value the survey will not be started and you will instead be
-- notified what price was determined by the incidence test. At that point,
-- you must raise the value of this property to be greater than or equal to
-- that cost before attempting to start the survey again. This will
-- immediately start the survey as long the incidence test was run within
-- the last 21 days. This will no longer be available after June 2018.
scMaxCostPerResponseNanos :: Lens' SurveyCost (Maybe Int64)
scMaxCostPerResponseNanos
  = lens _scMaxCostPerResponseNanos
      (\ s a -> s{_scMaxCostPerResponseNanos = a})
      . mapping _Coerce

-- | Cost per survey response in nano units of the given currency. To get the
-- total cost for a survey, multiply this value by wanted_response_count.
scCostPerResponseNanos :: Lens' SurveyCost (Maybe Int64)
scCostPerResponseNanos
  = lens _scCostPerResponseNanos
      (\ s a -> s{_scCostPerResponseNanos = a})
      . mapping _Coerce

instance FromJSON SurveyCost where
        parseJSON
          = withObject "SurveyCost"
              (\ o ->
                 SurveyCost' <$>
                   (o .:? "currencyCode") <*> (o .:? "nanos") <*>
                     (o .:? "maxCostPerResponseNanos")
                     <*> (o .:? "costPerResponseNanos"))

instance ToJSON SurveyCost where
        toJSON SurveyCost'{..}
          = object
              (catMaybes
                 [("currencyCode" .=) <$> _scCurrencyCode,
                  ("nanos" .=) <$> _scNanos,
                  ("maxCostPerResponseNanos" .=) <$>
                    _scMaxCostPerResponseNanos,
                  ("costPerResponseNanos" .=) <$>
                    _scCostPerResponseNanos])

-- | Message defining the question specifications.
--
-- /See:/ 'surveyQuestion' smart constructor.
data SurveyQuestion =
  SurveyQuestion'
    { _sqImages                   :: !(Maybe [SurveyQuestionImage])
    , _sqAnswers                  :: !(Maybe [Text])
    , _sqSingleLineResponse       :: !(Maybe Bool)
    , _sqMustPickSuggestion       :: !(Maybe Bool)
    , _sqSentimentText            :: !(Maybe Text)
    , _sqThresholdAnswers         :: !(Maybe [Text])
    , _sqHasOther                 :: !(Maybe Bool)
    , _sqOpenTextSuggestions      :: !(Maybe [Text])
    , _sqVideoId                  :: !(Maybe Text)
    , _sqLastAnswerPositionPinned :: !(Maybe Bool)
    , _sqAnswerOrder              :: !(Maybe Text)
    , _sqOpenTextPlaceholder      :: !(Maybe Text)
    , _sqType                     :: !(Maybe Text)
    , _sqUnitOfMeasurementLabel   :: !(Maybe Text)
    , _sqHighValueLabel           :: !(Maybe Text)
    , _sqQuestion                 :: !(Maybe Text)
    , _sqNumStars                 :: !(Maybe Text)
    , _sqLowValueLabel            :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SurveyQuestion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sqImages'
--
-- * 'sqAnswers'
--
-- * 'sqSingleLineResponse'
--
-- * 'sqMustPickSuggestion'
--
-- * 'sqSentimentText'
--
-- * 'sqThresholdAnswers'
--
-- * 'sqHasOther'
--
-- * 'sqOpenTextSuggestions'
--
-- * 'sqVideoId'
--
-- * 'sqLastAnswerPositionPinned'
--
-- * 'sqAnswerOrder'
--
-- * 'sqOpenTextPlaceholder'
--
-- * 'sqType'
--
-- * 'sqUnitOfMeasurementLabel'
--
-- * 'sqHighValueLabel'
--
-- * 'sqQuestion'
--
-- * 'sqNumStars'
--
-- * 'sqLowValueLabel'
surveyQuestion
    :: SurveyQuestion
surveyQuestion =
  SurveyQuestion'
    { _sqImages = Nothing
    , _sqAnswers = Nothing
    , _sqSingleLineResponse = Nothing
    , _sqMustPickSuggestion = Nothing
    , _sqSentimentText = Nothing
    , _sqThresholdAnswers = Nothing
    , _sqHasOther = Nothing
    , _sqOpenTextSuggestions = Nothing
    , _sqVideoId = Nothing
    , _sqLastAnswerPositionPinned = Nothing
    , _sqAnswerOrder = Nothing
    , _sqOpenTextPlaceholder = Nothing
    , _sqType = Nothing
    , _sqUnitOfMeasurementLabel = Nothing
    , _sqHighValueLabel = Nothing
    , _sqQuestion = Nothing
    , _sqNumStars = Nothing
    , _sqLowValueLabel = Nothing
    }

sqImages :: Lens' SurveyQuestion [SurveyQuestionImage]
sqImages
  = lens _sqImages (\ s a -> s{_sqImages = a}) .
      _Default
      . _Coerce

-- | Required list of answer options for a question.
sqAnswers :: Lens' SurveyQuestion [Text]
sqAnswers
  = lens _sqAnswers (\ s a -> s{_sqAnswers = a}) .
      _Default
      . _Coerce

-- | Option to allow multiple line open text responses instead of a single
-- line response. Note that we don\'t show auto-complete suggestions with
-- multiple line responses.
sqSingleLineResponse :: Lens' SurveyQuestion (Maybe Bool)
sqSingleLineResponse
  = lens _sqSingleLineResponse
      (\ s a -> s{_sqSingleLineResponse = a})

-- | Option to force the user to pick one of the open text suggestions. This
-- requires that suggestions are provided for this question.
sqMustPickSuggestion :: Lens' SurveyQuestion (Maybe Bool)
sqMustPickSuggestion
  = lens _sqMustPickSuggestion
      (\ s a -> s{_sqMustPickSuggestion = a})

-- | Used by the Rating Scale with Text question type. This text goes along
-- with the question field that is presented to the respondent, and is the
-- actual text that the respondent is asked to rate.
sqSentimentText :: Lens' SurveyQuestion (Maybe Text)
sqSentimentText
  = lens _sqSentimentText
      (\ s a -> s{_sqSentimentText = a})

-- | The threshold\/screener answer options, which will screen a user into
-- the rest of the survey. These will be a subset of the answer option
-- strings.
sqThresholdAnswers :: Lens' SurveyQuestion [Text]
sqThresholdAnswers
  = lens _sqThresholdAnswers
      (\ s a -> s{_sqThresholdAnswers = a})
      . _Default
      . _Coerce

-- | Option to allow open-ended text box for Single Answer and Multiple
-- Answer question types. This can be used with SINGLE_ANSWER,
-- SINGLE_ANSWER_WITH_IMAGE, MULTIPLE_ANSWERS, and
-- MULTIPLE_ANSWERS_WITH_IMAGE question types.
sqHasOther :: Lens' SurveyQuestion (Maybe Bool)
sqHasOther
  = lens _sqHasOther (\ s a -> s{_sqHasOther = a})

-- | A list of suggested answers for open text question auto-complete. This
-- is only valid if single_line_response is true.
sqOpenTextSuggestions :: Lens' SurveyQuestion [Text]
sqOpenTextSuggestions
  = lens _sqOpenTextSuggestions
      (\ s a -> s{_sqOpenTextSuggestions = a})
      . _Default
      . _Coerce

-- | The YouTube video ID to be show in video questions.
sqVideoId :: Lens' SurveyQuestion (Maybe Text)
sqVideoId
  = lens _sqVideoId (\ s a -> s{_sqVideoId = a})

-- | Currently only support pinning an answer option to the last position.
sqLastAnswerPositionPinned :: Lens' SurveyQuestion (Maybe Bool)
sqLastAnswerPositionPinned
  = lens _sqLastAnswerPositionPinned
      (\ s a -> s{_sqLastAnswerPositionPinned = a})

-- | The randomization option for multiple choice and multi-select questions.
-- If not specified, this option defaults to randomize.
sqAnswerOrder :: Lens' SurveyQuestion (Maybe Text)
sqAnswerOrder
  = lens _sqAnswerOrder
      (\ s a -> s{_sqAnswerOrder = a})

-- | Placeholder text for an open text question.
sqOpenTextPlaceholder :: Lens' SurveyQuestion (Maybe Text)
sqOpenTextPlaceholder
  = lens _sqOpenTextPlaceholder
      (\ s a -> s{_sqOpenTextPlaceholder = a})

-- | Required field defining the question type. For details about configuring
-- different type of questions, consult the question configuration guide.
sqType :: Lens' SurveyQuestion (Maybe Text)
sqType = lens _sqType (\ s a -> s{_sqType = a})

-- | Optional unit of measurement for display (for example: hours, people,
-- miles).
sqUnitOfMeasurementLabel :: Lens' SurveyQuestion (Maybe Text)
sqUnitOfMeasurementLabel
  = lens _sqUnitOfMeasurementLabel
      (\ s a -> s{_sqUnitOfMeasurementLabel = a})

-- | For rating questions, the text for the higher end of the scale, such as
-- \'Best\'. For numeric questions, a string representing a floating-point
-- that is the maximum allowed number for a response.
sqHighValueLabel :: Lens' SurveyQuestion (Maybe Text)
sqHighValueLabel
  = lens _sqHighValueLabel
      (\ s a -> s{_sqHighValueLabel = a})

-- | Required question text shown to the respondent.
sqQuestion :: Lens' SurveyQuestion (Maybe Text)
sqQuestion
  = lens _sqQuestion (\ s a -> s{_sqQuestion = a})

-- | Number of stars to use for ratings questions.
sqNumStars :: Lens' SurveyQuestion (Maybe Text)
sqNumStars
  = lens _sqNumStars (\ s a -> s{_sqNumStars = a})

-- | For rating questions, the text for the lower end of the scale, such as
-- \'Worst\'. For numeric questions, a string representing a floating-point
-- that is the minimum allowed number for a response.
sqLowValueLabel :: Lens' SurveyQuestion (Maybe Text)
sqLowValueLabel
  = lens _sqLowValueLabel
      (\ s a -> s{_sqLowValueLabel = a})

instance FromJSON SurveyQuestion where
        parseJSON
          = withObject "SurveyQuestion"
              (\ o ->
                 SurveyQuestion' <$>
                   (o .:? "images" .!= mempty) <*>
                     (o .:? "answers" .!= mempty)
                     <*> (o .:? "singleLineResponse")
                     <*> (o .:? "mustPickSuggestion")
                     <*> (o .:? "sentimentText")
                     <*> (o .:? "thresholdAnswers" .!= mempty)
                     <*> (o .:? "hasOther")
                     <*> (o .:? "openTextSuggestions" .!= mempty)
                     <*> (o .:? "videoId")
                     <*> (o .:? "lastAnswerPositionPinned")
                     <*> (o .:? "answerOrder")
                     <*> (o .:? "openTextPlaceholder")
                     <*> (o .:? "type")
                     <*> (o .:? "unitOfMeasurementLabel")
                     <*> (o .:? "highValueLabel")
                     <*> (o .:? "question")
                     <*> (o .:? "numStars")
                     <*> (o .:? "lowValueLabel"))

instance ToJSON SurveyQuestion where
        toJSON SurveyQuestion'{..}
          = object
              (catMaybes
                 [("images" .=) <$> _sqImages,
                  ("answers" .=) <$> _sqAnswers,
                  ("singleLineResponse" .=) <$> _sqSingleLineResponse,
                  ("mustPickSuggestion" .=) <$> _sqMustPickSuggestion,
                  ("sentimentText" .=) <$> _sqSentimentText,
                  ("thresholdAnswers" .=) <$> _sqThresholdAnswers,
                  ("hasOther" .=) <$> _sqHasOther,
                  ("openTextSuggestions" .=) <$>
                    _sqOpenTextSuggestions,
                  ("videoId" .=) <$> _sqVideoId,
                  ("lastAnswerPositionPinned" .=) <$>
                    _sqLastAnswerPositionPinned,
                  ("answerOrder" .=) <$> _sqAnswerOrder,
                  ("openTextPlaceholder" .=) <$>
                    _sqOpenTextPlaceholder,
                  ("type" .=) <$> _sqType,
                  ("unitOfMeasurementLabel" .=) <$>
                    _sqUnitOfMeasurementLabel,
                  ("highValueLabel" .=) <$> _sqHighValueLabel,
                  ("question" .=) <$> _sqQuestion,
                  ("numStars" .=) <$> _sqNumStars,
                  ("lowValueLabel" .=) <$> _sqLowValueLabel])
