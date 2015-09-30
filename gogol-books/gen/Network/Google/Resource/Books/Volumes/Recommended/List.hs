{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Books.Volumes.Recommended.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return a list of recommended books for the current user.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksVolumesRecommendedList@.
module Books.Volumes.Recommended.List
    (
    -- * REST Resource
      VolumesRecommendedListAPI

    -- * Creating a Request
    , volumesRecommendedList
    , VolumesRecommendedList

    -- * Request Lenses
    , vrlQuotaUser
    , vrlPrettyPrint
    , vrlUserIp
    , vrlLocale
    , vrlMaxAllowedMaturityRating
    , vrlKey
    , vrlSource
    , vrlOauthToken
    , vrlFields
    , vrlAlt
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksVolumesRecommendedList@ which the
-- 'VolumesRecommendedList' request conforms to.
type VolumesRecommendedListAPI =
     "volumes" :>
       "recommended" :>
         QueryParam "locale" Text :>
           QueryParam "maxAllowedMaturityRating" Text :>
             QueryParam "source" Text :> Get '[JSON] Volumes

-- | Return a list of recommended books for the current user.
--
-- /See:/ 'volumesRecommendedList' smart constructor.
data VolumesRecommendedList = VolumesRecommendedList
    { _vrlQuotaUser                :: !(Maybe Text)
    , _vrlPrettyPrint              :: !Bool
    , _vrlUserIp                   :: !(Maybe Text)
    , _vrlLocale                   :: !(Maybe Text)
    , _vrlMaxAllowedMaturityRating :: !(Maybe Text)
    , _vrlKey                      :: !(Maybe Text)
    , _vrlSource                   :: !(Maybe Text)
    , _vrlOauthToken               :: !(Maybe Text)
    , _vrlFields                   :: !(Maybe Text)
    , _vrlAlt                      :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumesRecommendedList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vrlQuotaUser'
--
-- * 'vrlPrettyPrint'
--
-- * 'vrlUserIp'
--
-- * 'vrlLocale'
--
-- * 'vrlMaxAllowedMaturityRating'
--
-- * 'vrlKey'
--
-- * 'vrlSource'
--
-- * 'vrlOauthToken'
--
-- * 'vrlFields'
--
-- * 'vrlAlt'
volumesRecommendedList
    :: VolumesRecommendedList
volumesRecommendedList =
    VolumesRecommendedList
    { _vrlQuotaUser = Nothing
    , _vrlPrettyPrint = True
    , _vrlUserIp = Nothing
    , _vrlLocale = Nothing
    , _vrlMaxAllowedMaturityRating = Nothing
    , _vrlKey = Nothing
    , _vrlSource = Nothing
    , _vrlOauthToken = Nothing
    , _vrlFields = Nothing
    , _vrlAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vrlQuotaUser :: Lens' VolumesRecommendedList' (Maybe Text)
vrlQuotaUser
  = lens _vrlQuotaUser (\ s a -> s{_vrlQuotaUser = a})

-- | Returns response with indentations and line breaks.
vrlPrettyPrint :: Lens' VolumesRecommendedList' Bool
vrlPrettyPrint
  = lens _vrlPrettyPrint
      (\ s a -> s{_vrlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vrlUserIp :: Lens' VolumesRecommendedList' (Maybe Text)
vrlUserIp
  = lens _vrlUserIp (\ s a -> s{_vrlUserIp = a})

-- | ISO-639-1 language and ISO-3166-1 country code. Ex: \'en_US\'. Used for
-- generating recommendations.
vrlLocale :: Lens' VolumesRecommendedList' (Maybe Text)
vrlLocale
  = lens _vrlLocale (\ s a -> s{_vrlLocale = a})

-- | The maximum allowed maturity rating of returned recommendations. Books
-- with a higher maturity rating are filtered out.
vrlMaxAllowedMaturityRating :: Lens' VolumesRecommendedList' (Maybe Text)
vrlMaxAllowedMaturityRating
  = lens _vrlMaxAllowedMaturityRating
      (\ s a -> s{_vrlMaxAllowedMaturityRating = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vrlKey :: Lens' VolumesRecommendedList' (Maybe Text)
vrlKey = lens _vrlKey (\ s a -> s{_vrlKey = a})

-- | String to identify the originator of this request.
vrlSource :: Lens' VolumesRecommendedList' (Maybe Text)
vrlSource
  = lens _vrlSource (\ s a -> s{_vrlSource = a})

-- | OAuth 2.0 token for the current user.
vrlOauthToken :: Lens' VolumesRecommendedList' (Maybe Text)
vrlOauthToken
  = lens _vrlOauthToken
      (\ s a -> s{_vrlOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
vrlFields :: Lens' VolumesRecommendedList' (Maybe Text)
vrlFields
  = lens _vrlFields (\ s a -> s{_vrlFields = a})

-- | Data format for the response.
vrlAlt :: Lens' VolumesRecommendedList' Text
vrlAlt = lens _vrlAlt (\ s a -> s{_vrlAlt = a})

instance GoogleRequest VolumesRecommendedList' where
        type Rs VolumesRecommendedList' = Volumes
        request = requestWithRoute defReq booksURL
        requestWithRoute r u VolumesRecommendedList{..}
          = go _vrlQuotaUser _vrlPrettyPrint _vrlUserIp
              _vrlLocale
              _vrlMaxAllowedMaturityRating
              _vrlKey
              _vrlSource
              _vrlOauthToken
              _vrlFields
              _vrlAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VolumesRecommendedListAPI)
                      r
                      u
