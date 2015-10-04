{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdSenseHost.Associationsessions.Verify
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Verify an association session after the association callback returns
-- from AdSense signup.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @AdsensehostAssociationsessionsVerify@.
module Network.Google.Resource.AdSenseHost.Associationsessions.Verify
    (
    -- * REST Resource
      AssociationsessionsVerifyResource

    -- * Creating a Request
    , associationsessionsVerify'
    , AssociationsessionsVerify'

    -- * Request Lenses
    , avQuotaUser
    , avPrettyPrint
    , avUserIP
    , avToken
    , avKey
    , avOAuthToken
    , avFields
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsensehostAssociationsessionsVerify@ which the
-- 'AssociationsessionsVerify'' request conforms to.
type AssociationsessionsVerifyResource =
     "associationsessions" :>
       "verify" :>
         QueryParam "token" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] AssociationSession

-- | Verify an association session after the association callback returns
-- from AdSense signup.
--
-- /See:/ 'associationsessionsVerify'' smart constructor.
data AssociationsessionsVerify' = AssociationsessionsVerify'
    { _avQuotaUser   :: !(Maybe Text)
    , _avPrettyPrint :: !Bool
    , _avUserIP      :: !(Maybe Text)
    , _avToken       :: !Text
    , _avKey         :: !(Maybe Key)
    , _avOAuthToken  :: !(Maybe OAuthToken)
    , _avFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AssociationsessionsVerify'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'avQuotaUser'
--
-- * 'avPrettyPrint'
--
-- * 'avUserIP'
--
-- * 'avToken'
--
-- * 'avKey'
--
-- * 'avOAuthToken'
--
-- * 'avFields'
associationsessionsVerify'
    :: Text -- ^ 'token'
    -> AssociationsessionsVerify'
associationsessionsVerify' pAvToken_ =
    AssociationsessionsVerify'
    { _avQuotaUser = Nothing
    , _avPrettyPrint = True
    , _avUserIP = Nothing
    , _avToken = pAvToken_
    , _avKey = Nothing
    , _avOAuthToken = Nothing
    , _avFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
avQuotaUser :: Lens' AssociationsessionsVerify' (Maybe Text)
avQuotaUser
  = lens _avQuotaUser (\ s a -> s{_avQuotaUser = a})

-- | Returns response with indentations and line breaks.
avPrettyPrint :: Lens' AssociationsessionsVerify' Bool
avPrettyPrint
  = lens _avPrettyPrint
      (\ s a -> s{_avPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
avUserIP :: Lens' AssociationsessionsVerify' (Maybe Text)
avUserIP = lens _avUserIP (\ s a -> s{_avUserIP = a})

-- | The token returned to the association callback URL.
avToken :: Lens' AssociationsessionsVerify' Text
avToken = lens _avToken (\ s a -> s{_avToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
avKey :: Lens' AssociationsessionsVerify' (Maybe Key)
avKey = lens _avKey (\ s a -> s{_avKey = a})

-- | OAuth 2.0 token for the current user.
avOAuthToken :: Lens' AssociationsessionsVerify' (Maybe OAuthToken)
avOAuthToken
  = lens _avOAuthToken (\ s a -> s{_avOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
avFields :: Lens' AssociationsessionsVerify' (Maybe Text)
avFields = lens _avFields (\ s a -> s{_avFields = a})

instance GoogleAuth AssociationsessionsVerify' where
        authKey = avKey . _Just
        authToken = avOAuthToken . _Just

instance GoogleRequest AssociationsessionsVerify'
         where
        type Rs AssociationsessionsVerify' =
             AssociationSession
        request = requestWithRoute defReq adSenseHostURL
        requestWithRoute r u AssociationsessionsVerify'{..}
          = go (Just _avToken) _avQuotaUser
              (Just _avPrettyPrint)
              _avUserIP
              _avFields
              _avKey
              _avOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AssociationsessionsVerifyResource)
                      r
                      u
