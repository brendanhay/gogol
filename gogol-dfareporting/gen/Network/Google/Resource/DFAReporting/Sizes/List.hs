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
-- Module      : Network.Google.Resource.DFAReporting.Sizes.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of sizes, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingSizesList@.
module Network.Google.Resource.DFAReporting.Sizes.List
    (
    -- * REST Resource
      SizesListResource

    -- * Creating a Request
    , sizesList'
    , SizesList'

    -- * Request Lenses
    , slQuotaUser
    , slHeight
    , slPrettyPrint
    , slUserIp
    , slIds
    , slWidth
    , slProfileId
    , slKey
    , slOauthToken
    , slIabStandard
    , slFields
    , slAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingSizesList@ which the
-- 'SizesList'' request conforms to.
type SizesListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "sizes" :>
           QueryParam "quotaUser" Text :>
             QueryParam "height" Int32 :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParams "ids" Int64 :>
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
    { _slQuotaUser   :: !(Maybe Text)
    , _slHeight      :: !(Maybe Int32)
    , _slPrettyPrint :: !Bool
    , _slUserIp      :: !(Maybe Text)
    , _slIds         :: !(Maybe Int64)
    , _slWidth       :: !(Maybe Int32)
    , _slProfileId   :: !Int64
    , _slKey         :: !(Maybe Text)
    , _slOauthToken  :: !(Maybe Text)
    , _slIabStandard :: !(Maybe Bool)
    , _slFields      :: !(Maybe Text)
    , _slAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SizesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slQuotaUser'
--
-- * 'slHeight'
--
-- * 'slPrettyPrint'
--
-- * 'slUserIp'
--
-- * 'slIds'
--
-- * 'slWidth'
--
-- * 'slProfileId'
--
-- * 'slKey'
--
-- * 'slOauthToken'
--
-- * 'slIabStandard'
--
-- * 'slFields'
--
-- * 'slAlt'
sizesList'
    :: Int64 -- ^ 'profileId'
    -> SizesList'
sizesList' pSlProfileId_ =
    SizesList'
    { _slQuotaUser = Nothing
    , _slHeight = Nothing
    , _slPrettyPrint = True
    , _slUserIp = Nothing
    , _slIds = Nothing
    , _slWidth = Nothing
    , _slProfileId = pSlProfileId_
    , _slKey = Nothing
    , _slOauthToken = Nothing
    , _slIabStandard = Nothing
    , _slFields = Nothing
    , _slAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
slQuotaUser :: Lens' SizesList' (Maybe Text)
slQuotaUser
  = lens _slQuotaUser (\ s a -> s{_slQuotaUser = a})

-- | Select only sizes with this height.
slHeight :: Lens' SizesList' (Maybe Int32)
slHeight = lens _slHeight (\ s a -> s{_slHeight = a})

-- | Returns response with indentations and line breaks.
slPrettyPrint :: Lens' SizesList' Bool
slPrettyPrint
  = lens _slPrettyPrint
      (\ s a -> s{_slPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
slUserIp :: Lens' SizesList' (Maybe Text)
slUserIp = lens _slUserIp (\ s a -> s{_slUserIp = a})

-- | Select only sizes with these IDs.
slIds :: Lens' SizesList' (Maybe Int64)
slIds = lens _slIds (\ s a -> s{_slIds = a})

-- | Select only sizes with this width.
slWidth :: Lens' SizesList' (Maybe Int32)
slWidth = lens _slWidth (\ s a -> s{_slWidth = a})

-- | User profile ID associated with this request.
slProfileId :: Lens' SizesList' Int64
slProfileId
  = lens _slProfileId (\ s a -> s{_slProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
slKey :: Lens' SizesList' (Maybe Text)
slKey = lens _slKey (\ s a -> s{_slKey = a})

-- | OAuth 2.0 token for the current user.
slOauthToken :: Lens' SizesList' (Maybe Text)
slOauthToken
  = lens _slOauthToken (\ s a -> s{_slOauthToken = a})

-- | Select only IAB standard sizes.
slIabStandard :: Lens' SizesList' (Maybe Bool)
slIabStandard
  = lens _slIabStandard
      (\ s a -> s{_slIabStandard = a})

-- | Selector specifying which fields to include in a partial response.
slFields :: Lens' SizesList' (Maybe Text)
slFields = lens _slFields (\ s a -> s{_slFields = a})

-- | Data format for the response.
slAlt :: Lens' SizesList' Alt
slAlt = lens _slAlt (\ s a -> s{_slAlt = a})

instance GoogleRequest SizesList' where
        type Rs SizesList' = SizesListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u SizesList'{..}
          = go _slQuotaUser _slHeight (Just _slPrettyPrint)
              _slUserIp
              _slIds
              _slWidth
              _slProfileId
              _slKey
              _slOauthToken
              _slIabStandard
              _slFields
              (Just _slAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy SizesListResource)
                      r
                      u
