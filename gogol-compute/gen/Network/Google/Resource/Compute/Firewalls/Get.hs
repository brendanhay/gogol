{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.Firewalls.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified firewall resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeFirewallsGet@.
module Compute.Firewalls.Get
    (
    -- * REST Resource
      FirewallsGetAPI

    -- * Creating a Request
    , firewallsGet
    , FirewallsGet

    -- * Request Lenses
    , fgQuotaUser
    , fgPrettyPrint
    , fgProject
    , fgUserIp
    , fgKey
    , fgOauthToken
    , fgFirewall
    , fgFields
    , fgAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeFirewallsGet@ which the
-- 'FirewallsGet' request conforms to.
type FirewallsGetAPI =
     Capture "project" Text :>
       "global" :>
         "firewalls" :>
           Capture "firewall" Text :> Get '[JSON] Firewall

-- | Returns the specified firewall resource.
--
-- /See:/ 'firewallsGet' smart constructor.
data FirewallsGet = FirewallsGet
    { _fgQuotaUser   :: !(Maybe Text)
    , _fgPrettyPrint :: !Bool
    , _fgProject     :: !Text
    , _fgUserIp      :: !(Maybe Text)
    , _fgKey         :: !(Maybe Text)
    , _fgOauthToken  :: !(Maybe Text)
    , _fgFirewall    :: !Text
    , _fgFields      :: !(Maybe Text)
    , _fgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FirewallsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fgQuotaUser'
--
-- * 'fgPrettyPrint'
--
-- * 'fgProject'
--
-- * 'fgUserIp'
--
-- * 'fgKey'
--
-- * 'fgOauthToken'
--
-- * 'fgFirewall'
--
-- * 'fgFields'
--
-- * 'fgAlt'
firewallsGet
    :: Text -- ^ 'project'
    -> Text -- ^ 'firewall'
    -> FirewallsGet
firewallsGet pFgProject_ pFgFirewall_ =
    FirewallsGet
    { _fgQuotaUser = Nothing
    , _fgPrettyPrint = True
    , _fgProject = pFgProject_
    , _fgUserIp = Nothing
    , _fgKey = Nothing
    , _fgOauthToken = Nothing
    , _fgFirewall = pFgFirewall_
    , _fgFields = Nothing
    , _fgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
fgQuotaUser :: Lens' FirewallsGet' (Maybe Text)
fgQuotaUser
  = lens _fgQuotaUser (\ s a -> s{_fgQuotaUser = a})

-- | Returns response with indentations and line breaks.
fgPrettyPrint :: Lens' FirewallsGet' Bool
fgPrettyPrint
  = lens _fgPrettyPrint
      (\ s a -> s{_fgPrettyPrint = a})

-- | Project ID for this request.
fgProject :: Lens' FirewallsGet' Text
fgProject
  = lens _fgProject (\ s a -> s{_fgProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
fgUserIp :: Lens' FirewallsGet' (Maybe Text)
fgUserIp = lens _fgUserIp (\ s a -> s{_fgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fgKey :: Lens' FirewallsGet' (Maybe Text)
fgKey = lens _fgKey (\ s a -> s{_fgKey = a})

-- | OAuth 2.0 token for the current user.
fgOauthToken :: Lens' FirewallsGet' (Maybe Text)
fgOauthToken
  = lens _fgOauthToken (\ s a -> s{_fgOauthToken = a})

-- | Name of the firewall resource to return.
fgFirewall :: Lens' FirewallsGet' Text
fgFirewall
  = lens _fgFirewall (\ s a -> s{_fgFirewall = a})

-- | Selector specifying which fields to include in a partial response.
fgFields :: Lens' FirewallsGet' (Maybe Text)
fgFields = lens _fgFields (\ s a -> s{_fgFields = a})

-- | Data format for the response.
fgAlt :: Lens' FirewallsGet' Text
fgAlt = lens _fgAlt (\ s a -> s{_fgAlt = a})

instance GoogleRequest FirewallsGet' where
        type Rs FirewallsGet' = Firewall
        request = requestWithRoute defReq computeURL
        requestWithRoute r u FirewallsGet{..}
          = go _fgQuotaUser _fgPrettyPrint _fgProject _fgUserIp
              _fgKey
              _fgOauthToken
              _fgFirewall
              _fgFields
              _fgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy FirewallsGetAPI) r
                      u
