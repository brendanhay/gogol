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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.Delegates.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the specified delegate (which can be of any verification
-- status), and revokes any verification that may have been required for
-- using it. Note that a delegate user must be referred to by their primary
-- email address, and not an email alias. This method is only available to
-- service account clients that have been delegated domain-wide authority.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.delegates.delete@.
module Network.Google.Resource.Gmail.Users.Settings.Delegates.Delete
    (
    -- * REST Resource
      UsersSettingsDelegatesDeleteResource

    -- * Creating a Request
    , usersSettingsDelegatesDelete
    , UsersSettingsDelegatesDelete

    -- * Request Lenses
    , usddXgafv
    , usddUploadProtocol
    , usddAccessToken
    , usddUploadType
    , usddUserId
    , usddDelegateEmail
    , usddCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.delegates.delete@ method which the
-- 'UsersSettingsDelegatesDelete' request conforms to.
type UsersSettingsDelegatesDeleteResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "settings" :>
               "delegates" :>
                 Capture "delegateEmail" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Removes the specified delegate (which can be of any verification
-- status), and revokes any verification that may have been required for
-- using it. Note that a delegate user must be referred to by their primary
-- email address, and not an email alias. This method is only available to
-- service account clients that have been delegated domain-wide authority.
--
-- /See:/ 'usersSettingsDelegatesDelete' smart constructor.
data UsersSettingsDelegatesDelete =
  UsersSettingsDelegatesDelete'
    { _usddXgafv :: !(Maybe Xgafv)
    , _usddUploadProtocol :: !(Maybe Text)
    , _usddAccessToken :: !(Maybe Text)
    , _usddUploadType :: !(Maybe Text)
    , _usddUserId :: !Text
    , _usddDelegateEmail :: !Text
    , _usddCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSettingsDelegatesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usddXgafv'
--
-- * 'usddUploadProtocol'
--
-- * 'usddAccessToken'
--
-- * 'usddUploadType'
--
-- * 'usddUserId'
--
-- * 'usddDelegateEmail'
--
-- * 'usddCallback'
usersSettingsDelegatesDelete
    :: Text -- ^ 'usddDelegateEmail'
    -> UsersSettingsDelegatesDelete
usersSettingsDelegatesDelete pUsddDelegateEmail_ =
  UsersSettingsDelegatesDelete'
    { _usddXgafv = Nothing
    , _usddUploadProtocol = Nothing
    , _usddAccessToken = Nothing
    , _usddUploadType = Nothing
    , _usddUserId = "me"
    , _usddDelegateEmail = pUsddDelegateEmail_
    , _usddCallback = Nothing
    }


-- | V1 error format.
usddXgafv :: Lens' UsersSettingsDelegatesDelete (Maybe Xgafv)
usddXgafv
  = lens _usddXgafv (\ s a -> s{_usddXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
usddUploadProtocol :: Lens' UsersSettingsDelegatesDelete (Maybe Text)
usddUploadProtocol
  = lens _usddUploadProtocol
      (\ s a -> s{_usddUploadProtocol = a})

-- | OAuth access token.
usddAccessToken :: Lens' UsersSettingsDelegatesDelete (Maybe Text)
usddAccessToken
  = lens _usddAccessToken
      (\ s a -> s{_usddAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
usddUploadType :: Lens' UsersSettingsDelegatesDelete (Maybe Text)
usddUploadType
  = lens _usddUploadType
      (\ s a -> s{_usddUploadType = a})

-- | User\'s email address. The special value \"me\" can be used to indicate
-- the authenticated user.
usddUserId :: Lens' UsersSettingsDelegatesDelete Text
usddUserId
  = lens _usddUserId (\ s a -> s{_usddUserId = a})

-- | The email address of the user to be removed as a delegate.
usddDelegateEmail :: Lens' UsersSettingsDelegatesDelete Text
usddDelegateEmail
  = lens _usddDelegateEmail
      (\ s a -> s{_usddDelegateEmail = a})

-- | JSONP
usddCallback :: Lens' UsersSettingsDelegatesDelete (Maybe Text)
usddCallback
  = lens _usddCallback (\ s a -> s{_usddCallback = a})

instance GoogleRequest UsersSettingsDelegatesDelete
         where
        type Rs UsersSettingsDelegatesDelete = ()
        type Scopes UsersSettingsDelegatesDelete =
             '["https://www.googleapis.com/auth/gmail.settings.sharing"]
        requestClient UsersSettingsDelegatesDelete'{..}
          = go _usddUserId _usddDelegateEmail _usddXgafv
              _usddUploadProtocol
              _usddAccessToken
              _usddUploadType
              _usddCallback
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersSettingsDelegatesDeleteResource)
                      mempty
