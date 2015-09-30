{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.Firewalls.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the specified firewall resource with the data included in the
-- request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeFirewallsUpdate@.
module Compute.Firewalls.Update
    (
    -- * REST Resource
      FirewallsUpdateAPI

    -- * Creating a Request
    , firewallsUpdate
    , FirewallsUpdate

    -- * Request Lenses
    , fuQuotaUser
    , fuPrettyPrint
    , fuProject
    , fuUserIp
    , fuKey
    , fuOauthToken
    , fuFirewall
    , fuFields
    , fuAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeFirewallsUpdate@ which the
-- 'FirewallsUpdate' request conforms to.
type FirewallsUpdateAPI =
     Capture "project" Text :>
       "global" :>
         "firewalls" :>
           Capture "firewall" Text :> Put '[JSON] Operation

-- | Updates the specified firewall resource with the data included in the
-- request.
--
-- /See:/ 'firewallsUpdate' smart constructor.
data FirewallsUpdate = FirewallsUpdate
    { _fuQuotaUser   :: !(Maybe Text)
    , _fuPrettyPrint :: !Bool
    , _fuProject     :: !Text
    , _fuUserIp      :: !(Maybe Text)
    , _fuKey         :: !(Maybe Text)
    , _fuOauthToken  :: !(Maybe Text)
    , _fuFirewall    :: !Text
    , _fuFields      :: !(Maybe Text)
    , _fuAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FirewallsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fuQuotaUser'
--
-- * 'fuPrettyPrint'
--
-- * 'fuProject'
--
-- * 'fuUserIp'
--
-- * 'fuKey'
--
-- * 'fuOauthToken'
--
-- * 'fuFirewall'
--
-- * 'fuFields'
--
-- * 'fuAlt'
firewallsUpdate
    :: Text -- ^ 'project'
    -> Text -- ^ 'firewall'
    -> FirewallsUpdate
firewallsUpdate pFuProject_ pFuFirewall_ =
    FirewallsUpdate
    { _fuQuotaUser = Nothing
    , _fuPrettyPrint = True
    , _fuProject = pFuProject_
    , _fuUserIp = Nothing
    , _fuKey = Nothing
    , _fuOauthToken = Nothing
    , _fuFirewall = pFuFirewall_
    , _fuFields = Nothing
    , _fuAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
fuQuotaUser :: Lens' FirewallsUpdate' (Maybe Text)
fuQuotaUser
  = lens _fuQuotaUser (\ s a -> s{_fuQuotaUser = a})

-- | Returns response with indentations and line breaks.
fuPrettyPrint :: Lens' FirewallsUpdate' Bool
fuPrettyPrint
  = lens _fuPrettyPrint
      (\ s a -> s{_fuPrettyPrint = a})

-- | Project ID for this request.
fuProject :: Lens' FirewallsUpdate' Text
fuProject
  = lens _fuProject (\ s a -> s{_fuProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
fuUserIp :: Lens' FirewallsUpdate' (Maybe Text)
fuUserIp = lens _fuUserIp (\ s a -> s{_fuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fuKey :: Lens' FirewallsUpdate' (Maybe Text)
fuKey = lens _fuKey (\ s a -> s{_fuKey = a})

-- | OAuth 2.0 token for the current user.
fuOauthToken :: Lens' FirewallsUpdate' (Maybe Text)
fuOauthToken
  = lens _fuOauthToken (\ s a -> s{_fuOauthToken = a})

-- | Name of the firewall resource to update.
fuFirewall :: Lens' FirewallsUpdate' Text
fuFirewall
  = lens _fuFirewall (\ s a -> s{_fuFirewall = a})

-- | Selector specifying which fields to include in a partial response.
fuFields :: Lens' FirewallsUpdate' (Maybe Text)
fuFields = lens _fuFields (\ s a -> s{_fuFields = a})

-- | Data format for the response.
fuAlt :: Lens' FirewallsUpdate' Text
fuAlt = lens _fuAlt (\ s a -> s{_fuAlt = a})

instance GoogleRequest FirewallsUpdate' where
        type Rs FirewallsUpdate' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u FirewallsUpdate{..}
          = go _fuQuotaUser _fuPrettyPrint _fuProject _fuUserIp
              _fuKey
              _fuOauthToken
              _fuFirewall
              _fuFields
              _fuAlt
          where go
                  = clientWithRoute (Proxy :: Proxy FirewallsUpdateAPI)
                      r
                      u
