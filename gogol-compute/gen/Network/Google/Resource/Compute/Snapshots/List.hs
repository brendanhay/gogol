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
-- Module      : Network.Google.Resource.Compute.Snapshots.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of Snapshot resources contained within the specified
-- project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.snapshots.list@.
module Network.Google.Resource.Compute.Snapshots.List
    (
    -- * REST Resource
      SnapshotsListResource

    -- * Creating a Request
    , snapshotsList
    , SnapshotsList

    -- * Request Lenses
    , snaReturnPartialSuccess
    , snaOrderBy
    , snaProject
    , snaFilter
    , snaPageToken
    , snaMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.snapshots.list@ method which the
-- 'SnapshotsList' request conforms to.
type SnapshotsListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "snapshots" :>
                 QueryParam "returnPartialSuccess" Bool :>
                   QueryParam "orderBy" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "alt" AltJSON :> Get '[JSON] SnapshotList

-- | Retrieves the list of Snapshot resources contained within the specified
-- project.
--
-- /See:/ 'snapshotsList' smart constructor.
data SnapshotsList =
  SnapshotsList'
    { _snaReturnPartialSuccess :: !(Maybe Bool)
    , _snaOrderBy :: !(Maybe Text)
    , _snaProject :: !Text
    , _snaFilter :: !(Maybe Text)
    , _snaPageToken :: !(Maybe Text)
    , _snaMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SnapshotsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'snaReturnPartialSuccess'
--
-- * 'snaOrderBy'
--
-- * 'snaProject'
--
-- * 'snaFilter'
--
-- * 'snaPageToken'
--
-- * 'snaMaxResults'
snapshotsList
    :: Text -- ^ 'snaProject'
    -> SnapshotsList
snapshotsList pSnaProject_ =
  SnapshotsList'
    { _snaReturnPartialSuccess = Nothing
    , _snaOrderBy = Nothing
    , _snaProject = pSnaProject_
    , _snaFilter = Nothing
    , _snaPageToken = Nothing
    , _snaMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
snaReturnPartialSuccess :: Lens' SnapshotsList (Maybe Bool)
snaReturnPartialSuccess
  = lens _snaReturnPartialSuccess
      (\ s a -> s{_snaReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
snaOrderBy :: Lens' SnapshotsList (Maybe Text)
snaOrderBy
  = lens _snaOrderBy (\ s a -> s{_snaOrderBy = a})

-- | Project ID for this request.
snaProject :: Lens' SnapshotsList Text
snaProject
  = lens _snaProject (\ s a -> s{_snaProject = a})

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
snaFilter :: Lens' SnapshotsList (Maybe Text)
snaFilter
  = lens _snaFilter (\ s a -> s{_snaFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
snaPageToken :: Lens' SnapshotsList (Maybe Text)
snaPageToken
  = lens _snaPageToken (\ s a -> s{_snaPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
snaMaxResults :: Lens' SnapshotsList Word32
snaMaxResults
  = lens _snaMaxResults
      (\ s a -> s{_snaMaxResults = a})
      . _Coerce

instance GoogleRequest SnapshotsList where
        type Rs SnapshotsList = SnapshotList
        type Scopes SnapshotsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient SnapshotsList'{..}
          = go _snaProject _snaReturnPartialSuccess _snaOrderBy
              _snaFilter
              _snaPageToken
              (Just _snaMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy SnapshotsListResource)
                      mempty
