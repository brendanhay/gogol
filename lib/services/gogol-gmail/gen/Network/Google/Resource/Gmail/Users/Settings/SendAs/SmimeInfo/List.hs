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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.SendAs.SmimeInfo.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists S\/MIME configs for the specified send-as alias.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.sendAs.smimeInfo.list@.
module Network.Google.Resource.Gmail.Users.Settings.SendAs.SmimeInfo.List
    (
    -- * REST Resource
      UsersSettingsSendAsSmimeInfoListResource

    -- * Creating a Request
    , usersSettingsSendAsSmimeInfoList
    , UsersSettingsSendAsSmimeInfoList

    -- * Request Lenses
    , ussasilXgafv
    , ussasilUploadProtocol
    , ussasilAccessToken
    , ussasilUploadType
    , ussasilUserId
    , ussasilSendAsEmail
    , ussasilCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.sendAs.smimeInfo.list@ method which the
-- 'UsersSettingsSendAsSmimeInfoList' request conforms to.
type UsersSettingsSendAsSmimeInfoListResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "settings" :>
               "sendAs" :>
                 Capture "sendAsEmail" Text :>
                   "smimeInfo" :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ListSmimeInfoResponse

-- | Lists S\/MIME configs for the specified send-as alias.
--
-- /See:/ 'usersSettingsSendAsSmimeInfoList' smart constructor.
data UsersSettingsSendAsSmimeInfoList =
  UsersSettingsSendAsSmimeInfoList'
    { _ussasilXgafv :: !(Maybe Xgafv)
    , _ussasilUploadProtocol :: !(Maybe Text)
    , _ussasilAccessToken :: !(Maybe Text)
    , _ussasilUploadType :: !(Maybe Text)
    , _ussasilUserId :: !Text
    , _ussasilSendAsEmail :: !Text
    , _ussasilCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSettingsSendAsSmimeInfoList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ussasilXgafv'
--
-- * 'ussasilUploadProtocol'
--
-- * 'ussasilAccessToken'
--
-- * 'ussasilUploadType'
--
-- * 'ussasilUserId'
--
-- * 'ussasilSendAsEmail'
--
-- * 'ussasilCallback'
usersSettingsSendAsSmimeInfoList
    :: Text -- ^ 'ussasilSendAsEmail'
    -> UsersSettingsSendAsSmimeInfoList
usersSettingsSendAsSmimeInfoList pUssasilSendAsEmail_ =
  UsersSettingsSendAsSmimeInfoList'
    { _ussasilXgafv = Nothing
    , _ussasilUploadProtocol = Nothing
    , _ussasilAccessToken = Nothing
    , _ussasilUploadType = Nothing
    , _ussasilUserId = "me"
    , _ussasilSendAsEmail = pUssasilSendAsEmail_
    , _ussasilCallback = Nothing
    }


-- | V1 error format.
ussasilXgafv :: Lens' UsersSettingsSendAsSmimeInfoList (Maybe Xgafv)
ussasilXgafv
  = lens _ussasilXgafv (\ s a -> s{_ussasilXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ussasilUploadProtocol :: Lens' UsersSettingsSendAsSmimeInfoList (Maybe Text)
ussasilUploadProtocol
  = lens _ussasilUploadProtocol
      (\ s a -> s{_ussasilUploadProtocol = a})

-- | OAuth access token.
ussasilAccessToken :: Lens' UsersSettingsSendAsSmimeInfoList (Maybe Text)
ussasilAccessToken
  = lens _ussasilAccessToken
      (\ s a -> s{_ussasilAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ussasilUploadType :: Lens' UsersSettingsSendAsSmimeInfoList (Maybe Text)
ussasilUploadType
  = lens _ussasilUploadType
      (\ s a -> s{_ussasilUploadType = a})

-- | The user\'s email address. The special value \`me\` can be used to
-- indicate the authenticated user.
ussasilUserId :: Lens' UsersSettingsSendAsSmimeInfoList Text
ussasilUserId
  = lens _ussasilUserId
      (\ s a -> s{_ussasilUserId = a})

-- | The email address that appears in the \"From:\" header for mail sent
-- using this alias.
ussasilSendAsEmail :: Lens' UsersSettingsSendAsSmimeInfoList Text
ussasilSendAsEmail
  = lens _ussasilSendAsEmail
      (\ s a -> s{_ussasilSendAsEmail = a})

-- | JSONP
ussasilCallback :: Lens' UsersSettingsSendAsSmimeInfoList (Maybe Text)
ussasilCallback
  = lens _ussasilCallback
      (\ s a -> s{_ussasilCallback = a})

instance GoogleRequest
           UsersSettingsSendAsSmimeInfoList
         where
        type Rs UsersSettingsSendAsSmimeInfoList =
             ListSmimeInfoResponse
        type Scopes UsersSettingsSendAsSmimeInfoList =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.modify",
               "https://www.googleapis.com/auth/gmail.readonly",
               "https://www.googleapis.com/auth/gmail.settings.basic",
               "https://www.googleapis.com/auth/gmail.settings.sharing"]
        requestClient UsersSettingsSendAsSmimeInfoList'{..}
          = go _ussasilUserId _ussasilSendAsEmail _ussasilXgafv
              _ussasilUploadProtocol
              _ussasilAccessToken
              _ussasilUploadType
              _ussasilCallback
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy UsersSettingsSendAsSmimeInfoListResource)
                      mempty
