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
-- Module      : Network.Google.Resource.AppEngine.Apps.Services.Versions.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified Version resource. You can specify the following
-- fields depending on the App Engine environment and type of scaling that
-- the version resource uses: serving_status
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.serving_status):
-- For Version resources that use basic scaling, manual scaling, or run in
-- the App Engine flexible environment. instance_class
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.instance_class):
-- For Version resources that run in the App Engine standard environment.
-- automatic_scaling.min_idle_instances
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.automatic_scaling):
-- For Version resources that use automatic scaling and run in the App
-- Engine standard environment. automatic_scaling.max_idle_instances
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.automatic_scaling):
-- For Version resources that use automatic scaling and run in the App
-- Engine standard environment.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ Google App Engine Admin API Reference> for @appengine.apps.services.versions.patch@.
module Network.Google.Resource.AppEngine.Apps.Services.Versions.Patch
    (
    -- * REST Resource
      AppsServicesVersionsPatchResource

    -- * Creating a Request
    , appsServicesVersionsPatch
    , AppsServicesVersionsPatch

    -- * Request Lenses
    , asvpXgafv
    , asvpUploadProtocol
    , asvpUpdateMask
    , asvpPp
    , asvpAccessToken
    , asvpUploadType
    , asvpPayload
    , asvpVersionsId
    , asvpBearerToken
    , asvpAppsId
    , asvpServicesId
    , asvpCallback
    ) where

import           Network.Google.AppEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @appengine.apps.services.versions.patch@ method which the
-- 'AppsServicesVersionsPatch' request conforms to.
type AppsServicesVersionsPatchResource =
     "v1" :>
       "apps" :>
         Capture "appsId" Text :>
           "services" :>
             Capture "servicesId" Text :>
               "versions" :>
                 Capture "versionsId" Text :>
                   QueryParam "$.xgafv" Text :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "updateMask" Text :>
                         QueryParam "pp" Bool :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "bearer_token" Text :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     ReqBody '[JSON] Version :>
                                       Patch '[JSON] Operation

