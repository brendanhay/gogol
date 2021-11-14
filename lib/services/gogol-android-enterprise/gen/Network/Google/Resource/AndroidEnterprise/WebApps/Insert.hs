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
-- Module      : Network.Google.Resource.AndroidEnterprise.WebApps.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new web app for the enterprise.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.webapps.insert@.
module Network.Google.Resource.AndroidEnterprise.WebApps.Insert
    (
    -- * REST Resource
      WebAppsInsertResource

    -- * Creating a Request
    , webAppsInsert
    , WebAppsInsert

    -- * Request Lenses
    , waiXgafv
    , waiUploadProtocol
    , waiEnterpriseId
    , waiAccessToken
    , waiUploadType
    , waiPayload
    , waiCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.webapps.insert@ method which the
-- 'WebAppsInsert' request conforms to.
type WebAppsInsertResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "webApps" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] WebApp :> Post '[JSON] WebApp

-- | Creates a new web app for the enterprise.
--
-- /See:/ 'webAppsInsert' smart constructor.
data WebAppsInsert =
  WebAppsInsert'
    { _waiXgafv :: !(Maybe Xgafv)
    , _waiUploadProtocol :: !(Maybe Text)
    , _waiEnterpriseId :: !Text
    , _waiAccessToken :: !(Maybe Text)
    , _waiUploadType :: !(Maybe Text)
    , _waiPayload :: !WebApp
    , _waiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WebAppsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'waiXgafv'
--
-- * 'waiUploadProtocol'
--
-- * 'waiEnterpriseId'
--
-- * 'waiAccessToken'
--
-- * 'waiUploadType'
--
-- * 'waiPayload'
--
-- * 'waiCallback'
webAppsInsert
    :: Text -- ^ 'waiEnterpriseId'
    -> WebApp -- ^ 'waiPayload'
    -> WebAppsInsert
webAppsInsert pWaiEnterpriseId_ pWaiPayload_ =
  WebAppsInsert'
    { _waiXgafv = Nothing
    , _waiUploadProtocol = Nothing
    , _waiEnterpriseId = pWaiEnterpriseId_
    , _waiAccessToken = Nothing
    , _waiUploadType = Nothing
    , _waiPayload = pWaiPayload_
    , _waiCallback = Nothing
    }


-- | V1 error format.
waiXgafv :: Lens' WebAppsInsert (Maybe Xgafv)
waiXgafv = lens _waiXgafv (\ s a -> s{_waiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
waiUploadProtocol :: Lens' WebAppsInsert (Maybe Text)
waiUploadProtocol
  = lens _waiUploadProtocol
      (\ s a -> s{_waiUploadProtocol = a})

-- | The ID of the enterprise.
waiEnterpriseId :: Lens' WebAppsInsert Text
waiEnterpriseId
  = lens _waiEnterpriseId
      (\ s a -> s{_waiEnterpriseId = a})

-- | OAuth access token.
waiAccessToken :: Lens' WebAppsInsert (Maybe Text)
waiAccessToken
  = lens _waiAccessToken
      (\ s a -> s{_waiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
waiUploadType :: Lens' WebAppsInsert (Maybe Text)
waiUploadType
  = lens _waiUploadType
      (\ s a -> s{_waiUploadType = a})

-- | Multipart request metadata.
waiPayload :: Lens' WebAppsInsert WebApp
waiPayload
  = lens _waiPayload (\ s a -> s{_waiPayload = a})

-- | JSONP
waiCallback :: Lens' WebAppsInsert (Maybe Text)
waiCallback
  = lens _waiCallback (\ s a -> s{_waiCallback = a})

instance GoogleRequest WebAppsInsert where
        type Rs WebAppsInsert = WebApp
        type Scopes WebAppsInsert =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient WebAppsInsert'{..}
          = go _waiEnterpriseId _waiXgafv _waiUploadProtocol
              _waiAccessToken
              _waiUploadType
              _waiCallback
              (Just AltJSON)
              _waiPayload
              androidEnterpriseService
          where go
                  = buildClient (Proxy :: Proxy WebAppsInsertResource)
                      mempty
