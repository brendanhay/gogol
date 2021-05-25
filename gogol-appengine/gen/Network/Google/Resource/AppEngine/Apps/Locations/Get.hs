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
-- Module      : Network.Google.Resource.AppEngine.Apps.Locations.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a location.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.locations.get@.
module Network.Google.Resource.AppEngine.Apps.Locations.Get
    (
    -- * REST Resource
      AppsLocationsGetResource

    -- * Creating a Request
    , appsLocationsGet
    , AppsLocationsGet

    -- * Request Lenses
    , algXgafv
    , algUploadProtocol
    , algAccessToken
    , algUploadType
    , algAppsId
    , algLocationsId
    , algCallback
    ) where

import Network.Google.AppEngine.Types
import Network.Google.Prelude

-- | A resource alias for @appengine.apps.locations.get@ method which the
-- 'AppsLocationsGet' request conforms to.
type AppsLocationsGetResource =
     "v1" :>
       "apps" :>
         Capture "appsId" Text :>
           "locations" :>
             Capture "locationsId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Location

-- | Gets information about a location.
--
-- /See:/ 'appsLocationsGet' smart constructor.
data AppsLocationsGet =
  AppsLocationsGet'
    { _algXgafv :: !(Maybe Xgafv)
    , _algUploadProtocol :: !(Maybe Text)
    , _algAccessToken :: !(Maybe Text)
    , _algUploadType :: !(Maybe Text)
    , _algAppsId :: !Text
    , _algLocationsId :: !Text
    , _algCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AppsLocationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'algXgafv'
--
-- * 'algUploadProtocol'
--
-- * 'algAccessToken'
--
-- * 'algUploadType'
--
-- * 'algAppsId'
--
-- * 'algLocationsId'
--
-- * 'algCallback'
appsLocationsGet
    :: Text -- ^ 'algAppsId'
    -> Text -- ^ 'algLocationsId'
    -> AppsLocationsGet
appsLocationsGet pAlgAppsId_ pAlgLocationsId_ =
  AppsLocationsGet'
    { _algXgafv = Nothing
    , _algUploadProtocol = Nothing
    , _algAccessToken = Nothing
    , _algUploadType = Nothing
    , _algAppsId = pAlgAppsId_
    , _algLocationsId = pAlgLocationsId_
    , _algCallback = Nothing
    }


-- | V1 error format.
algXgafv :: Lens' AppsLocationsGet (Maybe Xgafv)
algXgafv = lens _algXgafv (\ s a -> s{_algXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
algUploadProtocol :: Lens' AppsLocationsGet (Maybe Text)
algUploadProtocol
  = lens _algUploadProtocol
      (\ s a -> s{_algUploadProtocol = a})

-- | OAuth access token.
algAccessToken :: Lens' AppsLocationsGet (Maybe Text)
algAccessToken
  = lens _algAccessToken
      (\ s a -> s{_algAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
algUploadType :: Lens' AppsLocationsGet (Maybe Text)
algUploadType
  = lens _algUploadType
      (\ s a -> s{_algUploadType = a})

-- | Part of \`name\`. Resource name for the location.
algAppsId :: Lens' AppsLocationsGet Text
algAppsId
  = lens _algAppsId (\ s a -> s{_algAppsId = a})

-- | Part of \`name\`. See documentation of \`appsId\`.
algLocationsId :: Lens' AppsLocationsGet Text
algLocationsId
  = lens _algLocationsId
      (\ s a -> s{_algLocationsId = a})

-- | JSONP
algCallback :: Lens' AppsLocationsGet (Maybe Text)
algCallback
  = lens _algCallback (\ s a -> s{_algCallback = a})

instance GoogleRequest AppsLocationsGet where
        type Rs AppsLocationsGet = Location
        type Scopes AppsLocationsGet =
             '["https://www.googleapis.com/auth/appengine.admin",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient AppsLocationsGet'{..}
          = go _algAppsId _algLocationsId _algXgafv
              _algUploadProtocol
              _algAccessToken
              _algUploadType
              _algCallback
              (Just AltJSON)
              appEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy AppsLocationsGetResource)
                      mempty
