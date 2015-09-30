{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.Firewalls.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified firewall resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeFirewallsDelete@.
module Compute.Firewalls.Delete
    (
    -- * REST Resource
      FirewallsDeleteAPI

    -- * Creating a Request
    , firewallsDelete
    , FirewallsDelete

    -- * Request Lenses
    , fdQuotaUser
    , fdPrettyPrint
    , fdProject
    , fdUserIp
    , fdKey
    , fdOauthToken
    , fdFirewall
    , fdFields
    , fdAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeFirewallsDelete@ which the
-- 'FirewallsDelete' request conforms to.
type FirewallsDeleteAPI =
     Capture "project" Text :>
       "global" :>
         "firewalls" :>
           Capture "firewall" Text :> Delete '[JSON] Operation

-- | Deletes the specified firewall resource.
--
-- /See:/ 'firewallsDelete' smart constructor.
data FirewallsDelete = FirewallsDelete
    { _fdQuotaUser   :: !(Maybe Text)
    , _fdPrettyPrint :: !Bool
    , _fdProject     :: !Text
    , _fdUserIp      :: !(Maybe Text)
    , _fdKey         :: !(Maybe Text)
    , _fdOauthToken  :: !(Maybe Text)
    , _fdFirewall    :: !Text
    , _fdFields      :: !(Maybe Text)
    , _fdAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FirewallsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fdQuotaUser'
--
-- * 'fdPrettyPrint'
--
-- * 'fdProject'
--
-- * 'fdUserIp'
--
-- * 'fdKey'
--
-- * 'fdOauthToken'
--
-- * 'fdFirewall'
--
-- * 'fdFields'
--
-- * 'fdAlt'
firewallsDelete
    :: Text -- ^ 'project'
    -> Text -- ^ 'firewall'
    -> FirewallsDelete
firewallsDelete pFdProject_ pFdFirewall_ =
    FirewallsDelete
    { _fdQuotaUser = Nothing
    , _fdPrettyPrint = True
    , _fdProject = pFdProject_
    , _fdUserIp = Nothing
    , _fdKey = Nothing
    , _fdOauthToken = Nothing
    , _fdFirewall = pFdFirewall_
    , _fdFields = Nothing
    , _fdAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
fdQuotaUser :: Lens' FirewallsDelete' (Maybe Text)
fdQuotaUser
  = lens _fdQuotaUser (\ s a -> s{_fdQuotaUser = a})

-- | Returns response with indentations and line breaks.
fdPrettyPrint :: Lens' FirewallsDelete' Bool
fdPrettyPrint
  = lens _fdPrettyPrint
      (\ s a -> s{_fdPrettyPrint = a})

-- | Project ID for this request.
fdProject :: Lens' FirewallsDelete' Text
fdProject
  = lens _fdProject (\ s a -> s{_fdProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
fdUserIp :: Lens' FirewallsDelete' (Maybe Text)
fdUserIp = lens _fdUserIp (\ s a -> s{_fdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fdKey :: Lens' FirewallsDelete' (Maybe Text)
fdKey = lens _fdKey (\ s a -> s{_fdKey = a})

-- | OAuth 2.0 token for the current user.
fdOauthToken :: Lens' FirewallsDelete' (Maybe Text)
fdOauthToken
  = lens _fdOauthToken (\ s a -> s{_fdOauthToken = a})

-- | Name of the firewall resource to delete.
fdFirewall :: Lens' FirewallsDelete' Text
fdFirewall
  = lens _fdFirewall (\ s a -> s{_fdFirewall = a})

-- | Selector specifying which fields to include in a partial response.
fdFields :: Lens' FirewallsDelete' (Maybe Text)
fdFields = lens _fdFields (\ s a -> s{_fdFields = a})

-- | Data format for the response.
fdAlt :: Lens' FirewallsDelete' Text
fdAlt = lens _fdAlt (\ s a -> s{_fdAlt = a})

instance GoogleRequest FirewallsDelete' where
        type Rs FirewallsDelete' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u FirewallsDelete{..}
          = go _fdQuotaUser _fdPrettyPrint _fdProject _fdUserIp
              _fdKey
              _fdOauthToken
              _fdFirewall
              _fdFields
              _fdAlt
          where go
                  = clientWithRoute (Proxy :: Proxy FirewallsDeleteAPI)
                      r
                      u
