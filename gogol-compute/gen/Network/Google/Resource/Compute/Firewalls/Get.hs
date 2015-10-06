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
module Network.Google.Resource.Compute.Firewalls.Get
    (
    -- * REST Resource
      FirewallsGetResource

    -- * Creating a Request
    , firewallsGet'
    , FirewallsGet'

    -- * Request Lenses
    , fgQuotaUser
    , fgPrettyPrint
    , fgProject
    , fgUserIP
    , fgKey
    , fgOAuthToken
    , fgFirewall
    , fgFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeFirewallsGet@ which the
-- 'FirewallsGet'' request conforms to.
type FirewallsGetResource =
     Capture "project" Text :>
       "global" :>
         "firewalls" :>
           Capture "firewall" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Firewall

-- | Returns the specified firewall resource.
--
-- /See:/ 'firewallsGet'' smart constructor.
data FirewallsGet' = FirewallsGet'
    { _fgQuotaUser   :: !(Maybe Text)
    , _fgPrettyPrint :: !Bool
    , _fgProject     :: !Text
    , _fgUserIP      :: !(Maybe Text)
    , _fgKey         :: !(Maybe AuthKey)
    , _fgOAuthToken  :: !(Maybe OAuthToken)
    , _fgFirewall    :: !Text
    , _fgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'fgUserIP'
--
-- * 'fgKey'
--
-- * 'fgOAuthToken'
--
-- * 'fgFirewall'
--
-- * 'fgFields'
firewallsGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'firewall'
    -> FirewallsGet'
firewallsGet' pFgProject_ pFgFirewall_ =
    FirewallsGet'
    { _fgQuotaUser = Nothing
    , _fgPrettyPrint = True
    , _fgProject = pFgProject_
    , _fgUserIP = Nothing
    , _fgKey = Nothing
    , _fgOAuthToken = Nothing
    , _fgFirewall = pFgFirewall_
    , _fgFields = Nothing
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
fgUserIP :: Lens' FirewallsGet' (Maybe Text)
fgUserIP = lens _fgUserIP (\ s a -> s{_fgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fgKey :: Lens' FirewallsGet' (Maybe AuthKey)
fgKey = lens _fgKey (\ s a -> s{_fgKey = a})

-- | OAuth 2.0 token for the current user.
fgOAuthToken :: Lens' FirewallsGet' (Maybe OAuthToken)
fgOAuthToken
  = lens _fgOAuthToken (\ s a -> s{_fgOAuthToken = a})

-- | Name of the firewall resource to return.
fgFirewall :: Lens' FirewallsGet' Text
fgFirewall
  = lens _fgFirewall (\ s a -> s{_fgFirewall = a})

-- | Selector specifying which fields to include in a partial response.
fgFields :: Lens' FirewallsGet' (Maybe Text)
fgFields = lens _fgFields (\ s a -> s{_fgFields = a})

instance GoogleAuth FirewallsGet' where
        _AuthKey = fgKey . _Just
        _AuthToken = fgOAuthToken . _Just

instance GoogleRequest FirewallsGet' where
        type Rs FirewallsGet' = Firewall
        request = requestWith computeRequest
        requestWith rq FirewallsGet'{..}
          = go _fgProject _fgFirewall _fgQuotaUser
              (Just _fgPrettyPrint)
              _fgUserIP
              _fgFields
              _fgKey
              _fgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy FirewallsGetResource)
                      rq
