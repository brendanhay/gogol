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
-- Module      : Network.Google.Resource.Datastore.Datasets.BeginTransaction
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Begin a new transaction.
--
-- /See:/ <https://developers.google.com/datastore/ Google Cloud Datastore API Reference> for @DatastoreDatasetsBeginTransaction@.
module Network.Google.Resource.Datastore.Datasets.BeginTransaction
    (
    -- * REST Resource
      DatasetsBeginTransactionResource

    -- * Creating a Request
    , datasetsBeginTransaction'
    , DatasetsBeginTransaction'

    -- * Request Lenses
    , dbtPayload
    , dbtDatasetId
    ) where

import           Network.Google.Datastore.Types
import           Network.Google.Prelude

-- | A resource alias for @DatastoreDatasetsBeginTransaction@ method which the
-- 'DatasetsBeginTransaction'' request conforms to.
type DatasetsBeginTransactionResource =
     Capture "datasetId" Text :>
       "beginTransaction" :>
         QueryParam "alt" AltJSON :>
           ReqBody '[JSON] BeginTransactionRequest :>
             Post '[JSON] BeginTransactionResponse

-- | Begin a new transaction.
--
-- /See:/ 'datasetsBeginTransaction'' smart constructor.
data DatasetsBeginTransaction' = DatasetsBeginTransaction'
    { _dbtPayload   :: !BeginTransactionRequest
    , _dbtDatasetId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsBeginTransaction'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbtPayload'
--
-- * 'dbtDatasetId'
datasetsBeginTransaction'
    :: BeginTransactionRequest -- ^ 'payload'
    -> Text -- ^ 'datasetId'
    -> DatasetsBeginTransaction'
datasetsBeginTransaction' pDbtPayload_ pDbtDatasetId_ =
    DatasetsBeginTransaction'
    { _dbtPayload = pDbtPayload_
    , _dbtDatasetId = pDbtDatasetId_
    }

-- | Multipart request metadata.
dbtPayload :: Lens' DatasetsBeginTransaction' BeginTransactionRequest
dbtPayload
  = lens _dbtPayload (\ s a -> s{_dbtPayload = a})

-- | Identifies the dataset.
dbtDatasetId :: Lens' DatasetsBeginTransaction' Text
dbtDatasetId
  = lens _dbtDatasetId (\ s a -> s{_dbtDatasetId = a})

instance GoogleRequest DatasetsBeginTransaction'
         where
        type Rs DatasetsBeginTransaction' =
             BeginTransactionResponse
        requestClient DatasetsBeginTransaction'{..}
          = go _dbtDatasetId (Just AltJSON) _dbtPayload
              datastoreService
          where go
                  = buildClient
                      (Proxy :: Proxy DatasetsBeginTransactionResource)
                      mempty
