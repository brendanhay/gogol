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
-- Module      : Network.Google.Resource.AdSenseHost.Accounts.AdClients.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get information about one of the ad clients in the specified
-- publisher\'s AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.accounts.adclients.get@.
module Network.Google.Resource.AdSenseHost.Accounts.AdClients.Get
    (
    -- * REST Resource
      AccountsAdClientsGetResource

    -- * Creating a Request
    , accountsAdClientsGet
    , AccountsAdClientsGet

    -- * Request Lenses
    , aacgAdClientId
    , aacgAccountId
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @adsensehost.accounts.adclients.get@ method which the
-- 'AccountsAdClientsGet' request conforms to.
type AccountsAdClientsGetResource =
     "adsensehost" :>
       "v4.1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "adclients" :>
               Capture "adClientId" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] AdClient

-- | Get information about one of the ad clients in the specified
-- publisher\'s AdSense account.
--
-- /See:/ 'accountsAdClientsGet' smart constructor.
data AccountsAdClientsGet =
  AccountsAdClientsGet'
    { _aacgAdClientId :: !Text
    , _aacgAccountId  :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountsAdClientsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aacgAdClientId'
--
-- * 'aacgAccountId'
accountsAdClientsGet
    :: Text -- ^ 'aacgAdClientId'
    -> Text -- ^ 'aacgAccountId'
    -> AccountsAdClientsGet
accountsAdClientsGet pAacgAdClientId_ pAacgAccountId_ =
  AccountsAdClientsGet'
    {_aacgAdClientId = pAacgAdClientId_, _aacgAccountId = pAacgAccountId_}

-- | Ad client to get.
aacgAdClientId :: Lens' AccountsAdClientsGet Text
aacgAdClientId
  = lens _aacgAdClientId
      (\ s a -> s{_aacgAdClientId = a})

-- | Account which contains the ad client.
aacgAccountId :: Lens' AccountsAdClientsGet Text
aacgAccountId
  = lens _aacgAccountId
      (\ s a -> s{_aacgAccountId = a})

instance GoogleRequest AccountsAdClientsGet where
        type Rs AccountsAdClientsGet = AdClient
        type Scopes AccountsAdClientsGet =
             '["https://www.googleapis.com/auth/adsensehost"]
        requestClient AccountsAdClientsGet'{..}
          = go _aacgAccountId _aacgAdClientId (Just AltJSON)
              adSenseHostService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsAdClientsGetResource)
                      mempty
