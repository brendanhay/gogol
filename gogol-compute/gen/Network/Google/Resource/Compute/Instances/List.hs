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
-- Module      : Network.Google.Resource.Compute.Instances.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of instances contained within the specified zone.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.list@.
module Network.Google.Resource.Compute.Instances.List
    (
    -- * REST Resource
      InstancesListResource

    -- * Creating a Request
    , instancesList
    , InstancesList

    -- * Request Lenses
    , il1OrderBy
    , il1Project
    , il1Zone
    , il1Filter
    , il1PageToken
    , il1MaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instances.list@ method which the
-- 'InstancesList' request conforms to.
type InstancesListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   QueryParam "orderBy" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "alt" AltJSON :> Get '[JSON] InstanceList

-- | Retrieves the list of instances contained within the specified zone.
--
-- /See:/ 'instancesList' smart constructor.
data InstancesList = InstancesList'
    { _il1OrderBy    :: !(Maybe Text)
    , _il1Project    :: !Text
    , _il1Zone       :: !Text
    , _il1Filter     :: !(Maybe Text)
    , _il1PageToken  :: !(Maybe Text)
    , _il1MaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'il1OrderBy'
--
-- * 'il1Project'
--
-- * 'il1Zone'
--
-- * 'il1Filter'
--
-- * 'il1PageToken'
--
-- * 'il1MaxResults'
instancesList
    :: Text -- ^ 'il1Project'
    -> Text -- ^ 'il1Zone'
    -> InstancesList
instancesList pIl1Project_ pIl1Zone_ =
    InstancesList'
    { _il1OrderBy = Nothing
    , _il1Project = pIl1Project_
    , _il1Zone = pIl1Zone_
    , _il1Filter = Nothing
    , _il1PageToken = Nothing
    , _il1MaxResults = 500
    }

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
il1OrderBy :: Lens' InstancesList (Maybe Text)
il1OrderBy
  = lens _il1OrderBy (\ s a -> s{_il1OrderBy = a})

-- | Project ID for this request.
il1Project :: Lens' InstancesList Text
il1Project
  = lens _il1Project (\ s a -> s{_il1Project = a})

-- | The name of the zone for this request.
il1Zone :: Lens' InstancesList Text
il1Zone = lens _il1Zone (\ s a -> s{_il1Zone = a})

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
il1Filter :: Lens' InstancesList (Maybe Text)
il1Filter
  = lens _il1Filter (\ s a -> s{_il1Filter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
il1PageToken :: Lens' InstancesList (Maybe Text)
il1PageToken
  = lens _il1PageToken (\ s a -> s{_il1PageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests. Acceptable values are 0 to 500, inclusive.
-- (Default: 500)
il1MaxResults :: Lens' InstancesList Word32
il1MaxResults
  = lens _il1MaxResults
      (\ s a -> s{_il1MaxResults = a})
      . _Coerce

instance GoogleRequest InstancesList where
        type Rs InstancesList = InstanceList
        type Scopes InstancesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient InstancesList'{..}
          = go _il1Project _il1Zone _il1OrderBy _il1Filter
              _il1PageToken
              (Just _il1MaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy InstancesListResource)
                      mempty
