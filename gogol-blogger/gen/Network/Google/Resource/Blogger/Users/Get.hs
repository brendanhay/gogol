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
-- Module      : Network.Google.Resource.Blogger.Users.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one user by user_id.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API v3 Reference> for @blogger.users.get@.
module Network.Google.Resource.Blogger.Users.Get
    (
    -- * REST Resource
      UsersGetResource

    -- * Creating a Request
    , usersGet
    , UsersGet

    -- * Request Lenses
    , ugXgafv
    , ugUploadProtocol
    , ugAccessToken
    , ugUploadType
    , ugUserId
    , ugCallback
    ) where

import Network.Google.Blogger.Types
import Network.Google.Prelude

-- | A resource alias for @blogger.users.get@ method which the
-- 'UsersGet' request conforms to.
type UsersGetResource =
     "v3" :>
       "users" :>
         Capture "userId" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] User

-- | Gets one user by user_id.
--
-- /See:/ 'usersGet' smart constructor.
data UsersGet =
  UsersGet'
    { _ugXgafv :: !(Maybe Xgafv)
    , _ugUploadProtocol :: !(Maybe Text)
    , _ugAccessToken :: !(Maybe Text)
    , _ugUploadType :: !(Maybe Text)
    , _ugUserId :: !Text
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
-- * 'ugAccessToken'
--
-- * 'ugUploadType'
--
-- * 'ugUserId'
--
-- * 'ugCallback'
usersGet
    :: Text -- ^ 'ugUserId'
    -> UsersGet
usersGet pUgUserId_ =
  UsersGet'
    { _ugXgafv = Nothing
    , _ugUploadProtocol = Nothing
    , _ugAccessToken = Nothing
    , _ugUploadType = Nothing
    , _ugUserId = pUgUserId_
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

-- | OAuth access token.
ugAccessToken :: Lens' UsersGet (Maybe Text)
ugAccessToken
  = lens _ugAccessToken
      (\ s a -> s{_ugAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ugUploadType :: Lens' UsersGet (Maybe Text)
ugUploadType
  = lens _ugUploadType (\ s a -> s{_ugUploadType = a})

ugUserId :: Lens' UsersGet Text
ugUserId = lens _ugUserId (\ s a -> s{_ugUserId = a})

-- | JSONP
ugCallback :: Lens' UsersGet (Maybe Text)
ugCallback
  = lens _ugCallback (\ s a -> s{_ugCallback = a})

instance GoogleRequest UsersGet where
        type Rs UsersGet = User
        type Scopes UsersGet =
             '["https://www.googleapis.com/auth/blogger",
               "https://www.googleapis.com/auth/blogger.readonly"]
        requestClient UsersGet'{..}
          = go _ugUserId _ugXgafv _ugUploadProtocol
              _ugAccessToken
              _ugUploadType
              _ugCallback
              (Just AltJSON)
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy UsersGetResource)
                      mempty
