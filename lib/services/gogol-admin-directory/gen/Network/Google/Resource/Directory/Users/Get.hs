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
-- Module      : Network.Google.Resource.Directory.Users.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a user.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.users.get@.
module Network.Google.Resource.Directory.Users.Get
    (
    -- * REST Resource
      UsersGetResource

    -- * Creating a Request
    , usersGet
    , UsersGet

    -- * Request Lenses
    , ugXgafv
    , ugUploadProtocol
    , ugViewType
    , ugCustomFieldMask
    , ugAccessToken
    , ugUploadType
    , ugProjection
    , ugUserKey
    , ugCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.users.get@ method which the
-- 'UsersGet' request conforms to.
type UsersGetResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "viewType" UsersGetViewType :>
                     QueryParam "customFieldMask" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "projection" UsersGetProjection :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :> Get '[JSON] User

-- | Retrieves a user.
--
-- /See:/ 'usersGet' smart constructor.
data UsersGet =
  UsersGet'
    { _ugXgafv :: !(Maybe Xgafv)
    , _ugUploadProtocol :: !(Maybe Text)
    , _ugViewType :: !UsersGetViewType
    , _ugCustomFieldMask :: !(Maybe Text)
    , _ugAccessToken :: !(Maybe Text)
    , _ugUploadType :: !(Maybe Text)
    , _ugProjection :: !UsersGetProjection
    , _ugUserKey :: !Text
    , _ugCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugXgafv'
--
-- * 'ugUploadProtocol'
--
-- * 'ugViewType'
--
-- * 'ugCustomFieldMask'
--
-- * 'ugAccessToken'
--
-- * 'ugUploadType'
--
-- * 'ugProjection'
--
-- * 'ugUserKey'
--
-- * 'ugCallback'
usersGet
    :: Text -- ^ 'ugUserKey'
    -> UsersGet
usersGet pUgUserKey_ =
  UsersGet'
    { _ugXgafv = Nothing
    , _ugUploadProtocol = Nothing
    , _ugViewType = UGVTAdminView
    , _ugCustomFieldMask = Nothing
    , _ugAccessToken = Nothing
    , _ugUploadType = Nothing
    , _ugProjection = UGPBasic
    , _ugUserKey = pUgUserKey_
    , _ugCallback = Nothing
    }


-- | V1 error format.
ugXgafv :: Lens' UsersGet (Maybe Xgafv)
ugXgafv = lens _ugXgafv (\ s a -> s{_ugXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ugUploadProtocol :: Lens' UsersGet (Maybe Text)
ugUploadProtocol
  = lens _ugUploadProtocol
      (\ s a -> s{_ugUploadProtocol = a})

-- | Whether to fetch the administrator-only or domain-wide public view of
-- the user. For more information, see [Retrieve a user as a
-- non-administrator](\/admin-sdk\/directory\/v1\/guides\/manage-users#retrieve_users_non_admin).
ugViewType :: Lens' UsersGet UsersGetViewType
ugViewType
  = lens _ugViewType (\ s a -> s{_ugViewType = a})

-- | A comma-separated list of schema names. All fields from these schemas
-- are fetched. This should only be set when \`projection=custom\`.
ugCustomFieldMask :: Lens' UsersGet (Maybe Text)
ugCustomFieldMask
  = lens _ugCustomFieldMask
      (\ s a -> s{_ugCustomFieldMask = a})

-- | OAuth access token.
ugAccessToken :: Lens' UsersGet (Maybe Text)
ugAccessToken
  = lens _ugAccessToken
      (\ s a -> s{_ugAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ugUploadType :: Lens' UsersGet (Maybe Text)
ugUploadType
  = lens _ugUploadType (\ s a -> s{_ugUploadType = a})

-- | What subset of fields to fetch for this user.
ugProjection :: Lens' UsersGet UsersGetProjection
ugProjection
  = lens _ugProjection (\ s a -> s{_ugProjection = a})

-- | Identifies the user in the API request. The value can be the user\'s
-- primary email address, alias email address, or unique user ID.
ugUserKey :: Lens' UsersGet Text
ugUserKey
  = lens _ugUserKey (\ s a -> s{_ugUserKey = a})

-- | JSONP
ugCallback :: Lens' UsersGet (Maybe Text)
ugCallback
  = lens _ugCallback (\ s a -> s{_ugCallback = a})

instance GoogleRequest UsersGet where
        type Rs UsersGet = User
        type Scopes UsersGet =
             '["https://www.googleapis.com/auth/admin.directory.user",
               "https://www.googleapis.com/auth/admin.directory.user.readonly"]
        requestClient UsersGet'{..}
          = go _ugUserKey _ugXgafv _ugUploadProtocol
              (Just _ugViewType)
              _ugCustomFieldMask
              _ugAccessToken
              _ugUploadType
              (Just _ugProjection)
              _ugCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy UsersGetResource)
                      mempty
