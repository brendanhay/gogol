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
-- Module      : Network.Google.Resource.Compute.DiskTypes.AggregatedList
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an aggregated list of disk types.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.diskTypes.aggregatedList@.
module Network.Google.Resource.Compute.DiskTypes.AggregatedList
    (
    -- * REST Resource
      DiskTypesAggregatedListResource

    -- * Creating a Request
    , diskTypesAggregatedList
    , DiskTypesAggregatedList

    -- * Request Lenses
    , dtalProject
    , dtalFilter
    , dtalPageToken
    , dtalMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.diskTypes.aggregatedList@ method which the
-- 'DiskTypesAggregatedList' request conforms to.
type DiskTypesAggregatedListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "diskTypes" :>
                 QueryParam "filter" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (Textual Word32) :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] DiskTypeAggregatedList

-- | Retrieves an aggregated list of disk types.
--
-- /See:/ 'diskTypesAggregatedList' smart constructor.
data DiskTypesAggregatedList = DiskTypesAggregatedList
    { _dtalProject    :: !Text
    , _dtalFilter     :: !(Maybe Text)
    , _dtalPageToken  :: !(Maybe Text)
    , _dtalMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DiskTypesAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtalProject'
--
-- * 'dtalFilter'
--
-- * 'dtalPageToken'
--
-- * 'dtalMaxResults'
diskTypesAggregatedList
    :: Text -- ^ 'dtalProject'
    -> DiskTypesAggregatedList
diskTypesAggregatedList pDtalProject_ =
    DiskTypesAggregatedList
    { _dtalProject = pDtalProject_
    , _dtalFilter = Nothing
    , _dtalPageToken = Nothing
    , _dtalMaxResults = 500
    }

-- | Project ID for this request.
dtalProject :: Lens' DiskTypesAggregatedList Text
dtalProject
  = lens _dtalProject (\ s a -> s{_dtalProject = a})

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
dtalFilter :: Lens' DiskTypesAggregatedList (Maybe Text)
dtalFilter
  = lens _dtalFilter (\ s a -> s{_dtalFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
dtalPageToken :: Lens' DiskTypesAggregatedList (Maybe Text)
dtalPageToken
  = lens _dtalPageToken
      (\ s a -> s{_dtalPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests.
dtalMaxResults :: Lens' DiskTypesAggregatedList Word32
dtalMaxResults
  = lens _dtalMaxResults
      (\ s a -> s{_dtalMaxResults = a})
      . _Coerce

instance GoogleRequest DiskTypesAggregatedList where
        type Rs DiskTypesAggregatedList =
             DiskTypeAggregatedList
        requestClient DiskTypesAggregatedList{..}
          = go _dtalProject _dtalFilter _dtalPageToken
              (Just _dtalMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy DiskTypesAggregatedListResource)
                      mempty
