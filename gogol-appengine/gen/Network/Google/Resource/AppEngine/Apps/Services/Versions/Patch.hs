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
-- the version resource uses:Standard environment instance_class
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.instance_class)automatic
-- scaling in the standard environment:
-- automatic_scaling.min_idle_instances
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.automatic_scaling)
-- automatic_scaling.max_idle_instances
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.automatic_scaling)
-- automaticScaling.standard_scheduler_settings.max_instances
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#StandardSchedulerSettings)
-- automaticScaling.standard_scheduler_settings.min_instances
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#StandardSchedulerSettings)
-- automaticScaling.standard_scheduler_settings.target_cpu_utilization
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#StandardSchedulerSettings)
-- automaticScaling.standard_scheduler_settings.target_throughput_utilization
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#StandardSchedulerSettings)basic
-- scaling or manual scaling in the standard environment: serving_status
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.serving_status)Flexible
-- environment serving_status
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.serving_status)automatic
-- scaling in the flexible environment:
-- automatic_scaling.min_total_instances
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.automatic_scaling)
-- automatic_scaling.max_total_instances
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.automatic_scaling)
-- automatic_scaling.cool_down_period_sec
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.automatic_scaling)
-- automatic_scaling.cpu_utilization.target_utilization
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.automatic_scaling)
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.services.versions.patch@.
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
    , asvpAccessToken
    , asvpUploadType
    , asvpPayload
    , asvpVersionsId
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
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "updateMask" GFieldMask :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] Version :>
                                   Patch '[JSON] Operation

-- | Updates the specified Version resource. You can specify the following
-- fields depending on the App Engine environment and type of scaling that
-- the version resource uses:Standard environment instance_class
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.instance_class)automatic
-- scaling in the standard environment:
-- automatic_scaling.min_idle_instances
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.automatic_scaling)
-- automatic_scaling.max_idle_instances
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.automatic_scaling)
-- automaticScaling.standard_scheduler_settings.max_instances
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#StandardSchedulerSettings)
-- automaticScaling.standard_scheduler_settings.min_instances
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#StandardSchedulerSettings)
-- automaticScaling.standard_scheduler_settings.target_cpu_utilization
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#StandardSchedulerSettings)
-- automaticScaling.standard_scheduler_settings.target_throughput_utilization
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#StandardSchedulerSettings)basic
-- scaling or manual scaling in the standard environment: serving_status
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.serving_status)Flexible
-- environment serving_status
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.serving_status)automatic
-- scaling in the flexible environment:
-- automatic_scaling.min_total_instances
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.automatic_scaling)
-- automatic_scaling.max_total_instances
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.automatic_scaling)
-- automatic_scaling.cool_down_period_sec
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.automatic_scaling)
-- automatic_scaling.cpu_utilization.target_utilization
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.automatic_scaling)
--
-- /See:/ 'appsServicesVersionsPatch' smart constructor.
data AppsServicesVersionsPatch =
  AppsServicesVersionsPatch'
    { _asvpXgafv          :: !(Maybe Xgafv)
    , _asvpUploadProtocol :: !(Maybe Text)
    , _asvpUpdateMask     :: !(Maybe GFieldMask)
    , _asvpAccessToken    :: !(Maybe Text)
    , _asvpUploadType     :: !(Maybe Text)
    , _asvpPayload        :: !Version
    , _asvpVersionsId     :: !Text
    , _asvpAppsId         :: !Text
    , _asvpServicesId     :: !Text
    , _asvpCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

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
-- * 'asvpAccessToken'
--
-- * 'asvpUploadType'
--
-- * 'asvpPayload'
--
-- * 'asvpVersionsId'
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
    , _asvpAccessToken = Nothing
    , _asvpUploadType = Nothing
    , _asvpPayload = pAsvpPayload_
    , _asvpVersionsId = pAsvpVersionsId_
    , _asvpAppsId = pAsvpAppsId_
    , _asvpServicesId = pAsvpServicesId_
    , _asvpCallback = Nothing
    }

-- | V1 error format.
asvpXgafv :: Lens' AppsServicesVersionsPatch (Maybe Xgafv)
asvpXgafv
  = lens _asvpXgafv (\ s a -> s{_asvpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
asvpUploadProtocol :: Lens' AppsServicesVersionsPatch (Maybe Text)
asvpUploadProtocol
  = lens _asvpUploadProtocol
      (\ s a -> s{_asvpUploadProtocol = a})

-- | Standard field mask for the set of fields to be updated.
asvpUpdateMask :: Lens' AppsServicesVersionsPatch (Maybe GFieldMask)
asvpUpdateMask
  = lens _asvpUpdateMask
      (\ s a -> s{_asvpUpdateMask = a})

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
              _asvpAccessToken
              _asvpUploadType
              _asvpCallback
              (Just AltJSON)
              _asvpPayload
              appEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy AppsServicesVersionsPatchResource)
                      mempty
