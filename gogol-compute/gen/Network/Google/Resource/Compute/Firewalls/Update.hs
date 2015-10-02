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
module Network.Google.Resource.Compute.Firewalls.Update
    (
    -- * REST Resource
      FirewallsUpdateResource

    -- * Creating a Request
    , firewallsUpdate'
    , FirewallsUpdate'

    -- * Request Lenses
    , fuQuotaUser
    , fuPrettyPrint
    , fuProject
    , fuUserIP
    , fuKey
    , fuOAuthToken
    , fuFirewall
    , fuFirewall
    , fuFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeFirewallsUpdate@ which the
-- 'FirewallsUpdate'' request conforms to.
type FirewallsUpdateResource =
     Capture "project" Text :>
       "global" :>
         "firewalls" :>
           Capture "firewall" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Firewall :> Put '[JSON] Operation

-- | Updates the specified firewall resource with the data included in the
-- request.
--
-- /See:/ 'firewallsUpdate'' smart constructor.
data FirewallsUpdate' = FirewallsUpdate'
    { _fuQuotaUser   :: !(Maybe Text)
    , _fuPrettyPrint :: !Bool
    , _fuProject     :: !Text
    , _fuUserIP      :: !(Maybe Text)
    , _fuKey         :: !(Maybe Key)
    , _fuOAuthToken  :: !(Maybe OAuthToken)
    , _fuFirewall    :: !Text
    , _fuFirewall    :: !Firewall
    , _fuFields      :: !(Maybe Text)
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
-- * 'fuUserIP'
--
-- * 'fuKey'
--
-- * 'fuOAuthToken'
--
-- * 'fuFirewall'
--
-- * 'fuFirewall'
--
-- * 'fuFields'
firewallsUpdate'
    :: Text -- ^ 'project'
    -> Text -- ^ 'firewall'
    -> Firewall -- ^ 'Firewall'
    -> FirewallsUpdate'
firewallsUpdate' pFuProject_ pFuFirewall_ pFuFirewall_ =
    FirewallsUpdate'
    { _fuQuotaUser = Nothing
    , _fuPrettyPrint = True
    , _fuProject = pFuProject_
    , _fuUserIP = Nothing
    , _fuKey = Nothing
    , _fuOAuthToken = Nothing
    , _fuFirewall = pFuFirewall_
    , _fuFirewall = pFuFirewall_
    , _fuFields = Nothing
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
fuUserIP :: Lens' FirewallsUpdate' (Maybe Text)
fuUserIP = lens _fuUserIP (\ s a -> s{_fuUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fuKey :: Lens' FirewallsUpdate' (Maybe Key)
fuKey = lens _fuKey (\ s a -> s{_fuKey = a})

-- | OAuth 2.0 token for the current user.
fuOAuthToken :: Lens' FirewallsUpdate' (Maybe OAuthToken)
fuOAuthToken
  = lens _fuOAuthToken (\ s a -> s{_fuOAuthToken = a})

-- | Name of the firewall resource to update.
fuFirewall :: Lens' FirewallsUpdate' Text
fuFirewall
  = lens _fuFirewall (\ s a -> s{_fuFirewall = a})

-- | Multipart request metadata.
fuFirewall :: Lens' FirewallsUpdate' Firewall
fuFirewall
  = lens _fuFirewall (\ s a -> s{_fuFirewall = a})

-- | Selector specifying which fields to include in a partial response.
fuFields :: Lens' FirewallsUpdate' (Maybe Text)
fuFields = lens _fuFields (\ s a -> s{_fuFields = a})

instance GoogleAuth FirewallsUpdate' where
        authKey = fuKey . _Just
        authToken = fuOAuthToken . _Just

instance GoogleRequest FirewallsUpdate' where
        type Rs FirewallsUpdate' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u FirewallsUpdate'{..}
          = go _fuProject _fuFirewall _fuQuotaUser
              (Just _fuPrettyPrint)
              _fuUserIP
              _fuFields
              _fuKey
              _fuOAuthToken
              (Just AltJSON)
              _fuFirewall
          where go
                  = clientWithRoute
                      (Proxy :: Proxy FirewallsUpdateResource)
                      r
                      u
