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
-- Module      : Network.Google.Resource.AdSenseHost.AssociationSessions.Start
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create an association session for initiating an association with an
-- AdSense user.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @AdsensehostAssociationSessionsStart@.
module Network.Google.Resource.AdSenseHost.AssociationSessions.Start
    (
    -- * REST Resource
      AssociationSessionsStartResource

    -- * Creating a Request
    , associationSessionsStart'
    , AssociationSessionsStart'

    -- * Request Lenses
    , assQuotaUser
    , assPrettyPrint
    , assUserIP
    , assWebsiteLocale
    , assUserLocale
    , assKey
    , assWebsiteURL
    , assOAuthToken
    , assProductCode
    , assFields
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsensehostAssociationSessionsStart@ which the
-- 'AssociationSessionsStart'' request conforms to.
type AssociationSessionsStartResource =
     "associationsessions" :>
       "start" :>
         QueryParams "productCode"
           AssociationSessionsStartProductCode
           :>
           QueryParam "websiteUrl" Text :>
             QueryParam "websiteLocale" Text :>
               QueryParam "userLocale" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] AssociationSession

-- | Create an association session for initiating an association with an
-- AdSense user.
--
-- /See:/ 'associationSessionsStart'' smart constructor.
data AssociationSessionsStart' = AssociationSessionsStart'
    { _assQuotaUser     :: !(Maybe Text)
    , _assPrettyPrint   :: !Bool
    , _assUserIP        :: !(Maybe Text)
    , _assWebsiteLocale :: !(Maybe Text)
    , _assUserLocale    :: !(Maybe Text)
    , _assKey           :: !(Maybe Key)
    , _assWebsiteURL    :: !Text
    , _assOAuthToken    :: !(Maybe OAuthToken)
    , _assProductCode   :: ![AssociationSessionsStartProductCode]
    , _assFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AssociationSessionsStart'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'assQuotaUser'
--
-- * 'assPrettyPrint'
--
-- * 'assUserIP'
--
-- * 'assWebsiteLocale'
--
-- * 'assUserLocale'
--
-- * 'assKey'
--
-- * 'assWebsiteURL'
--
-- * 'assOAuthToken'
--
-- * 'assProductCode'
--
-- * 'assFields'
associationSessionsStart'
    :: Text -- ^ 'websiteUrl'
    -> [AssociationSessionsStartProductCode] -- ^ 'productCode'
    -> AssociationSessionsStart'
associationSessionsStart' pAssWebsiteURL_ pAssProductCode_ =
    AssociationSessionsStart'
    { _assQuotaUser = Nothing
    , _assPrettyPrint = True
    , _assUserIP = Nothing
    , _assWebsiteLocale = Nothing
    , _assUserLocale = Nothing
    , _assKey = Nothing
    , _assWebsiteURL = pAssWebsiteURL_
    , _assOAuthToken = Nothing
    , _assProductCode = pAssProductCode_
    , _assFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
assQuotaUser :: Lens' AssociationSessionsStart' (Maybe Text)
assQuotaUser
  = lens _assQuotaUser (\ s a -> s{_assQuotaUser = a})

-- | Returns response with indentations and line breaks.
assPrettyPrint :: Lens' AssociationSessionsStart' Bool
assPrettyPrint
  = lens _assPrettyPrint
      (\ s a -> s{_assPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
assUserIP :: Lens' AssociationSessionsStart' (Maybe Text)
assUserIP
  = lens _assUserIP (\ s a -> s{_assUserIP = a})

-- | The locale of the user\'s hosted website.
assWebsiteLocale :: Lens' AssociationSessionsStart' (Maybe Text)
assWebsiteLocale
  = lens _assWebsiteLocale
      (\ s a -> s{_assWebsiteLocale = a})

-- | The preferred locale of the user.
assUserLocale :: Lens' AssociationSessionsStart' (Maybe Text)
assUserLocale
  = lens _assUserLocale
      (\ s a -> s{_assUserLocale = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
assKey :: Lens' AssociationSessionsStart' (Maybe Key)
assKey = lens _assKey (\ s a -> s{_assKey = a})

-- | The URL of the user\'s hosted website.
assWebsiteURL :: Lens' AssociationSessionsStart' Text
assWebsiteURL
  = lens _assWebsiteURL
      (\ s a -> s{_assWebsiteURL = a})

-- | OAuth 2.0 token for the current user.
assOAuthToken :: Lens' AssociationSessionsStart' (Maybe OAuthToken)
assOAuthToken
  = lens _assOAuthToken
      (\ s a -> s{_assOAuthToken = a})

-- | Products to associate with the user.
assProductCode :: Lens' AssociationSessionsStart' [AssociationSessionsStartProductCode]
assProductCode
  = lens _assProductCode
      (\ s a -> s{_assProductCode = a})
      . _Coerce

-- | Selector specifying which fields to include in a partial response.
assFields :: Lens' AssociationSessionsStart' (Maybe Text)
assFields
  = lens _assFields (\ s a -> s{_assFields = a})

instance GoogleAuth AssociationSessionsStart' where
        authKey = assKey . _Just
        authToken = assOAuthToken . _Just

instance GoogleRequest AssociationSessionsStart'
         where
        type Rs AssociationSessionsStart' =
             AssociationSession
        request = requestWithRoute defReq adSenseHostURL
        requestWithRoute r u AssociationSessionsStart'{..}
          = go _assProductCode (Just _assWebsiteURL)
              _assWebsiteLocale
              _assUserLocale
              _assQuotaUser
              (Just _assPrettyPrint)
              _assUserIP
              _assFields
              _assKey
              _assOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AssociationSessionsStartResource)
                      r
                      u
