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
-- Module      : Network.Google.Resource.YouTube.GuideCategories.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a list of categories that can be associated with YouTube
-- channels.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeGuideCategoriesList@.
module Network.Google.Resource.YouTube.GuideCategories.List
    (
    -- * REST Resource
      GuideCategoriesListResource

    -- * Creating a Request
    , guideCategoriesList'
    , GuideCategoriesList'

    -- * Request Lenses
    , gclQuotaUser
    , gclPart
    , gclPrettyPrint
    , gclRegionCode
    , gclUserIP
    , gclHl
    , gclKey
    , gclId
    , gclOAuthToken
    , gclFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeGuideCategoriesList@ method which the
-- 'GuideCategoriesList'' request conforms to.
type GuideCategoriesListResource =
     "guideCategories" :>
       QueryParam "part" Text :>
         QueryParam "regionCode" Text :>
           QueryParam "hl" Text :>
             QueryParam "id" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] GuideCategoryListResponse

-- | Returns a list of categories that can be associated with YouTube
-- channels.
--
-- /See:/ 'guideCategoriesList'' smart constructor.
data GuideCategoriesList' = GuideCategoriesList'
    { _gclQuotaUser   :: !(Maybe Text)
    , _gclPart        :: !Text
    , _gclPrettyPrint :: !Bool
    , _gclRegionCode  :: !(Maybe Text)
    , _gclUserIP      :: !(Maybe Text)
    , _gclHl          :: !Text
    , _gclKey         :: !(Maybe AuthKey)
    , _gclId          :: !(Maybe Text)
    , _gclOAuthToken  :: !(Maybe OAuthToken)
    , _gclFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GuideCategoriesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gclQuotaUser'
--
-- * 'gclPart'
--
-- * 'gclPrettyPrint'
--
-- * 'gclRegionCode'
--
-- * 'gclUserIP'
--
-- * 'gclHl'
--
-- * 'gclKey'
--
-- * 'gclId'
--
-- * 'gclOAuthToken'
--
-- * 'gclFields'
guideCategoriesList'
    :: Text -- ^ 'part'
    -> GuideCategoriesList'
guideCategoriesList' pGclPart_ =
    GuideCategoriesList'
    { _gclQuotaUser = Nothing
    , _gclPart = pGclPart_
    , _gclPrettyPrint = True
    , _gclRegionCode = Nothing
    , _gclUserIP = Nothing
    , _gclHl = "en-US"
    , _gclKey = Nothing
    , _gclId = Nothing
    , _gclOAuthToken = Nothing
    , _gclFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
gclQuotaUser :: Lens' GuideCategoriesList' (Maybe Text)
gclQuotaUser
  = lens _gclQuotaUser (\ s a -> s{_gclQuotaUser = a})

-- | The part parameter specifies the guideCategory resource properties that
-- the API response will include. Set the parameter value to snippet.
gclPart :: Lens' GuideCategoriesList' Text
gclPart = lens _gclPart (\ s a -> s{_gclPart = a})

-- | Returns response with indentations and line breaks.
gclPrettyPrint :: Lens' GuideCategoriesList' Bool
gclPrettyPrint
  = lens _gclPrettyPrint
      (\ s a -> s{_gclPrettyPrint = a})

-- | The regionCode parameter instructs the API to return the list of guide
-- categories available in the specified country. The parameter value is an
-- ISO 3166-1 alpha-2 country code.
gclRegionCode :: Lens' GuideCategoriesList' (Maybe Text)
gclRegionCode
  = lens _gclRegionCode
      (\ s a -> s{_gclRegionCode = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
gclUserIP :: Lens' GuideCategoriesList' (Maybe Text)
gclUserIP
  = lens _gclUserIP (\ s a -> s{_gclUserIP = a})

-- | The hl parameter specifies the language that will be used for text
-- values in the API response.
gclHl :: Lens' GuideCategoriesList' Text
gclHl = lens _gclHl (\ s a -> s{_gclHl = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
gclKey :: Lens' GuideCategoriesList' (Maybe AuthKey)
gclKey = lens _gclKey (\ s a -> s{_gclKey = a})

-- | The id parameter specifies a comma-separated list of the YouTube channel
-- category ID(s) for the resource(s) that are being retrieved. In a
-- guideCategory resource, the id property specifies the YouTube channel
-- category ID.
gclId :: Lens' GuideCategoriesList' (Maybe Text)
gclId = lens _gclId (\ s a -> s{_gclId = a})

-- | OAuth 2.0 token for the current user.
gclOAuthToken :: Lens' GuideCategoriesList' (Maybe OAuthToken)
gclOAuthToken
  = lens _gclOAuthToken
      (\ s a -> s{_gclOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
gclFields :: Lens' GuideCategoriesList' (Maybe Text)
gclFields
  = lens _gclFields (\ s a -> s{_gclFields = a})

instance GoogleAuth GuideCategoriesList' where
        _AuthKey = gclKey . _Just
        _AuthToken = gclOAuthToken . _Just

instance GoogleRequest GuideCategoriesList' where
        type Rs GuideCategoriesList' =
             GuideCategoryListResponse
        request = requestWith youTubeRequest
        requestWith rq GuideCategoriesList'{..}
          = go (Just _gclPart) _gclRegionCode (Just _gclHl)
              _gclId
              _gclQuotaUser
              (Just _gclPrettyPrint)
              _gclUserIP
              _gclFields
              _gclKey
              _gclOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy GuideCategoriesListResource)
                      rq
