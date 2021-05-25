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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.UpdatePop
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates POP settings.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.updatePop@.
module Network.Google.Resource.Gmail.Users.Settings.UpdatePop
    (
    -- * REST Resource
      UsersSettingsUpdatePopResource

    -- * Creating a Request
    , usersSettingsUpdatePop
    , UsersSettingsUpdatePop

    -- * Request Lenses
    , usupXgafv
    , usupUploadProtocol
    , usupAccessToken
    , usupUploadType
    , usupPayload
    , usupUserId
    , usupCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.updatePop@ method which the
-- 'UsersSettingsUpdatePop' request conforms to.
type UsersSettingsUpdatePopResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "settings" :>
               "pop" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] PopSettings :>
                               Put '[JSON] PopSettings

-- | Updates POP settings.
--
-- /See:/ 'usersSettingsUpdatePop' smart constructor.
data UsersSettingsUpdatePop =
  UsersSettingsUpdatePop'
    { _usupXgafv :: !(Maybe Xgafv)
    , _usupUploadProtocol :: !(Maybe Text)
    , _usupAccessToken :: !(Maybe Text)
    , _usupUploadType :: !(Maybe Text)
    , _usupPayload :: !PopSettings
    , _usupUserId :: !Text
    , _usupCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSettingsUpdatePop' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usupXgafv'
--
-- * 'usupUploadProtocol'
--
-- * 'usupAccessToken'
--
-- * 'usupUploadType'
--
-- * 'usupPayload'
--
-- * 'usupUserId'
--
-- * 'usupCallback'
usersSettingsUpdatePop
    :: PopSettings -- ^ 'usupPayload'
    -> UsersSettingsUpdatePop
usersSettingsUpdatePop pUsupPayload_ =
  UsersSettingsUpdatePop'
    { _usupXgafv = Nothing
    , _usupUploadProtocol = Nothing
    , _usupAccessToken = Nothing
    , _usupUploadType = Nothing
    , _usupPayload = pUsupPayload_
    , _usupUserId = "me"
    , _usupCallback = Nothing
    }


-- | V1 error format.
usupXgafv :: Lens' UsersSettingsUpdatePop (Maybe Xgafv)
usupXgafv
  = lens _usupXgafv (\ s a -> s{_usupXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
usupUploadProtocol :: Lens' UsersSettingsUpdatePop (Maybe Text)
usupUploadProtocol
  = lens _usupUploadProtocol
      (\ s a -> s{_usupUploadProtocol = a})

-- | OAuth access token.
usupAccessToken :: Lens' UsersSettingsUpdatePop (Maybe Text)
usupAccessToken
  = lens _usupAccessToken
      (\ s a -> s{_usupAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
usupUploadType :: Lens' UsersSettingsUpdatePop (Maybe Text)
usupUploadType
  = lens _usupUploadType
      (\ s a -> s{_usupUploadType = a})

-- | Multipart request metadata.
usupPayload :: Lens' UsersSettingsUpdatePop PopSettings
usupPayload
  = lens _usupPayload (\ s a -> s{_usupPayload = a})

-- | User\'s email address. The special value \"me\" can be used to indicate
-- the authenticated user.
usupUserId :: Lens' UsersSettingsUpdatePop Text
usupUserId
  = lens _usupUserId (\ s a -> s{_usupUserId = a})

-- | JSONP
usupCallback :: Lens' UsersSettingsUpdatePop (Maybe Text)
usupCallback
  = lens _usupCallback (\ s a -> s{_usupCallback = a})

instance GoogleRequest UsersSettingsUpdatePop where
        type Rs UsersSettingsUpdatePop = PopSettings
        type Scopes UsersSettingsUpdatePop =
             '["https://www.googleapis.com/auth/gmail.settings.basic"]
        requestClient UsersSettingsUpdatePop'{..}
          = go _usupUserId _usupXgafv _usupUploadProtocol
              _usupAccessToken
              _usupUploadType
              _usupCallback
              (Just AltJSON)
              _usupPayload
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersSettingsUpdatePopResource)
                      mempty
