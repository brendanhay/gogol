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
    , fpUserIP
    , fpPayload
    , fpKey
    , fpOAuthToken
    , fpFirewall
    , fpFields
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
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Firewall :> Patch '[JSON] Operation

-- | Updates the specified firewall resource with the data included in the
-- request. This method supports patch semantics.
--
-- /See:/ 'firewallsPatch'' smart constructor.
data FirewallsPatch' = FirewallsPatch'
    { _fpQuotaUser   :: !(Maybe Text)
    , _fpPrettyPrint :: !Bool
    , _fpProject     :: !Text
    , _fpUserIP      :: !(Maybe Text)
    , _fpPayload     :: !Firewall
    , _fpKey         :: !(Maybe Key)
    , _fpOAuthToken  :: !(Maybe OAuthToken)
    , _fpFirewall    :: !Text
    , _fpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'fpUserIP'
--
-- * 'fpPayload'
--
-- * 'fpKey'
--
-- * 'fpOAuthToken'
--
-- * 'fpFirewall'
--
-- * 'fpFields'
firewallsPatch'
    :: Text -- ^ 'project'
    -> Firewall -- ^ 'payload'
    -> Text -- ^ 'firewall'
    -> FirewallsPatch'
firewallsPatch' pFpProject_ pFpPayload_ pFpFirewall_ =
    FirewallsPatch'
    { _fpQuotaUser = Nothing
    , _fpPrettyPrint = True
    , _fpProject = pFpProject_
    , _fpUserIP = Nothing
    , _fpPayload = pFpPayload_
    , _fpKey = Nothing
    , _fpOAuthToken = Nothing
    , _fpFirewall = pFpFirewall_
    , _fpFields = Nothing
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
fpUserIP :: Lens' FirewallsPatch' (Maybe Text)
fpUserIP = lens _fpUserIP (\ s a -> s{_fpUserIP = a})

-- | Multipart request metadata.
fpPayload :: Lens' FirewallsPatch' Firewall
fpPayload
  = lens _fpPayload (\ s a -> s{_fpPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fpKey :: Lens' FirewallsPatch' (Maybe Key)
fpKey = lens _fpKey (\ s a -> s{_fpKey = a})

-- | OAuth 2.0 token for the current user.
fpOAuthToken :: Lens' FirewallsPatch' (Maybe OAuthToken)
fpOAuthToken
  = lens _fpOAuthToken (\ s a -> s{_fpOAuthToken = a})

-- | Name of the firewall resource to update.
fpFirewall :: Lens' FirewallsPatch' Text
fpFirewall
  = lens _fpFirewall (\ s a -> s{_fpFirewall = a})

-- | Selector specifying which fields to include in a partial response.
fpFields :: Lens' FirewallsPatch' (Maybe Text)
fpFields = lens _fpFields (\ s a -> s{_fpFields = a})

instance GoogleAuth FirewallsPatch' where
        authKey = fpKey . _Just
        authToken = fpOAuthToken . _Just

instance GoogleRequest FirewallsPatch' where
        type Rs FirewallsPatch' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u FirewallsPatch'{..}
          = go _fpProject _fpFirewall _fpQuotaUser
              (Just _fpPrettyPrint)
              _fpUserIP
              _fpFields
              _fpKey
              _fpOAuthToken
              (Just AltJSON)
              _fpPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy FirewallsPatchResource)
                      r
                      u
