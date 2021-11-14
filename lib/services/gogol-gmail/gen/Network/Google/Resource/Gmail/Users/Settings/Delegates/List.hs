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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.Delegates.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the delegates for the specified account. This method is only
-- available to service account clients that have been delegated
-- domain-wide authority.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.delegates.list@.
module Network.Google.Resource.Gmail.Users.Settings.Delegates.List
    (
    -- * REST Resource
      UsersSettingsDelegatesListResource

    -- * Creating a Request
    , usersSettingsDelegatesList
    , UsersSettingsDelegatesList

    -- * Request Lenses
    , usdlXgafv
    , usdlUploadProtocol
    , usdlAccessToken
    , usdlUploadType
    , usdlUserId
    , usdlCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.delegates.list@ method which the
-- 'UsersSettingsDelegatesList' request conforms to.
type UsersSettingsDelegatesListResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "settings" :>
               "delegates" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListDelegatesResponse

-- | Lists the delegates for the specified account. This method is only
-- available to service account clients that have been delegated
-- domain-wide authority.
--
-- /See:/ 'usersSettingsDelegatesList' smart constructor.
data UsersSettingsDelegatesList =
  UsersSettingsDelegatesList'
    { _usdlXgafv :: !(Maybe Xgafv)
    , _usdlUploadProtocol :: !(Maybe Text)
    , _usdlAccessToken :: !(Maybe Text)
    , _usdlUploadType :: !(Maybe Text)
    , _usdlUserId :: !Text
    , _usdlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSettingsDelegatesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usdlXgafv'
--
-- * 'usdlUploadProtocol'
--
-- * 'usdlAccessToken'
--
-- * 'usdlUploadType'
--
-- * 'usdlUserId'
--
-- * 'usdlCallback'
usersSettingsDelegatesList
    :: UsersSettingsDelegatesList
usersSettingsDelegatesList =
  UsersSettingsDelegatesList'
    { _usdlXgafv = Nothing
    , _usdlUploadProtocol = Nothing
    , _usdlAccessToken = Nothing
    , _usdlUploadType = Nothing
    , _usdlUserId = "me"
    , _usdlCallback = Nothing
    }


-- | V1 error format.
usdlXgafv :: Lens' UsersSettingsDelegatesList (Maybe Xgafv)
usdlXgafv
  = lens _usdlXgafv (\ s a -> s{_usdlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
usdlUploadProtocol :: Lens' UsersSettingsDelegatesList (Maybe Text)
usdlUploadProtocol
  = lens _usdlUploadProtocol
      (\ s a -> s{_usdlUploadProtocol = a})

-- | OAuth access token.
usdlAccessToken :: Lens' UsersSettingsDelegatesList (Maybe Text)
usdlAccessToken
  = lens _usdlAccessToken
      (\ s a -> s{_usdlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
usdlUploadType :: Lens' UsersSettingsDelegatesList (Maybe Text)
usdlUploadType
  = lens _usdlUploadType
      (\ s a -> s{_usdlUploadType = a})

-- | User\'s email address. The special value \"me\" can be used to indicate
-- the authenticated user.
usdlUserId :: Lens' UsersSettingsDelegatesList Text
usdlUserId
  = lens _usdlUserId (\ s a -> s{_usdlUserId = a})

-- | JSONP
usdlCallback :: Lens' UsersSettingsDelegatesList (Maybe Text)
usdlCallback
  = lens _usdlCallback (\ s a -> s{_usdlCallback = a})

instance GoogleRequest UsersSettingsDelegatesList
         where
        type Rs UsersSettingsDelegatesList =
             ListDelegatesResponse
        type Scopes UsersSettingsDelegatesList =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.modify",
               "https://www.googleapis.com/auth/gmail.readonly",
               "https://www.googleapis.com/auth/gmail.settings.basic"]
        requestClient UsersSettingsDelegatesList'{..}
          = go _usdlUserId _usdlXgafv _usdlUploadProtocol
              _usdlAccessToken
              _usdlUploadType
              _usdlCallback
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersSettingsDelegatesListResource)
                      mempty
