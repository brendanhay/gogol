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
-- Module      : Network.Google.Resource.CloudShell.Users.Environments.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an environment. Returns NOT_FOUND if the environment does not
-- exist.
--
-- /See:/ <https://cloud.google.com/shell/docs/ Cloud Shell API Reference> for @cloudshell.users.environments.get@.
module Network.Google.Resource.CloudShell.Users.Environments.Get
    (
    -- * REST Resource
      UsersEnvironmentsGetResource

    -- * Creating a Request
    , usersEnvironmentsGet
    , UsersEnvironmentsGet

    -- * Request Lenses
    , uegXgafv
    , uegUploadProtocol
    , uegAccessToken
    , uegUploadType
    , uegName
    , uegCallback
    ) where

import Network.Google.CloudShell.Types
import Network.Google.Prelude

-- | A resource alias for @cloudshell.users.environments.get@ method which the
-- 'UsersEnvironmentsGet' request conforms to.
type UsersEnvironmentsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Environment

-- | Gets an environment. Returns NOT_FOUND if the environment does not
-- exist.
--
-- /See:/ 'usersEnvironmentsGet' smart constructor.
data UsersEnvironmentsGet =
  UsersEnvironmentsGet'
    { _uegXgafv :: !(Maybe Xgafv)
    , _uegUploadProtocol :: !(Maybe Text)
    , _uegAccessToken :: !(Maybe Text)
    , _uegUploadType :: !(Maybe Text)
    , _uegName :: !Text
    , _uegCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersEnvironmentsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uegXgafv'
--
-- * 'uegUploadProtocol'
--
-- * 'uegAccessToken'
--
-- * 'uegUploadType'
--
-- * 'uegName'
--
-- * 'uegCallback'
usersEnvironmentsGet
    :: Text -- ^ 'uegName'
    -> UsersEnvironmentsGet
usersEnvironmentsGet pUegName_ =
  UsersEnvironmentsGet'
    { _uegXgafv = Nothing
    , _uegUploadProtocol = Nothing
    , _uegAccessToken = Nothing
    , _uegUploadType = Nothing
    , _uegName = pUegName_
    , _uegCallback = Nothing
    }


-- | V1 error format.
uegXgafv :: Lens' UsersEnvironmentsGet (Maybe Xgafv)
uegXgafv = lens _uegXgafv (\ s a -> s{_uegXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
uegUploadProtocol :: Lens' UsersEnvironmentsGet (Maybe Text)
uegUploadProtocol
  = lens _uegUploadProtocol
      (\ s a -> s{_uegUploadProtocol = a})

-- | OAuth access token.
uegAccessToken :: Lens' UsersEnvironmentsGet (Maybe Text)
uegAccessToken
  = lens _uegAccessToken
      (\ s a -> s{_uegAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
uegUploadType :: Lens' UsersEnvironmentsGet (Maybe Text)
uegUploadType
  = lens _uegUploadType
      (\ s a -> s{_uegUploadType = a})

-- | Required. Name of the requested resource, for example
-- \`users\/me\/environments\/default\` or
-- \`users\/someone\'example.com\/environments\/default\`.
uegName :: Lens' UsersEnvironmentsGet Text
uegName = lens _uegName (\ s a -> s{_uegName = a})

-- | JSONP
uegCallback :: Lens' UsersEnvironmentsGet (Maybe Text)
uegCallback
  = lens _uegCallback (\ s a -> s{_uegCallback = a})

instance GoogleRequest UsersEnvironmentsGet where
        type Rs UsersEnvironmentsGet = Environment
        type Scopes UsersEnvironmentsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient UsersEnvironmentsGet'{..}
          = go _uegName _uegXgafv _uegUploadProtocol
              _uegAccessToken
              _uegUploadType
              _uegCallback
              (Just AltJSON)
              cloudShellService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersEnvironmentsGetResource)
                      mempty
