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
-- Module      : Network.Google.Resource.Run.Namespaces.Services.ReplaceService
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Replace a service. Only the spec and metadata labels and annotations are
-- modifiable. After the Update request, Cloud Run will work to make the
-- \'status\' match the requested \'spec\'. May provide
-- metadata.resourceVersion to enforce update from last read for optimistic
-- concurrency control.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.namespaces.services.replaceService@.
module Network.Google.Resource.Run.Namespaces.Services.ReplaceService
    (
    -- * REST Resource
      NamespacesServicesReplaceServiceResource

    -- * Creating a Request
    , namespacesServicesReplaceService
    , NamespacesServicesReplaceService

    -- * Request Lenses
    , nsrsXgafv
    , nsrsUploadProtocol
    , nsrsAccessToken
    , nsrsUploadType
    , nsrsPayload
    , nsrsName
    , nsrsDryRun
    , nsrsCallback
    ) where

import Network.Google.Prelude
import Network.Google.Run.Types

-- | A resource alias for @run.namespaces.services.replaceService@ method which the
-- 'NamespacesServicesReplaceService' request conforms to.
type NamespacesServicesReplaceServiceResource =
     "apis" :>
       "serving.knative.dev" :>
         "v1" :>
           Capture "name" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "dryRun" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Service :> Put '[JSON] Service

-- | Replace a service. Only the spec and metadata labels and annotations are
-- modifiable. After the Update request, Cloud Run will work to make the
-- \'status\' match the requested \'spec\'. May provide
-- metadata.resourceVersion to enforce update from last read for optimistic
-- concurrency control.
--
-- /See:/ 'namespacesServicesReplaceService' smart constructor.
data NamespacesServicesReplaceService =
  NamespacesServicesReplaceService'
    { _nsrsXgafv :: !(Maybe Xgafv)
    , _nsrsUploadProtocol :: !(Maybe Text)
    , _nsrsAccessToken :: !(Maybe Text)
    , _nsrsUploadType :: !(Maybe Text)
    , _nsrsPayload :: !Service
    , _nsrsName :: !Text
    , _nsrsDryRun :: !(Maybe Text)
    , _nsrsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NamespacesServicesReplaceService' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nsrsXgafv'
--
-- * 'nsrsUploadProtocol'
--
-- * 'nsrsAccessToken'
--
-- * 'nsrsUploadType'
--
-- * 'nsrsPayload'
--
-- * 'nsrsName'
--
-- * 'nsrsDryRun'
--
-- * 'nsrsCallback'
namespacesServicesReplaceService
    :: Service -- ^ 'nsrsPayload'
    -> Text -- ^ 'nsrsName'
    -> NamespacesServicesReplaceService
namespacesServicesReplaceService pNsrsPayload_ pNsrsName_ =
  NamespacesServicesReplaceService'
    { _nsrsXgafv = Nothing
    , _nsrsUploadProtocol = Nothing
    , _nsrsAccessToken = Nothing
    , _nsrsUploadType = Nothing
    , _nsrsPayload = pNsrsPayload_
    , _nsrsName = pNsrsName_
    , _nsrsDryRun = Nothing
    , _nsrsCallback = Nothing
    }


-- | V1 error format.
nsrsXgafv :: Lens' NamespacesServicesReplaceService (Maybe Xgafv)
nsrsXgafv
  = lens _nsrsXgafv (\ s a -> s{_nsrsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
nsrsUploadProtocol :: Lens' NamespacesServicesReplaceService (Maybe Text)
nsrsUploadProtocol
  = lens _nsrsUploadProtocol
      (\ s a -> s{_nsrsUploadProtocol = a})

-- | OAuth access token.
nsrsAccessToken :: Lens' NamespacesServicesReplaceService (Maybe Text)
nsrsAccessToken
  = lens _nsrsAccessToken
      (\ s a -> s{_nsrsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
nsrsUploadType :: Lens' NamespacesServicesReplaceService (Maybe Text)
nsrsUploadType
  = lens _nsrsUploadType
      (\ s a -> s{_nsrsUploadType = a})

-- | Multipart request metadata.
nsrsPayload :: Lens' NamespacesServicesReplaceService Service
nsrsPayload
  = lens _nsrsPayload (\ s a -> s{_nsrsPayload = a})

-- | The name of the service being replaced. For Cloud Run (fully managed),
-- replace {namespace_id} with the project ID or number.
nsrsName :: Lens' NamespacesServicesReplaceService Text
nsrsName = lens _nsrsName (\ s a -> s{_nsrsName = a})

-- | Indicates that the server should validate the request and populate
-- default values without persisting the request. Supported values: \`all\`
nsrsDryRun :: Lens' NamespacesServicesReplaceService (Maybe Text)
nsrsDryRun
  = lens _nsrsDryRun (\ s a -> s{_nsrsDryRun = a})

-- | JSONP
nsrsCallback :: Lens' NamespacesServicesReplaceService (Maybe Text)
nsrsCallback
  = lens _nsrsCallback (\ s a -> s{_nsrsCallback = a})

instance GoogleRequest
           NamespacesServicesReplaceService
         where
        type Rs NamespacesServicesReplaceService = Service
        type Scopes NamespacesServicesReplaceService =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient NamespacesServicesReplaceService'{..}
          = go _nsrsName _nsrsXgafv _nsrsUploadProtocol
              _nsrsAccessToken
              _nsrsUploadType
              _nsrsDryRun
              _nsrsCallback
              (Just AltJSON)
              _nsrsPayload
              runService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy NamespacesServicesReplaceServiceResource)
                      mempty
