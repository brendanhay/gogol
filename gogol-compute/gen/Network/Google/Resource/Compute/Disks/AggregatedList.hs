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
-- Module      : Network.Google.Resource.Compute.Disks.AggregatedList
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of disks grouped by scope.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeDisksAggregatedList@.
module Network.Google.Resource.Compute.Disks.AggregatedList
    (
    -- * REST Resource
      DisksAggregatedListResource

    -- * Creating a Request
    , disksAggregatedList'
    , DisksAggregatedList'

    -- * Request Lenses
    , dalProject
    , dalFilter
    , dalPageToken
    , dalMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeDisksAggregatedList@ method which the
-- 'DisksAggregatedList'' request conforms to.
type DisksAggregatedListResource =
     Capture "project" Text :>
       "aggregated" :>
         "disks" :>
           QueryParam "filter" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] DiskAggregatedList

-- | Retrieves the list of disks grouped by scope.
--
-- /See:/ 'disksAggregatedList'' smart constructor.
data DisksAggregatedList' = DisksAggregatedList'
    { _dalProject    :: !Text
    , _dalFilter     :: !(Maybe Text)
    , _dalPageToken  :: !(Maybe Text)
    , _dalMaxResults :: !Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DisksAggregatedList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dalProject'
--
-- * 'dalFilter'
--
-- * 'dalPageToken'
--
-- * 'dalMaxResults'
disksAggregatedList'
    :: Text -- ^ 'project'
    -> DisksAggregatedList'
disksAggregatedList' pDalProject_ =
    DisksAggregatedList'
    { _dalProject = pDalProject_
    , _dalFilter = Nothing
    , _dalPageToken = Nothing
    , _dalMaxResults = 500
    }

-- | Project ID for this request.
dalProject :: Lens' DisksAggregatedList' Text
dalProject
  = lens _dalProject (\ s a -> s{_dalProject = a})

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
dalFilter :: Lens' DisksAggregatedList' (Maybe Text)
dalFilter
  = lens _dalFilter (\ s a -> s{_dalFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
dalPageToken :: Lens' DisksAggregatedList' (Maybe Text)
dalPageToken
  = lens _dalPageToken (\ s a -> s{_dalPageToken = a})

-- | Maximum count of results to be returned.
dalMaxResults :: Lens' DisksAggregatedList' Word32
dalMaxResults
  = lens _dalMaxResults
      (\ s a -> s{_dalMaxResults = a})

instance GoogleRequest DisksAggregatedList' where
        type Rs DisksAggregatedList' = DiskAggregatedList
        requestClient DisksAggregatedList'{..}
          = go _dalProject _dalFilter _dalPageToken
              (Just _dalMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy DisksAggregatedListResource)
                      mempty
