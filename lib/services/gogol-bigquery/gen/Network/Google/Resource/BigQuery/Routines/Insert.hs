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
-- Module      : Network.Google.Resource.BigQuery.Routines.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new routine in the dataset.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.routines.insert@.
module Network.Google.Resource.BigQuery.Routines.Insert
    (
    -- * REST Resource
      RoutinesInsertResource

    -- * Creating a Request
    , routinesInsert
    , RoutinesInsert

    -- * Request Lenses
    , riPayload
    , riDataSetId
    , riProjectId
    ) where

import Network.Google.BigQuery.Types
import Network.Google.Prelude

-- | A resource alias for @bigquery.routines.insert@ method which the
-- 'RoutinesInsert' request conforms to.
type RoutinesInsertResource =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "datasets" :>
               Capture "datasetId" Text :>
                 "routines" :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Routine :> Post '[JSON] Routine

-- | Creates a new routine in the dataset.
--
-- /See:/ 'routinesInsert' smart constructor.
data RoutinesInsert =
  RoutinesInsert'
    { _riPayload :: !Routine
    , _riDataSetId :: !Text
    , _riProjectId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RoutinesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riPayload'
--
-- * 'riDataSetId'
--
-- * 'riProjectId'
routinesInsert
    :: Routine -- ^ 'riPayload'
    -> Text -- ^ 'riDataSetId'
    -> Text -- ^ 'riProjectId'
    -> RoutinesInsert
routinesInsert pRiPayload_ pRiDataSetId_ pRiProjectId_ =
  RoutinesInsert'
    { _riPayload = pRiPayload_
    , _riDataSetId = pRiDataSetId_
    , _riProjectId = pRiProjectId_
    }


-- | Multipart request metadata.
riPayload :: Lens' RoutinesInsert Routine
riPayload
  = lens _riPayload (\ s a -> s{_riPayload = a})

-- | Required. Dataset ID of the new routine
riDataSetId :: Lens' RoutinesInsert Text
riDataSetId
  = lens _riDataSetId (\ s a -> s{_riDataSetId = a})

-- | Required. Project ID of the new routine
riProjectId :: Lens' RoutinesInsert Text
riProjectId
  = lens _riProjectId (\ s a -> s{_riProjectId = a})

instance GoogleRequest RoutinesInsert where
        type Rs RoutinesInsert = Routine
        type Scopes RoutinesInsert =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient RoutinesInsert'{..}
          = go _riProjectId _riDataSetId (Just AltJSON)
              _riPayload
              bigQueryService
          where go
                  = buildClient (Proxy :: Proxy RoutinesInsertResource)
                      mempty
