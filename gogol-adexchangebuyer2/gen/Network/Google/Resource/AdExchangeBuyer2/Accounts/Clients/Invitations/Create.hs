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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Accounts.Clients.Invitations.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates and sends out an email invitation to access an Ad Exchange
-- client buyer account.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.clients.invitations.create@.
module Network.Google.Resource.AdExchangeBuyer2.Accounts.Clients.Invitations.Create
    (
    -- * REST Resource
      AccountsClientsInvitationsCreateResource

    -- * Creating a Request
    , accountsClientsInvitationsCreate
    , AccountsClientsInvitationsCreate

    -- * Request Lenses
    , acicXgafv
    , acicUploadProtocol
    , acicAccessToken
    , acicUploadType
    , acicPayload
    , acicAccountId
    , acicClientAccountId
    , acicCallback
    ) where

import           Network.Google.AdExchangeBuyer2.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.accounts.clients.invitations.create@ method which the
-- 'AccountsClientsInvitationsCreate' request conforms to.
type AccountsClientsInvitationsCreateResource =
     "v2beta1" :>
       "accounts" :>
         Capture "accountId" (Textual Int64) :>
           "clients" :>
             Capture "clientAccountId" (Textual Int64) :>
               "invitations" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] ClientUserInvitation :>
                               Post '[JSON] ClientUserInvitation

-- | Creates and sends out an email invitation to access an Ad Exchange
-- client buyer account.
--
-- /See:/ 'accountsClientsInvitationsCreate' smart constructor.
data AccountsClientsInvitationsCreate = AccountsClientsInvitationsCreate'
    { _acicXgafv           :: !(Maybe Xgafv)
    , _acicUploadProtocol  :: !(Maybe Text)
    , _acicAccessToken     :: !(Maybe Text)
    , _acicUploadType      :: !(Maybe Text)
    , _acicPayload         :: !ClientUserInvitation
    , _acicAccountId       :: !(Textual Int64)
    , _acicClientAccountId :: !(Textual Int64)
    , _acicCallback        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsClientsInvitationsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acicXgafv'
--
-- * 'acicUploadProtocol'
--
-- * 'acicAccessToken'
--
-- * 'acicUploadType'
--
-- * 'acicPayload'
--
-- * 'acicAccountId'
--
-- * 'acicClientAccountId'
--
-- * 'acicCallback'
accountsClientsInvitationsCreate
    :: ClientUserInvitation -- ^ 'acicPayload'
    -> Int64 -- ^ 'acicAccountId'
    -> Int64 -- ^ 'acicClientAccountId'
    -> AccountsClientsInvitationsCreate
accountsClientsInvitationsCreate pAcicPayload_ pAcicAccountId_ pAcicClientAccountId_ =
    AccountsClientsInvitationsCreate'
    { _acicXgafv = Nothing
    , _acicUploadProtocol = Nothing
    , _acicAccessToken = Nothing
    , _acicUploadType = Nothing
    , _acicPayload = pAcicPayload_
    , _acicAccountId = _Coerce # pAcicAccountId_
    , _acicClientAccountId = _Coerce # pAcicClientAccountId_
    , _acicCallback = Nothing
    }

-- | V1 error format.
acicXgafv :: Lens' AccountsClientsInvitationsCreate (Maybe Xgafv)
acicXgafv
  = lens _acicXgafv (\ s a -> s{_acicXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acicUploadProtocol :: Lens' AccountsClientsInvitationsCreate (Maybe Text)
acicUploadProtocol
  = lens _acicUploadProtocol
      (\ s a -> s{_acicUploadProtocol = a})

-- | OAuth access token.
acicAccessToken :: Lens' AccountsClientsInvitationsCreate (Maybe Text)
acicAccessToken
  = lens _acicAccessToken
      (\ s a -> s{_acicAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acicUploadType :: Lens' AccountsClientsInvitationsCreate (Maybe Text)
acicUploadType
  = lens _acicUploadType
      (\ s a -> s{_acicUploadType = a})

-- | Multipart request metadata.
acicPayload :: Lens' AccountsClientsInvitationsCreate ClientUserInvitation
acicPayload
  = lens _acicPayload (\ s a -> s{_acicPayload = a})

-- | Numerical account ID of the client\'s sponsor buyer. (required)
acicAccountId :: Lens' AccountsClientsInvitationsCreate Int64
acicAccountId
  = lens _acicAccountId
      (\ s a -> s{_acicAccountId = a})
      . _Coerce

-- | Numerical account ID of the client buyer that the user should be
-- associated with. (required)
acicClientAccountId :: Lens' AccountsClientsInvitationsCreate Int64
acicClientAccountId
  = lens _acicClientAccountId
      (\ s a -> s{_acicClientAccountId = a})
      . _Coerce

-- | JSONP
acicCallback :: Lens' AccountsClientsInvitationsCreate (Maybe Text)
acicCallback
  = lens _acicCallback (\ s a -> s{_acicCallback = a})

instance GoogleRequest
         AccountsClientsInvitationsCreate where
        type Rs AccountsClientsInvitationsCreate =
             ClientUserInvitation
        type Scopes AccountsClientsInvitationsCreate =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient AccountsClientsInvitationsCreate'{..}
          = go _acicAccountId _acicClientAccountId _acicXgafv
              _acicUploadProtocol
              _acicAccessToken
              _acicUploadType
              _acicCallback
              (Just AltJSON)
              _acicPayload
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsClientsInvitationsCreateResource)
                      mempty
