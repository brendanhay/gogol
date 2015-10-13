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
-- Module      : Network.Google.Resource.Compute.VPNTunnels.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of VpnTunnel resources contained in the specified
-- project and region.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeVPNTunnelsList@.
module Network.Google.Resource.Compute.VPNTunnels.List
    (
    -- * REST Resource
      VPNTunnelsListResource

    -- * Creating a Request
    , vpnTunnelsList'
    , VPNTunnelsList'

    -- * Request Lenses
    , vtlProject
    , vtlFilter
    , vtlRegion
    , vtlPageToken
    , vtlMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeVPNTunnelsList@ method which the
-- 'VPNTunnelsList'' request conforms to.
type VPNTunnelsListResource =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "vpnTunnels" :>
             QueryParam "filter" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Word32 :>
                   QueryParam "alt" AltJSON :> Get '[JSON] VPNTunnelList

-- | Retrieves the list of VpnTunnel resources contained in the specified
-- project and region.
--
-- /See:/ 'vpnTunnelsList'' smart constructor.
data VPNTunnelsList' = VPNTunnelsList'
    { _vtlProject    :: !Text
    , _vtlFilter     :: !(Maybe Text)
    , _vtlRegion     :: !Text
    , _vtlPageToken  :: !(Maybe Text)
    , _vtlMaxResults :: !Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VPNTunnelsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vtlProject'
--
-- * 'vtlFilter'
--
-- * 'vtlRegion'
--
-- * 'vtlPageToken'
--
-- * 'vtlMaxResults'
vpnTunnelsList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'region'
    -> VPNTunnelsList'
vpnTunnelsList' pVtlProject_ pVtlRegion_ =
    VPNTunnelsList'
    { _vtlProject = pVtlProject_
    , _vtlFilter = Nothing
    , _vtlRegion = pVtlRegion_
    , _vtlPageToken = Nothing
    , _vtlMaxResults = 500
    }

-- | Project ID for this request.
vtlProject :: Lens' VPNTunnelsList' Text
vtlProject
  = lens _vtlProject (\ s a -> s{_vtlProject = a})

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
vtlFilter :: Lens' VPNTunnelsList' (Maybe Text)
vtlFilter
  = lens _vtlFilter (\ s a -> s{_vtlFilter = a})

-- | The name of the region for this request.
vtlRegion :: Lens' VPNTunnelsList' Text
vtlRegion
  = lens _vtlRegion (\ s a -> s{_vtlRegion = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
vtlPageToken :: Lens' VPNTunnelsList' (Maybe Text)
vtlPageToken
  = lens _vtlPageToken (\ s a -> s{_vtlPageToken = a})

-- | Maximum count of results to be returned.
vtlMaxResults :: Lens' VPNTunnelsList' Word32
vtlMaxResults
  = lens _vtlMaxResults
      (\ s a -> s{_vtlMaxResults = a})

instance GoogleRequest VPNTunnelsList' where
        type Rs VPNTunnelsList' = VPNTunnelList
        requestClient VPNTunnelsList'{..}
          = go _vtlProject _vtlRegion _vtlFilter _vtlPageToken
              (Just _vtlMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy VPNTunnelsListResource)
                      mempty
