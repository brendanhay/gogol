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
-- Module      : Network.Google.Resource.CloudShell.Users.Environments.Authorize
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sends OAuth credentials to a running environment on behalf of a user.
-- When this completes, the environment will be authorized to run various
-- Google Cloud command line tools without requiring the user to manually
-- authenticate.
--
-- /See:/ <https://cloud.google.com/shell/docs/ Cloud Shell API Reference> for @cloudshell.users.environments.authorize@.
module Network.Google.Resource.CloudShell.Users.Environments.Authorize
    (
    -- * REST Resource
      UsersEnvironmentsAuthorizeResource

    -- * Creating a Request
    , usersEnvironmentsAuthorize
    , UsersEnvironmentsAuthorize

    -- * Request Lenses
    , ueaXgafv
    , ueaUploadProtocol
    , ueaAccessToken
    , ueaUploadType
    , ueaPayload
    , ueaName
    , ueaCallback
    ) where

import Network.Google.CloudShell.Types
import Network.Google.Prelude

-- | A resource alias for @cloudshell.users.environments.authorize@ method which the
-- 'UsersEnvironmentsAuthorize' request conforms to.
type UsersEnvironmentsAuthorizeResource =
     "v1" :>
       CaptureMode "name" "authorize" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] AuthorizeEnvironmentRequest :>
                       Post '[JSON] Operation

-- | Sends OAuth credentials to a running environment on behalf of a user.
-- When this completes, the environment will be authorized to run various
-- Google Cloud command line tools without requiring the user to manually
-- authenticate.
--
-- /See:/ 'usersEnvironmentsAuthorize' smart constructor.
data UsersEnvironmentsAuthorize =
  UsersEnvironmentsAuthorize'
    { _ueaXgafv :: !(Maybe Xgafv)
    , _ueaUploadProtocol :: !(Maybe Text)
    , _ueaAccessToken :: !(Maybe Text)
    , _ueaUploadType :: !(Maybe Text)
    , _ueaPayload :: !AuthorizeEnvironmentRequest
    , _ueaName :: !Text
    , _ueaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersEnvironmentsAuthorize' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ueaXgafv'
--
-- * 'ueaUploadProtocol'
--
-- * 'ueaAccessToken'
--
-- * 'ueaUploadType'
--
-- * 'ueaPayload'
--
-- * 'ueaName'
--
-- * 'ueaCallback'
usersEnvironmentsAuthorize
    :: AuthorizeEnvironmentRequest -- ^ 'ueaPayload'
    -> Text -- ^ 'ueaName'
    -> UsersEnvironmentsAuthorize
usersEnvironmentsAuthorize pUeaPayload_ pUeaName_ =
  UsersEnvironmentsAuthorize'
    { _ueaXgafv = Nothing
    , _ueaUploadProtocol = Nothing
    , _ueaAccessToken = Nothing
    , _ueaUploadType = Nothing
    , _ueaPayload = pUeaPayload_
    , _ueaName = pUeaName_
    , _ueaCallback = Nothing
    }


-- | V1 error format.
ueaXgafv :: Lens' UsersEnvironmentsAuthorize (Maybe Xgafv)
ueaXgafv = lens _ueaXgafv (\ s a -> s{_ueaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ueaUploadProtocol :: Lens' UsersEnvironmentsAuthorize (Maybe Text)
ueaUploadProtocol
  = lens _ueaUploadProtocol
      (\ s a -> s{_ueaUploadProtocol = a})

-- | OAuth access token.
ueaAccessToken :: Lens' UsersEnvironmentsAuthorize (Maybe Text)
ueaAccessToken
  = lens _ueaAccessToken
      (\ s a -> s{_ueaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ueaUploadType :: Lens' UsersEnvironmentsAuthorize (Maybe Text)
ueaUploadType
  = lens _ueaUploadType
      (\ s a -> s{_ueaUploadType = a})

-- | Multipart request metadata.
ueaPayload :: Lens' UsersEnvironmentsAuthorize AuthorizeEnvironmentRequest
ueaPayload
  = lens _ueaPayload (\ s a -> s{_ueaPayload = a})

-- | Name of the resource that should receive the credentials, for example
-- \`users\/me\/environments\/default\` or
-- \`users\/someone\'example.com\/environments\/default\`.
ueaName :: Lens' UsersEnvironmentsAuthorize Text
ueaName = lens _ueaName (\ s a -> s{_ueaName = a})

-- | JSONP
ueaCallback :: Lens' UsersEnvironmentsAuthorize (Maybe Text)
ueaCallback
  = lens _ueaCallback (\ s a -> s{_ueaCallback = a})

instance GoogleRequest UsersEnvironmentsAuthorize
         where
        type Rs UsersEnvironmentsAuthorize = Operation
        type Scopes UsersEnvironmentsAuthorize =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient UsersEnvironmentsAuthorize'{..}
          = go _ueaName _ueaXgafv _ueaUploadProtocol
              _ueaAccessToken
              _ueaUploadType
              _ueaCallback
              (Just AltJSON)
              _ueaPayload
              cloudShellService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersEnvironmentsAuthorizeResource)
                      mempty
