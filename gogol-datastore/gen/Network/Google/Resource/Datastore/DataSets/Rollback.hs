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
-- Module      : Network.Google.Resource.Datastore.DataSets.Rollback
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Roll back a transaction.
--
-- /See:/ <https://developers.google.com/datastore/ Google Cloud Datastore API Reference> for @datastore.datasets.rollback@.
module Network.Google.Resource.Datastore.DataSets.Rollback
    (
    -- * REST Resource
      DataSetsRollbackResource

    -- * Creating a Request
    , dataSetsRollback
    , DataSetsRollback

    -- * Request Lenses
    , dsrPayload
    , dsrDataSetId
    ) where

import           Network.Google.Datastore.Types
import           Network.Google.Prelude

-- | A resource alias for @datastore.datasets.rollback@ method which the
-- 'DataSetsRollback' request conforms to.
type DataSetsRollbackResource =
     "datastore" :>
       "v1beta2" :>
         "datasets" :>
           Capture "datasetId" Text :>
             "rollback" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] RollbackRequest :>
                   Post '[JSON] RollbackResponse

-- | Roll back a transaction.
--
-- /See:/ 'dataSetsRollback' smart constructor.
data DataSetsRollback = DataSetsRollback
    { _dsrPayload   :: !RollbackRequest
    , _dsrDataSetId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DataSetsRollback' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrPayload'
--
-- * 'dsrDataSetId'
dataSetsRollback
    :: RollbackRequest -- ^ 'dsrPayload'
    -> Text -- ^ 'dsrDataSetId'
    -> DataSetsRollback
dataSetsRollback pDsrPayload_ pDsrDataSetId_ =
    DataSetsRollback
    { _dsrPayload = pDsrPayload_
    , _dsrDataSetId = pDsrDataSetId_
    }

-- | Multipart request metadata.
dsrPayload :: Lens' DataSetsRollback RollbackRequest
dsrPayload
  = lens _dsrPayload (\ s a -> s{_dsrPayload = a})

-- | Identifies the dataset.
dsrDataSetId :: Lens' DataSetsRollback Text
dsrDataSetId
  = lens _dsrDataSetId (\ s a -> s{_dsrDataSetId = a})

instance GoogleRequest DataSetsRollback where
        type Rs DataSetsRollback = RollbackResponse
        requestClient DataSetsRollback{..}
          = go _dsrDataSetId (Just AltJSON) _dsrPayload
              datastoreService
          where go
                  = buildClient
                      (Proxy :: Proxy DataSetsRollbackResource)
                      mempty
