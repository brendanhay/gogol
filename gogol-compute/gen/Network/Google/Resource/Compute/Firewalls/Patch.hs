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
-- Module      : Network.Google.Resource.Compute.Firewalls.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the specified firewall resource with the data included in the
-- request. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeFirewallsPatch@.
module Network.Google.Resource.Compute.Firewalls.Patch
    (
    -- * REST Resource
      FirewallsPatchResource

    -- * Creating a Request
    , firewallsPatch'
    , FirewallsPatch'

    -- * Request Lenses
    , fpQuotaUser
    , fpPrettyPrint
    , fpProject
    , fpUserIp
    , fpKey
    , fpOauthToken
    , fpFirewall
    , fpFields
    , fpAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeFirewallsPatch@ which the
-- 'FirewallsPatch'' request conforms to.
type FirewallsPatchResource =
     Capture "project" Text :>
       "global" :>
         "firewalls" :>
           Capture "firewall" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Patch '[JSON] Operation

-- | Updates the specified firewall resource with the data included in the
-- request. This method supports patch semantics.
--
-- /See:/ 'firewallsPatch'' smart constructor.
data FirewallsPatch' = FirewallsPatch'
    { _fpQuotaUser   :: !(Maybe Text)
    , _fpPrettyPrint :: !Bool
    , _fpProject     :: !Text
    , _fpUserIp      :: !(Maybe Text)
    , _fpKey         :: !(Maybe Text)
    , _fpOauthToken  :: !(Maybe Text)
    , _fpFirewall    :: !Text
    , _fpFields      :: !(Maybe Text)
    , _fpAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FirewallsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fpQuotaUser'
--
-- * 'fpPrettyPrint'
--
-- * 'fpProject'
--
-- * 'fpUserIp'
--
-- * 'fpKey'
--
-- * 'fpOauthToken'
--
-- * 'fpFirewall'
--
-- * 'fpFields'
--
-- * 'fpAlt'
firewallsPatch'
    :: Text -- ^ 'project'
    -> Text -- ^ 'firewall'
    -> FirewallsPatch'
firewallsPatch' pFpProject_ pFpFirewall_ =
    FirewallsPatch'
    { _fpQuotaUser = Nothing
    , _fpPrettyPrint = True
    , _fpProject = pFpProject_
    , _fpUserIp = Nothing
    , _fpKey = Nothing
    , _fpOauthToken = Nothing
    , _fpFirewall = pFpFirewall_
    , _fpFields = Nothing
    , _fpAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
fpQuotaUser :: Lens' FirewallsPatch' (Maybe Text)
fpQuotaUser
  = lens _fpQuotaUser (\ s a -> s{_fpQuotaUser = a})

-- | Returns response with indentations and line breaks.
fpPrettyPrint :: Lens' FirewallsPatch' Bool
fpPrettyPrint
  = lens _fpPrettyPrint
      (\ s a -> s{_fpPrettyPrint = a})

-- | Project ID for this request.
fpProject :: Lens' FirewallsPatch' Text
fpProject
  = lens _fpProject (\ s a -> s{_fpProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
fpUserIp :: Lens' FirewallsPatch' (Maybe Text)
fpUserIp = lens _fpUserIp (\ s a -> s{_fpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fpKey :: Lens' FirewallsPatch' (Maybe Text)
fpKey = lens _fpKey (\ s a -> s{_fpKey = a})

-- | OAuth 2.0 token for the current user.
fpOauthToken :: Lens' FirewallsPatch' (Maybe Text)
fpOauthToken
  = lens _fpOauthToken (\ s a -> s{_fpOauthToken = a})

-- | Name of the firewall resource to update.
fpFirewall :: Lens' FirewallsPatch' Text
fpFirewall
  = lens _fpFirewall (\ s a -> s{_fpFirewall = a})

-- | Selector specifying which fields to include in a partial response.
fpFields :: Lens' FirewallsPatch' (Maybe Text)
fpFields = lens _fpFields (\ s a -> s{_fpFields = a})

-- | Data format for the response.
fpAlt :: Lens' FirewallsPatch' Alt
fpAlt = lens _fpAlt (\ s a -> s{_fpAlt = a})

instance GoogleRequest FirewallsPatch' where
        type Rs FirewallsPatch' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u FirewallsPatch'{..}
          = go _fpQuotaUser (Just _fpPrettyPrint) _fpProject
              _fpUserIp
              _fpKey
              _fpOauthToken
              _fpFirewall
              _fpFields
              (Just _fpAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy FirewallsPatchResource)
                      r
                      u
