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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.SendAs.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the send-as aliases for the specified account. The result includes
-- the primary send-as address associated with the account as well as any
-- custom \"from\" aliases.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.sendAs.list@.
module Network.Google.Resource.Gmail.Users.Settings.SendAs.List
    (
    -- * REST Resource
      UsersSettingsSendAsListResource

    -- * Creating a Request
    , usersSettingsSendAsList
    , UsersSettingsSendAsList

    -- * Request Lenses
    , ussalXgafv
    , ussalUploadProtocol
    , ussalAccessToken
    , ussalUploadType
    , ussalUserId
    , ussalCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.sendAs.list@ method which the
-- 'UsersSettingsSendAsList' request conforms to.
type UsersSettingsSendAsListResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "settings" :>
               "sendAs" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListSendAsResponse

-- | Lists the send-as aliases for the specified account. The result includes
-- the primary send-as address associated with the account as well as any
-- custom \"from\" aliases.
--
-- /See:/ 'usersSettingsSendAsList' smart constructor.
data UsersSettingsSendAsList =
  UsersSettingsSendAsList'
    { _ussalXgafv :: !(Maybe Xgafv)
    , _ussalUploadProtocol :: !(Maybe Text)
    , _ussalAccessToken :: !(Maybe Text)
    , _ussalUploadType :: !(Maybe Text)
    , _ussalUserId :: !Text
    , _ussalCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSettingsSendAsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ussalXgafv'
--
-- * 'ussalUploadProtocol'
--
-- * 'ussalAccessToken'
--
-- * 'ussalUploadType'
--
-- * 'ussalUserId'
--
-- * 'ussalCallback'
usersSettingsSendAsList
    :: UsersSettingsSendAsList
usersSettingsSendAsList =
  UsersSettingsSendAsList'
    { _ussalXgafv = Nothing
    , _ussalUploadProtocol = Nothing
    , _ussalAccessToken = Nothing
    , _ussalUploadType = Nothing
    , _ussalUserId = "me"
    , _ussalCallback = Nothing
    }


-- | V1 error format.
ussalXgafv :: Lens' UsersSettingsSendAsList (Maybe Xgafv)
ussalXgafv
  = lens _ussalXgafv (\ s a -> s{_ussalXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ussalUploadProtocol :: Lens' UsersSettingsSendAsList (Maybe Text)
ussalUploadProtocol
  = lens _ussalUploadProtocol
      (\ s a -> s{_ussalUploadProtocol = a})

-- | OAuth access token.
ussalAccessToken :: Lens' UsersSettingsSendAsList (Maybe Text)
ussalAccessToken
  = lens _ussalAccessToken
      (\ s a -> s{_ussalAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ussalUploadType :: Lens' UsersSettingsSendAsList (Maybe Text)
ussalUploadType
  = lens _ussalUploadType
      (\ s a -> s{_ussalUploadType = a})

-- | User\'s email address. The special value \"me\" can be used to indicate
-- the authenticated user.
ussalUserId :: Lens' UsersSettingsSendAsList Text
ussalUserId
  = lens _ussalUserId (\ s a -> s{_ussalUserId = a})

-- | JSONP
ussalCallback :: Lens' UsersSettingsSendAsList (Maybe Text)
ussalCallback
  = lens _ussalCallback
      (\ s a -> s{_ussalCallback = a})

instance GoogleRequest UsersSettingsSendAsList where
        type Rs UsersSettingsSendAsList = ListSendAsResponse
        type Scopes UsersSettingsSendAsList =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.modify",
               "https://www.googleapis.com/auth/gmail.readonly",
               "https://www.googleapis.com/auth/gmail.settings.basic"]
        requestClient UsersSettingsSendAsList'{..}
          = go _ussalUserId _ussalXgafv _ussalUploadProtocol
              _ussalAccessToken
              _ussalUploadType
              _ussalCallback
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersSettingsSendAsListResource)
                      mempty
