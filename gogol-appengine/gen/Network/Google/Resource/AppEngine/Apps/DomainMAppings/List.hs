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
-- Module      : Network.Google.Resource.AppEngine.Apps.DomainMAppings.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the domain mappings on an application.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.domainMappings.list@.
module Network.Google.Resource.AppEngine.Apps.DomainMAppings.List
    (
    -- * REST Resource
      AppsDomainMAppingsListResource

    -- * Creating a Request
    , appsDomainMAppingsList
    , AppsDomainMAppingsList

    -- * Request Lenses
    , admalXgafv
    , admalUploadProtocol
    , admalAccessToken
    , admalUploadType
    , admalAppsId
    , admalPageToken
    , admalPageSize
    , admalCallback
    ) where

import Network.Google.AppEngine.Types
import Network.Google.Prelude

-- | A resource alias for @appengine.apps.domainMappings.list@ method which the
-- 'AppsDomainMAppingsList' request conforms to.
type AppsDomainMAppingsListResource =
     "v1" :>
       "apps" :>
         Capture "appsId" Text :>
           "domainMappings" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListDomainMAppingsResponse

-- | Lists the domain mappings on an application.
--
-- /See:/ 'appsDomainMAppingsList' smart constructor.
data AppsDomainMAppingsList =
  AppsDomainMAppingsList'
    { _admalXgafv :: !(Maybe Xgafv)
    , _admalUploadProtocol :: !(Maybe Text)
    , _admalAccessToken :: !(Maybe Text)
    , _admalUploadType :: !(Maybe Text)
    , _admalAppsId :: !Text
    , _admalPageToken :: !(Maybe Text)
    , _admalPageSize :: !(Maybe (Textual Int32))
    , _admalCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AppsDomainMAppingsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'admalXgafv'
--
-- * 'admalUploadProtocol'
--
-- * 'admalAccessToken'
--
-- * 'admalUploadType'
--
-- * 'admalAppsId'
--
-- * 'admalPageToken'
--
-- * 'admalPageSize'
--
-- * 'admalCallback'
appsDomainMAppingsList
    :: Text -- ^ 'admalAppsId'
    -> AppsDomainMAppingsList
appsDomainMAppingsList pAdmalAppsId_ =
  AppsDomainMAppingsList'
    { _admalXgafv = Nothing
    , _admalUploadProtocol = Nothing
    , _admalAccessToken = Nothing
    , _admalUploadType = Nothing
    , _admalAppsId = pAdmalAppsId_
    , _admalPageToken = Nothing
    , _admalPageSize = Nothing
    , _admalCallback = Nothing
    }


-- | V1 error format.
admalXgafv :: Lens' AppsDomainMAppingsList (Maybe Xgafv)
admalXgafv
  = lens _admalXgafv (\ s a -> s{_admalXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
admalUploadProtocol :: Lens' AppsDomainMAppingsList (Maybe Text)
admalUploadProtocol
  = lens _admalUploadProtocol
      (\ s a -> s{_admalUploadProtocol = a})

-- | OAuth access token.
admalAccessToken :: Lens' AppsDomainMAppingsList (Maybe Text)
admalAccessToken
  = lens _admalAccessToken
      (\ s a -> s{_admalAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
admalUploadType :: Lens' AppsDomainMAppingsList (Maybe Text)
admalUploadType
  = lens _admalUploadType
      (\ s a -> s{_admalUploadType = a})

-- | Part of \`parent\`. Name of the parent Application resource. Example:
-- apps\/myapp.
admalAppsId :: Lens' AppsDomainMAppingsList Text
admalAppsId
  = lens _admalAppsId (\ s a -> s{_admalAppsId = a})

-- | Continuation token for fetching the next page of results.
admalPageToken :: Lens' AppsDomainMAppingsList (Maybe Text)
admalPageToken
  = lens _admalPageToken
      (\ s a -> s{_admalPageToken = a})

-- | Maximum results to return per page.
admalPageSize :: Lens' AppsDomainMAppingsList (Maybe Int32)
admalPageSize
  = lens _admalPageSize
      (\ s a -> s{_admalPageSize = a})
      . mapping _Coerce

-- | JSONP
admalCallback :: Lens' AppsDomainMAppingsList (Maybe Text)
admalCallback
  = lens _admalCallback
      (\ s a -> s{_admalCallback = a})

instance GoogleRequest AppsDomainMAppingsList where
        type Rs AppsDomainMAppingsList =
             ListDomainMAppingsResponse
        type Scopes AppsDomainMAppingsList =
             '["https://www.googleapis.com/auth/appengine.admin",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient AppsDomainMAppingsList'{..}
          = go _admalAppsId _admalXgafv _admalUploadProtocol
              _admalAccessToken
              _admalUploadType
              _admalPageToken
              _admalPageSize
              _admalCallback
              (Just AltJSON)
              appEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy AppsDomainMAppingsListResource)
                      mempty
