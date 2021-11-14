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
-- Module      : Network.Google.Resource.Run.Namespaces.Configurations.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get information about a configuration.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.namespaces.configurations.get@.
module Network.Google.Resource.Run.Namespaces.Configurations.Get
    (
    -- * REST Resource
      NamespacesConfigurationsGetResource

    -- * Creating a Request
    , namespacesConfigurationsGet
    , NamespacesConfigurationsGet

    -- * Request Lenses
    , ncgXgafv
    , ncgUploadProtocol
    , ncgAccessToken
    , ncgUploadType
    , ncgName
    , ncgCallback
    ) where

import Network.Google.Prelude
import Network.Google.Run.Types

-- | A resource alias for @run.namespaces.configurations.get@ method which the
-- 'NamespacesConfigurationsGet' request conforms to.
type NamespacesConfigurationsGetResource =
     "apis" :>
       "serving.knative.dev" :>
         "v1" :>
           Capture "name" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Configuration

-- | Get information about a configuration.
--
-- /See:/ 'namespacesConfigurationsGet' smart constructor.
data NamespacesConfigurationsGet =
  NamespacesConfigurationsGet'
    { _ncgXgafv :: !(Maybe Xgafv)
    , _ncgUploadProtocol :: !(Maybe Text)
    , _ncgAccessToken :: !(Maybe Text)
    , _ncgUploadType :: !(Maybe Text)
    , _ncgName :: !Text
    , _ncgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NamespacesConfigurationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ncgXgafv'
--
-- * 'ncgUploadProtocol'
--
-- * 'ncgAccessToken'
--
-- * 'ncgUploadType'
--
-- * 'ncgName'
--
-- * 'ncgCallback'
namespacesConfigurationsGet
    :: Text -- ^ 'ncgName'
    -> NamespacesConfigurationsGet
namespacesConfigurationsGet pNcgName_ =
  NamespacesConfigurationsGet'
    { _ncgXgafv = Nothing
    , _ncgUploadProtocol = Nothing
    , _ncgAccessToken = Nothing
    , _ncgUploadType = Nothing
    , _ncgName = pNcgName_
    , _ncgCallback = Nothing
    }


-- | V1 error format.
ncgXgafv :: Lens' NamespacesConfigurationsGet (Maybe Xgafv)
ncgXgafv = lens _ncgXgafv (\ s a -> s{_ncgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ncgUploadProtocol :: Lens' NamespacesConfigurationsGet (Maybe Text)
ncgUploadProtocol
  = lens _ncgUploadProtocol
      (\ s a -> s{_ncgUploadProtocol = a})

-- | OAuth access token.
ncgAccessToken :: Lens' NamespacesConfigurationsGet (Maybe Text)
ncgAccessToken
  = lens _ncgAccessToken
      (\ s a -> s{_ncgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ncgUploadType :: Lens' NamespacesConfigurationsGet (Maybe Text)
ncgUploadType
  = lens _ncgUploadType
      (\ s a -> s{_ncgUploadType = a})

-- | The name of the configuration to retrieve. For Cloud Run (fully
-- managed), replace {namespace_id} with the project ID or number.
ncgName :: Lens' NamespacesConfigurationsGet Text
ncgName = lens _ncgName (\ s a -> s{_ncgName = a})

-- | JSONP
ncgCallback :: Lens' NamespacesConfigurationsGet (Maybe Text)
ncgCallback
  = lens _ncgCallback (\ s a -> s{_ncgCallback = a})

instance GoogleRequest NamespacesConfigurationsGet
         where
        type Rs NamespacesConfigurationsGet = Configuration
        type Scopes NamespacesConfigurationsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient NamespacesConfigurationsGet'{..}
          = go _ncgName _ncgXgafv _ncgUploadProtocol
              _ncgAccessToken
              _ncgUploadType
              _ncgCallback
              (Just AltJSON)
              runService
          where go
                  = buildClient
                      (Proxy :: Proxy NamespacesConfigurationsGetResource)
                      mempty
