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
-- Module      : Network.Google.Resource.AndroidEnterprise.WebApps.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing web app.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.webapps.update@.
module Network.Google.Resource.AndroidEnterprise.WebApps.Update
    (
    -- * REST Resource
      WebAppsUpdateResource

    -- * Creating a Request
    , webAppsUpdate
    , WebAppsUpdate

    -- * Request Lenses
    , wauXgafv
    , wauWebAppId
    , wauUploadProtocol
    , wauEnterpriseId
    , wauAccessToken
    , wauUploadType
    , wauPayload
    , wauCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.webapps.update@ method which the
-- 'WebAppsUpdate' request conforms to.
type WebAppsUpdateResource =
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
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] WebApp :> Put '[JSON] WebApp

-- | Updates an existing web app.
--
-- /See:/ 'webAppsUpdate' smart constructor.
data WebAppsUpdate =
  WebAppsUpdate'
    { _wauXgafv :: !(Maybe Xgafv)
    , _wauWebAppId :: !Text
    , _wauUploadProtocol :: !(Maybe Text)
    , _wauEnterpriseId :: !Text
    , _wauAccessToken :: !(Maybe Text)
    , _wauUploadType :: !(Maybe Text)
    , _wauPayload :: !WebApp
    , _wauCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WebAppsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wauXgafv'
--
-- * 'wauWebAppId'
--
-- * 'wauUploadProtocol'
--
-- * 'wauEnterpriseId'
--
-- * 'wauAccessToken'
--
-- * 'wauUploadType'
--
-- * 'wauPayload'
--
-- * 'wauCallback'
webAppsUpdate
    :: Text -- ^ 'wauWebAppId'
    -> Text -- ^ 'wauEnterpriseId'
    -> WebApp -- ^ 'wauPayload'
    -> WebAppsUpdate
webAppsUpdate pWauWebAppId_ pWauEnterpriseId_ pWauPayload_ =
  WebAppsUpdate'
    { _wauXgafv = Nothing
    , _wauWebAppId = pWauWebAppId_
    , _wauUploadProtocol = Nothing
    , _wauEnterpriseId = pWauEnterpriseId_
    , _wauAccessToken = Nothing
    , _wauUploadType = Nothing
    , _wauPayload = pWauPayload_
    , _wauCallback = Nothing
    }


-- | V1 error format.
wauXgafv :: Lens' WebAppsUpdate (Maybe Xgafv)
wauXgafv = lens _wauXgafv (\ s a -> s{_wauXgafv = a})

-- | The ID of the web app.
wauWebAppId :: Lens' WebAppsUpdate Text
wauWebAppId
  = lens _wauWebAppId (\ s a -> s{_wauWebAppId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
wauUploadProtocol :: Lens' WebAppsUpdate (Maybe Text)
wauUploadProtocol
  = lens _wauUploadProtocol
      (\ s a -> s{_wauUploadProtocol = a})

-- | The ID of the enterprise.
wauEnterpriseId :: Lens' WebAppsUpdate Text
wauEnterpriseId
  = lens _wauEnterpriseId
      (\ s a -> s{_wauEnterpriseId = a})

-- | OAuth access token.
wauAccessToken :: Lens' WebAppsUpdate (Maybe Text)
wauAccessToken
  = lens _wauAccessToken
      (\ s a -> s{_wauAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
wauUploadType :: Lens' WebAppsUpdate (Maybe Text)
wauUploadType
  = lens _wauUploadType
      (\ s a -> s{_wauUploadType = a})

-- | Multipart request metadata.
wauPayload :: Lens' WebAppsUpdate WebApp
wauPayload
  = lens _wauPayload (\ s a -> s{_wauPayload = a})

-- | JSONP
wauCallback :: Lens' WebAppsUpdate (Maybe Text)
wauCallback
  = lens _wauCallback (\ s a -> s{_wauCallback = a})

instance GoogleRequest WebAppsUpdate where
        type Rs WebAppsUpdate = WebApp
        type Scopes WebAppsUpdate =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient WebAppsUpdate'{..}
          = go _wauEnterpriseId _wauWebAppId _wauXgafv
              _wauUploadProtocol
              _wauAccessToken
              _wauUploadType
              _wauCallback
              (Just AltJSON)
              _wauPayload
              androidEnterpriseService
          where go
                  = buildClient (Proxy :: Proxy WebAppsUpdateResource)
                      mempty
