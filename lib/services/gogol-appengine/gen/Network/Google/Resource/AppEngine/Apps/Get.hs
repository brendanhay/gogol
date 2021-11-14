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
-- Module      : Network.Google.Resource.AppEngine.Apps.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about an application.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.get@.
module Network.Google.Resource.AppEngine.Apps.Get
    (
    -- * REST Resource
      AppsGetResource

    -- * Creating a Request
    , appsGet
    , AppsGet

    -- * Request Lenses
    , agXgafv
    , agUploadProtocol
    , agAccessToken
    , agUploadType
    , agAppsId
    , agCallback
    ) where

import Network.Google.AppEngine.Types
import Network.Google.Prelude

-- | A resource alias for @appengine.apps.get@ method which the
-- 'AppsGet' request conforms to.
type AppsGetResource =
     "v1" :>
       "apps" :>
         Capture "appsId" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Application

-- | Gets information about an application.
--
-- /See:/ 'appsGet' smart constructor.
data AppsGet =
  AppsGet'
    { _agXgafv :: !(Maybe Xgafv)
    , _agUploadProtocol :: !(Maybe Text)
    , _agAccessToken :: !(Maybe Text)
    , _agUploadType :: !(Maybe Text)
    , _agAppsId :: !Text
    , _agCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AppsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agXgafv'
--
-- * 'agUploadProtocol'
--
-- * 'agAccessToken'
--
-- * 'agUploadType'
--
-- * 'agAppsId'
--
-- * 'agCallback'
appsGet
    :: Text -- ^ 'agAppsId'
    -> AppsGet
appsGet pAgAppsId_ =
  AppsGet'
    { _agXgafv = Nothing
    , _agUploadProtocol = Nothing
    , _agAccessToken = Nothing
    , _agUploadType = Nothing
    , _agAppsId = pAgAppsId_
    , _agCallback = Nothing
    }


-- | V1 error format.
agXgafv :: Lens' AppsGet (Maybe Xgafv)
agXgafv = lens _agXgafv (\ s a -> s{_agXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
agUploadProtocol :: Lens' AppsGet (Maybe Text)
agUploadProtocol
  = lens _agUploadProtocol
      (\ s a -> s{_agUploadProtocol = a})

-- | OAuth access token.
agAccessToken :: Lens' AppsGet (Maybe Text)
agAccessToken
  = lens _agAccessToken
      (\ s a -> s{_agAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
agUploadType :: Lens' AppsGet (Maybe Text)
agUploadType
  = lens _agUploadType (\ s a -> s{_agUploadType = a})

-- | Part of \`name\`. Name of the Application resource to get. Example:
-- apps\/myapp.
agAppsId :: Lens' AppsGet Text
agAppsId = lens _agAppsId (\ s a -> s{_agAppsId = a})

-- | JSONP
agCallback :: Lens' AppsGet (Maybe Text)
agCallback
  = lens _agCallback (\ s a -> s{_agCallback = a})

instance GoogleRequest AppsGet where
        type Rs AppsGet = Application
        type Scopes AppsGet =
             '["https://www.googleapis.com/auth/appengine.admin",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient AppsGet'{..}
          = go _agAppsId _agXgafv _agUploadProtocol
              _agAccessToken
              _agUploadType
              _agCallback
              (Just AltJSON)
              appEngineService
          where go
                  = buildClient (Proxy :: Proxy AppsGetResource) mempty
