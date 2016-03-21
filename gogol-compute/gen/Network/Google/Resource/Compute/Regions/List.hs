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
-- Module      : Network.Google.Resource.Compute.Regions.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of region resources available to the specified
-- project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regions.list@.
module Network.Google.Resource.Compute.Regions.List
    (
    -- * REST Resource
      RegionsListResource

    -- * Creating a Request
    , regionsList
    , RegionsList

    -- * Request Lenses
    , rProject
    , rFilter
    , rPageToken
    , rMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.regions.list@ method which the
-- 'RegionsList' request conforms to.
type RegionsListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               QueryParam "filter" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "maxResults" (Textual Word32) :>
                     QueryParam "alt" AltJSON :> Get '[JSON] RegionList

-- | Retrieves the list of region resources available to the specified
-- project.
--
-- /See:/ 'regionsList' smart constructor.
data RegionsList = RegionsList'
    { _rProject    :: !Text
    , _rFilter     :: !(Maybe Text)
    , _rPageToken  :: !(Maybe Text)
    , _rMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rProject'
--
-- * 'rFilter'
--
-- * 'rPageToken'
--
-- * 'rMaxResults'
regionsList
    :: Text -- ^ 'rProject'
    -> RegionsList
regionsList pRProject_ =
    RegionsList'
    { _rProject = pRProject_
    , _rFilter = Nothing
    , _rPageToken = Nothing
    , _rMaxResults = 500
    }

-- | Project ID for this request.
rProject :: Lens' RegionsList Text
rProject = lens _rProject (\ s a -> s{_rProject = a})

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
rFilter :: Lens' RegionsList (Maybe Text)
rFilter = lens _rFilter (\ s a -> s{_rFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
rPageToken :: Lens' RegionsList (Maybe Text)
rPageToken
  = lens _rPageToken (\ s a -> s{_rPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests.
rMaxResults :: Lens' RegionsList Word32
rMaxResults
  = lens _rMaxResults (\ s a -> s{_rMaxResults = a}) .
      _Coerce

instance GoogleRequest RegionsList where
        type Rs RegionsList = RegionList
        type Scopes RegionsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionsList'{..}
          = go _rProject _rFilter _rPageToken
              (Just _rMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy RegionsListResource)
                      mempty
