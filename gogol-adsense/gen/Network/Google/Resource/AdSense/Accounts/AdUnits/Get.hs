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
-- Module      : Network.Google.Resource.AdSense.Accounts.AdUnits.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified ad unit in the specified ad client for the specified
-- account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.accounts.adunits.get@.
module Network.Google.Resource.AdSense.Accounts.AdUnits.Get
    (
    -- * REST Resource
      AccountsAdUnitsGetResource

    -- * Creating a Request
    , accountsAdUnitsGet
    , AccountsAdUnitsGet

    -- * Request Lenses
    , aaugAdUnitId
    , aaugAdClientId
    , aaugAccountId
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @adsense.accounts.adunits.get@ method which the
-- 'AccountsAdUnitsGet' request conforms to.
type AccountsAdUnitsGetResource =
     "adsense" :>
       "v1.4" :>
         "accounts" :>
           Capture "accountId" Text :>
             "adclients" :>
               Capture "adClientId" Text :>
                 "adunits" :>
                   Capture "adUnitId" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] AdUnit

-- | Gets the specified ad unit in the specified ad client for the specified
-- account.
--
-- /See:/ 'accountsAdUnitsGet' smart constructor.
data AccountsAdUnitsGet =
  AccountsAdUnitsGet'
    { _aaugAdUnitId   :: !Text
    , _aaugAdClientId :: !Text
    , _aaugAccountId  :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsAdUnitsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaugAdUnitId'
--
-- * 'aaugAdClientId'
--
-- * 'aaugAccountId'
accountsAdUnitsGet
    :: Text -- ^ 'aaugAdUnitId'
    -> Text -- ^ 'aaugAdClientId'
    -> Text -- ^ 'aaugAccountId'
    -> AccountsAdUnitsGet
accountsAdUnitsGet pAaugAdUnitId_ pAaugAdClientId_ pAaugAccountId_ =
  AccountsAdUnitsGet'
    { _aaugAdUnitId = pAaugAdUnitId_
    , _aaugAdClientId = pAaugAdClientId_
    , _aaugAccountId = pAaugAccountId_
    }


-- | Ad unit to retrieve.
aaugAdUnitId :: Lens' AccountsAdUnitsGet Text
aaugAdUnitId
  = lens _aaugAdUnitId (\ s a -> s{_aaugAdUnitId = a})

-- | Ad client for which to get the ad unit.
aaugAdClientId :: Lens' AccountsAdUnitsGet Text
aaugAdClientId
  = lens _aaugAdClientId
      (\ s a -> s{_aaugAdClientId = a})

-- | Account to which the ad client belongs.
aaugAccountId :: Lens' AccountsAdUnitsGet Text
aaugAccountId
  = lens _aaugAccountId
      (\ s a -> s{_aaugAccountId = a})

instance GoogleRequest AccountsAdUnitsGet where
        type Rs AccountsAdUnitsGet = AdUnit
        type Scopes AccountsAdUnitsGet =
             '["https://www.googleapis.com/auth/adsense",
               "https://www.googleapis.com/auth/adsense.readonly"]
        requestClient AccountsAdUnitsGet'{..}
          = go _aaugAccountId _aaugAdClientId _aaugAdUnitId
              (Just AltJSON)
              adSenseService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsAdUnitsGetResource)
                      mempty
