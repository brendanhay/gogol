{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Surveys.Results.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves any survey results that have been produced so far. Results are
-- formatted as an Excel file. You must add \"?alt=media\" to the URL as an
-- argument to get results.
--
-- /See:/ <https://developers.google.com/surveys/ Surveys API Reference> for @surveys.results.get@.
module Network.Google.Resource.Surveys.Results.Get
    (
    -- * REST Resource
      ResultsGetResource

    -- * Creating a Request
    , resultsGet
    , ResultsGet

    -- * Request Lenses
    , rgSurveyURLId
    , rgPayload
    ) where

import Network.Google.Prelude
import Network.Google.Surveys.Types

-- | A resource alias for @surveys.results.get@ method which the
-- 'ResultsGet' request conforms to.
type ResultsGetResource =
     "surveys" :>
       "v2" :>
         "surveys" :>
           Capture "surveyUrlId" Text :>
             "results" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] ResultsGetRequest :>
                   Get '[JSON] SurveyResults
       :<|>
       "surveys" :>
         "v2" :>
           "surveys" :>
             Capture "surveyUrlId" Text :>
               "results" :>
                 QueryParam "alt" AltMedia :>
                   Get '[OctetStream] Stream

-- | Retrieves any survey results that have been produced so far. Results are
-- formatted as an Excel file. You must add \"?alt=media\" to the URL as an
-- argument to get results.
--
-- /See:/ 'resultsGet' smart constructor.
data ResultsGet =
  ResultsGet'
    { _rgSurveyURLId :: !Text
    , _rgPayload :: !ResultsGetRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResultsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgSurveyURLId'
--
-- * 'rgPayload'
resultsGet
    :: Text -- ^ 'rgSurveyURLId'
    -> ResultsGetRequest -- ^ 'rgPayload'
    -> ResultsGet
resultsGet pRgSurveyURLId_ pRgPayload_ =
  ResultsGet' {_rgSurveyURLId = pRgSurveyURLId_, _rgPayload = pRgPayload_}


-- | External URL ID for the survey.
rgSurveyURLId :: Lens' ResultsGet Text
rgSurveyURLId
  = lens _rgSurveyURLId
      (\ s a -> s{_rgSurveyURLId = a})

-- | Multipart request metadata.
rgPayload :: Lens' ResultsGet ResultsGetRequest
rgPayload
  = lens _rgPayload (\ s a -> s{_rgPayload = a})

instance GoogleRequest ResultsGet where
        type Rs ResultsGet = SurveyResults
        type Scopes ResultsGet =
             '["https://www.googleapis.com/auth/surveys",
               "https://www.googleapis.com/auth/surveys.readonly",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient ResultsGet'{..}
          = go _rgSurveyURLId (Just AltJSON) _rgPayload
              surveysService
          where go :<|> _
                  = buildClient (Proxy :: Proxy ResultsGetResource)
                      mempty

instance GoogleRequest (MediaDownload ResultsGet)
         where
        type Rs (MediaDownload ResultsGet) = Stream
        type Scopes (MediaDownload ResultsGet) =
             Scopes ResultsGet
        requestClient (MediaDownload ResultsGet'{..})
          = go _rgSurveyURLId (Just AltMedia) surveysService
          where _ :<|> go
                  = buildClient (Proxy :: Proxy ResultsGetResource)
                      mempty
