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
-- Module      : Network.Google.Resource.DFAReporting.CreativeAssets.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new creative asset.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCreativeAssetsInsert@.
module Network.Google.Resource.DFAReporting.CreativeAssets.Insert
    (
    -- * REST Resource
      CreativeAssetsInsertResource

    -- * Creating a Request
    , creativeAssetsInsert'
    , CreativeAssetsInsert'

    -- * Request Lenses
    , caiQuotaUser
    , caiPrettyPrint
    , caiUserIp
    , caiAdvertiserId
    , caiProfileId
    , caiKey
    , caiOauthToken
    , caiFields
    , caiAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCreativeAssetsInsert@ which the
-- 'CreativeAssetsInsert'' request conforms to.
type CreativeAssetsInsertResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creativeAssets" :>
           Capture "advertiserId" Int64 :>
             "creativeAssets" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :>
                             Post '[JSON] CreativeAssetMetadata

-- | Inserts a new creative asset.
--
-- /See:/ 'creativeAssetsInsert'' smart constructor.
data CreativeAssetsInsert' = CreativeAssetsInsert'
    { _caiQuotaUser    :: !(Maybe Text)
    , _caiPrettyPrint  :: !Bool
    , _caiUserIp       :: !(Maybe Text)
    , _caiAdvertiserId :: !Int64
    , _caiProfileId    :: !Int64
    , _caiKey          :: !(Maybe Text)
    , _caiOauthToken   :: !(Maybe Text)
    , _caiFields       :: !(Maybe Text)
    , _caiAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeAssetsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caiQuotaUser'
--
-- * 'caiPrettyPrint'
--
-- * 'caiUserIp'
--
-- * 'caiAdvertiserId'
--
-- * 'caiProfileId'
--
-- * 'caiKey'
--
-- * 'caiOauthToken'
--
-- * 'caiFields'
--
-- * 'caiAlt'
creativeAssetsInsert'
    :: Int64 -- ^ 'advertiserId'
    -> Int64 -- ^ 'profileId'
    -> CreativeAssetsInsert'
creativeAssetsInsert' pCaiAdvertiserId_ pCaiProfileId_ =
    CreativeAssetsInsert'
    { _caiQuotaUser = Nothing
    , _caiPrettyPrint = True
    , _caiUserIp = Nothing
    , _caiAdvertiserId = pCaiAdvertiserId_
    , _caiProfileId = pCaiProfileId_
    , _caiKey = Nothing
    , _caiOauthToken = Nothing
    , _caiFields = Nothing
    , _caiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
caiQuotaUser :: Lens' CreativeAssetsInsert' (Maybe Text)
caiQuotaUser
  = lens _caiQuotaUser (\ s a -> s{_caiQuotaUser = a})

-- | Returns response with indentations and line breaks.
caiPrettyPrint :: Lens' CreativeAssetsInsert' Bool
caiPrettyPrint
  = lens _caiPrettyPrint
      (\ s a -> s{_caiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
caiUserIp :: Lens' CreativeAssetsInsert' (Maybe Text)
caiUserIp
  = lens _caiUserIp (\ s a -> s{_caiUserIp = a})

-- | Advertiser ID of this creative. This is a required field.
caiAdvertiserId :: Lens' CreativeAssetsInsert' Int64
caiAdvertiserId
  = lens _caiAdvertiserId
      (\ s a -> s{_caiAdvertiserId = a})

-- | User profile ID associated with this request.
caiProfileId :: Lens' CreativeAssetsInsert' Int64
caiProfileId
  = lens _caiProfileId (\ s a -> s{_caiProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
caiKey :: Lens' CreativeAssetsInsert' (Maybe Text)
caiKey = lens _caiKey (\ s a -> s{_caiKey = a})

-- | OAuth 2.0 token for the current user.
caiOauthToken :: Lens' CreativeAssetsInsert' (Maybe Text)
caiOauthToken
  = lens _caiOauthToken
      (\ s a -> s{_caiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
caiFields :: Lens' CreativeAssetsInsert' (Maybe Text)
caiFields
  = lens _caiFields (\ s a -> s{_caiFields = a})

-- | Data format for the response.
caiAlt :: Lens' CreativeAssetsInsert' Alt
caiAlt = lens _caiAlt (\ s a -> s{_caiAlt = a})

instance GoogleRequest CreativeAssetsInsert' where
        type Rs CreativeAssetsInsert' = CreativeAssetMetadata
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CreativeAssetsInsert'{..}
          = go _caiQuotaUser (Just _caiPrettyPrint) _caiUserIp
              _caiAdvertiserId
              _caiProfileId
              _caiKey
              _caiOauthToken
              _caiFields
              (Just _caiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CreativeAssetsInsertResource)
                      r
                      u
