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
    , caiUserIP
    , caiAdvertiserId
    , caiProFileId
    , caiPayload
    , caiMedia
    , caiKey
    , caiOAuthToken
    , caiFields
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
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             MultipartRelated '[JSON] CreativeAssetMetadata
                               Stream
                               :> Post '[JSON] CreativeAssetMetadata

-- | Inserts a new creative asset.
--
-- /See:/ 'creativeAssetsInsert'' smart constructor.
data CreativeAssetsInsert' = CreativeAssetsInsert'
    { _caiQuotaUser    :: !(Maybe Text)
    , _caiPrettyPrint  :: !Bool
    , _caiUserIP       :: !(Maybe Text)
    , _caiAdvertiserId :: !Int64
    , _caiProFileId    :: !Int64
    , _caiPayload      :: !CreativeAssetMetadata
    , _caiMedia        :: !Stream
    , _caiKey          :: !(Maybe AuthKey)
    , _caiOAuthToken   :: !(Maybe OAuthToken)
    , _caiFields       :: !(Maybe Text)
    }

-- | Creates a value of 'CreativeAssetsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caiQuotaUser'
--
-- * 'caiPrettyPrint'
--
-- * 'caiUserIP'
--
-- * 'caiAdvertiserId'
--
-- * 'caiProFileId'
--
-- * 'caiPayload'
--
-- * 'caiMedia'
--
-- * 'caiKey'
--
-- * 'caiOAuthToken'
--
-- * 'caiFields'
creativeAssetsInsert'
    :: Int64 -- ^ 'advertiserId'
    -> Int64 -- ^ 'profileId'
    -> CreativeAssetMetadata -- ^ 'payload'
    -> Stream -- ^ 'media'
    -> CreativeAssetsInsert'
creativeAssetsInsert' pCaiAdvertiserId_ pCaiProFileId_ pCaiPayload_ pCaiMedia_ =
    CreativeAssetsInsert'
    { _caiQuotaUser = Nothing
    , _caiPrettyPrint = True
    , _caiUserIP = Nothing
    , _caiAdvertiserId = pCaiAdvertiserId_
    , _caiProFileId = pCaiProFileId_
    , _caiPayload = pCaiPayload_
    , _caiMedia = pCaiMedia_
    , _caiKey = Nothing
    , _caiOAuthToken = Nothing
    , _caiFields = Nothing
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
caiUserIP :: Lens' CreativeAssetsInsert' (Maybe Text)
caiUserIP
  = lens _caiUserIP (\ s a -> s{_caiUserIP = a})

-- | Advertiser ID of this creative. This is a required field.
caiAdvertiserId :: Lens' CreativeAssetsInsert' Int64
caiAdvertiserId
  = lens _caiAdvertiserId
      (\ s a -> s{_caiAdvertiserId = a})

-- | User profile ID associated with this request.
caiProFileId :: Lens' CreativeAssetsInsert' Int64
caiProFileId
  = lens _caiProFileId (\ s a -> s{_caiProFileId = a})

-- | Multipart request metadata.
caiPayload :: Lens' CreativeAssetsInsert' CreativeAssetMetadata
caiPayload
  = lens _caiPayload (\ s a -> s{_caiPayload = a})

caiMedia :: Lens' CreativeAssetsInsert' Stream
caiMedia = lens _caiMedia (\ s a -> s{_caiMedia = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
caiKey :: Lens' CreativeAssetsInsert' (Maybe AuthKey)
caiKey = lens _caiKey (\ s a -> s{_caiKey = a})

-- | OAuth 2.0 token for the current user.
caiOAuthToken :: Lens' CreativeAssetsInsert' (Maybe OAuthToken)
caiOAuthToken
  = lens _caiOAuthToken
      (\ s a -> s{_caiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
caiFields :: Lens' CreativeAssetsInsert' (Maybe Text)
caiFields
  = lens _caiFields (\ s a -> s{_caiFields = a})

instance GoogleAuth CreativeAssetsInsert' where
        authKey = caiKey . _Just
        authToken = caiOAuthToken . _Just

instance GoogleRequest CreativeAssetsInsert' where
        type Rs CreativeAssetsInsert' = CreativeAssetMetadata
        request = requestWith dFAReportingRequest
        requestWith rq CreativeAssetsInsert'{..}
          = go _caiProFileId _caiAdvertiserId _caiQuotaUser
              (Just _caiPrettyPrint)
              _caiUserIP
              _caiFields
              _caiKey
              _caiOAuthToken
              (Just AltJSON)
              _caiPayload
              _caiMedia
          where go
                  = clientBuild
                      (Proxy :: Proxy CreativeAssetsInsertResource)
                      rq
