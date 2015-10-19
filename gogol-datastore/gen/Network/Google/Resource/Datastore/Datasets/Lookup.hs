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
-- Module      : Network.Google.Resource.Datastore.Datasets.Lookup
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Look up some entities by key.
--
-- /See:/ <https://developers.google.com/datastore/ Google Cloud Datastore API Reference> for @DatastoreDatasetsLookup@.
module Network.Google.Resource.Datastore.Datasets.Lookup
    (
    -- * REST Resource
      DatasetsLookupResource

    -- * Creating a Request
    , datasetsLookup'
    , DatasetsLookup'

    -- * Request Lenses
    , dlPayload
    , dlDatasetId
    ) where

import           Network.Google.Datastore.Types
import           Network.Google.Prelude

-- | A resource alias for @DatastoreDatasetsLookup@ method which the
-- 'DatasetsLookup'' request conforms to.
type DatasetsLookupResource =
     Capture "datasetId" Text :>
       "lookup" :>
         QueryParam "alt" AltJSON :>
           ReqBody '[JSON] LookupRequest :>
             Post '[JSON] LookupResponse

-- | Look up some entities by key.
--
-- /See:/ 'datasetsLookup'' smart constructor.
data DatasetsLookup' = DatasetsLookup'
    { _dlPayload   :: !LookupRequest
    , _dlDatasetId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsLookup'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlPayload'
--
-- * 'dlDatasetId'
datasetsLookup'
    :: LookupRequest -- ^ 'payload'
    -> Text -- ^ 'datasetId'
    -> DatasetsLookup'
datasetsLookup' pDlPayload_ pDlDatasetId_ =
    DatasetsLookup'
    { _dlPayload = pDlPayload_
    , _dlDatasetId = pDlDatasetId_
    }

-- | Multipart request metadata.
dlPayload :: Lens' DatasetsLookup' LookupRequest
dlPayload
  = lens _dlPayload (\ s a -> s{_dlPayload = a})

-- | Identifies the dataset.
dlDatasetId :: Lens' DatasetsLookup' Text
dlDatasetId
  = lens _dlDatasetId (\ s a -> s{_dlDatasetId = a})

instance GoogleRequest DatasetsLookup' where
        type Rs DatasetsLookup' = LookupResponse
        requestClient DatasetsLookup'{..}
          = go _dlDatasetId (Just AltJSON) _dlPayload
              datastoreService
          where go
                  = buildClient (Proxy :: Proxy DatasetsLookupResource)
                      mempty
