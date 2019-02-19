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
-- Module      : Network.Google.Resource.OSLogin.Users.ImportSSHPublicKey
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds an SSH public key and returns the profile information. Default
-- POSIX account information is set when no username and UID exist as part
-- of the login profile.
--
-- /See:/ <https://cloud.google.com/compute/docs/oslogin/ Cloud OS Login API Reference> for @oslogin.users.importSshPublicKey@.
module Network.Google.Resource.OSLogin.Users.ImportSSHPublicKey
    (
    -- * REST Resource
      UsersImportSSHPublicKeyResource

    -- * Creating a Request
    , usersImportSSHPublicKey
    , UsersImportSSHPublicKey

    -- * Request Lenses
    , uispkParent
    , uispkXgafv
    , uispkUploadProtocol
    , uispkAccessToken
    , uispkUploadType
    , uispkPayload
    , uispkProjectId
    , uispkCallback
    ) where

import           Network.Google.OSLogin.Types
import           Network.Google.Prelude

-- | A resource alias for @oslogin.users.importSshPublicKey@ method which the
-- 'UsersImportSSHPublicKey' request conforms to.
type UsersImportSSHPublicKeyResource =
     "v1" :>
       CaptureMode "parent" "importSshPublicKey" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "projectId" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] SSHPublicKey :>
                         Post '[JSON] ImportSSHPublicKeyResponse

-- | Adds an SSH public key and returns the profile information. Default
-- POSIX account information is set when no username and UID exist as part
-- of the login profile.
--
-- /See:/ 'usersImportSSHPublicKey' smart constructor.
data UsersImportSSHPublicKey =
  UsersImportSSHPublicKey'
    { _uispkParent         :: !Text
    , _uispkXgafv          :: !(Maybe Xgafv)
    , _uispkUploadProtocol :: !(Maybe Text)
    , _uispkAccessToken    :: !(Maybe Text)
    , _uispkUploadType     :: !(Maybe Text)
    , _uispkPayload        :: !SSHPublicKey
    , _uispkProjectId      :: !(Maybe Text)
    , _uispkCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UsersImportSSHPublicKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uispkParent'
--
-- * 'uispkXgafv'
--
-- * 'uispkUploadProtocol'
--
-- * 'uispkAccessToken'
--
-- * 'uispkUploadType'
--
-- * 'uispkPayload'
--
-- * 'uispkProjectId'
--
-- * 'uispkCallback'
usersImportSSHPublicKey
    :: Text -- ^ 'uispkParent'
    -> SSHPublicKey -- ^ 'uispkPayload'
    -> UsersImportSSHPublicKey
usersImportSSHPublicKey pUispkParent_ pUispkPayload_ =
  UsersImportSSHPublicKey'
    { _uispkParent = pUispkParent_
    , _uispkXgafv = Nothing
    , _uispkUploadProtocol = Nothing
    , _uispkAccessToken = Nothing
    , _uispkUploadType = Nothing
    , _uispkPayload = pUispkPayload_
    , _uispkProjectId = Nothing
    , _uispkCallback = Nothing
    }

-- | The unique ID for the user in format \`users\/{user}\`.
uispkParent :: Lens' UsersImportSSHPublicKey Text
uispkParent
  = lens _uispkParent (\ s a -> s{_uispkParent = a})

-- | V1 error format.
uispkXgafv :: Lens' UsersImportSSHPublicKey (Maybe Xgafv)
uispkXgafv
  = lens _uispkXgafv (\ s a -> s{_uispkXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
uispkUploadProtocol :: Lens' UsersImportSSHPublicKey (Maybe Text)
uispkUploadProtocol
  = lens _uispkUploadProtocol
      (\ s a -> s{_uispkUploadProtocol = a})

-- | OAuth access token.
uispkAccessToken :: Lens' UsersImportSSHPublicKey (Maybe Text)
uispkAccessToken
  = lens _uispkAccessToken
      (\ s a -> s{_uispkAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
uispkUploadType :: Lens' UsersImportSSHPublicKey (Maybe Text)
uispkUploadType
  = lens _uispkUploadType
      (\ s a -> s{_uispkUploadType = a})

-- | Multipart request metadata.
uispkPayload :: Lens' UsersImportSSHPublicKey SSHPublicKey
uispkPayload
  = lens _uispkPayload (\ s a -> s{_uispkPayload = a})

-- | The project ID of the Google Cloud Platform project.
uispkProjectId :: Lens' UsersImportSSHPublicKey (Maybe Text)
uispkProjectId
  = lens _uispkProjectId
      (\ s a -> s{_uispkProjectId = a})

-- | JSONP
uispkCallback :: Lens' UsersImportSSHPublicKey (Maybe Text)
uispkCallback
  = lens _uispkCallback
      (\ s a -> s{_uispkCallback = a})

instance GoogleRequest UsersImportSSHPublicKey where
        type Rs UsersImportSSHPublicKey =
             ImportSSHPublicKeyResponse
        type Scopes UsersImportSSHPublicKey =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient UsersImportSSHPublicKey'{..}
          = go _uispkParent _uispkXgafv _uispkUploadProtocol
              _uispkAccessToken
              _uispkUploadType
              _uispkProjectId
              _uispkCallback
              (Just AltJSON)
              _uispkPayload
              oSLoginService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersImportSSHPublicKeyResource)
                      mempty
