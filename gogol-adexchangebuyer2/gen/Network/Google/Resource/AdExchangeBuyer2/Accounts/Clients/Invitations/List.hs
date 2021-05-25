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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Accounts.Clients.Invitations.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the client users invitations for a client with a given account
-- ID.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.clients.invitations.list@.
module Network.Google.Resource.AdExchangeBuyer2.Accounts.Clients.Invitations.List
    (
    -- * REST Resource
      AccountsClientsInvitationsListResource

    -- * Creating a Request
    , accountsClientsInvitationsList
    , AccountsClientsInvitationsList

    -- * Request Lenses
    , acilXgafv
    , acilUploadProtocol
    , acilAccessToken
    , acilUploadType
    , acilAccountId
    , acilClientAccountId
    , acilPageToken
    , acilPageSize
    , acilCallback
    ) where

import Network.Google.AdExchangeBuyer2.Types
import Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.accounts.clients.invitations.list@ method which the
-- 'AccountsClientsInvitationsList' request conforms to.
type AccountsClientsInvitationsListResource =
     "v2beta1" :>
       "accounts" :>
         Capture "accountId" (Textual Int64) :>
           "clients" :>
             Capture "clientAccountId" Text :>
               "invitations" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "pageSize" (Textual Int32) :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ListClientUserInvitationsResponse

-- | Lists all the client users invitations for a client with a given account
-- ID.
--
-- /See:/ 'accountsClientsInvitationsList' smart constructor.
data AccountsClientsInvitationsList =
  AccountsClientsInvitationsList'
    { _acilXgafv :: !(Maybe Xgafv)
    , _acilUploadProtocol :: !(Maybe Text)
    , _acilAccessToken :: !(Maybe Text)
    , _acilUploadType :: !(Maybe Text)
    , _acilAccountId :: !(Textual Int64)
    , _acilClientAccountId :: !Text
    , _acilPageToken :: !(Maybe Text)
    , _acilPageSize :: !(Maybe (Textual Int32))
    , _acilCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsClientsInvitationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acilXgafv'
--
-- * 'acilUploadProtocol'
--
-- * 'acilAccessToken'
--
-- * 'acilUploadType'
--
-- * 'acilAccountId'
--
-- * 'acilClientAccountId'
--
-- * 'acilPageToken'
--
-- * 'acilPageSize'
--
-- * 'acilCallback'
accountsClientsInvitationsList
    :: Int64 -- ^ 'acilAccountId'
    -> Text -- ^ 'acilClientAccountId'
    -> AccountsClientsInvitationsList
accountsClientsInvitationsList pAcilAccountId_ pAcilClientAccountId_ =
  AccountsClientsInvitationsList'
    { _acilXgafv = Nothing
    , _acilUploadProtocol = Nothing
    , _acilAccessToken = Nothing
    , _acilUploadType = Nothing
    , _acilAccountId = _Coerce # pAcilAccountId_
    , _acilClientAccountId = pAcilClientAccountId_
    , _acilPageToken = Nothing
    , _acilPageSize = Nothing
    , _acilCallback = Nothing
    }


-- | V1 error format.
acilXgafv :: Lens' AccountsClientsInvitationsList (Maybe Xgafv)
acilXgafv
  = lens _acilXgafv (\ s a -> s{_acilXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acilUploadProtocol :: Lens' AccountsClientsInvitationsList (Maybe Text)
acilUploadProtocol
  = lens _acilUploadProtocol
      (\ s a -> s{_acilUploadProtocol = a})

-- | OAuth access token.
acilAccessToken :: Lens' AccountsClientsInvitationsList (Maybe Text)
acilAccessToken
  = lens _acilAccessToken
      (\ s a -> s{_acilAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acilUploadType :: Lens' AccountsClientsInvitationsList (Maybe Text)
acilUploadType
  = lens _acilUploadType
      (\ s a -> s{_acilUploadType = a})

-- | Numerical account ID of the client\'s sponsor buyer. (required)
acilAccountId :: Lens' AccountsClientsInvitationsList Int64
acilAccountId
  = lens _acilAccountId
      (\ s a -> s{_acilAccountId = a})
      . _Coerce

-- | Numerical account ID of the client buyer to list invitations for.
-- (required) You must either specify a string representation of a
-- numerical account identifier or the \`-\` character to list all the
-- invitations for all the clients of a given sponsor buyer.
acilClientAccountId :: Lens' AccountsClientsInvitationsList Text
acilClientAccountId
  = lens _acilClientAccountId
      (\ s a -> s{_acilClientAccountId = a})

-- | A token identifying a page of results the server should return.
-- Typically, this is the value of
-- ListClientUserInvitationsResponse.nextPageToken returned from the
-- previous call to the clients.invitations.list method.
acilPageToken :: Lens' AccountsClientsInvitationsList (Maybe Text)
acilPageToken
  = lens _acilPageToken
      (\ s a -> s{_acilPageToken = a})

-- | Requested page size. Server may return fewer clients than requested. If
-- unspecified, server will pick an appropriate default.
acilPageSize :: Lens' AccountsClientsInvitationsList (Maybe Int32)
acilPageSize
  = lens _acilPageSize (\ s a -> s{_acilPageSize = a})
      . mapping _Coerce

-- | JSONP
acilCallback :: Lens' AccountsClientsInvitationsList (Maybe Text)
acilCallback
  = lens _acilCallback (\ s a -> s{_acilCallback = a})

instance GoogleRequest AccountsClientsInvitationsList
         where
        type Rs AccountsClientsInvitationsList =
             ListClientUserInvitationsResponse
        type Scopes AccountsClientsInvitationsList =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient AccountsClientsInvitationsList'{..}
          = go _acilAccountId _acilClientAccountId _acilXgafv
              _acilUploadProtocol
              _acilAccessToken
              _acilUploadType
              _acilPageToken
              _acilPageSize
              _acilCallback
              (Just AltJSON)
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsClientsInvitationsListResource)
                      mempty
