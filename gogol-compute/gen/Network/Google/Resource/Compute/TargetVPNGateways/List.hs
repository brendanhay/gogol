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
-- Module      : Network.Google.Resource.Compute.TargetVPNGateways.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of TargetVpnGateway resources available to the
-- specified project and region.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetVpnGateways.list@.
module Network.Google.Resource.Compute.TargetVPNGateways.List
    (
    -- * REST Resource
      TargetVPNGatewaysListResource

    -- * Creating a Request
    , targetVPNGatewaysList
    , TargetVPNGatewaysList

    -- * Request Lenses
    , tvglProject
    , tvglFilter
    , tvglRegion
    , tvglPageToken
    , tvglMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.targetVpnGateways.list@ method which the
-- 'TargetVPNGatewaysList' request conforms to.
type TargetVPNGatewaysListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "targetVpnGateways" :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" Word32 :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] TargetVPNGatewayList

-- | Retrieves the list of TargetVpnGateway resources available to the
-- specified project and region.
--
-- /See:/ 'targetVPNGatewaysList' smart constructor.
data TargetVPNGatewaysList = TargetVPNGatewaysList
    { _tvglProject    :: !Text
    , _tvglFilter     :: !(Maybe Text)
    , _tvglRegion     :: !Text
    , _tvglPageToken  :: !(Maybe Text)
    , _tvglMaxResults :: !Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetVPNGatewaysList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvglProject'
--
-- * 'tvglFilter'
--
-- * 'tvglRegion'
--
-- * 'tvglPageToken'
--
-- * 'tvglMaxResults'
targetVPNGatewaysList
    :: Text -- ^ 'tvglProject'
    -> Text -- ^ 'tvglRegion'
    -> TargetVPNGatewaysList
targetVPNGatewaysList pTvglProject_ pTvglRegion_ =
    TargetVPNGatewaysList
    { _tvglProject = pTvglProject_
    , _tvglFilter = Nothing
    , _tvglRegion = pTvglRegion_
    , _tvglPageToken = Nothing
    , _tvglMaxResults = 500
    }

-- | Project ID for this request.
tvglProject :: Lens' TargetVPNGatewaysList Text
tvglProject
  = lens _tvglProject (\ s a -> s{_tvglProject = a})

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
tvglFilter :: Lens' TargetVPNGatewaysList (Maybe Text)
tvglFilter
  = lens _tvglFilter (\ s a -> s{_tvglFilter = a})

-- | The name of the region for this request.
tvglRegion :: Lens' TargetVPNGatewaysList Text
tvglRegion
  = lens _tvglRegion (\ s a -> s{_tvglRegion = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
tvglPageToken :: Lens' TargetVPNGatewaysList (Maybe Text)
tvglPageToken
  = lens _tvglPageToken
      (\ s a -> s{_tvglPageToken = a})

-- | Maximum count of results to be returned.
tvglMaxResults :: Lens' TargetVPNGatewaysList Word32
tvglMaxResults
  = lens _tvglMaxResults
      (\ s a -> s{_tvglMaxResults = a})

instance GoogleRequest TargetVPNGatewaysList where
        type Rs TargetVPNGatewaysList = TargetVPNGatewayList
        requestClient TargetVPNGatewaysList{..}
          = go _tvglProject _tvglRegion _tvglFilter
              _tvglPageToken
              (Just _tvglMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetVPNGatewaysListResource)
                      mempty
