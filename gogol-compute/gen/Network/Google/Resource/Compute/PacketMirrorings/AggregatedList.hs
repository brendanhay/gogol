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
-- Module      : Network.Google.Resource.Compute.PacketMirrorings.AggregatedList
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an aggregated list of packetMirrorings.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.packetMirrorings.aggregatedList@.
module Network.Google.Resource.Compute.PacketMirrorings.AggregatedList
    (
    -- * REST Resource
      PacketMirroringsAggregatedListResource

    -- * Creating a Request
    , packetMirroringsAggregatedList
    , PacketMirroringsAggregatedList

    -- * Request Lenses
    , pmalIncludeAllScopes
    , pmalReturnPartialSuccess
    , pmalOrderBy
    , pmalProject
    , pmalFilter
    , pmalPageToken
    , pmalMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.packetMirrorings.aggregatedList@ method which the
-- 'PacketMirroringsAggregatedList' request conforms to.
type PacketMirroringsAggregatedListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "packetMirrorings" :>
                 QueryParam "includeAllScopes" Bool :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] PacketMirroringAggregatedList

-- | Retrieves an aggregated list of packetMirrorings.
--
-- /See:/ 'packetMirroringsAggregatedList' smart constructor.
data PacketMirroringsAggregatedList =
  PacketMirroringsAggregatedList'
    { _pmalIncludeAllScopes :: !(Maybe Bool)
    , _pmalReturnPartialSuccess :: !(Maybe Bool)
    , _pmalOrderBy :: !(Maybe Text)
    , _pmalProject :: !Text
    , _pmalFilter :: !(Maybe Text)
    , _pmalPageToken :: !(Maybe Text)
    , _pmalMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PacketMirroringsAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmalIncludeAllScopes'
--
-- * 'pmalReturnPartialSuccess'
--
-- * 'pmalOrderBy'
--
-- * 'pmalProject'
--
-- * 'pmalFilter'
--
-- * 'pmalPageToken'
--
-- * 'pmalMaxResults'
packetMirroringsAggregatedList
    :: Text -- ^ 'pmalProject'
    -> PacketMirroringsAggregatedList
packetMirroringsAggregatedList pPmalProject_ =
  PacketMirroringsAggregatedList'
    { _pmalIncludeAllScopes = Nothing
    , _pmalReturnPartialSuccess = Nothing
    , _pmalOrderBy = Nothing
    , _pmalProject = pPmalProject_
    , _pmalFilter = Nothing
    , _pmalPageToken = Nothing
    , _pmalMaxResults = 500
    }


-- | Indicates whether every visible scope for each scope type (zone, region,
-- global) should be included in the response. For new resource types added
-- after this field, the flag has no effect as new resource types will
-- always include every visible scope for each scope type in response. For
-- resource types which predate this field, if this flag is omitted or
-- false, only scopes of the scope types where the resource type is
-- expected to be found will be included.
pmalIncludeAllScopes :: Lens' PacketMirroringsAggregatedList (Maybe Bool)
pmalIncludeAllScopes
  = lens _pmalIncludeAllScopes
      (\ s a -> s{_pmalIncludeAllScopes = a})

-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
pmalReturnPartialSuccess :: Lens' PacketMirroringsAggregatedList (Maybe Bool)
pmalReturnPartialSuccess
  = lens _pmalReturnPartialSuccess
      (\ s a -> s{_pmalReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
pmalOrderBy :: Lens' PacketMirroringsAggregatedList (Maybe Text)
pmalOrderBy
  = lens _pmalOrderBy (\ s a -> s{_pmalOrderBy = a})

-- | Project ID for this request.
pmalProject :: Lens' PacketMirroringsAggregatedList Text
pmalProject
  = lens _pmalProject (\ s a -> s{_pmalProject = a})

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
pmalFilter :: Lens' PacketMirroringsAggregatedList (Maybe Text)
pmalFilter
  = lens _pmalFilter (\ s a -> s{_pmalFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
pmalPageToken :: Lens' PacketMirroringsAggregatedList (Maybe Text)
pmalPageToken
  = lens _pmalPageToken
      (\ s a -> s{_pmalPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
pmalMaxResults :: Lens' PacketMirroringsAggregatedList Word32
pmalMaxResults
  = lens _pmalMaxResults
      (\ s a -> s{_pmalMaxResults = a})
      . _Coerce

instance GoogleRequest PacketMirroringsAggregatedList
         where
        type Rs PacketMirroringsAggregatedList =
             PacketMirroringAggregatedList
        type Scopes PacketMirroringsAggregatedList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient PacketMirroringsAggregatedList'{..}
          = go _pmalProject _pmalIncludeAllScopes
              _pmalReturnPartialSuccess
              _pmalOrderBy
              _pmalFilter
              _pmalPageToken
              (Just _pmalMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy PacketMirroringsAggregatedListResource)
                      mempty
