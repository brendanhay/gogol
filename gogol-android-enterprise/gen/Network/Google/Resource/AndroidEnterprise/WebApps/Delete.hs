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
-- Module      : Network.Google.Resource.AndroidEnterprise.WebApps.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing web app.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.webapps.delete@.
module Network.Google.Resource.AndroidEnterprise.WebApps.Delete
    (
    -- * REST Resource
      WebAppsDeleteResource

    -- * Creating a Request
    , webAppsDelete
    , WebAppsDelete

    -- * Request Lenses
    , wadXgafv
    , wadWebAppId
    , wadUploadProtocol
    , wadEnterpriseId
    , wadAccessToken
    , wadUploadType
    , wadCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.webapps.delete@ method which the
-- 'WebAppsDelete' request conforms to.
type WebAppsDeleteResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "webApps" :>
               Capture "webAppId" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an existing web app.
--
-- /See:/ 'webAppsDelete' smart constructor.
data WebAppsDelete =
  WebAppsDelete'
    { _wadXgafv :: !(Maybe Xgafv)
    , _wadWebAppId :: !Text
    , _wadUploadProtocol :: !(Maybe Text)
    , _wadEnterpriseId :: !Text
    , _wadAccessToken :: !(Maybe Text)
    , _wadUploadType :: !(Maybe Text)
    , _wadCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WebAppsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wadXgafv'
--
-- * 'wadWebAppId'
--
-- * 'wadUploadProtocol'
--
-- * 'wadEnterpriseId'
--
-- * 'wadAccessToken'
--
-- * 'wadUploadType'
--
-- * 'wadCallback'
webAppsDelete
    :: Text -- ^ 'wadWebAppId'
    -> Text -- ^ 'wadEnterpriseId'
    -> WebAppsDelete
webAppsDelete pWadWebAppId_ pWadEnterpriseId_ =
  WebAppsDelete'
    { _wadXgafv = Nothing
    , _wadWebAppId = pWadWebAppId_
    , _wadUploadProtocol = Nothing
    , _wadEnterpriseId = pWadEnterpriseId_
    , _wadAccessToken = Nothing
    , _wadUploadType = Nothing
    , _wadCallback = Nothing
    }


-- | V1 error format.
wadXgafv :: Lens' WebAppsDelete (Maybe Xgafv)
wadXgafv = lens _wadXgafv (\ s a -> s{_wadXgafv = a})

-- | The ID of the web app.
wadWebAppId :: Lens' WebAppsDelete Text
wadWebAppId
  = lens _wadWebAppId (\ s a -> s{_wadWebAppId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
wadUploadProtocol :: Lens' WebAppsDelete (Maybe Text)
wadUploadProtocol
  = lens _wadUploadProtocol
      (\ s a -> s{_wadUploadProtocol = a})

-- | The ID of the enterprise.
wadEnterpriseId :: Lens' WebAppsDelete Text
wadEnterpriseId
  = lens _wadEnterpriseId
      (\ s a -> s{_wadEnterpriseId = a})

-- | OAuth access token.
wadAccessToken :: Lens' WebAppsDelete (Maybe Text)
wadAccessToken
  = lens _wadAccessToken
      (\ s a -> s{_wadAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
wadUploadType :: Lens' WebAppsDelete (Maybe Text)
wadUploadType
  = lens _wadUploadType
      (\ s a -> s{_wadUploadType = a})

-- | JSONP
wadCallback :: Lens' WebAppsDelete (Maybe Text)
wadCallback
  = lens _wadCallback (\ s a -> s{_wadCallback = a})

instance GoogleRequest WebAppsDelete where
        type Rs WebAppsDelete = ()
        type Scopes WebAppsDelete =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient WebAppsDelete'{..}
          = go _wadEnterpriseId _wadWebAppId _wadXgafv
              _wadUploadProtocol
              _wadAccessToken
              _wadUploadType
              _wadCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient (Proxy :: Proxy WebAppsDeleteResource)
                      mempty
