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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of machine type resources grouped by scope.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeMachineTypesAggregatedList@.
module Network.Google.Resource.Compute.MachineTypes.AggregatedList
    (
    -- * REST Resource
      MachineTypesAggregatedListResource

    -- * Creating a Request
    , machineTypesAggregatedList'
    , MachineTypesAggregatedList'

    -- * Request Lenses
    , mtalProject
    , mtalFilter
    , mtalPageToken
    , mtalMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeMachineTypesAggregatedList@ method which the
-- 'MachineTypesAggregatedList'' request conforms to.
type MachineTypesAggregatedListResource =
     Capture "project" Text :>
       "aggregated" :>
         "machineTypes" :>
           QueryParam "filter" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] MachineTypeAggregatedList

-- | Retrieves the list of machine type resources grouped by scope.
--
-- /See:/ 'machineTypesAggregatedList'' smart constructor.
data MachineTypesAggregatedList' = MachineTypesAggregatedList'
    { _mtalProject    :: !Text
    , _mtalFilter     :: !(Maybe Text)
    , _mtalPageToken  :: !(Maybe Text)
    , _mtalMaxResults :: !Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MachineTypesAggregatedList'' with the minimum fields required to make a request.
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
machineTypesAggregatedList'
    :: Text -- ^ 'project'
    -> MachineTypesAggregatedList'
machineTypesAggregatedList' pMtalProject_ =
    MachineTypesAggregatedList'
    { _mtalProject = pMtalProject_
    , _mtalFilter = Nothing
    , _mtalPageToken = Nothing
    , _mtalMaxResults = 500
    }

-- | Project ID for this request.
mtalProject :: Lens' MachineTypesAggregatedList' Text
mtalProject
  = lens _mtalProject (\ s a -> s{_mtalProject = a})

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
mtalFilter :: Lens' MachineTypesAggregatedList' (Maybe Text)
mtalFilter
  = lens _mtalFilter (\ s a -> s{_mtalFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
mtalPageToken :: Lens' MachineTypesAggregatedList' (Maybe Text)
mtalPageToken
  = lens _mtalPageToken
      (\ s a -> s{_mtalPageToken = a})

-- | Maximum count of results to be returned.
mtalMaxResults :: Lens' MachineTypesAggregatedList' Word32
mtalMaxResults
  = lens _mtalMaxResults
      (\ s a -> s{_mtalMaxResults = a})

instance GoogleRequest MachineTypesAggregatedList'
         where
        type Rs MachineTypesAggregatedList' =
             MachineTypeAggregatedList
        requestClient MachineTypesAggregatedList'{..}
          = go _mtalProject _mtalFilter _mtalPageToken
              (Just _mtalMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy MachineTypesAggregatedListResource)
                      mempty
