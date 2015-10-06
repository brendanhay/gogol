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
-- Module      : Network.Google.Resource.Compute.GlobalForwardingRules.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a ForwardingRule resource in the specified project and region
-- using the data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeGlobalForwardingRulesInsert@.
module Network.Google.Resource.Compute.GlobalForwardingRules.Insert
    (
    -- * REST Resource
      GlobalForwardingRulesInsertResource

    -- * Creating a Request
    , globalForwardingRulesInsert'
    , GlobalForwardingRulesInsert'

    -- * Request Lenses
    , gfriQuotaUser
    , gfriPrettyPrint
    , gfriProject
    , gfriUserIP
    , gfriPayload
    , gfriKey
    , gfriOAuthToken
    , gfriFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeGlobalForwardingRulesInsert@ which the
-- 'GlobalForwardingRulesInsert'' request conforms to.
type GlobalForwardingRulesInsertResource =
     Capture "project" Text :>
       "global" :>
         "forwardingRules" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ForwardingRule :>
                           Post '[JSON] Operation

-- | Creates a ForwardingRule resource in the specified project and region
-- using the data included in the request.
--
-- /See:/ 'globalForwardingRulesInsert'' smart constructor.
data GlobalForwardingRulesInsert' = GlobalForwardingRulesInsert'
    { _gfriQuotaUser   :: !(Maybe Text)
    , _gfriPrettyPrint :: !Bool
    , _gfriProject     :: !Text
    , _gfriUserIP      :: !(Maybe Text)
    , _gfriPayload     :: !ForwardingRule
    , _gfriKey         :: !(Maybe AuthKey)
    , _gfriOAuthToken  :: !(Maybe OAuthToken)
    , _gfriFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GlobalForwardingRulesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfriQuotaUser'
--
-- * 'gfriPrettyPrint'
--
-- * 'gfriProject'
--
-- * 'gfriUserIP'
--
-- * 'gfriPayload'
--
-- * 'gfriKey'
--
-- * 'gfriOAuthToken'
--
-- * 'gfriFields'
globalForwardingRulesInsert'
    :: Text -- ^ 'project'
    -> ForwardingRule -- ^ 'payload'
    -> GlobalForwardingRulesInsert'
globalForwardingRulesInsert' pGfriProject_ pGfriPayload_ =
    GlobalForwardingRulesInsert'
    { _gfriQuotaUser = Nothing
    , _gfriPrettyPrint = True
    , _gfriProject = pGfriProject_
    , _gfriUserIP = Nothing
    , _gfriPayload = pGfriPayload_
    , _gfriKey = Nothing
    , _gfriOAuthToken = Nothing
    , _gfriFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
gfriQuotaUser :: Lens' GlobalForwardingRulesInsert' (Maybe Text)
gfriQuotaUser
  = lens _gfriQuotaUser
      (\ s a -> s{_gfriQuotaUser = a})

-- | Returns response with indentations and line breaks.
gfriPrettyPrint :: Lens' GlobalForwardingRulesInsert' Bool
gfriPrettyPrint
  = lens _gfriPrettyPrint
      (\ s a -> s{_gfriPrettyPrint = a})

-- | Name of the project scoping this request.
gfriProject :: Lens' GlobalForwardingRulesInsert' Text
gfriProject
  = lens _gfriProject (\ s a -> s{_gfriProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
gfriUserIP :: Lens' GlobalForwardingRulesInsert' (Maybe Text)
gfriUserIP
  = lens _gfriUserIP (\ s a -> s{_gfriUserIP = a})

-- | Multipart request metadata.
gfriPayload :: Lens' GlobalForwardingRulesInsert' ForwardingRule
gfriPayload
  = lens _gfriPayload (\ s a -> s{_gfriPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
gfriKey :: Lens' GlobalForwardingRulesInsert' (Maybe AuthKey)
gfriKey = lens _gfriKey (\ s a -> s{_gfriKey = a})

-- | OAuth 2.0 token for the current user.
gfriOAuthToken :: Lens' GlobalForwardingRulesInsert' (Maybe OAuthToken)
gfriOAuthToken
  = lens _gfriOAuthToken
      (\ s a -> s{_gfriOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
gfriFields :: Lens' GlobalForwardingRulesInsert' (Maybe Text)
gfriFields
  = lens _gfriFields (\ s a -> s{_gfriFields = a})

instance GoogleAuth GlobalForwardingRulesInsert'
         where
        _AuthKey = gfriKey . _Just
        _AuthToken = gfriOAuthToken . _Just

instance GoogleRequest GlobalForwardingRulesInsert'
         where
        type Rs GlobalForwardingRulesInsert' = Operation
        request = requestWith computeRequest
        requestWith rq GlobalForwardingRulesInsert'{..}
          = go _gfriProject _gfriQuotaUser
              (Just _gfriPrettyPrint)
              _gfriUserIP
              _gfriFields
              _gfriKey
              _gfriOAuthToken
              (Just AltJSON)
              _gfriPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy GlobalForwardingRulesInsertResource)
                      rq
