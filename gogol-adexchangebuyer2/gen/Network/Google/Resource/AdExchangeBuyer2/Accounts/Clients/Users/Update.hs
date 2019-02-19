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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Accounts.Clients.Users.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing client user. Only the user status can be changed on
-- update.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.clients.users.update@.
module Network.Google.Resource.AdExchangeBuyer2.Accounts.Clients.Users.Update
    (
    -- * REST Resource
      AccountsClientsUsersUpdateResource

    -- * Creating a Request
    , accountsClientsUsersUpdate
    , AccountsClientsUsersUpdate

    -- * Request Lenses
    , acuuXgafv
    , acuuUploadProtocol
    , acuuAccessToken
    , acuuUploadType
    , acuuPayload
    , acuuUserId
    , acuuAccountId
    , acuuClientAccountId
    , acuuCallback
    ) where

import           Network.Google.AdExchangeBuyer2.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.accounts.clients.users.update@ method which the
-- 'AccountsClientsUsersUpdate' request conforms to.
type AccountsClientsUsersUpdateResource =
     "v2beta1" :>
       "accounts" :>
         Capture "accountId" (Textual Int64) :>
           "clients" :>
             Capture "clientAccountId" (Textual Int64) :>
               "users" :>
                 Capture "userId" (Textual Int64) :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] ClientUser :>
                                 Put '[JSON] ClientUser

-- | Updates an existing client user. Only the user status can be changed on
-- update.
--
-- /See:/ 'accountsClientsUsersUpdate' smart constructor.
data AccountsClientsUsersUpdate =
  AccountsClientsUsersUpdate'
    { _acuuXgafv           :: !(Maybe Xgafv)
    , _acuuUploadProtocol  :: !(Maybe Text)
    , _acuuAccessToken     :: !(Maybe Text)
    , _acuuUploadType      :: !(Maybe Text)
    , _acuuPayload         :: !ClientUser
    , _acuuUserId          :: !(Textual Int64)
    , _acuuAccountId       :: !(Textual Int64)
    , _acuuClientAccountId :: !(Textual Int64)
    , _acuuCallback        :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountsClientsUsersUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acuuXgafv'
--
-- * 'acuuUploadProtocol'
--
-- * 'acuuAccessToken'
--
-- * 'acuuUploadType'
--
-- * 'acuuPayload'
--
-- * 'acuuUserId'
--
-- * 'acuuAccountId'
--
-- * 'acuuClientAccountId'
--
-- * 'acuuCallback'
accountsClientsUsersUpdate
    :: ClientUser -- ^ 'acuuPayload'
    -> Int64 -- ^ 'acuuUserId'
    -> Int64 -- ^ 'acuuAccountId'
    -> Int64 -- ^ 'acuuClientAccountId'
    -> AccountsClientsUsersUpdate
accountsClientsUsersUpdate pAcuuPayload_ pAcuuUserId_ pAcuuAccountId_ pAcuuClientAccountId_ =
  AccountsClientsUsersUpdate'
    { _acuuXgafv = Nothing
    , _acuuUploadProtocol = Nothing
    , _acuuAccessToken = Nothing
    , _acuuUploadType = Nothing
    , _acuuPayload = pAcuuPayload_
    , _acuuUserId = _Coerce # pAcuuUserId_
    , _acuuAccountId = _Coerce # pAcuuAccountId_
    , _acuuClientAccountId = _Coerce # pAcuuClientAccountId_
    , _acuuCallback = Nothing
    }

-- | V1 error format.
acuuXgafv :: Lens' AccountsClientsUsersUpdate (Maybe Xgafv)
acuuXgafv
  = lens _acuuXgafv (\ s a -> s{_acuuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acuuUploadProtocol :: Lens' AccountsClientsUsersUpdate (Maybe Text)
acuuUploadProtocol
  = lens _acuuUploadProtocol
      (\ s a -> s{_acuuUploadProtocol = a})

-- | OAuth access token.
acuuAccessToken :: Lens' AccountsClientsUsersUpdate (Maybe Text)
acuuAccessToken
  = lens _acuuAccessToken
      (\ s a -> s{_acuuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acuuUploadType :: Lens' AccountsClientsUsersUpdate (Maybe Text)
acuuUploadType
  = lens _acuuUploadType
      (\ s a -> s{_acuuUploadType = a})

-- | Multipart request metadata.
acuuPayload :: Lens' AccountsClientsUsersUpdate ClientUser
acuuPayload
  = lens _acuuPayload (\ s a -> s{_acuuPayload = a})

-- | Numerical identifier of the user to retrieve. (required)
acuuUserId :: Lens' AccountsClientsUsersUpdate Int64
acuuUserId
  = lens _acuuUserId (\ s a -> s{_acuuUserId = a}) .
      _Coerce

-- | Numerical account ID of the client\'s sponsor buyer. (required)
acuuAccountId :: Lens' AccountsClientsUsersUpdate Int64
acuuAccountId
  = lens _acuuAccountId
      (\ s a -> s{_acuuAccountId = a})
      . _Coerce

-- | Numerical account ID of the client buyer that the user to be retrieved
-- is associated with. (required)
acuuClientAccountId :: Lens' AccountsClientsUsersUpdate Int64
acuuClientAccountId
  = lens _acuuClientAccountId
      (\ s a -> s{_acuuClientAccountId = a})
      . _Coerce

-- | JSONP
acuuCallback :: Lens' AccountsClientsUsersUpdate (Maybe Text)
acuuCallback
  = lens _acuuCallback (\ s a -> s{_acuuCallback = a})

instance GoogleRequest AccountsClientsUsersUpdate
         where
        type Rs AccountsClientsUsersUpdate = ClientUser
        type Scopes AccountsClientsUsersUpdate =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient AccountsClientsUsersUpdate'{..}
          = go _acuuAccountId _acuuClientAccountId _acuuUserId
              _acuuXgafv
              _acuuUploadProtocol
              _acuuAccessToken
              _acuuUploadType
              _acuuCallback
              (Just AltJSON)
              _acuuPayload
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsClientsUsersUpdateResource)
                      mempty
