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
-- Module      : Network.Google.Resource.ConsumerSurveys.Surveys.Start
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Begins running a survey.
--
-- /See:/ <https://developers.google.com/surveys/ Consumer Surveys API Reference> for @consumersurveys.surveys.start@.
module Network.Google.Resource.ConsumerSurveys.Surveys.Start
    (
    -- * REST Resource
      SurveysStartResource

    -- * Creating a Request
    , surveysStart
    , SurveysStart

    -- * Request Lenses
    , ssResourceId
    , ssPayload
    ) where

import           Network.Google.ConsumerSurveys.Types
import           Network.Google.Prelude

-- | A resource alias for @consumersurveys.surveys.start@ method which the
-- 'SurveysStart' request conforms to.
type SurveysStartResource =
     "consumersurveys" :>
       "v2" :>
         "surveys" :>
           Capture "resourceId" Text :>
             "start" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] SurveysStartRequest :>
                   Post '[JSON] SurveysStartResponse

-- | Begins running a survey.
--
-- /See:/ 'surveysStart' smart constructor.
data SurveysStart =
  SurveysStart'
    { _ssResourceId :: !Text
    , _ssPayload    :: !SurveysStartRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SurveysStart' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssResourceId'
--
-- * 'ssPayload'
surveysStart
    :: Text -- ^ 'ssResourceId'
    -> SurveysStartRequest -- ^ 'ssPayload'
    -> SurveysStart
surveysStart pSsResourceId_ pSsPayload_ =
  SurveysStart' {_ssResourceId = pSsResourceId_, _ssPayload = pSsPayload_}


ssResourceId :: Lens' SurveysStart Text
ssResourceId
  = lens _ssResourceId (\ s a -> s{_ssResourceId = a})

-- | Multipart request metadata.
ssPayload :: Lens' SurveysStart SurveysStartRequest
ssPayload
  = lens _ssPayload (\ s a -> s{_ssPayload = a})

instance GoogleRequest SurveysStart where
        type Rs SurveysStart = SurveysStartResponse
        type Scopes SurveysStart =
             '["https://www.googleapis.com/auth/consumersurveys",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient SurveysStart'{..}
          = go _ssResourceId (Just AltJSON) _ssPayload
              consumerSurveysService
          where go
                  = buildClient (Proxy :: Proxy SurveysStartResource)
                      mempty
