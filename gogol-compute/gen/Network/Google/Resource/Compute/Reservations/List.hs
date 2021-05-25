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
-- Module      : Network.Google.Resource.Compute.Reservations.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- A list of all the reservations that have been configured for the
-- specified project in specified zone.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.reservations.list@.
module Network.Google.Resource.Compute.Reservations.List
    (
    -- * REST Resource
      ReservationsListResource

    -- * Creating a Request
    , reservationsList
    , ReservationsList

    -- * Request Lenses
    , rl1ReturnPartialSuccess
    , rl1OrderBy
    , rl1Project
    , rl1Zone
    , rl1Filter
    , rl1PageToken
    , rl1MaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.reservations.list@ method which the
-- 'ReservationsList' request conforms to.
type ReservationsListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "reservations" :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ReservationList

-- | A list of all the reservations that have been configured for the
-- specified project in specified zone.
--
-- /See:/ 'reservationsList' smart constructor.
data ReservationsList =
  ReservationsList'
    { _rl1ReturnPartialSuccess :: !(Maybe Bool)
    , _rl1OrderBy :: !(Maybe Text)
    , _rl1Project :: !Text
    , _rl1Zone :: !Text
    , _rl1Filter :: !(Maybe Text)
    , _rl1PageToken :: !(Maybe Text)
    , _rl1MaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReservationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rl1ReturnPartialSuccess'
--
-- * 'rl1OrderBy'
--
-- * 'rl1Project'
--
-- * 'rl1Zone'
--
-- * 'rl1Filter'
--
-- * 'rl1PageToken'
--
-- * 'rl1MaxResults'
reservationsList
    :: Text -- ^ 'rl1Project'
    -> Text -- ^ 'rl1Zone'
    -> ReservationsList
reservationsList pRl1Project_ pRl1Zone_ =
  ReservationsList'
    { _rl1ReturnPartialSuccess = Nothing
    , _rl1OrderBy = Nothing
    , _rl1Project = pRl1Project_
    , _rl1Zone = pRl1Zone_
    , _rl1Filter = Nothing
    , _rl1PageToken = Nothing
    , _rl1MaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
rl1ReturnPartialSuccess :: Lens' ReservationsList (Maybe Bool)
rl1ReturnPartialSuccess
  = lens _rl1ReturnPartialSuccess
      (\ s a -> s{_rl1ReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
rl1OrderBy :: Lens' ReservationsList (Maybe Text)
rl1OrderBy
  = lens _rl1OrderBy (\ s a -> s{_rl1OrderBy = a})

-- | Project ID for this request.
rl1Project :: Lens' ReservationsList Text
rl1Project
  = lens _rl1Project (\ s a -> s{_rl1Project = a})

-- | Name of the zone for this request.
rl1Zone :: Lens' ReservationsList Text
rl1Zone = lens _rl1Zone (\ s a -> s{_rl1Zone = a})

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
rl1Filter :: Lens' ReservationsList (Maybe Text)
rl1Filter
  = lens _rl1Filter (\ s a -> s{_rl1Filter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
rl1PageToken :: Lens' ReservationsList (Maybe Text)
rl1PageToken
  = lens _rl1PageToken (\ s a -> s{_rl1PageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
rl1MaxResults :: Lens' ReservationsList Word32
rl1MaxResults
  = lens _rl1MaxResults
      (\ s a -> s{_rl1MaxResults = a})
      . _Coerce

instance GoogleRequest ReservationsList where
        type Rs ReservationsList = ReservationList
        type Scopes ReservationsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient ReservationsList'{..}
          = go _rl1Project _rl1Zone _rl1ReturnPartialSuccess
              _rl1OrderBy
              _rl1Filter
              _rl1PageToken
              (Just _rl1MaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ReservationsListResource)
                      mempty
