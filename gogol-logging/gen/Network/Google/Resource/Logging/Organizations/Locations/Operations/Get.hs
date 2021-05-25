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
-- Module      : Network.Google.Resource.Logging.Organizations.Locations.Operations.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the latest state of a long-running operation. Clients can use this
-- method to poll the operation result at intervals as recommended by the
-- API service.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.organizations.locations.operations.get@.
module Network.Google.Resource.Logging.Organizations.Locations.Operations.Get
    (
    -- * REST Resource
      OrganizationsLocationsOperationsGetResource

    -- * Creating a Request
    , organizationsLocationsOperationsGet
    , OrganizationsLocationsOperationsGet

    -- * Request Lenses
    , ologXgafv
    , ologUploadProtocol
    , ologAccessToken
    , ologUploadType
    , ologName
    , ologCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.organizations.locations.operations.get@ method which the
-- 'OrganizationsLocationsOperationsGet' request conforms to.
type OrganizationsLocationsOperationsGetResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Operation

-- | Gets the latest state of a long-running operation. Clients can use this
-- method to poll the operation result at intervals as recommended by the
-- API service.
--
-- /See:/ 'organizationsLocationsOperationsGet' smart constructor.
data OrganizationsLocationsOperationsGet =
  OrganizationsLocationsOperationsGet'
    { _ologXgafv :: !(Maybe Xgafv)
    , _ologUploadProtocol :: !(Maybe Text)
    , _ologAccessToken :: !(Maybe Text)
    , _ologUploadType :: !(Maybe Text)
    , _ologName :: !Text
    , _ologCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsLocationsOperationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ologXgafv'
--
-- * 'ologUploadProtocol'
--
-- * 'ologAccessToken'
--
-- * 'ologUploadType'
--
-- * 'ologName'
--
-- * 'ologCallback'
organizationsLocationsOperationsGet
    :: Text -- ^ 'ologName'
    -> OrganizationsLocationsOperationsGet
organizationsLocationsOperationsGet pOlogName_ =
  OrganizationsLocationsOperationsGet'
    { _ologXgafv = Nothing
    , _ologUploadProtocol = Nothing
    , _ologAccessToken = Nothing
    , _ologUploadType = Nothing
    , _ologName = pOlogName_
    , _ologCallback = Nothing
    }


-- | V1 error format.
ologXgafv :: Lens' OrganizationsLocationsOperationsGet (Maybe Xgafv)
ologXgafv
  = lens _ologXgafv (\ s a -> s{_ologXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ologUploadProtocol :: Lens' OrganizationsLocationsOperationsGet (Maybe Text)
ologUploadProtocol
  = lens _ologUploadProtocol
      (\ s a -> s{_ologUploadProtocol = a})

-- | OAuth access token.
ologAccessToken :: Lens' OrganizationsLocationsOperationsGet (Maybe Text)
ologAccessToken
  = lens _ologAccessToken
      (\ s a -> s{_ologAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ologUploadType :: Lens' OrganizationsLocationsOperationsGet (Maybe Text)
ologUploadType
  = lens _ologUploadType
      (\ s a -> s{_ologUploadType = a})

-- | The name of the operation resource.
ologName :: Lens' OrganizationsLocationsOperationsGet Text
ologName = lens _ologName (\ s a -> s{_ologName = a})

-- | JSONP
ologCallback :: Lens' OrganizationsLocationsOperationsGet (Maybe Text)
ologCallback
  = lens _ologCallback (\ s a -> s{_ologCallback = a})

instance GoogleRequest
           OrganizationsLocationsOperationsGet
         where
        type Rs OrganizationsLocationsOperationsGet =
             Operation
        type Scopes OrganizationsLocationsOperationsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient
          OrganizationsLocationsOperationsGet'{..}
          = go _ologName _ologXgafv _ologUploadProtocol
              _ologAccessToken
              _ologUploadType
              _ologCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsLocationsOperationsGetResource)
                      mempty
