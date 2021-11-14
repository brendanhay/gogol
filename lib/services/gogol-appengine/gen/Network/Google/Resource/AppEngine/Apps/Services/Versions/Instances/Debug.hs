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
-- Module      : Network.Google.Resource.AppEngine.Apps.Services.Versions.Instances.Debug
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables debugging on a VM instance. This allows you to use the SSH
-- command to connect to the virtual machine where the instance lives.
-- While in \"debug mode\", the instance continues to serve live traffic.
-- You should delete the instance when you are done debugging and then
-- allow the system to take over and determine if another instance should
-- be started.Only applicable for instances in App Engine flexible
-- environment.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.services.versions.instances.debug@.
module Network.Google.Resource.AppEngine.Apps.Services.Versions.Instances.Debug
    (
    -- * REST Resource
      AppsServicesVersionsInstancesDebugResource

    -- * Creating a Request
    , appsServicesVersionsInstancesDebug
    , AppsServicesVersionsInstancesDebug

    -- * Request Lenses
    , asvidXgafv
    , asvidInstancesId
    , asvidUploadProtocol
    , asvidAccessToken
    , asvidUploadType
    , asvidPayload
    , asvidVersionsId
    , asvidAppsId
    , asvidServicesId
    , asvidCallback
    ) where

import Network.Google.AppEngine.Types
import Network.Google.Prelude

-- | A resource alias for @appengine.apps.services.versions.instances.debug@ method which the
-- 'AppsServicesVersionsInstancesDebug' request conforms to.
type AppsServicesVersionsInstancesDebugResource =
     "v1" :>
       "apps" :>
         Capture "appsId" Text :>
           "services" :>
             Capture "servicesId" Text :>
               "versions" :>
                 Capture "versionsId" Text :>
                   "instances" :>
                     CaptureMode "instancesId" "debug" Text :>
                       QueryParam "$.xgafv" Xgafv :>
                         QueryParam "upload_protocol" Text :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] DebugInstanceRequest :>
                                     Post '[JSON] Operation

-- | Enables debugging on a VM instance. This allows you to use the SSH
-- command to connect to the virtual machine where the instance lives.
-- While in \"debug mode\", the instance continues to serve live traffic.
-- You should delete the instance when you are done debugging and then
-- allow the system to take over and determine if another instance should
-- be started.Only applicable for instances in App Engine flexible
-- environment.
--
-- /See:/ 'appsServicesVersionsInstancesDebug' smart constructor.
data AppsServicesVersionsInstancesDebug =
  AppsServicesVersionsInstancesDebug'
    { _asvidXgafv :: !(Maybe Xgafv)
    , _asvidInstancesId :: !Text
    , _asvidUploadProtocol :: !(Maybe Text)
    , _asvidAccessToken :: !(Maybe Text)
    , _asvidUploadType :: !(Maybe Text)
    , _asvidPayload :: !DebugInstanceRequest
    , _asvidVersionsId :: !Text
    , _asvidAppsId :: !Text
    , _asvidServicesId :: !Text
    , _asvidCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AppsServicesVersionsInstancesDebug' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asvidXgafv'
--
-- * 'asvidInstancesId'
--
-- * 'asvidUploadProtocol'
--
-- * 'asvidAccessToken'
--
-- * 'asvidUploadType'
--
-- * 'asvidPayload'
--
-- * 'asvidVersionsId'
--
-- * 'asvidAppsId'
--
-- * 'asvidServicesId'
--
-- * 'asvidCallback'
appsServicesVersionsInstancesDebug
    :: Text -- ^ 'asvidInstancesId'
    -> DebugInstanceRequest -- ^ 'asvidPayload'
    -> Text -- ^ 'asvidVersionsId'
    -> Text -- ^ 'asvidAppsId'
    -> Text -- ^ 'asvidServicesId'
    -> AppsServicesVersionsInstancesDebug
appsServicesVersionsInstancesDebug pAsvidInstancesId_ pAsvidPayload_ pAsvidVersionsId_ pAsvidAppsId_ pAsvidServicesId_ =
  AppsServicesVersionsInstancesDebug'
    { _asvidXgafv = Nothing
    , _asvidInstancesId = pAsvidInstancesId_
    , _asvidUploadProtocol = Nothing
    , _asvidAccessToken = Nothing
    , _asvidUploadType = Nothing
    , _asvidPayload = pAsvidPayload_
    , _asvidVersionsId = pAsvidVersionsId_
    , _asvidAppsId = pAsvidAppsId_
    , _asvidServicesId = pAsvidServicesId_
    , _asvidCallback = Nothing
    }


-- | V1 error format.
asvidXgafv :: Lens' AppsServicesVersionsInstancesDebug (Maybe Xgafv)
asvidXgafv
  = lens _asvidXgafv (\ s a -> s{_asvidXgafv = a})

-- | Part of \`name\`. See documentation of \`appsId\`.
asvidInstancesId :: Lens' AppsServicesVersionsInstancesDebug Text
asvidInstancesId
  = lens _asvidInstancesId
      (\ s a -> s{_asvidInstancesId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
asvidUploadProtocol :: Lens' AppsServicesVersionsInstancesDebug (Maybe Text)
asvidUploadProtocol
  = lens _asvidUploadProtocol
      (\ s a -> s{_asvidUploadProtocol = a})

-- | OAuth access token.
asvidAccessToken :: Lens' AppsServicesVersionsInstancesDebug (Maybe Text)
asvidAccessToken
  = lens _asvidAccessToken
      (\ s a -> s{_asvidAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
asvidUploadType :: Lens' AppsServicesVersionsInstancesDebug (Maybe Text)
asvidUploadType
  = lens _asvidUploadType
      (\ s a -> s{_asvidUploadType = a})

-- | Multipart request metadata.
asvidPayload :: Lens' AppsServicesVersionsInstancesDebug DebugInstanceRequest
asvidPayload
  = lens _asvidPayload (\ s a -> s{_asvidPayload = a})

-- | Part of \`name\`. See documentation of \`appsId\`.
asvidVersionsId :: Lens' AppsServicesVersionsInstancesDebug Text
asvidVersionsId
  = lens _asvidVersionsId
      (\ s a -> s{_asvidVersionsId = a})

-- | Part of \`name\`. Name of the resource requested. Example:
-- apps\/myapp\/services\/default\/versions\/v1\/instances\/instance-1.
asvidAppsId :: Lens' AppsServicesVersionsInstancesDebug Text
asvidAppsId
  = lens _asvidAppsId (\ s a -> s{_asvidAppsId = a})

-- | Part of \`name\`. See documentation of \`appsId\`.
asvidServicesId :: Lens' AppsServicesVersionsInstancesDebug Text
asvidServicesId
  = lens _asvidServicesId
      (\ s a -> s{_asvidServicesId = a})

-- | JSONP
asvidCallback :: Lens' AppsServicesVersionsInstancesDebug (Maybe Text)
asvidCallback
  = lens _asvidCallback
      (\ s a -> s{_asvidCallback = a})

instance GoogleRequest
           AppsServicesVersionsInstancesDebug
         where
        type Rs AppsServicesVersionsInstancesDebug =
             Operation
        type Scopes AppsServicesVersionsInstancesDebug =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient AppsServicesVersionsInstancesDebug'{..}
          = go _asvidAppsId _asvidServicesId _asvidVersionsId
              _asvidInstancesId
              _asvidXgafv
              _asvidUploadProtocol
              _asvidAccessToken
              _asvidUploadType
              _asvidCallback
              (Just AltJSON)
              _asvidPayload
              appEngineService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AppsServicesVersionsInstancesDebugResource)
                      mempty
