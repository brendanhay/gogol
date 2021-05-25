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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified consent store.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.get@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Get
    (
    -- * REST Resource
      ProjectsLocationsDataSetsConsentStoresGetResource

    -- * Creating a Request
    , projectsLocationsDataSetsConsentStoresGet
    , ProjectsLocationsDataSetsConsentStoresGet

    -- * Request Lenses
    , pldscsgXgafv
    , pldscsgUploadProtocol
    , pldscsgAccessToken
    , pldscsgUploadType
    , pldscsgName
    , pldscsgCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.get@ method which the
-- 'ProjectsLocationsDataSetsConsentStoresGet' request conforms to.
type ProjectsLocationsDataSetsConsentStoresGetResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] ConsentStore

-- | Gets the specified consent store.
--
-- /See:/ 'projectsLocationsDataSetsConsentStoresGet' smart constructor.
data ProjectsLocationsDataSetsConsentStoresGet =
  ProjectsLocationsDataSetsConsentStoresGet'
    { _pldscsgXgafv :: !(Maybe Xgafv)
    , _pldscsgUploadProtocol :: !(Maybe Text)
    , _pldscsgAccessToken :: !(Maybe Text)
    , _pldscsgUploadType :: !(Maybe Text)
    , _pldscsgName :: !Text
    , _pldscsgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsConsentStoresGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldscsgXgafv'
--
-- * 'pldscsgUploadProtocol'
--
-- * 'pldscsgAccessToken'
--
-- * 'pldscsgUploadType'
--
-- * 'pldscsgName'
--
-- * 'pldscsgCallback'
projectsLocationsDataSetsConsentStoresGet
    :: Text -- ^ 'pldscsgName'
    -> ProjectsLocationsDataSetsConsentStoresGet
projectsLocationsDataSetsConsentStoresGet pPldscsgName_ =
  ProjectsLocationsDataSetsConsentStoresGet'
    { _pldscsgXgafv = Nothing
    , _pldscsgUploadProtocol = Nothing
    , _pldscsgAccessToken = Nothing
    , _pldscsgUploadType = Nothing
    , _pldscsgName = pPldscsgName_
    , _pldscsgCallback = Nothing
    }


-- | V1 error format.
pldscsgXgafv :: Lens' ProjectsLocationsDataSetsConsentStoresGet (Maybe Xgafv)
pldscsgXgafv
  = lens _pldscsgXgafv (\ s a -> s{_pldscsgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldscsgUploadProtocol :: Lens' ProjectsLocationsDataSetsConsentStoresGet (Maybe Text)
pldscsgUploadProtocol
  = lens _pldscsgUploadProtocol
      (\ s a -> s{_pldscsgUploadProtocol = a})

-- | OAuth access token.
pldscsgAccessToken :: Lens' ProjectsLocationsDataSetsConsentStoresGet (Maybe Text)
pldscsgAccessToken
  = lens _pldscsgAccessToken
      (\ s a -> s{_pldscsgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldscsgUploadType :: Lens' ProjectsLocationsDataSetsConsentStoresGet (Maybe Text)
pldscsgUploadType
  = lens _pldscsgUploadType
      (\ s a -> s{_pldscsgUploadType = a})

-- | Required. The resource name of the consent store to get.
pldscsgName :: Lens' ProjectsLocationsDataSetsConsentStoresGet Text
pldscsgName
  = lens _pldscsgName (\ s a -> s{_pldscsgName = a})

-- | JSONP
pldscsgCallback :: Lens' ProjectsLocationsDataSetsConsentStoresGet (Maybe Text)
pldscsgCallback
  = lens _pldscsgCallback
      (\ s a -> s{_pldscsgCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsConsentStoresGet
         where
        type Rs ProjectsLocationsDataSetsConsentStoresGet =
             ConsentStore
        type Scopes ProjectsLocationsDataSetsConsentStoresGet
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsConsentStoresGet'{..}
          = go _pldscsgName _pldscsgXgafv
              _pldscsgUploadProtocol
              _pldscsgAccessToken
              _pldscsgUploadType
              _pldscsgCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsConsentStoresGetResource)
                      mempty
