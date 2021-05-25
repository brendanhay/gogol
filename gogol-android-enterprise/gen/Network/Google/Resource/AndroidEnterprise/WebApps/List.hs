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
-- Module      : Network.Google.Resource.AndroidEnterprise.WebApps.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the details of all web apps for a given enterprise.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.webapps.list@.
module Network.Google.Resource.AndroidEnterprise.WebApps.List
    (
    -- * REST Resource
      WebAppsListResource

    -- * Creating a Request
    , webAppsList
    , WebAppsList

    -- * Request Lenses
    , walXgafv
    , walUploadProtocol
    , walEnterpriseId
    , walAccessToken
    , walUploadType
    , walCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.webapps.list@ method which the
-- 'WebAppsList' request conforms to.
type WebAppsListResource =
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
                           Get '[JSON] WebAppsListResponse

-- | Retrieves the details of all web apps for a given enterprise.
--
-- /See:/ 'webAppsList' smart constructor.
data WebAppsList =
  WebAppsList'
    { _walXgafv :: !(Maybe Xgafv)
    , _walUploadProtocol :: !(Maybe Text)
    , _walEnterpriseId :: !Text
    , _walAccessToken :: !(Maybe Text)
    , _walUploadType :: !(Maybe Text)
    , _walCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WebAppsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'walXgafv'
--
-- * 'walUploadProtocol'
--
-- * 'walEnterpriseId'
--
-- * 'walAccessToken'
--
-- * 'walUploadType'
--
-- * 'walCallback'
webAppsList
    :: Text -- ^ 'walEnterpriseId'
    -> WebAppsList
webAppsList pWalEnterpriseId_ =
  WebAppsList'
    { _walXgafv = Nothing
    , _walUploadProtocol = Nothing
    , _walEnterpriseId = pWalEnterpriseId_
    , _walAccessToken = Nothing
    , _walUploadType = Nothing
    , _walCallback = Nothing
    }


-- | V1 error format.
walXgafv :: Lens' WebAppsList (Maybe Xgafv)
walXgafv = lens _walXgafv (\ s a -> s{_walXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
walUploadProtocol :: Lens' WebAppsList (Maybe Text)
walUploadProtocol
  = lens _walUploadProtocol
      (\ s a -> s{_walUploadProtocol = a})

-- | The ID of the enterprise.
walEnterpriseId :: Lens' WebAppsList Text
walEnterpriseId
  = lens _walEnterpriseId
      (\ s a -> s{_walEnterpriseId = a})

-- | OAuth access token.
walAccessToken :: Lens' WebAppsList (Maybe Text)
walAccessToken
  = lens _walAccessToken
      (\ s a -> s{_walAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
walUploadType :: Lens' WebAppsList (Maybe Text)
walUploadType
  = lens _walUploadType
      (\ s a -> s{_walUploadType = a})

-- | JSONP
walCallback :: Lens' WebAppsList (Maybe Text)
walCallback
  = lens _walCallback (\ s a -> s{_walCallback = a})

instance GoogleRequest WebAppsList where
        type Rs WebAppsList = WebAppsListResponse
        type Scopes WebAppsList =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient WebAppsList'{..}
          = go _walEnterpriseId _walXgafv _walUploadProtocol
              _walAccessToken
              _walUploadType
              _walCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient (Proxy :: Proxy WebAppsListResource)
                      mempty
