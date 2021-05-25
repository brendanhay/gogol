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
-- Module      : Network.Google.Resource.Books.MyConfig.GetUserSettings
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the current settings for the user.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.myconfig.getUserSettings@.
module Network.Google.Resource.Books.MyConfig.GetUserSettings
    (
    -- * REST Resource
      MyConfigGetUserSettingsResource

    -- * Creating a Request
    , myConfigGetUserSettings
    , MyConfigGetUserSettings

    -- * Request Lenses
    , mcgusXgafv
    , mcgusUploadProtocol
    , mcgusCountry
    , mcgusAccessToken
    , mcgusUploadType
    , mcgusCallback
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.myconfig.getUserSettings@ method which the
-- 'MyConfigGetUserSettings' request conforms to.
type MyConfigGetUserSettingsResource =
     "books" :>
       "v1" :>
         "myconfig" :>
           "getUserSettings" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "country" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] UserSettings

-- | Gets the current settings for the user.
--
-- /See:/ 'myConfigGetUserSettings' smart constructor.
data MyConfigGetUserSettings =
  MyConfigGetUserSettings'
    { _mcgusXgafv :: !(Maybe Xgafv)
    , _mcgusUploadProtocol :: !(Maybe Text)
    , _mcgusCountry :: !(Maybe Text)
    , _mcgusAccessToken :: !(Maybe Text)
    , _mcgusUploadType :: !(Maybe Text)
    , _mcgusCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MyConfigGetUserSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcgusXgafv'
--
-- * 'mcgusUploadProtocol'
--
-- * 'mcgusCountry'
--
-- * 'mcgusAccessToken'
--
-- * 'mcgusUploadType'
--
-- * 'mcgusCallback'
myConfigGetUserSettings
    :: MyConfigGetUserSettings
myConfigGetUserSettings =
  MyConfigGetUserSettings'
    { _mcgusXgafv = Nothing
    , _mcgusUploadProtocol = Nothing
    , _mcgusCountry = Nothing
    , _mcgusAccessToken = Nothing
    , _mcgusUploadType = Nothing
    , _mcgusCallback = Nothing
    }


-- | V1 error format.
mcgusXgafv :: Lens' MyConfigGetUserSettings (Maybe Xgafv)
mcgusXgafv
  = lens _mcgusXgafv (\ s a -> s{_mcgusXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mcgusUploadProtocol :: Lens' MyConfigGetUserSettings (Maybe Text)
mcgusUploadProtocol
  = lens _mcgusUploadProtocol
      (\ s a -> s{_mcgusUploadProtocol = a})

-- | Unused. Added only to workaround TEX mandatory request template
-- requirement
mcgusCountry :: Lens' MyConfigGetUserSettings (Maybe Text)
mcgusCountry
  = lens _mcgusCountry (\ s a -> s{_mcgusCountry = a})

-- | OAuth access token.
mcgusAccessToken :: Lens' MyConfigGetUserSettings (Maybe Text)
mcgusAccessToken
  = lens _mcgusAccessToken
      (\ s a -> s{_mcgusAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mcgusUploadType :: Lens' MyConfigGetUserSettings (Maybe Text)
mcgusUploadType
  = lens _mcgusUploadType
      (\ s a -> s{_mcgusUploadType = a})

-- | JSONP
mcgusCallback :: Lens' MyConfigGetUserSettings (Maybe Text)
mcgusCallback
  = lens _mcgusCallback
      (\ s a -> s{_mcgusCallback = a})

instance GoogleRequest MyConfigGetUserSettings where
        type Rs MyConfigGetUserSettings = UserSettings
        type Scopes MyConfigGetUserSettings =
             '["https://www.googleapis.com/auth/books"]
        requestClient MyConfigGetUserSettings'{..}
          = go _mcgusXgafv _mcgusUploadProtocol _mcgusCountry
              _mcgusAccessToken
              _mcgusUploadType
              _mcgusCallback
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy MyConfigGetUserSettingsResource)
                      mempty
