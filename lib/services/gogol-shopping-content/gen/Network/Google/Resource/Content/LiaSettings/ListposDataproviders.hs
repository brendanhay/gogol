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
-- Module      : Network.Google.Resource.Content.LiaSettings.ListposDataproviders
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of POS data providers that have active settings for
-- the all eiligible countries.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.liasettings.listposdataproviders@.
module Network.Google.Resource.Content.LiaSettings.ListposDataproviders
    (
    -- * REST Resource
      LiaSettingsListposDataprovidersResource

    -- * Creating a Request
    , liaSettingsListposDataproviders
    , LiaSettingsListposDataproviders

    -- * Request Lenses
    , lsldXgafv
    , lsldUploadProtocol
    , lsldAccessToken
    , lsldUploadType
    , lsldCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.liasettings.listposdataproviders@ method which the
-- 'LiaSettingsListposDataproviders' request conforms to.
type LiaSettingsListposDataprovidersResource =
     "content" :>
       "v2.1" :>
         "liasettings" :>
           "posdataproviders" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] LiaSettingsListPosDataProvidersResponse

-- | Retrieves the list of POS data providers that have active settings for
-- the all eiligible countries.
--
-- /See:/ 'liaSettingsListposDataproviders' smart constructor.
data LiaSettingsListposDataproviders =
  LiaSettingsListposDataproviders'
    { _lsldXgafv :: !(Maybe Xgafv)
    , _lsldUploadProtocol :: !(Maybe Text)
    , _lsldAccessToken :: !(Maybe Text)
    , _lsldUploadType :: !(Maybe Text)
    , _lsldCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiaSettingsListposDataproviders' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsldXgafv'
--
-- * 'lsldUploadProtocol'
--
-- * 'lsldAccessToken'
--
-- * 'lsldUploadType'
--
-- * 'lsldCallback'
liaSettingsListposDataproviders
    :: LiaSettingsListposDataproviders
liaSettingsListposDataproviders =
  LiaSettingsListposDataproviders'
    { _lsldXgafv = Nothing
    , _lsldUploadProtocol = Nothing
    , _lsldAccessToken = Nothing
    , _lsldUploadType = Nothing
    , _lsldCallback = Nothing
    }


-- | V1 error format.
lsldXgafv :: Lens' LiaSettingsListposDataproviders (Maybe Xgafv)
lsldXgafv
  = lens _lsldXgafv (\ s a -> s{_lsldXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lsldUploadProtocol :: Lens' LiaSettingsListposDataproviders (Maybe Text)
lsldUploadProtocol
  = lens _lsldUploadProtocol
      (\ s a -> s{_lsldUploadProtocol = a})

-- | OAuth access token.
lsldAccessToken :: Lens' LiaSettingsListposDataproviders (Maybe Text)
lsldAccessToken
  = lens _lsldAccessToken
      (\ s a -> s{_lsldAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lsldUploadType :: Lens' LiaSettingsListposDataproviders (Maybe Text)
lsldUploadType
  = lens _lsldUploadType
      (\ s a -> s{_lsldUploadType = a})

-- | JSONP
lsldCallback :: Lens' LiaSettingsListposDataproviders (Maybe Text)
lsldCallback
  = lens _lsldCallback (\ s a -> s{_lsldCallback = a})

instance GoogleRequest
           LiaSettingsListposDataproviders
         where
        type Rs LiaSettingsListposDataproviders =
             LiaSettingsListPosDataProvidersResponse
        type Scopes LiaSettingsListposDataproviders =
             '["https://www.googleapis.com/auth/content"]
        requestClient LiaSettingsListposDataproviders'{..}
          = go _lsldXgafv _lsldUploadProtocol _lsldAccessToken
              _lsldUploadType
              _lsldCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy LiaSettingsListposDataprovidersResource)
                      mempty
