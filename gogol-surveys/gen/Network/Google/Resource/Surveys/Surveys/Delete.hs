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
-- Module      : Network.Google.Resource.Surveys.Surveys.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a survey from view in all user GET requests.
--
-- /See:/ <https://developers.google.com/surveys/ Surveys API Reference> for @surveys.surveys.delete@.
module Network.Google.Resource.Surveys.Surveys.Delete
    (
    -- * REST Resource
      SurveysDeleteResource

    -- * Creating a Request
    , surveysDelete
    , SurveysDelete

    -- * Request Lenses
    , sdSurveyURLId
    ) where

import           Network.Google.Prelude
import           Network.Google.Surveys.Types

-- | A resource alias for @surveys.surveys.delete@ method which the
-- 'SurveysDelete' request conforms to.
type SurveysDeleteResource =
     "surveys" :>
       "v2" :>
         "surveys" :>
           Capture "surveyUrlId" Text :>
             QueryParam "alt" AltJSON :>
               Delete '[JSON] SurveysDeleteResponse

-- | Removes a survey from view in all user GET requests.
--
-- /See:/ 'surveysDelete' smart constructor.
newtype SurveysDelete =
  SurveysDelete'
    { _sdSurveyURLId :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SurveysDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdSurveyURLId'
surveysDelete
    :: Text -- ^ 'sdSurveyURLId'
    -> SurveysDelete
surveysDelete pSdSurveyURLId_ =
  SurveysDelete' {_sdSurveyURLId = pSdSurveyURLId_}


-- | External URL ID for the survey.
sdSurveyURLId :: Lens' SurveysDelete Text
sdSurveyURLId
  = lens _sdSurveyURLId
      (\ s a -> s{_sdSurveyURLId = a})

instance GoogleRequest SurveysDelete where
        type Rs SurveysDelete = SurveysDeleteResponse
        type Scopes SurveysDelete =
             '["https://www.googleapis.com/auth/surveys",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient SurveysDelete'{..}
          = go _sdSurveyURLId (Just AltJSON) surveysService
          where go
                  = buildClient (Proxy :: Proxy SurveysDeleteResource)
                      mempty
