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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified consent store and removes all the consent store\'s
-- data.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.delete@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Delete
    (
    -- * REST Resource
      ProjectsLocationsDataSetsConsentStoresDeleteResource

    -- * Creating a Request
    , projectsLocationsDataSetsConsentStoresDelete
    , ProjectsLocationsDataSetsConsentStoresDelete

    -- * Request Lenses
    , pldscsdXgafv
    , pldscsdUploadProtocol
    , pldscsdAccessToken
    , pldscsdUploadType
    , pldscsdName
    , pldscsdCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.delete@ method which the
-- 'ProjectsLocationsDataSetsConsentStoresDelete' request conforms to.
type ProjectsLocationsDataSetsConsentStoresDeleteResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes the specified consent store and removes all the consent store\'s
-- data.
--
-- /See:/ 'projectsLocationsDataSetsConsentStoresDelete' smart constructor.
data ProjectsLocationsDataSetsConsentStoresDelete =
  ProjectsLocationsDataSetsConsentStoresDelete'
    { _pldscsdXgafv :: !(Maybe Xgafv)
    , _pldscsdUploadProtocol :: !(Maybe Text)
    , _pldscsdAccessToken :: !(Maybe Text)
    , _pldscsdUploadType :: !(Maybe Text)
    , _pldscsdName :: !Text
    , _pldscsdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsConsentStoresDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldscsdXgafv'
--
-- * 'pldscsdUploadProtocol'
--
-- * 'pldscsdAccessToken'
--
-- * 'pldscsdUploadType'
--
-- * 'pldscsdName'
--
-- * 'pldscsdCallback'
projectsLocationsDataSetsConsentStoresDelete
    :: Text -- ^ 'pldscsdName'
    -> ProjectsLocationsDataSetsConsentStoresDelete
projectsLocationsDataSetsConsentStoresDelete pPldscsdName_ =
  ProjectsLocationsDataSetsConsentStoresDelete'
    { _pldscsdXgafv = Nothing
    , _pldscsdUploadProtocol = Nothing
    , _pldscsdAccessToken = Nothing
    , _pldscsdUploadType = Nothing
    , _pldscsdName = pPldscsdName_
    , _pldscsdCallback = Nothing
    }


-- | V1 error format.
pldscsdXgafv :: Lens' ProjectsLocationsDataSetsConsentStoresDelete (Maybe Xgafv)
pldscsdXgafv
  = lens _pldscsdXgafv (\ s a -> s{_pldscsdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldscsdUploadProtocol :: Lens' ProjectsLocationsDataSetsConsentStoresDelete (Maybe Text)
pldscsdUploadProtocol
  = lens _pldscsdUploadProtocol
      (\ s a -> s{_pldscsdUploadProtocol = a})

-- | OAuth access token.
pldscsdAccessToken :: Lens' ProjectsLocationsDataSetsConsentStoresDelete (Maybe Text)
pldscsdAccessToken
  = lens _pldscsdAccessToken
      (\ s a -> s{_pldscsdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldscsdUploadType :: Lens' ProjectsLocationsDataSetsConsentStoresDelete (Maybe Text)
pldscsdUploadType
  = lens _pldscsdUploadType
      (\ s a -> s{_pldscsdUploadType = a})

-- | Required. The resource name of the consent store to delete.
pldscsdName :: Lens' ProjectsLocationsDataSetsConsentStoresDelete Text
pldscsdName
  = lens _pldscsdName (\ s a -> s{_pldscsdName = a})

-- | JSONP
pldscsdCallback :: Lens' ProjectsLocationsDataSetsConsentStoresDelete (Maybe Text)
pldscsdCallback
  = lens _pldscsdCallback
      (\ s a -> s{_pldscsdCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsConsentStoresDelete
         where
        type Rs ProjectsLocationsDataSetsConsentStoresDelete
             = Empty
        type Scopes
               ProjectsLocationsDataSetsConsentStoresDelete
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsConsentStoresDelete'{..}
          = go _pldscsdName _pldscsdXgafv
              _pldscsdUploadProtocol
              _pldscsdAccessToken
              _pldscsdUploadType
              _pldscsdCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsConsentStoresDeleteResource)
                      mempty
