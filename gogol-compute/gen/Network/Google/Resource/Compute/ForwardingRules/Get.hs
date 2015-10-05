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
-- Module      : Network.Google.Resource.Compute.ForwardingRules.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified ForwardingRule resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeForwardingRulesGet@.
module Network.Google.Resource.Compute.ForwardingRules.Get
    (
    -- * REST Resource
      ForwardingRulesGetResource

    -- * Creating a Request
    , forwardingRulesGet'
    , ForwardingRulesGet'

    -- * Request Lenses
    , frgQuotaUser
    , frgPrettyPrint
    , frgProject
    , frgForwardingRule
    , frgUserIP
    , frgKey
    , frgRegion
    , frgOAuthToken
    , frgFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeForwardingRulesGet@ which the
-- 'ForwardingRulesGet'' request conforms to.
type ForwardingRulesGetResource =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "forwardingRules" :>
             Capture "forwardingRule" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ForwardingRule

-- | Returns the specified ForwardingRule resource.
--
-- /See:/ 'forwardingRulesGet'' smart constructor.
data ForwardingRulesGet' = ForwardingRulesGet'
    { _frgQuotaUser      :: !(Maybe Text)
    , _frgPrettyPrint    :: !Bool
    , _frgProject        :: !Text
    , _frgForwardingRule :: !Text
    , _frgUserIP         :: !(Maybe Text)
    , _frgKey            :: !(Maybe AuthKey)
    , _frgRegion         :: !Text
    , _frgOAuthToken     :: !(Maybe OAuthToken)
    , _frgFields         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ForwardingRulesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'frgQuotaUser'
--
-- * 'frgPrettyPrint'
--
-- * 'frgProject'
--
-- * 'frgForwardingRule'
--
-- * 'frgUserIP'
--
-- * 'frgKey'
--
-- * 'frgRegion'
--
-- * 'frgOAuthToken'
--
-- * 'frgFields'
forwardingRulesGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'forwardingRule'
    -> Text -- ^ 'region'
    -> ForwardingRulesGet'
forwardingRulesGet' pFrgProject_ pFrgForwardingRule_ pFrgRegion_ =
    ForwardingRulesGet'
    { _frgQuotaUser = Nothing
    , _frgPrettyPrint = True
    , _frgProject = pFrgProject_
    , _frgForwardingRule = pFrgForwardingRule_
    , _frgUserIP = Nothing
    , _frgKey = Nothing
    , _frgRegion = pFrgRegion_
    , _frgOAuthToken = Nothing
    , _frgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
frgQuotaUser :: Lens' ForwardingRulesGet' (Maybe Text)
frgQuotaUser
  = lens _frgQuotaUser (\ s a -> s{_frgQuotaUser = a})

-- | Returns response with indentations and line breaks.
frgPrettyPrint :: Lens' ForwardingRulesGet' Bool
frgPrettyPrint
  = lens _frgPrettyPrint
      (\ s a -> s{_frgPrettyPrint = a})

-- | Name of the project scoping this request.
frgProject :: Lens' ForwardingRulesGet' Text
frgProject
  = lens _frgProject (\ s a -> s{_frgProject = a})

-- | Name of the ForwardingRule resource to return.
frgForwardingRule :: Lens' ForwardingRulesGet' Text
frgForwardingRule
  = lens _frgForwardingRule
      (\ s a -> s{_frgForwardingRule = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
frgUserIP :: Lens' ForwardingRulesGet' (Maybe Text)
frgUserIP
  = lens _frgUserIP (\ s a -> s{_frgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
frgKey :: Lens' ForwardingRulesGet' (Maybe AuthKey)
frgKey = lens _frgKey (\ s a -> s{_frgKey = a})

-- | Name of the region scoping this request.
frgRegion :: Lens' ForwardingRulesGet' Text
frgRegion
  = lens _frgRegion (\ s a -> s{_frgRegion = a})

-- | OAuth 2.0 token for the current user.
frgOAuthToken :: Lens' ForwardingRulesGet' (Maybe OAuthToken)
frgOAuthToken
  = lens _frgOAuthToken
      (\ s a -> s{_frgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
frgFields :: Lens' ForwardingRulesGet' (Maybe Text)
frgFields
  = lens _frgFields (\ s a -> s{_frgFields = a})

instance GoogleAuth ForwardingRulesGet' where
        authKey = frgKey . _Just
        authToken = frgOAuthToken . _Just

instance GoogleRequest ForwardingRulesGet' where
        type Rs ForwardingRulesGet' = ForwardingRule
        request = requestWithRoute defReq computeURL
        requestWithRoute r u ForwardingRulesGet'{..}
          = go _frgProject _frgRegion _frgForwardingRule
              _frgQuotaUser
              (Just _frgPrettyPrint)
              _frgUserIP
              _frgFields
              _frgKey
              _frgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ForwardingRulesGetResource)
                      r
                      u
