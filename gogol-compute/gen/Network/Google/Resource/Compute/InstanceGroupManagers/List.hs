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
-- Module      : Network.Google.Resource.Compute.InstanceGroupManagers.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of managed instance groups that are contained within
-- the specified project and zone.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceGroupManagers.list@.
module Network.Google.Resource.Compute.InstanceGroupManagers.List
    (
    -- * REST Resource
      InstanceGroupManagersListResource

    -- * Creating a Request
    , instanceGroupManagersList
    , InstanceGroupManagersList

    -- * Request Lenses
    , igmlOrderBy
    , igmlProject
    , igmlZone
    , igmlFilter
    , igmlPageToken
    , igmlMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instanceGroupManagers.list@ method which the
-- 'InstanceGroupManagersList' request conforms to.
type InstanceGroupManagersListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroupManagers" :>
                   QueryParam "orderBy" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] InstanceGroupManagerList

-- | Retrieves a list of managed instance groups that are contained within
-- the specified project and zone.
--
-- /See:/ 'instanceGroupManagersList' smart constructor.
data InstanceGroupManagersList = InstanceGroupManagersList'
    { _igmlOrderBy    :: !(Maybe Text)
    , _igmlProject    :: !Text
    , _igmlZone       :: !Text
    , _igmlFilter     :: !(Maybe Text)
    , _igmlPageToken  :: !(Maybe Text)
    , _igmlMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmlOrderBy'
--
-- * 'igmlProject'
--
-- * 'igmlZone'
--
-- * 'igmlFilter'
--
-- * 'igmlPageToken'
--
-- * 'igmlMaxResults'
instanceGroupManagersList
    :: Text -- ^ 'igmlProject'
    -> Text -- ^ 'igmlZone'
    -> InstanceGroupManagersList
instanceGroupManagersList pIgmlProject_ pIgmlZone_ =
    InstanceGroupManagersList'
    { _igmlOrderBy = Nothing
    , _igmlProject = pIgmlProject_
    , _igmlZone = pIgmlZone_
    , _igmlFilter = Nothing
    , _igmlPageToken = Nothing
    , _igmlMaxResults = 500
    }

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
igmlOrderBy :: Lens' InstanceGroupManagersList (Maybe Text)
igmlOrderBy
  = lens _igmlOrderBy (\ s a -> s{_igmlOrderBy = a})

-- | Project ID for this request.
igmlProject :: Lens' InstanceGroupManagersList Text
igmlProject
  = lens _igmlProject (\ s a -> s{_igmlProject = a})

-- | The name of the zone where the managed instance group is located.
igmlZone :: Lens' InstanceGroupManagersList Text
igmlZone = lens _igmlZone (\ s a -> s{_igmlZone = a})

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
igmlFilter :: Lens' InstanceGroupManagersList (Maybe Text)
igmlFilter
  = lens _igmlFilter (\ s a -> s{_igmlFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
igmlPageToken :: Lens' InstanceGroupManagersList (Maybe Text)
igmlPageToken
  = lens _igmlPageToken
      (\ s a -> s{_igmlPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests.
igmlMaxResults :: Lens' InstanceGroupManagersList Word32
igmlMaxResults
  = lens _igmlMaxResults
      (\ s a -> s{_igmlMaxResults = a})
      . _Coerce

instance GoogleRequest InstanceGroupManagersList
         where
        type Rs InstanceGroupManagersList =
             InstanceGroupManagerList
        type Scopes InstanceGroupManagersList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient InstanceGroupManagersList'{..}
          = go _igmlProject _igmlZone _igmlOrderBy _igmlFilter
              _igmlPageToken
              (Just _igmlMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstanceGroupManagersListResource)
                      mempty
