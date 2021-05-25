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
-- Module      : Network.Google.Resource.Compute.RegionCommitments.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of commitments contained within the specified region.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionCommitments.list@.
module Network.Google.Resource.Compute.RegionCommitments.List
    (
    -- * REST Resource
      RegionCommitmentsListResource

    -- * Creating a Request
    , regionCommitmentsList
    , RegionCommitmentsList

    -- * Request Lenses
    , rclReturnPartialSuccess
    , rclOrderBy
    , rclProject
    , rclFilter
    , rclRegion
    , rclPageToken
    , rclMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionCommitments.list@ method which the
-- 'RegionCommitmentsList' request conforms to.
type RegionCommitmentsListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "commitments" :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] CommitmentList

-- | Retrieves a list of commitments contained within the specified region.
--
-- /See:/ 'regionCommitmentsList' smart constructor.
data RegionCommitmentsList =
  RegionCommitmentsList'
    { _rclReturnPartialSuccess :: !(Maybe Bool)
    , _rclOrderBy :: !(Maybe Text)
    , _rclProject :: !Text
    , _rclFilter :: !(Maybe Text)
    , _rclRegion :: !Text
    , _rclPageToken :: !(Maybe Text)
    , _rclMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionCommitmentsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rclReturnPartialSuccess'
--
-- * 'rclOrderBy'
--
-- * 'rclProject'
--
-- * 'rclFilter'
--
-- * 'rclRegion'
--
-- * 'rclPageToken'
--
-- * 'rclMaxResults'
regionCommitmentsList
    :: Text -- ^ 'rclProject'
    -> Text -- ^ 'rclRegion'
    -> RegionCommitmentsList
regionCommitmentsList pRclProject_ pRclRegion_ =
  RegionCommitmentsList'
    { _rclReturnPartialSuccess = Nothing
    , _rclOrderBy = Nothing
    , _rclProject = pRclProject_
    , _rclFilter = Nothing
    , _rclRegion = pRclRegion_
    , _rclPageToken = Nothing
    , _rclMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
rclReturnPartialSuccess :: Lens' RegionCommitmentsList (Maybe Bool)
rclReturnPartialSuccess
  = lens _rclReturnPartialSuccess
      (\ s a -> s{_rclReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
rclOrderBy :: Lens' RegionCommitmentsList (Maybe Text)
rclOrderBy
  = lens _rclOrderBy (\ s a -> s{_rclOrderBy = a})

-- | Project ID for this request.
rclProject :: Lens' RegionCommitmentsList Text
rclProject
  = lens _rclProject (\ s a -> s{_rclProject = a})

-- | A filter expression that filters resources listed in the response. The
-- expression must specify the field name, a comparison operator, and the
-- value that you want to use for filtering. The value must be a string, a
-- number, or a boolean. The comparison operator must be either \`=\`,
-- \`!=\`, \`>\`, or \`\<\`. For example, if you are filtering Compute
-- Engine instances, you can exclude instances named \`example-instance\`
-- by specifying \`name != example-instance\`. You can also filter nested
-- fields. For example, you could specify \`scheduling.automaticRestart =
-- false\` to include instances only if they are not scheduled for
-- automatic restarts. You can use filtering on nested fields to filter
-- based on resource labels. To filter on multiple expressions, provide
-- each separate expression within parentheses. For example: \`\`\`
-- (scheduling.automaticRestart = true) (cpuPlatform = \"Intel Skylake\")
-- \`\`\` By default, each expression is an \`AND\` expression. However,
-- you can include \`AND\` and \`OR\` expressions explicitly. For example:
-- \`\`\` (cpuPlatform = \"Intel Skylake\") OR (cpuPlatform = \"Intel
-- Broadwell\") AND (scheduling.automaticRestart = true) \`\`\`
rclFilter :: Lens' RegionCommitmentsList (Maybe Text)
rclFilter
  = lens _rclFilter (\ s a -> s{_rclFilter = a})

-- | Name of the region for this request.
rclRegion :: Lens' RegionCommitmentsList Text
rclRegion
  = lens _rclRegion (\ s a -> s{_rclRegion = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
rclPageToken :: Lens' RegionCommitmentsList (Maybe Text)
rclPageToken
  = lens _rclPageToken (\ s a -> s{_rclPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
rclMaxResults :: Lens' RegionCommitmentsList Word32
rclMaxResults
  = lens _rclMaxResults
      (\ s a -> s{_rclMaxResults = a})
      . _Coerce

instance GoogleRequest RegionCommitmentsList where
        type Rs RegionCommitmentsList = CommitmentList
        type Scopes RegionCommitmentsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionCommitmentsList'{..}
          = go _rclProject _rclRegion _rclReturnPartialSuccess
              _rclOrderBy
              _rclFilter
              _rclPageToken
              (Just _rclMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionCommitmentsListResource)
                      mempty
