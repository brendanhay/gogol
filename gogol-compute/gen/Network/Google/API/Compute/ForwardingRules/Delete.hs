{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.ForwardingRules.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified ForwardingRule resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.forwardingRules.delete@.
module Network.Google.API.Compute.ForwardingRules.Delete
    (
    -- * REST Resource
      ForwardingRulesDeleteAPI

    -- * Creating a Request
    , forwardingRulesDelete'
    , ForwardingRulesDelete'

    -- * Request Lenses
    , frdQuotaUser
    , frdPrettyPrint
    , frdProject
    , frdForwardingRule
    , frdUserIp
    , frdKey
    , frdRegion
    , frdOauthToken
    , frdFields
    , frdAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.forwardingRules.delete which the
-- 'ForwardingRulesDelete'' request conforms to.
type ForwardingRulesDeleteAPI =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "forwardingRules" :>
             Capture "forwardingRule" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Delete '[JSON] Operation

-- | Deletes the specified ForwardingRule resource.
--
-- /See:/ 'forwardingRulesDelete'' smart constructor.
data ForwardingRulesDelete' = ForwardingRulesDelete'
    { _frdQuotaUser      :: !(Maybe Text)
    , _frdPrettyPrint    :: !Bool
    , _frdProject        :: !Text
    , _frdForwardingRule :: !Text
    , _frdUserIp         :: !(Maybe Text)
    , _frdKey            :: !(Maybe Text)
    , _frdRegion         :: !Text
    , _frdOauthToken     :: !(Maybe Text)
    , _frdFields         :: !(Maybe Text)
    , _frdAlt            :: !Alt
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
-- * 'frdUserIp'
--
-- * 'frdKey'
--
-- * 'frdRegion'
--
-- * 'frdOauthToken'
--
-- * 'frdFields'
--
-- * 'frdAlt'
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
    , _frdUserIp = Nothing
    , _frdKey = Nothing
    , _frdRegion = pFrdRegion_
    , _frdOauthToken = Nothing
    , _frdFields = Nothing
    , _frdAlt = JSON
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
frdUserIp :: Lens' ForwardingRulesDelete' (Maybe Text)
frdUserIp
  = lens _frdUserIp (\ s a -> s{_frdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
frdKey :: Lens' ForwardingRulesDelete' (Maybe Text)
frdKey = lens _frdKey (\ s a -> s{_frdKey = a})

-- | Name of the region scoping this request.
frdRegion :: Lens' ForwardingRulesDelete' Text
frdRegion
  = lens _frdRegion (\ s a -> s{_frdRegion = a})

-- | OAuth 2.0 token for the current user.
frdOauthToken :: Lens' ForwardingRulesDelete' (Maybe Text)
frdOauthToken
  = lens _frdOauthToken
      (\ s a -> s{_frdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
frdFields :: Lens' ForwardingRulesDelete' (Maybe Text)
frdFields
  = lens _frdFields (\ s a -> s{_frdFields = a})

-- | Data format for the response.
frdAlt :: Lens' ForwardingRulesDelete' Alt
frdAlt = lens _frdAlt (\ s a -> s{_frdAlt = a})

instance GoogleRequest ForwardingRulesDelete' where
        type Rs ForwardingRulesDelete' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u ForwardingRulesDelete'{..}
          = go _frdQuotaUser (Just _frdPrettyPrint) _frdProject
              _frdForwardingRule
              _frdUserIp
              _frdKey
              _frdRegion
              _frdOauthToken
              _frdFields
              (Just _frdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ForwardingRulesDeleteAPI)
                      r
                      u
