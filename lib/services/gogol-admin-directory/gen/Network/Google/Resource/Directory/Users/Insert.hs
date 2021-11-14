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
-- Module      : Network.Google.Resource.Directory.Users.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a user.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.users.insert@.
module Network.Google.Resource.Directory.Users.Insert
    (
    -- * REST Resource
      UsersInsertResource

    -- * Creating a Request
    , usersInsert
    , UsersInsert

    -- * Request Lenses
    , uiXgafv
    , uiUploadProtocol
    , uiAccessToken
    , uiUploadType
    , uiPayload
    , uiCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.users.insert@ method which the
-- 'UsersInsert' request conforms to.
type UsersInsertResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] User :> Post '[JSON] User

-- | Creates a user.
--
-- /See:/ 'usersInsert' smart constructor.
data UsersInsert =
  UsersInsert'
    { _uiXgafv :: !(Maybe Xgafv)
    , _uiUploadProtocol :: !(Maybe Text)
    , _uiAccessToken :: !(Maybe Text)
    , _uiUploadType :: !(Maybe Text)
    , _uiPayload :: !User
    , _uiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uiXgafv'
--
-- * 'uiUploadProtocol'
--
-- * 'uiAccessToken'
--
-- * 'uiUploadType'
--
-- * 'uiPayload'
--
-- * 'uiCallback'
usersInsert
    :: User -- ^ 'uiPayload'
    -> UsersInsert
usersInsert pUiPayload_ =
  UsersInsert'
    { _uiXgafv = Nothing
    , _uiUploadProtocol = Nothing
    , _uiAccessToken = Nothing
    , _uiUploadType = Nothing
    , _uiPayload = pUiPayload_
    , _uiCallback = Nothing
    }


-- | V1 error format.
uiXgafv :: Lens' UsersInsert (Maybe Xgafv)
uiXgafv = lens _uiXgafv (\ s a -> s{_uiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
uiUploadProtocol :: Lens' UsersInsert (Maybe Text)
uiUploadProtocol
  = lens _uiUploadProtocol
      (\ s a -> s{_uiUploadProtocol = a})

-- | OAuth access token.
uiAccessToken :: Lens' UsersInsert (Maybe Text)
uiAccessToken
  = lens _uiAccessToken
      (\ s a -> s{_uiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
uiUploadType :: Lens' UsersInsert (Maybe Text)
uiUploadType
  = lens _uiUploadType (\ s a -> s{_uiUploadType = a})

-- | Multipart request metadata.
uiPayload :: Lens' UsersInsert User
uiPayload
  = lens _uiPayload (\ s a -> s{_uiPayload = a})

-- | JSONP
uiCallback :: Lens' UsersInsert (Maybe Text)
uiCallback
  = lens _uiCallback (\ s a -> s{_uiCallback = a})

instance GoogleRequest UsersInsert where
        type Rs UsersInsert = User
        type Scopes UsersInsert =
             '["https://www.googleapis.com/auth/admin.directory.user"]
        requestClient UsersInsert'{..}
          = go _uiXgafv _uiUploadProtocol _uiAccessToken
              _uiUploadType
              _uiCallback
              (Just AltJSON)
              _uiPayload
              directoryService
          where go
                  = buildClient (Proxy :: Proxy UsersInsertResource)
                      mempty
