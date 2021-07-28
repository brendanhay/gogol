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
-- Module      : Network.Google.Resource.Compute.MachineTypes.AggregatedList
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an aggregated list of machine types.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.machineTypes.aggregatedList@.
module Network.Google.Resource.Compute.MachineTypes.AggregatedList
    (
    -- * REST Resource
      MachineTypesAggregatedListResource

    -- * Creating a Request
    , machineTypesAggregatedList
    , MachineTypesAggregatedList

    -- * Request Lenses
    , mtalIncludeAllScopes
    , mtalReturnPartialSuccess
    , mtalOrderBy
    , mtalProject
    , mtalFilter
    , mtalPageToken
    , mtalMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.machineTypes.aggregatedList@ method which the
-- 'MachineTypesAggregatedList' request conforms to.
type MachineTypesAggregatedListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "machineTypes" :>
                 QueryParam "includeAllScopes" Bool :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] MachineTypeAggregatedList

-- | Retrieves an aggregated list of machine types.
--
-- /See:/ 'machineTypesAggregatedList' smart constructor.
data MachineTypesAggregatedList =
  MachineTypesAggregatedList'
    { _mtalIncludeAllScopes :: !(Maybe Bool)
    , _mtalReturnPartialSuccess :: !(Maybe Bool)
    , _mtalOrderBy :: !(Maybe Text)
    , _mtalProject :: !Text
    , _mtalFilter :: !(Maybe Text)
    , _mtalPageToken :: !(Maybe Text)
    , _mtalMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MachineTypesAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtalIncludeAllScopes'
--
-- * 'mtalReturnPartialSuccess'
--
-- * 'mtalOrderBy'
--
-- * 'mtalProject'
--
-- * 'mtalFilter'
--
-- * 'mtalPageToken'
--
-- * 'mtalMaxResults'
machineTypesAggregatedList
    :: Text -- ^ 'mtalProject'
    -> MachineTypesAggregatedList
machineTypesAggregatedList pMtalProject_ =
  MachineTypesAggregatedList'
    { _mtalIncludeAllScopes = Nothing
    , _mtalReturnPartialSuccess = Nothing
    , _mtalOrderBy = Nothing
    , _mtalProject = pMtalProject_
    , _mtalFilter = Nothing
    , _mtalPageToken = Nothing
    , _mtalMaxResults = 500
    }


-- | Indicates whether every visible scope for each scope type (zone, region,
-- global) should be included in the response. For new resource types added
-- after this field, the flag has no effect as new resource types will
-- always include every visible scope for each scope type in response. For
-- resource types which predate this field, if this flag is omitted or
-- false, only scopes of the scope types where the resource type is
-- expected to be found will be included.
mtalIncludeAllScopes :: Lens' MachineTypesAggregatedList (Maybe Bool)
mtalIncludeAllScopes
  = lens _mtalIncludeAllScopes
      (\ s a -> s{_mtalIncludeAllScopes = a})

-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
mtalReturnPartialSuccess :: Lens' MachineTypesAggregatedList (Maybe Bool)
mtalReturnPartialSuccess
  = lens _mtalReturnPartialSuccess
      (\ s a -> s{_mtalReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
mtalOrderBy :: Lens' MachineTypesAggregatedList (Maybe Text)
mtalOrderBy
  = lens _mtalOrderBy (\ s a -> s{_mtalOrderBy = a})

-- | Project ID for this request.
mtalProject :: Lens' MachineTypesAggregatedList Text
mtalProject
  = lens _mtalProject (\ s a -> s{_mtalProject = a})

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
mtalFilter :: Lens' MachineTypesAggregatedList (Maybe Text)
mtalFilter
  = lens _mtalFilter (\ s a -> s{_mtalFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
mtalPageToken :: Lens' MachineTypesAggregatedList (Maybe Text)
mtalPageToken
  = lens _mtalPageToken
      (\ s a -> s{_mtalPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
mtalMaxResults :: Lens' MachineTypesAggregatedList Word32
mtalMaxResults
  = lens _mtalMaxResults
      (\ s a -> s{_mtalMaxResults = a})
      . _Coerce

instance GoogleRequest MachineTypesAggregatedList
         where
        type Rs MachineTypesAggregatedList =
             MachineTypeAggregatedList
        type Scopes MachineTypesAggregatedList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient MachineTypesAggregatedList'{..}
          = go _mtalProject _mtalIncludeAllScopes
              _mtalReturnPartialSuccess
              _mtalOrderBy
              _mtalFilter
              _mtalPageToken
              (Just _mtalMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy MachineTypesAggregatedListResource)
                      mempty
