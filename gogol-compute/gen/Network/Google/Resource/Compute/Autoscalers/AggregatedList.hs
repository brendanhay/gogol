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
-- Retrieves the list of autoscalers grouped by scope.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.autoscalers.aggregatedList@.
module Network.Google.Resource.Compute.Autoscalers.AggregatedList
    (
    -- * REST Resource
      AutoscalersAggregatedListResource

    -- * Creating a Request
    , autoscalersAggregatedList
    , AutoscalersAggregatedList

    -- * Request Lenses
    , autProject
    , autFilter
    , autPageToken
    , autMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.autoscalers.aggregatedList@ method which the
-- 'AutoscalersAggregatedList' request conforms to.
type AutoscalersAggregatedListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "autoscalers" :>
                 QueryParam "filter" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (JSONText Word32) :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] AutoscalerAggregatedList

-- | Retrieves the list of autoscalers grouped by scope.
--
-- /See:/ 'autoscalersAggregatedList' smart constructor.
data AutoscalersAggregatedList = AutoscalersAggregatedList
    { _autProject    :: !Text
    , _autFilter     :: !(Maybe Text)
    , _autPageToken  :: !(Maybe Text)
    , _autMaxResults :: !(JSONText Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalersAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'autProject'
--
-- * 'autFilter'
--
-- * 'autPageToken'
--
-- * 'autMaxResults'
autoscalersAggregatedList
    :: Text -- ^ 'autProject'
    -> AutoscalersAggregatedList
autoscalersAggregatedList pAutProject_ =
    AutoscalersAggregatedList
    { _autProject = pAutProject_
    , _autFilter = Nothing
    , _autPageToken = Nothing
    , _autMaxResults = 500
    }

-- | Name of the project scoping this request.
autProject :: Lens' AutoscalersAggregatedList Text
autProject
  = lens _autProject (\ s a -> s{_autProject = a})

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
autFilter :: Lens' AutoscalersAggregatedList (Maybe Text)
autFilter
  = lens _autFilter (\ s a -> s{_autFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
autPageToken :: Lens' AutoscalersAggregatedList (Maybe Text)
autPageToken
  = lens _autPageToken (\ s a -> s{_autPageToken = a})

-- | Maximum count of results to be returned.
autMaxResults :: Lens' AutoscalersAggregatedList Word32
autMaxResults
  = lens _autMaxResults
      (\ s a -> s{_autMaxResults = a})
      . _Coerce

instance GoogleRequest AutoscalersAggregatedList
         where
        type Rs AutoscalersAggregatedList =
             AutoscalerAggregatedList
        requestClient AutoscalersAggregatedList{..}
          = go _autProject _autFilter _autPageToken
              (Just _autMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy AutoscalersAggregatedListResource)
                      mempty
