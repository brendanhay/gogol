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
-- Module      : Network.Google.Resource.OSLogin.Users.GetLoginProFile
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the profile information used for logging in to a virtual
-- machine on Google Compute Engine.
--
-- /See:/ <https://cloud.google.com/compute/docs/oslogin/rest/ Cloud OS Login API Reference> for @oslogin.users.getLoginProfile@.
module Network.Google.Resource.OSLogin.Users.GetLoginProFile
    (
    -- * REST Resource
      UsersGetLoginProFileResource

    -- * Creating a Request
    , usersGetLoginProFile
    , UsersGetLoginProFile

    -- * Request Lenses
    , uglpfXgafv
    , uglpfUploadProtocol
    , uglpfAccessToken
    , uglpfUploadType
    , uglpfName
    , uglpfProjectId
    , uglpfSystemId
    , uglpfCallback
    ) where

import           Network.Google.OSLogin.Types
import           Network.Google.Prelude

-- | A resource alias for @oslogin.users.getLoginProfile@ method which the
-- 'UsersGetLoginProFile' request conforms to.
type UsersGetLoginProFileResource =
     "v1" :>
       Capture "name" Text :>
         "loginProfile" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "projectId" Text :>
                     QueryParam "systemId" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] LoginProFile

-- | Retrieves the profile information used for logging in to a virtual
-- machine on Google Compute Engine.
--
-- /See:/ 'usersGetLoginProFile' smart constructor.
data UsersGetLoginProFile = UsersGetLoginProFile'
    { _uglpfXgafv          :: !(Maybe Xgafv)
    , _uglpfUploadProtocol :: !(Maybe Text)
    , _uglpfAccessToken    :: !(Maybe Text)
    , _uglpfUploadType     :: !(Maybe Text)
    , _uglpfName           :: !Text
    , _uglpfProjectId      :: !(Maybe Text)
    , _uglpfSystemId       :: !(Maybe Text)
    , _uglpfCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersGetLoginProFile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uglpfXgafv'
--
-- * 'uglpfUploadProtocol'
--
-- * 'uglpfAccessToken'
--
-- * 'uglpfUploadType'
--
-- * 'uglpfName'
--
-- * 'uglpfProjectId'
--
-- * 'uglpfSystemId'
--
-- * 'uglpfCallback'
usersGetLoginProFile
    :: Text -- ^ 'uglpfName'
    -> UsersGetLoginProFile
usersGetLoginProFile pUglpfName_ =
    UsersGetLoginProFile'
    { _uglpfXgafv = Nothing
    , _uglpfUploadProtocol = Nothing
    , _uglpfAccessToken = Nothing
    , _uglpfUploadType = Nothing
    , _uglpfName = pUglpfName_
    , _uglpfProjectId = Nothing
    , _uglpfSystemId = Nothing
    , _uglpfCallback = Nothing
    }

-- | V1 error format.
uglpfXgafv :: Lens' UsersGetLoginProFile (Maybe Xgafv)
uglpfXgafv
  = lens _uglpfXgafv (\ s a -> s{_uglpfXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
uglpfUploadProtocol :: Lens' UsersGetLoginProFile (Maybe Text)
uglpfUploadProtocol
  = lens _uglpfUploadProtocol
      (\ s a -> s{_uglpfUploadProtocol = a})

-- | OAuth access token.
uglpfAccessToken :: Lens' UsersGetLoginProFile (Maybe Text)
uglpfAccessToken
  = lens _uglpfAccessToken
      (\ s a -> s{_uglpfAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
uglpfUploadType :: Lens' UsersGetLoginProFile (Maybe Text)
uglpfUploadType
  = lens _uglpfUploadType
      (\ s a -> s{_uglpfUploadType = a})

-- | The unique ID for the user in format \`users\/{user}\`.
uglpfName :: Lens' UsersGetLoginProFile Text
uglpfName
  = lens _uglpfName (\ s a -> s{_uglpfName = a})

-- | The project ID of the Google Cloud Platform project.
uglpfProjectId :: Lens' UsersGetLoginProFile (Maybe Text)
uglpfProjectId
  = lens _uglpfProjectId
      (\ s a -> s{_uglpfProjectId = a})

-- | A system ID for filtering the results of the request.
uglpfSystemId :: Lens' UsersGetLoginProFile (Maybe Text)
uglpfSystemId
  = lens _uglpfSystemId
      (\ s a -> s{_uglpfSystemId = a})

-- | JSONP
uglpfCallback :: Lens' UsersGetLoginProFile (Maybe Text)
uglpfCallback
  = lens _uglpfCallback
      (\ s a -> s{_uglpfCallback = a})

instance GoogleRequest UsersGetLoginProFile where
        type Rs UsersGetLoginProFile = LoginProFile
        type Scopes UsersGetLoginProFile =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient UsersGetLoginProFile'{..}
          = go _uglpfName _uglpfXgafv _uglpfUploadProtocol
              _uglpfAccessToken
              _uglpfUploadType
              _uglpfProjectId
              _uglpfSystemId
              _uglpfCallback
              (Just AltJSON)
              oSLoginService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersGetLoginProFileResource)
                      mempty
