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
-- Module      : Network.Google.Resource.Compute.InstanceGroups.ListInstances
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the instances in the specified instance group.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstanceGroupsListInstances@.
module Network.Google.Resource.Compute.InstanceGroups.ListInstances
    (
    -- * REST Resource
      InstanceGroupsListInstancesResource

    -- * Creating a Request
    , instanceGroupsListInstances'
    , InstanceGroupsListInstances'

    -- * Request Lenses
    , igliProject
    , igliZone
    , igliPayload
    , igliFilter
    , igliPageToken
    , igliInstanceGroup
    , igliMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstanceGroupsListInstances@ method which the
-- 'InstanceGroupsListInstances'' request conforms to.
type InstanceGroupsListInstancesResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instanceGroups" :>
             Capture "instanceGroup" Text :>
               "listInstances" :>
                 QueryParam "filter" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" Word32 :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] InstanceGroupsListInstancesRequest :>
                           Post '[JSON] InstanceGroupsListInstances

-- | Lists the instances in the specified instance group.
--
-- /See:/ 'instanceGroupsListInstances'' smart constructor.
data InstanceGroupsListInstances' = InstanceGroupsListInstances'
    { _igliProject       :: !Text
    , _igliZone          :: !Text
    , _igliPayload       :: !InstanceGroupsListInstancesRequest
    , _igliFilter        :: !(Maybe Text)
    , _igliPageToken     :: !(Maybe Text)
    , _igliInstanceGroup :: !Text
    , _igliMaxResults    :: !Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupsListInstances'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igliProject'
--
-- * 'igliZone'
--
-- * 'igliPayload'
--
-- * 'igliFilter'
--
-- * 'igliPageToken'
--
-- * 'igliInstanceGroup'
--
-- * 'igliMaxResults'
instanceGroupsListInstances'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> InstanceGroupsListInstancesRequest -- ^ 'payload'
    -> Text -- ^ 'instanceGroup'
    -> InstanceGroupsListInstances'
instanceGroupsListInstances' pIgliProject_ pIgliZone_ pIgliPayload_ pIgliInstanceGroup_ =
    InstanceGroupsListInstances'
    { _igliProject = pIgliProject_
    , _igliZone = pIgliZone_
    , _igliPayload = pIgliPayload_
    , _igliFilter = Nothing
    , _igliPageToken = Nothing
    , _igliInstanceGroup = pIgliInstanceGroup_
    , _igliMaxResults = 500
    }

-- | The project ID for this request.
igliProject :: Lens' InstanceGroupsListInstances' Text
igliProject
  = lens _igliProject (\ s a -> s{_igliProject = a})

-- | The name of the zone where the instance group is located.
igliZone :: Lens' InstanceGroupsListInstances' Text
igliZone = lens _igliZone (\ s a -> s{_igliZone = a})

-- | Multipart request metadata.
igliPayload :: Lens' InstanceGroupsListInstances' InstanceGroupsListInstancesRequest
igliPayload
  = lens _igliPayload (\ s a -> s{_igliPayload = a})

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
igliFilter :: Lens' InstanceGroupsListInstances' (Maybe Text)
igliFilter
  = lens _igliFilter (\ s a -> s{_igliFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
igliPageToken :: Lens' InstanceGroupsListInstances' (Maybe Text)
igliPageToken
  = lens _igliPageToken
      (\ s a -> s{_igliPageToken = a})

-- | The name of the instance group from which you want to generate a list of
-- included instances.
igliInstanceGroup :: Lens' InstanceGroupsListInstances' Text
igliInstanceGroup
  = lens _igliInstanceGroup
      (\ s a -> s{_igliInstanceGroup = a})

-- | Maximum count of results to be returned.
igliMaxResults :: Lens' InstanceGroupsListInstances' Word32
igliMaxResults
  = lens _igliMaxResults
      (\ s a -> s{_igliMaxResults = a})

instance GoogleRequest InstanceGroupsListInstances'
         where
        type Rs InstanceGroupsListInstances' =
             InstanceGroupsListInstances
        requestClient InstanceGroupsListInstances'{..}
          = go _igliProject _igliZone _igliInstanceGroup
              _igliFilter
              _igliPageToken
              (Just _igliMaxResults)
              (Just AltJSON)
              _igliPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstanceGroupsListInstancesResource)
                      mempty
