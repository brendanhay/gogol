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
-- Module      : Network.Google.Resource.AdSenseHost.Accounts.AdUnits.GetAdCode
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get ad code for the specified ad unit, attaching the specified host
-- custom channels.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.accounts.adunits.getAdCode@.
module Network.Google.Resource.AdSenseHost.Accounts.AdUnits.GetAdCode
    (
    -- * REST Resource
      AccountsAdUnitsGetAdCodeResource

    -- * Creating a Request
    , accountsAdUnitsGetAdCode
    , AccountsAdUnitsGetAdCode

    -- * Request Lenses
    , aaugacAdUnitId
    , aaugacAdClientId
    , aaugacAccountId
    , aaugacHostCustomChannelId
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @adsensehost.accounts.adunits.getAdCode@ method which the
-- 'AccountsAdUnitsGetAdCode' request conforms to.
type AccountsAdUnitsGetAdCodeResource =
     "adsensehost" :>
       "v4.1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "adclients" :>
               Capture "adClientId" Text :>
                 "adunits" :>
                   Capture "adUnitId" Text :>
                     "adcode" :>
                       QueryParams "hostCustomChannelId" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] AdCode

-- | Get ad code for the specified ad unit, attaching the specified host
-- custom channels.
--
-- /See:/ 'accountsAdUnitsGetAdCode' smart constructor.
data AccountsAdUnitsGetAdCode = AccountsAdUnitsGetAdCode'
    { _aaugacAdUnitId            :: !Text
    , _aaugacAdClientId          :: !Text
    , _aaugacAccountId           :: !Text
    , _aaugacHostCustomChannelId :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsAdUnitsGetAdCode' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaugacAdUnitId'
--
-- * 'aaugacAdClientId'
--
-- * 'aaugacAccountId'
--
-- * 'aaugacHostCustomChannelId'
accountsAdUnitsGetAdCode
    :: Text -- ^ 'aaugacAdUnitId'
    -> Text -- ^ 'aaugacAdClientId'
    -> Text -- ^ 'aaugacAccountId'
    -> AccountsAdUnitsGetAdCode
accountsAdUnitsGetAdCode pAaugacAdUnitId_ pAaugacAdClientId_ pAaugacAccountId_ =
    AccountsAdUnitsGetAdCode'
    { _aaugacAdUnitId = pAaugacAdUnitId_
    , _aaugacAdClientId = pAaugacAdClientId_
    , _aaugacAccountId = pAaugacAccountId_
    , _aaugacHostCustomChannelId = Nothing
    }

-- | Ad unit to get the code for.
aaugacAdUnitId :: Lens' AccountsAdUnitsGetAdCode Text
aaugacAdUnitId
  = lens _aaugacAdUnitId
      (\ s a -> s{_aaugacAdUnitId = a})

-- | Ad client with contains the ad unit.
aaugacAdClientId :: Lens' AccountsAdUnitsGetAdCode Text
aaugacAdClientId
  = lens _aaugacAdClientId
      (\ s a -> s{_aaugacAdClientId = a})

-- | Account which contains the ad client.
aaugacAccountId :: Lens' AccountsAdUnitsGetAdCode Text
aaugacAccountId
  = lens _aaugacAccountId
      (\ s a -> s{_aaugacAccountId = a})

-- | Host custom channel to attach to the ad code.
aaugacHostCustomChannelId :: Lens' AccountsAdUnitsGetAdCode [Text]
aaugacHostCustomChannelId
  = lens _aaugacHostCustomChannelId
      (\ s a -> s{_aaugacHostCustomChannelId = a})
      . _Default
      . _Coerce

instance GoogleRequest AccountsAdUnitsGetAdCode where
        type Rs AccountsAdUnitsGetAdCode = AdCode
        type Scopes AccountsAdUnitsGetAdCode =
             '["https://www.googleapis.com/auth/adsensehost"]
        requestClient AccountsAdUnitsGetAdCode'{..}
          = go _aaugacAccountId _aaugacAdClientId
              _aaugacAdUnitId
              (_aaugacHostCustomChannelId ^. _Default)
              (Just AltJSON)
              adSenseHostService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsAdUnitsGetAdCodeResource)
                      mempty
