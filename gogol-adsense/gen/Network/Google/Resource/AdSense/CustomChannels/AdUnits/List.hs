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
-- Module      : Network.Google.Resource.AdSense.CustomChannels.AdUnits.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all ad units in the specified custom channel.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseCustomChannelsAdUnitsList@.
module Network.Google.Resource.AdSense.CustomChannels.AdUnits.List
    (
    -- * REST Resource
      CustomChannelsAdUnitsListResource

    -- * Creating a Request
    , customChannelsAdUnitsList'
    , CustomChannelsAdUnitsList'

    -- * Request Lenses
    , ccaulIncludeInactive
    , ccaulCustomChannelId
    , ccaulAdClientId
    , ccaulPageToken
    , ccaulMaxResults
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseCustomChannelsAdUnitsList@ method which the
-- 'CustomChannelsAdUnitsList'' request conforms to.
type CustomChannelsAdUnitsListResource =
     "adclients" :>
       Capture "adClientId" Text :>
         "customchannels" :>
           Capture "customChannelId" Text :>
             "adunits" :>
               QueryParam "includeInactive" Bool :>
                 QueryParam "pageToken" Text :>
                   QueryParam "maxResults" Int32 :>
                     QueryParam "alt" AltJSON :> Get '[JSON] AdUnits

-- | List all ad units in the specified custom channel.
--
-- /See:/ 'customChannelsAdUnitsList'' smart constructor.
data CustomChannelsAdUnitsList' = CustomChannelsAdUnitsList'
    { _ccaulIncludeInactive :: !(Maybe Bool)
    , _ccaulCustomChannelId :: !Text
    , _ccaulAdClientId      :: !Text
    , _ccaulPageToken       :: !(Maybe Text)
    , _ccaulMaxResults      :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomChannelsAdUnitsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccaulIncludeInactive'
--
-- * 'ccaulCustomChannelId'
--
-- * 'ccaulAdClientId'
--
-- * 'ccaulPageToken'
--
-- * 'ccaulMaxResults'
customChannelsAdUnitsList'
    :: Text -- ^ 'customChannelId'
    -> Text -- ^ 'adClientId'
    -> CustomChannelsAdUnitsList'
customChannelsAdUnitsList' pCcaulCustomChannelId_ pCcaulAdClientId_ =
    CustomChannelsAdUnitsList'
    { _ccaulIncludeInactive = Nothing
    , _ccaulCustomChannelId = pCcaulCustomChannelId_
    , _ccaulAdClientId = pCcaulAdClientId_
    , _ccaulPageToken = Nothing
    , _ccaulMaxResults = Nothing
    }

-- | Whether to include inactive ad units. Default: true.
ccaulIncludeInactive :: Lens' CustomChannelsAdUnitsList' (Maybe Bool)
ccaulIncludeInactive
  = lens _ccaulIncludeInactive
      (\ s a -> s{_ccaulIncludeInactive = a})

-- | Custom channel for which to list ad units.
ccaulCustomChannelId :: Lens' CustomChannelsAdUnitsList' Text
ccaulCustomChannelId
  = lens _ccaulCustomChannelId
      (\ s a -> s{_ccaulCustomChannelId = a})

-- | Ad client which contains the custom channel.
ccaulAdClientId :: Lens' CustomChannelsAdUnitsList' Text
ccaulAdClientId
  = lens _ccaulAdClientId
      (\ s a -> s{_ccaulAdClientId = a})

-- | A continuation token, used to page through ad units. To retrieve the
-- next page, set this parameter to the value of \"nextPageToken\" from the
-- previous response.
ccaulPageToken :: Lens' CustomChannelsAdUnitsList' (Maybe Text)
ccaulPageToken
  = lens _ccaulPageToken
      (\ s a -> s{_ccaulPageToken = a})

-- | The maximum number of ad units to include in the response, used for
-- paging.
ccaulMaxResults :: Lens' CustomChannelsAdUnitsList' (Maybe Int32)
ccaulMaxResults
  = lens _ccaulMaxResults
      (\ s a -> s{_ccaulMaxResults = a})

instance GoogleRequest CustomChannelsAdUnitsList'
         where
        type Rs CustomChannelsAdUnitsList' = AdUnits
        requestClient CustomChannelsAdUnitsList'{..}
          = go _ccaulAdClientId _ccaulCustomChannelId
              _ccaulIncludeInactive
              _ccaulPageToken
              _ccaulMaxResults
              (Just AltJSON)
              adSenseService
          where go
                  = buildClient
                      (Proxy :: Proxy CustomChannelsAdUnitsListResource)
                      mempty
