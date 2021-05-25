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
-- Module      : Network.Google.Resource.Run.Namespaces.Services.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get information about a service.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.namespaces.services.get@.
module Network.Google.Resource.Run.Namespaces.Services.Get
    (
    -- * REST Resource
      NamespacesServicesGetResource

    -- * Creating a Request
    , namespacesServicesGet
    , NamespacesServicesGet

    -- * Request Lenses
    , nsgXgafv
    , nsgUploadProtocol
    , nsgAccessToken
    , nsgUploadType
    , nsgName
    , nsgCallback
    ) where

import Network.Google.Prelude
import Network.Google.Run.Types

-- | A resource alias for @run.namespaces.services.get@ method which the
-- 'NamespacesServicesGet' request conforms to.
type NamespacesServicesGetResource =
     "apis" :>
       "serving.knative.dev" :>
         "v1" :>
           Capture "name" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Service

-- | Get information about a service.
--
-- /See:/ 'namespacesServicesGet' smart constructor.
data NamespacesServicesGet =
  NamespacesServicesGet'
    { _nsgXgafv :: !(Maybe Xgafv)
    , _nsgUploadProtocol :: !(Maybe Text)
    , _nsgAccessToken :: !(Maybe Text)
    , _nsgUploadType :: !(Maybe Text)
    , _nsgName :: !Text
    , _nsgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NamespacesServicesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nsgXgafv'
--
-- * 'nsgUploadProtocol'
--
-- * 'nsgAccessToken'
--
-- * 'nsgUploadType'
--
-- * 'nsgName'
--
-- * 'nsgCallback'
namespacesServicesGet
    :: Text -- ^ 'nsgName'
    -> NamespacesServicesGet
namespacesServicesGet pNsgName_ =
  NamespacesServicesGet'
    { _nsgXgafv = Nothing
    , _nsgUploadProtocol = Nothing
    , _nsgAccessToken = Nothing
    , _nsgUploadType = Nothing
    , _nsgName = pNsgName_
    , _nsgCallback = Nothing
    }


-- | V1 error format.
nsgXgafv :: Lens' NamespacesServicesGet (Maybe Xgafv)
nsgXgafv = lens _nsgXgafv (\ s a -> s{_nsgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
nsgUploadProtocol :: Lens' NamespacesServicesGet (Maybe Text)
nsgUploadProtocol
  = lens _nsgUploadProtocol
      (\ s a -> s{_nsgUploadProtocol = a})

-- | OAuth access token.
nsgAccessToken :: Lens' NamespacesServicesGet (Maybe Text)
nsgAccessToken
  = lens _nsgAccessToken
      (\ s a -> s{_nsgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
nsgUploadType :: Lens' NamespacesServicesGet (Maybe Text)
nsgUploadType
  = lens _nsgUploadType
      (\ s a -> s{_nsgUploadType = a})

-- | The name of the service to retrieve. For Cloud Run (fully managed),
-- replace {namespace_id} with the project ID or number.
nsgName :: Lens' NamespacesServicesGet Text
nsgName = lens _nsgName (\ s a -> s{_nsgName = a})

-- | JSONP
nsgCallback :: Lens' NamespacesServicesGet (Maybe Text)
nsgCallback
  = lens _nsgCallback (\ s a -> s{_nsgCallback = a})

instance GoogleRequest NamespacesServicesGet where
        type Rs NamespacesServicesGet = Service
        type Scopes NamespacesServicesGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient NamespacesServicesGet'{..}
          = go _nsgName _nsgXgafv _nsgUploadProtocol
              _nsgAccessToken
              _nsgUploadType
              _nsgCallback
              (Just AltJSON)
              runService
          where go
                  = buildClient
                      (Proxy :: Proxy NamespacesServicesGetResource)
                      mempty
