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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.Filters.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a filter.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.filters.delete@.
module Network.Google.Resource.Gmail.Users.Settings.Filters.Delete
    (
    -- * REST Resource
      UsersSettingsFiltersDeleteResource

    -- * Creating a Request
    , usersSettingsFiltersDelete
    , UsersSettingsFiltersDelete

    -- * Request Lenses
    , usfdXgafv
    , usfdUploadProtocol
    , usfdAccessToken
    , usfdUploadType
    , usfdUserId
    , usfdId
    , usfdCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.filters.delete@ method which the
-- 'UsersSettingsFiltersDelete' request conforms to.
type UsersSettingsFiltersDeleteResource =
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
                             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a filter.
--
-- /See:/ 'usersSettingsFiltersDelete' smart constructor.
data UsersSettingsFiltersDelete =
  UsersSettingsFiltersDelete'
    { _usfdXgafv :: !(Maybe Xgafv)
    , _usfdUploadProtocol :: !(Maybe Text)
    , _usfdAccessToken :: !(Maybe Text)
    , _usfdUploadType :: !(Maybe Text)
    , _usfdUserId :: !Text
    , _usfdId :: !Text
    , _usfdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSettingsFiltersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usfdXgafv'
--
-- * 'usfdUploadProtocol'
--
-- * 'usfdAccessToken'
--
-- * 'usfdUploadType'
--
-- * 'usfdUserId'
--
-- * 'usfdId'
--
-- * 'usfdCallback'
usersSettingsFiltersDelete
    :: Text -- ^ 'usfdId'
    -> UsersSettingsFiltersDelete
usersSettingsFiltersDelete pUsfdId_ =
  UsersSettingsFiltersDelete'
    { _usfdXgafv = Nothing
    , _usfdUploadProtocol = Nothing
    , _usfdAccessToken = Nothing
    , _usfdUploadType = Nothing
    , _usfdUserId = "me"
    , _usfdId = pUsfdId_
    , _usfdCallback = Nothing
    }


-- | V1 error format.
usfdXgafv :: Lens' UsersSettingsFiltersDelete (Maybe Xgafv)
usfdXgafv
  = lens _usfdXgafv (\ s a -> s{_usfdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
usfdUploadProtocol :: Lens' UsersSettingsFiltersDelete (Maybe Text)
usfdUploadProtocol
  = lens _usfdUploadProtocol
      (\ s a -> s{_usfdUploadProtocol = a})

-- | OAuth access token.
usfdAccessToken :: Lens' UsersSettingsFiltersDelete (Maybe Text)
usfdAccessToken
  = lens _usfdAccessToken
      (\ s a -> s{_usfdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
usfdUploadType :: Lens' UsersSettingsFiltersDelete (Maybe Text)
usfdUploadType
  = lens _usfdUploadType
      (\ s a -> s{_usfdUploadType = a})

-- | User\'s email address. The special value \"me\" can be used to indicate
-- the authenticated user.
usfdUserId :: Lens' UsersSettingsFiltersDelete Text
usfdUserId
  = lens _usfdUserId (\ s a -> s{_usfdUserId = a})

-- | The ID of the filter to be deleted.
usfdId :: Lens' UsersSettingsFiltersDelete Text
usfdId = lens _usfdId (\ s a -> s{_usfdId = a})

-- | JSONP
usfdCallback :: Lens' UsersSettingsFiltersDelete (Maybe Text)
usfdCallback
  = lens _usfdCallback (\ s a -> s{_usfdCallback = a})

instance GoogleRequest UsersSettingsFiltersDelete
         where
        type Rs UsersSettingsFiltersDelete = ()
        type Scopes UsersSettingsFiltersDelete =
             '["https://www.googleapis.com/auth/gmail.settings.basic"]
        requestClient UsersSettingsFiltersDelete'{..}
          = go _usfdUserId _usfdId _usfdXgafv
              _usfdUploadProtocol
              _usfdAccessToken
              _usfdUploadType
              _usfdCallback
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersSettingsFiltersDeleteResource)
                      mempty
