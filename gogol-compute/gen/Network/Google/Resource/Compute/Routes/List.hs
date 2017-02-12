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
-- Module      : Network.Google.Resource.Compute.Routes.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of Route resources available to the specified
-- project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.routes.list@.
module Network.Google.Resource.Compute.Routes.List
    (
    -- * REST Resource
      RoutesListResource

    -- * Creating a Request
    , routesList
    , RoutesList

    -- * Request Lenses
    , rllOrderBy
    , rllProject
    , rllFilter
    , rllPageToken
    , rllMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.routes.list@ method which the
-- 'RoutesList' request conforms to.
type RoutesListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "routes" :>
                 QueryParam "orderBy" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "alt" AltJSON :> Get '[JSON] RouteList

-- | Retrieves the list of Route resources available to the specified
-- project.
--
-- /See:/ 'routesList' smart constructor.
data RoutesList = RoutesList'
    { _rllOrderBy    :: !(Maybe Text)
    , _rllProject    :: !Text
    , _rllFilter     :: !(Maybe Text)
    , _rllPageToken  :: !(Maybe Text)
    , _rllMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoutesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rllOrderBy'
--
-- * 'rllProject'
--
-- * 'rllFilter'
--
-- * 'rllPageToken'
--
-- * 'rllMaxResults'
routesList
    :: Text -- ^ 'rllProject'
    -> RoutesList
routesList pRllProject_ =
    RoutesList'
    { _rllOrderBy = Nothing
    , _rllProject = pRllProject_
    , _rllFilter = Nothing
    , _rllPageToken = Nothing
    , _rllMaxResults = 500
    }

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
rllOrderBy :: Lens' RoutesList (Maybe Text)
rllOrderBy
  = lens _rllOrderBy (\ s a -> s{_rllOrderBy = a})

-- | Project ID for this request.
rllProject :: Lens' RoutesList Text
rllProject
  = lens _rllProject (\ s a -> s{_rllProject = a})

-- | Sets a filter expression for filtering listed resources, in the form
-- filter={expression}. Your {expression} must be in the format: field_name
-- comparison_string literal_string. The field_name is the name of the
-- field you want to compare. Only atomic field types are supported
-- (string, number, boolean). The comparison_string must be either eq
-- (equals) or ne (not equals). The literal_string is the string value to
-- filter to. The literal value must be valid for the type of field you are
-- filtering by (string, number, boolean). For string fields, the literal
-- value is interpreted as a regular expression using RE2 syntax. The
-- literal value must match the entire field. For example, to filter for
-- instances that do not have a name of example-instance, you would use
-- filter=name ne example-instance. You can filter on nested fields. For
-- example, you could filter on instances that have set the
-- scheduling.automaticRestart field to true. Use filtering on nested
-- fields to take advantage of labels to organize and search for results
-- based on label values. To filter on multiple expressions, provide each
-- separate expression within parentheses. For example,
-- (scheduling.automaticRestart eq true) (zone eq us-central1-f). Multiple
-- expressions are treated as AND expressions, meaning that resources must
-- match all expressions to pass the filters.
rllFilter :: Lens' RoutesList (Maybe Text)
rllFilter
  = lens _rllFilter (\ s a -> s{_rllFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
rllPageToken :: Lens' RoutesList (Maybe Text)
rllPageToken
  = lens _rllPageToken (\ s a -> s{_rllPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests.
rllMaxResults :: Lens' RoutesList Word32
rllMaxResults
  = lens _rllMaxResults
      (\ s a -> s{_rllMaxResults = a})
      . _Coerce

instance GoogleRequest RoutesList where
        type Rs RoutesList = RouteList
        type Scopes RoutesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RoutesList'{..}
          = go _rllProject _rllOrderBy _rllFilter _rllPageToken
              (Just _rllMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy RoutesListResource)
                      mempty
