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
-- Module      : Network.Google.Resource.Compute.Subnetworks.ListUsable
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an aggregated list of all usable subnetworks in the project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.subnetworks.listUsable@.
module Network.Google.Resource.Compute.Subnetworks.ListUsable
    (
    -- * REST Resource
      SubnetworksListUsableResource

    -- * Creating a Request
    , subnetworksListUsable
    , SubnetworksListUsable

    -- * Request Lenses
    , sluReturnPartialSuccess
    , sluOrderBy
    , sluProject
    , sluFilter
    , sluPageToken
    , sluMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.subnetworks.listUsable@ method which the
-- 'SubnetworksListUsable' request conforms to.
type SubnetworksListUsableResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "subnetworks" :>
                 "listUsable" :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] UsableSubnetworksAggregatedList

-- | Retrieves an aggregated list of all usable subnetworks in the project.
--
-- /See:/ 'subnetworksListUsable' smart constructor.
data SubnetworksListUsable =
  SubnetworksListUsable'
    { _sluReturnPartialSuccess :: !(Maybe Bool)
    , _sluOrderBy :: !(Maybe Text)
    , _sluProject :: !Text
    , _sluFilter :: !(Maybe Text)
    , _sluPageToken :: !(Maybe Text)
    , _sluMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SubnetworksListUsable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sluReturnPartialSuccess'
--
-- * 'sluOrderBy'
--
-- * 'sluProject'
--
-- * 'sluFilter'
--
-- * 'sluPageToken'
--
-- * 'sluMaxResults'
subnetworksListUsable
    :: Text -- ^ 'sluProject'
    -> SubnetworksListUsable
subnetworksListUsable pSluProject_ =
  SubnetworksListUsable'
    { _sluReturnPartialSuccess = Nothing
    , _sluOrderBy = Nothing
    , _sluProject = pSluProject_
    , _sluFilter = Nothing
    , _sluPageToken = Nothing
    , _sluMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
sluReturnPartialSuccess :: Lens' SubnetworksListUsable (Maybe Bool)
sluReturnPartialSuccess
  = lens _sluReturnPartialSuccess
      (\ s a -> s{_sluReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
sluOrderBy :: Lens' SubnetworksListUsable (Maybe Text)
sluOrderBy
  = lens _sluOrderBy (\ s a -> s{_sluOrderBy = a})

-- | Project ID for this request.
sluProject :: Lens' SubnetworksListUsable Text
sluProject
  = lens _sluProject (\ s a -> s{_sluProject = a})

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
sluFilter :: Lens' SubnetworksListUsable (Maybe Text)
sluFilter
  = lens _sluFilter (\ s a -> s{_sluFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
sluPageToken :: Lens' SubnetworksListUsable (Maybe Text)
sluPageToken
  = lens _sluPageToken (\ s a -> s{_sluPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
sluMaxResults :: Lens' SubnetworksListUsable Word32
sluMaxResults
  = lens _sluMaxResults
      (\ s a -> s{_sluMaxResults = a})
      . _Coerce

instance GoogleRequest SubnetworksListUsable where
        type Rs SubnetworksListUsable =
             UsableSubnetworksAggregatedList
        type Scopes SubnetworksListUsable =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient SubnetworksListUsable'{..}
          = go _sluProject _sluReturnPartialSuccess _sluOrderBy
              _sluFilter
              _sluPageToken
              (Just _sluMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy SubnetworksListUsableResource)
                      mempty
