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
-- Module      : Network.Google.Resource.Datastore.DataSets.Lookup
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Look up some entities by key.
--
-- /See:/ <https://developers.google.com/datastore/ Google Cloud Datastore API Reference> for @datastore.datasets.lookup@.
module Network.Google.Resource.Datastore.DataSets.Lookup
    (
    -- * REST Resource
      DataSetsLookupResource

    -- * Creating a Request
    , dataSetsLookup
    , DataSetsLookup

    -- * Request Lenses
    , dslPayload
    , dslDataSetId
    ) where

import           Network.Google.Datastore.Types
import           Network.Google.Prelude

-- | A resource alias for @datastore.datasets.lookup@ method which the
-- 'DataSetsLookup' request conforms to.
type DataSetsLookupResource =
     "datastore" :>
       "v1beta2" :>
         "datasets" :>
           Capture "datasetId" Text :>
             "lookup" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] LookupRequest :>
                   Post '[JSON] LookupResponse

-- | Look up some entities by key.
--
-- /See:/ 'dataSetsLookup' smart constructor.
data DataSetsLookup = DataSetsLookup
    { _dslPayload   :: !LookupRequest
    , _dslDataSetId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DataSetsLookup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dslPayload'
--
-- * 'dslDataSetId'
dataSetsLookup
    :: LookupRequest -- ^ 'dslPayload'
    -> Text -- ^ 'dslDataSetId'
    -> DataSetsLookup
dataSetsLookup pDslPayload_ pDslDataSetId_ =
    DataSetsLookup
    { _dslPayload = pDslPayload_
    , _dslDataSetId = pDslDataSetId_
    }

-- | Multipart request metadata.
dslPayload :: Lens' DataSetsLookup LookupRequest
dslPayload
  = lens _dslPayload (\ s a -> s{_dslPayload = a})

-- | Identifies the dataset.
dslDataSetId :: Lens' DataSetsLookup Text
dslDataSetId
  = lens _dslDataSetId (\ s a -> s{_dslDataSetId = a})

instance GoogleRequest DataSetsLookup where
        type Rs DataSetsLookup = LookupResponse
        requestClient DataSetsLookup{..}
          = go _dslDataSetId (Just AltJSON) _dslPayload
              datastoreService
          where go
                  = buildClient (Proxy :: Proxy DataSetsLookupResource)
                      mempty
