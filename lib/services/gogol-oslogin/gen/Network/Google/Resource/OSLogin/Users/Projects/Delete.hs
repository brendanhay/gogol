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
-- Module      : Network.Google.Resource.OSLogin.Users.Projects.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a POSIX account.
--
-- /See:/ <https://cloud.google.com/compute/docs/oslogin/ Cloud OS Login API Reference> for @oslogin.users.projects.delete@.
module Network.Google.Resource.OSLogin.Users.Projects.Delete
    (
    -- * REST Resource
      UsersProjectsDeleteResource

    -- * Creating a Request
    , usersProjectsDelete
    , UsersProjectsDelete

    -- * Request Lenses
    , updXgafv
    , updUploadProtocol
    , updAccessToken
    , updUploadType
    , updName
    , updCallback
    ) where

import Network.Google.OSLogin.Types
import Network.Google.Prelude

-- | A resource alias for @oslogin.users.projects.delete@ method which the
-- 'UsersProjectsDelete' request conforms to.
type UsersProjectsDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a POSIX account.
--
-- /See:/ 'usersProjectsDelete' smart constructor.
data UsersProjectsDelete =
  UsersProjectsDelete'
    { _updXgafv :: !(Maybe Xgafv)
    , _updUploadProtocol :: !(Maybe Text)
    , _updAccessToken :: !(Maybe Text)
    , _updUploadType :: !(Maybe Text)
    , _updName :: !Text
    , _updCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersProjectsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'updXgafv'
--
-- * 'updUploadProtocol'
--
-- * 'updAccessToken'
--
-- * 'updUploadType'
--
-- * 'updName'
--
-- * 'updCallback'
usersProjectsDelete
    :: Text -- ^ 'updName'
    -> UsersProjectsDelete
usersProjectsDelete pUpdName_ =
  UsersProjectsDelete'
    { _updXgafv = Nothing
    , _updUploadProtocol = Nothing
    , _updAccessToken = Nothing
    , _updUploadType = Nothing
    , _updName = pUpdName_
    , _updCallback = Nothing
    }


-- | V1 error format.
updXgafv :: Lens' UsersProjectsDelete (Maybe Xgafv)
updXgafv = lens _updXgafv (\ s a -> s{_updXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
updUploadProtocol :: Lens' UsersProjectsDelete (Maybe Text)
updUploadProtocol
  = lens _updUploadProtocol
      (\ s a -> s{_updUploadProtocol = a})

-- | OAuth access token.
updAccessToken :: Lens' UsersProjectsDelete (Maybe Text)
updAccessToken
  = lens _updAccessToken
      (\ s a -> s{_updAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
updUploadType :: Lens' UsersProjectsDelete (Maybe Text)
updUploadType
  = lens _updUploadType
      (\ s a -> s{_updUploadType = a})

-- | Required. A reference to the POSIX account to update. POSIX accounts are
-- identified by the project ID they are associated with. A reference to
-- the POSIX account is in format \`users\/{user}\/projects\/{project}\`.
updName :: Lens' UsersProjectsDelete Text
updName = lens _updName (\ s a -> s{_updName = a})

-- | JSONP
updCallback :: Lens' UsersProjectsDelete (Maybe Text)
updCallback
  = lens _updCallback (\ s a -> s{_updCallback = a})

instance GoogleRequest UsersProjectsDelete where
        type Rs UsersProjectsDelete = Empty
        type Scopes UsersProjectsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient UsersProjectsDelete'{..}
          = go _updName _updXgafv _updUploadProtocol
              _updAccessToken
              _updUploadType
              _updCallback
              (Just AltJSON)
              oSLoginService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersProjectsDeleteResource)
                      mempty
