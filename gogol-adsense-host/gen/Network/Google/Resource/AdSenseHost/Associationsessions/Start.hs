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
    , aUserIp
    , aWebsiteLocale
    , aUserLocale
    , aKey
    , aWebsiteUrl
    , aOauthToken
    , aProductCode
    , aFields
    , aAlt
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsensehostAssociationsessionsStart@ which the
-- 'AssociationsessionsStart'' request conforms to.
type AssociationsessionsStartResource =
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
                         QueryParams "productCode"
                           AdsensehostAssociationsessionsStartProductCode
                           :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :>
                               Get '[JSON] AssociationSession

-- | Create an association session for initiating an association with an
-- AdSense user.
--
-- /See:/ 'associationsessionsStart'' smart constructor.
data AssociationsessionsStart' = AssociationsessionsStart'
    { _aQuotaUser     :: !(Maybe Text)
    , _aPrettyPrint   :: !Bool
    , _aUserIp        :: !(Maybe Text)
    , _aWebsiteLocale :: !(Maybe Text)
    , _aUserLocale    :: !(Maybe Text)
    , _aKey           :: !(Maybe Text)
    , _aWebsiteUrl    :: !Text
    , _aOauthToken    :: !(Maybe Text)
    , _aProductCode   :: !AdsensehostAssociationsessionsStartProductCode
    , _aFields        :: !(Maybe Text)
    , _aAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AssociationsessionsStart'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aQuotaUser'
--
-- * 'aPrettyPrint'
--
-- * 'aUserIp'
--
-- * 'aWebsiteLocale'
--
-- * 'aUserLocale'
--
-- * 'aKey'
--
-- * 'aWebsiteUrl'
--
-- * 'aOauthToken'
--
-- * 'aProductCode'
--
-- * 'aFields'
--
-- * 'aAlt'
associationsessionsStart'
    :: Text -- ^ 'websiteUrl'
    -> AdsensehostAssociationsessionsStartProductCode -- ^ 'productCode'
    -> AssociationsessionsStart'
associationsessionsStart' pAWebsiteUrl_ pAProductCode_ =
    AssociationsessionsStart'
    { _aQuotaUser = Nothing
    , _aPrettyPrint = True
    , _aUserIp = Nothing
    , _aWebsiteLocale = Nothing
    , _aUserLocale = Nothing
    , _aKey = Nothing
    , _aWebsiteUrl = pAWebsiteUrl_
    , _aOauthToken = Nothing
    , _aProductCode = pAProductCode_
    , _aFields = Nothing
    , _aAlt = JSON
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
aUserIp :: Lens' AssociationsessionsStart' (Maybe Text)
aUserIp = lens _aUserIp (\ s a -> s{_aUserIp = a})

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
aKey :: Lens' AssociationsessionsStart' (Maybe Text)
aKey = lens _aKey (\ s a -> s{_aKey = a})

-- | The URL of the user\'s hosted website.
aWebsiteUrl :: Lens' AssociationsessionsStart' Text
aWebsiteUrl
  = lens _aWebsiteUrl (\ s a -> s{_aWebsiteUrl = a})

-- | OAuth 2.0 token for the current user.
aOauthToken :: Lens' AssociationsessionsStart' (Maybe Text)
aOauthToken
  = lens _aOauthToken (\ s a -> s{_aOauthToken = a})

-- | Products to associate with the user.
aProductCode :: Lens' AssociationsessionsStart' AdsensehostAssociationsessionsStartProductCode
aProductCode
  = lens _aProductCode (\ s a -> s{_aProductCode = a})

-- | Selector specifying which fields to include in a partial response.
aFields :: Lens' AssociationsessionsStart' (Maybe Text)
aFields = lens _aFields (\ s a -> s{_aFields = a})

-- | Data format for the response.
aAlt :: Lens' AssociationsessionsStart' Alt
aAlt = lens _aAlt (\ s a -> s{_aAlt = a})

instance GoogleRequest AssociationsessionsStart'
         where
        type Rs AssociationsessionsStart' =
             AssociationSession
        request = requestWithRoute defReq adSenseHostURL
        requestWithRoute r u AssociationsessionsStart'{..}
          = go _aQuotaUser (Just _aPrettyPrint) _aUserIp
              _aWebsiteLocale
              _aUserLocale
              _aKey
              (Just _aWebsiteUrl)
              _aOauthToken
              (Just _aProductCode)
              _aFields
              (Just _aAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AssociationsessionsStartResource)
                      r
                      u
