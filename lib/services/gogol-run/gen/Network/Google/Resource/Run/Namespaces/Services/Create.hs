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
-- Module      : Network.Google.Resource.Run.Namespaces.Services.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a service.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.namespaces.services.create@.
module Network.Google.Resource.Run.Namespaces.Services.Create
    (
    -- * REST Resource
      NamespacesServicesCreateResource

    -- * Creating a Request
    , namespacesServicesCreate
    , NamespacesServicesCreate

    -- * Request Lenses
    , nscParent
    , nscXgafv
    , nscUploadProtocol
    , nscAccessToken
    , nscUploadType
    , nscPayload
    , nscDryRun
    , nscCallback
    ) where

import Network.Google.Prelude
import Network.Google.Run.Types

-- | A resource alias for @run.namespaces.services.create@ method which the
-- 'NamespacesServicesCreate' request conforms to.
type NamespacesServicesCreateResource =
     "apis" :>
       "serving.knative.dev" :>
         "v1" :>
           Capture "parent" Text :>
             "services" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "dryRun" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Service :> Post '[JSON] Service

-- | Create a service.
--
-- /See:/ 'namespacesServicesCreate' smart constructor.
data NamespacesServicesCreate =
  NamespacesServicesCreate'
    { _nscParent :: !Text
    , _nscXgafv :: !(Maybe Xgafv)
    , _nscUploadProtocol :: !(Maybe Text)
    , _nscAccessToken :: !(Maybe Text)
    , _nscUploadType :: !(Maybe Text)
    , _nscPayload :: !Service
    , _nscDryRun :: !(Maybe Text)
    , _nscCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NamespacesServicesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nscParent'
--
-- * 'nscXgafv'
--
-- * 'nscUploadProtocol'
--
-- * 'nscAccessToken'
--
-- * 'nscUploadType'
--
-- * 'nscPayload'
--
-- * 'nscDryRun'
--
-- * 'nscCallback'
namespacesServicesCreate
    :: Text -- ^ 'nscParent'
    -> Service -- ^ 'nscPayload'
    -> NamespacesServicesCreate
namespacesServicesCreate pNscParent_ pNscPayload_ =
  NamespacesServicesCreate'
    { _nscParent = pNscParent_
    , _nscXgafv = Nothing
    , _nscUploadProtocol = Nothing
    , _nscAccessToken = Nothing
    , _nscUploadType = Nothing
    , _nscPayload = pNscPayload_
    , _nscDryRun = Nothing
    , _nscCallback = Nothing
    }


-- | The namespace in which the service should be created. For Cloud Run
-- (fully managed), replace {namespace_id} with the project ID or number.
nscParent :: Lens' NamespacesServicesCreate Text
nscParent
  = lens _nscParent (\ s a -> s{_nscParent = a})

-- | V1 error format.
nscXgafv :: Lens' NamespacesServicesCreate (Maybe Xgafv)
nscXgafv = lens _nscXgafv (\ s a -> s{_nscXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
nscUploadProtocol :: Lens' NamespacesServicesCreate (Maybe Text)
nscUploadProtocol
  = lens _nscUploadProtocol
      (\ s a -> s{_nscUploadProtocol = a})

-- | OAuth access token.
nscAccessToken :: Lens' NamespacesServicesCreate (Maybe Text)
nscAccessToken
  = lens _nscAccessToken
      (\ s a -> s{_nscAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
nscUploadType :: Lens' NamespacesServicesCreate (Maybe Text)
nscUploadType
  = lens _nscUploadType
      (\ s a -> s{_nscUploadType = a})

-- | Multipart request metadata.
nscPayload :: Lens' NamespacesServicesCreate Service
nscPayload
  = lens _nscPayload (\ s a -> s{_nscPayload = a})

-- | Indicates that the server should validate the request and populate
-- default values without persisting the request. Supported values: \`all\`
nscDryRun :: Lens' NamespacesServicesCreate (Maybe Text)
nscDryRun
  = lens _nscDryRun (\ s a -> s{_nscDryRun = a})

-- | JSONP
nscCallback :: Lens' NamespacesServicesCreate (Maybe Text)
nscCallback
  = lens _nscCallback (\ s a -> s{_nscCallback = a})

instance GoogleRequest NamespacesServicesCreate where
        type Rs NamespacesServicesCreate = Service
        type Scopes NamespacesServicesCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient NamespacesServicesCreate'{..}
          = go _nscParent _nscXgafv _nscUploadProtocol
              _nscAccessToken
              _nscUploadType
              _nscDryRun
              _nscCallback
              (Just AltJSON)
              _nscPayload
              runService
          where go
                  = buildClient
                      (Proxy :: Proxy NamespacesServicesCreateResource)
                      mempty
