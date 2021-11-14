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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.Filters.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a filter. Note: you can only create a maximum of 1,000 filters.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.filters.create@.
module Network.Google.Resource.Gmail.Users.Settings.Filters.Create
    (
    -- * REST Resource
      UsersSettingsFiltersCreateResource

    -- * Creating a Request
    , usersSettingsFiltersCreate
    , UsersSettingsFiltersCreate

    -- * Request Lenses
    , usfcXgafv
    , usfcUploadProtocol
    , usfcAccessToken
    , usfcUploadType
    , usfcPayload
    , usfcUserId
    , usfcCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.filters.create@ method which the
-- 'UsersSettingsFiltersCreate' request conforms to.
type UsersSettingsFiltersCreateResource =
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
                             ReqBody '[JSON] Filter :> Post '[JSON] Filter

-- | Creates a filter. Note: you can only create a maximum of 1,000 filters.
--
-- /See:/ 'usersSettingsFiltersCreate' smart constructor.
data UsersSettingsFiltersCreate =
  UsersSettingsFiltersCreate'
    { _usfcXgafv :: !(Maybe Xgafv)
    , _usfcUploadProtocol :: !(Maybe Text)
    , _usfcAccessToken :: !(Maybe Text)
    , _usfcUploadType :: !(Maybe Text)
    , _usfcPayload :: !Filter
    , _usfcUserId :: !Text
    , _usfcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSettingsFiltersCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usfcXgafv'
--
-- * 'usfcUploadProtocol'
--
-- * 'usfcAccessToken'
--
-- * 'usfcUploadType'
--
-- * 'usfcPayload'
--
-- * 'usfcUserId'
--
-- * 'usfcCallback'
usersSettingsFiltersCreate
    :: Filter -- ^ 'usfcPayload'
    -> UsersSettingsFiltersCreate
usersSettingsFiltersCreate pUsfcPayload_ =
  UsersSettingsFiltersCreate'
    { _usfcXgafv = Nothing
    , _usfcUploadProtocol = Nothing
    , _usfcAccessToken = Nothing
    , _usfcUploadType = Nothing
    , _usfcPayload = pUsfcPayload_
    , _usfcUserId = "me"
    , _usfcCallback = Nothing
    }


-- | V1 error format.
usfcXgafv :: Lens' UsersSettingsFiltersCreate (Maybe Xgafv)
usfcXgafv
  = lens _usfcXgafv (\ s a -> s{_usfcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
usfcUploadProtocol :: Lens' UsersSettingsFiltersCreate (Maybe Text)
usfcUploadProtocol
  = lens _usfcUploadProtocol
      (\ s a -> s{_usfcUploadProtocol = a})

-- | OAuth access token.
usfcAccessToken :: Lens' UsersSettingsFiltersCreate (Maybe Text)
usfcAccessToken
  = lens _usfcAccessToken
      (\ s a -> s{_usfcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
usfcUploadType :: Lens' UsersSettingsFiltersCreate (Maybe Text)
usfcUploadType
  = lens _usfcUploadType
      (\ s a -> s{_usfcUploadType = a})

-- | Multipart request metadata.
usfcPayload :: Lens' UsersSettingsFiltersCreate Filter
usfcPayload
  = lens _usfcPayload (\ s a -> s{_usfcPayload = a})

-- | User\'s email address. The special value \"me\" can be used to indicate
-- the authenticated user.
usfcUserId :: Lens' UsersSettingsFiltersCreate Text
usfcUserId
  = lens _usfcUserId (\ s a -> s{_usfcUserId = a})

-- | JSONP
usfcCallback :: Lens' UsersSettingsFiltersCreate (Maybe Text)
usfcCallback
  = lens _usfcCallback (\ s a -> s{_usfcCallback = a})

instance GoogleRequest UsersSettingsFiltersCreate
         where
        type Rs UsersSettingsFiltersCreate = Filter
        type Scopes UsersSettingsFiltersCreate =
             '["https://www.googleapis.com/auth/gmail.settings.basic"]
        requestClient UsersSettingsFiltersCreate'{..}
          = go _usfcUserId _usfcXgafv _usfcUploadProtocol
              _usfcAccessToken
              _usfcUploadType
              _usfcCallback
              (Just AltJSON)
              _usfcPayload
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersSettingsFiltersCreateResource)
                      mempty
