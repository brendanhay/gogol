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
-- Module      : Network.Google.Resource.Compute.RegionAutoscalers.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of autoscalers contained within the specified region.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionAutoscalers.list@.
module Network.Google.Resource.Compute.RegionAutoscalers.List
    (
    -- * REST Resource
      RegionAutoscalersListResource

    -- * Creating a Request
    , regionAutoscalersList
    , RegionAutoscalersList

    -- * Request Lenses
    , ralOrderBy
    , ralProject
    , ralFilter
    , ralRegion
    , ralPageToken
    , ralMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.regionAutoscalers.list@ method which the
-- 'RegionAutoscalersList' request conforms to.
type RegionAutoscalersListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "autoscalers" :>
                   QueryParam "orderBy" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] RegionAutoscalerList

-- | Retrieves a list of autoscalers contained within the specified region.
--
-- /See:/ 'regionAutoscalersList' smart constructor.
data RegionAutoscalersList = RegionAutoscalersList'
    { _ralOrderBy    :: !(Maybe Text)
    , _ralProject    :: !Text
    , _ralFilter     :: !(Maybe Text)
    , _ralRegion     :: !Text
    , _ralPageToken  :: !(Maybe Text)
    , _ralMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionAutoscalersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ralOrderBy'
--
-- * 'ralProject'
--
-- * 'ralFilter'
--
-- * 'ralRegion'
--
-- * 'ralPageToken'
--
-- * 'ralMaxResults'
regionAutoscalersList
    :: Text -- ^ 'ralProject'
    -> Text -- ^ 'ralRegion'
    -> RegionAutoscalersList
regionAutoscalersList pRalProject_ pRalRegion_ =
    RegionAutoscalersList'
    { _ralOrderBy = Nothing
    , _ralProject = pRalProject_
    , _ralFilter = Nothing
    , _ralRegion = pRalRegion_
    , _ralPageToken = Nothing
    , _ralMaxResults = 500
    }

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
ralOrderBy :: Lens' RegionAutoscalersList (Maybe Text)
ralOrderBy
  = lens _ralOrderBy (\ s a -> s{_ralOrderBy = a})

-- | Project ID for this request.
ralProject :: Lens' RegionAutoscalersList Text
ralProject
  = lens _ralProject (\ s a -> s{_ralProject = a})

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
ralFilter :: Lens' RegionAutoscalersList (Maybe Text)
ralFilter
  = lens _ralFilter (\ s a -> s{_ralFilter = a})

-- | Name of the region scoping this request.
ralRegion :: Lens' RegionAutoscalersList Text
ralRegion
  = lens _ralRegion (\ s a -> s{_ralRegion = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
ralPageToken :: Lens' RegionAutoscalersList (Maybe Text)
ralPageToken
  = lens _ralPageToken (\ s a -> s{_ralPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests.
ralMaxResults :: Lens' RegionAutoscalersList Word32
ralMaxResults
  = lens _ralMaxResults
      (\ s a -> s{_ralMaxResults = a})
      . _Coerce

instance GoogleRequest RegionAutoscalersList where
        type Rs RegionAutoscalersList = RegionAutoscalerList
        type Scopes RegionAutoscalersList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionAutoscalersList'{..}
          = go _ralProject _ralRegion _ralOrderBy _ralFilter
              _ralPageToken
              (Just _ralMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionAutoscalersListResource)
                      mempty
