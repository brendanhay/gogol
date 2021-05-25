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
-- Module      : Network.Google.Resource.IAP.GetIapSettings
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the IAP settings on a particular IAP protected resource.
--
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.getIapSettings@.
module Network.Google.Resource.IAP.GetIapSettings
    (
    -- * REST Resource
      GetIapSettingsResource

    -- * Creating a Request
    , getIapSettings
    , GetIapSettings

    -- * Request Lenses
    , gisXgafv
    , gisUploadProtocol
    , gisAccessToken
    , gisUploadType
    , gisName
    , gisCallback
    ) where

import Network.Google.IAP.Types
import Network.Google.Prelude

-- | A resource alias for @iap.getIapSettings@ method which the
-- 'GetIapSettings' request conforms to.
type GetIapSettingsResource =
     "v1" :>
       CaptureMode "name" "iapSettings" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] IapSettings

-- | Gets the IAP settings on a particular IAP protected resource.
--
-- /See:/ 'getIapSettings' smart constructor.
data GetIapSettings =
  GetIapSettings'
    { _gisXgafv :: !(Maybe Xgafv)
    , _gisUploadProtocol :: !(Maybe Text)
    , _gisAccessToken :: !(Maybe Text)
    , _gisUploadType :: !(Maybe Text)
    , _gisName :: !Text
    , _gisCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetIapSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gisXgafv'
--
-- * 'gisUploadProtocol'
--
-- * 'gisAccessToken'
--
-- * 'gisUploadType'
--
-- * 'gisName'
--
-- * 'gisCallback'
getIapSettings
    :: Text -- ^ 'gisName'
    -> GetIapSettings
getIapSettings pGisName_ =
  GetIapSettings'
    { _gisXgafv = Nothing
    , _gisUploadProtocol = Nothing
    , _gisAccessToken = Nothing
    , _gisUploadType = Nothing
    , _gisName = pGisName_
    , _gisCallback = Nothing
    }


-- | V1 error format.
gisXgafv :: Lens' GetIapSettings (Maybe Xgafv)
gisXgafv = lens _gisXgafv (\ s a -> s{_gisXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
gisUploadProtocol :: Lens' GetIapSettings (Maybe Text)
gisUploadProtocol
  = lens _gisUploadProtocol
      (\ s a -> s{_gisUploadProtocol = a})

-- | OAuth access token.
gisAccessToken :: Lens' GetIapSettings (Maybe Text)
gisAccessToken
  = lens _gisAccessToken
      (\ s a -> s{_gisAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
gisUploadType :: Lens' GetIapSettings (Maybe Text)
gisUploadType
  = lens _gisUploadType
      (\ s a -> s{_gisUploadType = a})

-- | Required. The resource name for which to retrieve the settings.
-- Authorization: Requires the \`getSettings\` permission for the
-- associated resource.
gisName :: Lens' GetIapSettings Text
gisName = lens _gisName (\ s a -> s{_gisName = a})

-- | JSONP
gisCallback :: Lens' GetIapSettings (Maybe Text)
gisCallback
  = lens _gisCallback (\ s a -> s{_gisCallback = a})

instance GoogleRequest GetIapSettings where
        type Rs GetIapSettings = IapSettings
        type Scopes GetIapSettings =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient GetIapSettings'{..}
          = go _gisName _gisXgafv _gisUploadProtocol
              _gisAccessToken
              _gisUploadType
              _gisCallback
              (Just AltJSON)
              iAPService
          where go
                  = buildClient (Proxy :: Proxy GetIapSettingsResource)
                      mempty
