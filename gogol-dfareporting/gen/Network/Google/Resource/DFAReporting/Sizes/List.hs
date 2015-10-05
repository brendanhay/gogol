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
    , slUserIP
    , slIds
    , slWidth
    , slProFileId
    , slKey
    , slOAuthToken
    , slIabStandard
    , slFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingSizesList@ which the
-- 'SizesList'' request conforms to.
type SizesListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "sizes" :>
           QueryParam "height" Int32 :>
             QueryParams "ids" Int64 :>
               QueryParam "width" Int32 :>
                 QueryParam "iabStandard" Bool :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] SizesListResponse

-- | Retrieves a list of sizes, possibly filtered.
--
-- /See:/ 'sizesList'' smart constructor.
data SizesList' = SizesList'
    { _slQuotaUser   :: !(Maybe Text)
    , _slHeight      :: !(Maybe Int32)
    , _slPrettyPrint :: !Bool
    , _slUserIP      :: !(Maybe Text)
    , _slIds         :: !(Maybe [Int64])
    , _slWidth       :: !(Maybe Int32)
    , _slProFileId   :: !Int64
    , _slKey         :: !(Maybe Key)
    , _slOAuthToken  :: !(Maybe OAuthToken)
    , _slIabStandard :: !(Maybe Bool)
    , _slFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'slUserIP'
--
-- * 'slIds'
--
-- * 'slWidth'
--
-- * 'slProFileId'
--
-- * 'slKey'
--
-- * 'slOAuthToken'
--
-- * 'slIabStandard'
--
-- * 'slFields'
sizesList'
    :: Int64 -- ^ 'profileId'
    -> SizesList'
sizesList' pSlProFileId_ =
    SizesList'
    { _slQuotaUser = Nothing
    , _slHeight = Nothing
    , _slPrettyPrint = True
    , _slUserIP = Nothing
    , _slIds = Nothing
    , _slWidth = Nothing
    , _slProFileId = pSlProFileId_
    , _slKey = Nothing
    , _slOAuthToken = Nothing
    , _slIabStandard = Nothing
    , _slFields = Nothing
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
slUserIP :: Lens' SizesList' (Maybe Text)
slUserIP = lens _slUserIP (\ s a -> s{_slUserIP = a})

-- | Select only sizes with these IDs.
slIds :: Lens' SizesList' [Int64]
slIds
  = lens _slIds (\ s a -> s{_slIds = a}) . _Default .
      _Coerce

-- | Select only sizes with this width.
slWidth :: Lens' SizesList' (Maybe Int32)
slWidth = lens _slWidth (\ s a -> s{_slWidth = a})

-- | User profile ID associated with this request.
slProFileId :: Lens' SizesList' Int64
slProFileId
  = lens _slProFileId (\ s a -> s{_slProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
slKey :: Lens' SizesList' (Maybe Key)
slKey = lens _slKey (\ s a -> s{_slKey = a})

-- | OAuth 2.0 token for the current user.
slOAuthToken :: Lens' SizesList' (Maybe OAuthToken)
slOAuthToken
  = lens _slOAuthToken (\ s a -> s{_slOAuthToken = a})

-- | Select only IAB standard sizes.
slIabStandard :: Lens' SizesList' (Maybe Bool)
slIabStandard
  = lens _slIabStandard
      (\ s a -> s{_slIabStandard = a})

-- | Selector specifying which fields to include in a partial response.
slFields :: Lens' SizesList' (Maybe Text)
slFields = lens _slFields (\ s a -> s{_slFields = a})

instance GoogleAuth SizesList' where
        authKey = slKey . _Just
        authToken = slOAuthToken . _Just

instance GoogleRequest SizesList' where
        type Rs SizesList' = SizesListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u SizesList'{..}
          = go _slProFileId _slHeight (_slIds ^. _Default)
              _slWidth
              _slIabStandard
              _slQuotaUser
              (Just _slPrettyPrint)
              _slUserIP
              _slFields
              _slKey
              _slOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy SizesListResource)
                      r
                      u