-- | Updates the specified Version resource. You can specify the following
-- fields depending on the App Engine environment and type of scaling that
-- the version resource uses: serving_status
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.serving_status):
-- For Version resources that use basic scaling, manual scaling, or run in
-- the App Engine flexible environment. instance_class
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.instance_class):
-- For Version resources that run in the App Engine standard environment.
-- automatic_scaling.min_idle_instances
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.automatic_scaling):
-- For Version resources that use automatic scaling and run in the App
-- Engine standard environment. automatic_scaling.max_idle_instances
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.automatic_scaling):
-- For Version resources that use automatic scaling and run in the App
-- Engine standard environment.
--
-- /See:/ 'appsServicesVersionsPatch' smart constructor.
data AppsServicesVersionsPatch = AppsServicesVersionsPatch'
    { _asvpXgafv          :: !(Maybe Text)
    , _asvpUploadProtocol :: !(Maybe Text)
    , _asvpUpdateMask     :: !(Maybe Text)
    , _asvpPp             :: !Bool
    , _asvpAccessToken    :: !(Maybe Text)
    , _asvpUploadType     :: !(Maybe Text)
    , _asvpPayload        :: !Version
    , _asvpVersionsId     :: !Text
    , _asvpBearerToken    :: !(Maybe Text)
    , _asvpAppsId         :: !Text
    , _asvpServicesId     :: !Text
    , _asvpCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppsServicesVersionsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asvpXgafv'
--
-- * 'asvpUploadProtocol'
--
-- * 'asvpUpdateMask'
--
-- * 'asvpPp'
--
-- * 'asvpAccessToken'
--
-- * 'asvpUploadType'
--
-- * 'asvpPayload'
--
-- * 'asvpVersionsId'
--
-- * 'asvpBearerToken'
--
-- * 'asvpAppsId'
--
-- * 'asvpServicesId'
--
-- * 'asvpCallback'
appsServicesVersionsPatch
    :: Version -- ^ 'asvpPayload'
    -> Text -- ^ 'asvpVersionsId'
    -> Text -- ^ 'asvpAppsId'
    -> Text -- ^ 'asvpServicesId'
    -> AppsServicesVersionsPatch
appsServicesVersionsPatch pAsvpPayload_ pAsvpVersionsId_ pAsvpAppsId_ pAsvpServicesId_ =
    AppsServicesVersionsPatch'
    { _asvpXgafv = Nothing
    , _asvpUploadProtocol = Nothing
    , _asvpUpdateMask = Nothing
    , _asvpPp = True
    , _asvpAccessToken = Nothing
    , _asvpUploadType = Nothing
    , _asvpPayload = pAsvpPayload_
    , _asvpVersionsId = pAsvpVersionsId_
    , _asvpBearerToken = Nothing
    , _asvpAppsId = pAsvpAppsId_
    , _asvpServicesId = pAsvpServicesId_
    , _asvpCallback = Nothing
    }

-- | V1 error format.
asvpXgafv :: Lens' AppsServicesVersionsPatch (Maybe Text)
asvpXgafv
  = lens _asvpXgafv (\ s a -> s{_asvpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
asvpUploadProtocol :: Lens' AppsServicesVersionsPatch (Maybe Text)
asvpUploadProtocol
  = lens _asvpUploadProtocol
      (\ s a -> s{_asvpUploadProtocol = a})

-- | Standard field mask for the set of fields to be updated.
asvpUpdateMask :: Lens' AppsServicesVersionsPatch (Maybe Text)
asvpUpdateMask
  = lens _asvpUpdateMask
      (\ s a -> s{_asvpUpdateMask = a})

-- | Pretty-print response.
asvpPp :: Lens' AppsServicesVersionsPatch Bool
asvpPp = lens _asvpPp (\ s a -> s{_asvpPp = a})

-- | OAuth access token.
asvpAccessToken :: Lens' AppsServicesVersionsPatch (Maybe Text)
asvpAccessToken
  = lens _asvpAccessToken
      (\ s a -> s{_asvpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
asvpUploadType :: Lens' AppsServicesVersionsPatch (Maybe Text)
asvpUploadType
  = lens _asvpUploadType
      (\ s a -> s{_asvpUploadType = a})

-- | Multipart request metadata.
asvpPayload :: Lens' AppsServicesVersionsPatch Version
asvpPayload
  = lens _asvpPayload (\ s a -> s{_asvpPayload = a})

-- | Part of \`name\`. See documentation of \`appsId\`.
asvpVersionsId :: Lens' AppsServicesVersionsPatch Text
asvpVersionsId
  = lens _asvpVersionsId
      (\ s a -> s{_asvpVersionsId = a})

-- | OAuth bearer token.
asvpBearerToken :: Lens' AppsServicesVersionsPatch (Maybe Text)
asvpBearerToken
  = lens _asvpBearerToken
      (\ s a -> s{_asvpBearerToken = a})

-- | Part of \`name\`. Name of the resource to update. Example:
-- apps\/myapp\/services\/default\/versions\/1.
asvpAppsId :: Lens' AppsServicesVersionsPatch Text
asvpAppsId
  = lens _asvpAppsId (\ s a -> s{_asvpAppsId = a})

-- | Part of \`name\`. See documentation of \`appsId\`.
asvpServicesId :: Lens' AppsServicesVersionsPatch Text
asvpServicesId
  = lens _asvpServicesId
      (\ s a -> s{_asvpServicesId = a})

-- | JSONP
asvpCallback :: Lens' AppsServicesVersionsPatch (Maybe Text)
asvpCallback
  = lens _asvpCallback (\ s a -> s{_asvpCallback = a})

instance GoogleRequest AppsServicesVersionsPatch
         where
        type Rs AppsServicesVersionsPatch = Operation
        type Scopes AppsServicesVersionsPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient AppsServicesVersionsPatch'{..}
          = go _asvpAppsId _asvpServicesId _asvpVersionsId
              _asvpXgafv
              _asvpUploadProtocol
              _asvpUpdateMask
              (Just _asvpPp)
              _asvpAccessToken
              _asvpUploadType
              _asvpBearerToken
              _asvpCallback
              (Just AltJSON)
              _asvpPayload
              appEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy AppsServicesVersionsPatchResource)
                      mempty
