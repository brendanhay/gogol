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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of target VPN gateways available to the specified
-- project and region.
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
    , tvglOrderBy
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
                   QueryParam "orderBy" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] TargetVPNGatewayList

-- | Retrieves a list of target VPN gateways available to the specified
-- project and region.
--
-- /See:/ 'targetVPNGatewaysList' smart constructor.
data TargetVPNGatewaysList = TargetVPNGatewaysList'
    { _tvglOrderBy    :: !(Maybe Text)
    , _tvglProject    :: !Text
    , _tvglFilter     :: !(Maybe Text)
    , _tvglRegion     :: !Text
    , _tvglPageToken  :: !(Maybe Text)
    , _tvglMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetVPNGatewaysList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvglOrderBy'
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
    TargetVPNGatewaysList'
    { _tvglOrderBy = Nothing
    , _tvglProject = pTvglProject_
    , _tvglFilter = Nothing
    , _tvglRegion = pTvglRegion_
    , _tvglPageToken = Nothing
    , _tvglMaxResults = 500
    }

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
tvglOrderBy :: Lens' TargetVPNGatewaysList (Maybe Text)
tvglOrderBy
  = lens _tvglOrderBy (\ s a -> s{_tvglOrderBy = a})

-- | Project ID for this request.
tvglProject :: Lens' TargetVPNGatewaysList Text
tvglProject
  = lens _tvglProject (\ s a -> s{_tvglProject = a})

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
tvglFilter :: Lens' TargetVPNGatewaysList (Maybe Text)
tvglFilter
  = lens _tvglFilter (\ s a -> s{_tvglFilter = a})

-- | Name of the region for this request.
tvglRegion :: Lens' TargetVPNGatewaysList Text
tvglRegion
  = lens _tvglRegion (\ s a -> s{_tvglRegion = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
tvglPageToken :: Lens' TargetVPNGatewaysList (Maybe Text)
tvglPageToken
  = lens _tvglPageToken
      (\ s a -> s{_tvglPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests.
tvglMaxResults :: Lens' TargetVPNGatewaysList Word32
tvglMaxResults
  = lens _tvglMaxResults
      (\ s a -> s{_tvglMaxResults = a})
      . _Coerce

instance GoogleRequest TargetVPNGatewaysList where
        type Rs TargetVPNGatewaysList = TargetVPNGatewayList
        type Scopes TargetVPNGatewaysList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient TargetVPNGatewaysList'{..}
          = go _tvglProject _tvglRegion _tvglOrderBy
              _tvglFilter
              _tvglPageToken
              (Just _tvglMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetVPNGatewaysListResource)
                      mempty
