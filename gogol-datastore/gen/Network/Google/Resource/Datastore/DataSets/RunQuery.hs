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
-- Module      : Network.Google.Resource.Datastore.DataSets.RunQuery
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Query for entities.
--
-- /See:/ <https://developers.google.com/datastore/ Google Cloud Datastore API Reference> for @datastore.datasets.runQuery@.
module Network.Google.Resource.Datastore.DataSets.RunQuery
    (
    -- * REST Resource
      DataSetsRunQueryResource

    -- * Creating a Request
    , dataSetsRunQuery
    , DataSetsRunQuery

    -- * Request Lenses
    , dsrqPayload
    , dsrqDataSetId
    ) where

import           Network.Google.Datastore.Types
import           Network.Google.Prelude

-- | A resource alias for @datastore.datasets.runQuery@ method which the
-- 'DataSetsRunQuery' request conforms to.
type DataSetsRunQueryResource =
     "datastore" :>
       "v1beta2" :>
         "datasets" :>
           Capture "datasetId" Text :>
             "runQuery" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] RunQueryRequest :>
                   Post '[JSON] RunQueryResponse

-- | Query for entities.
--
-- /See:/ 'dataSetsRunQuery' smart constructor.
data DataSetsRunQuery = DataSetsRunQuery
    { _dsrqPayload   :: !RunQueryRequest
    , _dsrqDataSetId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DataSetsRunQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrqPayload'
--
-- * 'dsrqDataSetId'
dataSetsRunQuery
    :: RunQueryRequest -- ^ 'dsrqPayload'
    -> Text -- ^ 'dsrqDataSetId'
    -> DataSetsRunQuery
dataSetsRunQuery pDsrqPayload_ pDsrqDataSetId_ =
    DataSetsRunQuery
    { _dsrqPayload = pDsrqPayload_
    , _dsrqDataSetId = pDsrqDataSetId_
    }

-- | Multipart request metadata.
dsrqPayload :: Lens' DataSetsRunQuery RunQueryRequest
dsrqPayload
  = lens _dsrqPayload (\ s a -> s{_dsrqPayload = a})

-- | Identifies the dataset.
dsrqDataSetId :: Lens' DataSetsRunQuery Text
dsrqDataSetId
  = lens _dsrqDataSetId
      (\ s a -> s{_dsrqDataSetId = a})

instance GoogleRequest DataSetsRunQuery where
        type Rs DataSetsRunQuery = RunQueryResponse
        requestClient DataSetsRunQuery{..}
          = go _dsrqDataSetId (Just AltJSON) _dsrqPayload
              datastoreService
          where go
                  = buildClient
                      (Proxy :: Proxy DataSetsRunQueryResource)
                      mempty
