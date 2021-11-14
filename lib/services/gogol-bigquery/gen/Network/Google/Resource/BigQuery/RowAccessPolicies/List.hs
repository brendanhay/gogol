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
-- Module      : Network.Google.Resource.BigQuery.RowAccessPolicies.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all row access policies on the specified table.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.rowAccessPolicies.list@.
module Network.Google.Resource.BigQuery.RowAccessPolicies.List
    (
    -- * REST Resource
      RowAccessPoliciesListResource

    -- * Creating a Request
    , rowAccessPoliciesList
    , RowAccessPoliciesList

    -- * Request Lenses
    , raplDataSetId
    , raplPageToken
    , raplProjectId
    , raplTableId
    , raplPageSize
    ) where

import Network.Google.BigQuery.Types
import Network.Google.Prelude

-- | A resource alias for @bigquery.rowAccessPolicies.list@ method which the
-- 'RowAccessPoliciesList' request conforms to.
type RowAccessPoliciesListResource =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "datasets" :>
               Capture "datasetId" Text :>
                 "tables" :>
                   Capture "tableId" Text :>
                     "rowAccessPolicies" :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListRowAccessPoliciesResponse

-- | Lists all row access policies on the specified table.
--
-- /See:/ 'rowAccessPoliciesList' smart constructor.
data RowAccessPoliciesList =
  RowAccessPoliciesList'
    { _raplDataSetId :: !Text
    , _raplPageToken :: !(Maybe Text)
    , _raplProjectId :: !Text
    , _raplTableId :: !Text
    , _raplPageSize :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RowAccessPoliciesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'raplDataSetId'
--
-- * 'raplPageToken'
--
-- * 'raplProjectId'
--
-- * 'raplTableId'
--
-- * 'raplPageSize'
rowAccessPoliciesList
    :: Text -- ^ 'raplDataSetId'
    -> Text -- ^ 'raplProjectId'
    -> Text -- ^ 'raplTableId'
    -> RowAccessPoliciesList
rowAccessPoliciesList pRaplDataSetId_ pRaplProjectId_ pRaplTableId_ =
  RowAccessPoliciesList'
    { _raplDataSetId = pRaplDataSetId_
    , _raplPageToken = Nothing
    , _raplProjectId = pRaplProjectId_
    , _raplTableId = pRaplTableId_
    , _raplPageSize = Nothing
    }


-- | Required. Dataset ID of row access policies to list.
raplDataSetId :: Lens' RowAccessPoliciesList Text
raplDataSetId
  = lens _raplDataSetId
      (\ s a -> s{_raplDataSetId = a})

-- | Page token, returned by a previous call, to request the next page of
-- results.
raplPageToken :: Lens' RowAccessPoliciesList (Maybe Text)
raplPageToken
  = lens _raplPageToken
      (\ s a -> s{_raplPageToken = a})

-- | Required. Project ID of the row access policies to list.
raplProjectId :: Lens' RowAccessPoliciesList Text
raplProjectId
  = lens _raplProjectId
      (\ s a -> s{_raplProjectId = a})

-- | Required. Table ID of the table to list row access policies.
raplTableId :: Lens' RowAccessPoliciesList Text
raplTableId
  = lens _raplTableId (\ s a -> s{_raplTableId = a})

-- | The maximum number of results to return in a single response page.
-- Leverage the page tokens to iterate through the entire collection.
raplPageSize :: Lens' RowAccessPoliciesList (Maybe Int32)
raplPageSize
  = lens _raplPageSize (\ s a -> s{_raplPageSize = a})
      . mapping _Coerce

instance GoogleRequest RowAccessPoliciesList where
        type Rs RowAccessPoliciesList =
             ListRowAccessPoliciesResponse
        type Scopes RowAccessPoliciesList =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient RowAccessPoliciesList'{..}
          = go _raplProjectId _raplDataSetId _raplTableId
              _raplPageToken
              _raplPageSize
              (Just AltJSON)
              bigQueryService
          where go
                  = buildClient
                      (Proxy :: Proxy RowAccessPoliciesListResource)
                      mempty
