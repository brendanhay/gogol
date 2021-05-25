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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.SendAs.SmimeInfo.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified S\/MIME config for the specified send-as alias.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.sendAs.smimeInfo.get@.
module Network.Google.Resource.Gmail.Users.Settings.SendAs.SmimeInfo.Get
    (
    -- * REST Resource
      UsersSettingsSendAsSmimeInfoGetResource

    -- * Creating a Request
    , usersSettingsSendAsSmimeInfoGet
    , UsersSettingsSendAsSmimeInfoGet

    -- * Request Lenses
    , ussasigXgafv
    , ussasigUploadProtocol
    , ussasigAccessToken
    , ussasigUploadType
    , ussasigUserId
    , ussasigSendAsEmail
    , ussasigId
    , ussasigCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.sendAs.smimeInfo.get@ method which the
-- 'UsersSettingsSendAsSmimeInfoGet' request conforms to.
type UsersSettingsSendAsSmimeInfoGetResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "settings" :>
               "sendAs" :>
                 Capture "sendAsEmail" Text :>
                   "smimeInfo" :>
                     Capture "id" Text :>
                       QueryParam "$.xgafv" Xgafv :>
                         QueryParam "upload_protocol" Text :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] SmimeInfo

-- | Gets the specified S\/MIME config for the specified send-as alias.
--
-- /See:/ 'usersSettingsSendAsSmimeInfoGet' smart constructor.
data UsersSettingsSendAsSmimeInfoGet =
  UsersSettingsSendAsSmimeInfoGet'
    { _ussasigXgafv :: !(Maybe Xgafv)
    , _ussasigUploadProtocol :: !(Maybe Text)
    , _ussasigAccessToken :: !(Maybe Text)
    , _ussasigUploadType :: !(Maybe Text)
    , _ussasigUserId :: !Text
    , _ussasigSendAsEmail :: !Text
    , _ussasigId :: !Text
    , _ussasigCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSettingsSendAsSmimeInfoGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ussasigXgafv'
--
-- * 'ussasigUploadProtocol'
--
-- * 'ussasigAccessToken'
--
-- * 'ussasigUploadType'
--
-- * 'ussasigUserId'
--
-- * 'ussasigSendAsEmail'
--
-- * 'ussasigId'
--
-- * 'ussasigCallback'
usersSettingsSendAsSmimeInfoGet
    :: Text -- ^ 'ussasigSendAsEmail'
    -> Text -- ^ 'ussasigId'
    -> UsersSettingsSendAsSmimeInfoGet
usersSettingsSendAsSmimeInfoGet pUssasigSendAsEmail_ pUssasigId_ =
  UsersSettingsSendAsSmimeInfoGet'
    { _ussasigXgafv = Nothing
    , _ussasigUploadProtocol = Nothing
    , _ussasigAccessToken = Nothing
    , _ussasigUploadType = Nothing
    , _ussasigUserId = "me"
    , _ussasigSendAsEmail = pUssasigSendAsEmail_
    , _ussasigId = pUssasigId_
    , _ussasigCallback = Nothing
    }


-- | V1 error format.
ussasigXgafv :: Lens' UsersSettingsSendAsSmimeInfoGet (Maybe Xgafv)
ussasigXgafv
  = lens _ussasigXgafv (\ s a -> s{_ussasigXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ussasigUploadProtocol :: Lens' UsersSettingsSendAsSmimeInfoGet (Maybe Text)
ussasigUploadProtocol
  = lens _ussasigUploadProtocol
      (\ s a -> s{_ussasigUploadProtocol = a})

-- | OAuth access token.
ussasigAccessToken :: Lens' UsersSettingsSendAsSmimeInfoGet (Maybe Text)
ussasigAccessToken
  = lens _ussasigAccessToken
      (\ s a -> s{_ussasigAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ussasigUploadType :: Lens' UsersSettingsSendAsSmimeInfoGet (Maybe Text)
ussasigUploadType
  = lens _ussasigUploadType
      (\ s a -> s{_ussasigUploadType = a})

-- | The user\'s email address. The special value \`me\` can be used to
-- indicate the authenticated user.
ussasigUserId :: Lens' UsersSettingsSendAsSmimeInfoGet Text
ussasigUserId
  = lens _ussasigUserId
      (\ s a -> s{_ussasigUserId = a})

-- | The email address that appears in the \"From:\" header for mail sent
-- using this alias.
ussasigSendAsEmail :: Lens' UsersSettingsSendAsSmimeInfoGet Text
ussasigSendAsEmail
  = lens _ussasigSendAsEmail
      (\ s a -> s{_ussasigSendAsEmail = a})

-- | The immutable ID for the SmimeInfo.
ussasigId :: Lens' UsersSettingsSendAsSmimeInfoGet Text
ussasigId
  = lens _ussasigId (\ s a -> s{_ussasigId = a})

-- | JSONP
ussasigCallback :: Lens' UsersSettingsSendAsSmimeInfoGet (Maybe Text)
ussasigCallback
  = lens _ussasigCallback
      (\ s a -> s{_ussasigCallback = a})

instance GoogleRequest
           UsersSettingsSendAsSmimeInfoGet
         where
        type Rs UsersSettingsSendAsSmimeInfoGet = SmimeInfo
        type Scopes UsersSettingsSendAsSmimeInfoGet =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.modify",
               "https://www.googleapis.com/auth/gmail.readonly",
               "https://www.googleapis.com/auth/gmail.settings.basic",
               "https://www.googleapis.com/auth/gmail.settings.sharing"]
        requestClient UsersSettingsSendAsSmimeInfoGet'{..}
          = go _ussasigUserId _ussasigSendAsEmail _ussasigId
              _ussasigXgafv
              _ussasigUploadProtocol
              _ussasigAccessToken
              _ussasigUploadType
              _ussasigCallback
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy UsersSettingsSendAsSmimeInfoGetResource)
                      mempty
