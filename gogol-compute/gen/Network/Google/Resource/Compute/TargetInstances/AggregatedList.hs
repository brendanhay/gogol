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
-- Module      : Network.Google.Resource.Compute.TargetInstances.AggregatedList
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of target instances grouped by scope.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeTargetInstancesAggregatedList@.
module Network.Google.Resource.Compute.TargetInstances.AggregatedList
    (
    -- * REST Resource
      TargetInstancesAggregatedListResource

    -- * Creating a Request
    , targetInstancesAggregatedList'
    , TargetInstancesAggregatedList'

    -- * Request Lenses
    , tialProject
    , tialFilter
    , tialPageToken
    , tialMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeTargetInstancesAggregatedList@ method which the
-- 'TargetInstancesAggregatedList'' request conforms to.
type TargetInstancesAggregatedListResource =
     Capture "project" Text :>
       "aggregated" :>
         "targetInstances" :>
           QueryParam "filter" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] TargetInstanceAggregatedList

-- | Retrieves the list of target instances grouped by scope.
--
-- /See:/ 'targetInstancesAggregatedList'' smart constructor.
data TargetInstancesAggregatedList' = TargetInstancesAggregatedList'
    { _tialProject    :: !Text
    , _tialFilter     :: !(Maybe Text)
    , _tialPageToken  :: !(Maybe Text)
    , _tialMaxResults :: !Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetInstancesAggregatedList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tialProject'
--
-- * 'tialFilter'
--
-- * 'tialPageToken'
--
-- * 'tialMaxResults'
targetInstancesAggregatedList'
    :: Text -- ^ 'project'
    -> TargetInstancesAggregatedList'
targetInstancesAggregatedList' pTialProject_ =
    TargetInstancesAggregatedList'
    { _tialProject = pTialProject_
    , _tialFilter = Nothing
    , _tialPageToken = Nothing
    , _tialMaxResults = 500
    }

-- | Name of the project scoping this request.
tialProject :: Lens' TargetInstancesAggregatedList' Text
tialProject
  = lens _tialProject (\ s a -> s{_tialProject = a})

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
tialFilter :: Lens' TargetInstancesAggregatedList' (Maybe Text)
tialFilter
  = lens _tialFilter (\ s a -> s{_tialFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
tialPageToken :: Lens' TargetInstancesAggregatedList' (Maybe Text)
tialPageToken
  = lens _tialPageToken
      (\ s a -> s{_tialPageToken = a})

-- | Maximum count of results to be returned.
tialMaxResults :: Lens' TargetInstancesAggregatedList' Word32
tialMaxResults
  = lens _tialMaxResults
      (\ s a -> s{_tialMaxResults = a})

instance GoogleRequest TargetInstancesAggregatedList'
         where
        type Rs TargetInstancesAggregatedList' =
             TargetInstanceAggregatedList
        requestClient TargetInstancesAggregatedList'{..}
          = go _tialProject _tialFilter _tialPageToken
              (Just _tialMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy TargetInstancesAggregatedListResource)
                      mempty
