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
-- Module      : Network.Google.Resource.CloudShell.Users.Environments.Start
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts an existing environment, allowing clients to connect to it. The
-- returned operation will contain an instance of StartEnvironmentMetadata
-- in its metadata field. Users can wait for the environment to start by
-- polling this operation via GetOperation. Once the environment has
-- finished starting and is ready to accept connections, the operation will
-- contain a StartEnvironmentResponse in its response field.
--
-- /See:/ <https://cloud.google.com/shell/docs/ Cloud Shell API Reference> for @cloudshell.users.environments.start@.
module Network.Google.Resource.CloudShell.Users.Environments.Start
    (
    -- * REST Resource
      UsersEnvironmentsStartResource

    -- * Creating a Request
    , usersEnvironmentsStart
    , UsersEnvironmentsStart

    -- * Request Lenses
    , uesXgafv
    , uesUploadProtocol
    , uesAccessToken
    , uesUploadType
    , uesPayload
    , uesName
    , uesCallback
    ) where

import Network.Google.CloudShell.Types
import Network.Google.Prelude

-- | A resource alias for @cloudshell.users.environments.start@ method which the
-- 'UsersEnvironmentsStart' request conforms to.
type UsersEnvironmentsStartResource =
     "v1" :>
       CaptureMode "name" "start" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] StartEnvironmentRequest :>
                       Post '[JSON] Operation

-- | Starts an existing environment, allowing clients to connect to it. The
-- returned operation will contain an instance of StartEnvironmentMetadata
-- in its metadata field. Users can wait for the environment to start by
-- polling this operation via GetOperation. Once the environment has
-- finished starting and is ready to accept connections, the operation will
-- contain a StartEnvironmentResponse in its response field.
--
-- /See:/ 'usersEnvironmentsStart' smart constructor.
data UsersEnvironmentsStart =
  UsersEnvironmentsStart'
    { _uesXgafv :: !(Maybe Xgafv)
    , _uesUploadProtocol :: !(Maybe Text)
    , _uesAccessToken :: !(Maybe Text)
    , _uesUploadType :: !(Maybe Text)
    , _uesPayload :: !StartEnvironmentRequest
    , _uesName :: !Text
    , _uesCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersEnvironmentsStart' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uesXgafv'
--
-- * 'uesUploadProtocol'
--
-- * 'uesAccessToken'
--
-- * 'uesUploadType'
--
-- * 'uesPayload'
--
-- * 'uesName'
--
-- * 'uesCallback'
usersEnvironmentsStart
    :: StartEnvironmentRequest -- ^ 'uesPayload'
    -> Text -- ^ 'uesName'
    -> UsersEnvironmentsStart
usersEnvironmentsStart pUesPayload_ pUesName_ =
  UsersEnvironmentsStart'
    { _uesXgafv = Nothing
    , _uesUploadProtocol = Nothing
    , _uesAccessToken = Nothing
    , _uesUploadType = Nothing
    , _uesPayload = pUesPayload_
    , _uesName = pUesName_
    , _uesCallback = Nothing
    }


-- | V1 error format.
uesXgafv :: Lens' UsersEnvironmentsStart (Maybe Xgafv)
uesXgafv = lens _uesXgafv (\ s a -> s{_uesXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
uesUploadProtocol :: Lens' UsersEnvironmentsStart (Maybe Text)
uesUploadProtocol
  = lens _uesUploadProtocol
      (\ s a -> s{_uesUploadProtocol = a})

-- | OAuth access token.
uesAccessToken :: Lens' UsersEnvironmentsStart (Maybe Text)
uesAccessToken
  = lens _uesAccessToken
      (\ s a -> s{_uesAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
uesUploadType :: Lens' UsersEnvironmentsStart (Maybe Text)
uesUploadType
  = lens _uesUploadType
      (\ s a -> s{_uesUploadType = a})

-- | Multipart request metadata.
uesPayload :: Lens' UsersEnvironmentsStart StartEnvironmentRequest
uesPayload
  = lens _uesPayload (\ s a -> s{_uesPayload = a})

-- | Name of the resource that should be started, for example
-- \`users\/me\/environments\/default\` or
-- \`users\/someone\'example.com\/environments\/default\`.
uesName :: Lens' UsersEnvironmentsStart Text
uesName = lens _uesName (\ s a -> s{_uesName = a})

-- | JSONP
uesCallback :: Lens' UsersEnvironmentsStart (Maybe Text)
uesCallback
  = lens _uesCallback (\ s a -> s{_uesCallback = a})

instance GoogleRequest UsersEnvironmentsStart where
        type Rs UsersEnvironmentsStart = Operation
        type Scopes UsersEnvironmentsStart =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient UsersEnvironmentsStart'{..}
          = go _uesName _uesXgafv _uesUploadProtocol
              _uesAccessToken
              _uesUploadType
              _uesCallback
              (Just AltJSON)
              _uesPayload
              cloudShellService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersEnvironmentsStartResource)
                      mempty
