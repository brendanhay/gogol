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
-- Module      : Network.Google.Resource.Compute.Autoscalers.AggregatedList
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of autoscalers grouped by scope.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeAutoscalersAggregatedList@.
module Network.Google.Resource.Compute.Autoscalers.AggregatedList
    (
    -- * REST Resource
      AutoscalersAggregatedListResource

    -- * Creating a Request
    , autoscalersAggregatedList'
    , AutoscalersAggregatedList'

    -- * Request Lenses
    , aalaProject
    , aalaFilter
    , aalaPageToken
    , aalaMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeAutoscalersAggregatedList@ method which the
-- 'AutoscalersAggregatedList'' request conforms to.
type AutoscalersAggregatedListResource =
     Capture "project" Text :>
       "aggregated" :>
         "autoscalers" :>
           QueryParam "filter" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] AutoscalerAggregatedList

-- | Retrieves the list of autoscalers grouped by scope.
--
-- /See:/ 'autoscalersAggregatedList'' smart constructor.
data AutoscalersAggregatedList' = AutoscalersAggregatedList'
    { _aalaProject    :: !Text
    , _aalaFilter     :: !(Maybe Text)
    , _aalaPageToken  :: !(Maybe Text)
    , _aalaMaxResults :: !Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalersAggregatedList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aalaProject'
--
-- * 'aalaFilter'
--
-- * 'aalaPageToken'
--
-- * 'aalaMaxResults'
autoscalersAggregatedList'
    :: Text -- ^ 'project'
    -> AutoscalersAggregatedList'
autoscalersAggregatedList' pAalaProject_ =
    AutoscalersAggregatedList'
    { _aalaProject = pAalaProject_
    , _aalaFilter = Nothing
    , _aalaPageToken = Nothing
    , _aalaMaxResults = 500
    }

-- | Name of the project scoping this request.
aalaProject :: Lens' AutoscalersAggregatedList' Text
aalaProject
  = lens _aalaProject (\ s a -> s{_aalaProject = a})

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
aalaFilter :: Lens' AutoscalersAggregatedList' (Maybe Text)
aalaFilter
  = lens _aalaFilter (\ s a -> s{_aalaFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
aalaPageToken :: Lens' AutoscalersAggregatedList' (Maybe Text)
aalaPageToken
  = lens _aalaPageToken
      (\ s a -> s{_aalaPageToken = a})

-- | Maximum count of results to be returned.
aalaMaxResults :: Lens' AutoscalersAggregatedList' Word32
aalaMaxResults
  = lens _aalaMaxResults
      (\ s a -> s{_aalaMaxResults = a})

instance GoogleRequest AutoscalersAggregatedList'
         where
        type Rs AutoscalersAggregatedList' =
             AutoscalerAggregatedList
        requestClient AutoscalersAggregatedList'{..}
          = go _aalaProject _aalaFilter _aalaPageToken
              (Just _aalaMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy AutoscalersAggregatedListResource)
                      mempty
