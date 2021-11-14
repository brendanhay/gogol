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
-- Module      : Network.Google.Resource.Directory.Users.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a user using patch semantics. The update method should be used
-- instead, since it also supports patch semantics and has better
-- performance. This method is unable to clear fields that contain repeated
-- objects (\`addresses\`, \`phones\`, etc). Use the update method instead.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.users.patch@.
module Network.Google.Resource.Directory.Users.Patch
    (
    -- * REST Resource
      UsersPatchResource

    -- * Creating a Request
    , usersPatch
    , UsersPatch

    -- * Request Lenses
    , upXgafv
    , upUploadProtocol
    , upAccessToken
    , upUploadType
    , upPayload
    , upUserKey
    , upCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.users.patch@ method which the
-- 'UsersPatch' request conforms to.
type UsersPatchResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] User :> Patch '[JSON] User

-- | Updates a user using patch semantics. The update method should be used
-- instead, since it also supports patch semantics and has better
-- performance. This method is unable to clear fields that contain repeated
-- objects (\`addresses\`, \`phones\`, etc). Use the update method instead.
--
-- /See:/ 'usersPatch' smart constructor.
data UsersPatch =
  UsersPatch'
    { _upXgafv :: !(Maybe Xgafv)
    , _upUploadProtocol :: !(Maybe Text)
    , _upAccessToken :: !(Maybe Text)
    , _upUploadType :: !(Maybe Text)
    , _upPayload :: !User
    , _upUserKey :: !Text
    , _upCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upXgafv'
--
-- * 'upUploadProtocol'
--
-- * 'upAccessToken'
--
-- * 'upUploadType'
--
-- * 'upPayload'
--
-- * 'upUserKey'
--
-- * 'upCallback'
usersPatch
    :: User -- ^ 'upPayload'
    -> Text -- ^ 'upUserKey'
    -> UsersPatch
usersPatch pUpPayload_ pUpUserKey_ =
  UsersPatch'
    { _upXgafv = Nothing
    , _upUploadProtocol = Nothing
    , _upAccessToken = Nothing
    , _upUploadType = Nothing
    , _upPayload = pUpPayload_
    , _upUserKey = pUpUserKey_
    , _upCallback = Nothing
    }


-- | V1 error format.
upXgafv :: Lens' UsersPatch (Maybe Xgafv)
upXgafv = lens _upXgafv (\ s a -> s{_upXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
upUploadProtocol :: Lens' UsersPatch (Maybe Text)
upUploadProtocol
  = lens _upUploadProtocol
      (\ s a -> s{_upUploadProtocol = a})

-- | OAuth access token.
upAccessToken :: Lens' UsersPatch (Maybe Text)
upAccessToken
  = lens _upAccessToken
      (\ s a -> s{_upAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
upUploadType :: Lens' UsersPatch (Maybe Text)
upUploadType
  = lens _upUploadType (\ s a -> s{_upUploadType = a})

-- | Multipart request metadata.
upPayload :: Lens' UsersPatch User
upPayload
  = lens _upPayload (\ s a -> s{_upPayload = a})

-- | Identifies the user in the API request. The value can be the user\'s
-- primary email address, alias email address, or unique user ID.
upUserKey :: Lens' UsersPatch Text
upUserKey
  = lens _upUserKey (\ s a -> s{_upUserKey = a})

-- | JSONP
upCallback :: Lens' UsersPatch (Maybe Text)
upCallback
  = lens _upCallback (\ s a -> s{_upCallback = a})

instance GoogleRequest UsersPatch where
        type Rs UsersPatch = User
        type Scopes UsersPatch =
             '["https://www.googleapis.com/auth/admin.directory.user"]
        requestClient UsersPatch'{..}
          = go _upUserKey _upXgafv _upUploadProtocol
              _upAccessToken
              _upUploadType
              _upCallback
              (Just AltJSON)
              _upPayload
              directoryService
          where go
                  = buildClient (Proxy :: Proxy UsersPatchResource)
                      mempty
