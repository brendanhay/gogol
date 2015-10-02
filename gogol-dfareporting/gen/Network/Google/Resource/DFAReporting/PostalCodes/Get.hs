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
-- Module      : Network.Google.Resource.DFAReporting.PostalCodes.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one postal code by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingPostalCodesGet@.
module Network.Google.Resource.DFAReporting.PostalCodes.Get
    (
    -- * REST Resource
      PostalCodesGetResource

    -- * Creating a Request
    , postalCodesGet'
    , PostalCodesGet'

    -- * Request Lenses
    , pcgQuotaUser
    , pcgPrettyPrint
    , pcgUserIP
    , pcgProfileId
    , pcgKey
    , pcgCode
    , pcgOAuthToken
    , pcgFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingPostalCodesGet@ which the
-- 'PostalCodesGet'' request conforms to.
type PostalCodesGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "postalCodes" :>
           Capture "code" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] PostalCode

-- | Gets one postal code by ID.
--
-- /See:/ 'postalCodesGet'' smart constructor.
data PostalCodesGet' = PostalCodesGet'
    { _pcgQuotaUser   :: !(Maybe Text)
    , _pcgPrettyPrint :: !Bool
    , _pcgUserIP      :: !(Maybe Text)
    , _pcgProfileId   :: !Int64
    , _pcgKey         :: !(Maybe Key)
    , _pcgCode        :: !Text
    , _pcgOAuthToken  :: !(Maybe OAuthToken)
    , _pcgFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostalCodesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcgQuotaUser'
--
-- * 'pcgPrettyPrint'
--
-- * 'pcgUserIP'
--
-- * 'pcgProfileId'
--
-- * 'pcgKey'
--
-- * 'pcgCode'
--
-- * 'pcgOAuthToken'
--
-- * 'pcgFields'
postalCodesGet'
    :: Int64 -- ^ 'profileId'
    -> Text -- ^ 'code'
    -> PostalCodesGet'
postalCodesGet' pPcgProfileId_ pPcgCode_ =
    PostalCodesGet'
    { _pcgQuotaUser = Nothing
    , _pcgPrettyPrint = True
    , _pcgUserIP = Nothing
    , _pcgProfileId = pPcgProfileId_
    , _pcgKey = Nothing
    , _pcgCode = pPcgCode_
    , _pcgOAuthToken = Nothing
    , _pcgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pcgQuotaUser :: Lens' PostalCodesGet' (Maybe Text)
pcgQuotaUser
  = lens _pcgQuotaUser (\ s a -> s{_pcgQuotaUser = a})

-- | Returns response with indentations and line breaks.
pcgPrettyPrint :: Lens' PostalCodesGet' Bool
pcgPrettyPrint
  = lens _pcgPrettyPrint
      (\ s a -> s{_pcgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pcgUserIP :: Lens' PostalCodesGet' (Maybe Text)
pcgUserIP
  = lens _pcgUserIP (\ s a -> s{_pcgUserIP = a})

-- | User profile ID associated with this request.
pcgProfileId :: Lens' PostalCodesGet' Int64
pcgProfileId
  = lens _pcgProfileId (\ s a -> s{_pcgProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pcgKey :: Lens' PostalCodesGet' (Maybe Key)
pcgKey = lens _pcgKey (\ s a -> s{_pcgKey = a})

-- | Postal code ID.
pcgCode :: Lens' PostalCodesGet' Text
pcgCode = lens _pcgCode (\ s a -> s{_pcgCode = a})

-- | OAuth 2.0 token for the current user.
pcgOAuthToken :: Lens' PostalCodesGet' (Maybe OAuthToken)
pcgOAuthToken
  = lens _pcgOAuthToken
      (\ s a -> s{_pcgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pcgFields :: Lens' PostalCodesGet' (Maybe Text)
pcgFields
  = lens _pcgFields (\ s a -> s{_pcgFields = a})

instance GoogleAuth PostalCodesGet' where
        authKey = pcgKey . _Just
        authToken = pcgOAuthToken . _Just

instance GoogleRequest PostalCodesGet' where
        type Rs PostalCodesGet' = PostalCode
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u PostalCodesGet'{..}
          = go _pcgProfileId _pcgCode _pcgQuotaUser
              (Just _pcgPrettyPrint)
              _pcgUserIP
              _pcgFields
              _pcgKey
              _pcgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PostalCodesGetResource)
                      r
                      u
