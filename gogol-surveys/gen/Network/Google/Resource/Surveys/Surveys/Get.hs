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
-- Module      : Network.Google.Resource.Surveys.Surveys.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the specified survey.
--
-- /See:/ <https://developers.google.com/surveys/ Surveys API Reference> for @surveys.surveys.get@.
module Network.Google.Resource.Surveys.Surveys.Get
    (
    -- * REST Resource
      SurveysGetResource

    -- * Creating a Request
    , surveysGet
    , SurveysGet

    -- * Request Lenses
    , sgSurveyURLId
    ) where

import           Network.Google.Prelude
import           Network.Google.Surveys.Types

-- | A resource alias for @surveys.surveys.get@ method which the
-- 'SurveysGet' request conforms to.
type SurveysGetResource =
     "surveys" :>
       "v2" :>
         "surveys" :>
           Capture "surveyUrlId" Text :>
             QueryParam "alt" AltJSON :> Get '[JSON] Survey

-- | Retrieves information about the specified survey.
--
-- /See:/ 'surveysGet' smart constructor.
newtype SurveysGet =
  SurveysGet'
    { _sgSurveyURLId :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SurveysGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgSurveyURLId'
surveysGet
    :: Text -- ^ 'sgSurveyURLId'
    -> SurveysGet
surveysGet pSgSurveyURLId_ = SurveysGet' {_sgSurveyURLId = pSgSurveyURLId_}


-- | External URL ID for the survey.
sgSurveyURLId :: Lens' SurveysGet Text
sgSurveyURLId
  = lens _sgSurveyURLId
      (\ s a -> s{_sgSurveyURLId = a})

instance GoogleRequest SurveysGet where
        type Rs SurveysGet = Survey
        type Scopes SurveysGet =
             '["https://www.googleapis.com/auth/surveys",
               "https://www.googleapis.com/auth/surveys.readonly",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient SurveysGet'{..}
          = go _sgSurveyURLId (Just AltJSON) surveysService
          where go
                  = buildClient (Proxy :: Proxy SurveysGetResource)
                      mempty
