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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.SendAs.Verify
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sends a verification email to the specified send-as alias address. The
-- verification status must be \`pending\`. This method is only available
-- to service account clients that have been delegated domain-wide
-- authority.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.sendAs.verify@.
module Network.Google.Resource.Gmail.Users.Settings.SendAs.Verify
    (
    -- * REST Resource
      UsersSettingsSendAsVerifyResource

    -- * Creating a Request
    , usersSettingsSendAsVerify
    , UsersSettingsSendAsVerify

    -- * Request Lenses
    , ussavXgafv
    , ussavUploadProtocol
    , ussavAccessToken
    , ussavUploadType
    , ussavUserId
    , ussavSendAsEmail
    , ussavCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.sendAs.verify@ method which the
-- 'UsersSettingsSendAsVerify' request conforms to.
type UsersSettingsSendAsVerifyResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "settings" :>
               "sendAs" :>
                 Capture "sendAsEmail" Text :>
                   "verify" :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Sends a verification email to the specified send-as alias address. The
-- verification status must be \`pending\`. This method is only available
-- to service account clients that have been delegated domain-wide
-- authority.
--
-- /See:/ 'usersSettingsSendAsVerify' smart constructor.
data UsersSettingsSendAsVerify =
  UsersSettingsSendAsVerify'
    { _ussavXgafv :: !(Maybe Xgafv)
    , _ussavUploadProtocol :: !(Maybe Text)
    , _ussavAccessToken :: !(Maybe Text)
    , _ussavUploadType :: !(Maybe Text)
    , _ussavUserId :: !Text
    , _ussavSendAsEmail :: !Text
    , _ussavCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSettingsSendAsVerify' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ussavXgafv'
--
-- * 'ussavUploadProtocol'
--
-- * 'ussavAccessToken'
--
-- * 'ussavUploadType'
--
-- * 'ussavUserId'
--
-- * 'ussavSendAsEmail'
--
-- * 'ussavCallback'
usersSettingsSendAsVerify
    :: Text -- ^ 'ussavSendAsEmail'
    -> UsersSettingsSendAsVerify
usersSettingsSendAsVerify pUssavSendAsEmail_ =
  UsersSettingsSendAsVerify'
    { _ussavXgafv = Nothing
    , _ussavUploadProtocol = Nothing
    , _ussavAccessToken = Nothing
    , _ussavUploadType = Nothing
    , _ussavUserId = "me"
    , _ussavSendAsEmail = pUssavSendAsEmail_
    , _ussavCallback = Nothing
    }


-- | V1 error format.
ussavXgafv :: Lens' UsersSettingsSendAsVerify (Maybe Xgafv)
ussavXgafv
  = lens _ussavXgafv (\ s a -> s{_ussavXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ussavUploadProtocol :: Lens' UsersSettingsSendAsVerify (Maybe Text)
ussavUploadProtocol
  = lens _ussavUploadProtocol
      (\ s a -> s{_ussavUploadProtocol = a})

-- | OAuth access token.
ussavAccessToken :: Lens' UsersSettingsSendAsVerify (Maybe Text)
ussavAccessToken
  = lens _ussavAccessToken
      (\ s a -> s{_ussavAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ussavUploadType :: Lens' UsersSettingsSendAsVerify (Maybe Text)
ussavUploadType
  = lens _ussavUploadType
      (\ s a -> s{_ussavUploadType = a})

-- | User\'s email address. The special value \"me\" can be used to indicate
-- the authenticated user.
ussavUserId :: Lens' UsersSettingsSendAsVerify Text
ussavUserId
  = lens _ussavUserId (\ s a -> s{_ussavUserId = a})

-- | The send-as alias to be verified.
ussavSendAsEmail :: Lens' UsersSettingsSendAsVerify Text
ussavSendAsEmail
  = lens _ussavSendAsEmail
      (\ s a -> s{_ussavSendAsEmail = a})

-- | JSONP
ussavCallback :: Lens' UsersSettingsSendAsVerify (Maybe Text)
ussavCallback
  = lens _ussavCallback
      (\ s a -> s{_ussavCallback = a})

instance GoogleRequest UsersSettingsSendAsVerify
         where
        type Rs UsersSettingsSendAsVerify = ()
        type Scopes UsersSettingsSendAsVerify =
             '["https://www.googleapis.com/auth/gmail.settings.sharing"]
        requestClient UsersSettingsSendAsVerify'{..}
          = go _ussavUserId _ussavSendAsEmail _ussavXgafv
              _ussavUploadProtocol
              _ussavAccessToken
              _ussavUploadType
              _ussavCallback
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersSettingsSendAsVerifyResource)
                      mempty
