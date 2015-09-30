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
-- Module      : Network.Google.Resource.Compute.Instances.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates an instance resource in the specified project using the data
-- included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstancesInsert@.
module Network.Google.Resource.Compute.Instances.Insert
    (
    -- * REST Resource
      InstancesInsertResource

    -- * Creating a Request
    , instancesInsert'
    , InstancesInsert'

    -- * Request Lenses
    , iiQuotaUser
    , iiPrettyPrint
    , iiProject
    , iiUserIp
    , iiZone
    , iiKey
    , iiOauthToken
    , iiFields
    , iiAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstancesInsert@ which the
-- 'InstancesInsert'' request conforms to.
type InstancesInsertResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instances" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Creates an instance resource in the specified project using the data
-- included in the request.
--
-- /See:/ 'instancesInsert'' smart constructor.
data InstancesInsert' = InstancesInsert'
    { _iiQuotaUser   :: !(Maybe Text)
    , _iiPrettyPrint :: !Bool
    , _iiProject     :: !Text
    , _iiUserIp      :: !(Maybe Text)
    , _iiZone        :: !Text
    , _iiKey         :: !(Maybe Text)
    , _iiOauthToken  :: !(Maybe Text)
    , _iiFields      :: !(Maybe Text)
    , _iiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iiQuotaUser'
--
-- * 'iiPrettyPrint'
--
-- * 'iiProject'
--
-- * 'iiUserIp'
--
-- * 'iiZone'
--
-- * 'iiKey'
--
-- * 'iiOauthToken'
--
-- * 'iiFields'
--
-- * 'iiAlt'
instancesInsert'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> InstancesInsert'
instancesInsert' pIiProject_ pIiZone_ =
    InstancesInsert'
    { _iiQuotaUser = Nothing
    , _iiPrettyPrint = True
    , _iiProject = pIiProject_
    , _iiUserIp = Nothing
    , _iiZone = pIiZone_
    , _iiKey = Nothing
    , _iiOauthToken = Nothing
    , _iiFields = Nothing
    , _iiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
iiQuotaUser :: Lens' InstancesInsert' (Maybe Text)
iiQuotaUser
  = lens _iiQuotaUser (\ s a -> s{_iiQuotaUser = a})

-- | Returns response with indentations and line breaks.
iiPrettyPrint :: Lens' InstancesInsert' Bool
iiPrettyPrint
  = lens _iiPrettyPrint
      (\ s a -> s{_iiPrettyPrint = a})

-- | Project ID for this request.
iiProject :: Lens' InstancesInsert' Text
iiProject
  = lens _iiProject (\ s a -> s{_iiProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
iiUserIp :: Lens' InstancesInsert' (Maybe Text)
iiUserIp = lens _iiUserIp (\ s a -> s{_iiUserIp = a})

-- | The name of the zone for this request.
iiZone :: Lens' InstancesInsert' Text
iiZone = lens _iiZone (\ s a -> s{_iiZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
iiKey :: Lens' InstancesInsert' (Maybe Text)
iiKey = lens _iiKey (\ s a -> s{_iiKey = a})

-- | OAuth 2.0 token for the current user.
iiOauthToken :: Lens' InstancesInsert' (Maybe Text)
iiOauthToken
  = lens _iiOauthToken (\ s a -> s{_iiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
iiFields :: Lens' InstancesInsert' (Maybe Text)
iiFields = lens _iiFields (\ s a -> s{_iiFields = a})

-- | Data format for the response.
iiAlt :: Lens' InstancesInsert' Alt
iiAlt = lens _iiAlt (\ s a -> s{_iiAlt = a})

instance GoogleRequest InstancesInsert' where
        type Rs InstancesInsert' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u InstancesInsert'{..}
          = go _iiQuotaUser (Just _iiPrettyPrint) _iiProject
              _iiUserIp
              _iiZone
              _iiKey
              _iiOauthToken
              _iiFields
              (Just _iiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstancesInsertResource)
                      r
                      u
