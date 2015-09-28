{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.TargetInstances.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a TargetInstance resource in the specified project and zone
-- using the data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetInstances.insert@.
module Network.Google.API.Compute.TargetInstances.Insert
    (
    -- * REST Resource
      TargetInstancesInsertAPI

    -- * Creating a Request
    , targetInstancesInsert'
    , TargetInstancesInsert'

    -- * Request Lenses
    , tiiQuotaUser
    , tiiPrettyPrint
    , tiiProject
    , tiiUserIp
    , tiiZone
    , tiiKey
    , tiiOauthToken
    , tiiFields
    , tiiAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.targetInstances.insert which the
-- 'TargetInstancesInsert'' request conforms to.
type TargetInstancesInsertAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "targetInstances" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Creates a TargetInstance resource in the specified project and zone
-- using the data included in the request.
--
-- /See:/ 'targetInstancesInsert'' smart constructor.
data TargetInstancesInsert' = TargetInstancesInsert'
    { _tiiQuotaUser   :: !(Maybe Text)
    , _tiiPrettyPrint :: !Bool
    , _tiiProject     :: !Text
    , _tiiUserIp      :: !(Maybe Text)
    , _tiiZone        :: !Text
    , _tiiKey         :: !(Maybe Text)
    , _tiiOauthToken  :: !(Maybe Text)
    , _tiiFields      :: !(Maybe Text)
    , _tiiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetInstancesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiiQuotaUser'
--
-- * 'tiiPrettyPrint'
--
-- * 'tiiProject'
--
-- * 'tiiUserIp'
--
-- * 'tiiZone'
--
-- * 'tiiKey'
--
-- * 'tiiOauthToken'
--
-- * 'tiiFields'
--
-- * 'tiiAlt'
targetInstancesInsert'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> TargetInstancesInsert'
targetInstancesInsert' pTiiProject_ pTiiZone_ =
    TargetInstancesInsert'
    { _tiiQuotaUser = Nothing
    , _tiiPrettyPrint = True
    , _tiiProject = pTiiProject_
    , _tiiUserIp = Nothing
    , _tiiZone = pTiiZone_
    , _tiiKey = Nothing
    , _tiiOauthToken = Nothing
    , _tiiFields = Nothing
    , _tiiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tiiQuotaUser :: Lens' TargetInstancesInsert' (Maybe Text)
tiiQuotaUser
  = lens _tiiQuotaUser (\ s a -> s{_tiiQuotaUser = a})

-- | Returns response with indentations and line breaks.
tiiPrettyPrint :: Lens' TargetInstancesInsert' Bool
tiiPrettyPrint
  = lens _tiiPrettyPrint
      (\ s a -> s{_tiiPrettyPrint = a})

-- | Name of the project scoping this request.
tiiProject :: Lens' TargetInstancesInsert' Text
tiiProject
  = lens _tiiProject (\ s a -> s{_tiiProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tiiUserIp :: Lens' TargetInstancesInsert' (Maybe Text)
tiiUserIp
  = lens _tiiUserIp (\ s a -> s{_tiiUserIp = a})

-- | Name of the zone scoping this request.
tiiZone :: Lens' TargetInstancesInsert' Text
tiiZone = lens _tiiZone (\ s a -> s{_tiiZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tiiKey :: Lens' TargetInstancesInsert' (Maybe Text)
tiiKey = lens _tiiKey (\ s a -> s{_tiiKey = a})

-- | OAuth 2.0 token for the current user.
tiiOauthToken :: Lens' TargetInstancesInsert' (Maybe Text)
tiiOauthToken
  = lens _tiiOauthToken
      (\ s a -> s{_tiiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tiiFields :: Lens' TargetInstancesInsert' (Maybe Text)
tiiFields
  = lens _tiiFields (\ s a -> s{_tiiFields = a})

-- | Data format for the response.
tiiAlt :: Lens' TargetInstancesInsert' Alt
tiiAlt = lens _tiiAlt (\ s a -> s{_tiiAlt = a})

instance GoogleRequest TargetInstancesInsert' where
        type Rs TargetInstancesInsert' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u TargetInstancesInsert'{..}
          = go _tiiQuotaUser (Just _tiiPrettyPrint) _tiiProject
              _tiiUserIp
              _tiiZone
              _tiiKey
              _tiiOauthToken
              _tiiFields
              (Just _tiiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TargetInstancesInsertAPI)
                      r
                      u
