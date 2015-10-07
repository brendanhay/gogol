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
-- Module      : Network.Google.Resource.YouTube.ChannelBanners.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Uploads a channel banner image to YouTube. This method represents the
-- first two steps in a three-step process to update the banner image for a
-- channel: - Call the channelBanners.insert method to upload the binary
-- image data to YouTube. The image must have a 16:9 aspect ratio and be at
-- least 2120x1192 pixels. - Extract the url property\'s value from the
-- response that the API returns for step 1. - Call the channels.update
-- method to update the channel\'s branding settings. Set the
-- brandingSettings.image.bannerExternalUrl property\'s value to the URL
-- obtained in step 2.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeChannelBannersInsert@.
module Network.Google.Resource.YouTube.ChannelBanners.Insert
    (
    -- * REST Resource
      ChannelBannersInsertResource

    -- * Creating a Request
    , channelBannersInsert'
    , ChannelBannersInsert'

    -- * Request Lenses
    , cbiQuotaUser
    , cbiPrettyPrint
    , cbiUserIP
    , cbiPayload
    , cbiMedia
    , cbiOnBehalfOfContentOwner
    , cbiKey
    , cbiOAuthToken
    , cbiFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeChannelBannersInsert@ method which the
-- 'ChannelBannersInsert'' request conforms to.
type ChannelBannersInsertResource =
     "channelBanners" :>
       "insert" :>
         QueryParam "onBehalfOfContentOwner" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         MultipartRelated '[JSON] ChannelBannerResource Stream
                           :> Post '[JSON] ChannelBannerResource

-- | Uploads a channel banner image to YouTube. This method represents the
-- first two steps in a three-step process to update the banner image for a
-- channel: - Call the channelBanners.insert method to upload the binary
-- image data to YouTube. The image must have a 16:9 aspect ratio and be at
-- least 2120x1192 pixels. - Extract the url property\'s value from the
-- response that the API returns for step 1. - Call the channels.update
-- method to update the channel\'s branding settings. Set the
-- brandingSettings.image.bannerExternalUrl property\'s value to the URL
-- obtained in step 2.
--
-- /See:/ 'channelBannersInsert'' smart constructor.
data ChannelBannersInsert' = ChannelBannersInsert'
    { _cbiQuotaUser              :: !(Maybe Text)
    , _cbiPrettyPrint            :: !Bool
    , _cbiUserIP                 :: !(Maybe Text)
    , _cbiPayload                :: !ChannelBannerResource
    , _cbiMedia                  :: !Stream
    , _cbiOnBehalfOfContentOwner :: !(Maybe Text)
    , _cbiKey                    :: !(Maybe AuthKey)
    , _cbiOAuthToken             :: !(Maybe OAuthToken)
    , _cbiFields                 :: !(Maybe Text)
    }

-- | Creates a value of 'ChannelBannersInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cbiQuotaUser'
--
-- * 'cbiPrettyPrint'
--
-- * 'cbiUserIP'
--
-- * 'cbiPayload'
--
-- * 'cbiMedia'
--
-- * 'cbiOnBehalfOfContentOwner'
--
-- * 'cbiKey'
--
-- * 'cbiOAuthToken'
--
-- * 'cbiFields'
channelBannersInsert'
    :: ChannelBannerResource -- ^ 'payload'
    -> Stream -- ^ 'media'
    -> ChannelBannersInsert'
channelBannersInsert' pCbiPayload_ pCbiMedia_ =
    ChannelBannersInsert'
    { _cbiQuotaUser = Nothing
    , _cbiPrettyPrint = True
    , _cbiUserIP = Nothing
    , _cbiPayload = pCbiPayload_
    , _cbiMedia = pCbiMedia_
    , _cbiOnBehalfOfContentOwner = Nothing
    , _cbiKey = Nothing
    , _cbiOAuthToken = Nothing
    , _cbiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cbiQuotaUser :: Lens' ChannelBannersInsert' (Maybe Text)
cbiQuotaUser
  = lens _cbiQuotaUser (\ s a -> s{_cbiQuotaUser = a})

-- | Returns response with indentations and line breaks.
cbiPrettyPrint :: Lens' ChannelBannersInsert' Bool
cbiPrettyPrint
  = lens _cbiPrettyPrint
      (\ s a -> s{_cbiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cbiUserIP :: Lens' ChannelBannersInsert' (Maybe Text)
cbiUserIP
  = lens _cbiUserIP (\ s a -> s{_cbiUserIP = a})

-- | Multipart request metadata.
cbiPayload :: Lens' ChannelBannersInsert' ChannelBannerResource
cbiPayload
  = lens _cbiPayload (\ s a -> s{_cbiPayload = a})

cbiMedia :: Lens' ChannelBannersInsert' Stream
cbiMedia = lens _cbiMedia (\ s a -> s{_cbiMedia = a})

-- | Note: This parameter is intended exclusively for YouTube content
-- partners. The onBehalfOfContentOwner parameter indicates that the
-- request\'s authorization credentials identify a YouTube CMS user who is
-- acting on behalf of the content owner specified in the parameter value.
-- This parameter is intended for YouTube content partners that own and
-- manage many different YouTube channels. It allows content owners to
-- authenticate once and get access to all their video and channel data,
-- without having to provide authentication credentials for each individual
-- channel. The CMS account that the user authenticates with must be linked
-- to the specified YouTube content owner.
cbiOnBehalfOfContentOwner :: Lens' ChannelBannersInsert' (Maybe Text)
cbiOnBehalfOfContentOwner
  = lens _cbiOnBehalfOfContentOwner
      (\ s a -> s{_cbiOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cbiKey :: Lens' ChannelBannersInsert' (Maybe AuthKey)
cbiKey = lens _cbiKey (\ s a -> s{_cbiKey = a})

-- | OAuth 2.0 token for the current user.
cbiOAuthToken :: Lens' ChannelBannersInsert' (Maybe OAuthToken)
cbiOAuthToken
  = lens _cbiOAuthToken
      (\ s a -> s{_cbiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cbiFields :: Lens' ChannelBannersInsert' (Maybe Text)
cbiFields
  = lens _cbiFields (\ s a -> s{_cbiFields = a})

instance GoogleAuth ChannelBannersInsert' where
        _AuthKey = cbiKey . _Just
        _AuthToken = cbiOAuthToken . _Just

instance GoogleRequest ChannelBannersInsert' where
        type Rs ChannelBannersInsert' = ChannelBannerResource
        request = requestWith youTubeRequest
        requestWith rq ChannelBannersInsert'{..}
          = go _cbiOnBehalfOfContentOwner _cbiQuotaUser
              (Just _cbiPrettyPrint)
              _cbiUserIP
              _cbiFields
              _cbiKey
              _cbiOAuthToken
              (Just AltJSON)
              _cbiPayload
              _cbiMedia
          where go
                  = clientBuild
                      (Proxy :: Proxy ChannelBannersInsertResource)
                      rq
