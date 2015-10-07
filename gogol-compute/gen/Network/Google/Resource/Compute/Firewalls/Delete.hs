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
module Network.Google.Resource.Compute.Firewalls.Delete
    (
    -- * REST Resource
      FirewallsDeleteResource

    -- * Creating a Request
    , firewallsDelete'
    , FirewallsDelete'

    -- * Request Lenses
    , fdQuotaUser
    , fdPrettyPrint
    , fdProject
    , fdUserIP
    , fdKey
    , fdOAuthToken
    , fdFirewall
    , fdFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeFirewallsDelete@ method which the
-- 'FirewallsDelete'' request conforms to.
type FirewallsDeleteResource =
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
                         QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified firewall resource.
--
-- /See:/ 'firewallsDelete'' smart constructor.
data FirewallsDelete' = FirewallsDelete'
    { _fdQuotaUser   :: !(Maybe Text)
    , _fdPrettyPrint :: !Bool
    , _fdProject     :: !Text
    , _fdUserIP      :: !(Maybe Text)
    , _fdKey         :: !(Maybe AuthKey)
    , _fdOAuthToken  :: !(Maybe OAuthToken)
    , _fdFirewall    :: !Text
    , _fdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'fdUserIP'
--
-- * 'fdKey'
--
-- * 'fdOAuthToken'
--
-- * 'fdFirewall'
--
-- * 'fdFields'
firewallsDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'firewall'
    -> FirewallsDelete'
firewallsDelete' pFdProject_ pFdFirewall_ =
    FirewallsDelete'
    { _fdQuotaUser = Nothing
    , _fdPrettyPrint = True
    , _fdProject = pFdProject_
    , _fdUserIP = Nothing
    , _fdKey = Nothing
    , _fdOAuthToken = Nothing
    , _fdFirewall = pFdFirewall_
    , _fdFields = Nothing
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
fdUserIP :: Lens' FirewallsDelete' (Maybe Text)
fdUserIP = lens _fdUserIP (\ s a -> s{_fdUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fdKey :: Lens' FirewallsDelete' (Maybe AuthKey)
fdKey = lens _fdKey (\ s a -> s{_fdKey = a})

-- | OAuth 2.0 token for the current user.
fdOAuthToken :: Lens' FirewallsDelete' (Maybe OAuthToken)
fdOAuthToken
  = lens _fdOAuthToken (\ s a -> s{_fdOAuthToken = a})

-- | Name of the firewall resource to delete.
fdFirewall :: Lens' FirewallsDelete' Text
fdFirewall
  = lens _fdFirewall (\ s a -> s{_fdFirewall = a})

-- | Selector specifying which fields to include in a partial response.
fdFields :: Lens' FirewallsDelete' (Maybe Text)
fdFields = lens _fdFields (\ s a -> s{_fdFields = a})

instance GoogleAuth FirewallsDelete' where
        _AuthKey = fdKey . _Just
        _AuthToken = fdOAuthToken . _Just

instance GoogleRequest FirewallsDelete' where
        type Rs FirewallsDelete' = Operation
        request = requestWith computeRequest
        requestWith rq FirewallsDelete'{..}
          = go _fdProject _fdFirewall _fdQuotaUser
              (Just _fdPrettyPrint)
              _fdUserIP
              _fdFields
              _fdKey
              _fdOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy FirewallsDeleteResource)
                      rq
