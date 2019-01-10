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
-- Module      : Network.Google.Resource.Compute.TargetPools.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of target pools available to the specified project and
-- region.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetPools.list@.
module Network.Google.Resource.Compute.TargetPools.List
    (
    -- * REST Resource
      TargetPoolsListResource

    -- * Creating a Request
    , targetPoolsList
    , TargetPoolsList

    -- * Request Lenses
    , tplOrderBy
    , tplProject
    , tplFilter
    , tplRegion
    , tplPageToken
    , tplMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.targetPools.list@ method which the
-- 'TargetPoolsList' request conforms to.
type TargetPoolsListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "targetPools" :>
                   QueryParam "orderBy" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] TargetPoolList

-- | Retrieves a list of target pools available to the specified project and
-- region.
--
-- /See:/ 'targetPoolsList' smart constructor.
data TargetPoolsList = TargetPoolsList'
    { _tplOrderBy    :: !(Maybe Text)
    , _tplProject    :: !Text
    , _tplFilter     :: !(Maybe Text)
    , _tplRegion     :: !Text
    , _tplPageToken  :: !(Maybe Text)
    , _tplMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPoolsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tplOrderBy'
--
-- * 'tplProject'
--
-- * 'tplFilter'
--
-- * 'tplRegion'
--
-- * 'tplPageToken'
--
-- * 'tplMaxResults'
targetPoolsList
    :: Text -- ^ 'tplProject'
    -> Text -- ^ 'tplRegion'
    -> TargetPoolsList
targetPoolsList pTplProject_ pTplRegion_ =
    TargetPoolsList'
    { _tplOrderBy = Nothing
    , _tplProject = pTplProject_
    , _tplFilter = Nothing
    , _tplRegion = pTplRegion_
    , _tplPageToken = Nothing
    , _tplMaxResults = 500
    }

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
tplOrderBy :: Lens' TargetPoolsList (Maybe Text)
tplOrderBy
  = lens _tplOrderBy (\ s a -> s{_tplOrderBy = a})

-- | Project ID for this request.
tplProject :: Lens' TargetPoolsList Text
tplProject
  = lens _tplProject (\ s a -> s{_tplProject = a})

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
tplFilter :: Lens' TargetPoolsList (Maybe Text)
tplFilter
  = lens _tplFilter (\ s a -> s{_tplFilter = a})

-- | Name of the region scoping this request.
tplRegion :: Lens' TargetPoolsList Text
tplRegion
  = lens _tplRegion (\ s a -> s{_tplRegion = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
tplPageToken :: Lens' TargetPoolsList (Maybe Text)
tplPageToken
  = lens _tplPageToken (\ s a -> s{_tplPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests. Acceptable values are 0 to 500, inclusive.
-- (Default: 500)
tplMaxResults :: Lens' TargetPoolsList Word32
tplMaxResults
  = lens _tplMaxResults
      (\ s a -> s{_tplMaxResults = a})
      . _Coerce

instance GoogleRequest TargetPoolsList where
        type Rs TargetPoolsList = TargetPoolList
        type Scopes TargetPoolsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient TargetPoolsList'{..}
          = go _tplProject _tplRegion _tplOrderBy _tplFilter
              _tplPageToken
              (Just _tplMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetPoolsListResource)
                      mempty
