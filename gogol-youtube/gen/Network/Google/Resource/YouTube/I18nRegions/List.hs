{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.YouTube.I18nRegions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a list of content regions that the YouTube website supports.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeI18nRegionsList@.
module YouTube.I18nRegions.List
    (
    -- * REST Resource
      I18nRegionsListAPI

    -- * Creating a Request
    , i18nRegionsList
    , I18nRegionsList

    -- * Request Lenses
    , irlQuotaUser
    , irlPart
    , irlPrettyPrint
    , irlUserIp
    , irlHl
    , irlKey
    , irlOauthToken
    , irlFields
    , irlAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeI18nRegionsList@ which the
-- 'I18nRegionsList' request conforms to.
type I18nRegionsListAPI =
     "i18nRegions" :>
       QueryParam "part" Text :>
         QueryParam "hl" Text :>
           Get '[JSON] I18nRegionListResponse

-- | Returns a list of content regions that the YouTube website supports.
--
-- /See:/ 'i18nRegionsList' smart constructor.
data I18nRegionsList = I18nRegionsList
    { _irlQuotaUser   :: !(Maybe Text)
    , _irlPart        :: !Text
    , _irlPrettyPrint :: !Bool
    , _irlUserIp      :: !(Maybe Text)
    , _irlHl          :: !Text
    , _irlKey         :: !(Maybe Text)
    , _irlOauthToken  :: !(Maybe Text)
    , _irlFields      :: !(Maybe Text)
    , _irlAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'I18nRegionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irlQuotaUser'
--
-- * 'irlPart'
--
-- * 'irlPrettyPrint'
--
-- * 'irlUserIp'
--
-- * 'irlHl'
--
-- * 'irlKey'
--
-- * 'irlOauthToken'
--
-- * 'irlFields'
--
-- * 'irlAlt'
i18nRegionsList
    :: Text -- ^ 'part'
    -> I18nRegionsList
i18nRegionsList pIrlPart_ =
    I18nRegionsList
    { _irlQuotaUser = Nothing
    , _irlPart = pIrlPart_
    , _irlPrettyPrint = True
    , _irlUserIp = Nothing
    , _irlHl = "en_US"
    , _irlKey = Nothing
    , _irlOauthToken = Nothing
    , _irlFields = Nothing
    , _irlAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
irlQuotaUser :: Lens' I18nRegionsList' (Maybe Text)
irlQuotaUser
  = lens _irlQuotaUser (\ s a -> s{_irlQuotaUser = a})

-- | The part parameter specifies the i18nRegion resource properties that the
-- API response will include. Set the parameter value to snippet.
irlPart :: Lens' I18nRegionsList' Text
irlPart = lens _irlPart (\ s a -> s{_irlPart = a})

-- | Returns response with indentations and line breaks.
irlPrettyPrint :: Lens' I18nRegionsList' Bool
irlPrettyPrint
  = lens _irlPrettyPrint
      (\ s a -> s{_irlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
irlUserIp :: Lens' I18nRegionsList' (Maybe Text)
irlUserIp
  = lens _irlUserIp (\ s a -> s{_irlUserIp = a})

-- | The hl parameter specifies the language that should be used for text
-- values in the API response.
irlHl :: Lens' I18nRegionsList' Text
irlHl = lens _irlHl (\ s a -> s{_irlHl = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
irlKey :: Lens' I18nRegionsList' (Maybe Text)
irlKey = lens _irlKey (\ s a -> s{_irlKey = a})

-- | OAuth 2.0 token for the current user.
irlOauthToken :: Lens' I18nRegionsList' (Maybe Text)
irlOauthToken
  = lens _irlOauthToken
      (\ s a -> s{_irlOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
irlFields :: Lens' I18nRegionsList' (Maybe Text)
irlFields
  = lens _irlFields (\ s a -> s{_irlFields = a})

-- | Data format for the response.
irlAlt :: Lens' I18nRegionsList' Text
irlAlt = lens _irlAlt (\ s a -> s{_irlAlt = a})

instance GoogleRequest I18nRegionsList' where
        type Rs I18nRegionsList' = I18nRegionListResponse
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u I18nRegionsList{..}
          = go _irlQuotaUser (Just _irlPart) _irlPrettyPrint
              _irlUserIp
              (Just _irlHl)
              _irlKey
              _irlOauthToken
              _irlFields
              _irlAlt
          where go
                  = clientWithRoute (Proxy :: Proxy I18nRegionsListAPI)
                      r
                      u
