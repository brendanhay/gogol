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
-- Module      : Network.Google.Resource.AdSense.Accounts.CustomChannels.AdUnits.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all ad units in the specified custom channel.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.accounts.customchannels.adunits.list@.
module Network.Google.Resource.AdSense.Accounts.CustomChannels.AdUnits.List
    (
    -- * REST Resource
      AccountsCustomChannelsAdUnitsListResource

    -- * Creating a Request
    , accountsCustomChannelsAdUnitsList'
    , AccountsCustomChannelsAdUnitsList'

    -- * Request Lenses
    , accaulIncludeInactive
    , accaulCustomChannelId
    , accaulAdClientId
    , accaulAccountId
    , accaulPageToken
    , accaulMaxResults
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @adsense.accounts.customchannels.adunits.list@ method which the
-- 'AccountsCustomChannelsAdUnitsList'' request conforms to.
type AccountsCustomChannelsAdUnitsListResource =
     "accounts" :>
       Capture "accountId" Text :>
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
-- /See:/ 'accountsCustomChannelsAdUnitsList'' smart constructor.
data AccountsCustomChannelsAdUnitsList' = AccountsCustomChannelsAdUnitsList'
    { _accaulIncludeInactive :: !(Maybe Bool)
    , _accaulCustomChannelId :: !Text
    , _accaulAdClientId      :: !Text
    , _accaulAccountId       :: !Text
    , _accaulPageToken       :: !(Maybe Text)
    , _accaulMaxResults      :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsCustomChannelsAdUnitsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'accaulIncludeInactive'
--
-- * 'accaulCustomChannelId'
--
-- * 'accaulAdClientId'
--
-- * 'accaulAccountId'
--
-- * 'accaulPageToken'
--
-- * 'accaulMaxResults'
accountsCustomChannelsAdUnitsList'
    :: Text -- ^ 'accaulCustomChannelId'
    -> Text -- ^ 'accaulAdClientId'
    -> Text -- ^ 'accaulAccountId'
    -> AccountsCustomChannelsAdUnitsList'
accountsCustomChannelsAdUnitsList' pAccaulCustomChannelId_ pAccaulAdClientId_ pAccaulAccountId_ =
    AccountsCustomChannelsAdUnitsList'
    { _accaulIncludeInactive = Nothing
    , _accaulCustomChannelId = pAccaulCustomChannelId_
    , _accaulAdClientId = pAccaulAdClientId_
    , _accaulAccountId = pAccaulAccountId_
    , _accaulPageToken = Nothing
    , _accaulMaxResults = Nothing
    }

-- | Whether to include inactive ad units. Default: true.
accaulIncludeInactive :: Lens' AccountsCustomChannelsAdUnitsList' (Maybe Bool)
accaulIncludeInactive
  = lens _accaulIncludeInactive
      (\ s a -> s{_accaulIncludeInactive = a})

-- | Custom channel for which to list ad units.
accaulCustomChannelId :: Lens' AccountsCustomChannelsAdUnitsList' Text
accaulCustomChannelId
  = lens _accaulCustomChannelId
      (\ s a -> s{_accaulCustomChannelId = a})

-- | Ad client which contains the custom channel.
accaulAdClientId :: Lens' AccountsCustomChannelsAdUnitsList' Text
accaulAdClientId
  = lens _accaulAdClientId
      (\ s a -> s{_accaulAdClientId = a})

-- | Account to which the ad client belongs.
accaulAccountId :: Lens' AccountsCustomChannelsAdUnitsList' Text
accaulAccountId
  = lens _accaulAccountId
      (\ s a -> s{_accaulAccountId = a})

-- | A continuation token, used to page through ad units. To retrieve the
-- next page, set this parameter to the value of \"nextPageToken\" from the
-- previous response.
accaulPageToken :: Lens' AccountsCustomChannelsAdUnitsList' (Maybe Text)
accaulPageToken
  = lens _accaulPageToken
      (\ s a -> s{_accaulPageToken = a})

-- | The maximum number of ad units to include in the response, used for
-- paging.
accaulMaxResults :: Lens' AccountsCustomChannelsAdUnitsList' (Maybe Int32)
accaulMaxResults
  = lens _accaulMaxResults
      (\ s a -> s{_accaulMaxResults = a})

instance GoogleRequest
         AccountsCustomChannelsAdUnitsList' where
        type Rs AccountsCustomChannelsAdUnitsList' = AdUnits
        requestClient AccountsCustomChannelsAdUnitsList'{..}
          = go _accaulAccountId _accaulAdClientId
              _accaulCustomChannelId
              _accaulIncludeInactive
              _accaulPageToken
              _accaulMaxResults
              (Just AltJSON)
              adSenseService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsCustomChannelsAdUnitsListResource)
                      mempty
