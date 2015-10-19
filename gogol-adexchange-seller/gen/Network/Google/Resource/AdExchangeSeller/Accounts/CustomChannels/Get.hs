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
-- Module      : Network.Google.Resource.AdExchangeSeller.Accounts.CustomChannels.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the specified custom channel from the specified ad client.
--
-- /See:/ <https://developers.google.com/ad-exchange/seller-rest/ Ad Exchange Seller API Reference> for @AdexchangesellerAccountsCustomChannelsGet@.
module Network.Google.Resource.AdExchangeSeller.Accounts.CustomChannels.Get
    (
    -- * REST Resource
      AccountsCustomChannelsGetResource

    -- * Creating a Request
    , accountsCustomChannelsGet'
    , AccountsCustomChannelsGet'

    -- * Request Lenses
    , accgCustomChannelId
    , accgAdClientId
    , accgAccountId
    ) where

import           Network.Google.AdExchangeSeller.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangesellerAccountsCustomChannelsGet@ method which the
-- 'AccountsCustomChannelsGet'' request conforms to.
type AccountsCustomChannelsGetResource =
     "accounts" :>
       Capture "accountId" Text :>
         "adclients" :>
           Capture "adClientId" Text :>
             "customchannels" :>
               Capture "customChannelId" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] CustomChannel

-- | Get the specified custom channel from the specified ad client.
--
-- /See:/ 'accountsCustomChannelsGet'' smart constructor.
data AccountsCustomChannelsGet' = AccountsCustomChannelsGet'
    { _accgCustomChannelId :: !Text
    , _accgAdClientId      :: !Text
    , _accgAccountId       :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsCustomChannelsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'accgCustomChannelId'
--
-- * 'accgAdClientId'
--
-- * 'accgAccountId'
accountsCustomChannelsGet'
    :: Text -- ^ 'customChannelId'
    -> Text -- ^ 'adClientId'
    -> Text -- ^ 'accountId'
    -> AccountsCustomChannelsGet'
accountsCustomChannelsGet' pAccgCustomChannelId_ pAccgAdClientId_ pAccgAccountId_ =
    AccountsCustomChannelsGet'
    { _accgCustomChannelId = pAccgCustomChannelId_
    , _accgAdClientId = pAccgAdClientId_
    , _accgAccountId = pAccgAccountId_
    }

-- | Custom channel to retrieve.
accgCustomChannelId :: Lens' AccountsCustomChannelsGet' Text
accgCustomChannelId
  = lens _accgCustomChannelId
      (\ s a -> s{_accgCustomChannelId = a})

-- | Ad client which contains the custom channel.
accgAdClientId :: Lens' AccountsCustomChannelsGet' Text
accgAdClientId
  = lens _accgAdClientId
      (\ s a -> s{_accgAdClientId = a})

-- | Account to which the ad client belongs.
accgAccountId :: Lens' AccountsCustomChannelsGet' Text
accgAccountId
  = lens _accgAccountId
      (\ s a -> s{_accgAccountId = a})

instance GoogleRequest AccountsCustomChannelsGet'
         where
        type Rs AccountsCustomChannelsGet' = CustomChannel
        requestClient AccountsCustomChannelsGet'{..}
          = go _accgAccountId _accgAdClientId
              _accgCustomChannelId
              (Just AltJSON)
              adExchangeSellerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsCustomChannelsGetResource)
                      mempty
