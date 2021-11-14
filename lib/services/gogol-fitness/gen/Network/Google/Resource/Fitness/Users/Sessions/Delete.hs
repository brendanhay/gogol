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
-- Module      : Network.Google.Resource.Fitness.Users.Sessions.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a session specified by the given session ID.
--
-- /See:/ <https://developers.google.com/fit/rest/v1/get-started Fitness API Reference> for @fitness.users.sessions.delete@.
module Network.Google.Resource.Fitness.Users.Sessions.Delete
    (
    -- * REST Resource
      UsersSessionsDeleteResource

    -- * Creating a Request
    , usersSessionsDelete
    , UsersSessionsDelete

    -- * Request Lenses
    , usdXgafv
    , usdUploadProtocol
    , usdAccessToken
    , usdUploadType
    , usdUserId
    , usdSessionId
    , usdCallback
    ) where

import Network.Google.Fitness.Types
import Network.Google.Prelude

-- | A resource alias for @fitness.users.sessions.delete@ method which the
-- 'UsersSessionsDelete' request conforms to.
type UsersSessionsDeleteResource =
     "fitness" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "sessions" :>
               Capture "sessionId" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a session specified by the given session ID.
--
-- /See:/ 'usersSessionsDelete' smart constructor.
data UsersSessionsDelete =
  UsersSessionsDelete'
    { _usdXgafv :: !(Maybe Xgafv)
    , _usdUploadProtocol :: !(Maybe Text)
    , _usdAccessToken :: !(Maybe Text)
    , _usdUploadType :: !(Maybe Text)
    , _usdUserId :: !Text
    , _usdSessionId :: !Text
    , _usdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSessionsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usdXgafv'
--
-- * 'usdUploadProtocol'
--
-- * 'usdAccessToken'
--
-- * 'usdUploadType'
--
-- * 'usdUserId'
--
-- * 'usdSessionId'
--
-- * 'usdCallback'
usersSessionsDelete
    :: Text -- ^ 'usdUserId'
    -> Text -- ^ 'usdSessionId'
    -> UsersSessionsDelete
usersSessionsDelete pUsdUserId_ pUsdSessionId_ =
  UsersSessionsDelete'
    { _usdXgafv = Nothing
    , _usdUploadProtocol = Nothing
    , _usdAccessToken = Nothing
    , _usdUploadType = Nothing
    , _usdUserId = pUsdUserId_
    , _usdSessionId = pUsdSessionId_
    , _usdCallback = Nothing
    }


-- | V1 error format.
usdXgafv :: Lens' UsersSessionsDelete (Maybe Xgafv)
usdXgafv = lens _usdXgafv (\ s a -> s{_usdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
usdUploadProtocol :: Lens' UsersSessionsDelete (Maybe Text)
usdUploadProtocol
  = lens _usdUploadProtocol
      (\ s a -> s{_usdUploadProtocol = a})

-- | OAuth access token.
usdAccessToken :: Lens' UsersSessionsDelete (Maybe Text)
usdAccessToken
  = lens _usdAccessToken
      (\ s a -> s{_usdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
usdUploadType :: Lens' UsersSessionsDelete (Maybe Text)
usdUploadType
  = lens _usdUploadType
      (\ s a -> s{_usdUploadType = a})

-- | Delete a session for the person identified. Use me to indicate the
-- authenticated user. Only me is supported at this time.
usdUserId :: Lens' UsersSessionsDelete Text
usdUserId
  = lens _usdUserId (\ s a -> s{_usdUserId = a})

-- | The ID of the session to be deleted.
usdSessionId :: Lens' UsersSessionsDelete Text
usdSessionId
  = lens _usdSessionId (\ s a -> s{_usdSessionId = a})

-- | JSONP
usdCallback :: Lens' UsersSessionsDelete (Maybe Text)
usdCallback
  = lens _usdCallback (\ s a -> s{_usdCallback = a})

instance GoogleRequest UsersSessionsDelete where
        type Rs UsersSessionsDelete = ()
        type Scopes UsersSessionsDelete =
             '["https://www.googleapis.com/auth/fitness.activity.write",
               "https://www.googleapis.com/auth/fitness.sleep.write"]
        requestClient UsersSessionsDelete'{..}
          = go _usdUserId _usdSessionId _usdXgafv
              _usdUploadProtocol
              _usdAccessToken
              _usdUploadType
              _usdCallback
              (Just AltJSON)
              fitnessService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersSessionsDeleteResource)
                      mempty
