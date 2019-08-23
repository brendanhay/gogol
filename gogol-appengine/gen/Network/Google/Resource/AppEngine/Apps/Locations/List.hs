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
-- Module      : Network.Google.Resource.AppEngine.Apps.Locations.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists information about the supported locations for this service.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.locations.list@.
module Network.Google.Resource.AppEngine.Apps.Locations.List
    (
    -- * REST Resource
      AppsLocationsListResource

    -- * Creating a Request
    , appsLocationsList
    , AppsLocationsList

    -- * Request Lenses
    , allXgafv
    , allUploadProtocol
    , allAccessToken
    , allUploadType
    , allAppsId
    , allFilter
    , allPageToken
    , allPageSize
    , allCallback
    ) where

import           Network.Google.AppEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @appengine.apps.locations.list@ method which the
-- 'AppsLocationsList' request conforms to.
type AppsLocationsListResource =
     "v1" :>
       "apps" :>
         Capture "appsId" Text :>
           "locations" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListLocationsResponse

-- | Lists information about the supported locations for this service.
--
-- /See:/ 'appsLocationsList' smart constructor.
data AppsLocationsList =
  AppsLocationsList'
    { _allXgafv          :: !(Maybe Xgafv)
    , _allUploadProtocol :: !(Maybe Text)
    , _allAccessToken    :: !(Maybe Text)
    , _allUploadType     :: !(Maybe Text)
    , _allAppsId         :: !Text
    , _allFilter         :: !(Maybe Text)
    , _allPageToken      :: !(Maybe Text)
    , _allPageSize       :: !(Maybe (Textual Int32))
    , _allCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AppsLocationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'allXgafv'
--
-- * 'allUploadProtocol'
--
-- * 'allAccessToken'
--
-- * 'allUploadType'
--
-- * 'allAppsId'
--
-- * 'allFilter'
--
-- * 'allPageToken'
--
-- * 'allPageSize'
--
-- * 'allCallback'
appsLocationsList
    :: Text -- ^ 'allAppsId'
    -> AppsLocationsList
appsLocationsList pAllAppsId_ =
  AppsLocationsList'
    { _allXgafv = Nothing
    , _allUploadProtocol = Nothing
    , _allAccessToken = Nothing
    , _allUploadType = Nothing
    , _allAppsId = pAllAppsId_
    , _allFilter = Nothing
    , _allPageToken = Nothing
    , _allPageSize = Nothing
    , _allCallback = Nothing
    }


-- | V1 error format.
allXgafv :: Lens' AppsLocationsList (Maybe Xgafv)
allXgafv = lens _allXgafv (\ s a -> s{_allXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
allUploadProtocol :: Lens' AppsLocationsList (Maybe Text)
allUploadProtocol
  = lens _allUploadProtocol
      (\ s a -> s{_allUploadProtocol = a})

-- | OAuth access token.
allAccessToken :: Lens' AppsLocationsList (Maybe Text)
allAccessToken
  = lens _allAccessToken
      (\ s a -> s{_allAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
allUploadType :: Lens' AppsLocationsList (Maybe Text)
allUploadType
  = lens _allUploadType
      (\ s a -> s{_allUploadType = a})

-- | Part of \`name\`. The resource that owns the locations collection, if
-- applicable.
allAppsId :: Lens' AppsLocationsList Text
allAppsId
  = lens _allAppsId (\ s a -> s{_allAppsId = a})

-- | The standard list filter.
allFilter :: Lens' AppsLocationsList (Maybe Text)
allFilter
  = lens _allFilter (\ s a -> s{_allFilter = a})

-- | The standard list page token.
allPageToken :: Lens' AppsLocationsList (Maybe Text)
allPageToken
  = lens _allPageToken (\ s a -> s{_allPageToken = a})

-- | The standard list page size.
allPageSize :: Lens' AppsLocationsList (Maybe Int32)
allPageSize
  = lens _allPageSize (\ s a -> s{_allPageSize = a}) .
      mapping _Coerce

-- | JSONP
allCallback :: Lens' AppsLocationsList (Maybe Text)
allCallback
  = lens _allCallback (\ s a -> s{_allCallback = a})

instance GoogleRequest AppsLocationsList where
        type Rs AppsLocationsList = ListLocationsResponse
        type Scopes AppsLocationsList =
             '["https://www.googleapis.com/auth/appengine.admin",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient AppsLocationsList'{..}
          = go _allAppsId _allXgafv _allUploadProtocol
              _allAccessToken
              _allUploadType
              _allFilter
              _allPageToken
              _allPageSize
              _allCallback
              (Just AltJSON)
              appEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy AppsLocationsListResource)
                      mempty
