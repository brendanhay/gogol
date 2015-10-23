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
-- Module      : Network.Google.Resource.Compute.TargetVPNGateways.AggregatedList
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of target VPN gateways grouped by scope.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetVpnGateways.aggregatedList@.
module Network.Google.Resource.Compute.TargetVPNGateways.AggregatedList
    (
    -- * REST Resource
      TargetVPNGatewaysAggregatedListResource

    -- * Creating a Request
    , targetVPNGatewaysAggregatedList
    , TargetVPNGatewaysAggregatedList

    -- * Request Lenses
    , tvgalProject
    , tvgalFilter
    , tvgalPageToken
    , tvgalMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.targetVpnGateways.aggregatedList@ method which the
-- 'TargetVPNGatewaysAggregatedList' request conforms to.
type TargetVPNGatewaysAggregatedListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "targetVpnGateways" :>
                 QueryParam "filter" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (JSONText Word32) :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] TargetVPNGatewayAggregatedList

-- | Retrieves the list of target VPN gateways grouped by scope.
--
-- /See:/ 'targetVPNGatewaysAggregatedList' smart constructor.
data TargetVPNGatewaysAggregatedList = TargetVPNGatewaysAggregatedList
    { _tvgalProject    :: !Text
    , _tvgalFilter     :: !(Maybe Text)
    , _tvgalPageToken  :: !(Maybe Text)
    , _tvgalMaxResults :: !(JSONText Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetVPNGatewaysAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvgalProject'
--
-- * 'tvgalFilter'
--
-- * 'tvgalPageToken'
--
-- * 'tvgalMaxResults'
targetVPNGatewaysAggregatedList
    :: Text -- ^ 'tvgalProject'
    -> TargetVPNGatewaysAggregatedList
targetVPNGatewaysAggregatedList pTvgalProject_ =
    TargetVPNGatewaysAggregatedList
    { _tvgalProject = pTvgalProject_
    , _tvgalFilter = Nothing
    , _tvgalPageToken = Nothing
    , _tvgalMaxResults = 500
    }

-- | Project ID for this request.
tvgalProject :: Lens' TargetVPNGatewaysAggregatedList Text
tvgalProject
  = lens _tvgalProject (\ s a -> s{_tvgalProject = a})

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
tvgalFilter :: Lens' TargetVPNGatewaysAggregatedList (Maybe Text)
tvgalFilter
  = lens _tvgalFilter (\ s a -> s{_tvgalFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
tvgalPageToken :: Lens' TargetVPNGatewaysAggregatedList (Maybe Text)
tvgalPageToken
  = lens _tvgalPageToken
      (\ s a -> s{_tvgalPageToken = a})

-- | Maximum count of results to be returned.
tvgalMaxResults :: Lens' TargetVPNGatewaysAggregatedList Word32
tvgalMaxResults
  = lens _tvgalMaxResults
      (\ s a -> s{_tvgalMaxResults = a})
      . _Coerce

instance GoogleRequest
         TargetVPNGatewaysAggregatedList where
        type Rs TargetVPNGatewaysAggregatedList =
             TargetVPNGatewayAggregatedList
        requestClient TargetVPNGatewaysAggregatedList{..}
          = go _tvgalProject _tvgalFilter _tvgalPageToken
              (Just _tvgalMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy TargetVPNGatewaysAggregatedListResource)
                      mempty
