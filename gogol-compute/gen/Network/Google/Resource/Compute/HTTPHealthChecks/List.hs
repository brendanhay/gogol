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
-- Module      : Network.Google.Resource.Compute.HTTPHealthChecks.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of HttpHealthCheck resources available to the
-- specified project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.httpHealthChecks.list@.
module Network.Google.Resource.Compute.HTTPHealthChecks.List
    (
    -- * REST Resource
      HTTPHealthChecksListResource

    -- * Creating a Request
    , hTTPHealthChecksList
    , HTTPHealthChecksList

    -- * Request Lenses
    , httphclOrderBy
    , httphclProject
    , httphclFilter
    , httphclPageToken
    , httphclMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.httpHealthChecks.list@ method which the
-- 'HTTPHealthChecksList' request conforms to.
type HTTPHealthChecksListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "httpHealthChecks" :>
                 QueryParam "orderBy" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] HTTPHealthCheckList

-- | Retrieves the list of HttpHealthCheck resources available to the
-- specified project.
--
-- /See:/ 'hTTPHealthChecksList' smart constructor.
data HTTPHealthChecksList =
  HTTPHealthChecksList'
    { _httphclOrderBy    :: !(Maybe Text)
    , _httphclProject    :: !Text
    , _httphclFilter     :: !(Maybe Text)
    , _httphclPageToken  :: !(Maybe Text)
    , _httphclMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'HTTPHealthChecksList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httphclOrderBy'
--
-- * 'httphclProject'
--
-- * 'httphclFilter'
--
-- * 'httphclPageToken'
--
-- * 'httphclMaxResults'
hTTPHealthChecksList
    :: Text -- ^ 'httphclProject'
    -> HTTPHealthChecksList
hTTPHealthChecksList pHttphclProject_ =
  HTTPHealthChecksList'
    { _httphclOrderBy = Nothing
    , _httphclProject = pHttphclProject_
    , _httphclFilter = Nothing
    , _httphclPageToken = Nothing
    , _httphclMaxResults = 500
    }

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
httphclOrderBy :: Lens' HTTPHealthChecksList (Maybe Text)
httphclOrderBy
  = lens _httphclOrderBy
      (\ s a -> s{_httphclOrderBy = a})

-- | Project ID for this request.
httphclProject :: Lens' HTTPHealthChecksList Text
httphclProject
  = lens _httphclProject
      (\ s a -> s{_httphclProject = a})

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
httphclFilter :: Lens' HTTPHealthChecksList (Maybe Text)
httphclFilter
  = lens _httphclFilter
      (\ s a -> s{_httphclFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
httphclPageToken :: Lens' HTTPHealthChecksList (Maybe Text)
httphclPageToken
  = lens _httphclPageToken
      (\ s a -> s{_httphclPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests. Acceptable values are 0 to 500, inclusive.
-- (Default: 500)
httphclMaxResults :: Lens' HTTPHealthChecksList Word32
httphclMaxResults
  = lens _httphclMaxResults
      (\ s a -> s{_httphclMaxResults = a})
      . _Coerce

instance GoogleRequest HTTPHealthChecksList where
        type Rs HTTPHealthChecksList = HTTPHealthCheckList
        type Scopes HTTPHealthChecksList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient HTTPHealthChecksList'{..}
          = go _httphclProject _httphclOrderBy _httphclFilter
              _httphclPageToken
              (Just _httphclMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy HTTPHealthChecksListResource)
                      mempty
