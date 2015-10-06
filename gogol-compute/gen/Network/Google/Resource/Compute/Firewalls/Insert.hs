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
    , fiPayload
    , fiKey
    , fiOAuthToken
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
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
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
    , _fiPayload     :: !Firewall
    , _fiKey         :: !(Maybe AuthKey)
    , _fiOAuthToken  :: !(Maybe OAuthToken)
    , _fiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'fiPayload'
--
-- * 'fiKey'
--
-- * 'fiOAuthToken'
--
-- * 'fiFields'
firewallsInsert'
    :: Text -- ^ 'project'
    -> Firewall -- ^ 'payload'
    -> FirewallsInsert'
firewallsInsert' pFiProject_ pFiPayload_ =
    FirewallsInsert'
    { _fiQuotaUser = Nothing
    , _fiPrettyPrint = True
    , _fiProject = pFiProject_
    , _fiUserIP = Nothing
    , _fiPayload = pFiPayload_
    , _fiKey = Nothing
    , _fiOAuthToken = Nothing
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

-- | Multipart request metadata.
fiPayload :: Lens' FirewallsInsert' Firewall
fiPayload
  = lens _fiPayload (\ s a -> s{_fiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fiKey :: Lens' FirewallsInsert' (Maybe AuthKey)
fiKey = lens _fiKey (\ s a -> s{_fiKey = a})

-- | OAuth 2.0 token for the current user.
fiOAuthToken :: Lens' FirewallsInsert' (Maybe OAuthToken)
fiOAuthToken
  = lens _fiOAuthToken (\ s a -> s{_fiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
fiFields :: Lens' FirewallsInsert' (Maybe Text)
fiFields = lens _fiFields (\ s a -> s{_fiFields = a})

instance GoogleAuth FirewallsInsert' where
        authKey = fiKey . _Just
        authToken = fiOAuthToken . _Just

instance GoogleRequest FirewallsInsert' where
        type Rs FirewallsInsert' = Operation
        request = requestWith computeRequest
        requestWith rq FirewallsInsert'{..}
          = go _fiProject _fiQuotaUser (Just _fiPrettyPrint)
              _fiUserIP
              _fiFields
              _fiKey
              _fiOAuthToken
              (Just AltJSON)
              _fiPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy FirewallsInsertResource)
                      rq
