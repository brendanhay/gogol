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
-- Module      : Network.Google.Resource.Compute.ForwardingRules.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified ForwardingRule resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeForwardingRulesDelete@.
module Network.Google.Resource.Compute.ForwardingRules.Delete
    (
    -- * REST Resource
      ForwardingRulesDeleteResource

    -- * Creating a Request
    , forwardingRulesDelete'
    , ForwardingRulesDelete'

    -- * Request Lenses
    , frdQuotaUser
    , frdPrettyPrint
    , frdProject
    , frdForwardingRule
    , frdUserIP
    , frdKey
    , frdRegion
    , frdOAuthToken
    , frdFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeForwardingRulesDelete@ which the
-- 'ForwardingRulesDelete'' request conforms to.
type ForwardingRulesDeleteResource =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
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
-- /See:/ 'forwardingRulesDelete'' smart constructor.
data ForwardingRulesDelete' = ForwardingRulesDelete'
    { _frdQuotaUser      :: !(Maybe Text)
    , _frdPrettyPrint    :: !Bool
    , _frdProject        :: !Text
    , _frdForwardingRule :: !Text
    , _frdUserIP         :: !(Maybe Text)
    , _frdKey            :: !(Maybe Key)
    , _frdRegion         :: !Text
    , _frdOAuthToken     :: !(Maybe OAuthToken)
    , _frdFields         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ForwardingRulesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'frdQuotaUser'
--
-- * 'frdPrettyPrint'
--
-- * 'frdProject'
--
-- * 'frdForwardingRule'
--
-- * 'frdUserIP'
--
-- * 'frdKey'
--
-- * 'frdRegion'
--
-- * 'frdOAuthToken'
--
-- * 'frdFields'
forwardingRulesDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'forwardingRule'
    -> Text -- ^ 'region'
    -> ForwardingRulesDelete'
forwardingRulesDelete' pFrdProject_ pFrdForwardingRule_ pFrdRegion_ =
    ForwardingRulesDelete'
    { _frdQuotaUser = Nothing
    , _frdPrettyPrint = True
    , _frdProject = pFrdProject_
    , _frdForwardingRule = pFrdForwardingRule_
    , _frdUserIP = Nothing
    , _frdKey = Nothing
    , _frdRegion = pFrdRegion_
    , _frdOAuthToken = Nothing
    , _frdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
frdQuotaUser :: Lens' ForwardingRulesDelete' (Maybe Text)
frdQuotaUser
  = lens _frdQuotaUser (\ s a -> s{_frdQuotaUser = a})

-- | Returns response with indentations and line breaks.
frdPrettyPrint :: Lens' ForwardingRulesDelete' Bool
frdPrettyPrint
  = lens _frdPrettyPrint
      (\ s a -> s{_frdPrettyPrint = a})

-- | Name of the project scoping this request.
frdProject :: Lens' ForwardingRulesDelete' Text
frdProject
  = lens _frdProject (\ s a -> s{_frdProject = a})

-- | Name of the ForwardingRule resource to delete.
frdForwardingRule :: Lens' ForwardingRulesDelete' Text
frdForwardingRule
  = lens _frdForwardingRule
      (\ s a -> s{_frdForwardingRule = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
frdUserIP :: Lens' ForwardingRulesDelete' (Maybe Text)
frdUserIP
  = lens _frdUserIP (\ s a -> s{_frdUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
frdKey :: Lens' ForwardingRulesDelete' (Maybe Key)
frdKey = lens _frdKey (\ s a -> s{_frdKey = a})

-- | Name of the region scoping this request.
frdRegion :: Lens' ForwardingRulesDelete' Text
frdRegion
  = lens _frdRegion (\ s a -> s{_frdRegion = a})

-- | OAuth 2.0 token for the current user.
frdOAuthToken :: Lens' ForwardingRulesDelete' (Maybe OAuthToken)
frdOAuthToken
  = lens _frdOAuthToken
      (\ s a -> s{_frdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
frdFields :: Lens' ForwardingRulesDelete' (Maybe Text)
frdFields
  = lens _frdFields (\ s a -> s{_frdFields = a})

instance GoogleAuth ForwardingRulesDelete' where
        authKey = frdKey . _Just
        authToken = frdOAuthToken . _Just

instance GoogleRequest ForwardingRulesDelete' where
        type Rs ForwardingRulesDelete' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u ForwardingRulesDelete'{..}
          = go _frdQuotaUser (Just _frdPrettyPrint) _frdProject
              _frdForwardingRule
              _frdUserIP
              _frdKey
              _frdRegion
              _frdOAuthToken
              _frdFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ForwardingRulesDeleteResource)
                      r
                      u
