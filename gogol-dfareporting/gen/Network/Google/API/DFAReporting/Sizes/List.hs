{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.Sizes.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of sizes, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.sizes.list@.
module Network.Google.API.DFAReporting.Sizes.List
    (
    -- * REST Resource
      SizesListAPI

    -- * Creating a Request
    , sizesList'
    , SizesList'

    -- * Request Lenses
    , sllQuotaUser
    , sllHeight
    , sllPrettyPrint
    , sllUserIp
    , sllIds
    , sllWidth
    , sllProfileId
    , sllKey
    , sllOauthToken
    , sllIabStandard
    , sllFields
    , sllAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.sizes.list which the
-- 'SizesList'' request conforms to.
type SizesListAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "sizes" :>
           QueryParam "quotaUser" Text :>
             QueryParam "height" Int32 :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "ids" Int64 :>
                     QueryParam "width" Int32 :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "iabStandard" Bool :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :>
                                 Get '[JSON] SizesListResponse

-- | Retrieves a list of sizes, possibly filtered.
--
-- /See:/ 'sizesList'' smart constructor.
data SizesList' = SizesList'
    { _sllQuotaUser   :: !(Maybe Text)
    , _sllHeight      :: !(Maybe Int32)
    , _sllPrettyPrint :: !Bool
    , _sllUserIp      :: !(Maybe Text)
    , _sllIds         :: !(Maybe Int64)
    , _sllWidth       :: !(Maybe Int32)
    , _sllProfileId   :: !Int64
    , _sllKey         :: !(Maybe Text)
    , _sllOauthToken  :: !(Maybe Text)
    , _sllIabStandard :: !(Maybe Bool)
    , _sllFields      :: !(Maybe Text)
    , _sllAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SizesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sllQuotaUser'
--
-- * 'sllHeight'
--
-- * 'sllPrettyPrint'
--
-- * 'sllUserIp'
--
-- * 'sllIds'
--
-- * 'sllWidth'
--
-- * 'sllProfileId'
--
-- * 'sllKey'
--
-- * 'sllOauthToken'
--
-- * 'sllIabStandard'
--
-- * 'sllFields'
--
-- * 'sllAlt'
sizesList'
    :: Int64 -- ^ 'profileId'
    -> SizesList'
sizesList' pSllProfileId_ =
    SizesList'
    { _sllQuotaUser = Nothing
    , _sllHeight = Nothing
    , _sllPrettyPrint = True
    , _sllUserIp = Nothing
    , _sllIds = Nothing
    , _sllWidth = Nothing
    , _sllProfileId = pSllProfileId_
    , _sllKey = Nothing
    , _sllOauthToken = Nothing
    , _sllIabStandard = Nothing
    , _sllFields = Nothing
    , _sllAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sllQuotaUser :: Lens' SizesList' (Maybe Text)
sllQuotaUser
  = lens _sllQuotaUser (\ s a -> s{_sllQuotaUser = a})

-- | Select only sizes with this height.
sllHeight :: Lens' SizesList' (Maybe Int32)
sllHeight
  = lens _sllHeight (\ s a -> s{_sllHeight = a})

-- | Returns response with indentations and line breaks.
sllPrettyPrint :: Lens' SizesList' Bool
sllPrettyPrint
  = lens _sllPrettyPrint
      (\ s a -> s{_sllPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sllUserIp :: Lens' SizesList' (Maybe Text)
sllUserIp
  = lens _sllUserIp (\ s a -> s{_sllUserIp = a})

-- | Select only sizes with these IDs.
sllIds :: Lens' SizesList' (Maybe Int64)
sllIds = lens _sllIds (\ s a -> s{_sllIds = a})

-- | Select only sizes with this width.
sllWidth :: Lens' SizesList' (Maybe Int32)
sllWidth = lens _sllWidth (\ s a -> s{_sllWidth = a})

-- | User profile ID associated with this request.
sllProfileId :: Lens' SizesList' Int64
sllProfileId
  = lens _sllProfileId (\ s a -> s{_sllProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sllKey :: Lens' SizesList' (Maybe Text)
sllKey = lens _sllKey (\ s a -> s{_sllKey = a})

-- | OAuth 2.0 token for the current user.
sllOauthToken :: Lens' SizesList' (Maybe Text)
sllOauthToken
  = lens _sllOauthToken
      (\ s a -> s{_sllOauthToken = a})

-- | Select only IAB standard sizes.
sllIabStandard :: Lens' SizesList' (Maybe Bool)
sllIabStandard
  = lens _sllIabStandard
      (\ s a -> s{_sllIabStandard = a})

-- | Selector specifying which fields to include in a partial response.
sllFields :: Lens' SizesList' (Maybe Text)
sllFields
  = lens _sllFields (\ s a -> s{_sllFields = a})

-- | Data format for the response.
sllAlt :: Lens' SizesList' Alt
sllAlt = lens _sllAlt (\ s a -> s{_sllAlt = a})

instance GoogleRequest SizesList' where
        type Rs SizesList' = SizesListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u SizesList'{..}
          = go _sllQuotaUser _sllHeight (Just _sllPrettyPrint)
              _sllUserIp
              _sllIds
              _sllWidth
              _sllProfileId
              _sllKey
              _sllOauthToken
              _sllIabStandard
              _sllFields
              (Just _sllAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy SizesListAPI) r u
