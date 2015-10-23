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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of disk type resources grouped by scope.
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
                     QueryParam "maxResults" (JSONText Word32) :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] DiskTypeAggregatedList

-- | Retrieves the list of disk type resources grouped by scope.
--
-- /See:/ 'diskTypesAggregatedList' smart constructor.
data DiskTypesAggregatedList = DiskTypesAggregatedList
    { _dtalProject    :: !Text
    , _dtalFilter     :: !(Maybe Text)
    , _dtalPageToken  :: !(Maybe Text)
    , _dtalMaxResults :: !(JSONText Word32)
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
-- filter={expression}. Your {expression} must be in the format: FIELD_NAME
-- COMPARISON_STRING LITERAL_STRING. The FIELD_NAME is the name of the
-- field you want to compare. Only atomic field types are supported
-- (string, number, boolean). The COMPARISON_STRING must be either eq
-- (equals) or ne (not equals). The LITERAL_STRING is the string value to
-- filter to. The literal value must be valid for the type of field
-- (string, number, boolean). For string fields, the literal value is
-- interpreted as a regular expression using RE2 syntax. The literal value
-- must match the entire field. For example, filter=name ne
-- example-instance.
dtalFilter :: Lens' DiskTypesAggregatedList (Maybe Text)
dtalFilter
  = lens _dtalFilter (\ s a -> s{_dtalFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
dtalPageToken :: Lens' DiskTypesAggregatedList (Maybe Text)
dtalPageToken
  = lens _dtalPageToken
      (\ s a -> s{_dtalPageToken = a})

-- | Maximum count of results to be returned.
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
