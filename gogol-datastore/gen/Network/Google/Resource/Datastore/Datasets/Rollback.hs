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
-- Module      : Network.Google.Resource.Datastore.Datasets.Rollback
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Roll back a transaction.
--
-- /See:/ <https://developers.google.com/datastore/ Google Cloud Datastore API Reference> for @DatastoreDatasetsRollback@.
module Network.Google.Resource.Datastore.Datasets.Rollback
    (
    -- * REST Resource
      DatasetsRollbackResource

    -- * Creating a Request
    , datasetsRollback'
    , DatasetsRollback'

    -- * Request Lenses
    , drPayload
    , drDatasetId
    ) where

import           Network.Google.Datastore.Types
import           Network.Google.Prelude

-- | A resource alias for @DatastoreDatasetsRollback@ method which the
-- 'DatasetsRollback'' request conforms to.
type DatasetsRollbackResource =
     Capture "datasetId" Text :>
       "rollback" :>
         QueryParam "alt" AltJSON :>
           ReqBody '[JSON] RollbackRequest :>
             Post '[JSON] RollbackResponse

-- | Roll back a transaction.
--
-- /See:/ 'datasetsRollback'' smart constructor.
data DatasetsRollback' = DatasetsRollback'
    { _drPayload   :: !RollbackRequest
    , _drDatasetId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsRollback'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drPayload'
--
-- * 'drDatasetId'
datasetsRollback'
    :: RollbackRequest -- ^ 'payload'
    -> Text -- ^ 'datasetId'
    -> DatasetsRollback'
datasetsRollback' pDrPayload_ pDrDatasetId_ =
    DatasetsRollback'
    { _drPayload = pDrPayload_
    , _drDatasetId = pDrDatasetId_
    }

-- | Multipart request metadata.
drPayload :: Lens' DatasetsRollback' RollbackRequest
drPayload
  = lens _drPayload (\ s a -> s{_drPayload = a})

-- | Identifies the dataset.
drDatasetId :: Lens' DatasetsRollback' Text
drDatasetId
  = lens _drDatasetId (\ s a -> s{_drDatasetId = a})

instance GoogleRequest DatasetsRollback' where
        type Rs DatasetsRollback' = RollbackResponse
        requestClient DatasetsRollback'{..}
          = go _drDatasetId (Just AltJSON) _drPayload
              datastoreService
          where go
                  = buildClient
                      (Proxy :: Proxy DatasetsRollbackResource)
                      mempty
