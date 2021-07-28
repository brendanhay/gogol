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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.Filters.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a filter.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.filters.get@.
module Network.Google.Resource.Gmail.Users.Settings.Filters.Get
    (
    -- * REST Resource
      UsersSettingsFiltersGetResource

    -- * Creating a Request
    , usersSettingsFiltersGet
    , UsersSettingsFiltersGet

    -- * Request Lenses
    , usfgXgafv
    , usfgUploadProtocol
    , usfgAccessToken
    , usfgUploadType
    , usfgUserId
    , usfgId
    , usfgCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.filters.get@ method which the
-- 'UsersSettingsFiltersGet' request conforms to.
type UsersSettingsFiltersGetResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "settings" :>
               "filters" :>
                 Capture "id" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Filter

-- | Gets a filter.
--
-- /See:/ 'usersSettingsFiltersGet' smart constructor.
data UsersSettingsFiltersGet =
  UsersSettingsFiltersGet'
    { _usfgXgafv :: !(Maybe Xgafv)
    , _usfgUploadProtocol :: !(Maybe Text)
    , _usfgAccessToken :: !(Maybe Text)
    , _usfgUploadType :: !(Maybe Text)
    , _usfgUserId :: !Text
    , _usfgId :: !Text
    , _usfgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSettingsFiltersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usfgXgafv'
--
-- * 'usfgUploadProtocol'
--
-- * 'usfgAccessToken'
--
-- * 'usfgUploadType'
--
-- * 'usfgUserId'
--
-- * 'usfgId'
--
-- * 'usfgCallback'
usersSettingsFiltersGet
    :: Text -- ^ 'usfgId'
    -> UsersSettingsFiltersGet
usersSettingsFiltersGet pUsfgId_ =
  UsersSettingsFiltersGet'
    { _usfgXgafv = Nothing
    , _usfgUploadProtocol = Nothing
    , _usfgAccessToken = Nothing
    , _usfgUploadType = Nothing
    , _usfgUserId = "me"
    , _usfgId = pUsfgId_
    , _usfgCallback = Nothing
    }


-- | V1 error format.
usfgXgafv :: Lens' UsersSettingsFiltersGet (Maybe Xgafv)
usfgXgafv
  = lens _usfgXgafv (\ s a -> s{_usfgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
usfgUploadProtocol :: Lens' UsersSettingsFiltersGet (Maybe Text)
usfgUploadProtocol
  = lens _usfgUploadProtocol
      (\ s a -> s{_usfgUploadProtocol = a})

-- | OAuth access token.
usfgAccessToken :: Lens' UsersSettingsFiltersGet (Maybe Text)
usfgAccessToken
  = lens _usfgAccessToken
      (\ s a -> s{_usfgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
usfgUploadType :: Lens' UsersSettingsFiltersGet (Maybe Text)
usfgUploadType
  = lens _usfgUploadType
      (\ s a -> s{_usfgUploadType = a})

-- | User\'s email address. The special value \"me\" can be used to indicate
-- the authenticated user.
usfgUserId :: Lens' UsersSettingsFiltersGet Text
usfgUserId
  = lens _usfgUserId (\ s a -> s{_usfgUserId = a})

-- | The ID of the filter to be fetched.
usfgId :: Lens' UsersSettingsFiltersGet Text
usfgId = lens _usfgId (\ s a -> s{_usfgId = a})

-- | JSONP
usfgCallback :: Lens' UsersSettingsFiltersGet (Maybe Text)
usfgCallback
  = lens _usfgCallback (\ s a -> s{_usfgCallback = a})

instance GoogleRequest UsersSettingsFiltersGet where
        type Rs UsersSettingsFiltersGet = Filter
        type Scopes UsersSettingsFiltersGet =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.modify",
               "https://www.googleapis.com/auth/gmail.readonly",
               "https://www.googleapis.com/auth/gmail.settings.basic"]
        requestClient UsersSettingsFiltersGet'{..}
          = go _usfgUserId _usfgId _usfgXgafv
              _usfgUploadProtocol
              _usfgAccessToken
              _usfgUploadType
              _usfgCallback
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersSettingsFiltersGetResource)
                      mempty
