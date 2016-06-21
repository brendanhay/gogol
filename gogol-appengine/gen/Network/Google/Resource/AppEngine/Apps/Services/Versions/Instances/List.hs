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
-- Module      : Network.Google.Resource.AppEngine.Apps.Services.Versions.Instances.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the instances of a version.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ Google App Engine Admin API Reference> for @appengine.apps.services.versions.instances.list@.
module Network.Google.Resource.AppEngine.Apps.Services.Versions.Instances.List
    (
    -- * REST Resource
      AppsServicesVersionsInstancesListResource

    -- * Creating a Request
    , appsServicesVersionsInstancesList
    , AppsServicesVersionsInstancesList

    -- * Request Lenses
    , asvilXgafv
    , asvilUploadProtocol
    , asvilPp
    , asvilAccessToken
    , asvilUploadType
    , asvilVersionsId
    , asvilBearerToken
    , asvilAppsId
    , asvilPageToken
    , asvilServicesId
    , asvilPageSize
    , asvilCallback
    ) where

import           Network.Google.AppEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @appengine.apps.services.versions.instances.list@ method which the
-- 'AppsServicesVersionsInstancesList' request conforms to.
type AppsServicesVersionsInstancesListResource =
     "v1beta5" :>
       "apps" :>
         Capture "appsId" Text :>
           "services" :>
             Capture "servicesId" Text :>
               "versions" :>
                 Capture "versionsId" Text :>
                   "instances" :>
                     QueryParam "$.xgafv" Text :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "pp" Bool :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "bearer_token" Text :>
                                 QueryParam "pageToken" Text :>
                                   QueryParam "pageSize" (Textual Int32) :>
                                     QueryParam "callback" Text :>
                                       QueryParam "alt" AltJSON :>
                                         Get '[JSON] ListInstancesResponse

-- | Lists the instances of a version.
--
-- /See:/ 'appsServicesVersionsInstancesList' smart constructor.
data AppsServicesVersionsInstancesList = AppsServicesVersionsInstancesList'
    { _asvilXgafv          :: !(Maybe Text)
    , _asvilUploadProtocol :: !(Maybe Text)
    , _asvilPp             :: !Bool
    , _asvilAccessToken    :: !(Maybe Text)
    , _asvilUploadType     :: !(Maybe Text)
    , _asvilVersionsId     :: !Text
    , _asvilBearerToken    :: !(Maybe Text)
    , _asvilAppsId         :: !Text
    , _asvilPageToken      :: !(Maybe Text)
    , _asvilServicesId     :: !Text
    , _asvilPageSize       :: !(Maybe (Textual Int32))
    , _asvilCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppsServicesVersionsInstancesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asvilXgafv'
--
-- * 'asvilUploadProtocol'
--
-- * 'asvilPp'
--
-- * 'asvilAccessToken'
--
-- * 'asvilUploadType'
--
-- * 'asvilVersionsId'
--
-- * 'asvilBearerToken'
--
-- * 'asvilAppsId'
--
-- * 'asvilPageToken'
--
-- * 'asvilServicesId'
--
-- * 'asvilPageSize'
--
-- * 'asvilCallback'
appsServicesVersionsInstancesList
    :: Text -- ^ 'asvilVersionsId'
    -> Text -- ^ 'asvilAppsId'
    -> Text -- ^ 'asvilServicesId'
    -> AppsServicesVersionsInstancesList
appsServicesVersionsInstancesList pAsvilVersionsId_ pAsvilAppsId_ pAsvilServicesId_ =
    AppsServicesVersionsInstancesList'
    { _asvilXgafv = Nothing
    , _asvilUploadProtocol = Nothing
    , _asvilPp = True
    , _asvilAccessToken = Nothing
    , _asvilUploadType = Nothing
    , _asvilVersionsId = pAsvilVersionsId_
    , _asvilBearerToken = Nothing
    , _asvilAppsId = pAsvilAppsId_
    , _asvilPageToken = Nothing
    , _asvilServicesId = pAsvilServicesId_
    , _asvilPageSize = Nothing
    , _asvilCallback = Nothing
    }

-- | V1 error format.
asvilXgafv :: Lens' AppsServicesVersionsInstancesList (Maybe Text)
asvilXgafv
  = lens _asvilXgafv (\ s a -> s{_asvilXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
asvilUploadProtocol :: Lens' AppsServicesVersionsInstancesList (Maybe Text)
asvilUploadProtocol
  = lens _asvilUploadProtocol
      (\ s a -> s{_asvilUploadProtocol = a})

-- | Pretty-print response.
asvilPp :: Lens' AppsServicesVersionsInstancesList Bool
asvilPp = lens _asvilPp (\ s a -> s{_asvilPp = a})

-- | OAuth access token.
asvilAccessToken :: Lens' AppsServicesVersionsInstancesList (Maybe Text)
asvilAccessToken
  = lens _asvilAccessToken
      (\ s a -> s{_asvilAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
asvilUploadType :: Lens' AppsServicesVersionsInstancesList (Maybe Text)
asvilUploadType
  = lens _asvilUploadType
      (\ s a -> s{_asvilUploadType = a})

-- | Part of \`name\`. See documentation of \`appsId\`.
asvilVersionsId :: Lens' AppsServicesVersionsInstancesList Text
asvilVersionsId
  = lens _asvilVersionsId
      (\ s a -> s{_asvilVersionsId = a})

-- | OAuth bearer token.
asvilBearerToken :: Lens' AppsServicesVersionsInstancesList (Maybe Text)
asvilBearerToken
  = lens _asvilBearerToken
      (\ s a -> s{_asvilBearerToken = a})

-- | Part of \`name\`. Name of the resource requested. For example:
-- \"apps\/myapp\/services\/default\/versions\/v1\".
asvilAppsId :: Lens' AppsServicesVersionsInstancesList Text
asvilAppsId
  = lens _asvilAppsId (\ s a -> s{_asvilAppsId = a})

-- | Continuation token for fetching the next page of results.
asvilPageToken :: Lens' AppsServicesVersionsInstancesList (Maybe Text)
asvilPageToken
  = lens _asvilPageToken
      (\ s a -> s{_asvilPageToken = a})

-- | Part of \`name\`. See documentation of \`appsId\`.
asvilServicesId :: Lens' AppsServicesVersionsInstancesList Text
asvilServicesId
  = lens _asvilServicesId
      (\ s a -> s{_asvilServicesId = a})

-- | Maximum results to return per page.
asvilPageSize :: Lens' AppsServicesVersionsInstancesList (Maybe Int32)
asvilPageSize
  = lens _asvilPageSize
      (\ s a -> s{_asvilPageSize = a})
      . mapping _Coerce

-- | JSONP
asvilCallback :: Lens' AppsServicesVersionsInstancesList (Maybe Text)
asvilCallback
  = lens _asvilCallback
      (\ s a -> s{_asvilCallback = a})

instance GoogleRequest
         AppsServicesVersionsInstancesList where
        type Rs AppsServicesVersionsInstancesList =
             ListInstancesResponse
        type Scopes AppsServicesVersionsInstancesList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient AppsServicesVersionsInstancesList'{..}
          = go _asvilAppsId _asvilServicesId _asvilVersionsId
              _asvilXgafv
              _asvilUploadProtocol
              (Just _asvilPp)
              _asvilAccessToken
              _asvilUploadType
              _asvilBearerToken
              _asvilPageToken
              _asvilPageSize
              _asvilCallback
              (Just AltJSON)
              appEngineService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AppsServicesVersionsInstancesListResource)
                      mempty
