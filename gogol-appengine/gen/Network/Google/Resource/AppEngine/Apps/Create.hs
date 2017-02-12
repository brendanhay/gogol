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
-- Module      : Network.Google.Resource.AppEngine.Apps.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an App Engine application for a Google Cloud Platform project.
-- This requires a project that excludes an App Engine application. For
-- details about creating a project without an application, see the Google
-- Cloud Resource Manager create project topic
-- (https:\/\/cloud.google.com\/resource-manager\/docs\/creating-project).
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ Google App Engine Admin API Reference> for @appengine.apps.create@.
module Network.Google.Resource.AppEngine.Apps.Create
    (
    -- * REST Resource
      AppsCreateResource

    -- * Creating a Request
    , appsCreate
    , AppsCreate

    -- * Request Lenses
    , acXgafv
    , acUploadProtocol
    , acPp
    , acAccessToken
    , acUploadType
    , acPayload
    , acBearerToken
    , acCallback
    ) where

import           Network.Google.AppEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @appengine.apps.create@ method which the
-- 'AppsCreate' request conforms to.
type AppsCreateResource =
     "v1" :>
       "apps" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Application :> Post '[JSON] Operation

-- | Creates an App Engine application for a Google Cloud Platform project.
-- This requires a project that excludes an App Engine application. For
-- details about creating a project without an application, see the Google
-- Cloud Resource Manager create project topic
-- (https:\/\/cloud.google.com\/resource-manager\/docs\/creating-project).
--
-- /See:/ 'appsCreate' smart constructor.
data AppsCreate = AppsCreate'
    { _acXgafv          :: !(Maybe Text)
    , _acUploadProtocol :: !(Maybe Text)
    , _acPp             :: !Bool
    , _acAccessToken    :: !(Maybe Text)
    , _acUploadType     :: !(Maybe Text)
    , _acPayload        :: !Application
    , _acBearerToken    :: !(Maybe Text)
    , _acCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acXgafv'
--
-- * 'acUploadProtocol'
--
-- * 'acPp'
--
-- * 'acAccessToken'
--
-- * 'acUploadType'
--
-- * 'acPayload'
--
-- * 'acBearerToken'
--
-- * 'acCallback'
appsCreate
    :: Application -- ^ 'acPayload'
    -> AppsCreate
appsCreate pAcPayload_ =
    AppsCreate'
    { _acXgafv = Nothing
    , _acUploadProtocol = Nothing
    , _acPp = True
    , _acAccessToken = Nothing
    , _acUploadType = Nothing
    , _acPayload = pAcPayload_
    , _acBearerToken = Nothing
    , _acCallback = Nothing
    }

-- | V1 error format.
acXgafv :: Lens' AppsCreate (Maybe Text)
acXgafv = lens _acXgafv (\ s a -> s{_acXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acUploadProtocol :: Lens' AppsCreate (Maybe Text)
acUploadProtocol
  = lens _acUploadProtocol
      (\ s a -> s{_acUploadProtocol = a})

-- | Pretty-print response.
acPp :: Lens' AppsCreate Bool
acPp = lens _acPp (\ s a -> s{_acPp = a})

-- | OAuth access token.
acAccessToken :: Lens' AppsCreate (Maybe Text)
acAccessToken
  = lens _acAccessToken
      (\ s a -> s{_acAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acUploadType :: Lens' AppsCreate (Maybe Text)
acUploadType
  = lens _acUploadType (\ s a -> s{_acUploadType = a})

-- | Multipart request metadata.
acPayload :: Lens' AppsCreate Application
acPayload
  = lens _acPayload (\ s a -> s{_acPayload = a})

-- | OAuth bearer token.
acBearerToken :: Lens' AppsCreate (Maybe Text)
acBearerToken
  = lens _acBearerToken
      (\ s a -> s{_acBearerToken = a})

-- | JSONP
acCallback :: Lens' AppsCreate (Maybe Text)
acCallback
  = lens _acCallback (\ s a -> s{_acCallback = a})

instance GoogleRequest AppsCreate where
        type Rs AppsCreate = Operation
        type Scopes AppsCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient AppsCreate'{..}
          = go _acXgafv _acUploadProtocol (Just _acPp)
              _acAccessToken
              _acUploadType
              _acBearerToken
              _acCallback
              (Just AltJSON)
              _acPayload
              appEngineService
          where go
                  = buildClient (Proxy :: Proxy AppsCreateResource)
                      mempty
