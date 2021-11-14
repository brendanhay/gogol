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
-- Module      : Network.Google.Resource.Surveys.Surveys.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a survey. Currently the only property that can be updated is the
-- owners property.
--
-- /See:/ <https://developers.google.com/surveys/ Surveys API Reference> for @surveys.surveys.update@.
module Network.Google.Resource.Surveys.Surveys.Update
    (
    -- * REST Resource
      SurveysUpdateResource

    -- * Creating a Request
    , surveysUpdate
    , SurveysUpdate

    -- * Request Lenses
    , suSurveyURLId
    , suPayload
    ) where

import Network.Google.Prelude
import Network.Google.Surveys.Types

-- | A resource alias for @surveys.surveys.update@ method which the
-- 'SurveysUpdate' request conforms to.
type SurveysUpdateResource =
     "surveys" :>
       "v2" :>
         "surveys" :>
           Capture "surveyUrlId" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Survey :> Put '[JSON] Survey

-- | Updates a survey. Currently the only property that can be updated is the
-- owners property.
--
-- /See:/ 'surveysUpdate' smart constructor.
data SurveysUpdate =
  SurveysUpdate'
    { _suSurveyURLId :: !Text
    , _suPayload :: !Survey
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SurveysUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suSurveyURLId'
--
-- * 'suPayload'
surveysUpdate
    :: Text -- ^ 'suSurveyURLId'
    -> Survey -- ^ 'suPayload'
    -> SurveysUpdate
surveysUpdate pSuSurveyURLId_ pSuPayload_ =
  SurveysUpdate' {_suSurveyURLId = pSuSurveyURLId_, _suPayload = pSuPayload_}


-- | External URL ID for the survey.
suSurveyURLId :: Lens' SurveysUpdate Text
suSurveyURLId
  = lens _suSurveyURLId
      (\ s a -> s{_suSurveyURLId = a})

-- | Multipart request metadata.
suPayload :: Lens' SurveysUpdate Survey
suPayload
  = lens _suPayload (\ s a -> s{_suPayload = a})

instance GoogleRequest SurveysUpdate where
        type Rs SurveysUpdate = Survey
        type Scopes SurveysUpdate =
             '["https://www.googleapis.com/auth/surveys",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient SurveysUpdate'{..}
          = go _suSurveyURLId (Just AltJSON) _suPayload
              surveysService
          where go
                  = buildClient (Proxy :: Proxy SurveysUpdateResource)
                      mempty
