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
-- Module      : Network.Google.Resource.Compute.RegionBackendServices.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of regional BackendService resources available to the
-- specified project in the given region.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionBackendServices.list@.
module Network.Google.Resource.Compute.RegionBackendServices.List
    (
    -- * REST Resource
      RegionBackendServicesListResource

    -- * Creating a Request
    , regionBackendServicesList
    , RegionBackendServicesList

    -- * Request Lenses
    , rbslOrderBy
    , rbslProject
    , rbslFilter
    , rbslRegion
    , rbslPageToken
    , rbslMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.regionBackendServices.list@ method which the
-- 'RegionBackendServicesList' request conforms to.
type RegionBackendServicesListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "backendServices" :>
                   QueryParam "orderBy" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] BackendServiceList

-- | Retrieves the list of regional BackendService resources available to the
-- specified project in the given region.
--
-- /See:/ 'regionBackendServicesList' smart constructor.
data RegionBackendServicesList = RegionBackendServicesList'
    { _rbslOrderBy    :: !(Maybe Text)
    , _rbslProject    :: !Text
    , _rbslFilter     :: !(Maybe Text)
    , _rbslRegion     :: !Text
    , _rbslPageToken  :: !(Maybe Text)
    , _rbslMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionBackendServicesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rbslOrderBy'
--
-- * 'rbslProject'
--
-- * 'rbslFilter'
--
-- * 'rbslRegion'
--
-- * 'rbslPageToken'
--
-- * 'rbslMaxResults'
regionBackendServicesList
    :: Text -- ^ 'rbslProject'
    -> Text -- ^ 'rbslRegion'
    -> RegionBackendServicesList
regionBackendServicesList pRbslProject_ pRbslRegion_ =
    RegionBackendServicesList'
    { _rbslOrderBy = Nothing
    , _rbslProject = pRbslProject_
    , _rbslFilter = Nothing
    , _rbslRegion = pRbslRegion_
    , _rbslPageToken = Nothing
    , _rbslMaxResults = 500
    }

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
rbslOrderBy :: Lens' RegionBackendServicesList (Maybe Text)
rbslOrderBy
  = lens _rbslOrderBy (\ s a -> s{_rbslOrderBy = a})

-- | Project ID for this request.
rbslProject :: Lens' RegionBackendServicesList Text
rbslProject
  = lens _rbslProject (\ s a -> s{_rbslProject = a})

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
rbslFilter :: Lens' RegionBackendServicesList (Maybe Text)
rbslFilter
  = lens _rbslFilter (\ s a -> s{_rbslFilter = a})

-- | Name of the region scoping this request.
rbslRegion :: Lens' RegionBackendServicesList Text
rbslRegion
  = lens _rbslRegion (\ s a -> s{_rbslRegion = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
rbslPageToken :: Lens' RegionBackendServicesList (Maybe Text)
rbslPageToken
  = lens _rbslPageToken
      (\ s a -> s{_rbslPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests.
rbslMaxResults :: Lens' RegionBackendServicesList Word32
rbslMaxResults
  = lens _rbslMaxResults
      (\ s a -> s{_rbslMaxResults = a})
      . _Coerce

instance GoogleRequest RegionBackendServicesList
         where
        type Rs RegionBackendServicesList =
             BackendServiceList
        type Scopes RegionBackendServicesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionBackendServicesList'{..}
          = go _rbslProject _rbslRegion _rbslOrderBy
              _rbslFilter
              _rbslPageToken
              (Just _rbslMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionBackendServicesListResource)
                      mempty
