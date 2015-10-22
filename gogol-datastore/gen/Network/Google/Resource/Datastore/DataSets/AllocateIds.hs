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
-- Module      : Network.Google.Resource.Datastore.DataSets.AllocateIds
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
module Network.Google.Resource.Datastore.DataSets.AllocateIds
    (
    -- * REST Resource
      DataSetsAllocateIdsResource

    -- * Creating a Request
    , dataSetsAllocateIds
    , DataSetsAllocateIds

    -- * Request Lenses
    , dsaiPayload
    , dsaiDataSetId
    ) where

import           Network.Google.Datastore.Types
import           Network.Google.Prelude

-- | A resource alias for @datastore.datasets.allocateIds@ method which the
-- 'DataSetsAllocateIds' request conforms to.
type DataSetsAllocateIdsResource =
     Capture "datasetId" Text :>
       "allocateIds" :>
         QueryParam "alt" AltJSON :>
           ReqBody '[JSON] AllocateIdsRequest :>
             Post '[JSON] AllocateIdsResponse

-- | Allocate IDs for incomplete keys (useful for referencing an entity
-- before it is inserted).
--
-- /See:/ 'dataSetsAllocateIds' smart constructor.
data DataSetsAllocateIds = DataSetsAllocateIds
    { _dsaiPayload   :: !AllocateIdsRequest
    , _dsaiDataSetId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DataSetsAllocateIds' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsaiPayload'
--
-- * 'dsaiDataSetId'
dataSetsAllocateIds
    :: AllocateIdsRequest -- ^ 'dsaiPayload'
    -> Text -- ^ 'dsaiDataSetId'
    -> DataSetsAllocateIds
dataSetsAllocateIds pDsaiPayload_ pDsaiDataSetId_ =
    DataSetsAllocateIds
    { _dsaiPayload = pDsaiPayload_
    , _dsaiDataSetId = pDsaiDataSetId_
    }

-- | Multipart request metadata.
dsaiPayload :: Lens' DataSetsAllocateIds AllocateIdsRequest
dsaiPayload
  = lens _dsaiPayload (\ s a -> s{_dsaiPayload = a})

-- | Identifies the dataset.
dsaiDataSetId :: Lens' DataSetsAllocateIds Text
dsaiDataSetId
  = lens _dsaiDataSetId
      (\ s a -> s{_dsaiDataSetId = a})

instance GoogleRequest DataSetsAllocateIds where
        type Rs DataSetsAllocateIds = AllocateIdsResponse
        requestClient DataSetsAllocateIds{..}
          = go _dsaiDataSetId (Just AltJSON) _dsaiPayload
              datastoreService
          where go
                  = buildClient
                      (Proxy :: Proxy DataSetsAllocateIdsResource)
                      mempty
