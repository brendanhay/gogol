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
-- Module      : Network.Google.Resource.Datastore.DataSets.BeginTransaction
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Begin a new transaction.
--
-- /See:/ <https://developers.google.com/datastore/ Google Cloud Datastore API Reference> for @datastore.datasets.beginTransaction@.
module Network.Google.Resource.Datastore.DataSets.BeginTransaction
    (
    -- * REST Resource
      DataSetsBeginTransactionResource

    -- * Creating a Request
    , dataSetsBeginTransaction
    , DataSetsBeginTransaction

    -- * Request Lenses
    , dsbtPayload
    , dsbtDataSetId
    ) where

import           Network.Google.Datastore.Types
import           Network.Google.Prelude

-- | A resource alias for @datastore.datasets.beginTransaction@ method which the
-- 'DataSetsBeginTransaction' request conforms to.
type DataSetsBeginTransactionResource =
     "datastore" :>
       "v1beta2" :>
         "datasets" :>
           Capture "datasetId" Text :>
             "beginTransaction" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] BeginTransactionRequest :>
                   Post '[JSON] BeginTransactionResponse

-- | Begin a new transaction.
--
-- /See:/ 'dataSetsBeginTransaction' smart constructor.
data DataSetsBeginTransaction = DataSetsBeginTransaction
    { _dsbtPayload   :: !BeginTransactionRequest
    , _dsbtDataSetId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DataSetsBeginTransaction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsbtPayload'
--
-- * 'dsbtDataSetId'
dataSetsBeginTransaction
    :: BeginTransactionRequest -- ^ 'dsbtPayload'
    -> Text -- ^ 'dsbtDataSetId'
    -> DataSetsBeginTransaction
dataSetsBeginTransaction pDsbtPayload_ pDsbtDataSetId_ =
    DataSetsBeginTransaction
    { _dsbtPayload = pDsbtPayload_
    , _dsbtDataSetId = pDsbtDataSetId_
    }

-- | Multipart request metadata.
dsbtPayload :: Lens' DataSetsBeginTransaction BeginTransactionRequest
dsbtPayload
  = lens _dsbtPayload (\ s a -> s{_dsbtPayload = a})

-- | Identifies the dataset.
dsbtDataSetId :: Lens' DataSetsBeginTransaction Text
dsbtDataSetId
  = lens _dsbtDataSetId
      (\ s a -> s{_dsbtDataSetId = a})

instance GoogleRequest DataSetsBeginTransaction where
        type Rs DataSetsBeginTransaction =
             BeginTransactionResponse
        requestClient DataSetsBeginTransaction{..}
          = go _dsbtDataSetId (Just AltJSON) _dsbtPayload
              datastoreService
          where go
                  = buildClient
                      (Proxy :: Proxy DataSetsBeginTransactionResource)
                      mempty
