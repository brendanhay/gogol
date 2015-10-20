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
-- Module      : Network.Google.Resource.Datastore.Datasets.RunQuery
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Query for entities.
--
-- /See:/ <https://developers.google.com/datastore/ Google Cloud Datastore API Reference> for @datastore.datasets.runQuery@.
module Network.Google.Resource.Datastore.Datasets.RunQuery
    (
    -- * REST Resource
      DatasetsRunQueryResource

    -- * Creating a Request
    , datasetsRunQuery
    , DatasetsRunQuery

    -- * Request Lenses
    , drqPayload
    , drqDatasetId
    ) where

import           Network.Google.Datastore.Types
import           Network.Google.Prelude

-- | A resource alias for @datastore.datasets.runQuery@ method which the
-- 'DatasetsRunQuery' request conforms to.
type DatasetsRunQueryResource =
     Capture "datasetId" Text :>
       "runQuery" :>
         QueryParam "alt" AltJSON :>
           ReqBody '[JSON] RunQueryRequest :>
             Post '[JSON] RunQueryResponse

-- | Query for entities.
--
-- /See:/ 'datasetsRunQuery' smart constructor.
data DatasetsRunQuery = DatasetsRunQuery
    { _drqPayload   :: !RunQueryRequest
    , _drqDatasetId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsRunQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drqPayload'
--
-- * 'drqDatasetId'
datasetsRunQuery
    :: RunQueryRequest -- ^ 'drqPayload'
    -> Text -- ^ 'drqDatasetId'
    -> DatasetsRunQuery
datasetsRunQuery pDrqPayload_ pDrqDatasetId_ =
    DatasetsRunQuery
    { _drqPayload = pDrqPayload_
    , _drqDatasetId = pDrqDatasetId_
    }

-- | Multipart request metadata.
drqPayload :: Lens' DatasetsRunQuery RunQueryRequest
drqPayload
  = lens _drqPayload (\ s a -> s{_drqPayload = a})

-- | Identifies the dataset.
drqDatasetId :: Lens' DatasetsRunQuery Text
drqDatasetId
  = lens _drqDatasetId (\ s a -> s{_drqDatasetId = a})

instance GoogleRequest DatasetsRunQuery where
        type Rs DatasetsRunQuery = RunQueryResponse
        requestClient DatasetsRunQuery{..}
          = go _drqDatasetId (Just AltJSON) _drqPayload
              datastoreService
          where go
                  = buildClient
                      (Proxy :: Proxy DatasetsRunQueryResource)
                      mempty
