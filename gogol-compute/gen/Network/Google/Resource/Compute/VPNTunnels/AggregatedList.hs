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
-- Module      : Network.Google.Resource.Compute.VPNTunnels.AggregatedList
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an aggregated list of VPN tunnels.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.vpnTunnels.aggregatedList@.
module Network.Google.Resource.Compute.VPNTunnels.AggregatedList
    (
    -- * REST Resource
      VPNTunnelsAggregatedListResource

    -- * Creating a Request
    , vpnTunnelsAggregatedList
    , VPNTunnelsAggregatedList

    -- * Request Lenses
    , vtalProject
    , vtalFilter
    , vtalPageToken
    , vtalMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.vpnTunnels.aggregatedList@ method which the
-- 'VPNTunnelsAggregatedList' request conforms to.
type VPNTunnelsAggregatedListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "vpnTunnels" :>
                 QueryParam "filter" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (Textual Word32) :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] VPNTunnelAggregatedList

-- | Retrieves an aggregated list of VPN tunnels.
--
-- /See:/ 'vpnTunnelsAggregatedList' smart constructor.
data VPNTunnelsAggregatedList = VPNTunnelsAggregatedList
    { _vtalProject    :: !Text
    , _vtalFilter     :: !(Maybe Text)
    , _vtalPageToken  :: !(Maybe Text)
    , _vtalMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VPNTunnelsAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vtalProject'
--
-- * 'vtalFilter'
--
-- * 'vtalPageToken'
--
-- * 'vtalMaxResults'
vpnTunnelsAggregatedList
    :: Text -- ^ 'vtalProject'
    -> VPNTunnelsAggregatedList
vpnTunnelsAggregatedList pVtalProject_ =
    VPNTunnelsAggregatedList
    { _vtalProject = pVtalProject_
    , _vtalFilter = Nothing
    , _vtalPageToken = Nothing
    , _vtalMaxResults = 500
    }

-- | Project ID for this request.
vtalProject :: Lens' VPNTunnelsAggregatedList Text
vtalProject
  = lens _vtalProject (\ s a -> s{_vtalProject = a})

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
vtalFilter :: Lens' VPNTunnelsAggregatedList (Maybe Text)
vtalFilter
  = lens _vtalFilter (\ s a -> s{_vtalFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
vtalPageToken :: Lens' VPNTunnelsAggregatedList (Maybe Text)
vtalPageToken
  = lens _vtalPageToken
      (\ s a -> s{_vtalPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests.
vtalMaxResults :: Lens' VPNTunnelsAggregatedList Word32
vtalMaxResults
  = lens _vtalMaxResults
      (\ s a -> s{_vtalMaxResults = a})
      . _Coerce

instance GoogleRequest VPNTunnelsAggregatedList where
        type Rs VPNTunnelsAggregatedList =
             VPNTunnelAggregatedList
        requestClient VPNTunnelsAggregatedList{..}
          = go _vtalProject _vtalFilter _vtalPageToken
              (Just _vtalMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy VPNTunnelsAggregatedListResource)
                      mempty
