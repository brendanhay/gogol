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
-- Module      : Network.Google.Resource.AdSenseHost.Accounts.AdUnits.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Insert the supplied ad unit into the specified publisher AdSense
-- account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.accounts.adunits.insert@.
module Network.Google.Resource.AdSenseHost.Accounts.AdUnits.Insert
    (
    -- * REST Resource
      AccountsAdUnitsInsertResource

    -- * Creating a Request
    , accountsAdUnitsInsert
    , AccountsAdUnitsInsert

    -- * Request Lenses
    , aauiPayload
    , aauiAdClientId
    , aauiAccountId
    ) where

import Network.Google.AdSenseHost.Types
import Network.Google.Prelude

-- | A resource alias for @adsensehost.accounts.adunits.insert@ method which the
-- 'AccountsAdUnitsInsert' request conforms to.
type AccountsAdUnitsInsertResource =
     "adsensehost" :>
       "v4.1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "adclients" :>
               Capture "adClientId" Text :>
                 "adunits" :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] AdUnit :> Post '[JSON] AdUnit

-- | Insert the supplied ad unit into the specified publisher AdSense
-- account.
--
-- /See:/ 'accountsAdUnitsInsert' smart constructor.
data AccountsAdUnitsInsert =
  AccountsAdUnitsInsert'
    { _aauiPayload :: !AdUnit
    , _aauiAdClientId :: !Text
    , _aauiAccountId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsAdUnitsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aauiPayload'
--
-- * 'aauiAdClientId'
--
-- * 'aauiAccountId'
accountsAdUnitsInsert
    :: AdUnit -- ^ 'aauiPayload'
    -> Text -- ^ 'aauiAdClientId'
    -> Text -- ^ 'aauiAccountId'
    -> AccountsAdUnitsInsert
accountsAdUnitsInsert pAauiPayload_ pAauiAdClientId_ pAauiAccountId_ =
  AccountsAdUnitsInsert'
    { _aauiPayload = pAauiPayload_
    , _aauiAdClientId = pAauiAdClientId_
    , _aauiAccountId = pAauiAccountId_
    }


-- | Multipart request metadata.
aauiPayload :: Lens' AccountsAdUnitsInsert AdUnit
aauiPayload
  = lens _aauiPayload (\ s a -> s{_aauiPayload = a})

-- | Ad client into which to insert the ad unit.
aauiAdClientId :: Lens' AccountsAdUnitsInsert Text
aauiAdClientId
  = lens _aauiAdClientId
      (\ s a -> s{_aauiAdClientId = a})

-- | Account which will contain the ad unit.
aauiAccountId :: Lens' AccountsAdUnitsInsert Text
aauiAccountId
  = lens _aauiAccountId
      (\ s a -> s{_aauiAccountId = a})

instance GoogleRequest AccountsAdUnitsInsert where
        type Rs AccountsAdUnitsInsert = AdUnit
        type Scopes AccountsAdUnitsInsert =
             '["https://www.googleapis.com/auth/adsensehost"]
        requestClient AccountsAdUnitsInsert'{..}
          = go _aauiAccountId _aauiAdClientId (Just AltJSON)
              _aauiPayload
              adSenseHostService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsAdUnitsInsertResource)
                      mempty
