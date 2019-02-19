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
-- Module      : Network.Google.Resource.AdSenseHost.Accounts.AdUnits.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the supplied ad unit in the specified publisher AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.accounts.adunits.update@.
module Network.Google.Resource.AdSenseHost.Accounts.AdUnits.Update
    (
    -- * REST Resource
      AccountsAdUnitsUpdateResource

    -- * Creating a Request
    , accountsAdUnitsUpdate
    , AccountsAdUnitsUpdate

    -- * Request Lenses
    , aauuPayload
    , aauuAdClientId
    , aauuAccountId
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @adsensehost.accounts.adunits.update@ method which the
-- 'AccountsAdUnitsUpdate' request conforms to.
type AccountsAdUnitsUpdateResource =
     "adsensehost" :>
       "v4.1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "adclients" :>
               Capture "adClientId" Text :>
                 "adunits" :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] AdUnit :> Put '[JSON] AdUnit

-- | Update the supplied ad unit in the specified publisher AdSense account.
--
-- /See:/ 'accountsAdUnitsUpdate' smart constructor.
data AccountsAdUnitsUpdate =
  AccountsAdUnitsUpdate'
    { _aauuPayload    :: !AdUnit
    , _aauuAdClientId :: !Text
    , _aauuAccountId  :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsAdUnitsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aauuPayload'
--
-- * 'aauuAdClientId'
--
-- * 'aauuAccountId'
accountsAdUnitsUpdate
    :: AdUnit -- ^ 'aauuPayload'
    -> Text -- ^ 'aauuAdClientId'
    -> Text -- ^ 'aauuAccountId'
    -> AccountsAdUnitsUpdate
accountsAdUnitsUpdate pAauuPayload_ pAauuAdClientId_ pAauuAccountId_ =
  AccountsAdUnitsUpdate'
    { _aauuPayload = pAauuPayload_
    , _aauuAdClientId = pAauuAdClientId_
    , _aauuAccountId = pAauuAccountId_
    }


-- | Multipart request metadata.
aauuPayload :: Lens' AccountsAdUnitsUpdate AdUnit
aauuPayload
  = lens _aauuPayload (\ s a -> s{_aauuPayload = a})

-- | Ad client which contains the ad unit.
aauuAdClientId :: Lens' AccountsAdUnitsUpdate Text
aauuAdClientId
  = lens _aauuAdClientId
      (\ s a -> s{_aauuAdClientId = a})

-- | Account which contains the ad client.
aauuAccountId :: Lens' AccountsAdUnitsUpdate Text
aauuAccountId
  = lens _aauuAccountId
      (\ s a -> s{_aauuAccountId = a})

instance GoogleRequest AccountsAdUnitsUpdate where
        type Rs AccountsAdUnitsUpdate = AdUnit
        type Scopes AccountsAdUnitsUpdate =
             '["https://www.googleapis.com/auth/adsensehost"]
        requestClient AccountsAdUnitsUpdate'{..}
          = go _aauuAccountId _aauuAdClientId (Just AltJSON)
              _aauuPayload
              adSenseHostService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsAdUnitsUpdateResource)
                      mempty
