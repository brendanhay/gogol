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
-- Module      : Network.Google.Resource.Compute.MachineTypes.AggregatedList
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an aggregated list of machine types.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.machineTypes.aggregatedList@.
module Network.Google.Resource.Compute.MachineTypes.AggregatedList
    (
    -- * REST Resource
      MachineTypesAggregatedListResource

    -- * Creating a Request
    , machineTypesAggregatedList
    , MachineTypesAggregatedList

    -- * Request Lenses
    , mtalProject
    , mtalFilter
    , mtalPageToken
    , mtalMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.machineTypes.aggregatedList@ method which the
-- 'MachineTypesAggregatedList' request conforms to.
type MachineTypesAggregatedListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "machineTypes" :>
                 QueryParam "filter" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (Textual Word32) :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] MachineTypeAggregatedList

-- | Retrieves an aggregated list of machine types.
--
-- /See:/ 'machineTypesAggregatedList' smart constructor.
data MachineTypesAggregatedList = MachineTypesAggregatedList'
    { _mtalProject    :: !Text
    , _mtalFilter     :: !(Maybe Text)
    , _mtalPageToken  :: !(Maybe Text)
    , _mtalMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MachineTypesAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtalProject'
--
-- * 'mtalFilter'
--
-- * 'mtalPageToken'
--
-- * 'mtalMaxResults'
machineTypesAggregatedList
    :: Text -- ^ 'mtalProject'
    -> MachineTypesAggregatedList
machineTypesAggregatedList pMtalProject_ =
    MachineTypesAggregatedList'
    { _mtalProject = pMtalProject_
    , _mtalFilter = Nothing
    , _mtalPageToken = Nothing
    , _mtalMaxResults = 500
    }

-- | Project ID for this request.
mtalProject :: Lens' MachineTypesAggregatedList Text
mtalProject
  = lens _mtalProject (\ s a -> s{_mtalProject = a})

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
-- filter=name ne example-instance. Compute Engine Beta API Only: When
-- filtering in the Beta API, you can also filter on nested fields. For
-- example, you could filter on instances that have set the
-- scheduling.automaticRestart field to true. Use filtering on nested
-- fields to take advantage of labels to organize and search for results
-- based on label values. The Beta API also supports filtering on multiple
-- expressions by providing each separate expression within parentheses.
-- For example, (scheduling.automaticRestart eq true) (zone eq
-- us-central1-f). Multiple expressions are treated as AND expressions,
-- meaning that resources must match all expressions to pass the filters.
mtalFilter :: Lens' MachineTypesAggregatedList (Maybe Text)
mtalFilter
  = lens _mtalFilter (\ s a -> s{_mtalFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
mtalPageToken :: Lens' MachineTypesAggregatedList (Maybe Text)
mtalPageToken
  = lens _mtalPageToken
      (\ s a -> s{_mtalPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests.
mtalMaxResults :: Lens' MachineTypesAggregatedList Word32
mtalMaxResults
  = lens _mtalMaxResults
      (\ s a -> s{_mtalMaxResults = a})
      . _Coerce

instance GoogleRequest MachineTypesAggregatedList
         where
        type Rs MachineTypesAggregatedList =
             MachineTypeAggregatedList
        type Scopes MachineTypesAggregatedList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient MachineTypesAggregatedList'{..}
          = go _mtalProject _mtalFilter _mtalPageToken
              (Just _mtalMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy MachineTypesAggregatedListResource)
                      mempty
