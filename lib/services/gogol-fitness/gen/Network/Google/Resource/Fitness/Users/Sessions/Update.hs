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
-- Module      : Network.Google.Resource.Fitness.Users.Sessions.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates or insert a given session.
--
-- /See:/ <https://developers.google.com/fit/rest/v1/get-started Fitness API Reference> for @fitness.users.sessions.update@.
module Network.Google.Resource.Fitness.Users.Sessions.Update
    (
    -- * REST Resource
      UsersSessionsUpdateResource

    -- * Creating a Request
    , usersSessionsUpdate
    , UsersSessionsUpdate

    -- * Request Lenses
    , usuXgafv
    , usuUploadProtocol
    , usuAccessToken
    , usuUploadType
    , usuPayload
    , usuUserId
    , usuSessionId
    , usuCallback
    ) where

import Network.Google.Fitness.Types
import Network.Google.Prelude

-- | A resource alias for @fitness.users.sessions.update@ method which the
-- 'UsersSessionsUpdate' request conforms to.
type UsersSessionsUpdateResource =
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
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Session :> Put '[JSON] Session

-- | Updates or insert a given session.
--
-- /See:/ 'usersSessionsUpdate' smart constructor.
data UsersSessionsUpdate =
  UsersSessionsUpdate'
    { _usuXgafv :: !(Maybe Xgafv)
    , _usuUploadProtocol :: !(Maybe Text)
    , _usuAccessToken :: !(Maybe Text)
    , _usuUploadType :: !(Maybe Text)
    , _usuPayload :: !Session
    , _usuUserId :: !Text
    , _usuSessionId :: !Text
    , _usuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSessionsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usuXgafv'
--
-- * 'usuUploadProtocol'
--
-- * 'usuAccessToken'
--
-- * 'usuUploadType'
--
-- * 'usuPayload'
--
-- * 'usuUserId'
--
-- * 'usuSessionId'
--
-- * 'usuCallback'
usersSessionsUpdate
    :: Session -- ^ 'usuPayload'
    -> Text -- ^ 'usuUserId'
    -> Text -- ^ 'usuSessionId'
    -> UsersSessionsUpdate
usersSessionsUpdate pUsuPayload_ pUsuUserId_ pUsuSessionId_ =
  UsersSessionsUpdate'
    { _usuXgafv = Nothing
    , _usuUploadProtocol = Nothing
    , _usuAccessToken = Nothing
    , _usuUploadType = Nothing
    , _usuPayload = pUsuPayload_
    , _usuUserId = pUsuUserId_
    , _usuSessionId = pUsuSessionId_
    , _usuCallback = Nothing
    }


-- | V1 error format.
usuXgafv :: Lens' UsersSessionsUpdate (Maybe Xgafv)
usuXgafv = lens _usuXgafv (\ s a -> s{_usuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
usuUploadProtocol :: Lens' UsersSessionsUpdate (Maybe Text)
usuUploadProtocol
  = lens _usuUploadProtocol
      (\ s a -> s{_usuUploadProtocol = a})

-- | OAuth access token.
usuAccessToken :: Lens' UsersSessionsUpdate (Maybe Text)
usuAccessToken
  = lens _usuAccessToken
      (\ s a -> s{_usuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
usuUploadType :: Lens' UsersSessionsUpdate (Maybe Text)
usuUploadType
  = lens _usuUploadType
      (\ s a -> s{_usuUploadType = a})

-- | Multipart request metadata.
usuPayload :: Lens' UsersSessionsUpdate Session
usuPayload
  = lens _usuPayload (\ s a -> s{_usuPayload = a})

-- | Create sessions for the person identified. Use me to indicate the
-- authenticated user. Only me is supported at this time.
usuUserId :: Lens' UsersSessionsUpdate Text
usuUserId
  = lens _usuUserId (\ s a -> s{_usuUserId = a})

-- | The ID of the session to be created.
usuSessionId :: Lens' UsersSessionsUpdate Text
usuSessionId
  = lens _usuSessionId (\ s a -> s{_usuSessionId = a})

-- | JSONP
usuCallback :: Lens' UsersSessionsUpdate (Maybe Text)
usuCallback
  = lens _usuCallback (\ s a -> s{_usuCallback = a})

instance GoogleRequest UsersSessionsUpdate where
        type Rs UsersSessionsUpdate = Session
        type Scopes UsersSessionsUpdate =
             '["https://www.googleapis.com/auth/fitness.activity.write",
               "https://www.googleapis.com/auth/fitness.sleep.write"]
        requestClient UsersSessionsUpdate'{..}
          = go _usuUserId _usuSessionId _usuXgafv
              _usuUploadProtocol
              _usuAccessToken
              _usuUploadType
              _usuCallback
              (Just AltJSON)
              _usuPayload
              fitnessService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersSessionsUpdateResource)
                      mempty
