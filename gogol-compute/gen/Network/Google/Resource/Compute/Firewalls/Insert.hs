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
    , fiUserIP
    , fiKey
    , fiOAuthToken
    , fiFirewall
    , fiFields
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
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Firewall :> Post '[JSON] Operation

-- | Creates a firewall resource in the specified project using the data
-- included in the request.
--
-- /See:/ 'firewallsInsert'' smart constructor.
data FirewallsInsert' = FirewallsInsert'
    { _fiQuotaUser   :: !(Maybe Text)
    , _fiPrettyPrint :: !Bool
    , _fiProject     :: !Text
    , _fiUserIP      :: !(Maybe Text)
    , _fiKey         :: !(Maybe Key)
    , _fiOAuthToken  :: !(Maybe OAuthToken)
    , _fiFirewall    :: !Firewall
    , _fiFields      :: !(Maybe Text)
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
-- * 'fiUserIP'
--
-- * 'fiKey'
--
-- * 'fiOAuthToken'
--
-- * 'fiFirewall'
--
-- * 'fiFields'
firewallsInsert'
    :: Text -- ^ 'project'
    -> Firewall -- ^ 'Firewall'
    -> FirewallsInsert'
firewallsInsert' pFiProject_ pFiFirewall_ =
    FirewallsInsert'
    { _fiQuotaUser = Nothing
    , _fiPrettyPrint = True
    , _fiProject = pFiProject_
    , _fiUserIP = Nothing
    , _fiKey = Nothing
    , _fiOAuthToken = Nothing
    , _fiFirewall = pFiFirewall_
    , _fiFields = Nothing
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
fiUserIP :: Lens' FirewallsInsert' (Maybe Text)
fiUserIP = lens _fiUserIP (\ s a -> s{_fiUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fiKey :: Lens' FirewallsInsert' (Maybe Key)
fiKey = lens _fiKey (\ s a -> s{_fiKey = a})

-- | OAuth 2.0 token for the current user.
fiOAuthToken :: Lens' FirewallsInsert' (Maybe OAuthToken)
fiOAuthToken
  = lens _fiOAuthToken (\ s a -> s{_fiOAuthToken = a})

-- | Multipart request metadata.
fiFirewall :: Lens' FirewallsInsert' Firewall
fiFirewall
  = lens _fiFirewall (\ s a -> s{_fiFirewall = a})

-- | Selector specifying which fields to include in a partial response.
fiFields :: Lens' FirewallsInsert' (Maybe Text)
fiFields = lens _fiFields (\ s a -> s{_fiFields = a})

instance GoogleAuth FirewallsInsert' where
        authKey = fiKey . _Just
        authToken = fiOAuthToken . _Just

instance GoogleRequest FirewallsInsert' where
        type Rs FirewallsInsert' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u FirewallsInsert'{..}
          = go _fiQuotaUser (Just _fiPrettyPrint) _fiProject
              _fiUserIP
              _fiKey
              _fiOAuthToken
              _fiFields
              (Just AltJSON)
              _fiFirewall
          where go
                  = clientWithRoute
                      (Proxy :: Proxy FirewallsInsertResource)
                      r
                      u
