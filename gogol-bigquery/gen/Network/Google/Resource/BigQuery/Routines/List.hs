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
-- Module      : Network.Google.Resource.BigQuery.Routines.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all routines in the specified dataset. Requires the READER dataset
-- role.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.routines.list@.
module Network.Google.Resource.BigQuery.Routines.List
    (
    -- * REST Resource
      RoutinesListResource

    -- * Creating a Request
    , routinesList
    , RoutinesList

    -- * Request Lenses
    , rlReadMask
    , rlDataSetId
    , rlFilter
    , rlPageToken
    , rlProjectId
    , rlMaxResults
    ) where

import Network.Google.BigQuery.Types
import Network.Google.Prelude

-- | A resource alias for @bigquery.routines.list@ method which the
-- 'RoutinesList' request conforms to.
type RoutinesListResource =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "datasets" :>
               Capture "datasetId" Text :>
                 "routines" :>
                   QueryParam "readMask" GFieldMask :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListRoutinesResponse

-- | Lists all routines in the specified dataset. Requires the READER dataset
-- role.
--
-- /See:/ 'routinesList' smart constructor.
data RoutinesList =
  RoutinesList'
    { _rlReadMask :: !(Maybe GFieldMask)
    , _rlDataSetId :: !Text
    , _rlFilter :: !(Maybe Text)
    , _rlPageToken :: !(Maybe Text)
    , _rlProjectId :: !Text
    , _rlMaxResults :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RoutinesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlReadMask'
--
-- * 'rlDataSetId'
--
-- * 'rlFilter'
--
-- * 'rlPageToken'
--
-- * 'rlProjectId'
--
-- * 'rlMaxResults'
routinesList
    :: Text -- ^ 'rlDataSetId'
    -> Text -- ^ 'rlProjectId'
    -> RoutinesList
routinesList pRlDataSetId_ pRlProjectId_ =
  RoutinesList'
    { _rlReadMask = Nothing
    , _rlDataSetId = pRlDataSetId_
    , _rlFilter = Nothing
    , _rlPageToken = Nothing
    , _rlProjectId = pRlProjectId_
    , _rlMaxResults = Nothing
    }


-- | If set, then only the Routine fields in the field mask, as well as
-- project_id, dataset_id and routine_id, are returned in the response. If
-- unset, then the following Routine fields are returned: etag, project_id,
-- dataset_id, routine_id, routine_type, creation_time, last_modified_time,
-- and language.
rlReadMask :: Lens' RoutinesList (Maybe GFieldMask)
rlReadMask
  = lens _rlReadMask (\ s a -> s{_rlReadMask = a})

-- | Required. Dataset ID of the routines to list
rlDataSetId :: Lens' RoutinesList Text
rlDataSetId
  = lens _rlDataSetId (\ s a -> s{_rlDataSetId = a})

-- | If set, then only the Routines matching this filter are returned. The
-- current supported form is either \"routine_type:\" or \"routineType:\",
-- where is a RoutineType enum. Example: \"routineType:SCALAR_FUNCTION\".
rlFilter :: Lens' RoutinesList (Maybe Text)
rlFilter = lens _rlFilter (\ s a -> s{_rlFilter = a})

-- | Page token, returned by a previous call, to request the next page of
-- results
rlPageToken :: Lens' RoutinesList (Maybe Text)
rlPageToken
  = lens _rlPageToken (\ s a -> s{_rlPageToken = a})

-- | Required. Project ID of the routines to list
rlProjectId :: Lens' RoutinesList Text
rlProjectId
  = lens _rlProjectId (\ s a -> s{_rlProjectId = a})

-- | The maximum number of results to return in a single response page.
-- Leverage the page tokens to iterate through the entire collection.
rlMaxResults :: Lens' RoutinesList (Maybe Word32)
rlMaxResults
  = lens _rlMaxResults (\ s a -> s{_rlMaxResults = a})
      . mapping _Coerce

instance GoogleRequest RoutinesList where
        type Rs RoutinesList = ListRoutinesResponse
        type Scopes RoutinesList =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient RoutinesList'{..}
          = go _rlProjectId _rlDataSetId _rlReadMask _rlFilter
              _rlPageToken
              _rlMaxResults
              (Just AltJSON)
              bigQueryService
          where go
                  = buildClient (Proxy :: Proxy RoutinesListResource)
                      mempty
