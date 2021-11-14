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
-- Module      : Network.Google.Resource.Run.Namespaces.Routes.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get information about a route.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.namespaces.routes.get@.
module Network.Google.Resource.Run.Namespaces.Routes.Get
    (
    -- * REST Resource
      NamespacesRoutesGetResource

    -- * Creating a Request
    , namespacesRoutesGet
    , NamespacesRoutesGet

    -- * Request Lenses
    , nrgXgafv
    , nrgUploadProtocol
    , nrgAccessToken
    , nrgUploadType
    , nrgName
    , nrgCallback
    ) where

import Network.Google.Prelude
import Network.Google.Run.Types

-- | A resource alias for @run.namespaces.routes.get@ method which the
-- 'NamespacesRoutesGet' request conforms to.
type NamespacesRoutesGetResource =
     "apis" :>
       "serving.knative.dev" :>
         "v1" :>
           Capture "name" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Route

-- | Get information about a route.
--
-- /See:/ 'namespacesRoutesGet' smart constructor.
data NamespacesRoutesGet =
  NamespacesRoutesGet'
    { _nrgXgafv :: !(Maybe Xgafv)
    , _nrgUploadProtocol :: !(Maybe Text)
    , _nrgAccessToken :: !(Maybe Text)
    , _nrgUploadType :: !(Maybe Text)
    , _nrgName :: !Text
    , _nrgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NamespacesRoutesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nrgXgafv'
--
-- * 'nrgUploadProtocol'
--
-- * 'nrgAccessToken'
--
-- * 'nrgUploadType'
--
-- * 'nrgName'
--
-- * 'nrgCallback'
namespacesRoutesGet
    :: Text -- ^ 'nrgName'
    -> NamespacesRoutesGet
namespacesRoutesGet pNrgName_ =
  NamespacesRoutesGet'
    { _nrgXgafv = Nothing
    , _nrgUploadProtocol = Nothing
    , _nrgAccessToken = Nothing
    , _nrgUploadType = Nothing
    , _nrgName = pNrgName_
    , _nrgCallback = Nothing
    }


-- | V1 error format.
nrgXgafv :: Lens' NamespacesRoutesGet (Maybe Xgafv)
nrgXgafv = lens _nrgXgafv (\ s a -> s{_nrgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
nrgUploadProtocol :: Lens' NamespacesRoutesGet (Maybe Text)
nrgUploadProtocol
  = lens _nrgUploadProtocol
      (\ s a -> s{_nrgUploadProtocol = a})

-- | OAuth access token.
nrgAccessToken :: Lens' NamespacesRoutesGet (Maybe Text)
nrgAccessToken
  = lens _nrgAccessToken
      (\ s a -> s{_nrgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
nrgUploadType :: Lens' NamespacesRoutesGet (Maybe Text)
nrgUploadType
  = lens _nrgUploadType
      (\ s a -> s{_nrgUploadType = a})

-- | The name of the route to retrieve. For Cloud Run (fully managed),
-- replace {namespace_id} with the project ID or number.
nrgName :: Lens' NamespacesRoutesGet Text
nrgName = lens _nrgName (\ s a -> s{_nrgName = a})

-- | JSONP
nrgCallback :: Lens' NamespacesRoutesGet (Maybe Text)
nrgCallback
  = lens _nrgCallback (\ s a -> s{_nrgCallback = a})

instance GoogleRequest NamespacesRoutesGet where
        type Rs NamespacesRoutesGet = Route
        type Scopes NamespacesRoutesGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient NamespacesRoutesGet'{..}
          = go _nrgName _nrgXgafv _nrgUploadProtocol
              _nrgAccessToken
              _nrgUploadType
              _nrgCallback
              (Just AltJSON)
              runService
          where go
                  = buildClient
                      (Proxy :: Proxy NamespacesRoutesGetResource)
                      mempty
