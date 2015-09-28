{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.AdSenseHost.Associationsessions.Start
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create an association session for initiating an association with an
-- AdSense user.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.associationsessions.start@.
module Network.Google.API.AdSenseHost.Associationsessions.Start
    (
    -- * REST Resource
      AssociationsessionsStartAPI

    -- * Creating a Request
    , associationsessionsStart'
    , AssociationsessionsStart'

    -- * Request Lenses
    , assQuotaUser
    , assPrettyPrint
    , assUserIp
    , assWebsiteLocale
    , assUserLocale
    , assKey
    , assWebsiteUrl
    , assOauthToken
    , assProductCode
    , assFields
    , assAlt
    ) where

import           Network.Google.AdSense.Host.Types
import           Network.Google.Prelude

-- | A resource alias for adsensehost.associationsessions.start which the
-- 'AssociationsessionsStart'' request conforms to.
type AssociationsessionsStartAPI =
     "associationsessions" :>
       "start" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "websiteLocale" Text :>
                 QueryParam "userLocale" Text :>
                   QueryParam "key" Text :>
                     QueryParam "websiteUrl" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "productCode"
                           AssociationsessionsStart'ProductCode
                           :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :>
                               Get '[JSON] AssociationSession

-- | Create an association session for initiating an association with an
-- AdSense user.
--
-- /See:/ 'associationsessionsStart'' smart constructor.
data AssociationsessionsStart' = AssociationsessionsStart'
    { _assQuotaUser     :: !(Maybe Text)
    , _assPrettyPrint   :: !Bool
    , _assUserIp        :: !(Maybe Text)
    , _assWebsiteLocale :: !(Maybe Text)
    , _assUserLocale    :: !(Maybe Text)
    , _assKey           :: !(Maybe Text)
    , _assWebsiteUrl    :: !Text
    , _assOauthToken    :: !(Maybe Text)
    , _assProductCode   :: !AssociationsessionsStart'ProductCode
    , _assFields        :: !(Maybe Text)
    , _assAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AssociationsessionsStart'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'assQuotaUser'
--
-- * 'assPrettyPrint'
--
-- * 'assUserIp'
--
-- * 'assWebsiteLocale'
--
-- * 'assUserLocale'
--
-- * 'assKey'
--
-- * 'assWebsiteUrl'
--
-- * 'assOauthToken'
--
-- * 'assProductCode'
--
-- * 'assFields'
--
-- * 'assAlt'
associationsessionsStart'
    :: Text -- ^ 'websiteUrl'
    -> AssociationsessionsStart'ProductCode -- ^ 'productCode'
    -> AssociationsessionsStart'
associationsessionsStart' pAssWebsiteUrl_ pAssProductCode_ =
    AssociationsessionsStart'
    { _assQuotaUser = Nothing
    , _assPrettyPrint = True
    , _assUserIp = Nothing
    , _assWebsiteLocale = Nothing
    , _assUserLocale = Nothing
    , _assKey = Nothing
    , _assWebsiteUrl = pAssWebsiteUrl_
    , _assOauthToken = Nothing
    , _assProductCode = pAssProductCode_
    , _assFields = Nothing
    , _assAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
assQuotaUser :: Lens' AssociationsessionsStart' (Maybe Text)
assQuotaUser
  = lens _assQuotaUser (\ s a -> s{_assQuotaUser = a})

-- | Returns response with indentations and line breaks.
assPrettyPrint :: Lens' AssociationsessionsStart' Bool
assPrettyPrint
  = lens _assPrettyPrint
      (\ s a -> s{_assPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
assUserIp :: Lens' AssociationsessionsStart' (Maybe Text)
assUserIp
  = lens _assUserIp (\ s a -> s{_assUserIp = a})

-- | The locale of the user\'s hosted website.
assWebsiteLocale :: Lens' AssociationsessionsStart' (Maybe Text)
assWebsiteLocale
  = lens _assWebsiteLocale
      (\ s a -> s{_assWebsiteLocale = a})

-- | The preferred locale of the user.
assUserLocale :: Lens' AssociationsessionsStart' (Maybe Text)
assUserLocale
  = lens _assUserLocale
      (\ s a -> s{_assUserLocale = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
assKey :: Lens' AssociationsessionsStart' (Maybe Text)
assKey = lens _assKey (\ s a -> s{_assKey = a})

-- | The URL of the user\'s hosted website.
assWebsiteUrl :: Lens' AssociationsessionsStart' Text
assWebsiteUrl
  = lens _assWebsiteUrl
      (\ s a -> s{_assWebsiteUrl = a})

-- | OAuth 2.0 token for the current user.
assOauthToken :: Lens' AssociationsessionsStart' (Maybe Text)
assOauthToken
  = lens _assOauthToken
      (\ s a -> s{_assOauthToken = a})

-- | Products to associate with the user.
assProductCode :: Lens' AssociationsessionsStart' AssociationsessionsStart'ProductCode
assProductCode
  = lens _assProductCode
      (\ s a -> s{_assProductCode = a})

-- | Selector specifying which fields to include in a partial response.
assFields :: Lens' AssociationsessionsStart' (Maybe Text)
assFields
  = lens _assFields (\ s a -> s{_assFields = a})

-- | Data format for the response.
assAlt :: Lens' AssociationsessionsStart' Alt
assAlt = lens _assAlt (\ s a -> s{_assAlt = a})

instance GoogleRequest AssociationsessionsStart'
         where
        type Rs AssociationsessionsStart' =
             AssociationSession
        request = requestWithRoute defReq adSenseHostURL
        requestWithRoute r u AssociationsessionsStart'{..}
          = go _assQuotaUser (Just _assPrettyPrint) _assUserIp
              _assWebsiteLocale
              _assUserLocale
              _assKey
              (Just _assWebsiteUrl)
              _assOauthToken
              (Just _assProductCode)
              _assFields
              (Just _assAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AssociationsessionsStartAPI)
                      r
                      u
