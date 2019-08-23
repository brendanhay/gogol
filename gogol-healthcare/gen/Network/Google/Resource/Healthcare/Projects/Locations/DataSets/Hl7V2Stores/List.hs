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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the HL7v2 stores in the given dataset.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.hl7V2Stores.list@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.List
    (
    -- * REST Resource
      ProjectsLocationsDataSetsHl7V2StoresListResource

    -- * Creating a Request
    , projectsLocationsDataSetsHl7V2StoresList
    , ProjectsLocationsDataSetsHl7V2StoresList

    -- * Request Lenses
    , pldshvslParent
    , pldshvslXgafv
    , pldshvslUploadProtocol
    , pldshvslAccessToken
    , pldshvslUploadType
    , pldshvslFilter
    , pldshvslPageToken
    , pldshvslPageSize
    , pldshvslCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.hl7V2Stores.list@ method which the
-- 'ProjectsLocationsDataSetsHl7V2StoresList' request conforms to.
type ProjectsLocationsDataSetsHl7V2StoresListResource
     =
     "v1beta1" :>
       Capture "parent" Text :>
         "hl7V2Stores" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListHl7V2StoresResponse

-- | Lists the HL7v2 stores in the given dataset.
--
-- /See:/ 'projectsLocationsDataSetsHl7V2StoresList' smart constructor.
data ProjectsLocationsDataSetsHl7V2StoresList =
  ProjectsLocationsDataSetsHl7V2StoresList'
    { _pldshvslParent         :: !Text
    , _pldshvslXgafv          :: !(Maybe Xgafv)
    , _pldshvslUploadProtocol :: !(Maybe Text)
    , _pldshvslAccessToken    :: !(Maybe Text)
    , _pldshvslUploadType     :: !(Maybe Text)
    , _pldshvslFilter         :: !(Maybe Text)
    , _pldshvslPageToken      :: !(Maybe Text)
    , _pldshvslPageSize       :: !(Maybe (Textual Int32))
    , _pldshvslCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsHl7V2StoresList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldshvslParent'
--
-- * 'pldshvslXgafv'
--
-- * 'pldshvslUploadProtocol'
--
-- * 'pldshvslAccessToken'
--
-- * 'pldshvslUploadType'
--
-- * 'pldshvslFilter'
--
-- * 'pldshvslPageToken'
--
-- * 'pldshvslPageSize'
--
-- * 'pldshvslCallback'
projectsLocationsDataSetsHl7V2StoresList
    :: Text -- ^ 'pldshvslParent'
    -> ProjectsLocationsDataSetsHl7V2StoresList
projectsLocationsDataSetsHl7V2StoresList pPldshvslParent_ =
  ProjectsLocationsDataSetsHl7V2StoresList'
    { _pldshvslParent = pPldshvslParent_
    , _pldshvslXgafv = Nothing
    , _pldshvslUploadProtocol = Nothing
    , _pldshvslAccessToken = Nothing
    , _pldshvslUploadType = Nothing
    , _pldshvslFilter = Nothing
    , _pldshvslPageToken = Nothing
    , _pldshvslPageSize = Nothing
    , _pldshvslCallback = Nothing
    }


-- | Name of the dataset.
pldshvslParent :: Lens' ProjectsLocationsDataSetsHl7V2StoresList Text
pldshvslParent
  = lens _pldshvslParent
      (\ s a -> s{_pldshvslParent = a})

-- | V1 error format.
pldshvslXgafv :: Lens' ProjectsLocationsDataSetsHl7V2StoresList (Maybe Xgafv)
pldshvslXgafv
  = lens _pldshvslXgafv
      (\ s a -> s{_pldshvslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldshvslUploadProtocol :: Lens' ProjectsLocationsDataSetsHl7V2StoresList (Maybe Text)
pldshvslUploadProtocol
  = lens _pldshvslUploadProtocol
      (\ s a -> s{_pldshvslUploadProtocol = a})

-- | OAuth access token.
pldshvslAccessToken :: Lens' ProjectsLocationsDataSetsHl7V2StoresList (Maybe Text)
pldshvslAccessToken
  = lens _pldshvslAccessToken
      (\ s a -> s{_pldshvslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldshvslUploadType :: Lens' ProjectsLocationsDataSetsHl7V2StoresList (Maybe Text)
pldshvslUploadType
  = lens _pldshvslUploadType
      (\ s a -> s{_pldshvslUploadType = a})

-- | Restricts stores returned to those matching a filter. Syntax:
-- https:\/\/cloud.google.com\/appengine\/docs\/standard\/python\/search\/query_strings
-- Only filtering on labels is supported, for example \`labels.key=value\`.
pldshvslFilter :: Lens' ProjectsLocationsDataSetsHl7V2StoresList (Maybe Text)
pldshvslFilter
  = lens _pldshvslFilter
      (\ s a -> s{_pldshvslFilter = a})

-- | The next_page_token value returned from the previous List request, if
-- any.
pldshvslPageToken :: Lens' ProjectsLocationsDataSetsHl7V2StoresList (Maybe Text)
pldshvslPageToken
  = lens _pldshvslPageToken
      (\ s a -> s{_pldshvslPageToken = a})

-- | Limit on the number of HL7v2 stores to return in a single response. If
-- zero the default page size of 100 is used.
pldshvslPageSize :: Lens' ProjectsLocationsDataSetsHl7V2StoresList (Maybe Int32)
pldshvslPageSize
  = lens _pldshvslPageSize
      (\ s a -> s{_pldshvslPageSize = a})
      . mapping _Coerce

-- | JSONP
pldshvslCallback :: Lens' ProjectsLocationsDataSetsHl7V2StoresList (Maybe Text)
pldshvslCallback
  = lens _pldshvslCallback
      (\ s a -> s{_pldshvslCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsHl7V2StoresList
         where
        type Rs ProjectsLocationsDataSetsHl7V2StoresList =
             ListHl7V2StoresResponse
        type Scopes ProjectsLocationsDataSetsHl7V2StoresList
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsHl7V2StoresList'{..}
          = go _pldshvslParent _pldshvslXgafv
              _pldshvslUploadProtocol
              _pldshvslAccessToken
              _pldshvslUploadType
              _pldshvslFilter
              _pldshvslPageToken
              _pldshvslPageSize
              _pldshvslCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsHl7V2StoresListResource)
                      mempty
