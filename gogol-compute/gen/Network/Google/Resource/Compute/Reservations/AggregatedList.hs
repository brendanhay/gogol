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
-- Module      : Network.Google.Resource.Compute.Reservations.AggregatedList
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an aggregated list of reservations.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.reservations.aggregatedList@.
module Network.Google.Resource.Compute.Reservations.AggregatedList
    (
    -- * REST Resource
      ReservationsAggregatedListResource

    -- * Creating a Request
    , reservationsAggregatedList
    , ReservationsAggregatedList

    -- * Request Lenses
    , resIncludeAllScopes
    , resReturnPartialSuccess
    , resOrderBy
    , resProject
    , resFilter
    , resPageToken
    , resMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.reservations.aggregatedList@ method which the
-- 'ReservationsAggregatedList' request conforms to.
type ReservationsAggregatedListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "reservations" :>
                 QueryParam "includeAllScopes" Bool :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ReservationAggregatedList

-- | Retrieves an aggregated list of reservations.
--
-- /See:/ 'reservationsAggregatedList' smart constructor.
data ReservationsAggregatedList =
  ReservationsAggregatedList'
    { _resIncludeAllScopes :: !(Maybe Bool)
    , _resReturnPartialSuccess :: !(Maybe Bool)
    , _resOrderBy :: !(Maybe Text)
    , _resProject :: !Text
    , _resFilter :: !(Maybe Text)
    , _resPageToken :: !(Maybe Text)
    , _resMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReservationsAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'resIncludeAllScopes'
--
-- * 'resReturnPartialSuccess'
--
-- * 'resOrderBy'
--
-- * 'resProject'
--
-- * 'resFilter'
--
-- * 'resPageToken'
--
-- * 'resMaxResults'
reservationsAggregatedList
    :: Text -- ^ 'resProject'
    -> ReservationsAggregatedList
reservationsAggregatedList pResProject_ =
  ReservationsAggregatedList'
    { _resIncludeAllScopes = Nothing
    , _resReturnPartialSuccess = Nothing
    , _resOrderBy = Nothing
    , _resProject = pResProject_
    , _resFilter = Nothing
    , _resPageToken = Nothing
    , _resMaxResults = 500
    }


-- | Indicates whether every visible scope for each scope type (zone, region,
-- global) should be included in the response. For new resource types added
-- after this field, the flag has no effect as new resource types will
-- always include every visible scope for each scope type in response. For
-- resource types which predate this field, if this flag is omitted or
-- false, only scopes of the scope types where the resource type is
-- expected to be found will be included.
resIncludeAllScopes :: Lens' ReservationsAggregatedList (Maybe Bool)
resIncludeAllScopes
  = lens _resIncludeAllScopes
      (\ s a -> s{_resIncludeAllScopes = a})

-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
resReturnPartialSuccess :: Lens' ReservationsAggregatedList (Maybe Bool)
resReturnPartialSuccess
  = lens _resReturnPartialSuccess
      (\ s a -> s{_resReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
resOrderBy :: Lens' ReservationsAggregatedList (Maybe Text)
resOrderBy
  = lens _resOrderBy (\ s a -> s{_resOrderBy = a})

-- | Project ID for this request.
resProject :: Lens' ReservationsAggregatedList Text
resProject
  = lens _resProject (\ s a -> s{_resProject = a})

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
resFilter :: Lens' ReservationsAggregatedList (Maybe Text)
resFilter
  = lens _resFilter (\ s a -> s{_resFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
resPageToken :: Lens' ReservationsAggregatedList (Maybe Text)
resPageToken
  = lens _resPageToken (\ s a -> s{_resPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
resMaxResults :: Lens' ReservationsAggregatedList Word32
resMaxResults
  = lens _resMaxResults
      (\ s a -> s{_resMaxResults = a})
      . _Coerce

instance GoogleRequest ReservationsAggregatedList
         where
        type Rs ReservationsAggregatedList =
             ReservationAggregatedList
        type Scopes ReservationsAggregatedList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient ReservationsAggregatedList'{..}
          = go _resProject _resIncludeAllScopes
              _resReturnPartialSuccess
              _resOrderBy
              _resFilter
              _resPageToken
              (Just _resMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ReservationsAggregatedListResource)
                      mempty
