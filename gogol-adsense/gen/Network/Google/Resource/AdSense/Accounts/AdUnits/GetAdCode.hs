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
-- Module      : Network.Google.Resource.AdSense.Accounts.AdUnits.GetAdCode
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get ad code for the specified ad unit.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.accounts.adunits.getAdCode@.
module Network.Google.Resource.AdSense.Accounts.AdUnits.GetAdCode
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
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @adsense.accounts.adunits.getAdCode@ method which the
-- 'AccountsAdUnitsGetAdCode' request conforms to.
type AccountsAdUnitsGetAdCodeResource =
     "adsense" :>
       "v1.4" :>
         "accounts" :>
           Capture "accountId" Text :>
             "adclients" :>
               Capture "adClientId" Text :>
                 "adunits" :>
                   Capture "adUnitId" Text :>
                     "adcode" :>
                       QueryParam "alt" AltJSON :> Get '[JSON] AdCode

-- | Get ad code for the specified ad unit.
--
-- /See:/ 'accountsAdUnitsGetAdCode' smart constructor.
data AccountsAdUnitsGetAdCode =
  AccountsAdUnitsGetAdCode'
    { _aaugacAdUnitId   :: !Text
    , _aaugacAdClientId :: !Text
    , _aaugacAccountId  :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsAdUnitsGetAdCode' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaugacAdUnitId'
--
-- * 'aaugacAdClientId'
--
-- * 'aaugacAccountId'
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

instance GoogleRequest AccountsAdUnitsGetAdCode where
        type Rs AccountsAdUnitsGetAdCode = AdCode
        type Scopes AccountsAdUnitsGetAdCode =
             '["https://www.googleapis.com/auth/adsense",
               "https://www.googleapis.com/auth/adsense.readonly"]
        requestClient AccountsAdUnitsGetAdCode'{..}
          = go _aaugacAccountId _aaugacAdClientId
              _aaugacAdUnitId
              (Just AltJSON)
              adSenseService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsAdUnitsGetAdCodeResource)
                      mempty
