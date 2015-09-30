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
-- Module      : Network.Google.Resource.Compute.Firewalls.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a firewall resource in the specified project using the data
-- included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeFirewallsInsert@.
module Network.Google.Resource.Compute.Firewalls.Insert
    (
    -- * REST Resource
      FirewallsInsertResource

    -- * Creating a Request
    , firewallsInsert'
    , FirewallsInsert'

    -- * Request Lenses
    , fiQuotaUser
    , fiPrettyPrint
    , fiProject
    , fiUserIp
    , fiKey
    , fiOauthToken
    , fiFields
    , fiAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeFirewallsInsert@ which the
-- 'FirewallsInsert'' request conforms to.
type FirewallsInsertResource =
     Capture "project" Text :>
       "global" :>
         "firewalls" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Creates a firewall resource in the specified project using the data
-- included in the request.
--
-- /See:/ 'firewallsInsert'' smart constructor.
data FirewallsInsert' = FirewallsInsert'
    { _fiQuotaUser   :: !(Maybe Text)
    , _fiPrettyPrint :: !Bool
    , _fiProject     :: !Text
    , _fiUserIp      :: !(Maybe Text)
    , _fiKey         :: !(Maybe Text)
    , _fiOauthToken  :: !(Maybe Text)
    , _fiFields      :: !(Maybe Text)
    , _fiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FirewallsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fiQuotaUser'
--
-- * 'fiPrettyPrint'
--
-- * 'fiProject'
--
-- * 'fiUserIp'
--
-- * 'fiKey'
--
-- * 'fiOauthToken'
--
-- * 'fiFields'
--
-- * 'fiAlt'
firewallsInsert'
    :: Text -- ^ 'project'
    -> FirewallsInsert'
firewallsInsert' pFiProject_ =
    FirewallsInsert'
    { _fiQuotaUser = Nothing
    , _fiPrettyPrint = True
    , _fiProject = pFiProject_
    , _fiUserIp = Nothing
    , _fiKey = Nothing
    , _fiOauthToken = Nothing
    , _fiFields = Nothing
    , _fiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
fiQuotaUser :: Lens' FirewallsInsert' (Maybe Text)
fiQuotaUser
  = lens _fiQuotaUser (\ s a -> s{_fiQuotaUser = a})

-- | Returns response with indentations and line breaks.
fiPrettyPrint :: Lens' FirewallsInsert' Bool
fiPrettyPrint
  = lens _fiPrettyPrint
      (\ s a -> s{_fiPrettyPrint = a})

-- | Project ID for this request.
fiProject :: Lens' FirewallsInsert' Text
fiProject
  = lens _fiProject (\ s a -> s{_fiProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
fiUserIp :: Lens' FirewallsInsert' (Maybe Text)
fiUserIp = lens _fiUserIp (\ s a -> s{_fiUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fiKey :: Lens' FirewallsInsert' (Maybe Text)
fiKey = lens _fiKey (\ s a -> s{_fiKey = a})

-- | OAuth 2.0 token for the current user.
fiOauthToken :: Lens' FirewallsInsert' (Maybe Text)
fiOauthToken
  = lens _fiOauthToken (\ s a -> s{_fiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
fiFields :: Lens' FirewallsInsert' (Maybe Text)
fiFields = lens _fiFields (\ s a -> s{_fiFields = a})

-- | Data format for the response.
fiAlt :: Lens' FirewallsInsert' Alt
fiAlt = lens _fiAlt (\ s a -> s{_fiAlt = a})

instance GoogleRequest FirewallsInsert' where
        type Rs FirewallsInsert' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u FirewallsInsert'{..}
          = go _fiQuotaUser (Just _fiPrettyPrint) _fiProject
              _fiUserIp
              _fiKey
              _fiOauthToken
              _fiFields
              (Just _fiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy FirewallsInsertResource)
                      r
                      u
