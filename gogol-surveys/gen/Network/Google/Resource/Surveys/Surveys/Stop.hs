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
-- Module      : Network.Google.Resource.Surveys.Surveys.Stop
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops a running survey.
--
-- /See:/ <https://developers.google.com/surveys/ Surveys API Reference> for @surveys.surveys.stop@.
module Network.Google.Resource.Surveys.Surveys.Stop
    (
    -- * REST Resource
      SurveysStopResource

    -- * Creating a Request
    , surveysStop
    , SurveysStop

    -- * Request Lenses
    , sResourceId
    ) where

import           Network.Google.Prelude
import           Network.Google.Surveys.Types

-- | A resource alias for @surveys.surveys.stop@ method which the
-- 'SurveysStop' request conforms to.
type SurveysStopResource =
     "surveys" :>
       "v2" :>
         "surveys" :>
           Capture "resourceId" Text :>
             "stop" :>
               QueryParam "alt" AltJSON :>
                 Post '[JSON] SurveysStopResponse

-- | Stops a running survey.
--
-- /See:/ 'surveysStop' smart constructor.
newtype SurveysStop = SurveysStop'
    { _sResourceId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SurveysStop' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sResourceId'
surveysStop
    :: Text -- ^ 'sResourceId'
    -> SurveysStop
surveysStop pSResourceId_ =
    SurveysStop'
    { _sResourceId = pSResourceId_
    }

sResourceId :: Lens' SurveysStop Text
sResourceId
  = lens _sResourceId (\ s a -> s{_sResourceId = a})

instance GoogleRequest SurveysStop where
        type Rs SurveysStop = SurveysStopResponse
        type Scopes SurveysStop =
             '["https://www.googleapis.com/auth/surveys",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient SurveysStop'{..}
          = go _sResourceId (Just AltJSON) surveysService
          where go
                  = buildClient (Proxy :: Proxy SurveysStopResource)
                      mempty
