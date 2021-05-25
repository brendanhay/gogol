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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.SendAs.SmimeInfo.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified S\/MIME config for the specified send-as alias.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.sendAs.smimeInfo.delete@.
module Network.Google.Resource.Gmail.Users.Settings.SendAs.SmimeInfo.Delete
    (
    -- * REST Resource
      UsersSettingsSendAsSmimeInfoDeleteResource

    -- * Creating a Request
    , usersSettingsSendAsSmimeInfoDelete
    , UsersSettingsSendAsSmimeInfoDelete

    -- * Request Lenses
    , ussasidXgafv
    , ussasidUploadProtocol
    , ussasidAccessToken
    , ussasidUploadType
    , ussasidUserId
    , ussasidSendAsEmail
    , ussasidId
    , ussasidCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.sendAs.smimeInfo.delete@ method which the
-- 'UsersSettingsSendAsSmimeInfoDelete' request conforms to.
type UsersSettingsSendAsSmimeInfoDeleteResource =
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
                                 QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes the specified S\/MIME config for the specified send-as alias.
--
-- /See:/ 'usersSettingsSendAsSmimeInfoDelete' smart constructor.
data UsersSettingsSendAsSmimeInfoDelete =
  UsersSettingsSendAsSmimeInfoDelete'
    { _ussasidXgafv :: !(Maybe Xgafv)
    , _ussasidUploadProtocol :: !(Maybe Text)
    , _ussasidAccessToken :: !(Maybe Text)
    , _ussasidUploadType :: !(Maybe Text)
    , _ussasidUserId :: !Text
    , _ussasidSendAsEmail :: !Text
    , _ussasidId :: !Text
    , _ussasidCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSettingsSendAsSmimeInfoDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ussasidXgafv'
--
-- * 'ussasidUploadProtocol'
--
-- * 'ussasidAccessToken'
--
-- * 'ussasidUploadType'
--
-- * 'ussasidUserId'
--
-- * 'ussasidSendAsEmail'
--
-- * 'ussasidId'
--
-- * 'ussasidCallback'
usersSettingsSendAsSmimeInfoDelete
    :: Text -- ^ 'ussasidSendAsEmail'
    -> Text -- ^ 'ussasidId'
    -> UsersSettingsSendAsSmimeInfoDelete
usersSettingsSendAsSmimeInfoDelete pUssasidSendAsEmail_ pUssasidId_ =
  UsersSettingsSendAsSmimeInfoDelete'
    { _ussasidXgafv = Nothing
    , _ussasidUploadProtocol = Nothing
    , _ussasidAccessToken = Nothing
    , _ussasidUploadType = Nothing
    , _ussasidUserId = "me"
    , _ussasidSendAsEmail = pUssasidSendAsEmail_
    , _ussasidId = pUssasidId_
    , _ussasidCallback = Nothing
    }


-- | V1 error format.
ussasidXgafv :: Lens' UsersSettingsSendAsSmimeInfoDelete (Maybe Xgafv)
ussasidXgafv
  = lens _ussasidXgafv (\ s a -> s{_ussasidXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ussasidUploadProtocol :: Lens' UsersSettingsSendAsSmimeInfoDelete (Maybe Text)
ussasidUploadProtocol
  = lens _ussasidUploadProtocol
      (\ s a -> s{_ussasidUploadProtocol = a})

-- | OAuth access token.
ussasidAccessToken :: Lens' UsersSettingsSendAsSmimeInfoDelete (Maybe Text)
ussasidAccessToken
  = lens _ussasidAccessToken
      (\ s a -> s{_ussasidAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ussasidUploadType :: Lens' UsersSettingsSendAsSmimeInfoDelete (Maybe Text)
ussasidUploadType
  = lens _ussasidUploadType
      (\ s a -> s{_ussasidUploadType = a})

-- | The user\'s email address. The special value \`me\` can be used to
-- indicate the authenticated user.
ussasidUserId :: Lens' UsersSettingsSendAsSmimeInfoDelete Text
ussasidUserId
  = lens _ussasidUserId
      (\ s a -> s{_ussasidUserId = a})

-- | The email address that appears in the \"From:\" header for mail sent
-- using this alias.
ussasidSendAsEmail :: Lens' UsersSettingsSendAsSmimeInfoDelete Text
ussasidSendAsEmail
  = lens _ussasidSendAsEmail
      (\ s a -> s{_ussasidSendAsEmail = a})

-- | The immutable ID for the SmimeInfo.
ussasidId :: Lens' UsersSettingsSendAsSmimeInfoDelete Text
ussasidId
  = lens _ussasidId (\ s a -> s{_ussasidId = a})

-- | JSONP
ussasidCallback :: Lens' UsersSettingsSendAsSmimeInfoDelete (Maybe Text)
ussasidCallback
  = lens _ussasidCallback
      (\ s a -> s{_ussasidCallback = a})

instance GoogleRequest
           UsersSettingsSendAsSmimeInfoDelete
         where
        type Rs UsersSettingsSendAsSmimeInfoDelete = ()
        type Scopes UsersSettingsSendAsSmimeInfoDelete =
             '["https://www.googleapis.com/auth/gmail.settings.basic",
               "https://www.googleapis.com/auth/gmail.settings.sharing"]
        requestClient UsersSettingsSendAsSmimeInfoDelete'{..}
          = go _ussasidUserId _ussasidSendAsEmail _ussasidId
              _ussasidXgafv
              _ussasidUploadProtocol
              _ussasidAccessToken
              _ussasidUploadType
              _ussasidCallback
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy UsersSettingsSendAsSmimeInfoDeleteResource)
                      mempty
