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
-- Module      : Network.Google.Resource.Compute.RegionOperations.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of Operation resources contained within the specified
-- region.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionOperations.list@.
module Network.Google.Resource.Compute.RegionOperations.List
    (
    -- * REST Resource
      RegionOperationsListResource

    -- * Creating a Request
    , regionOperationsList
    , RegionOperationsList

    -- * Request Lenses
    , rolProject
    , rolFilter
    , rolRegion
    , rolPageToken
    , rolMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.regionOperations.list@ method which the
-- 'RegionOperationsList' request conforms to.
type RegionOperationsListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "operations" :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "alt" AltJSON :> Get '[JSON] OperationList

-- | Retrieves a list of Operation resources contained within the specified
-- region.
--
-- /See:/ 'regionOperationsList' smart constructor.
data RegionOperationsList = RegionOperationsList
    { _rolProject    :: !Text
    , _rolFilter     :: !(Maybe Text)
    , _rolRegion     :: !Text
    , _rolPageToken  :: !(Maybe Text)
    , _rolMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionOperationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rolProject'
--
-- * 'rolFilter'
--
-- * 'rolRegion'
--
-- * 'rolPageToken'
--
-- * 'rolMaxResults'
regionOperationsList
    :: Text -- ^ 'rolProject'
    -> Text -- ^ 'rolRegion'
    -> RegionOperationsList
regionOperationsList pRolProject_ pRolRegion_ =
    RegionOperationsList
    { _rolProject = pRolProject_
    , _rolFilter = Nothing
    , _rolRegion = pRolRegion_
    , _rolPageToken = Nothing
    , _rolMaxResults = 500
    }

-- | Project ID for this request.
rolProject :: Lens' RegionOperationsList Text
rolProject
  = lens _rolProject (\ s a -> s{_rolProject = a})

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
-- filter=name ne example-instance. Compute Engine Beta API Only: If you
-- use filtering in the Beta API, you can also filter on nested fields. For
-- example, you could filter on instances that have set the
-- scheduling.automaticRestart field to true. In particular, use filtering
-- on nested fields to take advantage of instance labels to organize and
-- filter results based on label values. The Beta API also supports
-- filtering on multiple expressions by providing each separate expression
-- within parentheses. For example, (scheduling.automaticRestart eq true)
-- (zone eq us-central1-f). Multiple expressions are treated as AND
-- expressions, meaning that resources must match all expressions to pass
-- the filters.
rolFilter :: Lens' RegionOperationsList (Maybe Text)
rolFilter
  = lens _rolFilter (\ s a -> s{_rolFilter = a})

-- | Name of the region for this request.
rolRegion :: Lens' RegionOperationsList Text
rolRegion
  = lens _rolRegion (\ s a -> s{_rolRegion = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
rolPageToken :: Lens' RegionOperationsList (Maybe Text)
rolPageToken
  = lens _rolPageToken (\ s a -> s{_rolPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests.
rolMaxResults :: Lens' RegionOperationsList Word32
rolMaxResults
  = lens _rolMaxResults
      (\ s a -> s{_rolMaxResults = a})
      . _Coerce

instance GoogleRequest RegionOperationsList where
        type Rs RegionOperationsList = OperationList
        type Scopes RegionOperationsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionOperationsList{..}
          = go _rolProject _rolRegion _rolFilter _rolPageToken
              (Just _rolMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionOperationsListResource)
                      mempty
