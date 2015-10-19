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
-- Module      : Network.Google.Resource.AdSense.Accounts.AdUnits.CustomChannels.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all custom channels which the specified ad unit belongs to.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.accounts.adunits.customchannels.list@.
module Network.Google.Resource.AdSense.Accounts.AdUnits.CustomChannels.List
    (
    -- * REST Resource
      AccountsAdUnitsCustomChannelsListResource

    -- * Creating a Request
    , accountsAdUnitsCustomChannelsList'
    , AccountsAdUnitsCustomChannelsList'

    -- * Request Lenses
    , aaucclAdUnitId
    , aaucclAdClientId
    , aaucclAccountId
    , aaucclPageToken
    , aaucclMaxResults
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @adsense.accounts.adunits.customchannels.list@ method which the
-- 'AccountsAdUnitsCustomChannelsList'' request conforms to.
type AccountsAdUnitsCustomChannelsListResource =
     "accounts" :>
       Capture "accountId" Text :>
         "adclients" :>
           Capture "adClientId" Text :>
             "adunits" :>
               Capture "adUnitId" Text :>
                 "customchannels" :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" Int32 :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] CustomChannels

-- | List all custom channels which the specified ad unit belongs to.
--
-- /See:/ 'accountsAdUnitsCustomChannelsList'' smart constructor.
data AccountsAdUnitsCustomChannelsList' = AccountsAdUnitsCustomChannelsList'
    { _aaucclAdUnitId   :: !Text
    , _aaucclAdClientId :: !Text
    , _aaucclAccountId  :: !Text
    , _aaucclPageToken  :: !(Maybe Text)
    , _aaucclMaxResults :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsAdUnitsCustomChannelsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaucclAdUnitId'
--
-- * 'aaucclAdClientId'
--
-- * 'aaucclAccountId'
--
-- * 'aaucclPageToken'
--
-- * 'aaucclMaxResults'
accountsAdUnitsCustomChannelsList'
    :: Text -- ^ 'aaucclAdUnitId'
    -> Text -- ^ 'aaucclAdClientId'
    -> Text -- ^ 'aaucclAccountId'
    -> AccountsAdUnitsCustomChannelsList'
accountsAdUnitsCustomChannelsList' pAaucclAdUnitId_ pAaucclAdClientId_ pAaucclAccountId_ =
    AccountsAdUnitsCustomChannelsList'
    { _aaucclAdUnitId = pAaucclAdUnitId_
    , _aaucclAdClientId = pAaucclAdClientId_
    , _aaucclAccountId = pAaucclAccountId_
    , _aaucclPageToken = Nothing
    , _aaucclMaxResults = Nothing
    }

-- | Ad unit for which to list custom channels.
aaucclAdUnitId :: Lens' AccountsAdUnitsCustomChannelsList' Text
aaucclAdUnitId
  = lens _aaucclAdUnitId
      (\ s a -> s{_aaucclAdUnitId = a})

-- | Ad client which contains the ad unit.
aaucclAdClientId :: Lens' AccountsAdUnitsCustomChannelsList' Text
aaucclAdClientId
  = lens _aaucclAdClientId
      (\ s a -> s{_aaucclAdClientId = a})

-- | Account to which the ad client belongs.
aaucclAccountId :: Lens' AccountsAdUnitsCustomChannelsList' Text
aaucclAccountId
  = lens _aaucclAccountId
      (\ s a -> s{_aaucclAccountId = a})

-- | A continuation token, used to page through custom channels. To retrieve
-- the next page, set this parameter to the value of \"nextPageToken\" from
-- the previous response.
aaucclPageToken :: Lens' AccountsAdUnitsCustomChannelsList' (Maybe Text)
aaucclPageToken
  = lens _aaucclPageToken
      (\ s a -> s{_aaucclPageToken = a})

-- | The maximum number of custom channels to include in the response, used
-- for paging.
aaucclMaxResults :: Lens' AccountsAdUnitsCustomChannelsList' (Maybe Int32)
aaucclMaxResults
  = lens _aaucclMaxResults
      (\ s a -> s{_aaucclMaxResults = a})

instance GoogleRequest
         AccountsAdUnitsCustomChannelsList' where
        type Rs AccountsAdUnitsCustomChannelsList' =
             CustomChannels
        requestClient AccountsAdUnitsCustomChannelsList'{..}
          = go _aaucclAccountId _aaucclAdClientId
              _aaucclAdUnitId
              _aaucclPageToken
              _aaucclMaxResults
              (Just AltJSON)
              adSenseService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsAdUnitsCustomChannelsListResource)
                      mempty
