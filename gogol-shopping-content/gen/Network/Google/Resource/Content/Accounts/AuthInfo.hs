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
-- Module      : Network.Google.Resource.Content.Accounts.AuthInfo
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the authenticated user.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounts.authinfo@.
module Network.Google.Resource.Content.Accounts.AuthInfo
    (
    -- * REST Resource
      AccountsAuthInfoResource

    -- * Creating a Request
    , accountsAuthInfo
    , AccountsAuthInfo

    -- * Request Lenses
    , aaiXgafv
    , aaiUploadProtocol
    , aaiAccessToken
    , aaiUploadType
    , aaiCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accounts.authinfo@ method which the
-- 'AccountsAuthInfo' request conforms to.
type AccountsAuthInfoResource =
     "content" :>
       "v2.1" :>
         "accounts" :>
           "authinfo" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] AccountsAuthInfoResponse

-- | Returns information about the authenticated user.
--
-- /See:/ 'accountsAuthInfo' smart constructor.
data AccountsAuthInfo =
  AccountsAuthInfo'
    { _aaiXgafv :: !(Maybe Xgafv)
    , _aaiUploadProtocol :: !(Maybe Text)
    , _aaiAccessToken :: !(Maybe Text)
    , _aaiUploadType :: !(Maybe Text)
    , _aaiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsAuthInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaiXgafv'
--
-- * 'aaiUploadProtocol'
--
-- * 'aaiAccessToken'
--
-- * 'aaiUploadType'
--
-- * 'aaiCallback'
accountsAuthInfo
    :: AccountsAuthInfo
accountsAuthInfo =
  AccountsAuthInfo'
    { _aaiXgafv = Nothing
    , _aaiUploadProtocol = Nothing
    , _aaiAccessToken = Nothing
    , _aaiUploadType = Nothing
    , _aaiCallback = Nothing
    }


-- | V1 error format.
aaiXgafv :: Lens' AccountsAuthInfo (Maybe Xgafv)
aaiXgafv = lens _aaiXgafv (\ s a -> s{_aaiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aaiUploadProtocol :: Lens' AccountsAuthInfo (Maybe Text)
aaiUploadProtocol
  = lens _aaiUploadProtocol
      (\ s a -> s{_aaiUploadProtocol = a})

-- | OAuth access token.
aaiAccessToken :: Lens' AccountsAuthInfo (Maybe Text)
aaiAccessToken
  = lens _aaiAccessToken
      (\ s a -> s{_aaiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aaiUploadType :: Lens' AccountsAuthInfo (Maybe Text)
aaiUploadType
  = lens _aaiUploadType
      (\ s a -> s{_aaiUploadType = a})

-- | JSONP
aaiCallback :: Lens' AccountsAuthInfo (Maybe Text)
aaiCallback
  = lens _aaiCallback (\ s a -> s{_aaiCallback = a})

instance GoogleRequest AccountsAuthInfo where
        type Rs AccountsAuthInfo = AccountsAuthInfoResponse
        type Scopes AccountsAuthInfo =
             '["https://www.googleapis.com/auth/content"]
        requestClient AccountsAuthInfo'{..}
          = go _aaiXgafv _aaiUploadProtocol _aaiAccessToken
              _aaiUploadType
              _aaiCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsAuthInfoResource)
                      mempty
