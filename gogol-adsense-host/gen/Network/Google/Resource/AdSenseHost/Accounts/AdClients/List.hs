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
-- Module      : Network.Google.Resource.AdSenseHost.Accounts.AdClients.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all hosted ad clients in the specified hosted account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.accounts.adclients.list@.
module Network.Google.Resource.AdSenseHost.Accounts.AdClients.List
    (
    -- * REST Resource
      AccountsAdClientsListResource

    -- * Creating a Request
    , accountsAdClientsList
    , AccountsAdClientsList

    -- * Request Lenses
    , aaclAccountId
    , aaclPageToken
    , aaclMaxResults
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @adsensehost.accounts.adclients.list@ method which the
-- 'AccountsAdClientsList' request conforms to.
type AccountsAdClientsListResource =
     "adsensehost" :>
       "v4.1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "adclients" :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" (Textual Word32) :>
                   QueryParam "alt" AltJSON :> Get '[JSON] AdClients

-- | List all hosted ad clients in the specified hosted account.
--
-- /See:/ 'accountsAdClientsList' smart constructor.
data AccountsAdClientsList = AccountsAdClientsList'
    { _aaclAccountId  :: !Text
    , _aaclPageToken  :: !(Maybe Text)
    , _aaclMaxResults :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsAdClientsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaclAccountId'
--
-- * 'aaclPageToken'
--
-- * 'aaclMaxResults'
accountsAdClientsList
    :: Text -- ^ 'aaclAccountId'
    -> AccountsAdClientsList
accountsAdClientsList pAaclAccountId_ =
    AccountsAdClientsList'
    { _aaclAccountId = pAaclAccountId_
    , _aaclPageToken = Nothing
    , _aaclMaxResults = Nothing
    }

-- | Account for which to list ad clients.
aaclAccountId :: Lens' AccountsAdClientsList Text
aaclAccountId
  = lens _aaclAccountId
      (\ s a -> s{_aaclAccountId = a})

-- | A continuation token, used to page through ad clients. To retrieve the
-- next page, set this parameter to the value of \"nextPageToken\" from the
-- previous response.
aaclPageToken :: Lens' AccountsAdClientsList (Maybe Text)
aaclPageToken
  = lens _aaclPageToken
      (\ s a -> s{_aaclPageToken = a})

-- | The maximum number of ad clients to include in the response, used for
-- paging.
aaclMaxResults :: Lens' AccountsAdClientsList (Maybe Word32)
aaclMaxResults
  = lens _aaclMaxResults
      (\ s a -> s{_aaclMaxResults = a})
      . mapping _Coerce

instance GoogleRequest AccountsAdClientsList where
        type Rs AccountsAdClientsList = AdClients
        type Scopes AccountsAdClientsList =
             '["https://www.googleapis.com/auth/adsensehost"]
        requestClient AccountsAdClientsList'{..}
          = go _aaclAccountId _aaclPageToken _aaclMaxResults
              (Just AltJSON)
              adSenseHostService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsAdClientsListResource)
                      mempty
