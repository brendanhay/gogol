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
-- Module      : Network.Google.Resource.Compute.RegionInstanceGroupManagers.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of managed instance groups that are contained within
-- the specified region.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionInstanceGroupManagers.list@.
module Network.Google.Resource.Compute.RegionInstanceGroupManagers.List
    (
    -- * REST Resource
      RegionInstanceGroupManagersListResource

    -- * Creating a Request
    , regionInstanceGroupManagersList
    , RegionInstanceGroupManagersList

    -- * Request Lenses
    , rigmlOrderBy
    , rigmlProject
    , rigmlFilter
    , rigmlRegion
    , rigmlPageToken
    , rigmlMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.regionInstanceGroupManagers.list@ method which the
-- 'RegionInstanceGroupManagersList' request conforms to.
type RegionInstanceGroupManagersListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "instanceGroupManagers" :>
                   QueryParam "orderBy" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] RegionInstanceGroupManagerList

-- | Retrieves the list of managed instance groups that are contained within
-- the specified region.
--
-- /See:/ 'regionInstanceGroupManagersList' smart constructor.
data RegionInstanceGroupManagersList = RegionInstanceGroupManagersList'
    { _rigmlOrderBy    :: !(Maybe Text)
    , _rigmlProject    :: !Text
    , _rigmlFilter     :: !(Maybe Text)
    , _rigmlRegion     :: !Text
    , _rigmlPageToken  :: !(Maybe Text)
    , _rigmlMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionInstanceGroupManagersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rigmlOrderBy'
--
-- * 'rigmlProject'
--
-- * 'rigmlFilter'
--
-- * 'rigmlRegion'
--
-- * 'rigmlPageToken'
--
-- * 'rigmlMaxResults'
regionInstanceGroupManagersList
    :: Text -- ^ 'rigmlProject'
    -> Text -- ^ 'rigmlRegion'
    -> RegionInstanceGroupManagersList
regionInstanceGroupManagersList pRigmlProject_ pRigmlRegion_ =
    RegionInstanceGroupManagersList'
    { _rigmlOrderBy = Nothing
    , _rigmlProject = pRigmlProject_
    , _rigmlFilter = Nothing
    , _rigmlRegion = pRigmlRegion_
    , _rigmlPageToken = Nothing
    , _rigmlMaxResults = 500
    }

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
rigmlOrderBy :: Lens' RegionInstanceGroupManagersList (Maybe Text)
rigmlOrderBy
  = lens _rigmlOrderBy (\ s a -> s{_rigmlOrderBy = a})

-- | Project ID for this request.
rigmlProject :: Lens' RegionInstanceGroupManagersList Text
rigmlProject
  = lens _rigmlProject (\ s a -> s{_rigmlProject = a})

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
rigmlFilter :: Lens' RegionInstanceGroupManagersList (Maybe Text)
rigmlFilter
  = lens _rigmlFilter (\ s a -> s{_rigmlFilter = a})

-- | Name of the region scoping this request.
rigmlRegion :: Lens' RegionInstanceGroupManagersList Text
rigmlRegion
  = lens _rigmlRegion (\ s a -> s{_rigmlRegion = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
rigmlPageToken :: Lens' RegionInstanceGroupManagersList (Maybe Text)
rigmlPageToken
  = lens _rigmlPageToken
      (\ s a -> s{_rigmlPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests.
rigmlMaxResults :: Lens' RegionInstanceGroupManagersList Word32
rigmlMaxResults
  = lens _rigmlMaxResults
      (\ s a -> s{_rigmlMaxResults = a})
      . _Coerce

instance GoogleRequest
         RegionInstanceGroupManagersList where
        type Rs RegionInstanceGroupManagersList =
             RegionInstanceGroupManagerList
        type Scopes RegionInstanceGroupManagersList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionInstanceGroupManagersList'{..}
          = go _rigmlProject _rigmlRegion _rigmlOrderBy
              _rigmlFilter
              _rigmlPageToken
              (Just _rigmlMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RegionInstanceGroupManagersListResource)
                      mempty
