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
-- Module      : Network.Google.Resource.ConsumerSurveys.Surveys.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the surveys owned by the authenticated user.
--
-- /See:/ <https://developers.google.com/surveys/ Consumer Surveys API Reference> for @consumersurveys.surveys.list@.
module Network.Google.Resource.ConsumerSurveys.Surveys.List
    (
    -- * REST Resource
      SurveysListResource

    -- * Creating a Request
    , surveysList
    , SurveysList

    -- * Request Lenses
    , slToken
    , slStartIndex
    , slMaxResults
    ) where

import Network.Google.ConsumerSurveys.Types
import Network.Google.Prelude

-- | A resource alias for @consumersurveys.surveys.list@ method which the
-- 'SurveysList' request conforms to.
type SurveysListResource =
     "consumersurveys" :>
       "v2" :>
         "surveys" :>
           QueryParam "token" Text :>
             QueryParam "startIndex" (Textual Word32) :>
               QueryParam "maxResults" (Textual Word32) :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] SurveysListResponse

-- | Lists the surveys owned by the authenticated user.
--
-- /See:/ 'surveysList' smart constructor.
data SurveysList =
  SurveysList'
    { _slToken :: !(Maybe Text)
    , _slStartIndex :: !(Maybe (Textual Word32))
    , _slMaxResults :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SurveysList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slToken'
--
-- * 'slStartIndex'
--
-- * 'slMaxResults'
surveysList
    :: SurveysList
surveysList =
  SurveysList'
    {_slToken = Nothing, _slStartIndex = Nothing, _slMaxResults = Nothing}


slToken :: Lens' SurveysList (Maybe Text)
slToken = lens _slToken (\ s a -> s{_slToken = a})

slStartIndex :: Lens' SurveysList (Maybe Word32)
slStartIndex
  = lens _slStartIndex (\ s a -> s{_slStartIndex = a})
      . mapping _Coerce

slMaxResults :: Lens' SurveysList (Maybe Word32)
slMaxResults
  = lens _slMaxResults (\ s a -> s{_slMaxResults = a})
      . mapping _Coerce

instance GoogleRequest SurveysList where
        type Rs SurveysList = SurveysListResponse
        type Scopes SurveysList =
             '["https://www.googleapis.com/auth/consumersurveys",
               "https://www.googleapis.com/auth/consumersurveys.readonly",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient SurveysList'{..}
          = go _slToken _slStartIndex _slMaxResults
              (Just AltJSON)
              consumerSurveysService
          where go
                  = buildClient (Proxy :: Proxy SurveysListResource)
                      mempty
