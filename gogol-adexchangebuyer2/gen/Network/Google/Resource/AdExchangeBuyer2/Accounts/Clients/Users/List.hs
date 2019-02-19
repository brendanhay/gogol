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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Accounts.Clients.Users.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the known client users for a specified sponsor buyer account
-- ID.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.clients.users.list@.
module Network.Google.Resource.AdExchangeBuyer2.Accounts.Clients.Users.List
    (
    -- * REST Resource
      AccountsClientsUsersListResource

    -- * Creating a Request
    , accountsClientsUsersList
    , AccountsClientsUsersList

    -- * Request Lenses
    , aculXgafv
    , aculUploadProtocol
    , aculAccessToken
    , aculUploadType
    , aculAccountId
    , aculClientAccountId
    , aculPageToken
    , aculPageSize
    , aculCallback
    ) where

import           Network.Google.AdExchangeBuyer2.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.accounts.clients.users.list@ method which the
-- 'AccountsClientsUsersList' request conforms to.
type AccountsClientsUsersListResource =
     "v2beta1" :>
       "accounts" :>
         Capture "accountId" (Textual Int64) :>
           "clients" :>
             Capture "clientAccountId" Text :>
               "users" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "pageSize" (Textual Int32) :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ListClientUsersResponse

-- | Lists all the known client users for a specified sponsor buyer account
-- ID.
--
-- /See:/ 'accountsClientsUsersList' smart constructor.
data AccountsClientsUsersList =
  AccountsClientsUsersList'
    { _aculXgafv           :: !(Maybe Xgafv)
    , _aculUploadProtocol  :: !(Maybe Text)
    , _aculAccessToken     :: !(Maybe Text)
    , _aculUploadType      :: !(Maybe Text)
    , _aculAccountId       :: !(Textual Int64)
    , _aculClientAccountId :: !Text
    , _aculPageToken       :: !(Maybe Text)
    , _aculPageSize        :: !(Maybe (Textual Int32))
    , _aculCallback        :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsClientsUsersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aculXgafv'
--
-- * 'aculUploadProtocol'
--
-- * 'aculAccessToken'
--
-- * 'aculUploadType'
--
-- * 'aculAccountId'
--
-- * 'aculClientAccountId'
--
-- * 'aculPageToken'
--
-- * 'aculPageSize'
--
-- * 'aculCallback'
accountsClientsUsersList
    :: Int64 -- ^ 'aculAccountId'
    -> Text -- ^ 'aculClientAccountId'
    -> AccountsClientsUsersList
accountsClientsUsersList pAculAccountId_ pAculClientAccountId_ =
  AccountsClientsUsersList'
    { _aculXgafv = Nothing
    , _aculUploadProtocol = Nothing
    , _aculAccessToken = Nothing
    , _aculUploadType = Nothing
    , _aculAccountId = _Coerce # pAculAccountId_
    , _aculClientAccountId = pAculClientAccountId_
    , _aculPageToken = Nothing
    , _aculPageSize = Nothing
    , _aculCallback = Nothing
    }


-- | V1 error format.
aculXgafv :: Lens' AccountsClientsUsersList (Maybe Xgafv)
aculXgafv
  = lens _aculXgafv (\ s a -> s{_aculXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aculUploadProtocol :: Lens' AccountsClientsUsersList (Maybe Text)
aculUploadProtocol
  = lens _aculUploadProtocol
      (\ s a -> s{_aculUploadProtocol = a})

-- | OAuth access token.
aculAccessToken :: Lens' AccountsClientsUsersList (Maybe Text)
aculAccessToken
  = lens _aculAccessToken
      (\ s a -> s{_aculAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aculUploadType :: Lens' AccountsClientsUsersList (Maybe Text)
aculUploadType
  = lens _aculUploadType
      (\ s a -> s{_aculUploadType = a})

-- | Numerical account ID of the sponsor buyer of the client to list users
-- for. (required)
aculAccountId :: Lens' AccountsClientsUsersList Int64
aculAccountId
  = lens _aculAccountId
      (\ s a -> s{_aculAccountId = a})
      . _Coerce

-- | The account ID of the client buyer to list users for. (required) You
-- must specify either a string representation of a numerical account
-- identifier or the \`-\` character to list all the client users for all
-- the clients of a given sponsor buyer.
aculClientAccountId :: Lens' AccountsClientsUsersList Text
aculClientAccountId
  = lens _aculClientAccountId
      (\ s a -> s{_aculClientAccountId = a})

-- | A token identifying a page of results the server should return.
-- Typically, this is the value of ListClientUsersResponse.nextPageToken
-- returned from the previous call to the accounts.clients.users.list
-- method.
aculPageToken :: Lens' AccountsClientsUsersList (Maybe Text)
aculPageToken
  = lens _aculPageToken
      (\ s a -> s{_aculPageToken = a})

-- | Requested page size. The server may return fewer clients than requested.
-- If unspecified, the server will pick an appropriate default.
aculPageSize :: Lens' AccountsClientsUsersList (Maybe Int32)
aculPageSize
  = lens _aculPageSize (\ s a -> s{_aculPageSize = a})
      . mapping _Coerce

-- | JSONP
aculCallback :: Lens' AccountsClientsUsersList (Maybe Text)
aculCallback
  = lens _aculCallback (\ s a -> s{_aculCallback = a})

instance GoogleRequest AccountsClientsUsersList where
        type Rs AccountsClientsUsersList =
             ListClientUsersResponse
        type Scopes AccountsClientsUsersList =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient AccountsClientsUsersList'{..}
          = go _aculAccountId _aculClientAccountId _aculXgafv
              _aculUploadProtocol
              _aculAccessToken
              _aculUploadType
              _aculPageToken
              _aculPageSize
              _aculCallback
              (Just AltJSON)
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsClientsUsersListResource)
                      mempty
