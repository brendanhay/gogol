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
-- Module      : Network.Google.Resource.AdSenseHost.Accounts.AdUnits.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete the specified ad unit from the specified publisher AdSense
-- account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.accounts.adunits.delete@.
module Network.Google.Resource.AdSenseHost.Accounts.AdUnits.Delete
    (
    -- * REST Resource
      AccountsAdUnitsDeleteResource

    -- * Creating a Request
    , accountsAdUnitsDelete'
    , AccountsAdUnitsDelete'

    -- * Request Lenses
    , aaudAdUnitId
    , aaudAdClientId
    , aaudAccountId
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @adsensehost.accounts.adunits.delete@ method which the
-- 'AccountsAdUnitsDelete'' request conforms to.
type AccountsAdUnitsDeleteResource =
     "accounts" :>
       Capture "accountId" Text :>
         "adclients" :>
           Capture "adClientId" Text :>
             "adunits" :>
               Capture "adUnitId" Text :>
                 QueryParam "alt" AltJSON :> Delete '[JSON] AdUnit

-- | Delete the specified ad unit from the specified publisher AdSense
-- account.
--
-- /See:/ 'accountsAdUnitsDelete'' smart constructor.
data AccountsAdUnitsDelete' = AccountsAdUnitsDelete'
    { _aaudAdUnitId   :: !Text
    , _aaudAdClientId :: !Text
    , _aaudAccountId  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsAdUnitsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaudAdUnitId'
--
-- * 'aaudAdClientId'
--
-- * 'aaudAccountId'
accountsAdUnitsDelete'
    :: Text -- ^ 'aaudAdUnitId'
    -> Text -- ^ 'aaudAdClientId'
    -> Text -- ^ 'aaudAccountId'
    -> AccountsAdUnitsDelete'
accountsAdUnitsDelete' pAaudAdUnitId_ pAaudAdClientId_ pAaudAccountId_ =
    AccountsAdUnitsDelete'
    { _aaudAdUnitId = pAaudAdUnitId_
    , _aaudAdClientId = pAaudAdClientId_
    , _aaudAccountId = pAaudAccountId_
    }

-- | Ad unit to delete.
aaudAdUnitId :: Lens' AccountsAdUnitsDelete' Text
aaudAdUnitId
  = lens _aaudAdUnitId (\ s a -> s{_aaudAdUnitId = a})

-- | Ad client for which to get ad unit.
aaudAdClientId :: Lens' AccountsAdUnitsDelete' Text
aaudAdClientId
  = lens _aaudAdClientId
      (\ s a -> s{_aaudAdClientId = a})

-- | Account which contains the ad unit.
aaudAccountId :: Lens' AccountsAdUnitsDelete' Text
aaudAccountId
  = lens _aaudAccountId
      (\ s a -> s{_aaudAccountId = a})

instance GoogleRequest AccountsAdUnitsDelete' where
        type Rs AccountsAdUnitsDelete' = AdUnit
        requestClient AccountsAdUnitsDelete'{..}
          = go _aaudAccountId _aaudAdClientId _aaudAdUnitId
              (Just AltJSON)
              adSenseHostService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsAdUnitsDeleteResource)
                      mempty
