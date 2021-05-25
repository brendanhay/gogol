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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the consent stores in the specified dataset.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.list@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.List
    (
    -- * REST Resource
      ProjectsLocationsDataSetsConsentStoresListResource

    -- * Creating a Request
    , projectsLocationsDataSetsConsentStoresList
    , ProjectsLocationsDataSetsConsentStoresList

    -- * Request Lenses
    , pldscslParent
    , pldscslXgafv
    , pldscslUploadProtocol
    , pldscslAccessToken
    , pldscslUploadType
    , pldscslFilter
    , pldscslPageToken
    , pldscslPageSize
    , pldscslCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.list@ method which the
-- 'ProjectsLocationsDataSetsConsentStoresList' request conforms to.
type ProjectsLocationsDataSetsConsentStoresListResource
     =
     "v1" :>
       Capture "parent" Text :>
         "consentStores" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListConsentStoresResponse

-- | Lists the consent stores in the specified dataset.
--
-- /See:/ 'projectsLocationsDataSetsConsentStoresList' smart constructor.
data ProjectsLocationsDataSetsConsentStoresList =
  ProjectsLocationsDataSetsConsentStoresList'
    { _pldscslParent :: !Text
    , _pldscslXgafv :: !(Maybe Xgafv)
    , _pldscslUploadProtocol :: !(Maybe Text)
    , _pldscslAccessToken :: !(Maybe Text)
    , _pldscslUploadType :: !(Maybe Text)
    , _pldscslFilter :: !(Maybe Text)
    , _pldscslPageToken :: !(Maybe Text)
    , _pldscslPageSize :: !(Maybe (Textual Int32))
    , _pldscslCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsConsentStoresList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldscslParent'
--
-- * 'pldscslXgafv'
--
-- * 'pldscslUploadProtocol'
--
-- * 'pldscslAccessToken'
--
-- * 'pldscslUploadType'
--
-- * 'pldscslFilter'
--
-- * 'pldscslPageToken'
--
-- * 'pldscslPageSize'
--
-- * 'pldscslCallback'
projectsLocationsDataSetsConsentStoresList
    :: Text -- ^ 'pldscslParent'
    -> ProjectsLocationsDataSetsConsentStoresList
projectsLocationsDataSetsConsentStoresList pPldscslParent_ =
  ProjectsLocationsDataSetsConsentStoresList'
    { _pldscslParent = pPldscslParent_
    , _pldscslXgafv = Nothing
    , _pldscslUploadProtocol = Nothing
    , _pldscslAccessToken = Nothing
    , _pldscslUploadType = Nothing
    , _pldscslFilter = Nothing
    , _pldscslPageToken = Nothing
    , _pldscslPageSize = Nothing
    , _pldscslCallback = Nothing
    }


-- | Required. Name of the dataset.
pldscslParent :: Lens' ProjectsLocationsDataSetsConsentStoresList Text
pldscslParent
  = lens _pldscslParent
      (\ s a -> s{_pldscslParent = a})

-- | V1 error format.
pldscslXgafv :: Lens' ProjectsLocationsDataSetsConsentStoresList (Maybe Xgafv)
pldscslXgafv
  = lens _pldscslXgafv (\ s a -> s{_pldscslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldscslUploadProtocol :: Lens' ProjectsLocationsDataSetsConsentStoresList (Maybe Text)
pldscslUploadProtocol
  = lens _pldscslUploadProtocol
      (\ s a -> s{_pldscslUploadProtocol = a})

-- | OAuth access token.
pldscslAccessToken :: Lens' ProjectsLocationsDataSetsConsentStoresList (Maybe Text)
pldscslAccessToken
  = lens _pldscslAccessToken
      (\ s a -> s{_pldscslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldscslUploadType :: Lens' ProjectsLocationsDataSetsConsentStoresList (Maybe Text)
pldscslUploadType
  = lens _pldscslUploadType
      (\ s a -> s{_pldscslUploadType = a})

-- | Optional. Restricts the stores returned to those matching a filter. Only
-- filtering on labels is supported. For example,
-- \`filter=labels.key=value\`.
pldscslFilter :: Lens' ProjectsLocationsDataSetsConsentStoresList (Maybe Text)
pldscslFilter
  = lens _pldscslFilter
      (\ s a -> s{_pldscslFilter = a})

-- | Optional. Token to retrieve the next page of results, or empty to get
-- the first page.
pldscslPageToken :: Lens' ProjectsLocationsDataSetsConsentStoresList (Maybe Text)
pldscslPageToken
  = lens _pldscslPageToken
      (\ s a -> s{_pldscslPageToken = a})

-- | Optional. Limit on the number of consent stores to return in a single
-- response. If not specified, 100 is used. May not be larger than 1000.
pldscslPageSize :: Lens' ProjectsLocationsDataSetsConsentStoresList (Maybe Int32)
pldscslPageSize
  = lens _pldscslPageSize
      (\ s a -> s{_pldscslPageSize = a})
      . mapping _Coerce

-- | JSONP
pldscslCallback :: Lens' ProjectsLocationsDataSetsConsentStoresList (Maybe Text)
pldscslCallback
  = lens _pldscslCallback
      (\ s a -> s{_pldscslCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsConsentStoresList
         where
        type Rs ProjectsLocationsDataSetsConsentStoresList =
             ListConsentStoresResponse
        type Scopes
               ProjectsLocationsDataSetsConsentStoresList
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsConsentStoresList'{..}
          = go _pldscslParent _pldscslXgafv
              _pldscslUploadProtocol
              _pldscslAccessToken
              _pldscslUploadType
              _pldscslFilter
              _pldscslPageToken
              _pldscslPageSize
              _pldscslCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsConsentStoresListResource)
                      mempty
