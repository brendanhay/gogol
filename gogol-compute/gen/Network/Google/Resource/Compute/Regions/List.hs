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
    , regOrderBy
    , regProject
    , regFilter
    , regPageToken
    , regMaxResults
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
               QueryParam "orderBy" Text :>
                 QueryParam "filter" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (Textual Word32) :>
                       QueryParam "alt" AltJSON :> Get '[JSON] RegionList

-- | Retrieves the list of region resources available to the specified
-- project.
--
-- /See:/ 'regionsList' smart constructor.
data RegionsList = RegionsList'
    { _regOrderBy    :: !(Maybe Text)
    , _regProject    :: !Text
    , _regFilter     :: !(Maybe Text)
    , _regPageToken  :: !(Maybe Text)
    , _regMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'regOrderBy'
--
-- * 'regProject'
--
-- * 'regFilter'
--
-- * 'regPageToken'
--
-- * 'regMaxResults'
regionsList
    :: Text -- ^ 'regProject'
    -> RegionsList
regionsList pRegProject_ =
    RegionsList'
    { _regOrderBy = Nothing
    , _regProject = pRegProject_
    , _regFilter = Nothing
    , _regPageToken = Nothing
    , _regMaxResults = 500
    }

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
regOrderBy :: Lens' RegionsList (Maybe Text)
regOrderBy
  = lens _regOrderBy (\ s a -> s{_regOrderBy = a})

-- | Project ID for this request.
regProject :: Lens' RegionsList Text
regProject
  = lens _regProject (\ s a -> s{_regProject = a})

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
regFilter :: Lens' RegionsList (Maybe Text)
regFilter
  = lens _regFilter (\ s a -> s{_regFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
regPageToken :: Lens' RegionsList (Maybe Text)
regPageToken
  = lens _regPageToken (\ s a -> s{_regPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests.
regMaxResults :: Lens' RegionsList Word32
regMaxResults
  = lens _regMaxResults
      (\ s a -> s{_regMaxResults = a})
      . _Coerce

instance GoogleRequest RegionsList where
        type Rs RegionsList = RegionList
        type Scopes RegionsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionsList'{..}
          = go _regProject _regOrderBy _regFilter _regPageToken
              (Just _regMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy RegionsListResource)
                      mempty
