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
-- Module      : Network.Google.Resource.ConsumerSurveys.Surveys.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a survey.
--
-- /See:/ <https://developers.google.com/surveys/ Consumer Surveys API Reference> for @consumersurveys.surveys.insert@.
module Network.Google.Resource.ConsumerSurveys.Surveys.Insert
    (
    -- * REST Resource
      SurveysInsertResource

    -- * Creating a Request
    , surveysInsert
    , SurveysInsert

    -- * Request Lenses
    , siPayload
    ) where

import           Network.Google.ConsumerSurveys.Types
import           Network.Google.Prelude

-- | A resource alias for @consumersurveys.surveys.insert@ method which the
-- 'SurveysInsert' request conforms to.
type SurveysInsertResource =
     "consumersurveys" :>
       "v2" :>
         "surveys" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] Survey :> Post '[JSON] Survey

-- | Creates a survey.
--
-- /See:/ 'surveysInsert' smart constructor.
newtype SurveysInsert =
  SurveysInsert'
    { _siPayload :: Survey
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SurveysInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siPayload'
surveysInsert
    :: Survey -- ^ 'siPayload'
    -> SurveysInsert
surveysInsert pSiPayload_ = SurveysInsert' {_siPayload = pSiPayload_}

-- | Multipart request metadata.
siPayload :: Lens' SurveysInsert Survey
siPayload
  = lens _siPayload (\ s a -> s{_siPayload = a})

instance GoogleRequest SurveysInsert where
        type Rs SurveysInsert = Survey
        type Scopes SurveysInsert =
             '["https://www.googleapis.com/auth/consumersurveys",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient SurveysInsert'{..}
          = go (Just AltJSON) _siPayload consumerSurveysService
          where go
                  = buildClient (Proxy :: Proxy SurveysInsertResource)
                      mempty
