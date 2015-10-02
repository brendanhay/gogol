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
-- Module      : Network.Google.Resource.Compute.GlobalForwardingRules.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified ForwardingRule resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeGlobalForwardingRulesDelete@.
module Network.Google.Resource.Compute.GlobalForwardingRules.Delete
    (
    -- * REST Resource
      GlobalForwardingRulesDeleteResource

    -- * Creating a Request
    , globalForwardingRulesDelete'
    , GlobalForwardingRulesDelete'

    -- * Request Lenses
    , gfrdQuotaUser
    , gfrdPrettyPrint
    , gfrdProject
    , gfrdForwardingRule
    , gfrdUserIP
    , gfrdKey
    , gfrdOAuthToken
    , gfrdFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeGlobalForwardingRulesDelete@ which the
-- 'GlobalForwardingRulesDelete'' request conforms to.
type GlobalForwardingRulesDeleteResource =
     Capture "project" Text :>
       "global" :>
         "forwardingRules" :>
           Capture "forwardingRule" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified ForwardingRule resource.
--
-- /See:/ 'globalForwardingRulesDelete'' smart constructor.
data GlobalForwardingRulesDelete' = GlobalForwardingRulesDelete'
    { _gfrdQuotaUser      :: !(Maybe Text)
    , _gfrdPrettyPrint    :: !Bool
    , _gfrdProject        :: !Text
    , _gfrdForwardingRule :: !Text
    , _gfrdUserIP         :: !(Maybe Text)
    , _gfrdKey            :: !(Maybe Key)
    , _gfrdOAuthToken     :: !(Maybe OAuthToken)
    , _gfrdFields         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GlobalForwardingRulesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfrdQuotaUser'
--
-- * 'gfrdPrettyPrint'
--
-- * 'gfrdProject'
--
-- * 'gfrdForwardingRule'
--
-- * 'gfrdUserIP'
--
-- * 'gfrdKey'
--
-- * 'gfrdOAuthToken'
--
-- * 'gfrdFields'
globalForwardingRulesDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'forwardingRule'
    -> GlobalForwardingRulesDelete'
globalForwardingRulesDelete' pGfrdProject_ pGfrdForwardingRule_ =
    GlobalForwardingRulesDelete'
    { _gfrdQuotaUser = Nothing
    , _gfrdPrettyPrint = True
    , _gfrdProject = pGfrdProject_
    , _gfrdForwardingRule = pGfrdForwardingRule_
    , _gfrdUserIP = Nothing
    , _gfrdKey = Nothing
    , _gfrdOAuthToken = Nothing
    , _gfrdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
gfrdQuotaUser :: Lens' GlobalForwardingRulesDelete' (Maybe Text)
gfrdQuotaUser
  = lens _gfrdQuotaUser
      (\ s a -> s{_gfrdQuotaUser = a})

-- | Returns response with indentations and line breaks.
gfrdPrettyPrint :: Lens' GlobalForwardingRulesDelete' Bool
gfrdPrettyPrint
  = lens _gfrdPrettyPrint
      (\ s a -> s{_gfrdPrettyPrint = a})

-- | Name of the project scoping this request.
gfrdProject :: Lens' GlobalForwardingRulesDelete' Text
gfrdProject
  = lens _gfrdProject (\ s a -> s{_gfrdProject = a})

-- | Name of the ForwardingRule resource to delete.
gfrdForwardingRule :: Lens' GlobalForwardingRulesDelete' Text
gfrdForwardingRule
  = lens _gfrdForwardingRule
      (\ s a -> s{_gfrdForwardingRule = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
gfrdUserIP :: Lens' GlobalForwardingRulesDelete' (Maybe Text)
gfrdUserIP
  = lens _gfrdUserIP (\ s a -> s{_gfrdUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
gfrdKey :: Lens' GlobalForwardingRulesDelete' (Maybe Key)
gfrdKey = lens _gfrdKey (\ s a -> s{_gfrdKey = a})

-- | OAuth 2.0 token for the current user.
gfrdOAuthToken :: Lens' GlobalForwardingRulesDelete' (Maybe OAuthToken)
gfrdOAuthToken
  = lens _gfrdOAuthToken
      (\ s a -> s{_gfrdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
gfrdFields :: Lens' GlobalForwardingRulesDelete' (Maybe Text)
gfrdFields
  = lens _gfrdFields (\ s a -> s{_gfrdFields = a})

instance GoogleAuth GlobalForwardingRulesDelete'
         where
        authKey = gfrdKey . _Just
        authToken = gfrdOAuthToken . _Just

instance GoogleRequest GlobalForwardingRulesDelete'
         where
        type Rs GlobalForwardingRulesDelete' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u GlobalForwardingRulesDelete'{..}
          = go _gfrdQuotaUser (Just _gfrdPrettyPrint)
              _gfrdProject
              _gfrdForwardingRule
              _gfrdUserIP
              _gfrdKey
              _gfrdOAuthToken
              _gfrdFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy GlobalForwardingRulesDeleteResource)
                      r
                      u
