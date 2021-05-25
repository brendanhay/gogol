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
-- Module      : Network.Google.Resource.Books.MyConfig.UpdateUserSettings
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the settings for the user. If a sub-object is specified, it will
-- overwrite the existing sub-object stored in the server. Unspecified
-- sub-objects will retain the existing value.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.myconfig.updateUserSettings@.
module Network.Google.Resource.Books.MyConfig.UpdateUserSettings
    (
    -- * REST Resource
      MyConfigUpdateUserSettingsResource

    -- * Creating a Request
    , myConfigUpdateUserSettings
    , MyConfigUpdateUserSettings

    -- * Request Lenses
    , mcuusXgafv
    , mcuusUploadProtocol
    , mcuusAccessToken
    , mcuusUploadType
    , mcuusPayload
    , mcuusCallback
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.myconfig.updateUserSettings@ method which the
-- 'MyConfigUpdateUserSettings' request conforms to.
type MyConfigUpdateUserSettingsResource =
     "books" :>
       "v1" :>
         "myconfig" :>
           "updateUserSettings" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] UserSettings :>
                           Post '[JSON] UserSettings

-- | Sets the settings for the user. If a sub-object is specified, it will
-- overwrite the existing sub-object stored in the server. Unspecified
-- sub-objects will retain the existing value.
--
-- /See:/ 'myConfigUpdateUserSettings' smart constructor.
data MyConfigUpdateUserSettings =
  MyConfigUpdateUserSettings'
    { _mcuusXgafv :: !(Maybe Xgafv)
    , _mcuusUploadProtocol :: !(Maybe Text)
    , _mcuusAccessToken :: !(Maybe Text)
    , _mcuusUploadType :: !(Maybe Text)
    , _mcuusPayload :: !UserSettings
    , _mcuusCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MyConfigUpdateUserSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcuusXgafv'
--
-- * 'mcuusUploadProtocol'
--
-- * 'mcuusAccessToken'
--
-- * 'mcuusUploadType'
--
-- * 'mcuusPayload'
--
-- * 'mcuusCallback'
myConfigUpdateUserSettings
    :: UserSettings -- ^ 'mcuusPayload'
    -> MyConfigUpdateUserSettings
myConfigUpdateUserSettings pMcuusPayload_ =
  MyConfigUpdateUserSettings'
    { _mcuusXgafv = Nothing
    , _mcuusUploadProtocol = Nothing
    , _mcuusAccessToken = Nothing
    , _mcuusUploadType = Nothing
    , _mcuusPayload = pMcuusPayload_
    , _mcuusCallback = Nothing
    }


-- | V1 error format.
mcuusXgafv :: Lens' MyConfigUpdateUserSettings (Maybe Xgafv)
mcuusXgafv
  = lens _mcuusXgafv (\ s a -> s{_mcuusXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mcuusUploadProtocol :: Lens' MyConfigUpdateUserSettings (Maybe Text)
mcuusUploadProtocol
  = lens _mcuusUploadProtocol
      (\ s a -> s{_mcuusUploadProtocol = a})

-- | OAuth access token.
mcuusAccessToken :: Lens' MyConfigUpdateUserSettings (Maybe Text)
mcuusAccessToken
  = lens _mcuusAccessToken
      (\ s a -> s{_mcuusAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mcuusUploadType :: Lens' MyConfigUpdateUserSettings (Maybe Text)
mcuusUploadType
  = lens _mcuusUploadType
      (\ s a -> s{_mcuusUploadType = a})

-- | Multipart request metadata.
mcuusPayload :: Lens' MyConfigUpdateUserSettings UserSettings
mcuusPayload
  = lens _mcuusPayload (\ s a -> s{_mcuusPayload = a})

-- | JSONP
mcuusCallback :: Lens' MyConfigUpdateUserSettings (Maybe Text)
mcuusCallback
  = lens _mcuusCallback
      (\ s a -> s{_mcuusCallback = a})

instance GoogleRequest MyConfigUpdateUserSettings
         where
        type Rs MyConfigUpdateUserSettings = UserSettings
        type Scopes MyConfigUpdateUserSettings =
             '["https://www.googleapis.com/auth/books"]
        requestClient MyConfigUpdateUserSettings'{..}
          = go _mcuusXgafv _mcuusUploadProtocol
              _mcuusAccessToken
              _mcuusUploadType
              _mcuusCallback
              (Just AltJSON)
              _mcuusPayload
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy MyConfigUpdateUserSettingsResource)
                      mempty
