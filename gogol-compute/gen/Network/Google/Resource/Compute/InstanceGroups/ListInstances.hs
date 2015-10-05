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
-- | Lists instances in an instance group. The parameters for this method
-- specify whether the list filters instances by state and named ports
-- information.
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
    , igliQuotaUser
    , igliPrettyPrint
    , igliProject
    , igliUserIP
    , igliZone
    , igliPayload
    , igliKey
    , igliFilter
    , igliPageToken
    , igliOAuthToken
    , igliInstanceGroup
    , igliMaxResults
    , igliFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstanceGroupsListInstances@ which the
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
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "key" Key :>
                                 QueryParam "oauth_token" OAuthToken :>
                                   QueryParam "alt" AltJSON :>
                                     ReqBody '[JSON]
                                       InstanceGroupsListInstancesRequest
                                       :>
                                       Post '[JSON] InstanceGroupsListInstances

-- | Lists instances in an instance group. The parameters for this method
-- specify whether the list filters instances by state and named ports
-- information.
--
-- /See:/ 'instanceGroupsListInstances'' smart constructor.
data InstanceGroupsListInstances' = InstanceGroupsListInstances'
    { _igliQuotaUser     :: !(Maybe Text)
    , _igliPrettyPrint   :: !Bool
    , _igliProject       :: !Text
    , _igliUserIP        :: !(Maybe Text)
    , _igliZone          :: !Text
    , _igliPayload       :: !InstanceGroupsListInstancesRequest
    , _igliKey           :: !(Maybe Key)
    , _igliFilter        :: !(Maybe Text)
    , _igliPageToken     :: !(Maybe Text)
    , _igliOAuthToken    :: !(Maybe OAuthToken)
    , _igliInstanceGroup :: !Text
    , _igliMaxResults    :: !Word32
    , _igliFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupsListInstances'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igliQuotaUser'
--
-- * 'igliPrettyPrint'
--
-- * 'igliProject'
--
-- * 'igliUserIP'
--
-- * 'igliZone'
--
-- * 'igliPayload'
--
-- * 'igliKey'
--
-- * 'igliFilter'
--
-- * 'igliPageToken'
--
-- * 'igliOAuthToken'
--
-- * 'igliInstanceGroup'
--
-- * 'igliMaxResults'
--
-- * 'igliFields'
instanceGroupsListInstances'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> InstanceGroupsListInstancesRequest -- ^ 'payload'
    -> Text -- ^ 'instanceGroup'
    -> InstanceGroupsListInstances'
instanceGroupsListInstances' pIgliProject_ pIgliZone_ pIgliPayload_ pIgliInstanceGroup_ =
    InstanceGroupsListInstances'
    { _igliQuotaUser = Nothing
    , _igliPrettyPrint = True
    , _igliProject = pIgliProject_
    , _igliUserIP = Nothing
    , _igliZone = pIgliZone_
    , _igliPayload = pIgliPayload_
    , _igliKey = Nothing
    , _igliFilter = Nothing
    , _igliPageToken = Nothing
    , _igliOAuthToken = Nothing
    , _igliInstanceGroup = pIgliInstanceGroup_
    , _igliMaxResults = 500
    , _igliFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
igliQuotaUser :: Lens' InstanceGroupsListInstances' (Maybe Text)
igliQuotaUser
  = lens _igliQuotaUser
      (\ s a -> s{_igliQuotaUser = a})

-- | Returns response with indentations and line breaks.
igliPrettyPrint :: Lens' InstanceGroupsListInstances' Bool
igliPrettyPrint
  = lens _igliPrettyPrint
      (\ s a -> s{_igliPrettyPrint = a})

-- | The project ID for this request.
igliProject :: Lens' InstanceGroupsListInstances' Text
igliProject
  = lens _igliProject (\ s a -> s{_igliProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
igliUserIP :: Lens' InstanceGroupsListInstances' (Maybe Text)
igliUserIP
  = lens _igliUserIP (\ s a -> s{_igliUserIP = a})

-- | The URL of the zone where the instance group is located.
igliZone :: Lens' InstanceGroupsListInstances' Text
igliZone = lens _igliZone (\ s a -> s{_igliZone = a})

-- | Multipart request metadata.
igliPayload :: Lens' InstanceGroupsListInstances' InstanceGroupsListInstancesRequest
igliPayload
  = lens _igliPayload (\ s a -> s{_igliPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igliKey :: Lens' InstanceGroupsListInstances' (Maybe Key)
igliKey = lens _igliKey (\ s a -> s{_igliKey = a})

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

-- | OAuth 2.0 token for the current user.
igliOAuthToken :: Lens' InstanceGroupsListInstances' (Maybe OAuthToken)
igliOAuthToken
  = lens _igliOAuthToken
      (\ s a -> s{_igliOAuthToken = a})

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

-- | Selector specifying which fields to include in a partial response.
igliFields :: Lens' InstanceGroupsListInstances' (Maybe Text)
igliFields
  = lens _igliFields (\ s a -> s{_igliFields = a})

instance GoogleAuth InstanceGroupsListInstances'
         where
        authKey = igliKey . _Just
        authToken = igliOAuthToken . _Just

instance GoogleRequest InstanceGroupsListInstances'
         where
        type Rs InstanceGroupsListInstances' =
             InstanceGroupsListInstances
        request = requestWithRoute defReq computeURL
        requestWithRoute r u InstanceGroupsListInstances'{..}
          = go _igliProject _igliZone _igliInstanceGroup
              _igliFilter
              _igliPageToken
              (Just _igliMaxResults)
              _igliQuotaUser
              (Just _igliPrettyPrint)
              _igliUserIP
              _igliFields
              _igliKey
              _igliOAuthToken
              (Just AltJSON)
              _igliPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstanceGroupsListInstancesResource)
                      r
                      u
