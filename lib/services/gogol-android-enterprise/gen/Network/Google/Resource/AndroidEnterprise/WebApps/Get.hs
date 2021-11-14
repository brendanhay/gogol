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
-- Module      : Network.Google.Resource.AndroidEnterprise.WebApps.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an existing web app.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.webapps.get@.
module Network.Google.Resource.AndroidEnterprise.WebApps.Get
    (
    -- * REST Resource
      WebAppsGetResource

    -- * Creating a Request
    , webAppsGet
    , WebAppsGet

    -- * Request Lenses
    , wagXgafv
    , wagWebAppId
    , wagUploadProtocol
    , wagEnterpriseId
    , wagAccessToken
    , wagUploadType
    , wagCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.webapps.get@ method which the
-- 'WebAppsGet' request conforms to.
type WebAppsGetResource =
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
                           QueryParam "alt" AltJSON :> Get '[JSON] WebApp

-- | Gets an existing web app.
--
-- /See:/ 'webAppsGet' smart constructor.
data WebAppsGet =
  WebAppsGet'
    { _wagXgafv :: !(Maybe Xgafv)
    , _wagWebAppId :: !Text
    , _wagUploadProtocol :: !(Maybe Text)
    , _wagEnterpriseId :: !Text
    , _wagAccessToken :: !(Maybe Text)
    , _wagUploadType :: !(Maybe Text)
    , _wagCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WebAppsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wagXgafv'
--
-- * 'wagWebAppId'
--
-- * 'wagUploadProtocol'
--
-- * 'wagEnterpriseId'
--
-- * 'wagAccessToken'
--
-- * 'wagUploadType'
--
-- * 'wagCallback'
webAppsGet
    :: Text -- ^ 'wagWebAppId'
    -> Text -- ^ 'wagEnterpriseId'
    -> WebAppsGet
webAppsGet pWagWebAppId_ pWagEnterpriseId_ =
  WebAppsGet'
    { _wagXgafv = Nothing
    , _wagWebAppId = pWagWebAppId_
    , _wagUploadProtocol = Nothing
    , _wagEnterpriseId = pWagEnterpriseId_
    , _wagAccessToken = Nothing
    , _wagUploadType = Nothing
    , _wagCallback = Nothing
    }


-- | V1 error format.
wagXgafv :: Lens' WebAppsGet (Maybe Xgafv)
wagXgafv = lens _wagXgafv (\ s a -> s{_wagXgafv = a})

-- | The ID of the web app.
wagWebAppId :: Lens' WebAppsGet Text
wagWebAppId
  = lens _wagWebAppId (\ s a -> s{_wagWebAppId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
wagUploadProtocol :: Lens' WebAppsGet (Maybe Text)
wagUploadProtocol
  = lens _wagUploadProtocol
      (\ s a -> s{_wagUploadProtocol = a})

-- | The ID of the enterprise.
wagEnterpriseId :: Lens' WebAppsGet Text
wagEnterpriseId
  = lens _wagEnterpriseId
      (\ s a -> s{_wagEnterpriseId = a})

-- | OAuth access token.
wagAccessToken :: Lens' WebAppsGet (Maybe Text)
wagAccessToken
  = lens _wagAccessToken
      (\ s a -> s{_wagAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
wagUploadType :: Lens' WebAppsGet (Maybe Text)
wagUploadType
  = lens _wagUploadType
      (\ s a -> s{_wagUploadType = a})

-- | JSONP
wagCallback :: Lens' WebAppsGet (Maybe Text)
wagCallback
  = lens _wagCallback (\ s a -> s{_wagCallback = a})

instance GoogleRequest WebAppsGet where
        type Rs WebAppsGet = WebApp
        type Scopes WebAppsGet =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient WebAppsGet'{..}
          = go _wagEnterpriseId _wagWebAppId _wagXgafv
              _wagUploadProtocol
              _wagAccessToken
              _wagUploadType
              _wagCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient (Proxy :: Proxy WebAppsGetResource)
                      mempty
