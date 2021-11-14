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
-- Module      : Network.Google.Resource.ConsumerSurveys.MobileApppanels.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the MobileAppPanels available to the authenticated user.
--
-- /See:/ <https://developers.google.com/surveys/ Consumer Surveys API Reference> for @consumersurveys.mobileapppanels.list@.
module Network.Google.Resource.ConsumerSurveys.MobileApppanels.List
    (
    -- * REST Resource
      MobileApppanelsListResource

    -- * Creating a Request
    , mobileApppanelsList
    , MobileApppanelsList

    -- * Request Lenses
    , malToken
    , malStartIndex
    , malMaxResults
    ) where

import Network.Google.ConsumerSurveys.Types
import Network.Google.Prelude

-- | A resource alias for @consumersurveys.mobileapppanels.list@ method which the
-- 'MobileApppanelsList' request conforms to.
type MobileApppanelsListResource =
     "consumersurveys" :>
       "v2" :>
         "mobileAppPanels" :>
           QueryParam "token" Text :>
             QueryParam "startIndex" (Textual Word32) :>
               QueryParam "maxResults" (Textual Word32) :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] MobileAppPanelsListResponse

-- | Lists the MobileAppPanels available to the authenticated user.
--
-- /See:/ 'mobileApppanelsList' smart constructor.
data MobileApppanelsList =
  MobileApppanelsList'
    { _malToken :: !(Maybe Text)
    , _malStartIndex :: !(Maybe (Textual Word32))
    , _malMaxResults :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MobileApppanelsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'malToken'
--
-- * 'malStartIndex'
--
-- * 'malMaxResults'
mobileApppanelsList
    :: MobileApppanelsList
mobileApppanelsList =
  MobileApppanelsList'
    {_malToken = Nothing, _malStartIndex = Nothing, _malMaxResults = Nothing}


malToken :: Lens' MobileApppanelsList (Maybe Text)
malToken = lens _malToken (\ s a -> s{_malToken = a})

malStartIndex :: Lens' MobileApppanelsList (Maybe Word32)
malStartIndex
  = lens _malStartIndex
      (\ s a -> s{_malStartIndex = a})
      . mapping _Coerce

malMaxResults :: Lens' MobileApppanelsList (Maybe Word32)
malMaxResults
  = lens _malMaxResults
      (\ s a -> s{_malMaxResults = a})
      . mapping _Coerce

instance GoogleRequest MobileApppanelsList where
        type Rs MobileApppanelsList =
             MobileAppPanelsListResponse
        type Scopes MobileApppanelsList =
             '["https://www.googleapis.com/auth/consumersurveys",
               "https://www.googleapis.com/auth/consumersurveys.readonly",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient MobileApppanelsList'{..}
          = go _malToken _malStartIndex _malMaxResults
              (Just AltJSON)
              consumerSurveysService
          where go
                  = buildClient
                      (Proxy :: Proxy MobileApppanelsListResource)
                      mempty
