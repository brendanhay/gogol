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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.SendAs.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified send-as alias. Revokes any verification that may
-- have been required for using it. This method is only available to
-- service account clients that have been delegated domain-wide authority.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.sendAs.delete@.
module Network.Google.Resource.Gmail.Users.Settings.SendAs.Delete
    (
    -- * REST Resource
      UsersSettingsSendAsDeleteResource

    -- * Creating a Request
    , usersSettingsSendAsDelete
    , UsersSettingsSendAsDelete

    -- * Request Lenses
    , ussadXgafv
    , ussadUploadProtocol
    , ussadAccessToken
    , ussadUploadType
    , ussadUserId
    , ussadSendAsEmail
    , ussadCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.sendAs.delete@ method which the
-- 'UsersSettingsSendAsDelete' request conforms to.
type UsersSettingsSendAsDeleteResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "settings" :>
               "sendAs" :>
                 Capture "sendAsEmail" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes the specified send-as alias. Revokes any verification that may
-- have been required for using it. This method is only available to
-- service account clients that have been delegated domain-wide authority.
--
-- /See:/ 'usersSettingsSendAsDelete' smart constructor.
data UsersSettingsSendAsDelete =
  UsersSettingsSendAsDelete'
    { _ussadXgafv :: !(Maybe Xgafv)
    , _ussadUploadProtocol :: !(Maybe Text)
    , _ussadAccessToken :: !(Maybe Text)
    , _ussadUploadType :: !(Maybe Text)
    , _ussadUserId :: !Text
    , _ussadSendAsEmail :: !Text
    , _ussadCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSettingsSendAsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ussadXgafv'
--
-- * 'ussadUploadProtocol'
--
-- * 'ussadAccessToken'
--
-- * 'ussadUploadType'
--
-- * 'ussadUserId'
--
-- * 'ussadSendAsEmail'
--
-- * 'ussadCallback'
usersSettingsSendAsDelete
    :: Text -- ^ 'ussadSendAsEmail'
    -> UsersSettingsSendAsDelete
usersSettingsSendAsDelete pUssadSendAsEmail_ =
  UsersSettingsSendAsDelete'
    { _ussadXgafv = Nothing
    , _ussadUploadProtocol = Nothing
    , _ussadAccessToken = Nothing
    , _ussadUploadType = Nothing
    , _ussadUserId = "me"
    , _ussadSendAsEmail = pUssadSendAsEmail_
    , _ussadCallback = Nothing
    }


-- | V1 error format.
ussadXgafv :: Lens' UsersSettingsSendAsDelete (Maybe Xgafv)
ussadXgafv
  = lens _ussadXgafv (\ s a -> s{_ussadXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ussadUploadProtocol :: Lens' UsersSettingsSendAsDelete (Maybe Text)
ussadUploadProtocol
  = lens _ussadUploadProtocol
      (\ s a -> s{_ussadUploadProtocol = a})

-- | OAuth access token.
ussadAccessToken :: Lens' UsersSettingsSendAsDelete (Maybe Text)
ussadAccessToken
  = lens _ussadAccessToken
      (\ s a -> s{_ussadAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ussadUploadType :: Lens' UsersSettingsSendAsDelete (Maybe Text)
ussadUploadType
  = lens _ussadUploadType
      (\ s a -> s{_ussadUploadType = a})

-- | User\'s email address. The special value \"me\" can be used to indicate
-- the authenticated user.
ussadUserId :: Lens' UsersSettingsSendAsDelete Text
ussadUserId
  = lens _ussadUserId (\ s a -> s{_ussadUserId = a})

-- | The send-as alias to be deleted.
ussadSendAsEmail :: Lens' UsersSettingsSendAsDelete Text
ussadSendAsEmail
  = lens _ussadSendAsEmail
      (\ s a -> s{_ussadSendAsEmail = a})

-- | JSONP
ussadCallback :: Lens' UsersSettingsSendAsDelete (Maybe Text)
ussadCallback
  = lens _ussadCallback
      (\ s a -> s{_ussadCallback = a})

instance GoogleRequest UsersSettingsSendAsDelete
         where
        type Rs UsersSettingsSendAsDelete = ()
        type Scopes UsersSettingsSendAsDelete =
             '["https://www.googleapis.com/auth/gmail.settings.sharing"]
        requestClient UsersSettingsSendAsDelete'{..}
          = go _ussadUserId _ussadSendAsEmail _ussadXgafv
              _ussadUploadProtocol
              _ussadAccessToken
              _ussadUploadType
              _ussadCallback
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersSettingsSendAsDeleteResource)
                      mempty
