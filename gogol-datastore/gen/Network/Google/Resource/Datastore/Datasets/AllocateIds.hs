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
-- Module      : Network.Google.Resource.Datastore.Datasets.AllocateIds
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allocate IDs for incomplete keys (useful for referencing an entity
-- before it is inserted).
--
-- /See:/ <https://developers.google.com/datastore/ Google Cloud Datastore API Reference> for @datastore.datasets.allocateIds@.
module Network.Google.Resource.Datastore.Datasets.AllocateIds
    (
    -- * REST Resource
      DatasetsAllocateIdsResource

    -- * Creating a Request
    , datasetsAllocateIds
    , DatasetsAllocateIds

    -- * Request Lenses
    , daiPayload
    , daiDatasetId
    ) where

import           Network.Google.Datastore.Types
import           Network.Google.Prelude

-- | A resource alias for @datastore.datasets.allocateIds@ method which the
-- 'DatasetsAllocateIds' request conforms to.
type DatasetsAllocateIdsResource =
     Capture "datasetId" Text :>
       "allocateIds" :>
         QueryParam "alt" AltJSON :>
           ReqBody '[JSON] AllocateIdsRequest :>
             Post '[JSON] AllocateIdsResponse

-- | Allocate IDs for incomplete keys (useful for referencing an entity
-- before it is inserted).
--
-- /See:/ 'datasetsAllocateIds' smart constructor.
data DatasetsAllocateIds = DatasetsAllocateIds
    { _daiPayload   :: !AllocateIdsRequest
    , _daiDatasetId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsAllocateIds' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daiPayload'
--
-- * 'daiDatasetId'
datasetsAllocateIds
    :: AllocateIdsRequest -- ^ 'daiPayload'
    -> Text -- ^ 'daiDatasetId'
    -> DatasetsAllocateIds
datasetsAllocateIds pDaiPayload_ pDaiDatasetId_ =
    DatasetsAllocateIds
    { _daiPayload = pDaiPayload_
    , _daiDatasetId = pDaiDatasetId_
    }

-- | Multipart request metadata.
daiPayload :: Lens' DatasetsAllocateIds AllocateIdsRequest
daiPayload
  = lens _daiPayload (\ s a -> s{_daiPayload = a})

-- | Identifies the dataset.
daiDatasetId :: Lens' DatasetsAllocateIds Text
daiDatasetId
  = lens _daiDatasetId (\ s a -> s{_daiDatasetId = a})

instance GoogleRequest DatasetsAllocateIds where
        type Rs DatasetsAllocateIds = AllocateIdsResponse
        requestClient DatasetsAllocateIds{..}
          = go _daiDatasetId (Just AltJSON) _daiPayload
              datastoreService
          where go
                  = buildClient
                      (Proxy :: Proxy DatasetsAllocateIdsResource)
                      mempty
