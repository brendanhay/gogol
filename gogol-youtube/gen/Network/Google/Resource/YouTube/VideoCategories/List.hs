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
-- Module      : Network.Google.Resource.YouTube.VideoCategories.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a list of categories that can be associated with YouTube videos.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeVideoCategoriesList@.
module Network.Google.Resource.YouTube.VideoCategories.List
    (
    -- * REST Resource
      VideoCategoriesListResource

    -- * Creating a Request
    , videoCategoriesList'
    , VideoCategoriesList'

    -- * Request Lenses
    , vclQuotaUser
    , vclPart
    , vclPrettyPrint
    , vclRegionCode
    , vclUserIP
    , vclHl
    , vclKey
    , vclId
    , vclOAuthToken
    , vclFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeVideoCategoriesList@ which the
-- 'VideoCategoriesList'' request conforms to.
type VideoCategoriesListResource =
     "videoCategories" :>
       QueryParam "hl" Text :>
         QueryParam "id" Text :>
           QueryParam "regionCode" Text :>
             QueryParam "part" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] VideoCategoryListResponse

-- | Returns a list of categories that can be associated with YouTube videos.
--
-- /See:/ 'videoCategoriesList'' smart constructor.
data VideoCategoriesList' = VideoCategoriesList'
    { _vclQuotaUser   :: !(Maybe Text)
    , _vclPart        :: !Text
    , _vclPrettyPrint :: !Bool
    , _vclRegionCode  :: !(Maybe Text)
    , _vclUserIP      :: !(Maybe Text)
    , _vclHl          :: !Text
    , _vclKey         :: !(Maybe Key)
    , _vclId          :: !(Maybe Text)
    , _vclOAuthToken  :: !(Maybe OAuthToken)
    , _vclFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoCategoriesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vclQuotaUser'
--
-- * 'vclPart'
--
-- * 'vclPrettyPrint'
--
-- * 'vclRegionCode'
--
-- * 'vclUserIP'
--
-- * 'vclHl'
--
-- * 'vclKey'
--
-- * 'vclId'
--
-- * 'vclOAuthToken'
--
-- * 'vclFields'
videoCategoriesList'
    :: Text -- ^ 'part'
    -> VideoCategoriesList'
videoCategoriesList' pVclPart_ =
    VideoCategoriesList'
    { _vclQuotaUser = Nothing
    , _vclPart = pVclPart_
    , _vclPrettyPrint = True
    , _vclRegionCode = Nothing
    , _vclUserIP = Nothing
    , _vclHl = "en_US"
    , _vclKey = Nothing
    , _vclId = Nothing
    , _vclOAuthToken = Nothing
    , _vclFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vclQuotaUser :: Lens' VideoCategoriesList' (Maybe Text)
vclQuotaUser
  = lens _vclQuotaUser (\ s a -> s{_vclQuotaUser = a})

-- | The part parameter specifies the videoCategory resource properties that
-- the API response will include. Set the parameter value to snippet.
vclPart :: Lens' VideoCategoriesList' Text
vclPart = lens _vclPart (\ s a -> s{_vclPart = a})

-- | Returns response with indentations and line breaks.
vclPrettyPrint :: Lens' VideoCategoriesList' Bool
vclPrettyPrint
  = lens _vclPrettyPrint
      (\ s a -> s{_vclPrettyPrint = a})

-- | The regionCode parameter instructs the API to return the list of video
-- categories available in the specified country. The parameter value is an
-- ISO 3166-1 alpha-2 country code.
vclRegionCode :: Lens' VideoCategoriesList' (Maybe Text)
vclRegionCode
  = lens _vclRegionCode
      (\ s a -> s{_vclRegionCode = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vclUserIP :: Lens' VideoCategoriesList' (Maybe Text)
vclUserIP
  = lens _vclUserIP (\ s a -> s{_vclUserIP = a})

-- | The hl parameter specifies the language that should be used for text
-- values in the API response.
vclHl :: Lens' VideoCategoriesList' Text
vclHl = lens _vclHl (\ s a -> s{_vclHl = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vclKey :: Lens' VideoCategoriesList' (Maybe Key)
vclKey = lens _vclKey (\ s a -> s{_vclKey = a})

-- | The id parameter specifies a comma-separated list of video category IDs
-- for the resources that you are retrieving.
vclId :: Lens' VideoCategoriesList' (Maybe Text)
vclId = lens _vclId (\ s a -> s{_vclId = a})

-- | OAuth 2.0 token for the current user.
vclOAuthToken :: Lens' VideoCategoriesList' (Maybe OAuthToken)
vclOAuthToken
  = lens _vclOAuthToken
      (\ s a -> s{_vclOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
vclFields :: Lens' VideoCategoriesList' (Maybe Text)
vclFields
  = lens _vclFields (\ s a -> s{_vclFields = a})

instance GoogleAuth VideoCategoriesList' where
        authKey = vclKey . _Just
        authToken = vclOAuthToken . _Just

instance GoogleRequest VideoCategoriesList' where
        type Rs VideoCategoriesList' =
             VideoCategoryListResponse
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u VideoCategoriesList'{..}
          = go (Just _vclHl) _vclId _vclRegionCode
              (Just _vclPart)
              _vclQuotaUser
              (Just _vclPrettyPrint)
              _vclUserIP
              _vclFields
              _vclKey
              _vclOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VideoCategoriesListResource)
                      r
                      u
