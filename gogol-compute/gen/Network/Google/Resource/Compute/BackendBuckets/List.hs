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
-- Module      : Network.Google.Resource.Compute.BackendBuckets.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of BackendBucket resources available to the specified
-- project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.backendBuckets.list@.
module Network.Google.Resource.Compute.BackendBuckets.List
    (
    -- * REST Resource
      BackendBucketsListResource

    -- * Creating a Request
    , backendBucketsList
    , BackendBucketsList

    -- * Request Lenses
    , bblOrderBy
    , bblProject
    , bblFilter
    , bblPageToken
    , bblMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.backendBuckets.list@ method which the
-- 'BackendBucketsList' request conforms to.
type BackendBucketsListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "backendBuckets" :>
                 QueryParam "orderBy" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] BackendBucketList

-- | Retrieves the list of BackendBucket resources available to the specified
-- project.
--
-- /See:/ 'backendBucketsList' smart constructor.
data BackendBucketsList =
  BackendBucketsList'
    { _bblOrderBy    :: !(Maybe Text)
    , _bblProject    :: !Text
    , _bblFilter     :: !(Maybe Text)
    , _bblPageToken  :: !(Maybe Text)
    , _bblMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BackendBucketsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bblOrderBy'
--
-- * 'bblProject'
--
-- * 'bblFilter'
--
-- * 'bblPageToken'
--
-- * 'bblMaxResults'
backendBucketsList
    :: Text -- ^ 'bblProject'
    -> BackendBucketsList
backendBucketsList pBblProject_ =
  BackendBucketsList'
    { _bblOrderBy = Nothing
    , _bblProject = pBblProject_
    , _bblFilter = Nothing
    , _bblPageToken = Nothing
    , _bblMaxResults = 500
    }


-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
bblOrderBy :: Lens' BackendBucketsList (Maybe Text)
bblOrderBy
  = lens _bblOrderBy (\ s a -> s{_bblOrderBy = a})

-- | Project ID for this request.
bblProject :: Lens' BackendBucketsList Text
bblProject
  = lens _bblProject (\ s a -> s{_bblProject = a})

-- | A filter expression that filters resources listed in the response. The
-- expression must specify the field name, a comparison operator, and the
-- value that you want to use for filtering. The value must be a string, a
-- number, or a boolean. The comparison operator must be either =, !=, >,
-- or \<. For example, if you are filtering Compute Engine instances, you
-- can exclude instances named example-instance by specifying name !=
-- example-instance. You can also filter nested fields. For example, you
-- could specify scheduling.automaticRestart = false to include instances
-- only if they are not scheduled for automatic restarts. You can use
-- filtering on nested fields to filter based on resource labels. To filter
-- on multiple expressions, provide each separate expression within
-- parentheses. For example, (scheduling.automaticRestart = true)
-- (cpuPlatform = \"Intel Skylake\"). By default, each expression is an AND
-- expression. However, you can include AND and OR expressions explicitly.
-- For example, (cpuPlatform = \"Intel Skylake\") OR (cpuPlatform = \"Intel
-- Broadwell\") AND (scheduling.automaticRestart = true).
bblFilter :: Lens' BackendBucketsList (Maybe Text)
bblFilter
  = lens _bblFilter (\ s a -> s{_bblFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
bblPageToken :: Lens' BackendBucketsList (Maybe Text)
bblPageToken
  = lens _bblPageToken (\ s a -> s{_bblPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests. Acceptable values are 0 to 500, inclusive.
-- (Default: 500)
bblMaxResults :: Lens' BackendBucketsList Word32
bblMaxResults
  = lens _bblMaxResults
      (\ s a -> s{_bblMaxResults = a})
      . _Coerce

instance GoogleRequest BackendBucketsList where
        type Rs BackendBucketsList = BackendBucketList
        type Scopes BackendBucketsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient BackendBucketsList'{..}
          = go _bblProject _bblOrderBy _bblFilter _bblPageToken
              (Just _bblMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy BackendBucketsListResource)
                      mempty
