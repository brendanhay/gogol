{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.Instances.SetScheduling
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sets an instance\'s scheduling options.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstancesSetScheduling@.
module Network.Google.Resource.Compute.Instances.SetScheduling
    (
    -- * REST Resource
      InstancesSetSchedulingResource

    -- * Creating a Request
    , instancesSetScheduling'
    , InstancesSetScheduling'

    -- * Request Lenses
    , issQuotaUser
    , issPrettyPrint
    , issProject
    , issUserIp
    , issZone
    , issKey
    , issOauthToken
    , issFields
    , issAlt
    , issInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstancesSetScheduling@ which the
-- 'InstancesSetScheduling'' request conforms to.
type InstancesSetSchedulingResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instances" :>
             Capture "instance" Text :>
               "setScheduling" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Sets an instance\'s scheduling options.
--
-- /See:/ 'instancesSetScheduling'' smart constructor.
data InstancesSetScheduling' = InstancesSetScheduling'
    { _issQuotaUser   :: !(Maybe Text)
    , _issPrettyPrint :: !Bool
    , _issProject     :: !Text
    , _issUserIp      :: !(Maybe Text)
    , _issZone        :: !Text
    , _issKey         :: !(Maybe Text)
    , _issOauthToken  :: !(Maybe Text)
    , _issFields      :: !(Maybe Text)
    , _issAlt         :: !Alt
    , _issInstance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesSetScheduling'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'issQuotaUser'
--
-- * 'issPrettyPrint'
--
-- * 'issProject'
--
-- * 'issUserIp'
--
-- * 'issZone'
--
-- * 'issKey'
--
-- * 'issOauthToken'
--
-- * 'issFields'
--
-- * 'issAlt'
--
-- * 'issInstance'
instancesSetScheduling'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'instance'
    -> InstancesSetScheduling'
instancesSetScheduling' pIssProject_ pIssZone_ pIssInstance_ =
    InstancesSetScheduling'
    { _issQuotaUser = Nothing
    , _issPrettyPrint = True
    , _issProject = pIssProject_
    , _issUserIp = Nothing
    , _issZone = pIssZone_
    , _issKey = Nothing
    , _issOauthToken = Nothing
    , _issFields = Nothing
    , _issAlt = JSON
    , _issInstance = pIssInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
issQuotaUser :: Lens' InstancesSetScheduling' (Maybe Text)
issQuotaUser
  = lens _issQuotaUser (\ s a -> s{_issQuotaUser = a})

-- | Returns response with indentations and line breaks.
issPrettyPrint :: Lens' InstancesSetScheduling' Bool
issPrettyPrint
  = lens _issPrettyPrint
      (\ s a -> s{_issPrettyPrint = a})

-- | Project ID for this request.
issProject :: Lens' InstancesSetScheduling' Text
issProject
  = lens _issProject (\ s a -> s{_issProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
issUserIp :: Lens' InstancesSetScheduling' (Maybe Text)
issUserIp
  = lens _issUserIp (\ s a -> s{_issUserIp = a})

-- | The name of the zone for this request.
issZone :: Lens' InstancesSetScheduling' Text
issZone = lens _issZone (\ s a -> s{_issZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
issKey :: Lens' InstancesSetScheduling' (Maybe Text)
issKey = lens _issKey (\ s a -> s{_issKey = a})

-- | OAuth 2.0 token for the current user.
issOauthToken :: Lens' InstancesSetScheduling' (Maybe Text)
issOauthToken
  = lens _issOauthToken
      (\ s a -> s{_issOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
issFields :: Lens' InstancesSetScheduling' (Maybe Text)
issFields
  = lens _issFields (\ s a -> s{_issFields = a})

-- | Data format for the response.
issAlt :: Lens' InstancesSetScheduling' Alt
issAlt = lens _issAlt (\ s a -> s{_issAlt = a})

-- | Instance name.
issInstance :: Lens' InstancesSetScheduling' Text
issInstance
  = lens _issInstance (\ s a -> s{_issInstance = a})

instance GoogleRequest InstancesSetScheduling' where
        type Rs InstancesSetScheduling' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u InstancesSetScheduling'{..}
          = go _issQuotaUser (Just _issPrettyPrint) _issProject
              _issUserIp
              _issZone
              _issKey
              _issOauthToken
              _issFields
              (Just _issAlt)
              _issInstance
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstancesSetSchedulingResource)
                      r
                      u
