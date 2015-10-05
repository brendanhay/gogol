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
-- Module      : Network.Google.Resource.Compute.ForwardingRules.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a ForwardingRule resource in the specified project and region
-- using the data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeForwardingRulesInsert@.
module Network.Google.Resource.Compute.ForwardingRules.Insert
    (
    -- * REST Resource
      ForwardingRulesInsertResource

    -- * Creating a Request
    , forwardingRulesInsert'
    , ForwardingRulesInsert'

    -- * Request Lenses
    , friQuotaUser
    , friPrettyPrint
    , friProject
    , friUserIP
    , friPayload
    , friKey
    , friRegion
    , friOAuthToken
    , friFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeForwardingRulesInsert@ which the
-- 'ForwardingRulesInsert'' request conforms to.
type ForwardingRulesInsertResource =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "forwardingRules" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] ForwardingRule :>
                             Post '[JSON] Operation

-- | Creates a ForwardingRule resource in the specified project and region
-- using the data included in the request.
--
-- /See:/ 'forwardingRulesInsert'' smart constructor.
data ForwardingRulesInsert' = ForwardingRulesInsert'
    { _friQuotaUser   :: !(Maybe Text)
    , _friPrettyPrint :: !Bool
    , _friProject     :: !Text
    , _friUserIP      :: !(Maybe Text)
    , _friPayload     :: !ForwardingRule
    , _friKey         :: !(Maybe Key)
    , _friRegion      :: !Text
    , _friOAuthToken  :: !(Maybe OAuthToken)
    , _friFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ForwardingRulesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'friQuotaUser'
--
-- * 'friPrettyPrint'
--
-- * 'friProject'
--
-- * 'friUserIP'
--
-- * 'friPayload'
--
-- * 'friKey'
--
-- * 'friRegion'
--
-- * 'friOAuthToken'
--
-- * 'friFields'
forwardingRulesInsert'
    :: Text -- ^ 'project'
    -> ForwardingRule -- ^ 'payload'
    -> Text -- ^ 'region'
    -> ForwardingRulesInsert'
forwardingRulesInsert' pFriProject_ pFriPayload_ pFriRegion_ =
    ForwardingRulesInsert'
    { _friQuotaUser = Nothing
    , _friPrettyPrint = True
    , _friProject = pFriProject_
    , _friUserIP = Nothing
    , _friPayload = pFriPayload_
    , _friKey = Nothing
    , _friRegion = pFriRegion_
    , _friOAuthToken = Nothing
    , _friFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
friQuotaUser :: Lens' ForwardingRulesInsert' (Maybe Text)
friQuotaUser
  = lens _friQuotaUser (\ s a -> s{_friQuotaUser = a})

-- | Returns response with indentations and line breaks.
friPrettyPrint :: Lens' ForwardingRulesInsert' Bool
friPrettyPrint
  = lens _friPrettyPrint
      (\ s a -> s{_friPrettyPrint = a})

-- | Name of the project scoping this request.
friProject :: Lens' ForwardingRulesInsert' Text
friProject
  = lens _friProject (\ s a -> s{_friProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
friUserIP :: Lens' ForwardingRulesInsert' (Maybe Text)
friUserIP
  = lens _friUserIP (\ s a -> s{_friUserIP = a})

-- | Multipart request metadata.
friPayload :: Lens' ForwardingRulesInsert' ForwardingRule
friPayload
  = lens _friPayload (\ s a -> s{_friPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
friKey :: Lens' ForwardingRulesInsert' (Maybe Key)
friKey = lens _friKey (\ s a -> s{_friKey = a})

-- | Name of the region scoping this request.
friRegion :: Lens' ForwardingRulesInsert' Text
friRegion
  = lens _friRegion (\ s a -> s{_friRegion = a})

-- | OAuth 2.0 token for the current user.
friOAuthToken :: Lens' ForwardingRulesInsert' (Maybe OAuthToken)
friOAuthToken
  = lens _friOAuthToken
      (\ s a -> s{_friOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
friFields :: Lens' ForwardingRulesInsert' (Maybe Text)
friFields
  = lens _friFields (\ s a -> s{_friFields = a})

instance GoogleAuth ForwardingRulesInsert' where
        authKey = friKey . _Just
        authToken = friOAuthToken . _Just

instance GoogleRequest ForwardingRulesInsert' where
        type Rs ForwardingRulesInsert' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u ForwardingRulesInsert'{..}
          = go _friProject _friRegion _friQuotaUser
              (Just _friPrettyPrint)
              _friUserIP
              _friFields
              _friKey
              _friOAuthToken
              (Just AltJSON)
              _friPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ForwardingRulesInsertResource)
                      r
                      u
