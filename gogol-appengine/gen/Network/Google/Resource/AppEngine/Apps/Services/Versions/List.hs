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
-- Module      : Network.Google.Resource.AppEngine.Apps.Services.Versions.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the versions of a service.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.services.versions.list@.
module Network.Google.Resource.AppEngine.Apps.Services.Versions.List
    (
    -- * REST Resource
      AppsServicesVersionsListResource

    -- * Creating a Request
    , appsServicesVersionsList
    , AppsServicesVersionsList

    -- * Request Lenses
    , asvlXgafv
    , asvlUploadProtocol
    , asvlAccessToken
    , asvlUploadType
    , asvlAppsId
    , asvlView
    , asvlPageToken
    , asvlServicesId
    , asvlPageSize
    , asvlCallback
    ) where

import Network.Google.AppEngine.Types
import Network.Google.Prelude

-- | A resource alias for @appengine.apps.services.versions.list@ method which the
-- 'AppsServicesVersionsList' request conforms to.
type AppsServicesVersionsListResource =
     "v1" :>
       "apps" :>
         Capture "appsId" Text :>
           "services" :>
             Capture "servicesId" Text :>
               "versions" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "view" AppsServicesVersionsListView :>
                           QueryParam "pageToken" Text :>
                             QueryParam "pageSize" (Textual Int32) :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] ListVersionsResponse

-- | Lists the versions of a service.
--
-- /See:/ 'appsServicesVersionsList' smart constructor.
data AppsServicesVersionsList =
  AppsServicesVersionsList'
    { _asvlXgafv :: !(Maybe Xgafv)
    , _asvlUploadProtocol :: !(Maybe Text)
    , _asvlAccessToken :: !(Maybe Text)
    , _asvlUploadType :: !(Maybe Text)
    , _asvlAppsId :: !Text
    , _asvlView :: !(Maybe AppsServicesVersionsListView)
    , _asvlPageToken :: !(Maybe Text)
    , _asvlServicesId :: !Text
    , _asvlPageSize :: !(Maybe (Textual Int32))
    , _asvlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AppsServicesVersionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asvlXgafv'
--
-- * 'asvlUploadProtocol'
--
-- * 'asvlAccessToken'
--
-- * 'asvlUploadType'
--
-- * 'asvlAppsId'
--
-- * 'asvlView'
--
-- * 'asvlPageToken'
--
-- * 'asvlServicesId'
--
-- * 'asvlPageSize'
--
-- * 'asvlCallback'
appsServicesVersionsList
    :: Text -- ^ 'asvlAppsId'
    -> Text -- ^ 'asvlServicesId'
    -> AppsServicesVersionsList
appsServicesVersionsList pAsvlAppsId_ pAsvlServicesId_ =
  AppsServicesVersionsList'
    { _asvlXgafv = Nothing
    , _asvlUploadProtocol = Nothing
    , _asvlAccessToken = Nothing
    , _asvlUploadType = Nothing
    , _asvlAppsId = pAsvlAppsId_
    , _asvlView = Nothing
    , _asvlPageToken = Nothing
    , _asvlServicesId = pAsvlServicesId_
    , _asvlPageSize = Nothing
    , _asvlCallback = Nothing
    }


-- | V1 error format.
asvlXgafv :: Lens' AppsServicesVersionsList (Maybe Xgafv)
asvlXgafv
  = lens _asvlXgafv (\ s a -> s{_asvlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
asvlUploadProtocol :: Lens' AppsServicesVersionsList (Maybe Text)
asvlUploadProtocol
  = lens _asvlUploadProtocol
      (\ s a -> s{_asvlUploadProtocol = a})

-- | OAuth access token.
asvlAccessToken :: Lens' AppsServicesVersionsList (Maybe Text)
asvlAccessToken
  = lens _asvlAccessToken
      (\ s a -> s{_asvlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
asvlUploadType :: Lens' AppsServicesVersionsList (Maybe Text)
asvlUploadType
  = lens _asvlUploadType
      (\ s a -> s{_asvlUploadType = a})

-- | Part of \`parent\`. Name of the parent Service resource. Example:
-- apps\/myapp\/services\/default.
asvlAppsId :: Lens' AppsServicesVersionsList Text
asvlAppsId
  = lens _asvlAppsId (\ s a -> s{_asvlAppsId = a})

-- | Controls the set of fields returned in the List response.
asvlView :: Lens' AppsServicesVersionsList (Maybe AppsServicesVersionsListView)
asvlView = lens _asvlView (\ s a -> s{_asvlView = a})

-- | Continuation token for fetching the next page of results.
asvlPageToken :: Lens' AppsServicesVersionsList (Maybe Text)
asvlPageToken
  = lens _asvlPageToken
      (\ s a -> s{_asvlPageToken = a})

-- | Part of \`parent\`. See documentation of \`appsId\`.
asvlServicesId :: Lens' AppsServicesVersionsList Text
asvlServicesId
  = lens _asvlServicesId
      (\ s a -> s{_asvlServicesId = a})

-- | Maximum results to return per page.
asvlPageSize :: Lens' AppsServicesVersionsList (Maybe Int32)
asvlPageSize
  = lens _asvlPageSize (\ s a -> s{_asvlPageSize = a})
      . mapping _Coerce

-- | JSONP
asvlCallback :: Lens' AppsServicesVersionsList (Maybe Text)
asvlCallback
  = lens _asvlCallback (\ s a -> s{_asvlCallback = a})

instance GoogleRequest AppsServicesVersionsList where
        type Rs AppsServicesVersionsList =
             ListVersionsResponse
        type Scopes AppsServicesVersionsList =
             '["https://www.googleapis.com/auth/appengine.admin",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient AppsServicesVersionsList'{..}
          = go _asvlAppsId _asvlServicesId _asvlXgafv
              _asvlUploadProtocol
              _asvlAccessToken
              _asvlUploadType
              _asvlView
              _asvlPageToken
              _asvlPageSize
              _asvlCallback
              (Just AltJSON)
              appEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy AppsServicesVersionsListResource)
                      mempty
