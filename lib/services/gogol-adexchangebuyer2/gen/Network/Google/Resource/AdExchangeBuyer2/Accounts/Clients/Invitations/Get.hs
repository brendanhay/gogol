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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Accounts.Clients.Invitations.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an existing client user invitation.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.clients.invitations.get@.
module Network.Google.Resource.AdExchangeBuyer2.Accounts.Clients.Invitations.Get
    (
    -- * REST Resource
      AccountsClientsInvitationsGetResource

    -- * Creating a Request
    , accountsClientsInvitationsGet
    , AccountsClientsInvitationsGet

    -- * Request Lenses
    , acigXgafv
    , acigUploadProtocol
    , acigAccessToken
    , acigUploadType
    , acigInvitationId
    , acigAccountId
    , acigClientAccountId
    , acigCallback
    ) where

import Network.Google.AdExchangeBuyer2.Types
import Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.accounts.clients.invitations.get@ method which the
-- 'AccountsClientsInvitationsGet' request conforms to.
type AccountsClientsInvitationsGetResource =
     "v2beta1" :>
       "accounts" :>
         Capture "accountId" (Textual Int64) :>
           "clients" :>
             Capture "clientAccountId" (Textual Int64) :>
               "invitations" :>
                 Capture "invitationId" (Textual Int64) :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ClientUserInvitation

-- | Retrieves an existing client user invitation.
--
-- /See:/ 'accountsClientsInvitationsGet' smart constructor.
data AccountsClientsInvitationsGet =
  AccountsClientsInvitationsGet'
    { _acigXgafv :: !(Maybe Xgafv)
    , _acigUploadProtocol :: !(Maybe Text)
    , _acigAccessToken :: !(Maybe Text)
    , _acigUploadType :: !(Maybe Text)
    , _acigInvitationId :: !(Textual Int64)
    , _acigAccountId :: !(Textual Int64)
    , _acigClientAccountId :: !(Textual Int64)
    , _acigCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsClientsInvitationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acigXgafv'
--
-- * 'acigUploadProtocol'
--
-- * 'acigAccessToken'
--
-- * 'acigUploadType'
--
-- * 'acigInvitationId'
--
-- * 'acigAccountId'
--
-- * 'acigClientAccountId'
--
-- * 'acigCallback'
accountsClientsInvitationsGet
    :: Int64 -- ^ 'acigInvitationId'
    -> Int64 -- ^ 'acigAccountId'
    -> Int64 -- ^ 'acigClientAccountId'
    -> AccountsClientsInvitationsGet
accountsClientsInvitationsGet pAcigInvitationId_ pAcigAccountId_ pAcigClientAccountId_ =
  AccountsClientsInvitationsGet'
    { _acigXgafv = Nothing
    , _acigUploadProtocol = Nothing
    , _acigAccessToken = Nothing
    , _acigUploadType = Nothing
    , _acigInvitationId = _Coerce # pAcigInvitationId_
    , _acigAccountId = _Coerce # pAcigAccountId_
    , _acigClientAccountId = _Coerce # pAcigClientAccountId_
    , _acigCallback = Nothing
    }


-- | V1 error format.
acigXgafv :: Lens' AccountsClientsInvitationsGet (Maybe Xgafv)
acigXgafv
  = lens _acigXgafv (\ s a -> s{_acigXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acigUploadProtocol :: Lens' AccountsClientsInvitationsGet (Maybe Text)
acigUploadProtocol
  = lens _acigUploadProtocol
      (\ s a -> s{_acigUploadProtocol = a})

-- | OAuth access token.
acigAccessToken :: Lens' AccountsClientsInvitationsGet (Maybe Text)
acigAccessToken
  = lens _acigAccessToken
      (\ s a -> s{_acigAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acigUploadType :: Lens' AccountsClientsInvitationsGet (Maybe Text)
acigUploadType
  = lens _acigUploadType
      (\ s a -> s{_acigUploadType = a})

-- | Numerical identifier of the user invitation to retrieve. (required)
acigInvitationId :: Lens' AccountsClientsInvitationsGet Int64
acigInvitationId
  = lens _acigInvitationId
      (\ s a -> s{_acigInvitationId = a})
      . _Coerce

-- | Numerical account ID of the client\'s sponsor buyer. (required)
acigAccountId :: Lens' AccountsClientsInvitationsGet Int64
acigAccountId
  = lens _acigAccountId
      (\ s a -> s{_acigAccountId = a})
      . _Coerce

-- | Numerical account ID of the client buyer that the user invitation to be
-- retrieved is associated with. (required)
acigClientAccountId :: Lens' AccountsClientsInvitationsGet Int64
acigClientAccountId
  = lens _acigClientAccountId
      (\ s a -> s{_acigClientAccountId = a})
      . _Coerce

-- | JSONP
acigCallback :: Lens' AccountsClientsInvitationsGet (Maybe Text)
acigCallback
  = lens _acigCallback (\ s a -> s{_acigCallback = a})

instance GoogleRequest AccountsClientsInvitationsGet
         where
        type Rs AccountsClientsInvitationsGet =
             ClientUserInvitation
        type Scopes AccountsClientsInvitationsGet =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient AccountsClientsInvitationsGet'{..}
          = go _acigAccountId _acigClientAccountId
              _acigInvitationId
              _acigXgafv
              _acigUploadProtocol
              _acigAccessToken
              _acigUploadType
              _acigCallback
              (Just AltJSON)
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsClientsInvitationsGetResource)
                      mempty
