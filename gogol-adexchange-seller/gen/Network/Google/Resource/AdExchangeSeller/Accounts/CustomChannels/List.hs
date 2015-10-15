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
-- Module      : Network.Google.Resource.AdExchangeSeller.Accounts.CustomChannels.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all custom channels in the specified ad client for this Ad Exchange
-- account.
--
-- /See:/ <https://developers.google.com/ad-exchange/seller-rest/ Ad Exchange Seller API Reference> for @AdexchangesellerAccountsCustomChannelsList@.
module Network.Google.Resource.AdExchangeSeller.Accounts.CustomChannels.List
    (
    -- * REST Resource
      AccountsCustomChannelsListResource

    -- * Creating a Request
    , accountsCustomChannelsList'
    , AccountsCustomChannelsList'

    -- * Request Lenses
    , acclAdClientId
    , acclAccountId
    , acclPageToken
    , acclMaxResults
    ) where

import           Network.Google.AdExchangeSeller.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangesellerAccountsCustomChannelsList@ method which the
-- 'AccountsCustomChannelsList'' request conforms to.
type AccountsCustomChannelsListResource =
     "accounts" :>
       Capture "accountId" Text :>
         "adclients" :>
           Capture "adClientId" Text :>
             "customchannels" :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Word32 :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] CustomChannels

-- | List all custom channels in the specified ad client for this Ad Exchange
-- account.
--
-- /See:/ 'accountsCustomChannelsList'' smart constructor.
data AccountsCustomChannelsList' = AccountsCustomChannelsList'
    { _acclAdClientId :: !Text
    , _acclAccountId  :: !Text
    , _acclPageToken  :: !(Maybe Text)
    , _acclMaxResults :: !(Maybe Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsCustomChannelsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acclAdClientId'
--
-- * 'acclAccountId'
--
-- * 'acclPageToken'
--
-- * 'acclMaxResults'
accountsCustomChannelsList'
    :: Text -- ^ 'adClientId'
    -> Text -- ^ 'accountId'
    -> AccountsCustomChannelsList'
accountsCustomChannelsList' pAcclAdClientId_ pAcclAccountId_ =
    AccountsCustomChannelsList'
    { _acclAdClientId = pAcclAdClientId_
    , _acclAccountId = pAcclAccountId_
    , _acclPageToken = Nothing
    , _acclMaxResults = Nothing
    }

-- | Ad client for which to list custom channels.
acclAdClientId :: Lens' AccountsCustomChannelsList' Text
acclAdClientId
  = lens _acclAdClientId
      (\ s a -> s{_acclAdClientId = a})

-- | Account to which the ad client belongs.
acclAccountId :: Lens' AccountsCustomChannelsList' Text
acclAccountId
  = lens _acclAccountId
      (\ s a -> s{_acclAccountId = a})

-- | A continuation token, used to page through custom channels. To retrieve
-- the next page, set this parameter to the value of \"nextPageToken\" from
-- the previous response.
acclPageToken :: Lens' AccountsCustomChannelsList' (Maybe Text)
acclPageToken
  = lens _acclPageToken
      (\ s a -> s{_acclPageToken = a})

-- | The maximum number of custom channels to include in the response, used
-- for paging.
acclMaxResults :: Lens' AccountsCustomChannelsList' (Maybe Word32)
acclMaxResults
  = lens _acclMaxResults
      (\ s a -> s{_acclMaxResults = a})

instance GoogleRequest AccountsCustomChannelsList'
         where
        type Rs AccountsCustomChannelsList' = CustomChannels
        requestClient AccountsCustomChannelsList'{..}
          = go _acclAccountId _acclAdClientId _acclPageToken
              _acclMaxResults
              (Just AltJSON)
              adExchangeSeller
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsCustomChannelsListResource)
                      mempty
