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
-- Module      : Network.Google.Resource.AdSenseHost.Associationsessions.Start
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create an association session for initiating an association with an
-- AdSense user.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @AdsensehostAssociationsessionsStart@.
module Network.Google.Resource.AdSenseHost.Associationsessions.Start
    (
    -- * REST Resource
      AssociationsessionsStartResource

    -- * Creating a Request
    , associationsessionsStart'
    , AssociationsessionsStart'

    -- * Request Lenses
    , aQuotaUser
    , aPrettyPrint
    , aUserIP
    , aWebsiteLocale
    , aUserLocale
    , aKey
    , aWebsiteURL
    , aOAuthToken
    , aProductCode
    , aFields
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsensehostAssociationsessionsStart@ which the
-- 'AssociationsessionsStart'' request conforms to.
type AssociationsessionsStartResource =
     "associationsessions" :>
       "start" :>
         QueryParam "userLocale" Text :>
           QueryParam "websiteLocale" Text :>
             QueryParams "productCode"
               AdsensehostAssociationsessionsStartProductCode
               :>
               QueryParam "websiteUrl" Text :>
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
-- /See:/ 'associationsessionsStart'' smart constructor.
data AssociationsessionsStart' = AssociationsessionsStart'
    { _aQuotaUser     :: !(Maybe Text)
    , _aPrettyPrint   :: !Bool
    , _aUserIP        :: !(Maybe Text)
    , _aWebsiteLocale :: !(Maybe Text)
    , _aUserLocale    :: !(Maybe Text)
    , _aKey           :: !(Maybe Key)
    , _aWebsiteURL    :: !Text
    , _aOAuthToken    :: !(Maybe OAuthToken)
    , _aProductCode   :: !AdsensehostAssociationsessionsStartProductCode
    , _aFields        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AssociationsessionsStart'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aQuotaUser'
--
-- * 'aPrettyPrint'
--
-- * 'aUserIP'
--
-- * 'aWebsiteLocale'
--
-- * 'aUserLocale'
--
-- * 'aKey'
--
-- * 'aWebsiteURL'
--
-- * 'aOAuthToken'
--
-- * 'aProductCode'
--
-- * 'aFields'
associationsessionsStart'
    :: Text -- ^ 'websiteUrl'
    -> AdsensehostAssociationsessionsStartProductCode -- ^ 'productCode'
    -> AssociationsessionsStart'
associationsessionsStart' pAWebsiteURL_ pAProductCode_ =
    AssociationsessionsStart'
    { _aQuotaUser = Nothing
    , _aPrettyPrint = True
    , _aUserIP = Nothing
    , _aWebsiteLocale = Nothing
    , _aUserLocale = Nothing
    , _aKey = Nothing
    , _aWebsiteURL = pAWebsiteURL_
    , _aOAuthToken = Nothing
    , _aProductCode = pAProductCode_
    , _aFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aQuotaUser :: Lens' AssociationsessionsStart' (Maybe Text)
aQuotaUser
  = lens _aQuotaUser (\ s a -> s{_aQuotaUser = a})

-- | Returns response with indentations and line breaks.
aPrettyPrint :: Lens' AssociationsessionsStart' Bool
aPrettyPrint
  = lens _aPrettyPrint (\ s a -> s{_aPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aUserIP :: Lens' AssociationsessionsStart' (Maybe Text)
aUserIP = lens _aUserIP (\ s a -> s{_aUserIP = a})

-- | The locale of the user\'s hosted website.
aWebsiteLocale :: Lens' AssociationsessionsStart' (Maybe Text)
aWebsiteLocale
  = lens _aWebsiteLocale
      (\ s a -> s{_aWebsiteLocale = a})

-- | The preferred locale of the user.
aUserLocale :: Lens' AssociationsessionsStart' (Maybe Text)
aUserLocale
  = lens _aUserLocale (\ s a -> s{_aUserLocale = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aKey :: Lens' AssociationsessionsStart' (Maybe Key)
aKey = lens _aKey (\ s a -> s{_aKey = a})

-- | The URL of the user\'s hosted website.
aWebsiteURL :: Lens' AssociationsessionsStart' Text
aWebsiteURL
  = lens _aWebsiteURL (\ s a -> s{_aWebsiteURL = a})

-- | OAuth 2.0 token for the current user.
aOAuthToken :: Lens' AssociationsessionsStart' (Maybe OAuthToken)
aOAuthToken
  = lens _aOAuthToken (\ s a -> s{_aOAuthToken = a})

-- | Products to associate with the user.
aProductCode :: Lens' AssociationsessionsStart' AdsensehostAssociationsessionsStartProductCode
aProductCode
  = lens _aProductCode (\ s a -> s{_aProductCode = a})

-- | Selector specifying which fields to include in a partial response.
aFields :: Lens' AssociationsessionsStart' (Maybe Text)
aFields = lens _aFields (\ s a -> s{_aFields = a})

instance GoogleAuth AssociationsessionsStart' where
        authKey = aKey . _Just
        authToken = aOAuthToken . _Just

instance GoogleRequest AssociationsessionsStart'
         where
        type Rs AssociationsessionsStart' =
             AssociationSession
        request = requestWithRoute defReq adSenseHostURL
        requestWithRoute r u AssociationsessionsStart'{..}
          = go _aUserLocale _aWebsiteLocale
              (Just _aProductCode)
              (Just _aWebsiteURL)
              _aQuotaUser
              (Just _aPrettyPrint)
              _aUserIP
              _aFields
              _aKey
              _aOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AssociationsessionsStartResource)
                      r
                      u
