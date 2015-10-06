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
-- Module      : Network.Google.Resource.AdSenseHost.AssociationSessions.Verify
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Verify an association session after the association callback returns
-- from AdSense signup.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @AdsensehostAssociationSessionsVerify@.
module Network.Google.Resource.AdSenseHost.AssociationSessions.Verify
    (
    -- * REST Resource
      AssociationSessionsVerifyResource

    -- * Creating a Request
    , associationSessionsVerify'
    , AssociationSessionsVerify'

    -- * Request Lenses
    , asvQuotaUser
    , asvPrettyPrint
    , asvUserIP
    , asvToken
    , asvKey
    , asvOAuthToken
    , asvFields
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsensehostAssociationSessionsVerify@ which the
-- 'AssociationSessionsVerify'' request conforms to.
type AssociationSessionsVerifyResource =
     "associationsessions" :>
       "verify" :>
         QueryParam "token" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] AssociationSession

-- | Verify an association session after the association callback returns
-- from AdSense signup.
--
-- /See:/ 'associationSessionsVerify'' smart constructor.
data AssociationSessionsVerify' = AssociationSessionsVerify'
    { _asvQuotaUser   :: !(Maybe Text)
    , _asvPrettyPrint :: !Bool
    , _asvUserIP      :: !(Maybe Text)
    , _asvToken       :: !Text
    , _asvKey         :: !(Maybe AuthKey)
    , _asvOAuthToken  :: !(Maybe OAuthToken)
    , _asvFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AssociationSessionsVerify'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asvQuotaUser'
--
-- * 'asvPrettyPrint'
--
-- * 'asvUserIP'
--
-- * 'asvToken'
--
-- * 'asvKey'
--
-- * 'asvOAuthToken'
--
-- * 'asvFields'
associationSessionsVerify'
    :: Text -- ^ 'token'
    -> AssociationSessionsVerify'
associationSessionsVerify' pAsvToken_ =
    AssociationSessionsVerify'
    { _asvQuotaUser = Nothing
    , _asvPrettyPrint = True
    , _asvUserIP = Nothing
    , _asvToken = pAsvToken_
    , _asvKey = Nothing
    , _asvOAuthToken = Nothing
    , _asvFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
asvQuotaUser :: Lens' AssociationSessionsVerify' (Maybe Text)
asvQuotaUser
  = lens _asvQuotaUser (\ s a -> s{_asvQuotaUser = a})

-- | Returns response with indentations and line breaks.
asvPrettyPrint :: Lens' AssociationSessionsVerify' Bool
asvPrettyPrint
  = lens _asvPrettyPrint
      (\ s a -> s{_asvPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
asvUserIP :: Lens' AssociationSessionsVerify' (Maybe Text)
asvUserIP
  = lens _asvUserIP (\ s a -> s{_asvUserIP = a})

-- | The token returned to the association callback URL.
asvToken :: Lens' AssociationSessionsVerify' Text
asvToken = lens _asvToken (\ s a -> s{_asvToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
asvKey :: Lens' AssociationSessionsVerify' (Maybe AuthKey)
asvKey = lens _asvKey (\ s a -> s{_asvKey = a})

-- | OAuth 2.0 token for the current user.
asvOAuthToken :: Lens' AssociationSessionsVerify' (Maybe OAuthToken)
asvOAuthToken
  = lens _asvOAuthToken
      (\ s a -> s{_asvOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
asvFields :: Lens' AssociationSessionsVerify' (Maybe Text)
asvFields
  = lens _asvFields (\ s a -> s{_asvFields = a})

instance GoogleAuth AssociationSessionsVerify' where
        _AuthKey = asvKey . _Just
        _AuthToken = asvOAuthToken . _Just

instance GoogleRequest AssociationSessionsVerify'
         where
        type Rs AssociationSessionsVerify' =
             AssociationSession
        request = requestWith adSenseHostRequest
        requestWith rq AssociationSessionsVerify'{..}
          = go (Just _asvToken) _asvQuotaUser
              (Just _asvPrettyPrint)
              _asvUserIP
              _asvFields
              _asvKey
              _asvOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy AssociationSessionsVerifyResource)
                      rq
