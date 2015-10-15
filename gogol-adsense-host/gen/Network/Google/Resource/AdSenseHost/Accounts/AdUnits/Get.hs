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
-- Module      : Network.Google.Resource.AdSenseHost.Accounts.AdUnits.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get the specified host ad unit in this AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @AdsensehostAccountsAdUnitsGet@.
module Network.Google.Resource.AdSenseHost.Accounts.AdUnits.Get
    (
    -- * REST Resource
      AccountsAdUnitsGetResource

    -- * Creating a Request
    , accountsAdUnitsGet'
    , AccountsAdUnitsGet'

    -- * Request Lenses
    , aaugAdUnitId
    , aaugAdClientId
    , aaugAccountId
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsensehostAccountsAdUnitsGet@ method which the
-- 'AccountsAdUnitsGet'' request conforms to.
type AccountsAdUnitsGetResource =
     "accounts" :>
       Capture "accountId" Text :>
         "adclients" :>
           Capture "adClientId" Text :>
             "adunits" :>
               Capture "adUnitId" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] AdUnit

-- | Get the specified host ad unit in this AdSense account.
--
-- /See:/ 'accountsAdUnitsGet'' smart constructor.
data AccountsAdUnitsGet' = AccountsAdUnitsGet'
    { _aaugAdUnitId   :: !Text
    , _aaugAdClientId :: !Text
    , _aaugAccountId  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsAdUnitsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaugAdUnitId'
--
-- * 'aaugAdClientId'
--
-- * 'aaugAccountId'
accountsAdUnitsGet'
    :: Text -- ^ 'adUnitId'
    -> Text -- ^ 'adClientId'
    -> Text -- ^ 'accountId'
    -> AccountsAdUnitsGet'
accountsAdUnitsGet' pAaugAdUnitId_ pAaugAdClientId_ pAaugAccountId_ =
    AccountsAdUnitsGet'
    { _aaugAdUnitId = pAaugAdUnitId_
    , _aaugAdClientId = pAaugAdClientId_
    , _aaugAccountId = pAaugAccountId_
    }

-- | Ad unit to get.
aaugAdUnitId :: Lens' AccountsAdUnitsGet' Text
aaugAdUnitId
  = lens _aaugAdUnitId (\ s a -> s{_aaugAdUnitId = a})

-- | Ad client for which to get ad unit.
aaugAdClientId :: Lens' AccountsAdUnitsGet' Text
aaugAdClientId
  = lens _aaugAdClientId
      (\ s a -> s{_aaugAdClientId = a})

-- | Account which contains the ad unit.
aaugAccountId :: Lens' AccountsAdUnitsGet' Text
aaugAccountId
  = lens _aaugAccountId
      (\ s a -> s{_aaugAccountId = a})

instance GoogleRequest AccountsAdUnitsGet' where
        type Rs AccountsAdUnitsGet' = AdUnit
        requestClient AccountsAdUnitsGet'{..}
          = go _aaugAccountId _aaugAdClientId _aaugAdUnitId
              (Just AltJSON)
              adSenseHost
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsAdUnitsGetResource)
                      mempty
