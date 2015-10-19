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
-- Module      : Network.Google.Resource.Datastore.Datasets.Commit
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Commit a transaction, optionally creating, deleting or modifying some
-- entities.
--
-- /See:/ <https://developers.google.com/datastore/ Google Cloud Datastore API Reference> for @datastore.datasets.commit@.
module Network.Google.Resource.Datastore.Datasets.Commit
    (
    -- * REST Resource
      DatasetsCommitResource

    -- * Creating a Request
    , datasetsCommit'
    , DatasetsCommit'

    -- * Request Lenses
    , dcPayload
    , dcDatasetId
    ) where

import           Network.Google.Datastore.Types
import           Network.Google.Prelude

-- | A resource alias for @datastore.datasets.commit@ method which the
-- 'DatasetsCommit'' request conforms to.
type DatasetsCommitResource =
     Capture "datasetId" Text :>
       "commit" :>
         QueryParam "alt" AltJSON :>
           ReqBody '[JSON] CommitRequest :>
             Post '[JSON] CommitResponse

-- | Commit a transaction, optionally creating, deleting or modifying some
-- entities.
--
-- /See:/ 'datasetsCommit'' smart constructor.
data DatasetsCommit' = DatasetsCommit'
    { _dcPayload   :: !CommitRequest
    , _dcDatasetId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsCommit'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcPayload'
--
-- * 'dcDatasetId'
datasetsCommit'
    :: CommitRequest -- ^ 'dcPayload'
    -> Text -- ^ 'dcDatasetId'
    -> DatasetsCommit'
datasetsCommit' pDcPayload_ pDcDatasetId_ =
    DatasetsCommit'
    { _dcPayload = pDcPayload_
    , _dcDatasetId = pDcDatasetId_
    }

-- | Multipart request metadata.
dcPayload :: Lens' DatasetsCommit' CommitRequest
dcPayload
  = lens _dcPayload (\ s a -> s{_dcPayload = a})

-- | Identifies the dataset.
dcDatasetId :: Lens' DatasetsCommit' Text
dcDatasetId
  = lens _dcDatasetId (\ s a -> s{_dcDatasetId = a})

instance GoogleRequest DatasetsCommit' where
        type Rs DatasetsCommit' = CommitResponse
        requestClient DatasetsCommit'{..}
          = go _dcDatasetId (Just AltJSON) _dcPayload
              datastoreService
          where go
                  = buildClient (Proxy :: Proxy DatasetsCommitResource)
                      mempty
