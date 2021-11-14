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
-- Module      : Network.Google.Resource.Content.Accounts.Credentials.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Uploads credentials for the Merchant Center account. If credentials
-- already exist for this Merchant Center account and purpose, this method
-- updates them.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounts.credentials.create@.
module Network.Google.Resource.Content.Accounts.Credentials.Create
    (
    -- * REST Resource
      AccountsCredentialsCreateResource

    -- * Creating a Request
    , accountsCredentialsCreate
    , AccountsCredentialsCreate

    -- * Request Lenses
    , acccXgafv
    , acccUploadProtocol
    , acccAccessToken
    , acccUploadType
    , acccPayload
    , acccAccountId
    , acccCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accounts.credentials.create@ method which the
-- 'AccountsCredentialsCreate' request conforms to.
type AccountsCredentialsCreateResource =
     "content" :>
       "v2.1" :>
         "accounts" :>
           Capture "accountId" (Textual Int64) :>
             "credentials" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] AccountCredentials :>
                             Post '[JSON] AccountCredentials

-- | Uploads credentials for the Merchant Center account. If credentials
-- already exist for this Merchant Center account and purpose, this method
-- updates them.
--
-- /See:/ 'accountsCredentialsCreate' smart constructor.
data AccountsCredentialsCreate =
  AccountsCredentialsCreate'
    { _acccXgafv :: !(Maybe Xgafv)
    , _acccUploadProtocol :: !(Maybe Text)
    , _acccAccessToken :: !(Maybe Text)
    , _acccUploadType :: !(Maybe Text)
    , _acccPayload :: !AccountCredentials
    , _acccAccountId :: !(Textual Int64)
    , _acccCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsCredentialsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acccXgafv'
--
-- * 'acccUploadProtocol'
--
-- * 'acccAccessToken'
--
-- * 'acccUploadType'
--
-- * 'acccPayload'
--
-- * 'acccAccountId'
--
-- * 'acccCallback'
accountsCredentialsCreate
    :: AccountCredentials -- ^ 'acccPayload'
    -> Int64 -- ^ 'acccAccountId'
    -> AccountsCredentialsCreate
accountsCredentialsCreate pAcccPayload_ pAcccAccountId_ =
  AccountsCredentialsCreate'
    { _acccXgafv = Nothing
    , _acccUploadProtocol = Nothing
    , _acccAccessToken = Nothing
    , _acccUploadType = Nothing
    , _acccPayload = pAcccPayload_
    , _acccAccountId = _Coerce # pAcccAccountId_
    , _acccCallback = Nothing
    }


-- | V1 error format.
acccXgafv :: Lens' AccountsCredentialsCreate (Maybe Xgafv)
acccXgafv
  = lens _acccXgafv (\ s a -> s{_acccXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acccUploadProtocol :: Lens' AccountsCredentialsCreate (Maybe Text)
acccUploadProtocol
  = lens _acccUploadProtocol
      (\ s a -> s{_acccUploadProtocol = a})

-- | OAuth access token.
acccAccessToken :: Lens' AccountsCredentialsCreate (Maybe Text)
acccAccessToken
  = lens _acccAccessToken
      (\ s a -> s{_acccAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acccUploadType :: Lens' AccountsCredentialsCreate (Maybe Text)
acccUploadType
  = lens _acccUploadType
      (\ s a -> s{_acccUploadType = a})

-- | Multipart request metadata.
acccPayload :: Lens' AccountsCredentialsCreate AccountCredentials
acccPayload
  = lens _acccPayload (\ s a -> s{_acccPayload = a})

-- | Required. The merchant id of the account these credentials belong to.
acccAccountId :: Lens' AccountsCredentialsCreate Int64
acccAccountId
  = lens _acccAccountId
      (\ s a -> s{_acccAccountId = a})
      . _Coerce

-- | JSONP
acccCallback :: Lens' AccountsCredentialsCreate (Maybe Text)
acccCallback
  = lens _acccCallback (\ s a -> s{_acccCallback = a})

instance GoogleRequest AccountsCredentialsCreate
         where
        type Rs AccountsCredentialsCreate =
             AccountCredentials
        type Scopes AccountsCredentialsCreate =
             '["https://www.googleapis.com/auth/content"]
        requestClient AccountsCredentialsCreate'{..}
          = go _acccAccountId _acccXgafv _acccUploadProtocol
              _acccAccessToken
              _acccUploadType
              _acccCallback
              (Just AltJSON)
              _acccPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsCredentialsCreateResource)
                      mempty
