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
-- Module      : Network.Google.Resource.BigQuery.Routines.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the routine specified by routineId from the dataset.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.routines.delete@.
module Network.Google.Resource.BigQuery.Routines.Delete
    (
    -- * REST Resource
      RoutinesDeleteResource

    -- * Creating a Request
    , routinesDelete
    , RoutinesDelete

    -- * Request Lenses
    , rdDataSetId
    , rdProjectId
    , rdRoutineId
    ) where

import Network.Google.BigQuery.Types
import Network.Google.Prelude

-- | A resource alias for @bigquery.routines.delete@ method which the
-- 'RoutinesDelete' request conforms to.
type RoutinesDeleteResource =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "datasets" :>
               Capture "datasetId" Text :>
                 "routines" :>
                   Capture "routineId" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes the routine specified by routineId from the dataset.
--
-- /See:/ 'routinesDelete' smart constructor.
data RoutinesDelete =
  RoutinesDelete'
    { _rdDataSetId :: !Text
    , _rdProjectId :: !Text
    , _rdRoutineId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RoutinesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdDataSetId'
--
-- * 'rdProjectId'
--
-- * 'rdRoutineId'
routinesDelete
    :: Text -- ^ 'rdDataSetId'
    -> Text -- ^ 'rdProjectId'
    -> Text -- ^ 'rdRoutineId'
    -> RoutinesDelete
routinesDelete pRdDataSetId_ pRdProjectId_ pRdRoutineId_ =
  RoutinesDelete'
    { _rdDataSetId = pRdDataSetId_
    , _rdProjectId = pRdProjectId_
    , _rdRoutineId = pRdRoutineId_
    }


-- | Required. Dataset ID of the routine to delete
rdDataSetId :: Lens' RoutinesDelete Text
rdDataSetId
  = lens _rdDataSetId (\ s a -> s{_rdDataSetId = a})

-- | Required. Project ID of the routine to delete
rdProjectId :: Lens' RoutinesDelete Text
rdProjectId
  = lens _rdProjectId (\ s a -> s{_rdProjectId = a})

-- | Required. Routine ID of the routine to delete
rdRoutineId :: Lens' RoutinesDelete Text
rdRoutineId
  = lens _rdRoutineId (\ s a -> s{_rdRoutineId = a})

instance GoogleRequest RoutinesDelete where
        type Rs RoutinesDelete = ()
        type Scopes RoutinesDelete =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient RoutinesDelete'{..}
          = go _rdProjectId _rdDataSetId _rdRoutineId
              (Just AltJSON)
              bigQueryService
          where go
                  = buildClient (Proxy :: Proxy RoutinesDeleteResource)
                      mempty
