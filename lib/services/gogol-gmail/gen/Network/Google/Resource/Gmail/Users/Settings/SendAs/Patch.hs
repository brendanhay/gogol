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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.SendAs.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patch the specified send-as alias.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.sendAs.patch@.
module Network.Google.Resource.Gmail.Users.Settings.SendAs.Patch
    (
    -- * REST Resource
      UsersSettingsSendAsPatchResource

    -- * Creating a Request
    , usersSettingsSendAsPatch
    , UsersSettingsSendAsPatch

    -- * Request Lenses
    , ussapXgafv
    , ussapUploadProtocol
    , ussapAccessToken
    , ussapUploadType
    , ussapPayload
    , ussapUserId
    , ussapSendAsEmail
    , ussapCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.sendAs.patch@ method which the
-- 'UsersSettingsSendAsPatch' request conforms to.
type UsersSettingsSendAsPatchResource =
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
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] SendAs :> Patch '[JSON] SendAs

-- | Patch the specified send-as alias.
--
-- /See:/ 'usersSettingsSendAsPatch' smart constructor.
data UsersSettingsSendAsPatch =
  UsersSettingsSendAsPatch'
    { _ussapXgafv :: !(Maybe Xgafv)
    , _ussapUploadProtocol :: !(Maybe Text)
    , _ussapAccessToken :: !(Maybe Text)
    , _ussapUploadType :: !(Maybe Text)
    , _ussapPayload :: !SendAs
    , _ussapUserId :: !Text
    , _ussapSendAsEmail :: !Text
    , _ussapCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSettingsSendAsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ussapXgafv'
--
-- * 'ussapUploadProtocol'
--
-- * 'ussapAccessToken'
--
-- * 'ussapUploadType'
--
-- * 'ussapPayload'
--
-- * 'ussapUserId'
--
-- * 'ussapSendAsEmail'
--
-- * 'ussapCallback'
usersSettingsSendAsPatch
    :: SendAs -- ^ 'ussapPayload'
    -> Text -- ^ 'ussapSendAsEmail'
    -> UsersSettingsSendAsPatch
usersSettingsSendAsPatch pUssapPayload_ pUssapSendAsEmail_ =
  UsersSettingsSendAsPatch'
    { _ussapXgafv = Nothing
    , _ussapUploadProtocol = Nothing
    , _ussapAccessToken = Nothing
    , _ussapUploadType = Nothing
    , _ussapPayload = pUssapPayload_
    , _ussapUserId = "me"
    , _ussapSendAsEmail = pUssapSendAsEmail_
    , _ussapCallback = Nothing
    }


-- | V1 error format.
ussapXgafv :: Lens' UsersSettingsSendAsPatch (Maybe Xgafv)
ussapXgafv
  = lens _ussapXgafv (\ s a -> s{_ussapXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ussapUploadProtocol :: Lens' UsersSettingsSendAsPatch (Maybe Text)
ussapUploadProtocol
  = lens _ussapUploadProtocol
      (\ s a -> s{_ussapUploadProtocol = a})

-- | OAuth access token.
ussapAccessToken :: Lens' UsersSettingsSendAsPatch (Maybe Text)
ussapAccessToken
  = lens _ussapAccessToken
      (\ s a -> s{_ussapAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ussapUploadType :: Lens' UsersSettingsSendAsPatch (Maybe Text)
ussapUploadType
  = lens _ussapUploadType
      (\ s a -> s{_ussapUploadType = a})

-- | Multipart request metadata.
ussapPayload :: Lens' UsersSettingsSendAsPatch SendAs
ussapPayload
  = lens _ussapPayload (\ s a -> s{_ussapPayload = a})

-- | User\'s email address. The special value \"me\" can be used to indicate
-- the authenticated user.
ussapUserId :: Lens' UsersSettingsSendAsPatch Text
ussapUserId
  = lens _ussapUserId (\ s a -> s{_ussapUserId = a})

-- | The send-as alias to be updated.
ussapSendAsEmail :: Lens' UsersSettingsSendAsPatch Text
ussapSendAsEmail
  = lens _ussapSendAsEmail
      (\ s a -> s{_ussapSendAsEmail = a})

-- | JSONP
ussapCallback :: Lens' UsersSettingsSendAsPatch (Maybe Text)
ussapCallback
  = lens _ussapCallback
      (\ s a -> s{_ussapCallback = a})

instance GoogleRequest UsersSettingsSendAsPatch where
        type Rs UsersSettingsSendAsPatch = SendAs
        type Scopes UsersSettingsSendAsPatch =
             '["https://www.googleapis.com/auth/gmail.settings.basic",
               "https://www.googleapis.com/auth/gmail.settings.sharing"]
        requestClient UsersSettingsSendAsPatch'{..}
          = go _ussapUserId _ussapSendAsEmail _ussapXgafv
              _ussapUploadProtocol
              _ussapAccessToken
              _ussapUploadType
              _ussapCallback
              (Just AltJSON)
              _ussapPayload
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersSettingsSendAsPatchResource)
                      mempty
