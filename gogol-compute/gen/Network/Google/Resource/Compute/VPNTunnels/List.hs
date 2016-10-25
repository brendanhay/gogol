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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of VpnTunnel resources contained in the specified
-- project and region.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.vpnTunnels.list@.
module Network.Google.Resource.Compute.VPNTunnels.List
    (
    -- * REST Resource
      VPNTunnelsListResource

    -- * Creating a Request
    , vpnTunnelsList
    , VPNTunnelsList

    -- * Request Lenses
    , vtlOrderBy
    , vtlProject
    , vtlFilter
    , vtlRegion
    , vtlPageToken
    , vtlMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.vpnTunnels.list@ method which the
-- 'VPNTunnelsList' request conforms to.
type VPNTunnelsListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "vpnTunnels" :>
                   QueryParam "orderBy" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "alt" AltJSON :> Get '[JSON] VPNTunnelList

-- | Retrieves a list of VpnTunnel resources contained in the specified
-- project and region.
--
-- /See:/ 'vpnTunnelsList' smart constructor.
data VPNTunnelsList = VPNTunnelsList'
    { _vtlOrderBy    :: !(Maybe Text)
    , _vtlProject    :: !Text
    , _vtlFilter     :: !(Maybe Text)
    , _vtlRegion     :: !Text
    , _vtlPageToken  :: !(Maybe Text)
    , _vtlMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VPNTunnelsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vtlOrderBy'
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
vpnTunnelsList
    :: Text -- ^ 'vtlProject'
    -> Text -- ^ 'vtlRegion'
    -> VPNTunnelsList
vpnTunnelsList pVtlProject_ pVtlRegion_ =
    VPNTunnelsList'
    { _vtlOrderBy = Nothing
    , _vtlProject = pVtlProject_
    , _vtlFilter = Nothing
    , _vtlRegion = pVtlRegion_
    , _vtlPageToken = Nothing
    , _vtlMaxResults = 500
    }

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
vtlOrderBy :: Lens' VPNTunnelsList (Maybe Text)
vtlOrderBy
  = lens _vtlOrderBy (\ s a -> s{_vtlOrderBy = a})

-- | Project ID for this request.
vtlProject :: Lens' VPNTunnelsList Text
vtlProject
  = lens _vtlProject (\ s a -> s{_vtlProject = a})

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
-- filter=name ne example-instance. You can filter on nested fields. For
-- example, you could filter on instances that have set the
-- scheduling.automaticRestart field to true. Use filtering on nested
-- fields to take advantage of labels to organize and search for results
-- based on label values. To filter on multiple expressions, provide each
-- separate expression within parentheses. For example,
-- (scheduling.automaticRestart eq true) (zone eq us-central1-f). Multiple
-- expressions are treated as AND expressions, meaning that resources must
-- match all expressions to pass the filters.
vtlFilter :: Lens' VPNTunnelsList (Maybe Text)
vtlFilter
  = lens _vtlFilter (\ s a -> s{_vtlFilter = a})

-- | Name of the region for this request.
vtlRegion :: Lens' VPNTunnelsList Text
vtlRegion
  = lens _vtlRegion (\ s a -> s{_vtlRegion = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
vtlPageToken :: Lens' VPNTunnelsList (Maybe Text)
vtlPageToken
  = lens _vtlPageToken (\ s a -> s{_vtlPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests.
vtlMaxResults :: Lens' VPNTunnelsList Word32
vtlMaxResults
  = lens _vtlMaxResults
      (\ s a -> s{_vtlMaxResults = a})
      . _Coerce

instance GoogleRequest VPNTunnelsList where
        type Rs VPNTunnelsList = VPNTunnelList
        type Scopes VPNTunnelsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient VPNTunnelsList'{..}
          = go _vtlProject _vtlRegion _vtlOrderBy _vtlFilter
              _vtlPageToken
              (Just _vtlMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy VPNTunnelsListResource)
                      mempty
