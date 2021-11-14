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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.Delegates.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified delegate. Note that a delegate user must be referred
-- to by their primary email address, and not an email alias. This method
-- is only available to service account clients that have been delegated
-- domain-wide authority.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.delegates.get@.
module Network.Google.Resource.Gmail.Users.Settings.Delegates.Get
    (
    -- * REST Resource
      UsersSettingsDelegatesGetResource

    -- * Creating a Request
    , usersSettingsDelegatesGet
    , UsersSettingsDelegatesGet

    -- * Request Lenses
    , usdgXgafv
    , usdgUploadProtocol
    , usdgAccessToken
    , usdgUploadType
    , usdgUserId
    , usdgDelegateEmail
    , usdgCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.delegates.get@ method which the
-- 'UsersSettingsDelegatesGet' request conforms to.
type UsersSettingsDelegatesGetResource =
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
                             QueryParam "alt" AltJSON :> Get '[JSON] Delegate

-- | Gets the specified delegate. Note that a delegate user must be referred
-- to by their primary email address, and not an email alias. This method
-- is only available to service account clients that have been delegated
-- domain-wide authority.
--
-- /See:/ 'usersSettingsDelegatesGet' smart constructor.
data UsersSettingsDelegatesGet =
  UsersSettingsDelegatesGet'
    { _usdgXgafv :: !(Maybe Xgafv)
    , _usdgUploadProtocol :: !(Maybe Text)
    , _usdgAccessToken :: !(Maybe Text)
    , _usdgUploadType :: !(Maybe Text)
    , _usdgUserId :: !Text
    , _usdgDelegateEmail :: !Text
    , _usdgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSettingsDelegatesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usdgXgafv'
--
-- * 'usdgUploadProtocol'
--
-- * 'usdgAccessToken'
--
-- * 'usdgUploadType'
--
-- * 'usdgUserId'
--
-- * 'usdgDelegateEmail'
--
-- * 'usdgCallback'
usersSettingsDelegatesGet
    :: Text -- ^ 'usdgDelegateEmail'
    -> UsersSettingsDelegatesGet
usersSettingsDelegatesGet pUsdgDelegateEmail_ =
  UsersSettingsDelegatesGet'
    { _usdgXgafv = Nothing
    , _usdgUploadProtocol = Nothing
    , _usdgAccessToken = Nothing
    , _usdgUploadType = Nothing
    , _usdgUserId = "me"
    , _usdgDelegateEmail = pUsdgDelegateEmail_
    , _usdgCallback = Nothing
    }


-- | V1 error format.
usdgXgafv :: Lens' UsersSettingsDelegatesGet (Maybe Xgafv)
usdgXgafv
  = lens _usdgXgafv (\ s a -> s{_usdgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
usdgUploadProtocol :: Lens' UsersSettingsDelegatesGet (Maybe Text)
usdgUploadProtocol
  = lens _usdgUploadProtocol
      (\ s a -> s{_usdgUploadProtocol = a})

-- | OAuth access token.
usdgAccessToken :: Lens' UsersSettingsDelegatesGet (Maybe Text)
usdgAccessToken
  = lens _usdgAccessToken
      (\ s a -> s{_usdgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
usdgUploadType :: Lens' UsersSettingsDelegatesGet (Maybe Text)
usdgUploadType
  = lens _usdgUploadType
      (\ s a -> s{_usdgUploadType = a})

-- | User\'s email address. The special value \"me\" can be used to indicate
-- the authenticated user.
usdgUserId :: Lens' UsersSettingsDelegatesGet Text
usdgUserId
  = lens _usdgUserId (\ s a -> s{_usdgUserId = a})

-- | The email address of the user whose delegate relationship is to be
-- retrieved.
usdgDelegateEmail :: Lens' UsersSettingsDelegatesGet Text
usdgDelegateEmail
  = lens _usdgDelegateEmail
      (\ s a -> s{_usdgDelegateEmail = a})

-- | JSONP
usdgCallback :: Lens' UsersSettingsDelegatesGet (Maybe Text)
usdgCallback
  = lens _usdgCallback (\ s a -> s{_usdgCallback = a})

instance GoogleRequest UsersSettingsDelegatesGet
         where
        type Rs UsersSettingsDelegatesGet = Delegate
        type Scopes UsersSettingsDelegatesGet =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.modify",
               "https://www.googleapis.com/auth/gmail.readonly",
               "https://www.googleapis.com/auth/gmail.settings.basic"]
        requestClient UsersSettingsDelegatesGet'{..}
          = go _usdgUserId _usdgDelegateEmail _usdgXgafv
              _usdgUploadProtocol
              _usdgAccessToken
              _usdgUploadType
              _usdgCallback
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersSettingsDelegatesGetResource)
                      mempty
