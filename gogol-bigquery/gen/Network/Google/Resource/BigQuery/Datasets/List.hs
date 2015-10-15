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
-- Module      : Network.Google.Resource.BigQuery.Datasets.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all datasets in the specified project to which you have been
-- granted the READER dataset role.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @BigQueryDatasetsList@.
module Network.Google.Resource.BigQuery.Datasets.List
    (
    -- * REST Resource
      DatasetsListResource

    -- * Creating a Request
    , datasetsList'
    , DatasetsList'

    -- * Request Lenses
    , dlAll
    , dlPageToken
    , dlProjectId
    , dlMaxResults
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigQueryDatasetsList@ method which the
-- 'DatasetsList'' request conforms to.
type DatasetsListResource =
     "projects" :>
       Capture "projectId" Text :>
         "datasets" :>
           QueryParam "all" Bool :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "alt" AltJSON :> Get '[JSON] DatasetList

-- | Lists all datasets in the specified project to which you have been
-- granted the READER dataset role.
--
-- /See:/ 'datasetsList'' smart constructor.
data DatasetsList' = DatasetsList'
    { _dlAll        :: !(Maybe Bool)
    , _dlPageToken  :: !(Maybe Text)
    , _dlProjectId  :: !Text
    , _dlMaxResults :: !(Maybe Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlAll'
--
-- * 'dlPageToken'
--
-- * 'dlProjectId'
--
-- * 'dlMaxResults'
datasetsList'
    :: Text -- ^ 'projectId'
    -> DatasetsList'
datasetsList' pDlProjectId_ =
    DatasetsList'
    { _dlAll = Nothing
    , _dlPageToken = Nothing
    , _dlProjectId = pDlProjectId_
    , _dlMaxResults = Nothing
    }

-- | Whether to list all datasets, including hidden ones
dlAll :: Lens' DatasetsList' (Maybe Bool)
dlAll = lens _dlAll (\ s a -> s{_dlAll = a})

-- | Page token, returned by a previous call, to request the next page of
-- results
dlPageToken :: Lens' DatasetsList' (Maybe Text)
dlPageToken
  = lens _dlPageToken (\ s a -> s{_dlPageToken = a})

-- | Project ID of the datasets to be listed
dlProjectId :: Lens' DatasetsList' Text
dlProjectId
  = lens _dlProjectId (\ s a -> s{_dlProjectId = a})

-- | The maximum number of results to return
dlMaxResults :: Lens' DatasetsList' (Maybe Word32)
dlMaxResults
  = lens _dlMaxResults (\ s a -> s{_dlMaxResults = a})

instance GoogleRequest DatasetsList' where
        type Rs DatasetsList' = DatasetList
        requestClient DatasetsList'{..}
          = go _dlProjectId _dlAll _dlPageToken _dlMaxResults
              (Just AltJSON)
              bigQuery
          where go
                  = buildClient (Proxy :: Proxy DatasetsListResource)
                      mempty
