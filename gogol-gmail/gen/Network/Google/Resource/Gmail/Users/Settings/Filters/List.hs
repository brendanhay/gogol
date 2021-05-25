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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.Filters.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the message filters of a Gmail user.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.filters.list@.
module Network.Google.Resource.Gmail.Users.Settings.Filters.List
    (
    -- * REST Resource
      UsersSettingsFiltersListResource

    -- * Creating a Request
    , usersSettingsFiltersList
    , UsersSettingsFiltersList

    -- * Request Lenses
    , usflXgafv
    , usflUploadProtocol
    , usflAccessToken
    , usflUploadType
    , usflUserId
    , usflCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.filters.list@ method which the
-- 'UsersSettingsFiltersList' request conforms to.
type UsersSettingsFiltersListResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "settings" :>
               "filters" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListFiltersResponse

-- | Lists the message filters of a Gmail user.
--
-- /See:/ 'usersSettingsFiltersList' smart constructor.
data UsersSettingsFiltersList =
  UsersSettingsFiltersList'
    { _usflXgafv :: !(Maybe Xgafv)
    , _usflUploadProtocol :: !(Maybe Text)
    , _usflAccessToken :: !(Maybe Text)
    , _usflUploadType :: !(Maybe Text)
    , _usflUserId :: !Text
    , _usflCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSettingsFiltersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usflXgafv'
--
-- * 'usflUploadProtocol'
--
-- * 'usflAccessToken'
--
-- * 'usflUploadType'
--
-- * 'usflUserId'
--
-- * 'usflCallback'
usersSettingsFiltersList
    :: UsersSettingsFiltersList
usersSettingsFiltersList =
  UsersSettingsFiltersList'
    { _usflXgafv = Nothing
    , _usflUploadProtocol = Nothing
    , _usflAccessToken = Nothing
    , _usflUploadType = Nothing
    , _usflUserId = "me"
    , _usflCallback = Nothing
    }


-- | V1 error format.
usflXgafv :: Lens' UsersSettingsFiltersList (Maybe Xgafv)
usflXgafv
  = lens _usflXgafv (\ s a -> s{_usflXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
usflUploadProtocol :: Lens' UsersSettingsFiltersList (Maybe Text)
usflUploadProtocol
  = lens _usflUploadProtocol
      (\ s a -> s{_usflUploadProtocol = a})

-- | OAuth access token.
usflAccessToken :: Lens' UsersSettingsFiltersList (Maybe Text)
usflAccessToken
  = lens _usflAccessToken
      (\ s a -> s{_usflAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
usflUploadType :: Lens' UsersSettingsFiltersList (Maybe Text)
usflUploadType
  = lens _usflUploadType
      (\ s a -> s{_usflUploadType = a})

-- | User\'s email address. The special value \"me\" can be used to indicate
-- the authenticated user.
usflUserId :: Lens' UsersSettingsFiltersList Text
usflUserId
  = lens _usflUserId (\ s a -> s{_usflUserId = a})

-- | JSONP
usflCallback :: Lens' UsersSettingsFiltersList (Maybe Text)
usflCallback
  = lens _usflCallback (\ s a -> s{_usflCallback = a})

instance GoogleRequest UsersSettingsFiltersList where
        type Rs UsersSettingsFiltersList =
             ListFiltersResponse
        type Scopes UsersSettingsFiltersList =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.modify",
               "https://www.googleapis.com/auth/gmail.readonly",
               "https://www.googleapis.com/auth/gmail.settings.basic"]
        requestClient UsersSettingsFiltersList'{..}
          = go _usflUserId _usflXgafv _usflUploadProtocol
              _usflAccessToken
              _usflUploadType
              _usflCallback
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersSettingsFiltersListResource)
                      mempty
