{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.Sizes.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new size.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.sizes.insert@.
module Network.Google.API.DFAReporting.Sizes.Insert
    (
    -- * REST Resource
      SizesInsertAPI

    -- * Creating a Request
    , sizesInsert'
    , SizesInsert'

    -- * Request Lenses
    , siQuotaUser
    , siPrettyPrint
    , siUserIp
    , siProfileId
    , siKey
    , siOauthToken
    , siFields
    , siAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.sizes.insert which the
-- 'SizesInsert'' request conforms to.
type SizesInsertAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "sizes" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] Size

-- | Inserts a new size.
--
-- /See:/ 'sizesInsert'' smart constructor.
data SizesInsert' = SizesInsert'
    { _siQuotaUser   :: !(Maybe Text)
    , _siPrettyPrint :: !Bool
    , _siUserIp      :: !(Maybe Text)
    , _siProfileId   :: !Int64
    , _siKey         :: !(Maybe Text)
    , _siOauthToken  :: !(Maybe Text)
    , _siFields      :: !(Maybe Text)
    , _siAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SizesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siQuotaUser'
--
-- * 'siPrettyPrint'
--
-- * 'siUserIp'
--
-- * 'siProfileId'
--
-- * 'siKey'
--
-- * 'siOauthToken'
--
-- * 'siFields'
--
-- * 'siAlt'
sizesInsert'
    :: Int64 -- ^ 'profileId'
    -> SizesInsert'
sizesInsert' pSiProfileId_ =
    SizesInsert'
    { _siQuotaUser = Nothing
    , _siPrettyPrint = True
    , _siUserIp = Nothing
    , _siProfileId = pSiProfileId_
    , _siKey = Nothing
    , _siOauthToken = Nothing
    , _siFields = Nothing
    , _siAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
siQuotaUser :: Lens' SizesInsert' (Maybe Text)
siQuotaUser
  = lens _siQuotaUser (\ s a -> s{_siQuotaUser = a})

-- | Returns response with indentations and line breaks.
siPrettyPrint :: Lens' SizesInsert' Bool
siPrettyPrint
  = lens _siPrettyPrint
      (\ s a -> s{_siPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
siUserIp :: Lens' SizesInsert' (Maybe Text)
siUserIp = lens _siUserIp (\ s a -> s{_siUserIp = a})

-- | User profile ID associated with this request.
siProfileId :: Lens' SizesInsert' Int64
siProfileId
  = lens _siProfileId (\ s a -> s{_siProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
siKey :: Lens' SizesInsert' (Maybe Text)
siKey = lens _siKey (\ s a -> s{_siKey = a})

-- | OAuth 2.0 token for the current user.
siOauthToken :: Lens' SizesInsert' (Maybe Text)
siOauthToken
  = lens _siOauthToken (\ s a -> s{_siOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
siFields :: Lens' SizesInsert' (Maybe Text)
siFields = lens _siFields (\ s a -> s{_siFields = a})

-- | Data format for the response.
siAlt :: Lens' SizesInsert' Alt
siAlt = lens _siAlt (\ s a -> s{_siAlt = a})

instance GoogleRequest SizesInsert' where
        type Rs SizesInsert' = Size
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u SizesInsert'{..}
          = go _siQuotaUser (Just _siPrettyPrint) _siUserIp
              _siProfileId
              _siKey
              _siOauthToken
              _siFields
              (Just _siAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy SizesInsertAPI) r u
