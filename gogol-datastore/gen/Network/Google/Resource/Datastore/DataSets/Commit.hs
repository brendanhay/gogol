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
-- Module      : Network.Google.Resource.Datastore.DataSets.Commit
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
module Network.Google.Resource.Datastore.DataSets.Commit
    (
    -- * REST Resource
      DataSetsCommitResource

    -- * Creating a Request
    , dataSetsCommit
    , DataSetsCommit

    -- * Request Lenses
    , dscPayload
    , dscDataSetId
    ) where

import           Network.Google.Datastore.Types
import           Network.Google.Prelude

-- | A resource alias for @datastore.datasets.commit@ method which the
-- 'DataSetsCommit' request conforms to.
type DataSetsCommitResource =
     Capture "datasetId" Text :>
       "commit" :>
         QueryParam "alt" AltJSON :>
           ReqBody '[JSON] CommitRequest :>
             Post '[JSON] CommitResponse

-- | Commit a transaction, optionally creating, deleting or modifying some
-- entities.
--
-- /See:/ 'dataSetsCommit' smart constructor.
data DataSetsCommit = DataSetsCommit
    { _dscPayload   :: !CommitRequest
    , _dscDataSetId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DataSetsCommit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dscPayload'
--
-- * 'dscDataSetId'
dataSetsCommit
    :: CommitRequest -- ^ 'dscPayload'
    -> Text -- ^ 'dscDataSetId'
    -> DataSetsCommit
dataSetsCommit pDscPayload_ pDscDataSetId_ =
    DataSetsCommit
    { _dscPayload = pDscPayload_
    , _dscDataSetId = pDscDataSetId_
    }

-- | Multipart request metadata.
dscPayload :: Lens' DataSetsCommit CommitRequest
dscPayload
  = lens _dscPayload (\ s a -> s{_dscPayload = a})

-- | Identifies the dataset.
dscDataSetId :: Lens' DataSetsCommit Text
dscDataSetId
  = lens _dscDataSetId (\ s a -> s{_dscDataSetId = a})

instance GoogleRequest DataSetsCommit where
        type Rs DataSetsCommit = CommitResponse
        requestClient DataSetsCommit{..}
          = go _dscDataSetId (Just AltJSON) _dscPayload
              datastoreService
          where go
                  = buildClient (Proxy :: Proxy DataSetsCommitResource)
                      mempty
