{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.PostalCodes.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one postal code by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.postalCodes.get@.
module Network.Google.API.DFAReporting.PostalCodes.Get
    (
    -- * REST Resource
      PostalCodesGetAPI

    -- * Creating a Request
    , postalCodesGet'
    , PostalCodesGet'

    -- * Request Lenses
    , pcgQuotaUser
    , pcgPrettyPrint
    , pcgUserIp
    , pcgProfileId
    , pcgKey
    , pcgCode
    , pcgOauthToken
    , pcgFields
    , pcgAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.postalCodes.get which the
-- 'PostalCodesGet'' request conforms to.
type PostalCodesGetAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "postalCodes" :>
           Capture "code" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] PostalCode

-- | Gets one postal code by ID.
--
-- /See:/ 'postalCodesGet'' smart constructor.
data PostalCodesGet' = PostalCodesGet'
    { _pcgQuotaUser   :: !(Maybe Text)
    , _pcgPrettyPrint :: !Bool
    , _pcgUserIp      :: !(Maybe Text)
    , _pcgProfileId   :: !Int64
    , _pcgKey         :: !(Maybe Text)
    , _pcgCode        :: !Text
    , _pcgOauthToken  :: !(Maybe Text)
    , _pcgFields      :: !(Maybe Text)
    , _pcgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostalCodesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcgQuotaUser'
--
-- * 'pcgPrettyPrint'
--
-- * 'pcgUserIp'
--
-- * 'pcgProfileId'
--
-- * 'pcgKey'
--
-- * 'pcgCode'
--
-- * 'pcgOauthToken'
--
-- * 'pcgFields'
--
-- * 'pcgAlt'
postalCodesGet'
    :: Int64 -- ^ 'profileId'
    -> Text -- ^ 'code'
    -> PostalCodesGet'
postalCodesGet' pPcgProfileId_ pPcgCode_ =
    PostalCodesGet'
    { _pcgQuotaUser = Nothing
    , _pcgPrettyPrint = True
    , _pcgUserIp = Nothing
    , _pcgProfileId = pPcgProfileId_
    , _pcgKey = Nothing
    , _pcgCode = pPcgCode_
    , _pcgOauthToken = Nothing
    , _pcgFields = Nothing
    , _pcgAlt = JSON
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
pcgUserIp :: Lens' PostalCodesGet' (Maybe Text)
pcgUserIp
  = lens _pcgUserIp (\ s a -> s{_pcgUserIp = a})

-- | User profile ID associated with this request.
pcgProfileId :: Lens' PostalCodesGet' Int64
pcgProfileId
  = lens _pcgProfileId (\ s a -> s{_pcgProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pcgKey :: Lens' PostalCodesGet' (Maybe Text)
pcgKey = lens _pcgKey (\ s a -> s{_pcgKey = a})

-- | Postal code ID.
pcgCode :: Lens' PostalCodesGet' Text
pcgCode = lens _pcgCode (\ s a -> s{_pcgCode = a})

-- | OAuth 2.0 token for the current user.
pcgOauthToken :: Lens' PostalCodesGet' (Maybe Text)
pcgOauthToken
  = lens _pcgOauthToken
      (\ s a -> s{_pcgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pcgFields :: Lens' PostalCodesGet' (Maybe Text)
pcgFields
  = lens _pcgFields (\ s a -> s{_pcgFields = a})

-- | Data format for the response.
pcgAlt :: Lens' PostalCodesGet' Alt
pcgAlt = lens _pcgAlt (\ s a -> s{_pcgAlt = a})

instance GoogleRequest PostalCodesGet' where
        type Rs PostalCodesGet' = PostalCode
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u PostalCodesGet'{..}
          = go _pcgQuotaUser (Just _pcgPrettyPrint) _pcgUserIp
              _pcgProfileId
              _pcgKey
              _pcgCode
              _pcgOauthToken
              _pcgFields
              (Just _pcgAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy PostalCodesGetAPI)
                      r
                      u
